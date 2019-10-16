; ModuleID = 'Shootout-C++-wordfreq/Shootout-C++-wordfreq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.word_reader = type { i32, [4097 x i8], i8*, i8*, %struct._IO_FILE* }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl" = type { %"struct.std::pair.3"*, %"struct.std::pair.3"*, %"struct.std::pair.3"* }
%"struct.std::pair.3" = type <{ i8*, i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { %"struct.std::pair.3"* }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.std::pair.3" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node" = type { %"class.std::_Rb_tree"* }
%"struct.std::pair.9" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }

$_ZN11word_reader4fillEv = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEC2Ev = comdat any

$_ZN11word_readerC2EP8_IO_FILE = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_ = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEeqERKS5_ = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEptEv = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE5beginEv = comdat any

$_ZNSaISt4pairIPKciEEC2Ev = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ISt17_Rb_tree_iteratorIS0_IKS2_iEEEET_SB_RKS4_ = comdat any

$_ZNSaISt4pairIPKciEED2Ev = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EE5beginEv = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EE3endEv = comdat any

$_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEEvT_SB_ = comdat any

$_ZNKSt6vectorISt4pairIPKciESaIS3_EE4sizeEv = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EEixEm = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKPKciEEEE10deallocateERS8_PS7_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE10deallocateEPS7_m = comdat any

$_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13get_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE7destroyEPS5_ = comdat any

$_ZNSaISt4pairIKPKciEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEED2Ev = comdat any

$_ZSt11__addressofISt4pairIKPKciEEPT_RS5_ = comdat any

$_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSaISt4pairIKPKciEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPSt4pairIPKciES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EED2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIPKciEEE10deallocateERS5_PS4_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEE10deallocateEPS4_m = comdat any

$_ZSt8_DestroyIPSt4pairIPKciEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKciEEEvT_S7_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZN9__gnu_cxxneIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIPKciENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_ = comdat any

$_ZStltRKSt4pairIPKciES4_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev = comdat any

$_ZN9__gnu_cxxeqIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_ = comdat any

$_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEET_SB_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_ET1_T0_SC_SB_ = comdat any

$_ZSt12__niter_baseIPSt4pairIPKciESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE = comdat any

$_ZSt22__copy_move_backward_aILb0EPSt4pairIPKciES4_ET1_T0_S6_S5_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPKciES7_EET0_T_S9_S8_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

$_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmiEl = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_ = comdat any

$_ZN9__gnu_cxxltIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_ = comdat any

$_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEvT_T0_ = comdat any

$_ZSt4swapISt4pairIPKciEEvRT_S5_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEED2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2ERKS4_ = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EE22_M_initialize_dispatchISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St12__false_type = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St20forward_iterator_tag = comdat any

$_ZSt8distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_ = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aISt17_Rb_tree_iteratorISt4pairIKPKciEEPS1_IS3_iES7_ET0_T_SA_S9_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyISt17_Rb_tree_iteratorISt4pairIKPKciEEPS1_IS3_iEET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt17_Rb_tree_iteratorISt4pairIKPKciEEPS3_IS5_iEEET0_T_SC_SB_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEneERKS5_ = comdat any

$_ZSt11__addressofISt4pairIPKciEEPT_RS4_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEdeEv = comdat any

$_ZSt10_ConstructISt4pairIPKciES0_IKS2_iEEvPT_RKT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEppEv = comdat any

$_ZNSt4pairIPKciEC2IKS1_iEERKS_IT_T0_E = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIPKciEEE8allocateERS5_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt4pairIPKciEE8max_sizeEv = comdat any

$_ZSt19__iterator_categoryISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_ = comdat any

$_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag = comdat any

$_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSaISt4pairIPKciEEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEEC2ERKS5_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEEC2Ev = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE5beginEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_ = comdat any

$_ZNKSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE8key_compEv = comdat any

$_ZNKSt4lessIPKcEclERKS1_S4_ = comdat any

$_ZNSt4pairIKPKciEC2ERS2_RKi = comdat any

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKPKciEEC2ERKSt17_Rb_tree_iteratorIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_Alloc_nodeC2ERSA_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_INSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_ERKS4_RT_ = comdat any

$_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_INSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_RKS4_RT_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_Alloc_nodeclIS4_EEPSt13_Rb_tree_nodeIS4_ERKT_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_create_nodeERKS4_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_construct_nodeEPSt13_Rb_tree_nodeIS4_ERKS4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE9constructEPS5_RKS5_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKPKciEEEE8allocateERS8_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE8max_sizeEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv = comdat any

$_ZSt11__addressofIKSt4pairIKPKciEEPT_RS6_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPKciEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEmmEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8key_compEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11lower_boundERS3_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIPKcEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEEC2Ev = comdat any

@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%7d\09%s\0A\00", align 1

; Function Attrs: noinline uwtable
define i32 @_ZN11word_readerclEPPKc(%class.word_reader* %this, i8** %w) #0 align 2 {
entry:
  %this.addr = alloca %class.word_reader*, align 8
  %w.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %c = alloca i8, align 1
  %nword = alloca i8*, align 8
  store %class.word_reader* %this, %class.word_reader** %this.addr, align 8
  store i8** %w, i8*** %w.addr, align 8
  %this1 = load %class.word_reader*, %class.word_reader** %this.addr, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %entry
  %bptr = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 2
  %0 = load i8*, i8** %bptr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %call = call zeroext i1 @_ZN11word_reader4fillEv(%class.word_reader* %this1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %call, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %bptr2 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 2
  %3 = load i8*, i8** %bptr2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %bptr2, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %c, align 1
  %conv = sext i8 %4 to i32
  %call3 = call i32 @isalpha(i32 %conv) #13
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i8, i8* %c, align 1
  %conv5 = sext i8 %5 to i32
  %call6 = call i32 @tolower(i32 %conv5) #13
  %conv7 = trunc i32 %call6 to i8
  %word = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %6 = load i8*, i8** %word, align 8
  %7 = load i32, i32* %len, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv7, i8* %arrayidx, align 1
  %8 = load i32, i32* %len, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %len, align 4
  %ws = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 0
  %9 = load i32, i32* %ws, align 8
  %cmp = icmp eq i32 %inc, %9
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %ws9 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 0
  %10 = load i32, i32* %ws9, align 8
  %mul = mul nsw i32 %10, 2
  store i32 %mul, i32* %ws9, align 8
  %add = add nsw i32 %mul, 1
  %11 = sext i32 %add to i64
  %12 = icmp slt i64 %11, 0
  %13 = select i1 %12, i64 -1, i64 %11
  %call10 = call i8* @_Znam(i64 %13) #14
  store i8* %call10, i8** %nword, align 8
  %14 = load i8*, i8** %nword, align 8
  %word11 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %15 = load i8*, i8** %word11, align 8
  %16 = load i32, i32* %len, align 4
  %conv12 = sext i32 %16 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %conv12, i32 1, i1 false)
  %word13 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %17 = load i8*, i8** %word13, align 8
  %isnull = icmp eq i8* %17, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then8
  call void @_ZdaPv(i8* %17) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.then8
  %18 = load i8*, i8** %nword, align 8
  %word14 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  store i8* %18, i8** %word14, align 8
  br label %if.end

if.end:                                           ; preds = %delete.end, %if.then
  br label %if.end18

if.else:                                          ; preds = %while.body
  %19 = load i32, i32* %len, align 4
  %cmp15 = icmp sgt i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  br label %while.end

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then16, %lor.end
  %word19 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %20 = load i8*, i8** %word19, align 8
  %21 = load i8**, i8*** %w.addr, align 8
  store i8* %20, i8** %21, align 8
  %word20 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %22 = load i8*, i8** %word20, align 8
  %23 = load i32, i32* %len, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 %idxprom21
  store i8 0, i8* %arrayidx22, align 1
  %24 = load i32, i32* %len, align 4
  ret i32 %24
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN11word_reader4fillEv(%class.word_reader* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.word_reader*, align 8
  %nread = alloca i32, align 4
  store %class.word_reader* %this, %class.word_reader** %this.addr, align 8
  %this1 = load %class.word_reader*, %class.word_reader** %this.addr, align 8
  %buf = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %input = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 4096, %struct._IO_FILE* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nread, align 4
  %buf2 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 1
  %1 = load i32, i32* %nread, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf2, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %buf3 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf3, i32 0, i32 0
  %bptr = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 2
  store i8* %arraydecay4, i8** %bptr, align 8
  %2 = load i32, i32* %nread, align 4
  %cmp = icmp sgt i32 %2, 0
  ret i1 %cmp
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #1

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

; Function Attrs: noinline norecurse uwtable
define i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %w = alloca i8*, align 8
  %hist = alloca %"class.std::map", align 8
  %wr = alloca %class.word_reader, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %i = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp9 = alloca i8*, align 8
  %v = alloca %"class.std::vector", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp20 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp24 = alloca %"struct.std::less", align 1
  %agg.tmp29 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp34 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i41 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEC2Ev(%"class.std::map"* %hist)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  invoke void @_ZN11word_readerC2EP8_IO_FILE(%class.word_reader* %wr, %struct._IO_FILE* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %invoke.cont
  %call = invoke i32 @_ZN11word_readerclEPPKc(%class.word_reader* %wr, i8** %w)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %while.cond
  store i32 %call, i32* %len, align 4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont1
  %call3 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_(%"class.std::map"* %hist, i8** dereferenceable(8) %w)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %while.body
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call5 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv(%"class.std::map"* %hist)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %coerce.dive6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6, align 8
  %call8 = invoke zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %i, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %ref.tmp)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont4
  br i1 %call8, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont7
  %1 = load i32, i32* %len, align 4
  %add = add nsw i32 %1, 1
  %2 = sext i32 %add to i64
  %3 = icmp slt i64 %2, 0
  %4 = select i1 %3, i64 -1, i64 %2
  %call11 = invoke i8* @_Znam(i64 %4) #14
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %if.then
  %5 = load i8*, i8** %w, align 8
  %call12 = call i8* @strcpy(i8* %call11, i8* %5) #16
  store i8* %call12, i8** %ref.tmp9, align 8
  %call14 = invoke dereferenceable(4) i32* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_(%"class.std::map"* %hist, i8** dereferenceable(8) %ref.tmp9)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont10
  store i32 1, i32* %call14, align 4
  br label %if.end

lpad:                                             ; preds = %for.end, %invoke.cont17, %while.end, %if.else, %invoke.cont10, %if.then, %invoke.cont4, %invoke.cont2, %while.body, %while.cond, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont7
  %call16 = invoke %"struct.std::pair.3"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEptEv(%"struct.std::_Rb_tree_iterator"* %i)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %if.else
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %call16, i32 0, i32 1
  %9 = load i32, i32* %second, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %second, align 8
  br label %if.end

if.end:                                           ; preds = %invoke.cont15, %invoke.cont13
  br label %while.cond

while.end:                                        ; preds = %invoke.cont1
  %call18 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE5beginEv(%"class.std::map"* %hist)
          to label %invoke.cont17 unwind label %lpad

invoke.cont17:                                    ; preds = %while.end
  %coerce.dive19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call18, %"struct.std::_Rb_tree_node_base"** %coerce.dive19, align 8
  %call22 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv(%"class.std::map"* %hist)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %invoke.cont17
  %coerce.dive23 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp20, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call22, %"struct.std::_Rb_tree_node_base"** %coerce.dive23, align 8
  call void @_ZNSaISt4pairIPKciEEC2Ev(%"struct.std::less"* %ref.tmp24) #16
  %coerce.dive25 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive25, align 8
  %coerce.dive26 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp20, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive26, align 8
  invoke void @_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ISt17_Rb_tree_iteratorIS0_IKS2_iEEEET_SB_RKS4_(%"class.std::vector"* %v, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::less"* dereferenceable(1) %ref.tmp24)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont21
  call void @_ZNSaISt4pairIPKciEED2Ev(%"struct.std::less"* %ref.tmp24) #16
  %call32 = invoke %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EE5beginEv(%"class.std::vector"* %v)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %invoke.cont28
  %coerce.dive33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp29, i32 0, i32 0
  store %"struct.std::pair.3"* %call32, %"struct.std::pair.3"** %coerce.dive33, align 8
  %call36 = invoke %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EE3endEv(%"class.std::vector"* %v)
          to label %invoke.cont35 unwind label %lpad30

invoke.cont35:                                    ; preds = %invoke.cont31
  %coerce.dive37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp34, i32 0, i32 0
  store %"struct.std::pair.3"* %call36, %"struct.std::pair.3"** %coerce.dive37, align 8
  %coerce.dive38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp29, i32 0, i32 0
  %12 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive38, align 8
  %coerce.dive39 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp34, i32 0, i32 0
  %13 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive39, align 8
  invoke void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEEvT_SB_(%"struct.std::pair.3"* %12, %"struct.std::pair.3"* %13)
          to label %invoke.cont40 unwind label %lpad30

invoke.cont40:                                    ; preds = %invoke.cont35
  store i64 0, i64* %i41, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont40
  %14 = load i64, i64* %i41, align 8
  %call43 = invoke i64 @_ZNKSt6vectorISt4pairIPKciESaIS3_EE4sizeEv(%"class.std::vector"* %v)
          to label %invoke.cont42 unwind label %lpad30

invoke.cont42:                                    ; preds = %for.cond
  %cmp44 = icmp ult i64 %14, %call43
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont42
  %15 = load i64, i64* %i41, align 8
  %call46 = invoke dereferenceable(16) %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EEixEm(%"class.std::vector"* %v, i64 %15)
          to label %invoke.cont45 unwind label %lpad30

invoke.cont45:                                    ; preds = %for.body
  %second47 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %call46, i32 0, i32 1
  %16 = load i32, i32* %second47, align 8
  %17 = load i64, i64* %i41, align 8
  %call49 = invoke dereferenceable(16) %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EEixEm(%"class.std::vector"* %v, i64 %17)
          to label %invoke.cont48 unwind label %lpad30

invoke.cont48:                                    ; preds = %invoke.cont45
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %call49, i32 0, i32 0
  %18 = load i8*, i8** %first, align 8
  %call51 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %16, i8* %18)
          to label %invoke.cont50 unwind label %lpad30

invoke.cont50:                                    ; preds = %invoke.cont48
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont50
  %19 = load i64, i64* %i41, align 8
  %inc52 = add i64 %19, 1
  store i64 %inc52, i64* %i41, align 8
  br label %for.cond

lpad27:                                           ; preds = %invoke.cont21
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %exn.slot, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %ehselector.slot, align 4
  call void @_ZNSaISt4pairIPKciEED2Ev(%"struct.std::less"* %ref.tmp24) #16
  br label %ehcleanup

lpad30:                                           ; preds = %invoke.cont48, %invoke.cont45, %for.body, %for.cond, %invoke.cont35, %invoke.cont31, %invoke.cont28
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %exn.slot, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev(%"class.std::vector"* %v)
          to label %invoke.cont54 unwind label %terminate.lpad

for.end:                                          ; preds = %invoke.cont42
  store i32 0, i32* %retval, align 4
  invoke void @_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev(%"class.std::vector"* %v)
          to label %invoke.cont53 unwind label %lpad

invoke.cont53:                                    ; preds = %for.end
  call void @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev(%"class.std::map"* %hist)
  %26 = load i32, i32* %retval, align 4
  ret i32 %26

invoke.cont54:                                    ; preds = %lpad30
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont54, %lpad27, %lpad
  invoke void @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev(%"class.std::map"* %hist)
          to label %invoke.cont55 unwind label %terminate.lpad

invoke.cont55:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont55
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val56

terminate.lpad:                                   ; preds = %ehcleanup, %lpad30
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  call void @__clang_call_terminate(i8* %28) #11
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEC2Ev(%"class.std::map"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EEC2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN11word_readerC2EP8_IO_FILE(%class.word_reader* %this, %struct._IO_FILE* %i) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.word_reader*, align 8
  %i.addr = alloca %struct._IO_FILE*, align 8
  store %class.word_reader* %this, %class.word_reader** %this.addr, align 8
  store %struct._IO_FILE* %i, %struct._IO_FILE** %i.addr, align 8
  %this1 = load %class.word_reader*, %class.word_reader** %this.addr, align 8
  %ws = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 0
  store i32 64, i32* %ws, align 8
  %bptr = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 2
  %buf = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bptr, align 8
  %word = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %ws2 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 0
  %0 = load i32, i32* %ws2, align 8
  %add = add nsw i32 %0, 1
  %1 = sext i32 %add to i64
  %2 = icmp slt i64 %1, 0
  %3 = select i1 %2, i64 -1, i64 %1
  %call = call i8* @_Znam(i64 %3) #14
  store i8* %call, i8** %word, align 8
  %input = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %i.addr, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %input, align 8
  %word3 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 3
  %5 = load i8*, i8** %word3, align 8
  store i8 0, i8* %5, align 1
  %bptr4 = getelementptr inbounds %class.word_reader, %class.word_reader* %this1, i32 0, i32 2
  %6 = load i8*, i8** %bptr4, align 8
  store i8 0, i8* %6, align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_(%"class.std::map"* %this, i8** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca i8**, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store i8** %__x, i8*** %__x.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %0 = load i8**, i8*** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_(%"class.std::_Rb_tree"* %_M_t, i8** dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv(%"class.std::map"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #8

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_(%"class.std::map"* %this, i8** dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  %__k.addr = alloca i8**, align 8
  %__i = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %ref.tmp7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp8 = alloca %"struct.std::pair.3", align 8
  %ref.tmp9 = alloca i32, align 4
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store i8** %__k, i8*** %__k.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %0 = load i8**, i8*** %__k.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_(%"class.std::map"* %this1, i8** dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv(%"class.std::map"* %this1)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %__i, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %ref.tmp)
  br i1 %call4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @_ZNKSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE8key_compEv(%"class.std::map"* %this1)
  %1 = load i8**, i8*** %__k.addr, align 8
  %call5 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %call5, i32 0, i32 0
  %call6 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %undef.agg.tmp, i8** dereferenceable(8) %1, i8** dereferenceable(8) %first)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call6, %lor.rhs ]
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %4 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load i8**, i8*** %__k.addr, align 8
  store i32 0, i32* %ref.tmp9, align 4
  call void @_ZNSt4pairIKPKciEC2ERS2_RKi(%"struct.std::pair.3"* %ref.tmp8, i8** dereferenceable(8) %5, i32* dereferenceable(4) %ref.tmp9)
  %coerce.dive10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive10, align 8
  %call11 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_(%"class.std::map"* %this1, %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::pair.3"* dereferenceable(16) %ref.tmp8)
  %coerce.dive12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call11, %"struct.std::_Rb_tree_node_base"** %coerce.dive12, align 8
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  %8 = bitcast %"struct.std::_Rb_tree_iterator"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %call13 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i)
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %call13, i32 0, i32 1
  ret i32* %second
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEptEv(%"struct.std::_Rb_tree_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call %"struct.std::pair.3"* @_ZNSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE5beginEv(%"class.std::map"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE5beginEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIPKciEEC2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEEC2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ISt17_Rb_tree_iteratorIS0_IKS2_iEEEET_SB_RKS4_(%"class.std::vector"* %this, %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::less"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__a.addr = alloca %"struct.std::less"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::less", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  %this2 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %1 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2ERKS4_(%"struct.std::_Vector_base"* %0, %"struct.std::less"* dereferenceable(1) %1)
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp3 to i8*
  %5 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp3, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive6, align 8
  invoke void @_ZNSt6vectorISt4pairIPKciESaIS3_EE22_M_initialize_dispatchISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St12__false_type(%"class.std::vector"* %this2, %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"* %7)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  %11 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EED2Ev(%"struct.std::_Vector_base"* %11)
          to label %invoke.cont7 unwind label %terminate.lpad

invoke.cont7:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont7
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8

terminate.lpad:                                   ; preds = %lpad
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIPKciEED2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEED2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair.3"** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive, align 8
  ret %"struct.std::pair.3"* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair.3"** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive, align 8
  ret %"struct.std::pair.3"* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEEvT_SB_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::less", align 1
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive5, align 8
  call void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt4pairIPKciESaIS3_EE4sizeEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair.3"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair.3"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.3"* @_ZNSt6vectorISt4pairIPKciESaIS3_EEixEm(%"class.std::vector"* %this, i64 %__n) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %1, i64 %2
  ret %"struct.std::pair.3"* %add.ptr
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke dereferenceable(1) %"struct.std::less"* @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPSt4pairIPKciES3_EvT_S5_RSaIT0_E(%"struct.std::pair.3"* %1, %"struct.std::pair.3"* %3, %"struct.std::less"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EED2Ev(%"struct.std::_Vector_base"* %9)
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
  call void @__clang_call_terminate(i8* %11) #11
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev(%"class.std::map"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #16
  call void @_ZSt9terminatev() #11
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl) #16
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl3 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl3) #16
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %3 = bitcast %"struct.std::_Rb_tree_node_base"* %2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %5)
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this1 to %"struct.std::less"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %0)
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"struct.std::less", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  call void @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13get_allocatorEv(%"struct.std::less"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
  %0 = bitcast %"struct.std::less"* %temp.lvalue to %"struct.std::less"*
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %call = invoke %"struct.std::pair.3"* @_ZNSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE7destroyEPS5_(%"struct.std::less"* %0, %"struct.std::pair.3"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"struct.std::less"* %temp.lvalue) #16
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"struct.std::less"* %temp.lvalue) #16
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKPKciEEEE10deallocateERS8_PS7_m(%"struct.std::less"* dereferenceable(1) %call, %"struct.std::_Rb_tree_node"* %0, i64 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::less"*
  ret %"struct.std::less"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKPKciEEEE10deallocateERS8_PS7_m(%"struct.std::less"* dereferenceable(1) %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::less"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  %1 = bitcast %"struct.std::less"* %0 to %"struct.std::less"*
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE10deallocateEPS7_m(%"struct.std::less"* %1, %"struct.std::_Rb_tree_node"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE10deallocateEPS7_m(%"struct.std::less"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13get_allocatorEv(%"struct.std::less"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"struct.std::less"* @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSaISt4pairIKPKciEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E(%"struct.std::less"* %agg.result, %"struct.std::less"* dereferenceable(1) %call) #16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call %"struct.std::pair.3"* @_ZSt11__addressofISt4pairIKPKciEEPT_RS5_(%"struct.std::pair.3"* dereferenceable(16) %_M_value_field)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE7destroyEPS5_(%"struct.std::less"* %this, %"struct.std::pair.3"* %__p) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKPKciEED2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEED2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEED2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt11__addressofISt4pairIKPKciEEPT_RS5_(%"struct.std::pair.3"* dereferenceable(16) %__r) #7 comdat {
entry:
  %__r.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %__r, %"struct.std::pair.3"** %__r.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__r.addr, align 8
  ret %"struct.std::pair.3"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::less"* @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::less"*
  ret %"struct.std::less"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIKPKciEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E(%"struct.std::less"* %this, %"struct.std::less"* dereferenceable(1)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %1 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev(%"struct.std::less"* %1) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEEC2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::less"* @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl to %"struct.std::less"*
  ret %"struct.std::less"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIPKciES3_EvT_S5_RSaIT0_E(%"struct.std::pair.3"* %__first, %"struct.std::pair.3"* %__last, %"struct.std::less"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca %"struct.std::pair.3"*, align 8
  %__last.addr = alloca %"struct.std::pair.3"*, align 8
  %.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::pair.3"* %__first, %"struct.std::pair.3"** %__first.addr, align 8
  store %"struct.std::pair.3"* %__last, %"struct.std::pair.3"** %__last.addr, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %.addr, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__first.addr, align 8
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__last.addr, align 8
  call void @_ZSt8_DestroyIPSt4pairIPKciEEvT_S5_(%"struct.std::pair.3"* %1, %"struct.std::pair.3"* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair.3"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair.3"* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  invoke void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* %this1, %"struct.std::pair.3"* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl5) #16
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl6) #16
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* %this, %"struct.std::pair.3"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %tobool = icmp ne %"struct.std::pair.3"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl to %"struct.std::less"*
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIPKciEEE10deallocateERS5_PS4_m(%"struct.std::less"* dereferenceable(1) %1, %"struct.std::pair.3"* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"*, %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this1 to %"struct.std::less"*
  call void @_ZNSaISt4pairIPKciEED2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIPKciEEE10deallocateERS5_PS4_m(%"struct.std::less"* dereferenceable(1) %__a, %"struct.std::pair.3"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::less"*, align 8
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  %1 = bitcast %"struct.std::less"* %0 to %"struct.std::less"*
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEE10deallocateEPS4_m(%"struct.std::less"* %1, %"struct.std::pair.3"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEE10deallocateEPS4_m(%"struct.std::less"* %this, %"struct.std::pair.3"* %__p, i64) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  %.addr = alloca i64, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %2 = bitcast %"struct.std::pair.3"* %1 to i8*
  call void @_ZdlPv(i8* %2) #16
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIPKciEEvT_S5_(%"struct.std::pair.3"* %__first, %"struct.std::pair.3"* %__last) #0 comdat {
entry:
  %__first.addr = alloca %"struct.std::pair.3"*, align 8
  %__last.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %__first, %"struct.std::pair.3"** %__first.addr, align 8
  store %"struct.std::pair.3"* %__last, %"struct.std::pair.3"** %__last.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__first.addr, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKciEEEvT_S7_(%"struct.std::pair.3"* %0, %"struct.std::pair.3"* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKciEEEvT_S7_(%"struct.std::pair.3"*, %"struct.std::pair.3"*) #7 comdat align 2 {
entry:
  %.addr = alloca %"struct.std::pair.3"*, align 8
  %.addr1 = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %0, %"struct.std::pair.3"** %.addr, align 8
  store %"struct.std::pair.3"* %1, %"struct.std::pair.3"** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #7 comdat {
entry:
  %retval = alloca %"struct.std::less", align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::less", align 1
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call3 = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %call4 = call i64 @_ZSt4__lgl(i64 %call3)
  %mul = mul nsw i64 %call4, 2
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(%"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5, i64 %mul)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %10 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive12, align 8
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %10, %"struct.std::pair.3"* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call1, align 8
  %cmp = icmp ne %"struct.std::pair.3"* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #7 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair.3"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair.3"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZSt4__lgl(i64 %__n) #7 comdat {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = call i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %cast = trunc i64 %1 to i32
  %conv = sext i32 %cast to i64
  %sub = sub i64 63, %conv
  ret i64 %sub
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, i64 %__depth_limit) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::less", align 1
  %__cut = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"struct.std::less", align 1
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp18 = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp sgt i64 %call, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i64, i64* %__depth_limit.addr, align 8
  %cmp2 = icmp eq i64 %0, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  call void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_(%"struct.std::pair.3"* %7, %"struct.std::pair.3"* %8, %"struct.std::pair.3"* %9)
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9, i32 0, i32 0
  %15 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10, i32 0, i32 0
  %16 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive13, align 8
  %call14 = call %"struct.std::pair.3"* @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_(%"struct.std::pair.3"* %15, %"struct.std::pair.3"* %16)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__cut, i32 0, i32 0
  store %"struct.std::pair.3"* %call14, %"struct.std::pair.3"** %coerce.dive15, align 8
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load i64, i64* %__depth_limit.addr, align 8
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %22 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive19, align 8
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17, i32 0, i32 0
  %23 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive20, align 8
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(%"struct.std::pair.3"* %22, %"struct.std::pair.3"* %23, i64 %21)
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %25 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::less", align 1
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"struct.std::less", align 1
  %agg.tmp15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp17 = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp sgt i64 %call, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call3 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 16)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  store %"struct.std::pair.3"* %call3, %"struct.std::pair.3"** %coerce.dive4, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %2, %"struct.std::pair.3"* %3)
  %call9 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 16)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  store %"struct.std::pair.3"* %call9, %"struct.std::pair.3"** %coerce.dive10, align 8
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %6 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive14, align 8
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %6, %"struct.std::pair.3"* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp15 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp15, i32 0, i32 0
  %12 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive18, align 8
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %13 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive19, align 8
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %12, %"struct.std::pair.3"* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::pair.3"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %0, i64 %1
  store %"struct.std::pair.3"* %add.ptr, %"struct.std::pair.3"** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair.3"** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive, align 8
  ret %"struct.std::pair.3"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__val = alloca %"struct.std::pair.3", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp23 = alloca %"struct.std::less", align 1
  %agg.tmp24 = alloca %"struct.std::less", align 1
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxxeqIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %call2 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 1)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__i, i32 0, i32 0
  store %"struct.std::pair.3"* %call2, %"struct.std::pair.3"** %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %call4 = call zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %call10 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  %6 = bitcast %"struct.std::pair.3"* %__val to i8*
  %7 = bitcast %"struct.std::pair.3"* %call10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %call14 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__i, i64 1)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  store %"struct.std::pair.3"* %call14, %"struct.std::pair.3"** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %12 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %13 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %14 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive18, align 8
  %call19 = call %"struct.std::pair.3"* @_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_(%"struct.std::pair.3"* %12, %"struct.std::pair.3"* %13, %"struct.std::pair.3"* %14)
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::pair.3"* %call19, %"struct.std::pair.3"** %coerce.dive20, align 8
  %call21 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %15 = bitcast %"struct.std::pair.3"* %call21 to i8*
  %16 = bitcast %"struct.std::pair.3"* %__val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 12, i32 8, i1 false)
  br label %if.end26

if.else:                                          ; preds = %for.body
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp22 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp22, i32 0, i32 0
  %19 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive25, align 8
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(%"struct.std::pair.3"* %19)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %call27 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::less", align 1
  %agg.tmp3 = alloca %"struct.std::less", align 1
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive4, align 8
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(%"struct.std::pair.3"* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call5 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #0 comdat {
entry:
  %retval = alloca %"struct.std::less", align 1
  %0 = alloca %"struct.std::less", align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%"struct.std::less"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(%"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %__val = alloca %"struct.std::pair.3", align 8
  %__next = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  %0 = bitcast %"struct.std::pair.3"* %__val to i8*
  %1 = bitcast %"struct.std::pair.3"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call1 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive2, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIPKciENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* dereferenceable(16) %__val, %"struct.std::pair.3"* %6)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  %call5 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  %7 = bitcast %"struct.std::pair.3"* %call5 to i8*
  %8 = bitcast %"struct.std::pair.3"* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 12, i32 8, i1 false)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %call6 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call7 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  %11 = bitcast %"struct.std::pair.3"* %call7 to i8*
  %12 = bitcast %"struct.std::pair.3"* %__val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %0, i32 1
  store %"struct.std::pair.3"* %incdec.ptr, %"struct.std::pair.3"** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_current, align 8
  ret %"struct.std::pair.3"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %0, i32 -1
  store %"struct.std::pair.3"* %incdec.ptr, %"struct.std::pair.3"** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIPKciENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_(%"struct.std::less"* %this, %"struct.std::pair.3"* dereferenceable(16) %__val, %"struct.std::pair.3"* %__it.coerce) #7 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.std::less"*, align 8
  %__val.addr = alloca %"struct.std::pair.3"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store %"struct.std::pair.3"* %__it.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::pair.3"* %__val, %"struct.std::pair.3"** %__val.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__val.addr, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %call2 = call zeroext i1 @_ZStltRKSt4pairIPKciES4_(%"struct.std::pair.3"* dereferenceable(16) %0, %"struct.std::pair.3"* dereferenceable(16) %call)
  ret i1 %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZStltRKSt4pairIPKciES4_(%"struct.std::pair.3"* dereferenceable(16) %lhs, %"struct.std::pair.3"* dereferenceable(16) %rhs) #7 comdat {
entry:
  %lhs.addr = alloca %"struct.std::pair.3"*, align 8
  %rhs.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %lhs, %"struct.std::pair.3"** %lhs.addr, align 8
  store %"struct.std::pair.3"* %rhs, %"struct.std::pair.3"** %rhs.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %lhs.addr, align 8
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %0, i32 0, i32 1
  %1 = load i32, i32* %second, align 8
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %rhs.addr, align 8
  %second1 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %2, i32 0, i32 1
  %3 = load i32, i32* %second1, align 8
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %lhs.addr, align 8
  %second2 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %4, i32 0, i32 1
  %5 = load i32, i32* %second2, align 8
  %6 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %rhs.addr, align 8
  %second3 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %6, i32 0, i32 1
  %7 = load i32, i32* %second3, align 8
  %cmp4 = icmp sgt i32 %5, %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %lhs.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %8, i32 0, i32 0
  %9 = load i8*, i8** %first, align 8
  %10 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %rhs.addr, align 8
  %first5 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %10, i32 0, i32 0
  %11 = load i8*, i8** %first5, align 8
  %call = call i32 @strcmp(i8* %9, i8* %11) #13
  %cmp6 = icmp sgt i32 %call, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i1 [ %cmp4, %cond.true ], [ %cmp6, %cond.false ]
  ret i1 %cond
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #7 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call1, align 8
  %cmp = icmp eq %"struct.std::pair.3"* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %this, %"struct.std::pair.3"* %__it1.coerce, %"struct.std::pair.3"* %__it2.coerce) #7 comdat align 2 {
entry:
  %__it1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.std::less"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it1, i32 0, i32 0
  store %"struct.std::pair.3"* %__it1.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it2, i32 0, i32 0
  store %"struct.std::pair.3"* %__it2.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this2 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it1)
  %call3 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it2)
  %call4 = call zeroext i1 @_ZStltRKSt4pairIPKciES4_(%"struct.std::pair.3"* dereferenceable(16) %call, %"struct.std::pair.3"* dereferenceable(16) %call3)
  ret i1 %call4
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"* %__result.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store %"struct.std::pair.3"* %__result.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive4, align 8
  %call = call %"struct.std::pair.3"* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEET_SB_(%"struct.std::pair.3"* %2)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::pair.3"* %call, %"struct.std::pair.3"** %coerce.dive5, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  %call9 = call %"struct.std::pair.3"* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEET_SB_(%"struct.std::pair.3"* %5)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  store %"struct.std::pair.3"* %call9, %"struct.std::pair.3"** %coerce.dive10, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  %9 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %10 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive14, align 8
  %call15 = call %"struct.std::pair.3"* @_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_ET1_T0_SC_SB_(%"struct.std::pair.3"* %8, %"struct.std::pair.3"* %9, %"struct.std::pair.3"* %10)
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store %"struct.std::pair.3"* %call15, %"struct.std::pair.3"** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive17, align 8
  ret %"struct.std::pair.3"* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEEET_SB_(%"struct.std::pair.3"* %__it.coerce) #7 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store %"struct.std::pair.3"* %__it.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive1, align 8
  ret %"struct.std::pair.3"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_ET1_T0_SC_SB_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"* %__result.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp = alloca %"struct.std::pair.3"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store %"struct.std::pair.3"* %__result.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive3, align 8
  %call = call %"struct.std::pair.3"* @_ZSt12__niter_baseIPSt4pairIPKciESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(%"struct.std::pair.3"* %2)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive5, align 8
  %call6 = call %"struct.std::pair.3"* @_ZSt12__niter_baseIPSt4pairIPKciESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(%"struct.std::pair.3"* %5)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  %call9 = call %"struct.std::pair.3"* @_ZSt12__niter_baseIPSt4pairIPKciESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(%"struct.std::pair.3"* %8)
  %call10 = call %"struct.std::pair.3"* @_ZSt22__copy_move_backward_aILb0EPSt4pairIPKciES4_ET1_T0_S6_S5_(%"struct.std::pair.3"* %call, %"struct.std::pair.3"* %call6, %"struct.std::pair.3"* %call9)
  store %"struct.std::pair.3"* %call10, %"struct.std::pair.3"** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair.3"** dereferenceable(8) %ref.tmp)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %9 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive11, align 8
  ret %"struct.std::pair.3"* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt12__niter_baseIPSt4pairIPKciESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(%"struct.std::pair.3"* %__it.coerce) #7 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store %"struct.std::pair.3"* %__it.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %call = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call, align 8
  ret %"struct.std::pair.3"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt22__copy_move_backward_aILb0EPSt4pairIPKciES4_ET1_T0_S6_S5_(%"struct.std::pair.3"* %__first, %"struct.std::pair.3"* %__last, %"struct.std::pair.3"* %__result) #0 comdat {
entry:
  %__first.addr = alloca %"struct.std::pair.3"*, align 8
  %__last.addr = alloca %"struct.std::pair.3"*, align 8
  %__result.addr = alloca %"struct.std::pair.3"*, align 8
  %__simple = alloca i8, align 1
  store %"struct.std::pair.3"* %__first, %"struct.std::pair.3"** %__first.addr, align 8
  store %"struct.std::pair.3"* %__last, %"struct.std::pair.3"** %__last.addr, align 8
  store %"struct.std::pair.3"* %__result, %"struct.std::pair.3"** %__result.addr, align 8
  store i8 0, i8* %__simple, align 1
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__first.addr, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__last.addr, align 8
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  %call = call %"struct.std::pair.3"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPKciES7_EET0_T_S9_S8_(%"struct.std::pair.3"* %0, %"struct.std::pair.3"* %1, %"struct.std::pair.3"* %2)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %this, %"struct.std::pair.3"** dereferenceable(8) %__i) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %"struct.std::pair.3"**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %"struct.std::pair.3"** %__i, %"struct.std::pair.3"*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair.3"**, %"struct.std::pair.3"*** %__i.addr, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %0, align 8
  store %"struct.std::pair.3"* %1, %"struct.std::pair.3"** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPKciES7_EET0_T_S9_S8_(%"struct.std::pair.3"* %__first, %"struct.std::pair.3"* %__last, %"struct.std::pair.3"* %__result) #7 comdat align 2 {
entry:
  %__first.addr = alloca %"struct.std::pair.3"*, align 8
  %__last.addr = alloca %"struct.std::pair.3"*, align 8
  %__result.addr = alloca %"struct.std::pair.3"*, align 8
  %__n = alloca i64, align 8
  store %"struct.std::pair.3"* %__first, %"struct.std::pair.3"** %__first.addr, align 8
  store %"struct.std::pair.3"* %__last, %"struct.std::pair.3"** %__last.addr, align 8
  store %"struct.std::pair.3"* %__result, %"struct.std::pair.3"** %__result.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__last.addr, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %"struct.std::pair.3"* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %"struct.std::pair.3"* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  store i64 %sub.ptr.div, i64* %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %__n, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__last.addr, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %3, i32 -1
  store %"struct.std::pair.3"* %incdec.ptr, %"struct.std::pair.3"** %__last.addr, align 8
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %4, i32 -1
  store %"struct.std::pair.3"* %incdec.ptr1, %"struct.std::pair.3"** %__result.addr, align 8
  %5 = bitcast %"struct.std::pair.3"* %incdec.ptr1 to i8*
  %6 = bitcast %"struct.std::pair.3"* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 12, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %__n, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, i64* %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  ret %"struct.std::pair.3"* %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %"struct.std::pair.3"** %_M_current
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__middle.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__middle = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::less", align 1
  %agg.tmp9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__middle, i32 0, i32 0
  store %"struct.std::pair.3"* %__middle.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_(%"struct.std::pair.3"* %6, %"struct.std::pair.3"* %7, %"struct.std::pair.3"* %8)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9, i32 0, i32 0
  %13 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10, i32 0, i32 0
  %14 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive12, align 8
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(%"struct.std::pair.3"* %13, %"struct.std::pair.3"* %14, %"struct.std::less"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %__mid = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"struct.std::less", align 1
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp19 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp21 = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %div = sdiv i64 %call, 2
  %call2 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %div)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__mid, i32 0, i32 0
  store %"struct.std::pair.3"* %call2, %"struct.std::pair.3"** %coerce.dive3, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call5 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 1)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  store %"struct.std::pair.3"* %call5, %"struct.std::pair.3"** %coerce.dive6, align 8
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__mid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call9 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %__last, i64 1)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  store %"struct.std::pair.3"* %call9, %"struct.std::pair.3"** %coerce.dive10, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %6 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive15, align 8
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(%"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5, %"struct.std::pair.3"* %6, %"struct.std::pair.3"* %7)
  %call17 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 1)
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  store %"struct.std::pair.3"* %call17, %"struct.std::pair.3"** %coerce.dive18, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp19 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %12 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive22, align 8
  %coerce.dive23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp19, i32 0, i32 0
  %13 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20, i32 0, i32 0
  %14 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive24, align 8
  %call25 = call %"struct.std::pair.3"* @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(%"struct.std::pair.3"* %12, %"struct.std::pair.3"* %13, %"struct.std::pair.3"* %14)
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store %"struct.std::pair.3"* %call25, %"struct.std::pair.3"** %coerce.dive26, align 8
  %coerce.dive27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive27, align 8
  ret %"struct.std::pair.3"* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca %"struct.std::pair.3"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %0, i64 %idx.neg
  store %"struct.std::pair.3"* %add.ptr, %"struct.std::pair.3"** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"struct.std::pair.3"** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive, align 8
  ret %"struct.std::pair.3"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(%"struct.std::pair.3"* %__result.coerce, %"struct.std::pair.3"* %__a.coerce, %"struct.std::pair.3"* %__b.coerce, %"struct.std::pair.3"* %__c.coerce) #0 comdat {
entry:
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__c = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp18 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp23 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp24 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp28 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp29 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp34 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp35 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp40 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp41 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp45 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp46 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp51 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp52 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp56 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp57 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store %"struct.std::pair.3"* %__result.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store %"struct.std::pair.3"* %__a.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store %"struct.std::pair.3"* %__b.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__c, i32 0, i32 0
  store %"struct.std::pair.3"* %__c.coerce, %"struct.std::pair.3"** %coerce.dive3, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5)
  br i1 %call, label %if.then, label %if.else33

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %10 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive10, align 8
  %call11 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %10, %"struct.std::pair.3"* %11)
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13 to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp14 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %16 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp14, i32 0, i32 0
  %17 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive16, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %16, %"struct.std::pair.3"* %17)
  br label %if.end32

if.else:                                          ; preds = %if.then
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17 to i8*
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18 to i8*
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 8, i1 false)
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17, i32 0, i32 0
  %22 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive19, align 8
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18, i32 0, i32 0
  %23 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive20, align 8
  %call21 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %22, %"struct.std::pair.3"* %23)
  br i1 %call21, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp23 to i8*
  %25 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp24 to i8*
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp23, i32 0, i32 0
  %28 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive25, align 8
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp24, i32 0, i32 0
  %29 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive26, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %28, %"struct.std::pair.3"* %29)
  br label %if.end

if.else27:                                        ; preds = %if.else
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp28 to i8*
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp29 to i8*
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 8, i1 false)
  %coerce.dive30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp28, i32 0, i32 0
  %34 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive30, align 8
  %coerce.dive31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp29, i32 0, i32 0
  %35 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive31, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %34, %"struct.std::pair.3"* %35)
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then12
  br label %if.end62

if.else33:                                        ; preds = %entry
  %36 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp34 to i8*
  %37 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 8, i1 false)
  %38 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35 to i8*
  %39 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 8, i32 8, i1 false)
  %coerce.dive36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp34, i32 0, i32 0
  %40 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive36, align 8
  %coerce.dive37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35, i32 0, i32 0
  %41 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive37, align 8
  %call38 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %40, %"struct.std::pair.3"* %41)
  br i1 %call38, label %if.then39, label %if.else44

if.then39:                                        ; preds = %if.else33
  %42 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp40 to i8*
  %43 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 8, i32 8, i1 false)
  %44 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp41 to i8*
  %45 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 8, i1 false)
  %coerce.dive42 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp40, i32 0, i32 0
  %46 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive42, align 8
  %coerce.dive43 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp41, i32 0, i32 0
  %47 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive43, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %46, %"struct.std::pair.3"* %47)
  br label %if.end61

if.else44:                                        ; preds = %if.else33
  %48 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp45 to i8*
  %49 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 8, i1 false)
  %50 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp46 to i8*
  %51 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %coerce.dive47 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp45, i32 0, i32 0
  %52 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive47, align 8
  %coerce.dive48 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp46, i32 0, i32 0
  %53 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive48, align 8
  %call49 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %52, %"struct.std::pair.3"* %53)
  br i1 %call49, label %if.then50, label %if.else55

if.then50:                                        ; preds = %if.else44
  %54 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp51 to i8*
  %55 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 8, i1 false)
  %56 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp52 to i8*
  %57 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 8, i32 8, i1 false)
  %coerce.dive53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp51, i32 0, i32 0
  %58 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive53, align 8
  %coerce.dive54 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp52, i32 0, i32 0
  %59 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive54, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %58, %"struct.std::pair.3"* %59)
  br label %if.end60

if.else55:                                        ; preds = %if.else44
  %60 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp56 to i8*
  %61 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 8, i32 8, i1 false)
  %62 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp57 to i8*
  %63 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 8, i32 8, i1 false)
  %coerce.dive58 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp56, i32 0, i32 0
  %64 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive58, align 8
  %coerce.dive59 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp57, i32 0, i32 0
  %65 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive59, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %64, %"struct.std::pair.3"* %65)
  br label %if.end60

if.end60:                                         ; preds = %if.else55, %if.then50
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then39
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end32
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"* %__pivot.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__pivot = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp21 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__pivot, i32 0, i32 0
  store %"struct.std::pair.3"* %__pivot.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body7, %while.body
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__pivot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5)
  br i1 %call, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond3
  %call8 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  br label %while.cond3

while.end:                                        ; preds = %while.cond3
  %call9 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  br label %while.cond10

while.cond10:                                     ; preds = %while.body16, %while.end
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__pivot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %10 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive14, align 8
  %call15 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %10, %"struct.std::pair.3"* %11)
  br i1 %call15, label %while.body16, label %while.end18

while.body16:                                     ; preds = %while.cond10
  %call17 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  br label %while.cond10

while.end18:                                      ; preds = %while.cond10
  %call19 = call zeroext i1 @_ZN9__gnu_cxxltIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call19, label %if.end, label %if.then

if.then:                                          ; preds = %while.end18
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %14 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive25, align 8
  ret %"struct.std::pair.3"* %14

if.end:                                           ; preds = %while.end18
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp21 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20, i32 0, i32 0
  %19 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive22, align 8
  %coerce.dive23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp21, i32 0, i32 0
  %20 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive23, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %19, %"struct.std::pair.3"* %20)
  %call24 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxltIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #7 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"struct.std::pair.3"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %call1, align 8
  %cmp = icmp ult %"struct.std::pair.3"* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEESA_EvT_T0_(%"struct.std::pair.3"* %__a.coerce, %"struct.std::pair.3"* %__b.coerce) #0 comdat {
entry:
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store %"struct.std::pair.3"* %__a.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store %"struct.std::pair.3"* %__b.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive4, align 8
  call void @_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEvT_T0_(%"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEvT_T0_(%"struct.std::pair.3"* %__a.coerce, %"struct.std::pair.3"* %__b.coerce) #0 comdat align 2 {
entry:
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store %"struct.std::pair.3"* %__a.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store %"struct.std::pair.3"* %__b.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__a)
  %call2 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__b)
  call void @_ZSt4swapISt4pairIPKciEEvRT_S5_(%"struct.std::pair.3"* dereferenceable(16) %call, %"struct.std::pair.3"* dereferenceable(16) %call2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt4swapISt4pairIPKciEEvRT_S5_(%"struct.std::pair.3"* dereferenceable(16) %__a, %"struct.std::pair.3"* dereferenceable(16) %__b) #7 comdat {
entry:
  %__a.addr = alloca %"struct.std::pair.3"*, align 8
  %__b.addr = alloca %"struct.std::pair.3"*, align 8
  %__tmp = alloca %"struct.std::pair.3", align 8
  store %"struct.std::pair.3"* %__a, %"struct.std::pair.3"** %__a.addr, align 8
  store %"struct.std::pair.3"* %__b, %"struct.std::pair.3"** %__b.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__a.addr, align 8
  %1 = bitcast %"struct.std::pair.3"* %__tmp to i8*
  %2 = bitcast %"struct.std::pair.3"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__b.addr, align 8
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__a.addr, align 8
  %5 = bitcast %"struct.std::pair.3"* %4 to i8*
  %6 = bitcast %"struct.std::pair.3"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 12, i32 8, i1 false)
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__b.addr, align 8
  %8 = bitcast %"struct.std::pair.3"* %7 to i8*
  %9 = bitcast %"struct.std::pair.3"* %__tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 12, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__middle.coerce, %"struct.std::pair.3"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__middle = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.std::less", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__middle, i32 0, i32 0
  store %"struct.std::pair.3"* %__middle.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive5, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(%"struct.std::pair.3"* %4, %"struct.std::pair.3"* %5, %"struct.std::less"* dereferenceable(1) %__comp)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxltIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  %12 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %13 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive9, align 8
  %call10 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %12, %"struct.std::pair.3"* %13)
  br i1 %call10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13 to i8*
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %20 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %21 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %22 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive16, align 8
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_(%"struct.std::pair.3"* %20, %"struct.std::pair.3"* %21, %"struct.std::pair.3"* %22, %"struct.std::less"* dereferenceable(1) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call17 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, %"struct.std::less"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"struct.std::less"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  store %"struct.std::less"* %__comp, %"struct.std::less"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load %"struct.std::less"*, %"struct.std::less"** %__comp.addr, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_(%"struct.std::pair.3"* %7, %"struct.std::pair.3"* %8, %"struct.std::pair.3"* %9, %"struct.std::less"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"* %__result.coerce, %"struct.std::less"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"struct.std::less"*, align 8
  %__value = alloca %"struct.std::pair.3", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::pair.3", align 8
  %agg.tmp7 = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store %"struct.std::pair.3"* %__result.coerce, %"struct.std::pair.3"** %coerce.dive2, align 8
  store %"struct.std::less"* %__comp, %"struct.std::less"** %__comp.addr, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__result)
  %0 = bitcast %"struct.std::pair.3"* %__value to i8*
  %1 = bitcast %"struct.std::pair.3"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %call3 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %call4 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__result)
  %2 = bitcast %"struct.std::pair.3"* %call4 to i8*
  %3 = bitcast %"struct.std::pair.3"* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %call5 = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %6 = bitcast %"struct.std::pair.3"* %agg.tmp6 to i8*
  %7 = bitcast %"struct.std::pair.3"* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load %"struct.std::less"*, %"struct.std::less"** %__comp.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %9 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  %10 = bitcast %"struct.std::pair.3"* %agg.tmp6 to { i8*, i32 }*
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %10, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(%"struct.std::pair.3"* %9, i64 0, i64 %call5, i8* %12, i32 %14)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(%"struct.std::pair.3"* %__first.coerce, i64 %__holeIndex, i64 %__len, i8* %__value.coerce0, i32 %__value.coerce1) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__value = alloca %"struct.std::pair.3", align 8
  %__comp = alloca %"struct.std::less", align 1
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce25 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce29 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__cmp = alloca %"struct.std::less", align 1
  %agg.tmp34 = alloca %"struct.std::less", align 1
  %agg.tmp35 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp36 = alloca %"struct.std::pair.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %0 = bitcast %"struct.std::pair.3"* %__value to { i8*, i32 }*
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %__value.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %__value.coerce1, i32* %2, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %3 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %3, i64* %__topIndex, align 8
  %4 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %4, i64* %__secondChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i64, i64* %__secondChild, align 8
  %6 = load i64, i64* %__len.addr, align 8
  %sub = sub nsw i64 %6, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %5, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %__secondChild, align 8
  %add = add nsw i64 %7, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %__secondChild, align 8
  %8 = load i64, i64* %__secondChild, align 8
  %call = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %8)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::pair.3"* %call, %"struct.std::pair.3"** %coerce.dive1, align 8
  %9 = load i64, i64* %__secondChild, align 8
  %sub3 = sub nsw i64 %9, 1
  %call4 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %sub3)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  store %"struct.std::pair.3"* %call4, %"struct.std::pair.3"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %10 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive7, align 8
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_(%"struct.std::less"* %__comp, %"struct.std::pair.3"* %10, %"struct.std::pair.3"* %11)
  br i1 %call8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %12, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load i64, i64* %__secondChild, align 8
  %call9 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %13)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::pair.3"* %call9, %"struct.std::pair.3"** %coerce.dive10, align 8
  %call11 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
  %14 = load i64, i64* %__holeIndex.addr, align 8
  %call12 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %14)
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce13, i32 0, i32 0
  store %"struct.std::pair.3"* %call12, %"struct.std::pair.3"** %coerce.dive14, align 8
  %call15 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce13)
  %15 = bitcast %"struct.std::pair.3"* %call15 to i8*
  %16 = bitcast %"struct.std::pair.3"* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 12, i32 8, i1 false)
  %17 = load i64, i64* %__secondChild, align 8
  store i64 %17, i64* %__holeIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i64, i64* %__len.addr, align 8
  %and = and i64 %18, 1
  %cmp16 = icmp eq i64 %and, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %while.end
  %19 = load i64, i64* %__secondChild, align 8
  %20 = load i64, i64* %__len.addr, align 8
  %sub17 = sub nsw i64 %20, 2
  %div18 = sdiv i64 %sub17, 2
  %cmp19 = icmp eq i64 %19, %div18
  br i1 %cmp19, label %if.then20, label %if.end33

if.then20:                                        ; preds = %land.lhs.true
  %21 = load i64, i64* %__secondChild, align 8
  %add21 = add nsw i64 %21, 1
  %mul22 = mul nsw i64 2, %add21
  store i64 %mul22, i64* %__secondChild, align 8
  %22 = load i64, i64* %__secondChild, align 8
  %sub23 = sub nsw i64 %22, 1
  %call24 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %sub23)
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce25, i32 0, i32 0
  store %"struct.std::pair.3"* %call24, %"struct.std::pair.3"** %coerce.dive26, align 8
  %call27 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce25)
  %23 = load i64, i64* %__holeIndex.addr, align 8
  %call28 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %23)
  %coerce.dive30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce29, i32 0, i32 0
  store %"struct.std::pair.3"* %call28, %"struct.std::pair.3"** %coerce.dive30, align 8
  %call31 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce29)
  %24 = bitcast %"struct.std::pair.3"* %call31 to i8*
  %25 = bitcast %"struct.std::pair.3"* %call27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 12, i32 8, i1 false)
  %26 = load i64, i64* %__secondChild, align 8
  %sub32 = sub nsw i64 %26, 1
  store i64 %sub32, i64* %__holeIndex.addr, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %land.lhs.true, %while.end
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"struct.std::less"* %__cmp)
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35 to i8*
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %29 = load i64, i64* %__holeIndex.addr, align 8
  %30 = load i64, i64* %__topIndex, align 8
  %31 = bitcast %"struct.std::pair.3"* %agg.tmp36 to i8*
  %32 = bitcast %"struct.std::pair.3"* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %coerce.dive37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35, i32 0, i32 0
  %33 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive37, align 8
  %34 = bitcast %"struct.std::pair.3"* %agg.tmp36 to { i8*, i32 }*
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %34, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_(%"struct.std::pair.3"* %33, i64 %29, i64 %30, i8* %36, i32 %38, %"struct.std::less"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %0 = alloca %"struct.std::less", align 1
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_(%"struct.std::pair.3"* %__first.coerce, i64 %__holeIndex, i64 %__topIndex, i8* %__value.coerce0, i32 %__value.coerce1, %"struct.std::less"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__value = alloca %"struct.std::pair.3", align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__comp.addr = alloca %"struct.std::less"*, align 8
  %__parent = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %0 = bitcast %"struct.std::pair.3"* %__value to { i8*, i32 }*
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %__value.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %__value.coerce1, i32* %2, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store %"struct.std::less"* %__comp, %"struct.std::less"** %__comp.addr, align 8
  %3 = load i64, i64* %__holeIndex.addr, align 8
  %sub = sub nsw i64 %3, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, i64* %__holeIndex.addr, align 8
  %5 = load i64, i64* %__topIndex.addr, align 8
  %cmp = icmp sgt i64 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %"struct.std::less"*, %"struct.std::less"** %__comp.addr, align 8
  %7 = load i64, i64* %__parent, align 8
  %call = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %7)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::pair.3"* %call, %"struct.std::pair.3"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive2, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_(%"struct.std::less"* %6, %"struct.std::pair.3"* %8, %"struct.std::pair.3"* dereferenceable(16) %__value)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %call3, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i64, i64* %__parent, align 8
  %call4 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %10)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::pair.3"* %call4, %"struct.std::pair.3"** %coerce.dive5, align 8
  %call6 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
  %11 = load i64, i64* %__holeIndex.addr, align 8
  %call7 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %11)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce8, i32 0, i32 0
  store %"struct.std::pair.3"* %call7, %"struct.std::pair.3"** %coerce.dive9, align 8
  %call10 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce8)
  %12 = bitcast %"struct.std::pair.3"* %call10 to i8*
  %13 = bitcast %"struct.std::pair.3"* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 8, i1 false)
  %14 = load i64, i64* %__parent, align 8
  store i64 %14, i64* %__holeIndex.addr, align 8
  %15 = load i64, i64* %__holeIndex.addr, align 8
  %sub11 = sub nsw i64 %15, 1
  %div12 = sdiv i64 %sub11, 2
  store i64 %div12, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i64, i64* %__holeIndex.addr, align 8
  %call13 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %16)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce14, i32 0, i32 0
  store %"struct.std::pair.3"* %call13, %"struct.std::pair.3"** %coerce.dive15, align 8
  %call16 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce14)
  %17 = bitcast %"struct.std::pair.3"* %call16 to i8*
  %18 = bitcast %"struct.std::pair.3"* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 12, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_(%"struct.std::less"* %this, %"struct.std::pair.3"* %__it.coerce, %"struct.std::pair.3"* dereferenceable(16) %__val) #0 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.std::less"*, align 8
  %__val.addr = alloca %"struct.std::pair.3"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store %"struct.std::pair.3"* %__it.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::pair.3"* %__val, %"struct.std::pair.3"** %__val.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__val.addr, align 8
  %call2 = call zeroext i1 @_ZStltRKSt4pairIPKciES4_(%"struct.std::pair.3"* dereferenceable(16) %call, %"struct.std::pair.3"* dereferenceable(16) %0)
  ret i1 %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(%"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"* %__last.coerce, %"struct.std::less"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"struct.std::less"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca %"struct.std::pair.3", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::pair.3", align 8
  %agg.tmp7 = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"struct.std::pair.3"* %__first.coerce, %"struct.std::pair.3"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"struct.std::pair.3"* %__last.coerce, %"struct.std::pair.3"** %coerce.dive1, align 8
  store %"struct.std::less"* %__comp, %"struct.std::less"** %__comp.addr, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp slt i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @_ZN9__gnu_cxxmiIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  store i64 %call2, i64* %__len, align 8
  %0 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %0, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end11
  %1 = load i64, i64* %__parent, align 8
  %call3 = call %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %1)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::pair.3"* %call3, %"struct.std::pair.3"** %coerce.dive4, align 8
  %call5 = call dereferenceable(16) %"struct.std::pair.3"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
  %2 = bitcast %"struct.std::pair.3"* %__value to i8*
  %3 = bitcast %"struct.std::pair.3"* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load i64, i64* %__parent, align 8
  %7 = load i64, i64* %__len, align 8
  %8 = bitcast %"struct.std::pair.3"* %agg.tmp6 to i8*
  %9 = bitcast %"struct.std::pair.3"* %__value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load %"struct.std::less"*, %"struct.std::less"** %__comp.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %coerce.dive8, align 8
  %12 = bitcast %"struct.std::pair.3"* %agg.tmp6 to { i8*, i32 }*
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %12, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(%"struct.std::pair.3"* %11, i64 %6, i64 %7, i8* %14, i32 %16)
  %17 = load i64, i64* %__parent, align 8
  %cmp9 = icmp eq i64 %17, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  br label %return

if.end11:                                         ; preds = %while.body
  %18 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %18, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEED2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2ERKS4_(%"struct.std::_Vector_base"* %this, %"struct.std::less"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__a.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implC2ERKS4_(%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, %"struct.std::less"* dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKciESaIS3_EE22_M_initialize_dispatchISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St12__false_type(%"class.std::vector"* %this, %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce) #0 comdat align 2 {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %0 = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::vector"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::less", align 1
  %ref.tmp = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this2 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = bitcast %"struct.std::less"* %ref.tmp to %"struct.std::less"*
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp3, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive6, align 8
  call void @_ZNSt6vectorISt4pairIPKciESaIS3_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St20forward_iterator_tag(%"class.std::vector"* %this2, %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"* %7)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKciESaIS3_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St20forward_iterator_tag(%"class.std::vector"* %this, %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce) #0 comdat align 2 {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %0 = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n = alloca i64, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp11 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this2 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp3, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %call = call i64 @_ZSt8distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(%"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"* %6)
  store i64 %call, i64* %__n, align 8
  %7 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %8 = load i64, i64* %__n, align 8
  %call6 = call %"struct.std::pair.3"* @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE11_M_allocateEm(%"struct.std::_Vector_base"* %7, i64 %8)
  %9 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store %"struct.std::pair.3"* %call6, %"struct.std::pair.3"** %_M_start, align 8
  %10 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %_M_start8 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl7, i32 0, i32 0
  %11 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start8, align 8
  %12 = load i64, i64* %__n, align 8
  %add.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %11, i64 %12
  %13 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %_M_impl9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl9, i32 0, i32 2
  store %"struct.std::pair.3"* %add.ptr, %"struct.std::pair.3"** %_M_end_of_storage, align 8
  %14 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp10 to i8*
  %15 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp11 to i8*
  %17 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %_M_impl12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %_M_start13 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl12, i32 0, i32 0
  %19 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %_M_start13, align 8
  %20 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %call14 = call dereferenceable(1) %"struct.std::less"* @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %20)
  %coerce.dive15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp10, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp11, i32 0, i32 0
  %22 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive16, align 8
  %call17 = call %"struct.std::pair.3"* @_ZSt22__uninitialized_copy_aISt17_Rb_tree_iteratorISt4pairIKPKciEEPS1_IS3_iES7_ET0_T_SA_S9_RSaIT1_E(%"struct.std::_Rb_tree_node_base"* %21, %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::pair.3"* %19, %"struct.std::less"* dereferenceable(1) %call14)
  %23 = bitcast %"class.std::vector"* %this2 to %"struct.std::_Vector_base"*
  %_M_impl18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl18, i32 0, i32 1
  store %"struct.std::pair.3"* %call17, %"struct.std::pair.3"** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt8distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(%"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::less", align 1
  %ref.tmp = alloca %"struct.std::less", align 1
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  %0 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZSt19__iterator_categoryISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(%"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__first)
  %4 = bitcast %"struct.std::less"* %ref.tmp to %"struct.std::less"*
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %call = call i64 @_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag(%"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"* %6)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %_M_impl to %"struct.std::less"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::pair.3"* @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIPKciEEE8allocateERS5_m(%"struct.std::less"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::pair.3"* [ %call, %cond.true ], [ null, %cond.false ]
  ret %"struct.std::pair.3"* %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt22__uninitialized_copy_aISt17_Rb_tree_iteratorISt4pairIKPKciEEPS1_IS3_iES7_ET0_T_SA_S9_RSaIT1_E(%"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::pair.3"* %__result, %"struct.std::less"* dereferenceable(1)) #0 comdat {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__result.addr = alloca %"struct.std::pair.3"*, align 8
  %.addr = alloca %"struct.std::less"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store %"struct.std::pair.3"* %__result, %"struct.std::pair.3"** %__result.addr, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp2, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  %call = call %"struct.std::pair.3"* @_ZSt18uninitialized_copyISt17_Rb_tree_iteratorISt4pairIKPKciEEPS1_IS3_iEET0_T_SA_S9_(%"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::pair.3"* %5)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt18uninitialized_copyISt17_Rb_tree_iteratorISt4pairIKPKciEEPS1_IS3_iEET0_T_SA_S9_(%"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::pair.3"* %__result) #0 comdat {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__result.addr = alloca %"struct.std::pair.3"*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store %"struct.std::pair.3"* %__result, %"struct.std::pair.3"** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"struct.std::_Rb_tree_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  %call = call %"struct.std::pair.3"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt17_Rb_tree_iteratorISt4pairIKPKciEEPS3_IS5_iEEET0_T_SC_SB_(%"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::pair.3"* %4)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt17_Rb_tree_iteratorISt4pairIKPKciEEPS3_IS5_iEEET0_T_SC_SB_(%"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::pair.3"* %__result) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__result.addr = alloca %"struct.std::pair.3"*, align 8
  %__cur = alloca %"struct.std::pair.3"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store %"struct.std::pair.3"* %__result, %"struct.std::pair.3"** %__result.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  store %"struct.std::pair.3"* %0, %"struct.std::pair.3"** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont7, %entry
  %call = invoke zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEneERKS5_(%"struct.std::_Rb_tree_iterator"* %__first, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__last)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__cur, align 8
  %call3 = invoke %"struct.std::pair.3"* @_ZSt11__addressofISt4pairIPKciEEPT_RS4_(%"struct.std::pair.3"* dereferenceable(16) %1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %for.body
  %call5 = invoke dereferenceable(16) %"struct.std::pair.3"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEdeEv(%"struct.std::_Rb_tree_iterator"* %__first)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  invoke void @_ZSt10_ConstructISt4pairIPKciES0_IKS2_iEEvPT_RKT0_(%"struct.std::pair.3"* %call3, %"struct.std::pair.3"* dereferenceable(16) %call5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont6
  %call8 = invoke dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEppEv(%"struct.std::_Rb_tree_iterator"* %__first)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %for.inc
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %2, i32 1
  store %"struct.std::pair.3"* %incdec.ptr, %"struct.std::pair.3"** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.inc, %invoke.cont4, %invoke.cont2, %for.body, %for.cond
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %6 = call i8* @__cxa_begin_catch(i8* %exn) #16
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__result.addr, align 8
  %8 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt4pairIPKciEEvT_S5_(%"struct.std::pair.3"* %7, %"struct.std::pair.3"* %8)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %catch
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad9

for.end:                                          ; preds = %invoke.cont
  %9 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__cur, align 8
  ret %"struct.std::pair.3"* %9

lpad9:                                            ; preds = %invoke.cont10, %catch
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %lpad9
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont11
  %exn12 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn12, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13

terminate.lpad:                                   ; preds = %lpad9
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #11
  unreachable

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEneERKS5_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt11__addressofISt4pairIPKciEEPT_RS4_(%"struct.std::pair.3"* dereferenceable(16) %__r) #7 comdat {
entry:
  %__r.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %__r, %"struct.std::pair.3"** %__r.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__r.addr, align 8
  ret %"struct.std::pair.3"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.3"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEdeEv(%"struct.std::_Rb_tree_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call %"struct.std::pair.3"* @_ZNSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructISt4pairIPKciES0_IKS2_iEEvPT_RKT0_(%"struct.std::pair.3"* %__p, %"struct.std::pair.3"* dereferenceable(16) %__value) #0 comdat {
entry:
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  %__value.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  store %"struct.std::pair.3"* %__value, %"struct.std::pair.3"** %__value.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair.3"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair.3"*
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__value.addr, align 8
  call void @_ZNSt4pairIPKciEC2IKS1_iEERKS_IT_T0_E(%"struct.std::pair.3"* %2, %"struct.std::pair.3"* dereferenceable(16) %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEppEv(%"struct.std::_Rb_tree_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #11

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPKciEC2IKS1_iEERKS_IT_T0_E(%"struct.std::pair.3"* %this, %"struct.std::pair.3"* dereferenceable(16) %__p) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.3"*, align 8
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %this, %"struct.std::pair.3"** %this.addr, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  %this1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair.3"* %this1 to %"struct.std::less"*
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %this1, i32 0, i32 0
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %first2 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %1, i32 0, i32 0
  %2 = load i8*, i8** %first2, align 8
  store i8* %2, i8** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %this1, i32 0, i32 1
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %second3 = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %3, i32 0, i32 1
  %4 = load i32, i32* %second3, align 8
  store i32 %4, i32* %second, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZN9__gnu_cxx14__alloc_traitsISaISt4pairIPKciEEE8allocateERS5_m(%"struct.std::less"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::less"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  %1 = bitcast %"struct.std::less"* %0 to %"struct.std::less"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::pair.3"* @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEE8allocateEmPKv(%"struct.std::less"* %1, i64 %2, i8* null)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEE8allocateEmPKv(%"struct.std::less"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIPKciEE8max_sizeEv(%"struct.std::less"* %this1) #16
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 16
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::pair.3"*
  ret %"struct.std::pair.3"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt4pairIPKciEE8max_sizeEv(%"struct.std::less"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(%"struct.std::_Rb_tree_iterator"* dereferenceable(8)) #7 comdat {
entry:
  %retval = alloca %"struct.std::less", align 1
  %.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag(%"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %0 = alloca %"struct.std::less", align 1
  %__n = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive1, align 8
  store i64 0, i64* %__n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEneERKS5_(%"struct.std::_Rb_tree_iterator"* %__first, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEppEv(%"struct.std::_Rb_tree_iterator"* %__first)
  %1 = load i64, i64* %__n, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %__n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load i64, i64* %__n, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EE12_Vector_implC2ERKS4_(%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this, %"struct.std::less"* dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"*, align 8
  %__a.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"** %this.addr, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"*, %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this1 to %"struct.std::less"*
  %1 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  call void @_ZNSaISt4pairIPKciEEC2ERKS3_(%"struct.std::less"* %0, %"struct.std::less"* dereferenceable(1) %1) #16
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this1, i32 0, i32 0
  store %"struct.std::pair.3"* null, %"struct.std::pair.3"** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this1, i32 0, i32 1
  store %"struct.std::pair.3"* null, %"struct.std::pair.3"** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl", %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int> > >::_Vector_impl"* %this1, i32 0, i32 2
  store %"struct.std::pair.3"* null, %"struct.std::pair.3"** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt4pairIPKciEEC2ERKS3_(%"struct.std::less"* %this, %"struct.std::less"* dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__a.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  %1 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  %2 = bitcast %"struct.std::less"* %1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEEC2ERKS5_(%"struct.std::less"* %0, %"struct.std::less"* dereferenceable(1) %2) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEEC2ERKS5_(%"struct.std::less"* %this, %"struct.std::less"* dereferenceable(1)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIPKciEEC2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE5beginEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_(%"class.std::map"* %this, i8** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca i8**, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store i8** %__x, i8*** %__x.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %0 = load i8**, i8*** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11lower_boundERS3_(%"class.std::_Rb_tree"* %_M_t, i8** dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE8key_compEv(%"class.std::map"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::map"*, align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8key_compEv(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %this, i8** dereferenceable(8) %__x, i8** dereferenceable(8) %__y) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__x.addr = alloca i8**, align 8
  %__y.addr = alloca i8**, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store i8** %__x, i8*** %__x.addr, align 8
  store i8** %__y, i8*** %__y.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load i8**, i8*** %__x.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8**, i8*** %__y.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp ult i8* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKPKciEC2ERS2_RKi(%"struct.std::pair.3"* %this, i8** dereferenceable(8) %__a, i32* dereferenceable(4) %__b) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.3"*, align 8
  %__a.addr = alloca i8**, align 8
  %__b.addr = alloca i32*, align 8
  store %"struct.std::pair.3"* %this, %"struct.std::pair.3"** %this.addr, align 8
  store i8** %__a, i8*** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %this1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair.3"* %this1 to %"struct.std::less"*
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %this1, i32 0, i32 0
  %1 = load i8**, i8*** %__a.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %this1, i32 0, i32 1
  %3 = load i32*, i32** %__b.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %second, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_(%"class.std::map"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair.3"* dereferenceable(16) %__x) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__position = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca %"struct.std::pair.3"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"struct.std::pair.3"* %__x, %"struct.std::pair.3"** %__x.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPKciEEC2ERKSt17_Rb_tree_iteratorIS4_E(%"struct.std::_Rb_tree_iterator"* %agg.tmp, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__position)
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::pair.3"* dereferenceable(16) %0)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPKciEEC2ERKSt17_Rb_tree_iteratorIS4_E(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__it) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__it.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::pair.3"* dereferenceable(16) %__x) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::pair.3"*, align 8
  %__an = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::pair.3"* %__x, %"struct.std::pair.3"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_Alloc_nodeC2ERSA_(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %__an, %"class.std::_Rb_tree"* dereferenceable(48) %this1)
  %0 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_INSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_ERKS4_RT_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::pair.3"* dereferenceable(16) %2, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* dereferenceable(8) %__an)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  ret %"struct.std::_Rb_tree_node_base"* %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_Alloc_nodeC2ERSA_(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %this, %"class.std::_Rb_tree"* dereferenceable(48) %__t) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, align 8
  %__t.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %this, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %this.addr, align 8
  store %"class.std::_Rb_tree"* %__t, %"class.std::_Rb_tree"** %__t.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node", %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %__t.addr, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %_M_t, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_INSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_ERKS4_RT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::pair.3"* dereferenceable(16) %__v, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* dereferenceable(8) %__node_gen) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__position = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__v.addr = alloca %"struct.std::pair.3"*, align 8
  %__node_gen.addr = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, align 8
  %__res = alloca %"struct.std::pair.9", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %tmp = alloca %"struct.std::less", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::pair.3"* %__v, %"struct.std::pair.3"** %__v.addr, align 8
  store %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %__node_gen.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__v.addr, align 8
  %call = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"struct.std::less"* %tmp, %"struct.std::pair.3"* dereferenceable(16) %2)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call3 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, i8** dereferenceable(8) %call)
  %4 = bitcast %"struct.std::pair.9"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %5 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 0
  %6 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 1
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 1
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %second = getelementptr inbounds %"struct.std::pair.9", %"struct.std::pair.9"* %__res, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair.9", %"struct.std::pair.9"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair.9", %"struct.std::pair.9"* %__res, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %12 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__v.addr, align 8
  %13 = load %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %__node_gen.addr, align 8
  %call5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_INSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_RKS4_RT_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::pair.3"* dereferenceable(16) %12, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* dereferenceable(8) %13)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %first7 = getelementptr inbounds %"struct.std::pair.9", %"struct.std::pair.9"* %__res, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first7, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"struct.std::less"* %this, %"struct.std::pair.3"* dereferenceable(16) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__x.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::pair.3"* %__x, %"struct.std::pair.3"** %__x.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.3", %"struct.std::pair.3"* %0, i32 0, i32 0
  ret i8** %first
}

; Function Attrs: noinline uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, i8** dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.9", align 8
  %__position = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca i8**, align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp37 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp55 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp69 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp78 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i8** %__k, i8*** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPKciEE13_M_const_castEv(%"struct.std::_Rb_tree_iterator"* %__position)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %call3
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call4 = call i64 @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4sizeEv(%"class.std::_Rb_tree"* %this1)
  %cmp5 = icmp ugt i64 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %1, i32 0, i32 0
  %call6 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call6, align 8
  %call7 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %3 = load i8**, i8*** %__k.addr, align 8
  %call8 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare, i8** dereferenceable(8) %call7, i8** dereferenceable(8) %3)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp, align 8
  %call10 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load i8**, i8*** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %this1, i8** dereferenceable(8) %4)
  %5 = bitcast %"struct.std::pair.9"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %6 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 0
  %7 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 1
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 1
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 8
  br label %return

if.else12:                                        ; preds = %entry
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %10 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl13 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %10, i32 0, i32 0
  %11 = load i8**, i8*** %__k.addr, align 8
  %_M_node15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node15, align 8
  %call16 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12)
  %call17 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare14, i8** dereferenceable(8) %11, i8** dereferenceable(8) %call16)
  br i1 %call17, label %if.then18, label %if.else44

if.then18:                                        ; preds = %if.else12
  %13 = bitcast %"struct.std::_Rb_tree_iterator"* %__before to i8*
  %14 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node19, align 8
  %call20 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call20, align 8
  %cmp21 = icmp eq %"struct.std::_Rb_tree_node_base"* %15, %16
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %call23 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %call24 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call23, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call24)
  br label %return

if.else25:                                        ; preds = %if.then18
  %_M_impl26 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %17 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl26 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare27 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %17, i32 0, i32 0
  %call28 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEmmEv(%"struct.std::_Rb_tree_iterator"* %__before)
  %_M_node29 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %call28, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node29, align 8
  %call30 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %18)
  %19 = load i8**, i8*** %__k.addr, align 8
  %call31 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare27, i8** dereferenceable(8) %call30, i8** dereferenceable(8) %19)
  br i1 %call31, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.else25
  %_M_node33 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  %20 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node33, align 8
  %call34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20)
  %cmp35 = icmp eq %"struct.std::_Rb_tree_node"* %call34, null
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, align 8
  %_M_node38 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp37, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node40, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %21 = load i8**, i8*** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %this1, i8** dereferenceable(8) %21)
  %22 = bitcast %"struct.std::pair.9"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %23 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 0
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 0
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 8
  %25 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 1
  %26 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 1
  store %"struct.std::_Rb_tree_node_base"* %26, %"struct.std::_Rb_tree_node_base"** %25, align 8
  br label %return

if.else44:                                        ; preds = %if.else12
  %_M_impl45 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %27 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl45 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare46 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %27, i32 0, i32 0
  %_M_node47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %28 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node47, align 8
  %call48 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %28)
  %29 = load i8**, i8*** %__k.addr, align 8
  %call49 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare46, i8** dereferenceable(8) %call48, i8** dereferenceable(8) %29)
  br i1 %call49, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.else44
  %30 = bitcast %"struct.std::_Rb_tree_iterator"* %__after to i8*
  %31 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %_M_node51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node51, align 8
  %call52 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %33 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call52, align 8
  %cmp53 = icmp eq %"struct.std::_Rb_tree_node_base"* %32, %33
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then50
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp55, align 8
  %call56 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp55, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call56)
  br label %return

if.else57:                                        ; preds = %if.then50
  %_M_impl58 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %34 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl58 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare59 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %34, i32 0, i32 0
  %35 = load i8**, i8*** %__k.addr, align 8
  %call60 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEppEv(%"struct.std::_Rb_tree_iterator"* %__after)
  %_M_node61 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %call60, i32 0, i32 0
  %36 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node61, align 8
  %call62 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %36)
  %call63 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare59, i8** dereferenceable(8) %35, i8** dereferenceable(8) %call62)
  br i1 %call63, label %if.then64, label %if.else74

if.then64:                                        ; preds = %if.else57
  %_M_node65 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %37 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node65, align 8
  %call66 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %37)
  %cmp67 = icmp eq %"struct.std::_Rb_tree_node"* %call66, null
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.then64
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, align 8
  %_M_node70 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp69, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node72, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %38 = load i8**, i8*** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %this1, i8** dereferenceable(8) %38)
  %39 = bitcast %"struct.std::pair.9"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %40 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %39, i32 0, i32 0
  %41 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 0
  store %"struct.std::_Rb_tree_node_base"* %41, %"struct.std::_Rb_tree_node_base"** %40, align 8
  %42 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %39, i32 0, i32 1
  %43 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 1
  store %"struct.std::_Rb_tree_node_base"* %43, %"struct.std::_Rb_tree_node_base"** %42, align 8
  br label %return

if.else76:                                        ; preds = %if.else44
  %_M_node77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp78, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node77, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %44 = bitcast %"struct.std::pair.9"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %45 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %44, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %45
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_INSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_RKS4_RT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::pair.3"* dereferenceable(16) %__v, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* dereferenceable(8) %__node_gen) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca %"struct.std::pair.3"*, align 8
  %__node_gen.addr = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, align 8
  %__insert_left = alloca i8, align 1
  %tmp = alloca %"struct.std::less", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store %"struct.std::pair.3"* %__v, %"struct.std::pair.3"** %__v.addr, align 8
  store %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %__node_gen.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %cmp2 = icmp eq %"struct.std::_Rb_tree_node_base"* %1, %call
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %2, i32 0, i32 0
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__v.addr, align 8
  %call3 = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"struct.std::less"* %tmp, %"struct.std::pair.3"* dereferenceable(16) %3)
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare, i8** dereferenceable(8) %call3, i8** dereferenceable(8) %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %__node_gen.addr, align 8
  %7 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__v.addr, align 8
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_Alloc_nodeclIS4_EEPSt13_Rb_tree_nodeIS4_ERKT_(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %6, %"struct.std::pair.3"* dereferenceable(16) %7)
  store %"struct.std::_Rb_tree_node"* %call7, %"struct.std::_Rb_tree_node"** %__z, align 8
  %8 = load i8, i8* %__insert_left, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %12 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl8 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 8
  %13 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %13, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %_M_header) #16
  %_M_impl9 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %14 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl9 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 8
  %15 = bitcast i8* %add.ptr10 to %"struct.std::_Rb_tree_header"*
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %15, i32 0, i32 1
  %16 = load i64, i64* %_M_node_count, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %18 = bitcast %"struct.std::_Rb_tree_node"* %17 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %18)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %19 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %19
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  ret %"struct.std::_Rb_tree_node_base"* %_M_header
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %tmp = alloca %"struct.std::less", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"struct.std::less"* %tmp, %"struct.std::pair.3"* dereferenceable(16) %call)
  ret i8** %call1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_Alloc_nodeclIS4_EEPSt13_Rb_tree_nodeIS4_ERKT_(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %this, %"struct.std::pair.3"* dereferenceable(16) %__arg) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, align 8
  %__arg.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %this, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %this.addr, align 8
  store %"struct.std::pair.3"* %__arg, %"struct.std::pair.3"** %__arg.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"*, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node", %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Alloc_node"* %this1, i32 0, i32 0
  %ref = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %_M_t, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__arg.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_create_nodeERKS4_(%"class.std::_Rb_tree"* %ref, %"struct.std::pair.3"* dereferenceable(16) %0)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) #8

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_create_nodeERKS4_(%"class.std::_Rb_tree"* %this, %"struct.std::pair.3"* dereferenceable(16) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::pair.3"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::pair.3"* %__x, %"struct.std::pair.3"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %1 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_construct_nodeEPSt13_Rb_tree_nodeIS4_ERKS4_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %0, %"struct.std::pair.3"* dereferenceable(16) %1)
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKPKciEEEE8allocateERS8_m(%"struct.std::less"* dereferenceable(1) %call, i64 1)
  ret %"struct.std::_Rb_tree_node"* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_construct_nodeEPSt13_Rb_tree_nodeIS4_ERKS4_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, %"struct.std::pair.3"* dereferenceable(16) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__node.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__x.addr = alloca %"struct.std::pair.3"*, align 8
  %temp.lvalue = alloca %"struct.std::less", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  store %"struct.std::pair.3"* %__x, %"struct.std::pair.3"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  invoke void @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13get_allocatorEv(%"struct.std::less"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"struct.std::less"* %temp.lvalue to %"struct.std::less"*
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %call = invoke %"struct.std::pair.3"* @_ZNSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE9constructEPS5_RKS5_(%"struct.std::less"* %0, %"struct.std::pair.3"* %call, %"struct.std::pair.3"* dereferenceable(16) %2)
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"struct.std::less"* %temp.lvalue) #16
  br label %try.cont

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %catch

lpad2:                                            ; preds = %invoke.cont3, %invoke.cont
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSaISt4pairIKPKciEED2Ev(%"struct.std::less"* %temp.lvalue) #16
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %9 = call i8* @__cxa_begin_catch(i8* %exn) #16
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  invoke void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %10)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad5

lpad5:                                            ; preds = %invoke.cont6, %catch
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont7 unwind label %terminate.lpad

invoke.cont7:                                     ; preds = %lpad5
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont4
  ret void

eh.resume:                                        ; preds = %invoke.cont7
  %exn8 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn8, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9

terminate.lpad:                                   ; preds = %lpad5
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #11
  unreachable

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt4pairIKPKciEE9constructEPS5_RKS5_(%"struct.std::less"* %this, %"struct.std::pair.3"* %__p, %"struct.std::pair.3"* dereferenceable(16) %__val) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__p.addr = alloca %"struct.std::pair.3"*, align 8
  %__val.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"struct.std::pair.3"* %__p, %"struct.std::pair.3"** %__p.addr, align 8
  store %"struct.std::pair.3"* %__val, %"struct.std::pair.3"** %__val.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair.3"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair.3"*
  %3 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__val.addr, align 8
  %4 = bitcast %"struct.std::pair.3"* %2 to i8*
  %5 = bitcast %"struct.std::pair.3"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKPKciEEEE8allocateERS8_m(%"struct.std::less"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::less"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::less"* %__a, %"struct.std::less"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::less"*, %"struct.std::less"** %__a.addr, align 8
  %1 = bitcast %"struct.std::less"* %0 to %"struct.std::less"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE8allocateEmPKv(%"struct.std::less"* %1, i64 %2, i8* null)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE8allocateEmPKv(%"struct.std::less"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE8max_sizeEv(%"struct.std::less"* %this1) #16
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 48
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEE8max_sizeEv(%"struct.std::less"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret i64 384307168202282325
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.3"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call %"struct.std::pair.3"* @_ZNKSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZNKSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call %"struct.std::pair.3"* @_ZSt11__addressofIKSt4pairIKPKciEEPT_RS6_(%"struct.std::pair.3"* dereferenceable(16) %_M_value_field)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::pair.3"* @_ZSt11__addressofIKSt4pairIKPKciEEPT_RS6_(%"struct.std::pair.3"* dereferenceable(16) %__r) #7 comdat {
entry:
  %__r.addr = alloca %"struct.std::pair.3"*, align 8
  store %"struct.std::pair.3"* %__r, %"struct.std::pair.3"** %__r.addr, align 8
  %0 = load %"struct.std::pair.3"*, %"struct.std::pair.3"** %__r.addr, align 8
  ret %"struct.std::pair.3"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPKciEE13_M_const_castEv(%"struct.std::_Rb_tree_iterator"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4sizeEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 1
  %2 = load i64, i64* %_M_node_count, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %_M_right
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__a, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__b) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.9"*, align 8
  %__a.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__b.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.9"* %this, %"struct.std::pair.9"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__b, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %this1 = load %"struct.std::pair.9"*, %"struct.std::pair.9"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair.9"* %this1 to %"struct.std::less"*
  %first = getelementptr inbounds %"struct.std::pair.9", %"struct.std::pair.9"* %this1, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.9", %"struct.std::pair.9"* %this1, i32 0, i32 1
  %3 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %4, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %this, i8** dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.9", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca i8**, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp19 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp22 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i8** %__k, i8*** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %__y, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %3 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %3, i32 0, i32 0
  %4 = load i8**, i8*** %__k.addr, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %5)
  %call4 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare, i8** dereferenceable(8) %4, i8** dereferenceable(8) %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %__comp, align 1
  %6 = load i8, i8* %__comp, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %8)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node_base"* %11)
  %12 = load i8, i8* %__comp, align 1
  %tobool7 = trunc i8 %12 to i1
  br i1 %tobool7, label %if.then, label %if.end13

if.then:                                          ; preds = %while.end
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE5beginEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call9 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %ref.tmp)
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %13 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %ref.tmp11, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp11, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y)
  br label %return

if.else:                                          ; preds = %if.then
  %call12 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEmmEv(%"struct.std::_Rb_tree_iterator"* %__j)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %while.end
  %_M_impl14 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %15 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl14 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare15 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %15, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call16 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %16)
  %17 = load i8**, i8*** %__k.addr, align 8
  %call17 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare15, i8** dereferenceable(8) %call16, i8** dereferenceable(8) %17)
  br i1 %call17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %19 = bitcast %"struct.std::_Rb_tree_node"* %18 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %19, %"struct.std::_Rb_tree_node_base"** %ref.tmp19, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp19, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y)
  br label %return

if.end20:                                         ; preds = %if.end13
  %_M_node21 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp22, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.9"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node21, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp22)
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %if.then10
  %20 = bitcast %"struct.std::pair.9"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %21 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %21
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %_M_left
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #13
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %tmp = alloca %"struct.std::less", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call dereferenceable(16) %"struct.std::pair.3"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call dereferenceable(8) i8** @_ZNKSt10_Select1stISt4pairIKPKciEEclERKS4_(%"struct.std::less"* %tmp, %"struct.std::pair.3"* dereferenceable(16) %call)
  ret i8** %call1
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.3"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"struct.std::pair.3"* @_ZNKSt13_Rb_tree_nodeISt4pairIKPKciEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0)
  ret %"struct.std::pair.3"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8key_compEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11lower_boundERS3_(%"class.std::_Rb_tree"* %this, i8** dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca i8**, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i8** %__k, i8*** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %0 = load i8**, i8*** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node_base"* %call2, i8** dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node_base"* %__y, i8** dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__k.addr = alloca i8**, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__y, %"struct.std::_Rb_tree_node_base"** %__y.addr, align 8
  store i8** %__k, i8*** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %2)
  %3 = load i8**, i8*** %__k.addr, align 8
  %call2 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare, i8** dereferenceable(8) %call, i8** dereferenceable(8) %3)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %__y.addr, align 8
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7)
  store %"struct.std::_Rb_tree_node"* %call3, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %call4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9)
  store %"struct.std::_Rb_tree_node"* %call4, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__y.addr, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %10)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPKciEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %_M_header)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_(%"class.std::_Rb_tree"* %this, i8** dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca i8**, align 8
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store i8** %__k, i8*** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %0 = load i8**, i8*** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node_base"* %call2, i8** dereferenceable(8) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call4 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call4, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %call6 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKPKciEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %ref.tmp)
  br i1 %call6, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %1, i32 0, i32 0
  %2 = load i8**, i8*** %__k.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call7 = call dereferenceable(8) i8** @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %3)
  %call8 = call zeroext i1 @_ZNKSt4lessIPKcEclERKS1_S4_(%"struct.std::less"* %_M_key_compare, i8** dereferenceable(8) %2, i8** dereferenceable(8) %call7)
  br i1 %call8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %call9 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call9, %"struct.std::_Rb_tree_node_base"** %coerce.dive10, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = bitcast %"struct.std::_Rb_tree_iterator"* %retval to i8*
  %5 = bitcast %"struct.std::_Rb_tree_iterator"* %__j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %coerce.dive11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive11, align 8
  ret %"struct.std::_Rb_tree_node_base"* %6
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev(%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this1 to %"struct.std::less"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEEC2Ev(%"struct.std::less"* %0) #16
  %1 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this1 to %"struct.std::_Rb_tree_key_compare"*
  invoke void @_ZNSt20_Rb_tree_key_compareISt4lessIPKcEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"struct.std::_Rb_tree_header"*
  invoke void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %4)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %8 = bitcast %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int> >, std::less<const char *>, std::allocator<std::pair<const char *const, int> > >::_Rb_tree_impl"* %this1 to %"struct.std::less"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEED2Ev(%"struct.std::less"* %8) #16
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPKciEEEC2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = bitcast %"struct.std::less"* %this1 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEEC2Ev(%"struct.std::less"* %0) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt20_Rb_tree_key_compareISt4lessIPKcEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_key_compare"*, align 8
  store %"struct.std::_Rb_tree_key_compare"* %this, %"struct.std::_Rb_tree_key_compare"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_key_compare"*, %"struct.std::_Rb_tree_key_compare"** %this.addr, align 8
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %this1, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_header"*, align 8
  store %"struct.std::_Rb_tree_header"* %this, %"struct.std::_Rb_tree_header"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_header"*, %"struct.std::_Rb_tree_header"** %this.addr, align 8
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_color = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header2, i32 0, i32 0
  store i32 0, i32* %_M_color, align 8
  call void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %this1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_header"*, align 8
  store %"struct.std::_Rb_tree_header"* %this, %"struct.std::_Rb_tree_header"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_header"*, %"struct.std::_Rb_tree_header"** %this.addr, align 8
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header3, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header2, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 0
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header5, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header4, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_node_count, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKPKciEEEC2Ev(%"struct.std::less"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
