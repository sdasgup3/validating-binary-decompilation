; ModuleID = 'Shootout-C++-hash/test.bc'
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
%"class.__gnu_cxx::hash_map" = type { %"class.__gnu_cxx::hashtable" }
%"class.__gnu_cxx::hashtable" = type { %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::vector", i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl" }
%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl" = type { %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"** }
%"struct.__gnu_cxx::_Hashtable_node" = type { %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.std::pair" }
%"struct.std::pair" = type <{ i8*, i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { %"struct.__gnu_cxx::_Hashtable_node"** }

$_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEC2Ev = comdat any

$_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEixERKS2_ = comdat any

$_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev = comdat any

$_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEED2Ev = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implD2Ev = comdat any

$_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEED2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE10deallocateERS9_PS8_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE10deallocateEPS8_m = comdat any

$_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvT_SA_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEvT_SC_ = comdat any

$_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_delete_nodeEPNS_15_Hashtable_nodeIS5_EE = comdat any

$_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE13get_allocatorEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE7destroyEPS5_ = comdat any

$_ZNSaISt4pairIKPKciEED2Ev = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_put_nodeEPNS_15_Hashtable_nodeIS5_EE = comdat any

$_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE10deallocateEPS7_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEED2Ev = comdat any

$_ZNSaISt4pairIKPKciEEC2IN9__gnu_cxx15_Hashtable_nodeIS3_EEEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev = comdat any

$_ZNSt4pairIKPKciEC2ERS2_RKi = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_ = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm = comdat any

$_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_ = comdat any

$_ZNKSt10_Select1stISt4pairIKPKciEEclERS4_ = comdat any

$_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_ = comdat any

$_ZNK5eqstrclEPKcS1_ = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_new_nodeERKS5_ = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_get_nodeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE9constructEPS5_RKS5_ = comdat any

$_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_ = comdat any

$_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_m = comdat any

$_ZNK9__gnu_cxx4hashIPKcEclES2_ = comdat any

$_ZN9__gnu_cxx17__stl_hash_stringEPKc = comdat any

$_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm = comdat any

$_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13get_allocatorEv = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_ = comdat any

$_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_m = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4swapERSA_ = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_impl12_M_swap_dataERSB_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE10_S_on_swapERS9_SB_ = comdat any

$_ZNSt12__alloc_swapISaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEELb1EE8_S_do_itERS9_SB_ = comdat any

$_ZSt4swapIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvRT_SB_ = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS9_ = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE18_M_fill_initializeEmRKS8_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ET_SA_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmSA_EET_SC_T0_RKT1_ = comdat any

$_ZSt6fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ET_SA_T0_RKT1_ = comdat any

$_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_ = comdat any

$_ZSt10__fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ENS0_11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_ = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implC2ERKS9_ = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE8allocateERS9_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv = comdat any

$_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS8_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS9_ = comdat any

$_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx16__stl_next_primeEm = comdat any

$_ZN9__gnu_cxx21_Hashtable_prime_listImE17_S_get_prime_listEv = comdat any

$_ZSt11lower_boundIPKmmET_S2_S2_RKT0_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_less_valEv = comdat any

$_ZSt13__lower_boundIPKmmN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_ = comdat any

$_ZSt8distanceIPKmENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt7advanceIPKmlEvRT_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKmS3_EEbT_RT0_ = comdat any

$_ZSt19__iterator_categoryIPKmENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZSt10__distanceIPKmENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2Ev = comdat any

$_ZNSaISt4pairIKPKciEEC2Ev = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E = comdat any

$_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2IS5_EERKSaIT_E = comdat any

$_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2IS5_EERKSaIT_E = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2ERKS9_ = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE3endEv = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE6insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_ = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_ = comdat any

$_ZN9__gnu_cxxmiIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSG_SJ_ = comdat any

$_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv = comdat any

$_ZSt13copy_backwardIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_ = comdat any

$_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_ = comdat any

$_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_M_check_lenEmS4_ = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE5beginEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_ = comdat any

$_ZSt22__uninitialized_copy_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_S8_ET0_T_SB_SA_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESB_EET0_T_SD_SC_ = comdat any

$_ZSt4copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_ = comdat any

$_ZSt12__miter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_ = comdat any

$_ZSt13__copy_move_aILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEPT_PKSC_SF_SD_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEC2ERKS9_ = comdat any

$_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE8max_sizeERKS9_ = comdat any

$_ZSt8__fill_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_ENS0_11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SE_RKSB_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEPT_PKSC_SF_SD_ = comdat any

$_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8capacityEv = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE20_M_allocate_and_copyIPS8_EESC_mT_SD_ = comdat any

$_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2ERKS9_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEEC2Ev = comdat any

$_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hash.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE = linkonce_odr constant [29 x i64] [i64 5, i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], comdat, align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_hash.cpp() #0 section ".text.startup" {
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

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %X = alloca %"class.__gnu_cxx::hash_map", align 8
  %i = alloca i32, align 4
  %ref.tmp = alloca i8*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %c = alloca i32, align 4
  %i6 = alloca i32, align 4
  %ref.tmp12 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 500000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  call void @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEC2Ev(%"class.__gnu_cxx::hash_map"* %X)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %5) #2
  %6 = load i32, i32* %i, align 4
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call4 = call noalias i8* @strdup(i8* %arraydecay3) #2
  store i8* %call4, i8** %ref.tmp, align 8
  %call5 = invoke dereferenceable(4) i32* @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEixERKS2_(%"class.__gnu_cxx::hash_map"* %X, i8** dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  store i32 %6, i32* %call5, align 4
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %invoke.cont20, %for.end19, %for.body9, %for.body
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev(%"class.__gnu_cxx::hash_map"* %X)
          to label %invoke.cont24 unwind label %terminate.lpad

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c, align 4
  %11 = load i32, i32* %n, align 4
  store i32 %11, i32* %i6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %12 = load i32, i32* %i6, align 4
  %cmp8 = icmp sgt i32 %12, 0
  br i1 %cmp8, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond7
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %i6, align 4
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %13) #2
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call14 = call noalias i8* @strdup(i8* %arraydecay13) #2
  store i8* %call14, i8** %ref.tmp12, align 8
  %call16 = invoke dereferenceable(4) i32* @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEixERKS2_(%"class.__gnu_cxx::hash_map"* %X, i8** dereferenceable(8) %ref.tmp12)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %for.body9
  %14 = load i32, i32* %call16, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont15
  %15 = load i32, i32* %c, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %invoke.cont15
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %16 = load i32, i32* %i6, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i6, align 4
  br label %for.cond7

for.end19:                                        ; preds = %for.cond7
  %17 = load i32, i32* %c, align 4
  %call21 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %17)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %for.end19
  %call23 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call21, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont22 unwind label %lpad

invoke.cont22:                                    ; preds = %invoke.cont20
  call void @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev(%"class.__gnu_cxx::hash_map"* %X)
  %18 = load i32, i32* %retval, align 4
  ret i32 %18

invoke.cont24:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont24
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val25

terminate.lpad:                                   ; preds = %lpad
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @__clang_call_terminate(i8* %20) #9
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEC2Ev(%"class.__gnu_cxx::hash_map"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hash_map"*, align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %ref.tmp2 = alloca %"class.std::ios_base::Init", align 1
  %ref.tmp3 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.__gnu_cxx::hash_map"* %this, %"class.__gnu_cxx::hash_map"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::hash_map"*, %"class.__gnu_cxx::hash_map"** %this.addr, align 8
  %_M_ht = getelementptr inbounds %"class.__gnu_cxx::hash_map", %"class.__gnu_cxx::hash_map"* %this1, i32 0, i32 0
  call void @_ZNSaISt4pairIKPKciEEC2Ev(%"class.std::ios_base::Init"* %ref.tmp3) #2
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E(%"class.__gnu_cxx::hashtable"* %_M_ht, i64 100, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp2, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %ref.tmp3) #2
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %ref.tmp3) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #5

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEixERKS2_(%"class.__gnu_cxx::hash_map"* %this, i8** dereferenceable(8) %__key) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hash_map"*, align 8
  %__key.addr = alloca i8**, align 8
  %ref.tmp = alloca %"struct.std::pair", align 8
  %ref.tmp2 = alloca i32, align 4
  store %"class.__gnu_cxx::hash_map"* %this, %"class.__gnu_cxx::hash_map"** %this.addr, align 8
  store i8** %__key, i8*** %__key.addr, align 8
  %this1 = load %"class.__gnu_cxx::hash_map"*, %"class.__gnu_cxx::hash_map"** %this.addr, align 8
  %_M_ht = getelementptr inbounds %"class.__gnu_cxx::hash_map", %"class.__gnu_cxx::hash_map"* %this1, i32 0, i32 0
  %0 = load i8**, i8*** %__key.addr, align 8
  store i32 0, i32* %ref.tmp2, align 4
  call void @_ZNSt4pairIKPKciEC2ERS2_RKi(%"struct.std::pair"* %ref.tmp, i8** dereferenceable(8) %0, i32* dereferenceable(4) %ref.tmp2)
  %call = call dereferenceable(16) %"struct.std::pair"* @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_(%"class.__gnu_cxx::hashtable"* %_M_ht, %"struct.std::pair"* dereferenceable(16) %ref.tmp)
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %call, i32 0, i32 1
  ret i32* %second
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev(%"class.__gnu_cxx::hash_map"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hash_map"*, align 8
  store %"class.__gnu_cxx::hash_map"* %this, %"class.__gnu_cxx::hash_map"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::hash_map"*, %"class.__gnu_cxx::hash_map"** %this.addr, align 8
  %_M_ht = getelementptr inbounds %"class.__gnu_cxx::hash_map", %"class.__gnu_cxx::hash_map"* %this1, i32 0, i32 0
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev(%"class.__gnu_cxx::hashtable"* %_M_ht)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #9
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev(%"class.__gnu_cxx::hashtable"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv(%"class.__gnu_cxx::hashtable"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"class.std::vector"* %_M_buckets)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %_M_node_allocator = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 0
  call void @_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %_M_node_allocator) #2
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_buckets4 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"class.std::vector"* %_M_buckets4)
          to label %invoke.cont5 unwind label %terminate.lpad

lpad2:                                            ; preds = %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

invoke.cont5:                                     ; preds = %lpad
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont5, %lpad2
  %_M_node_allocator6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 0
  call void @_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %_M_node_allocator6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv(%"class.__gnu_cxx::hashtable"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__i = alloca i64, align 8
  %__cur = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %__next = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_num_elements = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 5
  %0 = load i64, i64* %_M_num_elements, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %__i, align 8
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %call = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %_M_buckets)
  %cmp2 = icmp ult i64 %1, %call
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %_M_buckets3 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %2 = load i64, i64* %__i, align 8
  %call4 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets3, i64 %2)
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call4, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %3, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  %cmp5 = icmp ne %"struct.__gnu_cxx::_Hashtable_node"* %4, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  %_M_next = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %5, i32 0, i32 0
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %6, %"struct.__gnu_cxx::_Hashtable_node"** %__next, align 8
  %7 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_delete_nodeEPNS_15_Hashtable_nodeIS5_EE(%"class.__gnu_cxx::hashtable"* %this1, %"struct.__gnu_cxx::_Hashtable_node"* %7)
  %8 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__next, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %8, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %_M_buckets6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %9 = load i64, i64* %__i, align 8
  %call7 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets6, i64 %9)
  store %"struct.__gnu_cxx::_Hashtable_node"* null, %"struct.__gnu_cxx::_Hashtable_node"** %call7, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %10 = load i64, i64* %__i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %_M_num_elements8 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 5
  store i64 0, i64* %_M_num_elements8, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E(%"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %3, %"class.std::ios_base::Init"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"struct.std::_Vector_base"* %9)
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  call void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvT_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m(%"struct.std::_Vector_base"* %this1, %"struct.__gnu_cxx::_Hashtable_node"** %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl5) #2
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m(%"struct.std::_Vector_base"* %this, %"struct.__gnu_cxx::_Hashtable_node"** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__p, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  %tobool = icmp ne %"struct.__gnu_cxx::_Hashtable_node"** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE10deallocateERS9_PS8_m(%"class.std::ios_base::Init"* dereferenceable(1) %1, %"struct.__gnu_cxx::_Hashtable_node"** %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE10deallocateERS9_PS8_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, %"struct.__gnu_cxx::_Hashtable_node"** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__p, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE10deallocateEPS8_m(%"class.std::ios_base::Init"* %1, %"struct.__gnu_cxx::_Hashtable_node"** %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE10deallocateEPS8_m(%"class.std::ios_base::Init"* %this, %"struct.__gnu_cxx::_Hashtable_node"** %__p, i64) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__p, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__p.addr, align 8
  %2 = bitcast %"struct.__gnu_cxx::_Hashtable_node"** %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #8

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvT_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEvT_SC_(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEvT_SC_(%"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"**) #7 comdat align 2 {
entry:
  %.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %.addr1 = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"*** %.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"*** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %this, i64 %__n) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %1, i64 %2
  ret %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_delete_nodeEPNS_15_Hashtable_nodeIS5_EE(%"class.__gnu_cxx::hashtable"* %this, %"struct.__gnu_cxx::_Hashtable_node"* %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__n.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %temp.lvalue = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %__n, %"struct.__gnu_cxx::_Hashtable_node"** %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  call void @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE13get_allocatorEv(%"class.std::ios_base::Init"* sret %temp.lvalue, %"class.__gnu_cxx::hashtable"* %this1)
  %0 = bitcast %"class.std::ios_base::Init"* %temp.lvalue to %"class.std::ios_base::Init"*
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__n.addr, align 8
  %_M_val = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %1, i32 0, i32 1
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE7destroyEPS5_(%"class.std::ios_base::Init"* %0, %"struct.std::pair"* %_M_val)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__n.addr, align 8
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_put_nodeEPNS_15_Hashtable_nodeIS5_EE(%"class.__gnu_cxx::hashtable"* %this1, %"struct.__gnu_cxx::_Hashtable_node"* %2)
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE13get_allocatorEv(%"class.std::ios_base::Init"* noalias sret %agg.result, %"class.__gnu_cxx::hashtable"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_node_allocator = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 0
  call void @_ZNSaISt4pairIKPKciEEC2IN9__gnu_cxx15_Hashtable_nodeIS3_EEEERKSaIT_E(%"class.std::ios_base::Init"* %agg.result, %"class.std::ios_base::Init"* dereferenceable(1) %_M_node_allocator) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE7destroyEPS5_(%"class.std::ios_base::Init"* %this, %"struct.std::pair"* %__p) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_put_nodeEPNS_15_Hashtable_nodeIS5_EE(%"class.__gnu_cxx::hashtable"* %this, %"struct.__gnu_cxx::_Hashtable_node"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__p.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %__p, %"struct.__gnu_cxx::_Hashtable_node"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_node_allocator = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::ios_base::Init"* %_M_node_allocator to %"class.std::ios_base::Init"*
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE10deallocateEPS7_m(%"class.std::ios_base::Init"* %0, %"struct.__gnu_cxx::_Hashtable_node"* %1, i64 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE10deallocateEPS7_m(%"class.std::ios_base::Init"* %this, %"struct.__gnu_cxx::_Hashtable_node"* %__p, i64) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %__p, %"struct.__gnu_cxx::_Hashtable_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__p.addr, align 8
  %2 = bitcast %"struct.__gnu_cxx::_Hashtable_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKPKciEEC2IN9__gnu_cxx15_Hashtable_nodeIS3_EEEERKSaIT_E(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev(%"class.std::ios_base::Init"* %1) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKPKciEC2ERS2_RKi(%"struct.std::pair"* %this, i8** dereferenceable(8) %__a, i32* dereferenceable(4) %__b) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__a.addr = alloca i8**, align 8
  %__b.addr = alloca i32*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store i8** %__a, i8*** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %this1 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair"* %this1 to %"class.std::ios_base::Init"*
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 0
  %1 = load i8**, i8*** %__a.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 1
  %3 = load i32*, i32** %__b.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %second, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair"* @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_(%"class.__gnu_cxx::hashtable"* %this, %"struct.std::pair"* dereferenceable(16) %__obj) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair"*, align 8
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__obj.addr = alloca %"struct.std::pair"*, align 8
  %__n = alloca i64, align 8
  %__first = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %__cur = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %__tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store %"struct.std::pair"* %__obj, %"struct.std::pair"** %__obj.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_num_elements = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 5
  %0 = load i64, i64* %_M_num_elements, align 8
  %add = add i64 %0, 1
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm(%"class.__gnu_cxx::hashtable"* %this1, i64 %add)
  %1 = load %"struct.std::pair"*, %"struct.std::pair"** %__obj.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_(%"class.__gnu_cxx::hashtable"* %this1, %"struct.std::pair"* dereferenceable(16) %1)
  store i64 %call, i64* %__n, align 8
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %2 = load i64, i64* %__n, align 8
  %call2 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets, i64 %2)
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call2, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %3, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %4, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  %tobool = icmp ne %"struct.__gnu_cxx::_Hashtable_node"* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %_M_equals = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 2
  %_M_get_key = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 3
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  %_M_val = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %6, i32 0, i32 1
  %call3 = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERS4_(%"class.std::ios_base::Init"* %_M_get_key, %"struct.std::pair"* dereferenceable(16) %_M_val)
  %7 = load i8*, i8** %call3, align 8
  %_M_get_key4 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 3
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %__obj.addr, align 8
  %call5 = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"class.std::ios_base::Init"* %_M_get_key4, %"struct.std::pair"* dereferenceable(16) %8)
  %9 = load i8*, i8** %call5, align 8
  %call6 = call zeroext i1 @_ZNK5eqstrclEPKcS1_(%"class.std::ios_base::Init"* %_M_equals, i8* %7, i8* %9)
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  %_M_val7 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %10, i32 0, i32 1
  store %"struct.std::pair"* %_M_val7, %"struct.std::pair"** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  %_M_next = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %11, i32 0, i32 0
  %12 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %12, %"struct.__gnu_cxx::_Hashtable_node"** %__cur, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %__obj.addr, align 8
  %call8 = call %"struct.__gnu_cxx::_Hashtable_node"* @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_new_nodeERKS5_(%"class.__gnu_cxx::hashtable"* %this1, %"struct.std::pair"* dereferenceable(16) %13)
  store %"struct.__gnu_cxx::_Hashtable_node"* %call8, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %14 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %15 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %_M_next9 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %15, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"* %14, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next9, align 8
  %16 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %_M_buckets10 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %17 = load i64, i64* %__n, align 8
  %call11 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets10, i64 %17)
  store %"struct.__gnu_cxx::_Hashtable_node"* %16, %"struct.__gnu_cxx::_Hashtable_node"** %call11, align 8
  %_M_num_elements12 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 5
  %18 = load i64, i64* %_M_num_elements12, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %_M_num_elements12, align 8
  %19 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %_M_val13 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %19, i32 0, i32 1
  store %"struct.std::pair"* %_M_val13, %"struct.std::pair"** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load %"struct.std::pair"*, %"struct.std::pair"** %retval, align 8
  ret %"struct.std::pair"* %20
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm(%"class.__gnu_cxx::hashtable"* %this, i64 %__num_elements_hint) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__num_elements_hint.addr = alloca i64, align 8
  %__old_n = alloca i64, align 8
  %__n = alloca i64, align 8
  %__tmp = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %ref.tmp5 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__bucket = alloca i64, align 8
  %__first = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %__new_bucket = alloca i64, align 8
  %__bucket27 = alloca i64, align 8
  %__next = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store i64 %__num_elements_hint, i64* %__num_elements_hint.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %call = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %_M_buckets)
  store i64 %call, i64* %__old_n, align 8
  %0 = load i64, i64* %__num_elements_hint.addr, align 8
  %1 = load i64, i64* %__old_n, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end53

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %__num_elements_hint.addr, align 8
  %call2 = call i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm(%"class.__gnu_cxx::hashtable"* %this1, i64 %2)
  store i64 %call2, i64* %__n, align 8
  %3 = load i64, i64* %__n, align 8
  %4 = load i64, i64* %__old_n, align 8
  %cmp3 = icmp ugt i64 %3, %4
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %5 = load i64, i64* %__n, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* null, %"struct.__gnu_cxx::_Hashtable_node"** %ref.tmp, align 8
  %_M_buckets6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %6 = bitcast %"class.std::vector"* %_M_buckets6 to %"struct.std::_Vector_base"*
  call void @_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13get_allocatorEv(%"class.std::ios_base::Init"* sret %ref.tmp5, %"struct.std::_Vector_base"* %6)
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_(%"class.std::vector"* %__tmp, i64 %5, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %ref.tmp, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then4
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %ref.tmp5) #2
  store i64 0, i64* %__bucket, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %7 = load i64, i64* %__bucket, align 8
  %8 = load i64, i64* %__old_n, align 8
  %cmp7 = icmp ult i64 %7, %8
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %_M_buckets8 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %9 = load i64, i64* %__bucket, align 8
  %call11 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets8, i64 %9)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %for.body
  %10 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call11, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %10, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont23, %invoke.cont10
  %11 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %tobool = icmp ne %"struct.__gnu_cxx::_Hashtable_node"* %11, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %_M_val = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %12, i32 0, i32 1
  %13 = load i64, i64* %__n, align 8
  %call13 = invoke i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_m(%"class.__gnu_cxx::hashtable"* %this1, %"struct.std::pair"* dereferenceable(16) %_M_val, i64 %13)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %while.body
  store i64 %call13, i64* %__new_bucket, align 8
  %14 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %_M_next = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %14, i32 0, i32 0
  %15 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next, align 8
  %_M_buckets14 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %16 = load i64, i64* %__bucket, align 8
  %call16 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets14, i64 %16)
          to label %invoke.cont15 unwind label %lpad9

invoke.cont15:                                    ; preds = %invoke.cont12
  store %"struct.__gnu_cxx::_Hashtable_node"* %15, %"struct.__gnu_cxx::_Hashtable_node"** %call16, align 8
  %17 = load i64, i64* %__new_bucket, align 8
  %call18 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %__tmp, i64 %17)
          to label %invoke.cont17 unwind label %lpad9

invoke.cont17:                                    ; preds = %invoke.cont15
  %18 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call18, align 8
  %19 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %_M_next19 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %19, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"* %18, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next19, align 8
  %20 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  %21 = load i64, i64* %__new_bucket, align 8
  %call21 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %__tmp, i64 %21)
          to label %invoke.cont20 unwind label %lpad9

invoke.cont20:                                    ; preds = %invoke.cont17
  store %"struct.__gnu_cxx::_Hashtable_node"* %20, %"struct.__gnu_cxx::_Hashtable_node"** %call21, align 8
  %_M_buckets22 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %22 = load i64, i64* %__bucket, align 8
  %call24 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %_M_buckets22, i64 %22)
          to label %invoke.cont23 unwind label %lpad9

invoke.cont23:                                    ; preds = %invoke.cont20
  %23 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call24, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %23, %"struct.__gnu_cxx::_Hashtable_node"** %__first, align 8
  br label %while.cond

lpad:                                             ; preds = %if.then4
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %exn.slot, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %ehselector.slot, align 4
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %ref.tmp5) #2
  br label %eh.resume

lpad9:                                            ; preds = %for.end, %invoke.cont20, %invoke.cont17, %invoke.cont15, %invoke.cont12, %while.body, %for.body
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad9
  %exn = load i8*, i8** %exn.slot, align 8
  %30 = call i8* @__cxa_begin_catch(i8* %exn) #2
  store i64 0, i64* %__bucket27, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc48, %catch
  %31 = load i64, i64* %__bucket27, align 8
  %call31 = invoke i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %__tmp)
          to label %invoke.cont30 unwind label %lpad29

invoke.cont30:                                    ; preds = %for.cond28
  %cmp32 = icmp ult i64 %31, %call31
  br i1 %cmp32, label %for.body33, label %for.end50

for.body33:                                       ; preds = %invoke.cont30
  br label %while.cond34

while.cond34:                                     ; preds = %invoke.cont45, %for.body33
  %32 = load i64, i64* %__bucket27, align 8
  %call36 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %__tmp, i64 %32)
          to label %invoke.cont35 unwind label %lpad29

invoke.cont35:                                    ; preds = %while.cond34
  %33 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call36, align 8
  %tobool37 = icmp ne %"struct.__gnu_cxx::_Hashtable_node"* %33, null
  br i1 %tobool37, label %while.body38, label %while.end47

while.body38:                                     ; preds = %invoke.cont35
  %34 = load i64, i64* %__bucket27, align 8
  %call40 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %__tmp, i64 %34)
          to label %invoke.cont39 unwind label %lpad29

invoke.cont39:                                    ; preds = %while.body38
  %35 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call40, align 8
  %_M_next41 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %35, i32 0, i32 0
  %36 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next41, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %36, %"struct.__gnu_cxx::_Hashtable_node"** %__next, align 8
  %37 = load i64, i64* %__bucket27, align 8
  %call43 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %__tmp, i64 %37)
          to label %invoke.cont42 unwind label %lpad29

invoke.cont42:                                    ; preds = %invoke.cont39
  %38 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %call43, align 8
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_delete_nodeEPNS_15_Hashtable_nodeIS5_EE(%"class.__gnu_cxx::hashtable"* %this1, %"struct.__gnu_cxx::_Hashtable_node"* %38)
          to label %invoke.cont44 unwind label %lpad29

invoke.cont44:                                    ; preds = %invoke.cont42
  %39 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__next, align 8
  %40 = load i64, i64* %__bucket27, align 8
  %call46 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEixEm(%"class.std::vector"* %__tmp, i64 %40)
          to label %invoke.cont45 unwind label %lpad29

invoke.cont45:                                    ; preds = %invoke.cont44
  store %"struct.__gnu_cxx::_Hashtable_node"* %39, %"struct.__gnu_cxx::_Hashtable_node"** %call46, align 8
  br label %while.cond34

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %41 = load i64, i64* %__bucket, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %__bucket, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %_M_buckets25 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4swapERSA_(%"class.std::vector"* %_M_buckets25, %"class.std::vector"* dereferenceable(24) %__tmp)
          to label %invoke.cont26 unwind label %lpad9

invoke.cont26:                                    ; preds = %for.end
  br label %try.cont

lpad29:                                           ; preds = %for.end50, %invoke.cont44, %invoke.cont42, %invoke.cont39, %while.body38, %while.cond34, %for.cond28
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont51 unwind label %terminate.lpad

while.end47:                                      ; preds = %invoke.cont35
  br label %for.inc48

for.inc48:                                        ; preds = %while.end47
  %45 = load i64, i64* %__bucket27, align 8
  %inc49 = add i64 %45, 1
  store i64 %inc49, i64* %__bucket27, align 8
  br label %for.cond28

for.end50:                                        ; preds = %invoke.cont30
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad29

invoke.cont51:                                    ; preds = %lpad29
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"class.std::vector"* %__tmp)
          to label %invoke.cont52 unwind label %terminate.lpad

try.cont:                                         ; preds = %invoke.cont26
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"class.std::vector"* %__tmp)
  br label %if.end

invoke.cont52:                                    ; preds = %invoke.cont51
  br label %eh.resume

if.end:                                           ; preds = %try.cont, %if.then
  br label %if.end53

if.end53:                                         ; preds = %if.end, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont52, %lpad
  %exn54 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn54, 0
  %lpad.val55 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val55

terminate.lpad:                                   ; preds = %invoke.cont51, %lpad29
  %46 = landingpad { i8*, i32 }
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  call void @__clang_call_terminate(i8* %47) #9
  unreachable

unreachable:                                      ; preds = %for.end50
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_(%"class.__gnu_cxx::hashtable"* %this, %"struct.std::pair"* dereferenceable(16) %__obj) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__obj.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store %"struct.std::pair"* %__obj, %"struct.std::pair"** %__obj.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_get_key = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 3
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__obj.addr, align 8
  %call = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"class.std::ios_base::Init"* %_M_get_key, %"struct.std::pair"* dereferenceable(16) %0)
  %call2 = call i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_(%"class.__gnu_cxx::hashtable"* %this1, i8** dereferenceable(8) %call)
  ret i64 %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERS4_(%"class.std::ios_base::Init"* %this, %"struct.std::pair"* dereferenceable(16) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i32 0, i32 0
  ret i8** %first
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"class.std::ios_base::Init"* %this, %"struct.std::pair"* dereferenceable(16) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i32 0, i32 0
  ret i8** %first
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK5eqstrclEPKcS1_(%"class.std::ios_base::Init"* %this, i8* %s1, i8* %s2) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #13
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"* @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_new_nodeERKS5_(%"class.__gnu_cxx::hashtable"* %this, %"struct.std::pair"* dereferenceable(16) %__obj) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__obj.addr = alloca %"struct.std::pair"*, align 8
  %__n = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %temp.lvalue = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store %"struct.std::pair"* %__obj, %"struct.std::pair"** %__obj.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"* @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_get_nodeEv(%"class.__gnu_cxx::hashtable"* %this1)
  store %"struct.__gnu_cxx::_Hashtable_node"* %call, %"struct.__gnu_cxx::_Hashtable_node"** %__n, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__n, align 8
  %_M_next = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %0, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"* null, %"struct.__gnu_cxx::_Hashtable_node"** %_M_next, align 8
  invoke void @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE13get_allocatorEv(%"class.std::ios_base::Init"* sret %temp.lvalue, %"class.__gnu_cxx::hashtable"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"class.std::ios_base::Init"* %temp.lvalue to %"class.std::ios_base::Init"*
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__n, align 8
  %_M_val = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", %"struct.__gnu_cxx::_Hashtable_node"* %2, i32 0, i32 1
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %__obj.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE9constructEPS5_RKS5_(%"class.std::ios_base::Init"* %1, %"struct.std::pair"* %_M_val, %"struct.std::pair"* dereferenceable(16) %3)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__n, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"* %4

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %catch

lpad2:                                            ; preds = %invoke.cont
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %11 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %12 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__n, align 8
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_put_nodeEPNS_15_Hashtable_nodeIS5_EE(%"class.__gnu_cxx::hashtable"* %this1, %"struct.__gnu_cxx::_Hashtable_node"* %12)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad4

lpad4:                                            ; preds = %invoke.cont5, %catch
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %lpad4
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont6
  %exn7 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn7, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8

terminate.lpad:                                   ; preds = %lpad4
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #9
  unreachable

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"* @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE11_M_get_nodeEv(%"class.__gnu_cxx::hashtable"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_node_allocator = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::ios_base::Init"* %_M_node_allocator to %"class.std::ios_base::Init"*
  %call = call %"struct.__gnu_cxx::_Hashtable_node"* @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(%"class.std::ios_base::Init"* %0, i64 1, i8* null)
  ret %"struct.__gnu_cxx::_Hashtable_node"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE9constructEPS5_RKS5_(%"class.std::ios_base::Init"* %this, %"struct.std::pair"* %__p, %"struct.std::pair"* dereferenceable(16) %__val) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__val.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::pair"* %__val, %"struct.std::pair"** %__val.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %__val.addr, align 8
  %4 = bitcast %"struct.std::pair"* %2 to i8*
  %5 = bitcast %"struct.std::pair"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"* @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv(%"class.std::ios_base::Init"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 24
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.__gnu_cxx::_Hashtable_node"*
  ret %"struct.__gnu_cxx::_Hashtable_node"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv(%"class.std::ios_base::Init"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret i64 768614336404564650
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #12

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_(%"class.__gnu_cxx::hashtable"* %this, i8** dereferenceable(8) %__key) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__key.addr = alloca i8**, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store i8** %__key, i8*** %__key.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %0 = load i8**, i8*** %__key.addr, align 8
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %call = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %_M_buckets)
  %call2 = call i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_m(%"class.__gnu_cxx::hashtable"* %this1, i8** dereferenceable(8) %0, i64 %call)
  ret i64 %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_m(%"class.__gnu_cxx::hashtable"* %this, i8** dereferenceable(8) %__key, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__key.addr = alloca i8**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store i8** %__key, i8*** %__key.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_hash = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 1
  %0 = load i8**, i8*** %__key.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i64 @_ZNK9__gnu_cxx4hashIPKcEclES2_(%"class.std::ios_base::Init"* %_M_hash, i8* %1)
  %2 = load i64, i64* %__n.addr, align 8
  %rem = urem i64 %call, %2
  ret i64 %rem
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx4hashIPKcEclES2_(%"class.std::ios_base::Init"* %this, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @_ZN9__gnu_cxx17__stl_hash_stringEPKc(i8* %0)
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx17__stl_hash_stringEPKc(i8* %__s) #7 comdat {
entry:
  %__s.addr = alloca i8*, align 8
  %__h = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8
  store i64 0, i64* %__h, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %__s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %__h, align 8
  %mul = mul i64 5, %2
  %3 = load i8*, i8** %__s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i64
  %add = add i64 %mul, %conv
  store i64 %add, i64* %__h, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %__s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %__h, align 8
  ret i64 %6
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm(%"class.__gnu_cxx::hashtable"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZN9__gnu_cxx16__stl_next_primeEm(i64 %0)
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13get_allocatorEv(%"class.std::ios_base::Init"* noalias sret %agg.result, %"struct.std::_Vector_base"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this1)
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS8_(%"class.std::ios_base::Init"* %agg.result, %"class.std::ios_base::Init"* dereferenceable(1) %call) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_(%"class.std::vector"* %this, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__value, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__value, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS9_(%"struct.std::_Vector_base"* %0, i64 %1, %"class.std::ios_base::Init"* dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE18_M_fill_initializeEmRKS8_(%"class.std::vector"* %this1, i64 %3, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"struct.std::_Vector_base"* %8)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont2
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3

terminate.lpad:                                   ; preds = %lpad
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_m(%"class.__gnu_cxx::hashtable"* %this, %"struct.std::pair"* dereferenceable(16) %__obj, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__obj.addr = alloca %"struct.std::pair"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store %"struct.std::pair"* %__obj, %"struct.std::pair"** %__obj.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_get_key = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 3
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__obj.addr, align 8
  %call = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"class.std::ios_base::Init"* %_M_get_key, %"struct.std::pair"* dereferenceable(16) %0)
  %1 = load i64, i64* %__n.addr, align 8
  %call2 = call i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14_M_bkt_num_keyERS4_m(%"class.__gnu_cxx::hashtable"* %this1, i8** dereferenceable(8) %call, i64 %1)
  ret i64 %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4swapERSA_(%"class.std::vector"* %this, %"class.std::vector"* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %2 = bitcast %"class.std::vector"* %1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_impl12_M_swap_dataERSB_(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* dereferenceable(24) %_M_impl2)
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %call3 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %5)
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE10_S_on_swapERS9_SB_(%"class.std::ios_base::Init"* dereferenceable(1) %call, %"class.std::ios_base::Init"* dereferenceable(1) %call3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_impl12_M_swap_dataERSB_(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, align 8
  %__x.addr = alloca %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %this.addr, align 8
  store %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %__x, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %__x.addr, align 8
  %this1 = load %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %__x.addr, align 8
  %_M_start2 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %0, i32 0, i32 0
  call void @_ZSt4swapIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvRT_SB_(%"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_start, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_start2)
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1, i32 0, i32 1
  %1 = load %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %__x.addr, align 8
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %1, i32 0, i32 1
  call void @_ZSt4swapIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvRT_SB_(%"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_finish, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_finish3)
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1, i32 0, i32 2
  %2 = load %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %__x.addr, align 8
  %_M_end_of_storage4 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %2, i32 0, i32 2
  call void @_ZSt4swapIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvRT_SB_(%"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_end_of_storage, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_end_of_storage4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE10_S_on_swapERS9_SB_(%"class.std::ios_base::Init"* dereferenceable(1) %__a, %"class.std::ios_base::Init"* dereferenceable(1) %__b) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__b.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"class.std::ios_base::Init"* %__b, %"class.std::ios_base::Init"** %__b.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__b.addr, align 8
  call void @_ZNSt12__alloc_swapISaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEELb1EE8_S_do_itERS9_SB_(%"class.std::ios_base::Init"* dereferenceable(1) %0, %"class.std::ios_base::Init"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12__alloc_swapISaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEELb1EE8_S_do_itERS9_SB_(%"class.std::ios_base::Init"* dereferenceable(1), %"class.std::ios_base::Init"* dereferenceable(1)) #7 comdat align 2 {
entry:
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr1 = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  store %"class.std::ios_base::Init"* %1, %"class.std::ios_base::Init"** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt4swapIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEvRT_SB_(%"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %__a, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %__b) #7 comdat {
entry:
  %__a.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"***, align 8
  %__b.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"***, align 8
  %__tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"*** %__a, %"struct.__gnu_cxx::_Hashtable_node"**** %__a.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"*** %__b, %"struct.__gnu_cxx::_Hashtable_node"**** %__b.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"***, %"struct.__gnu_cxx::_Hashtable_node"**** %__a.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %0, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"*** %__tmp, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"***, %"struct.__gnu_cxx::_Hashtable_node"**** %__b.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %2, align 8
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"***, %"struct.__gnu_cxx::_Hashtable_node"**** %__a.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %3, %"struct.__gnu_cxx::_Hashtable_node"*** %4, align 8
  %5 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__tmp, align 8
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"***, %"struct.__gnu_cxx::_Hashtable_node"**** %__b.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %5, %"struct.__gnu_cxx::_Hashtable_node"*** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS9_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implC2ERKS9_(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, %"class.std::ios_base::Init"* dereferenceable(1) %0)
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
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
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE18_M_fill_initializeEmRKS8_(%"class.std::vector"* %this, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__value) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__value, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
  %call2 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E(%"struct.__gnu_cxx::_Hashtable_node"** %1, i64 %2, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %3, %"class.std::ios_base::Init"* dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %call2, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E(%"struct.__gnu_cxx::_Hashtable_node"** %__first, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__x, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt20uninitialized_fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ET_SA_T0_RKT1_(%"struct.__gnu_cxx::_Hashtable_node"** %1, i64 %2, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %3)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt20uninitialized_fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ET_SA_T0_RKT1_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__assignable = alloca i8, align 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__x, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmSA_EET_SC_T0_RKT1_(%"struct.__gnu_cxx::_Hashtable_node"** %0, i64 %1, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmSA_EET_SC_T0_RKT1_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__x, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt6fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ET_SA_T0_RKT1_(%"struct.__gnu_cxx::_Hashtable_node"** %0, i64 %1, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt6fill_nIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ET_SA_T0_RKT1_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__value) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__value, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %call1 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt10__fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ENS0_11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_(%"struct.__gnu_cxx::_Hashtable_node"** %call, i64 %1, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__it) #7 comdat {
entry:
  %__it.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__it, %"struct.__gnu_cxx::_Hashtable_node"*** %__it.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__it.addr, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"** %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt10__fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_ENS0_11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeESC_T0_RKSB_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__value) #7 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %__niter = alloca i64, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__value, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %0, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %1, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %5 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %4, %"struct.__gnu_cxx::_Hashtable_node"** %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %7, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %incdec.ptr, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"** %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implC2ERKS9_(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"*, %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS8_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %1) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** null, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1, i32 0, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** null, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %this1, i32 0, i32 2
  store %"struct.__gnu_cxx::_Hashtable_node"** null, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE8allocateERS9_m(%"class.std::ios_base::Init"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.__gnu_cxx::_Hashtable_node"** [ %call, %cond.true ], [ null, %cond.false ]
  ret %"struct.__gnu_cxx::_Hashtable_node"** %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE8allocateERS9_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %2, i8* null)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv(%"class.std::ios_base::Init"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.__gnu_cxx::_Hashtable_node"**
  ret %"struct.__gnu_cxx::_Hashtable_node"** %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv(%"class.std::ios_base::Init"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS8_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %2 = bitcast %"class.std::ios_base::Init"* %1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS9_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %2) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEC2ERKS9_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx16__stl_next_primeEm(i64 %__n) #0 comdat {
entry:
  %__n.addr = alloca i64, align 8
  %__first = alloca i64*, align 8
  %__last = alloca i64*, align 8
  %pos = alloca i64*, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx21_Hashtable_prime_listImE17_S_get_prime_listEv()
  store i64* %call, i64** %__first, align 8
  %0 = load i64*, i64** %__first, align 8
  %add.ptr = getelementptr inbounds i64, i64* %0, i64 29
  store i64* %add.ptr, i64** %__last, align 8
  %1 = load i64*, i64** %__first, align 8
  %2 = load i64*, i64** %__last, align 8
  %call1 = call i64* @_ZSt11lower_boundIPKmmET_S2_S2_RKT0_(i64* %1, i64* %2, i64* dereferenceable(8) %__n.addr)
  store i64* %call1, i64** %pos, align 8
  %3 = load i64*, i64** %pos, align 8
  %4 = load i64*, i64** %__last, align 8
  %cmp = icmp eq i64* %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64*, i64** %__last, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %5, i64 -1
  %6 = load i64, i64* %add.ptr2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i64*, i64** %pos, align 8
  %8 = load i64, i64* %7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %8, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx21_Hashtable_prime_listImE17_S_get_prime_listEv() #7 comdat align 2 {
entry:
  ret i64* getelementptr inbounds ([29 x i64], [29 x i64]* @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, i32 0, i32 0)
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt11lower_boundIPKmmET_S2_S2_RKT0_(i64* %__first, i64* %__last, i64* dereferenceable(8) %__val) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__val.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__val, i64** %__val.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__val.addr, align 8
  call void @_ZN9__gnu_cxx5__ops15__iter_less_valEv()
  %call = call i64* @_ZSt13__lower_boundIPKmmN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_(i64* %0, i64* %1, i64* dereferenceable(8) %2)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__iter_less_valEv() #0 comdat {
entry:
  %retval = alloca %"class.std::ios_base::Init", align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2Ev(%"class.std::ios_base::Init"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt13__lower_boundIPKmmN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_(i64* %__first, i64* %__last, i64* dereferenceable(8) %__val) #0 comdat {
entry:
  %__comp = alloca %"class.std::ios_base::Init", align 1
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__val.addr = alloca i64*, align 8
  %__len = alloca i64, align 8
  %__half = alloca i64, align 8
  %__middle = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__val, i64** %__val.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %call = call i64 @_ZSt8distanceIPKmENSt15iterator_traitsIT_E15difference_typeES3_S3_(i64* %0, i64* %1)
  store i64 %call, i64* %__len, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %__len, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %__len, align 8
  %shr = ashr i64 %3, 1
  store i64 %shr, i64* %__half, align 8
  %4 = load i64*, i64** %__first.addr, align 8
  store i64* %4, i64** %__middle, align 8
  %5 = load i64, i64* %__half, align 8
  call void @_ZSt7advanceIPKmlEvRT_T0_(i64** dereferenceable(8) %__middle, i64 %5)
  %6 = load i64*, i64** %__middle, align 8
  %7 = load i64*, i64** %__val.addr, align 8
  %call1 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKmS3_EEbT_RT0_(%"class.std::ios_base::Init"* %__comp, i64* %6, i64* dereferenceable(8) %7)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i64*, i64** %__middle, align 8
  store i64* %8, i64** %__first.addr, align 8
  %9 = load i64*, i64** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %9, i32 1
  store i64* %incdec.ptr, i64** %__first.addr, align 8
  %10 = load i64, i64* %__len, align 8
  %11 = load i64, i64* %__half, align 8
  %sub = sub nsw i64 %10, %11
  %sub2 = sub nsw i64 %sub, 1
  store i64 %sub2, i64* %__len, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load i64, i64* %__half, align 8
  store i64 %12, i64* %__len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i64*, i64** %__first.addr, align 8
  ret i64* %13
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt8distanceIPKmENSt15iterator_traitsIT_E15difference_typeES3_S3_(i64* %__first, i64* %__last) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  call void @_ZSt19__iterator_categoryIPKmENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i64** dereferenceable(8) %__first.addr)
  %call = call i64 @_ZSt10__distanceIPKmENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i64* %0, i64* %1)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt7advanceIPKmlEvRT_T0_(i64** dereferenceable(8) %__i, i64 %__n) #0 comdat {
entry:
  %__i.addr = alloca i64**, align 8
  %__n.addr = alloca i64, align 8
  %__d = alloca i64, align 8
  %agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  store i64** %__i, i64*** %__i.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  store i64 %0, i64* %__d, align 8
  %1 = load i64**, i64*** %__i.addr, align 8
  %2 = load i64, i64* %__d, align 8
  %3 = load i64**, i64*** %__i.addr, align 8
  call void @_ZSt19__iterator_categoryIPKmENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i64** dereferenceable(8) %3)
  call void @_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag(i64** dereferenceable(8) %1, i64 %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPKmS3_EEbT_RT0_(%"class.std::ios_base::Init"* %this, i64* %__it, i64* dereferenceable(8) %__val) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__it.addr = alloca i64*, align 8
  %__val.addr = alloca i64*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64* %__it, i64** %__it.addr, align 8
  store i64* %__val, i64** %__val.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load i64*, i64** %__it.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__val.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryIPKmENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i64** dereferenceable(8)) #7 comdat {
entry:
  %retval = alloca %"class.std::ios_base::Init", align 1
  %.addr = alloca i64**, align 8
  store i64** %0, i64*** %.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag(i64** dereferenceable(8) %__i, i64 %__n) #7 comdat {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %__i.addr = alloca i64**, align 8
  %__n.addr = alloca i64, align 8
  store i64** %__i, i64*** %__i.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i64**, i64*** %__i.addr, align 8
  %3 = load i64*, i64** %2, align 8
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %1
  store i64* %add.ptr, i64** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZSt10__distanceIPKmENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i64* %__first, i64* %__last) #7 comdat {
entry:
  %0 = alloca %"class.std::ios_base::Init", align 1
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKPKciEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E(%"class.__gnu_cxx::hashtable"* %this, i64 %__n, %"class.std::ios_base::Init"* dereferenceable(1) %__hf, %"class.std::ios_base::Init"* dereferenceable(1) %__eql, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__n.addr = alloca i64, align 8
  %__hf.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__eql.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %__hf, %"class.std::ios_base::Init"** %__hf.addr, align 8
  store %"class.std::ios_base::Init"* %__eql, %"class.std::ios_base::Init"** %__eql.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %_M_node_allocator = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2IS5_EERKSaIT_E(%"class.std::ios_base::Init"* %_M_node_allocator, %"class.std::ios_base::Init"* dereferenceable(1) %0) #2
  %_M_hash = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 1
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__hf.addr, align 8
  %_M_equals = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 2
  %2 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__eql.addr, align 8
  %_M_get_key = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 3
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2IS5_EERKSaIT_E(%"class.std::ios_base::Init"* %ref.tmp, %"class.std::ios_base::Init"* dereferenceable(1) %3) #2
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2ERKS9_(%"class.std::vector"* %_M_buckets, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  %_M_num_elements = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 5
  store i64 0, i64* %_M_num_elements, align 8
  %4 = load i64, i64* %__n.addr, align 8
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm(%"class.__gnu_cxx::hashtable"* %this1, i64 %4)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev(%"class.std::vector"* %_M_buckets)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad2
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont4, %lpad
  call void @_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEED2Ev(%"class.std::ios_base::Init"* %_M_node_allocator) #2
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2IS5_EERKSaIT_E(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEEC2Ev(%"class.std::ios_base::Init"* %1) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEC2IS5_EERKSaIT_E(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEC2Ev(%"class.std::ios_base::Init"* %1) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2ERKS9_(%"class.std::vector"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2ERKS9_(%"struct.std::_Vector_base"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm(%"class.__gnu_cxx::hashtable"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::hashtable"*, align 8
  %__n.addr = alloca i64, align 8
  %__n_buckets = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  store %"class.__gnu_cxx::hashtable"* %this, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::hashtable"*, %"class.__gnu_cxx::hashtable"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm(%"class.__gnu_cxx::hashtable"* %this1, i64 %0)
  store i64 %call, i64* %__n_buckets, align 8
  %_M_buckets = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %1 = load i64, i64* %__n_buckets, align 8
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm(%"class.std::vector"* %_M_buckets, i64 %1)
  %_M_buckets2 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %_M_buckets3 = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 4
  %call4 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE3endEv(%"class.std::vector"* %_M_buckets3)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %call4, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive, align 8
  %2 = load i64, i64* %__n_buckets, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* null, %"struct.__gnu_cxx::_Hashtable_node"** %ref.tmp, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive5, align 8
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE6insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_(%"class.std::vector"* %_M_buckets2, %"struct.__gnu_cxx::_Hashtable_node"** %3, i64 %2, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %ref.tmp)
  %_M_num_elements = getelementptr inbounds %"class.__gnu_cxx::hashtable", %"class.__gnu_cxx::hashtable"* %this1, i32 0, i32 5
  store i64 0, i64* %_M_num_elements, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm(%"class.std::vector"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__old_size = alloca i64, align 8
  %__tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8capacityEv(%"class.std::vector"* %this1)
  %1 = load i64, i64* %__n.addr, align 8
  %cmp3 = icmp ult i64 %call2, %1
  br i1 %cmp3, label %if.then4, label %if.end27

if.then4:                                         ; preds = %if.end
  %call5 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call5, i64* %__old_size, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  %call7 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE20_M_allocate_and_copyIPS8_EESC_mT_SD_(%"class.std::vector"* %this1, i64 %2, %"struct.__gnu_cxx::_Hashtable_node"** %4, %"struct.__gnu_cxx::_Hashtable_node"** %6)
  store %"struct.__gnu_cxx::_Hashtable_node"** %call7, %"struct.__gnu_cxx::_Hashtable_node"*** %__tmp, align 8
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %_M_start9 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl8, i32 0, i32 0
  %8 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start9, align 8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %10 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish11, align 8
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call12 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %11)
  call void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E(%"struct.__gnu_cxx::_Hashtable_node"** %8, %"struct.__gnu_cxx::_Hashtable_node"** %10, %"class.std::ios_base::Init"* dereferenceable(1) %call12)
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %13 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %_M_start14 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl13, i32 0, i32 0
  %14 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start14, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl15, i32 0, i32 2
  %16 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage, align 8
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %_M_start17 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl16, i32 0, i32 0
  %18 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start17, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %16 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m(%"struct.std::_Vector_base"* %12, %"struct.__gnu_cxx::_Hashtable_node"** %14, i64 %sub.ptr.div)
  %19 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__tmp, align 8
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %20, i32 0, i32 0
  %_M_start19 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl18, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %19, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start19, align 8
  %21 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__tmp, align 8
  %22 = load i64, i64* %__old_size, align 8
  %add.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %21, i64 %22
  %23 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %_M_finish21 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl20, i32 0, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish21, align 8
  %24 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl22 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %_M_start23 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl22, i32 0, i32 0
  %25 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start23, align 8
  %26 = load i64, i64* %__n.addr, align 8
  %add.ptr24 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %25, i64 %26
  %27 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %27, i32 0, i32 0
  %_M_end_of_storage26 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl25, i32 0, i32 2
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr24, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEC2ERKS9_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"** %1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE6insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_(%"class.std::vector"* %this, %"struct.__gnu_cxx::_Hashtable_node"** %__position.coerce, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %__position.coerce, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__x, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive2, align 8
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_(%"class.std::vector"* %this1, %"struct.__gnu_cxx::_Hashtable_node"** %4, i64 %2, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_(%"class.std::vector"* %this, %"struct.__gnu_cxx::_Hashtable_node"** %__position.coerce, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__x_copy = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  %__elems_after = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__old_finish = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp46 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__new_finish = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %__position.coerce, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__x, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end109

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 2
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %5 = load i64, i64* %__n.addr, align 8
  %cmp3 = icmp uge i64 %sub.ptr.div, %5
  br i1 %cmp3, label %if.then4, label %if.else44

if.then4:                                         ; preds = %if.then
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %7 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %6, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %7, %"struct.__gnu_cxx::_Hashtable_node"** %__x_copy, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive5, align 8
  %call6 = call i64 @_ZN9__gnu_cxxmiIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSG_SJ_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position)
  store i64 %call6, i64* %__elems_after, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_finish8 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl7, i32 0, i32 1
  %9 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish8, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %9, %"struct.__gnu_cxx::_Hashtable_node"*** %__old_finish, align 8
  %10 = load i64, i64* %__elems_after, align 8
  %11 = load i64, i64* %__n.addr, align 8
  %cmp9 = icmp ugt i64 %10, %11
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then4
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %_M_finish12 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl11, i32 0, i32 1
  %13 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish12, align 8
  %14 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %14
  %add.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %13, i64 %idx.neg
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %16 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish14, align 8
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %_M_finish16 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  %18 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish16, align 8
  %19 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call17 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %19)
  %call18 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_(%"struct.__gnu_cxx::_Hashtable_node"** %add.ptr, %"struct.__gnu_cxx::_Hashtable_node"** %16, %"struct.__gnu_cxx::_Hashtable_node"** %18, %"class.std::ios_base::Init"* dereferenceable(1) %call17)
  %20 = load i64, i64* %__n.addr, align 8
  %21 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %_M_finish20 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl19, i32 0, i32 1
  %22 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish20, align 8
  %add.ptr21 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %22, i64 %20
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr21, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish20, align 8
  %call22 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %23 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call22, align 8
  %24 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__old_finish, align 8
  %25 = load i64, i64* %__n.addr, align 8
  %idx.neg23 = sub i64 0, %25
  %add.ptr24 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %24, i64 %idx.neg23
  %26 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__old_finish, align 8
  %call25 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt13copy_backwardIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %23, %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr24, %"struct.__gnu_cxx::_Hashtable_node"** %26)
  %call26 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %27 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call26, align 8
  %call27 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %28 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call27, align 8
  %29 = load i64, i64* %__n.addr, align 8
  %add.ptr28 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %28, i64 %29
  call void @_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_(%"struct.__gnu_cxx::_Hashtable_node"** %27, %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr28, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x_copy)
  br label %if.end

if.else:                                          ; preds = %if.then4
  %30 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %_M_finish30 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl29, i32 0, i32 1
  %31 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish30, align 8
  %32 = load i64, i64* %__n.addr, align 8
  %33 = load i64, i64* %__elems_after, align 8
  %sub = sub i64 %32, %33
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call31 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %34)
  %call32 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E(%"struct.__gnu_cxx::_Hashtable_node"** %31, i64 %sub, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x_copy, %"class.std::ios_base::Init"* dereferenceable(1) %call31)
  %35 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl33 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %_M_finish34 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl33, i32 0, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %call32, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish34, align 8
  %call35 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %36 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call35, align 8
  %37 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__old_finish, align 8
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %38, i32 0, i32 0
  %_M_finish37 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl36, i32 0, i32 1
  %39 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish37, align 8
  %40 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call38 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %40)
  %call39 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_(%"struct.__gnu_cxx::_Hashtable_node"** %36, %"struct.__gnu_cxx::_Hashtable_node"** %37, %"struct.__gnu_cxx::_Hashtable_node"** %39, %"class.std::ios_base::Init"* dereferenceable(1) %call38)
  %41 = load i64, i64* %__elems_after, align 8
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %_M_finish41 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl40, i32 0, i32 1
  %43 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish41, align 8
  %add.ptr42 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %43, i64 %41
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr42, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish41, align 8
  %call43 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %44 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call43, align 8
  %45 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__old_finish, align 8
  call void @_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_(%"struct.__gnu_cxx::_Hashtable_node"** %44, %"struct.__gnu_cxx::_Hashtable_node"** %45, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__x_copy)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end108

if.else44:                                        ; preds = %if.then
  %46 = load i64, i64* %__n.addr, align 8
  %call45 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_M_check_lenEmS4_(%"class.std::vector"* %this1, i64 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i64 %call45, i64* %__len, align 8
  %call47 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive48 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp46, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %call47, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive48, align 8
  %call49 = call i64 @_ZN9__gnu_cxxmiIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSG_SJ_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp46)
  store i64 %call49, i64* %__elems_before, align 8
  %47 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %48 = load i64, i64* %__len, align 8
  %call50 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm(%"struct.std::_Vector_base"* %47, i64 %48)
  store %"struct.__gnu_cxx::_Hashtable_node"** %call50, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %49 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %49, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %50 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %51 = load i64, i64* %__elems_before, align 8
  %add.ptr51 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %50, i64 %51
  %52 = load i64, i64* %__n.addr, align 8
  %53 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__x.addr, align 8
  %54 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call52 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %54)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else44
  %call54 = invoke %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E(%"struct.__gnu_cxx::_Hashtable_node"** %add.ptr51, i64 %52, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %53, %"class.std::ios_base::Init"* dereferenceable(1) %call52)
          to label %invoke.cont53 unwind label %lpad

invoke.cont53:                                    ; preds = %invoke.cont
  store %"struct.__gnu_cxx::_Hashtable_node"** null, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl55 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl55, i32 0, i32 0
  %56 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %call57 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont56 unwind label %lpad

invoke.cont56:                                    ; preds = %invoke.cont53
  %57 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call57, align 8
  %58 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %59 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call59 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %59)
          to label %invoke.cont58 unwind label %lpad

invoke.cont58:                                    ; preds = %invoke.cont56
  %call61 = invoke %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_(%"struct.__gnu_cxx::_Hashtable_node"** %56, %"struct.__gnu_cxx::_Hashtable_node"** %57, %"struct.__gnu_cxx::_Hashtable_node"** %58, %"class.std::ios_base::Init"* dereferenceable(1) %call59)
          to label %invoke.cont60 unwind label %lpad

invoke.cont60:                                    ; preds = %invoke.cont58
  store %"struct.__gnu_cxx::_Hashtable_node"** %call61, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %60 = load i64, i64* %__n.addr, align 8
  %61 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %add.ptr62 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %61, i64 %60
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr62, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %call64 = invoke dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont63 unwind label %lpad

invoke.cont63:                                    ; preds = %invoke.cont60
  %62 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call64, align 8
  %63 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl65 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %_M_finish66 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl65, i32 0, i32 1
  %64 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish66, align 8
  %65 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %66 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call68 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %66)
          to label %invoke.cont67 unwind label %lpad

invoke.cont67:                                    ; preds = %invoke.cont63
  %call70 = invoke %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_(%"struct.__gnu_cxx::_Hashtable_node"** %62, %"struct.__gnu_cxx::_Hashtable_node"** %64, %"struct.__gnu_cxx::_Hashtable_node"** %65, %"class.std::ios_base::Init"* dereferenceable(1) %call68)
          to label %invoke.cont69 unwind label %lpad

invoke.cont69:                                    ; preds = %invoke.cont67
  store %"struct.__gnu_cxx::_Hashtable_node"** %call70, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
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
  %71 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %tobool = icmp ne %"struct.__gnu_cxx::_Hashtable_node"** %71, null
  br i1 %tobool, label %if.else79, label %if.then71

if.then71:                                        ; preds = %catch
  %72 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %73 = load i64, i64* %__elems_before, align 8
  %add.ptr72 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %72, i64 %73
  %74 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %75 = load i64, i64* %__elems_before, align 8
  %add.ptr73 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %74, i64 %75
  %76 = load i64, i64* %__n.addr, align 8
  %add.ptr74 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr73, i64 %76
  %77 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call77 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %77)
          to label %invoke.cont76 unwind label %lpad75

invoke.cont76:                                    ; preds = %if.then71
  invoke void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E(%"struct.__gnu_cxx::_Hashtable_node"** %add.ptr72, %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr74, %"class.std::ios_base::Init"* dereferenceable(1) %call77)
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
  %81 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %82 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %83 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call81 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %83)
          to label %invoke.cont80 unwind label %lpad75

invoke.cont80:                                    ; preds = %if.else79
  invoke void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E(%"struct.__gnu_cxx::_Hashtable_node"** %81, %"struct.__gnu_cxx::_Hashtable_node"** %82, %"class.std::ios_base::Init"* dereferenceable(1) %call81)
          to label %invoke.cont82 unwind label %lpad75

invoke.cont82:                                    ; preds = %invoke.cont80
  br label %if.end83

if.end83:                                         ; preds = %invoke.cont82, %invoke.cont78
  %84 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %85 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %86 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m(%"struct.std::_Vector_base"* %84, %"struct.__gnu_cxx::_Hashtable_node"** %85, i64 %86)
          to label %invoke.cont84 unwind label %lpad75

invoke.cont84:                                    ; preds = %if.end83
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad75

invoke.cont85:                                    ; preds = %lpad75
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont69
  %87 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl86 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %87, i32 0, i32 0
  %_M_start87 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl86, i32 0, i32 0
  %88 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start87, align 8
  %89 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl88 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %89, i32 0, i32 0
  %_M_finish89 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl88, i32 0, i32 1
  %90 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish89, align 8
  %91 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call90 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %91)
  call void @_ZSt8_DestroyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RSaIT0_E(%"struct.__gnu_cxx::_Hashtable_node"** %88, %"struct.__gnu_cxx::_Hashtable_node"** %90, %"class.std::ios_base::Init"* dereferenceable(1) %call90)
  %92 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %93 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl91 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %93, i32 0, i32 0
  %_M_start92 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl91, i32 0, i32 0
  %94 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start92, align 8
  %95 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl93 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %95, i32 0, i32 0
  %_M_end_of_storage94 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl93, i32 0, i32 2
  %96 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage94, align 8
  %97 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl95 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %97, i32 0, i32 0
  %_M_start96 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl95, i32 0, i32 0
  %98 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start96, align 8
  %sub.ptr.lhs.cast97 = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %96 to i64
  %sub.ptr.rhs.cast98 = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %98 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %sub.ptr.div100 = sdiv exact i64 %sub.ptr.sub99, 8
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m(%"struct.std::_Vector_base"* %92, %"struct.__gnu_cxx::_Hashtable_node"** %94, i64 %sub.ptr.div100)
  %99 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %100 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl101 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %100, i32 0, i32 0
  %_M_start102 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl101, i32 0, i32 0
  store %"struct.__gnu_cxx::_Hashtable_node"** %99, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start102, align 8
  %101 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_finish, align 8
  %102 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl103 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %102, i32 0, i32 0
  %_M_finish104 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl103, i32 0, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %101, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_finish104, align 8
  %103 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__new_start, align 8
  %104 = load i64, i64* %__len, align 8
  %add.ptr105 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %103, i64 %104
  %105 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl106 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %105, i32 0, i32 0
  %_M_end_of_storage107 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl106, i32 0, i32 2
  store %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr105, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage107, align 8
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
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSG_SJ_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"class.std::ios_base::Init"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__alloc.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_copy_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_S8_ET0_T_SB_SA_RSaIT1_E(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2, %"class.std::ios_base::Init"* dereferenceable(1) %3)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.__gnu_cxx::_Hashtable_node"*** @_ZNK9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %"struct.__gnu_cxx::_Hashtable_node"*** %_M_current
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt13copy_backwardIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__miter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0)
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %call1 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__miter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1)
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call2 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt23__copy_move_backward_a2ILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"** %call1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__value) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__value.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__value, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0)
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %call1 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1)
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  call void @_ZSt8__fill_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_ENS0_11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SE_RKSB_(%"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"** %call1, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_M_check_lenEmS4_(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
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
  %call = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8max_sizeEv(%"class.std::vector"* %this1)
  %call2 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #14
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %this1)
  %call4 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE4sizeEv(%"class.std::vector"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8max_sizeEv(%"class.std::vector"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEC2ERKS9_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %coerce.dive, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"** %1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"class.std::ios_base::Init"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__alloc.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_copy_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_S8_ET0_T_SB_SA_RSaIT1_E(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2, %"class.std::ios_base::Init"* dereferenceable(1) %3)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_copy_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_S8_ET0_T_SB_SA_RSaIT1_E(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt18uninitialized_copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2, %"struct.__gnu_cxx::_Hashtable_node"** %3)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt18uninitialized_copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__assignable = alloca i8, align 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESB_EET0_T_SD_SC_(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESB_EET0_T_SD_SC_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat align 2 {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt4copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt4copyIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__miter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0)
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %call1 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__miter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1)
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call2 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt14__copy_move_a2ILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"** %call1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__miter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__it) #7 comdat {
entry:
  %__it.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__it, %"struct.__gnu_cxx::_Hashtable_node"*** %__it.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__it.addr, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"** %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt14__copy_move_a2ILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0)
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %call1 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1)
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call2 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %2)
  %call3 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt13__copy_move_aILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"** %call1, %"struct.__gnu_cxx::_Hashtable_node"** %call2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt13__copy_move_aILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__simple = alloca i8, align 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEPT_PKSC_SF_SD_(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEPT_PKSC_SF_SD_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #7 comdat align 2 {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %_Num = alloca i64, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %4 = bitcast %"struct.__gnu_cxx::_Hashtable_node"** %3 to i8*
  %5 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %6 = bitcast %"struct.__gnu_cxx::_Hashtable_node"** %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %8, i64 %9
  ret %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPPNS_15_Hashtable_nodeISt4pairIKPKciEEESt6vectorIS8_SaIS8_EEEC2ERKS9_(%"class.__gnu_cxx::__normal_iterator"* %this, %"struct.__gnu_cxx::_Hashtable_node"*** dereferenceable(8) %__i) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"*** %__i, %"struct.__gnu_cxx::_Hashtable_node"**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"***, %"struct.__gnu_cxx::_Hashtable_node"**** %__i.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %0, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8max_sizeEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE8max_sizeERKS9_(%"class.std::ios_base::Init"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #7 comdat {
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
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEE8max_sizeERKS9_(%"class.std::ios_base::Init"* dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEE8max_sizeEv(%"class.std::ios_base::Init"* %1) #2
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_ENS0_11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SE_RKSB_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** dereferenceable(8) %__value) #7 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__value.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__tmp = alloca %"struct.__gnu_cxx::_Hashtable_node"*, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__value, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__value.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %0, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %1, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %cmp = icmp ne %"struct.__gnu_cxx::_Hashtable_node"** %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %__tmp, align 8
  %5 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"* %4, %"struct.__gnu_cxx::_Hashtable_node"** %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %6, i32 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %incdec.ptr, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt23__copy_move_backward_a2ILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %0)
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %call1 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %1)
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call2 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt12__niter_baseIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEET_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %2)
  %call3 = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__copy_move_backward_aILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"** %call1, %"struct.__gnu_cxx::_Hashtable_node"** %call2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__copy_move_backward_aILb0EPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET1_T0_SB_SA_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__simple = alloca i8, align 1
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEPT_PKSC_SF_SD_(%"struct.__gnu_cxx::_Hashtable_node"** %0, %"struct.__gnu_cxx::_Hashtable_node"** %1, %"struct.__gnu_cxx::_Hashtable_node"** %2)
  ret %"struct.__gnu_cxx::_Hashtable_node"** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEEEPT_PKSC_SF_SD_(%"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"** %__result) #7 comdat align 2 {
entry:
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %_Num = alloca i64, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__result, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %0 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %3, i64 %idx.neg
  %5 = bitcast %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr to i8*
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %7 = bitcast %"struct.__gnu_cxx::_Hashtable_node"** %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node"*, %"struct.__gnu_cxx::_Hashtable_node"** %9, i64 %idx.neg1
  ret %"struct.__gnu_cxx::_Hashtable_node"** %add.ptr2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE8capacityEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, i32 0, i32 2
  %1 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_end_of_storage, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl", %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.__gnu_cxx::_Hashtable_node"** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE20_M_allocate_and_copyIPS8_EESC_mT_SD_(%"class.std::vector"* %this, i64 %__n, %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"** %__last) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__first.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__last.addr = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %__result = alloca %"struct.__gnu_cxx::_Hashtable_node"**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__first, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  store %"struct.__gnu_cxx::_Hashtable_node"** %__last, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.__gnu_cxx::_Hashtable_node"** @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1)
  store %"struct.__gnu_cxx::_Hashtable_node"** %call, %"struct.__gnu_cxx::_Hashtable_node"*** %__result, align 8
  %2 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__first.addr, align 8
  %3 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__last.addr, align 8
  %4 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call2 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke %"struct.__gnu_cxx::_Hashtable_node"** @_ZSt22__uninitialized_copy_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_S8_ET0_T_SB_SA_RSaIT1_E(%"struct.__gnu_cxx::_Hashtable_node"** %2, %"struct.__gnu_cxx::_Hashtable_node"** %3, %"struct.__gnu_cxx::_Hashtable_node"** %4, %"class.std::ios_base::Init"* dereferenceable(1) %call2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %6 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result, align 8
  ret %"struct.__gnu_cxx::_Hashtable_node"** %6

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
  %12 = load %"struct.__gnu_cxx::_Hashtable_node"**, %"struct.__gnu_cxx::_Hashtable_node"*** %__result, align 8
  %13 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m(%"struct.std::_Vector_base"* %11, %"struct.__gnu_cxx::_Hashtable_node"** %12, i64 %13)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #14
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
define linkonce_odr void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2ERKS9_(%"struct.std::_Vector_base"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implC2ERKS9_(%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int> > *> >::_Vector_impl"* %_M_impl, %"class.std::ios_base::Init"* dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNS_15_Hashtable_nodeISt4pairIKPKciEEEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINS_15_Hashtable_nodeISt4pairIKPKciEEEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { argmemonly nounwind }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
