; ModuleID = 'stepanov_container/stepanov_container.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { double* }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl" }
%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl" = type { double**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { double*, double*, double*, double** }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl" }
%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl" = type { %"struct.std::_List_node" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_node.6" = type { %"struct.std::__detail::_List_node_base", double }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"class.std::allocator" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", double }
%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node" = type { %"class.std::_Rb_tree"* }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev = comdat any

$_ZNSaIdED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdED2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdEC2Ev = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt4sortIPdEvT_S1_ = comdat any

$_ZSt6uniqueIPdET_S1_S1_ = comdat any

$_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv = comdat any

$_ZSt8__uniqueIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_ = comdat any

$_ZSt15__adjacent_findIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclIPdS3_EEbT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_ = comdat any

$_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_ = comdat any

$_ZSt9iter_swapIPdS0_EvT_T0_ = comdat any

$_ZNSt11__iter_swapILb1EE9iter_swapIPdS2_EEvT_T0_ = comdat any

$_ZSt4swapIdEvRT_S1_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_ = comdat any

$_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt6vectorIdSaIdEEC2IPdEET_S4_RKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE22_M_initialize_dispatchIPdEEvT_S4_St12__false_type = comdat any

$_ZNSt6vectorIdSaIdEE19_M_range_initializeIPdEEvT_S4_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPdENSt15iterator_traitsIT_E15difference_typeES2_S2_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt10__distanceIPdENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSaIdEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_ = comdat any

$_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_ = comdat any

$_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_ = comdat any

$_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_ = comdat any

$_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv = comdat any

$_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_ = comdat any

$_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_ = comdat any

$_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEvT_T0_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_ = comdat any

$_ZNSt5dequeIdSaIdEE5beginEv = comdat any

$_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_ = comdat any

$_ZNSt5dequeIdSaIdEE3endEv = comdat any

$_ZSt4sortISt15_Deque_iteratorIdRdPdEEvT_S4_ = comdat any

$_ZSt6uniqueISt15_Deque_iteratorIdRdPdEET_S4_S4_ = comdat any

$_ZNSt5dequeIdSaIdEED2Ev = comdat any

$_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEED2Ev = comdat any

$_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdm = comdat any

$_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev = comdat any

$_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPdEE10deallocateERS2_PS1_m = comdat any

$_ZNSaIPdED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPdED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_m = comdat any

$_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPdEC2IdEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIPdEC2Ev = comdat any

$_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_ = comdat any

$_ZSt8__uniqueISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_ = comdat any

$_ZSt15__adjacent_findISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_ = comdat any

$_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_ = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEppEv = comdat any

$_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_ = comdat any

$_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_ = comdat any

$_ZNKSt15_Deque_iteratorIdRdPdEdeEv = comdat any

$_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_ = comdat any

$_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv = comdat any

$_ZSt6__sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ = comdat any

$_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_ = comdat any

$_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ = comdat any

$_ZNKSt15_Deque_iteratorIdRdPdEplEl = comdat any

$_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ = comdat any

$_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEmmEv = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdSt15_Deque_iteratorIdRdPdEEEbRT_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_ = comdat any

$_ZSt13copy_backwardISt15_Deque_iteratorIdRdPdES3_ET0_T_S5_S4_ = comdat any

$_ZSt12__miter_baseISt15_Deque_iteratorIdRdPdEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt15_Deque_iteratorIdRdPdES6_EET0_T_S8_S7_ = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEpLEl = comdat any

$_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_ = comdat any

$_ZNKSt15_Deque_iteratorIdRdPdEmiEl = comdat any

$_ZSt22__move_median_to_firstISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_S7_T0_ = comdat any

$_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_ = comdat any

$_ZStltIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_ = comdat any

$_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_ = comdat any

$_ZNSt11__iter_swapILb1EE9iter_swapISt15_Deque_iteratorIdRdPdES5_EEvT_T0_ = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEmIEl = comdat any

$_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_ = comdat any

$_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_ = comdat any

$_ZSt10__pop_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_RT0_ = comdat any

$_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_ = comdat any

$_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt15_Deque_iteratorIdRdPdEdEEbT_RT0_ = comdat any

$_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPdSt15_Deque_iteratorIdRdS3_EEET0_T_S8_S7_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_m = comdat any

$_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd = comdat any

$_ZNSt5dequeIdSaIdEE14_S_buffer_sizeEv = comdat any

$_ZSt22__uninitialized_fill_aIPdddEvT_S1_RKT0_RSaIT1_E = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEC2ES1_PS1_ = comdat any

$_ZSt8_DestroyISt15_Deque_iteratorIdRdPdEdEvT_S4_RSaIT0_E = comdat any

$_ZSt8_DestroyISt15_Deque_iteratorIdRdPdEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIdRdPdEEEvT_S6_ = comdat any

$_ZSt18uninitialized_fillIPddEvT_S1_RKT0_ = comdat any

$_ZNSt20__uninitialized_fillILb1EE13__uninit_fillIPddEEvT_S3_RKT0_ = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIPdEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPdE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEC2Ev = comdat any

$_ZNSt7__cxx114listIdSaIdEEC2IPdEET_S5_RKS1_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE4sortEv = comdat any

$_ZNSt7__cxx114listIdSaIdEE6uniqueEv = comdat any

$_ZNSt7__cxx114listIdSaIdEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE8_M_clearEv = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implD2Ev = comdat any

$_ZNSaISt10_List_nodeIdEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEED2Ev = comdat any

$_ZNSt10_List_nodeIdE9_M_valptrEv = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv = comdat any

$_ZNSaIdEC2ISt10_List_nodeIdEEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_put_nodeEPSt10_List_nodeIdE = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEE10deallocateEPS2_m = comdat any

$_ZSt11__addressofIdEPT_RS0_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE5beginEv = comdat any

$_ZNSt7__cxx114listIdSaIdEE3endEv = comdat any

$_ZNKSt14_List_iteratorIdEeqERKS0_ = comdat any

$_ZNSt14_List_iteratorIdEppEv = comdat any

$_ZNKSt14_List_iteratorIdEneERKS0_ = comdat any

$_ZNKSt14_List_iteratorIdEdeEv = comdat any

$_ZNSt7__cxx114listIdSaIdEE8_M_eraseESt14_List_iteratorIdE = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_dec_sizeEm = comdat any

$_ZNSt10_List_nodeImE9_M_valptrEv = comdat any

$_ZSt11__addressofImEPT_RS0_ = comdat any

$_ZNSt14_List_iteratorIdEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNSt7__cxx114listIdSaIdEEC2Ev = comdat any

$_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_S4_ = comdat any

$_ZNKSt7__cxx114listIdSaIdEE5emptyEv = comdat any

$_ZNSt7__cxx114listIdSaIdEE5mergeERS2_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE4swapERS2_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE25_M_check_equal_allocatorsERS2_ = comdat any

$_ZNKSt14_List_iteratorIdE13_M_const_castEv = comdat any

$_ZNSt7__cxx114listIdSaIdEE11_M_transferESt14_List_iteratorIdES4_S4_ = comdat any

$_ZNKSt7__cxx1110_List_baseIdSaIdEE11_M_get_sizeEv = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm = comdat any

$_ZNKSt10_List_nodeImE9_M_valptrEv = comdat any

$_ZSt11__addressofIKmEPT_RS1_ = comdat any

$_ZNSt11__alloc_neqISaISt10_List_nodeIdEELb1EE8_S_do_itERKS2_S5_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE10_S_on_swapERS3_S5_ = comdat any

$_ZNSt12__alloc_swapISaISt10_List_nodeIdEELb1EE8_S_do_itERS2_S4_ = comdat any

$_ZSt11__addressofINSt7__cxx114listIdSaIdEEEEPT_RS4_ = comdat any

$_ZNKSt7__cxx114listIdSaIdEE4sizeEv = comdat any

$_ZSt8distanceISt14_List_iteratorIdEENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt19__iterator_categoryISt14_List_iteratorIdEENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt10__distanceIdElSt14_List_iteratorIT_ES2_St18input_iterator_tag = comdat any

$_ZNSt20_List_const_iteratorIdEC2ERKSt14_List_iteratorIdE = comdat any

$_ZSt10__distanceIdElSt20_List_const_iteratorIT_ES2_St18input_iterator_tag = comdat any

$_ZNSt20_List_const_iteratorIdEppEv = comdat any

$_ZNKSt20_List_const_iteratorIdEeqERKS0_ = comdat any

$_ZNKSt20_List_const_iteratorIdEneERKS0_ = comdat any

$_ZNKSt7__cxx1110_List_baseIdSaIdEE13_M_node_countEv = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE7_M_initEv = comdat any

$_ZNSaISt10_List_nodeIdEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2Ev = comdat any

$_ZNSaISt10_List_nodeIdEEC2IdEERKSaIT_E = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEEC2ERKSaISt10_List_nodeIdEE = comdat any

$_ZNSt7__cxx114listIdSaIdEE22_M_initialize_dispatchIPdEEvT_S5_St12__false_type = comdat any

$_ZNSt7__cxx114listIdSaIdEE9push_backERKd = comdat any

$_ZNSt7__cxx114listIdSaIdEE9_M_insertESt14_List_iteratorIdERKd = comdat any

$_ZNSt7__cxx114listIdSaIdEE14_M_create_nodeERKd = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_get_nodeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIdEE8max_sizeEv = comdat any

$_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implC2ERKSaISt10_List_nodeIdEE = comdat any

$_ZNSaISt10_List_nodeIdEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2ERKS3_ = comdat any

$_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_ = comdat any

$_ZNSt3setIdSt4lessIdESaIdEED2Ev = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EED2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeIdEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEED2Ev = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_drop_nodeEPSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_put_nodeEPSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeIdEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE10deallocateEPS2_m = comdat any

$_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13get_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeIdE9_M_valptrEv = comdat any

$_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv = comdat any

$_ZNSaIdEC2ISt13_Rb_tree_nodeIdEEERKSaIT_E = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEEC2Ev = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_uniqueIPdEEvT_S8_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeC2ERS5_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorIdEC2ERKSt17_Rb_tree_iteratorIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdERKdRT_ = comdat any

$_ZNKSt9_IdentityIdEclERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSB_RKdRT_ = comdat any

$_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt4lessIdEclERKdS2_ = comdat any

$_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeclIdEEPSt13_Rb_tree_nodeIdERKT_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE14_M_create_nodeERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_construct_nodeEPSt13_Rb_tree_nodeIdERKd = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeIdEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE8max_sizeEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_valueEPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt13_Rb_tree_nodeIdE9_M_valptrEv = comdat any

$_ZSt11__addressofIKdEPT_RS1_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIdE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE4sizeEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv = comdat any

$_ZNSt17_Rb_tree_iteratorIdEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorIdEppEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5beginEv = comdat any

$_ZNKSt17_Rb_tree_iteratorIdEeqERKS0_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_valueEPKSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeIdEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIdEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEEC2Ev = comdat any

$_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_ = comdat any

$_ZNKSt8multisetIdSt4lessIdESaIdEE5beginEv = comdat any

$_ZNKSt8multisetIdSt4lessIdESaIdEE3endEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIdEneERKS0_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorIdEppEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIdEeqERKS0_ = comdat any

$_ZNSt8multisetIdSt4lessIdESaIdEED2Ev = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIdEdeEv = comdat any

$_ZNSt8multisetIdSt4lessIdESaIdEE5eraseESt23_Rb_tree_const_iteratorIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5eraseESt23_Rb_tree_const_iteratorIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_erase_auxESt23_Rb_tree_const_iteratorIdE = comdat any

$_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorIdEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5beginEv = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_equalIPdEEvT_S8_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdERKdRT_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_lowerEPSt18_Rb_tree_node_baseRKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE23_M_get_insert_equal_posERKd = comdat any

$_ZNSt6vectorIdSaIdEE5clearEv = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZSt14random_shuffleIPdEvT_S1_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd = comdat any

$_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

@result_times = global %"class.std::vector" zeroinitializer, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_stepanov_container.cpp, i8* null }]
@__dso_handle = external global i8
@_ZStL8__ioinit = internal global %"class.std::allocator" zeroinitializer, align 1
@_ZZ4mainE5sizes = internal constant [1 x i32] [i32 100000], align 4

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_stepanov_container.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::allocator"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::allocator"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::allocator", %"class.std::allocator"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
entry:
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* @result_times)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::vector"*)* @_ZNSt6vectorIdSaIdEED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector"* @result_times to i8*), i8* @__dso_handle) #1
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
  %call = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %1, double* %3, %"class.std::allocator"* dereferenceable(1) %call)
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
  call void @__clang_call_terminate(i8* %11) #15
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__first, double* %__last, %"class.std::allocator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
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
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl5) #1
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl6) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #15
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

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
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"class.std::allocator"* dereferenceable(1) %1, double* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"class.std::allocator"* dereferenceable(1) %__a, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.std::allocator"* %1, double* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.std::allocator"* %this, double* %__p, i64) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load double*, double** %__p.addr, align 8
  %2 = bitcast double* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

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
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double*, double*) #2 comdat align 2 {
entry:
  %.addr = alloca double*, align 8
  %.addr1 = alloca double*, align 8
  store double* %0, double** %.addr, align 8
  store double* %1, double** %.addr1, align 8
  ret void
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
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %0) #1
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 0
  store double* null, double** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 1
  store double* null, double** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 2
  store double* null, double** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::allocator"*) unnamed_addr #5

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::allocator"*) unnamed_addr #5

; Function Attrs: noinline uwtable
define void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* %f, double* %first, double* %last, i32 %number_of_times) #0 {
entry:
  %f.addr = alloca void (double*, double*, i32)*, align 8
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  store void (double*, double*, i32)* %f, void (double*, double*, i32)** %f.addr, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %number_of_times.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %number_of_times.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load void (double*, double*, i32)*, void (double*, double*, i32)** %f.addr, align 8
  %2 = load double*, double** %first.addr, align 8
  %3 = load double*, double** %last.addr, align 8
  %4 = load i32, i32* %number_of_times.addr, align 4
  call void %1(double* %2, double* %3, i32 %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z10array_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %array = alloca double*, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %last.addr, align 8
  %1 = load double*, double** %first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %sub.ptr.div, i64 8)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  %5 = select i1 %3, i64 -1, i64 %4
  %call = call i8* @_Znam(i64 %5) #16
  %6 = bitcast i8* %call to double*
  store double* %6, double** %array, align 8
  %7 = load double*, double** %first.addr, align 8
  %8 = load double*, double** %last.addr, align 8
  %9 = load double*, double** %array, align 8
  %call1 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %7, double* %8, double* %9)
  %10 = load double*, double** %array, align 8
  %11 = load double*, double** %array, align 8
  %12 = load double*, double** %last.addr, align 8
  %13 = load double*, double** %first.addr, align 8
  %sub.ptr.lhs.cast2 = ptrtoint double* %12 to i64
  %sub.ptr.rhs.cast3 = ptrtoint double* %13 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %add.ptr = getelementptr inbounds double, double* %11, i64 %sub.ptr.div5
  call void @_ZSt4sortIPdEvT_S1_(double* %10, double* %add.ptr)
  %14 = load double*, double** %array, align 8
  %15 = load double*, double** %array, align 8
  %16 = load double*, double** %last.addr, align 8
  %17 = load double*, double** %first.addr, align 8
  %sub.ptr.lhs.cast6 = ptrtoint double* %16 to i64
  %sub.ptr.rhs.cast7 = ptrtoint double* %17 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %sub.ptr.div9 = sdiv exact i64 %sub.ptr.sub8, 8
  %add.ptr10 = getelementptr inbounds double, double* %15, i64 %sub.ptr.div9
  %call11 = call double* @_ZSt6uniqueIPdET_S1_S1_(double* %14, double* %add.ptr10)
  %18 = load double*, double** %array, align 8
  %isnull = icmp eq double* %18, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %19 = bitcast double* %18 to i8*
  call void @_ZdaPv(i8* %19) #17
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIPdEvT_S1_(double* %__first, double* %__last) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %0, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt6uniqueIPdET_S1_S1_(double* %__first, double* %__last) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv()
  %call = call double* @_ZSt8__uniqueIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_(double* %0, double* %1)
  ret double* %call
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv() #2 comdat {
entry:
  %retval = alloca %"class.std::allocator", align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt8__uniqueIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %retval = alloca double*, align 8
  %__binary_pred = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %__dest = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %call = call double* @_ZSt15__adjacent_findIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_(double* %0, double* %1)
  store double* %call, double** %__first.addr, align 8
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double*, double** %__last.addr, align 8
  %cmp = icmp eq double* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double*, double** %__last.addr, align 8
  store double* %4, double** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load double*, double** %__first.addr, align 8
  store double* %5, double** %__dest, align 8
  %6 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %7 = load double*, double** %__first.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %7, i32 1
  store double* %incdec.ptr1, double** %__first.addr, align 8
  %8 = load double*, double** %__last.addr, align 8
  %cmp2 = icmp ne double* %incdec.ptr1, %8
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load double*, double** %__dest, align 8
  %10 = load double*, double** %__first.addr, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__binary_pred, double* %9, double* %10)
  br i1 %call3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %while.body
  %11 = load double*, double** %__first.addr, align 8
  %12 = load double, double* %11, align 8
  %13 = load double*, double** %__dest, align 8
  %incdec.ptr5 = getelementptr inbounds double, double* %13, i32 1
  store double* %incdec.ptr5, double** %__dest, align 8
  store double %12, double* %incdec.ptr5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load double*, double** %__dest, align 8
  %incdec.ptr7 = getelementptr inbounds double, double* %14, i32 1
  store double* %incdec.ptr7, double** %__dest, align 8
  store double* %incdec.ptr7, double** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load double*, double** %retval, align 8
  ret double* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt15__adjacent_findIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %retval = alloca double*, align 8
  %__binary_pred = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__next = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %cmp = icmp eq double* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__last.addr, align 8
  store double* %2, double** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load double*, double** %__first.addr, align 8
  store double* %3, double** %__next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.end
  %4 = load double*, double** %__next, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %__next, align 8
  %5 = load double*, double** %__last.addr, align 8
  %cmp1 = icmp ne double* %incdec.ptr, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load double*, double** %__first.addr, align 8
  %7 = load double*, double** %__next, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__binary_pred, double* %6, double* %7)
  br i1 %call, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  %8 = load double*, double** %__first.addr, align 8
  store double* %8, double** %retval, align 8
  br label %return

if.end3:                                          ; preds = %while.body
  %9 = load double*, double** %__next, align 8
  store double* %9, double** %__first.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load double*, double** %__last.addr, align 8
  store double* %10, double** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then2, %if.then
  %11 = load double*, double** %retval, align 8
  ret double* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %this, double* %__it1, double* %__it2) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__it1.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__it2.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp oeq double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #2 comdat {
entry:
  %retval = alloca %"class.std::allocator", align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp1 = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double*, double** %__last.addr, align 8
  %4 = load double*, double** %__last.addr, align 8
  %5 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %call = call i64 @_ZSt4__lgl(i64 %sub.ptr.div)
  %mul = mul nsw i64 %call, 2
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(double* %2, double* %3, i64 %mul)
  %6 = load double*, double** %__first.addr, align 8
  %7 = load double*, double** %__last.addr, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZSt4__lgl(i64 %__n) #2 comdat {
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
define linkonce_odr void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(double* %__first, double* %__last, i64 %__depth_limit) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %__cut = alloca double*, align 8
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__depth_limit.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load double*, double** %__first.addr, align 8
  %4 = load double*, double** %__last.addr, align 8
  %5 = load double*, double** %__last.addr, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(double* %3, double* %4, double* %5)
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__last.addr, align 8
  %call = call double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(double* %7, double* %8)
  store double* %call, double** %__cut, align 8
  %9 = load double*, double** %__cut, align 8
  %10 = load double*, double** %__last.addr, align 8
  %11 = load i64, i64* %__depth_limit.addr, align 8
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(double* %9, double* %10, i64 %11)
  %12 = load double*, double** %__cut, align 8
  store double* %12, double** %__last.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double*, double** %__first.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %3, i64 16
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %2, double* %add.ptr)
  %4 = load double*, double** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds double, double* %4, i64 16
  %5 = load double*, double** %__last.addr, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %add.ptr1, double* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load double*, double** %__first.addr, align 8
  %7 = load double*, double** %__last.addr, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %6, double* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__val = alloca double, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp5 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %cmp = icmp eq double* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load double*, double** %__first.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %2, i64 1
  store double* %add.ptr, double** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load double*, double** %__i, align 8
  %4 = load double*, double** %__last.addr, align 8
  %cmp1 = icmp ne double* %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double*, double** %__i, align 8
  %6 = load double*, double** %__first.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  %7 = load double*, double** %__i, align 8
  %8 = load double, double* %7, align 8
  store double %8, double* %__val, align 8
  %9 = load double*, double** %__first.addr, align 8
  %10 = load double*, double** %__i, align 8
  %11 = load double*, double** %__i, align 8
  %add.ptr3 = getelementptr inbounds double, double* %11, i64 1
  %call4 = call double* @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(double* %9, double* %10, double* %add.ptr3)
  %12 = load double, double* %__val, align 8
  %13 = load double*, double** %__first.addr, align 8
  store double %12, double* %13, align 8
  br label %if.end6

if.else:                                          ; preds = %for.body
  %14 = load double*, double** %__i, align 8
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(double* %14)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %15 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %15, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp1 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  store double* %0, double** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load double*, double** %__i, align 8
  %2 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double*, double** %__i, align 8
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(double* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #0 comdat {
entry:
  %retval = alloca %"class.std::allocator", align 1
  %0 = alloca %"class.std::allocator", align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%"class.std::allocator"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__last.addr = alloca double*, align 8
  %__val = alloca double, align 8
  %__next = alloca double*, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %__val, align 8
  %2 = load double*, double** %__last.addr, align 8
  store double* %2, double** %__next, align 8
  %3 = load double*, double** %__next, align 8
  %incdec.ptr = getelementptr inbounds double, double* %3, i32 -1
  store double* %incdec.ptr, double** %__next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load double*, double** %__next, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(%"class.std::allocator"* %__comp, double* dereferenceable(8) %__val, double* %4)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load double*, double** %__next, align 8
  %6 = load double, double* %5, align 8
  %7 = load double*, double** %__last.addr, align 8
  store double %6, double* %7, align 8
  %8 = load double*, double** %__next, align 8
  store double* %8, double** %__last.addr, align 8
  %9 = load double*, double** %__next, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %9, i32 -1
  store double* %incdec.ptr1, double** %__next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load double, double* %__val, align 8
  %11 = load double*, double** %__last.addr, align 8
  store double %10, double* %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(%"class.std::allocator"* %this, double* dereferenceable(8) %__val, double* %__it) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__val.addr = alloca double*, align 8
  %__it.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__it.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %this, double* %__it1, double* %__it2) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__it1.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__it2.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__miter_baseIPdET_S1_(double* %__it) #2 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  ret double* %0
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double* %__it) #2 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  ret double* %0
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
define linkonce_odr double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #2 comdat align 2 {
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(double* %0, double* %1, double* %2)
  %3 = load double*, double** %__first.addr, align 8
  %4 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %3, double* %4, %"class.std::allocator"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__mid = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp4 = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds double, double* %0, i64 %div
  store double* %add.ptr, double** %__mid, align 8
  %3 = load double*, double** %__first.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double*, double** %__mid, align 8
  %6 = load double*, double** %__last.addr, align 8
  %add.ptr2 = getelementptr inbounds double, double* %6, i64 -1
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(double* %3, double* %add.ptr1, double* %5, double* %add.ptr2)
  %7 = load double*, double** %__first.addr, align 8
  %add.ptr3 = getelementptr inbounds double, double* %7, i64 1
  %8 = load double*, double** %__last.addr, align 8
  %9 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(double* %add.ptr3, double* %8, double* %9)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(double* %__result, double* %__a, double* %__b, double* %__c) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__result.addr = alloca double*, align 8
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  %__c.addr = alloca double*, align 8
  store double* %__result, double** %__result.addr, align 8
  store double* %__a, double** %__a.addr, align 8
  store double* %__b, double** %__b.addr, align 8
  store double* %__c, double** %__c.addr, align 8
  %0 = load double*, double** %__a.addr, align 8
  %1 = load double*, double** %__b.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %0, double* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double*, double** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %2, double* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load double*, double** %__result.addr, align 8
  %5 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %4, double* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load double*, double** %__a.addr, align 8
  %7 = load double*, double** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %6, double* %7)
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %8 = load double*, double** %__result.addr, align 8
  %9 = load double*, double** %__c.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %8, double* %9)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %10 = load double*, double** %__result.addr, align 8
  %11 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %10, double* %11)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end16

if.else7:                                         ; preds = %entry
  %12 = load double*, double** %__a.addr, align 8
  %13 = load double*, double** %__c.addr, align 8
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %12, double* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load double*, double** %__result.addr, align 8
  %15 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %14, double* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load double*, double** %__b.addr, align 8
  %17 = load double*, double** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %16, double* %17)
  br i1 %call11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %18 = load double*, double** %__result.addr, align 8
  %19 = load double*, double** %__c.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %18, double* %19)
  br label %if.end14

if.else13:                                        ; preds = %if.else10
  %20 = load double*, double** %__result.addr, align 8
  %21 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %20, double* %21)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(double* %__first, double* %__last, double* %__pivot) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__pivot.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__pivot, double** %__pivot.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__pivot.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %0, double* %1)
  br i1 %call, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %2 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %2, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %3 = load double*, double** %__last.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, double* %3, i32 -1
  store double* %incdec.ptr3, double** %__last.addr, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %4 = load double*, double** %__pivot.addr, align 8
  %5 = load double*, double** %__last.addr, align 8
  %call5 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %4, double* %5)
  br i1 %call5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %6 = load double*, double** %__last.addr, align 8
  %incdec.ptr7 = getelementptr inbounds double, double* %6, i32 -1
  store double* %incdec.ptr7, double** %__last.addr, align 8
  br label %while.cond4

while.end8:                                       ; preds = %while.cond4
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__last.addr, align 8
  %cmp = icmp ult double* %7, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  %9 = load double*, double** %__first.addr, align 8
  ret double* %9

if.end:                                           ; preds = %while.end8
  %10 = load double*, double** %__first.addr, align 8
  %11 = load double*, double** %__last.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %10, double* %11)
  %12 = load double*, double** %__first.addr, align 8
  %incdec.ptr9 = getelementptr inbounds double, double* %12, i32 1
  store double* %incdec.ptr9, double** %__first.addr, align 8
  br label %while.body
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %__a, double* %__b) #0 comdat {
entry:
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  store double* %__a, double** %__a.addr, align 8
  store double* %__b, double** %__b.addr, align 8
  %0 = load double*, double** %__a.addr, align 8
  %1 = load double*, double** %__b.addr, align 8
  call void @_ZNSt11__iter_swapILb1EE9iter_swapIPdS2_EEvT_T0_(double* %0, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11__iter_swapILb1EE9iter_swapIPdS2_EEvT_T0_(double* %__a, double* %__b) #0 comdat align 2 {
entry:
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  store double* %__a, double** %__a.addr, align 8
  store double* %__b, double** %__b.addr, align 8
  %0 = load double*, double** %__a.addr, align 8
  %1 = load double*, double** %__b.addr, align 8
  call void @_ZSt4swapIdEvRT_S1_(double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt4swapIdEvRT_S1_(double* dereferenceable(8) %__a, double* dereferenceable(8) %__b) #2 comdat {
entry:
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  %__tmp = alloca double, align 8
  store double* %__a, double** %__a.addr, align 8
  store double* %__b, double** %__b.addr, align 8
  %0 = load double*, double** %__a.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %__tmp, align 8
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double, double* %2, align 8
  %4 = load double*, double** %__a.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double, double* %__tmp, align 8
  %6 = load double*, double** %__b.addr, align 8
  store double %5, double* %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %0, double* %1, %"class.std::allocator"* dereferenceable(1) %__comp)
  %2 = load double*, double** %__middle.addr, align 8
  store double* %2, double** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load double*, double** %__i, align 8
  %4 = load double*, double** %__last.addr, align 8
  %cmp = icmp ult double* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double*, double** %__i, align 8
  %6 = load double*, double** %__first.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__middle.addr, align 8
  %9 = load double*, double** %__i, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(double* %7, double* %8, double* %9, %"class.std::allocator"* dereferenceable(1) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %__first, double* %__last, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double*, double** %__last.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %2, i32 -1
  store double* %incdec.ptr, double** %__last.addr, align 8
  %3 = load double*, double** %__first.addr, align 8
  %4 = load double*, double** %__last.addr, align 8
  %5 = load double*, double** %__last.addr, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(double* %3, double* %4, double* %5, %"class.std::allocator"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(double* %__first, double* %__last, double* %__result, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %0 = load double*, double** %__result.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %__value, align 8
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double, double* %2, align 8
  %4 = load double*, double** %__result.addr, align 8
  store double %3, double* %4, align 8
  %5 = load double*, double** %__first.addr, align 8
  %6 = load double*, double** %__last.addr, align 8
  %7 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %8 = load double, double* %__value, align 8
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(double* %5, i64 0, i64 %sub.ptr.div, double %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(double* %__first, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  store double %__value, double* %__value.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %0, i64* %__topIndex, align 8
  %1 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %1, i64* %__secondChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %__secondChild, align 8
  %3 = load i64, i64* %__len.addr, align 8
  %sub = sub nsw i64 %3, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %__secondChild, align 8
  %add = add nsw i64 %4, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %__secondChild, align 8
  %5 = load double*, double** %__first.addr, align 8
  %6 = load i64, i64* %__secondChild, align 8
  %add.ptr = getelementptr inbounds double, double* %5, i64 %6
  %7 = load double*, double** %__first.addr, align 8
  %8 = load i64, i64* %__secondChild, align 8
  %sub1 = sub nsw i64 %8, 1
  %add.ptr2 = getelementptr inbounds double, double* %7, i64 %sub1
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%"class.std::allocator"* %__comp, double* %add.ptr, double* %add.ptr2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load double*, double** %__first.addr, align 8
  %11 = load i64, i64* %__secondChild, align 8
  %add.ptr3 = getelementptr inbounds double, double* %10, i64 %11
  %12 = load double, double* %add.ptr3, align 8
  %13 = load double*, double** %__first.addr, align 8
  %14 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr4 = getelementptr inbounds double, double* %13, i64 %14
  store double %12, double* %add.ptr4, align 8
  %15 = load i64, i64* %__secondChild, align 8
  store i64 %15, i64* %__holeIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %__len.addr, align 8
  %and = and i64 %16, 1
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.end
  %17 = load i64, i64* %__secondChild, align 8
  %18 = load i64, i64* %__len.addr, align 8
  %sub6 = sub nsw i64 %18, 2
  %div7 = sdiv i64 %sub6, 2
  %cmp8 = icmp eq i64 %17, %div7
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %19 = load i64, i64* %__secondChild, align 8
  %add10 = add nsw i64 %19, 1
  %mul11 = mul nsw i64 2, %add10
  store i64 %mul11, i64* %__secondChild, align 8
  %20 = load double*, double** %__first.addr, align 8
  %21 = load i64, i64* %__secondChild, align 8
  %sub12 = sub nsw i64 %21, 1
  %add.ptr13 = getelementptr inbounds double, double* %20, i64 %sub12
  %22 = load double, double* %add.ptr13, align 8
  %23 = load double*, double** %__first.addr, align 8
  %24 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr14 = getelementptr inbounds double, double* %23, i64 %24
  store double %22, double* %add.ptr14, align 8
  %25 = load i64, i64* %__secondChild, align 8
  %sub15 = sub nsw i64 %25, 1
  store i64 %sub15, i64* %__holeIndex.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %land.lhs.true, %while.end
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"class.std::allocator"* %__cmp)
  %26 = load double*, double** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %29 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(double* %26, i64 %27, i64 %28, double %29, %"class.std::allocator"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %0 = alloca %"class.std::allocator", align 1
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(double* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__parent = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  %sub = sub nsw i64 %0, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__holeIndex.addr, align 8
  %2 = load i64, i64* %__topIndex.addr, align 8
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(%"class.std::allocator"* %3, double* %add.ptr, double* dereferenceable(8) %__value.addr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load double*, double** %__first.addr, align 8
  %8 = load i64, i64* %__parent, align 8
  %add.ptr1 = getelementptr inbounds double, double* %7, i64 %8
  %9 = load double, double* %add.ptr1, align 8
  %10 = load double*, double** %__first.addr, align 8
  %11 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr2 = getelementptr inbounds double, double* %10, i64 %11
  store double %9, double* %add.ptr2, align 8
  %12 = load i64, i64* %__parent, align 8
  store i64 %12, i64* %__holeIndex.addr, align 8
  %13 = load i64, i64* %__holeIndex.addr, align 8
  %sub3 = sub nsw i64 %13, 1
  %div4 = sdiv i64 %sub3, 2
  store i64 %div4, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load double, double* %__value.addr, align 8
  %15 = load double*, double** %__first.addr, align 8
  %16 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr5 = getelementptr inbounds double, double* %15, i64 %16
  store double %14, double* %add.ptr5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(%"class.std::allocator"* %this, double* %__it, double* dereferenceable(8) %__val) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__it.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__val.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %__first, double* %__last, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double*, double** %__last.addr, align 8
  %3 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint double* %2 to i64
  %sub.ptr.rhs.cast2 = ptrtoint double* %3 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  store i64 %sub.ptr.div4, i64* %__len, align 8
  %4 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %4, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end7
  %5 = load double*, double** %__first.addr, align 8
  %6 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %5, i64 %6
  %7 = load double, double* %add.ptr, align 8
  store double %7, double* %__value, align 8
  %8 = load double*, double** %__first.addr, align 8
  %9 = load i64, i64* %__parent, align 8
  %10 = load i64, i64* %__len, align 8
  %11 = load double, double* %__value, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(double* %8, i64 %9, i64 %10, double %11)
  %13 = load i64, i64* %__parent, align 8
  %cmp5 = icmp eq i64 %13, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  br label %return

if.end7:                                          ; preds = %while.body
  %14 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #6

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
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #2 comdat align 2 {
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

; Function Attrs: noinline uwtable
define void @_Z19vector_pointer_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %container = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %ref.tmp) #1
  invoke void @_ZNSt6vectorIdSaIdEEC2IPdEET_S4_RKS0_(%"class.std::vector"* %container, double* %0, double* %1, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp) #1
  %call = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %container)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %call4 = invoke dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %container)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce7, i32 0, i32 0
  store double* %call6, double** %coerce.dive8, align 8
  %call10 = invoke dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce7)
          to label %invoke.cont9 unwind label %lpad1

invoke.cont9:                                     ; preds = %invoke.cont5
  invoke void @_ZSt4sortIPdEvT_S1_(double* %call4, double* %call10)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont9
  %call13 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %container)
          to label %invoke.cont12 unwind label %lpad1

invoke.cont12:                                    ; preds = %invoke.cont11
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce14, i32 0, i32 0
  store double* %call13, double** %coerce.dive15, align 8
  %call17 = invoke dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce14)
          to label %invoke.cont16 unwind label %lpad1

invoke.cont16:                                    ; preds = %invoke.cont12
  %call19 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %container)
          to label %invoke.cont18 unwind label %lpad1

invoke.cont18:                                    ; preds = %invoke.cont16
  %coerce.dive21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce20, i32 0, i32 0
  store double* %call19, double** %coerce.dive21, align 8
  %call23 = invoke dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce20)
          to label %invoke.cont22 unwind label %lpad1

invoke.cont22:                                    ; preds = %invoke.cont18
  %call25 = invoke double* @_ZSt6uniqueIPdET_S1_S1_(double* %call17, double* %call23)
          to label %invoke.cont24 unwind label %lpad1

invoke.cont24:                                    ; preds = %invoke.cont22
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %container)
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp) #1
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont22, %invoke.cont18, %invoke.cont16, %invoke.cont12, %invoke.cont11, %invoke.cont9, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %container)
          to label %invoke.cont26 unwind label %terminate.lpad

invoke.cont26:                                    ; preds = %lpad1
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont26, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val27 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val27

terminate.lpad:                                   ; preds = %lpad1
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEEC2IPdEET_S4_RKS0_(%"class.std::vector"* %this, double* %__first, double* %__last, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(%"struct.std::_Vector_base"* %0, %"class.std::allocator"* dereferenceable(1) %1)
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double*, double** %__last.addr, align 8
  invoke void @_ZNSt6vectorIdSaIdEE22_M_initialize_dispatchIPdEEvT_S4_St12__false_type(%"class.std::vector"* %this1, double* %2, double* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %7)
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
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, double** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  ret double* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, double** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  ret double* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, double** dereferenceable(8) %__i) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca double**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store double** %__i, double*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double**, double*** %__i.addr, align 8
  %1 = load double*, double** %0, align 8
  store double* %1, double** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(%"struct.std::_Vector_base"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE22_M_initialize_dispatchIPdEEvT_S4_St12__false_type(%"class.std::vector"* %this, double* %__first, double* %__last) #0 comdat align 2 {
entry:
  %0 = alloca %"class.std::allocator", align 1
  %this.addr = alloca %"class.std::vector"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::allocator", align 1
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = bitcast %"class.std::allocator"* %ref.tmp to %"class.std::allocator"*
  call void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIPdEEvT_S4_St20forward_iterator_tag(%"class.std::vector"* %this1, double* %1, double* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIPdEEvT_S4_St20forward_iterator_tag(%"class.std::vector"* %this, double* %__first, double* %__last) #0 comdat align 2 {
entry:
  %0 = alloca %"class.std::allocator", align 1
  %this.addr = alloca %"class.std::vector"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__n = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %call = call i64 @_ZSt8distanceIPdENSt15iterator_traitsIT_E15difference_typeES2_S2_(double* %1, double* %2)
  store i64 %call, i64* %__n, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %4 = load i64, i64* %__n, align 8
  %call2 = call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %3, i64 %4)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store double* %call2, double** %_M_start, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %7 = load double*, double** %_M_start4, align 8
  %8 = load i64, i64* %__n, align 8
  %add.ptr = getelementptr inbounds double, double* %7, i64 %8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl5, i32 0, i32 2
  store double* %add.ptr, double** %_M_end_of_storage, align 8
  %10 = load double*, double** %__first.addr, align 8
  %11 = load double*, double** %__last.addr, align 8
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %_M_start7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl6, i32 0, i32 0
  %13 = load double*, double** %_M_start7, align 8
  %14 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call8 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %14)
  %call9 = call double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %10, double* %11, double* %13, %"class.std::allocator"* dereferenceable(1) %call8)
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  store double* %call9, double** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt8distanceIPdENSt15iterator_traitsIT_E15difference_typeES2_S2_(double* %__first, double* %__last) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(double** dereferenceable(8) %__first.addr)
  %call = call i64 @_ZSt10__distanceIPdENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(double* %0, double* %1)
  ret i64 %call
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
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %call, %cond.true ], [ null, %cond.false ]
  ret double* %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %__first, double* %__last, double* %__result, %"class.std::allocator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
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
define linkonce_odr double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.std::allocator"* %1, i64 %2, i8* null)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.std::allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.std::allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to double*
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.std::allocator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(double** dereferenceable(8)) #2 comdat {
entry:
  %retval = alloca %"class.std::allocator", align 1
  %.addr = alloca double**, align 8
  store double** %0, double*** %.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZSt10__distanceIPdENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(double* %__first, double* %__last) #2 comdat {
entry:
  %0 = alloca %"class.std::allocator", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaIdEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #1
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 0
  store double* null, double** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 1
  store double* null, double** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 2
  store double* null, double** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdEC2ERKS_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %2) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z20vector_iterator_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %container = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %ref.tmp) #1
  invoke void @_ZNSt6vectorIdSaIdEEC2IPdEET_S4_RKS0_(%"class.std::vector"* %container, double* %0, double* %1, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp) #1
  %call = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %container)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %call5 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %container)
          to label %invoke.cont4 unwind label %lpad1

invoke.cont4:                                     ; preds = %invoke.cont2
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  store double* %call5, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %3 = load double*, double** %coerce.dive8, align 8
  invoke void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(double* %2, double* %3)
          to label %invoke.cont9 unwind label %lpad1

invoke.cont9:                                     ; preds = %invoke.cont4
  %call12 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %container)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont9
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10, i32 0, i32 0
  store double* %call12, double** %coerce.dive13, align 8
  %call16 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %container)
          to label %invoke.cont15 unwind label %lpad1

invoke.cont15:                                    ; preds = %invoke.cont11
  %coerce.dive17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp14, i32 0, i32 0
  store double* %call16, double** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10, i32 0, i32 0
  %4 = load double*, double** %coerce.dive18, align 8
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp14, i32 0, i32 0
  %5 = load double*, double** %coerce.dive19, align 8
  %call21 = invoke double* @_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_(double* %4, double* %5)
          to label %invoke.cont20 unwind label %lpad1

invoke.cont20:                                    ; preds = %invoke.cont15
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store double* %call21, double** %coerce.dive22, align 8
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %container)
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp) #1
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont15, %invoke.cont11, %invoke.cont9, %invoke.cont4, %invoke.cont2, %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %container)
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %lpad1
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont23, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val24

terminate.lpad:                                   ; preds = %lpad1
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  call void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %4, double* %5)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv()
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  %call = call double* @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(double* %4, double* %5)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store double* %call, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %6 = load double*, double** %coerce.dive7, align 8
  ret double* %6
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__binary_pred = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %__dest = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  %call = call double* @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(double* %4, double* %5)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive6, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %call7 = call zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__dest to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %call8 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %call9 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %call10 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %call9, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %16 = load double*, double** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %17 = load double*, double** %coerce.dive14, align 8
  %call15 = call zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__binary_pred, double* %16, double* %17)
  br i1 %call15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %while.body
  %call17 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %18 = load double, double* %call17, align 8
  %call18 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__dest)
  %call19 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %call18)
  store double %18, double* %call19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call21 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__dest)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %call21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %while.end, %if.then
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %21 = load double*, double** %coerce.dive22, align 8
  ret double* %21
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__binary_pred = alloca %"class.std::allocator", align 1
  %__next = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %call2 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  %call3 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %call2, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive6, align 8
  %call7 = call zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__binary_pred, double* %8, double* %9)
  br i1 %call7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  br label %return

if.end9:                                          ; preds = %while.body
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %16 = load double*, double** %coerce.dive10, align 8
  ret double* %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #2 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %cmp = icmp eq double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 1
  store double* %incdec.ptr, double** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %cmp = icmp ne double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %this, double* %__it1.coerce, double* %__it2.coerce) #2 comdat align 2 {
entry:
  %__it1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::allocator"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it1, i32 0, i32 0
  store double* %__it1.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it2, i32 0, i32 0
  store double* %__it2.coerce, double** %coerce.dive1, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this2 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it1)
  %0 = load double, double* %call, align 8
  %call3 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it2)
  %1 = load double, double* %call3, align 8
  %cmp = fcmp oeq double %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret double** %_M_current
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.std::allocator", align 1
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call3 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %call4 = call i64 @_ZSt4__lgl(i64 %call3)
  %mul = mul nsw i64 %call4, 2
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive7, align 8
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(double* %4, double* %5, i64 %mul)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %10 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9, i32 0, i32 0
  %11 = load double*, double** %coerce.dive12, align 8
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %10, double* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #2 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(double* %__first.coerce, double* %__last.coerce, i64 %__depth_limit) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.std::allocator", align 1
  %__cut = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.std::allocator", align 1
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp18 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
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
  %7 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %8 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive8, align 8
  call void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(double* %7, double* %8, double* %9)
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
  %15 = load double*, double** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive13, align 8
  %call14 = call double* @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(double* %15, double* %16)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__cut, i32 0, i32 0
  store double* %call14, double** %coerce.dive15, align 8
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load i64, i64* %__depth_limit.addr, align 8
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %22 = load double*, double** %coerce.dive19, align 8
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17, i32 0, i32 0
  %23 = load double*, double** %coerce.dive20, align 8
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(double* %22, double* %23, i64 %21)
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %25 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.std::allocator", align 1
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.std::allocator", align 1
  %agg.tmp15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp17 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp sgt i64 %call, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call3 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 16)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  store double* %call3, double** %coerce.dive4, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %3 = load double*, double** %coerce.dive7, align 8
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %2, double* %3)
  %call9 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 16)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  store double* %call9, double** %coerce.dive10, align 8
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %6 = load double*, double** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %7 = load double*, double** %coerce.dive14, align 8
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %6, double* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp15 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp15, i32 0, i32 0
  %12 = load double*, double** %coerce.dive18, align 8
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %13 = load double*, double** %coerce.dive19, align 8
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %12, double* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca double*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %0, i64 %1
  store double* %add.ptr, double** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, double** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive, align 8
  ret double* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__val = alloca double, align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp23 = alloca %"class.std::allocator", align 1
  %agg.tmp24 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %call2 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 1)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__i, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %call4 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0
  %5 = load double*, double** %coerce.dive7, align 8
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %4, double* %5)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %call10 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  %6 = load double, double* %call10, align 8
  store double %6, double* %__val, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %call14 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__i, i64 1)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  store double* %call14, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %11 = load double*, double** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %12 = load double*, double** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %13 = load double*, double** %coerce.dive18, align 8
  %call19 = call double* @_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_(double* %11, double* %12, double* %13)
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store double* %call19, double** %coerce.dive20, align 8
  %14 = load double, double* %__val, align 8
  %call21 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  store double %14, double* %call21, align 8
  br label %if.end26

if.else:                                          ; preds = %for.body
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp22 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp22, i32 0, i32 0
  %17 = load double*, double** %coerce.dive25, align 8
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_(double* %17)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %call27 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_(double* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call5 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_(double* %__last.coerce) #0 comdat {
entry:
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %__val = alloca double, align 8
  %__next = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  %0 = load double, double* %call, align 8
  store double %0, double* %__val, align 8
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call1 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive2, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_(%"class.std::allocator"* %__comp, double* dereferenceable(8) %__val, double* %5)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  %6 = load double, double* %call4, align 8
  %call5 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  store double %6, double* %call5, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %call6 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__next)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load double, double* %__val, align 8
  %call7 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  store double %9, double* %call7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 -1
  store double* %incdec.ptr, double** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_(%"class.std::allocator"* %this, double* dereferenceable(8) %__val, double* %__it.coerce) #2 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__val.addr = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double, double* %0, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %2 = load double, double* %call, align 8
  %cmp = fcmp olt double %1, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %this, double* %__it1.coerce, double* %__it2.coerce) #2 comdat align 2 {
entry:
  %__it1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::allocator"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it1, i32 0, i32 0
  store double* %__it1.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it2, i32 0, i32 0
  store double* %__it2.coerce, double** %coerce.dive1, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this2 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it1)
  %0 = load double, double* %call, align 8
  %call3 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it2)
  %1 = load double, double* %call3, align 8
  %cmp = fcmp olt double %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_(double* %__first.coerce, double* %__last.coerce, double* %__result.coerce) #0 comdat {
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
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store double* %__result.coerce, double** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %2 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(double* %2)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive5, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %5 = load double*, double** %coerce.dive8, align 8
  %call9 = call double* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(double* %5)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  store double* %call9, double** %coerce.dive10, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  %9 = load double*, double** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %10 = load double*, double** %coerce.dive14, align 8
  %call15 = call double* @_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_(double* %8, double* %9, double* %10)
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store double* %call15, double** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %11 = load double*, double** %coerce.dive17, align 8
  ret double* %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(double* %__it.coerce) #2 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive1, align 8
  ret double* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_(double* %__first.coerce, double* %__last.coerce, double* %__result.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp = alloca double*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store double* %__result.coerce, double** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load double*, double** %coerce.dive3, align 8
  %call = call double* @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(double* %2)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  %call6 = call double* @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(double* %5)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %8 = load double*, double** %coerce.dive8, align 8
  %call9 = call double* @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(double* %8)
  %call10 = call double* @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(double* %call, double* %call6, double* %call9)
  store double* %call10, double** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, double** dereferenceable(8) %ref.tmp)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %9 = load double*, double** %coerce.dive11, align 8
  ret double* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(double* %__it.coerce) #2 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %0 = load double*, double** %call, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(double* %__first.coerce, double* %__middle.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__middle = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.std::allocator", align 1
  %agg.tmp9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__middle, i32 0, i32 0
  store double* %__middle.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive2, align 8
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
  %6 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %7 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %8 = load double*, double** %coerce.dive8, align 8
  call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(double* %6, double* %7, double* %8)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp9, i32 0, i32 0
  %13 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp10, i32 0, i32 0
  %14 = load double*, double** %coerce.dive12, align 8
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(double* %13, double* %14, %"class.std::allocator"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %__mid = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.std::allocator", align 1
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp19 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp21 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %div = sdiv i64 %call, 2
  %call2 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %div)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__mid, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call5 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 1)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  store double* %call5, double** %coerce.dive6, align 8
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__mid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call9 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %__last, i64 1)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  store double* %call9, double** %coerce.dive10, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load double*, double** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %6 = load double*, double** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %7 = load double*, double** %coerce.dive15, align 8
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(double* %4, double* %5, double* %6, double* %7)
  %call17 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 1)
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  store double* %call17, double** %coerce.dive18, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp19 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %12 = load double*, double** %coerce.dive22, align 8
  %coerce.dive23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp19, i32 0, i32 0
  %13 = load double*, double** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20, i32 0, i32 0
  %14 = load double*, double** %coerce.dive24, align 8
  %call25 = call double* @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_(double* %12, double* %13, double* %14)
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store double* %call25, double** %coerce.dive26, align 8
  %coerce.dive27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %15 = load double*, double** %coerce.dive27, align 8
  ret double* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca double*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds double, double* %0, i64 %idx.neg
  store double* %add.ptr, double** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, double** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive, align 8
  ret double* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(double* %__result.coerce, double* %__a.coerce, double* %__b.coerce, double* %__c.coerce) #0 comdat {
entry:
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__c = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
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
  store double* %__result.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store double* %__a.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store double* %__b.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__c, i32 0, i32 0
  store double* %__c.coerce, double** %coerce.dive3, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load double*, double** %coerce.dive6, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %4, double* %5)
  br i1 %call, label %if.then, label %if.else33

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %10 = load double*, double** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp8, i32 0, i32 0
  %11 = load double*, double** %coerce.dive10, align 8
  %call11 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %10, double* %11)
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13 to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp14 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %16 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp14, i32 0, i32 0
  %17 = load double*, double** %coerce.dive16, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %16, double* %17)
  br label %if.end32

if.else:                                          ; preds = %if.then
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17 to i8*
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18 to i8*
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 8, i1 false)
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17, i32 0, i32 0
  %22 = load double*, double** %coerce.dive19, align 8
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp18, i32 0, i32 0
  %23 = load double*, double** %coerce.dive20, align 8
  %call21 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %22, double* %23)
  br i1 %call21, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp23 to i8*
  %25 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp24 to i8*
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp23, i32 0, i32 0
  %28 = load double*, double** %coerce.dive25, align 8
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp24, i32 0, i32 0
  %29 = load double*, double** %coerce.dive26, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %28, double* %29)
  br label %if.end

if.else27:                                        ; preds = %if.else
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp28 to i8*
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp29 to i8*
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 8, i1 false)
  %coerce.dive30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp28, i32 0, i32 0
  %34 = load double*, double** %coerce.dive30, align 8
  %coerce.dive31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp29, i32 0, i32 0
  %35 = load double*, double** %coerce.dive31, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %34, double* %35)
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
  %40 = load double*, double** %coerce.dive36, align 8
  %coerce.dive37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35, i32 0, i32 0
  %41 = load double*, double** %coerce.dive37, align 8
  %call38 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %40, double* %41)
  br i1 %call38, label %if.then39, label %if.else44

if.then39:                                        ; preds = %if.else33
  %42 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp40 to i8*
  %43 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 8, i32 8, i1 false)
  %44 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp41 to i8*
  %45 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 8, i1 false)
  %coerce.dive42 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp40, i32 0, i32 0
  %46 = load double*, double** %coerce.dive42, align 8
  %coerce.dive43 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp41, i32 0, i32 0
  %47 = load double*, double** %coerce.dive43, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %46, double* %47)
  br label %if.end61

if.else44:                                        ; preds = %if.else33
  %48 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp45 to i8*
  %49 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 8, i1 false)
  %50 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp46 to i8*
  %51 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %coerce.dive47 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp45, i32 0, i32 0
  %52 = load double*, double** %coerce.dive47, align 8
  %coerce.dive48 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp46, i32 0, i32 0
  %53 = load double*, double** %coerce.dive48, align 8
  %call49 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %52, double* %53)
  br i1 %call49, label %if.then50, label %if.else55

if.then50:                                        ; preds = %if.else44
  %54 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp51 to i8*
  %55 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 8, i1 false)
  %56 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp52 to i8*
  %57 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 8, i32 8, i1 false)
  %coerce.dive53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp51, i32 0, i32 0
  %58 = load double*, double** %coerce.dive53, align 8
  %coerce.dive54 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp52, i32 0, i32 0
  %59 = load double*, double** %coerce.dive54, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %58, double* %59)
  br label %if.end60

if.else55:                                        ; preds = %if.else44
  %60 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp56 to i8*
  %61 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 8, i32 8, i1 false)
  %62 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp57 to i8*
  %63 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 8, i32 8, i1 false)
  %coerce.dive58 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp56, i32 0, i32 0
  %64 = load double*, double** %coerce.dive58, align 8
  %coerce.dive59 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp57, i32 0, i32 0
  %65 = load double*, double** %coerce.dive59, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %64, double* %65)
  br label %if.end60

if.end60:                                         ; preds = %if.else55, %if.then50
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then39
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end32
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce, double* %__pivot.coerce) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__pivot = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp21 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__pivot, i32 0, i32 0
  store double* %__pivot.coerce, double** %coerce.dive2, align 8
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
  %4 = load double*, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load double*, double** %coerce.dive6, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %4, double* %5)
  br i1 %call, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond3
  %call8 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  br label %while.cond3

while.end:                                        ; preds = %while.cond3
  %call9 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  br label %while.cond10

while.cond10:                                     ; preds = %while.body16, %while.end
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__pivot to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp11, i32 0, i32 0
  %10 = load double*, double** %coerce.dive13, align 8
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %11 = load double*, double** %coerce.dive14, align 8
  %call15 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %10, double* %11)
  br i1 %call15, label %while.body16, label %while.end18

while.body16:                                     ; preds = %while.cond10
  %call17 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  br label %while.cond10

while.end18:                                      ; preds = %while.cond10
  %call19 = call zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call19, label %if.end, label %if.then

if.then:                                          ; preds = %while.end18
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %14 = load double*, double** %coerce.dive25, align 8
  ret double* %14

if.end:                                           ; preds = %while.end18
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp21 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp20, i32 0, i32 0
  %19 = load double*, double** %coerce.dive22, align 8
  %coerce.dive23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp21, i32 0, i32 0
  %20 = load double*, double** %coerce.dive23, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %19, double* %20)
  %call24 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #2 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %cmp = icmp ult double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %__a.coerce, double* %__b.coerce) #0 comdat {
entry:
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store double* %__a.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store double* %__b.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  call void @_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEvT_T0_(double* %4, double* %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEvT_T0_(double* %__a.coerce, double* %__b.coerce) #2 comdat align 2 {
entry:
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store double* %__a.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store double* %__b.coerce, double** %coerce.dive1, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__a)
  %call2 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__b)
  call void @_ZSt4swapIdEvRT_S1_(double* dereferenceable(8) %call, double* dereferenceable(8) %call2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(double* %__first.coerce, double* %__middle.coerce, double* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__middle = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__middle, i32 0, i32 0
  store double* %__middle.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive2, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(double* %4, double* %5, %"class.std::allocator"* dereferenceable(1) %__comp)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__middle to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp6, i32 0, i32 0
  %12 = load double*, double** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %13 = load double*, double** %coerce.dive9, align 8
  %call10 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %12, double* %13)
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
  %20 = load double*, double** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(double* %20, double* %21, double* %22, %"class.std::allocator"* dereferenceable(1) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call17 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(double* %__first.coerce, double* %__last.coerce, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last)
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load double*, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(double* %7, double* %8, double* %9, %"class.std::allocator"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(double* %__first.coerce, double* %__last.coerce, double* %__result.coerce, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store double* %__result.coerce, double** %coerce.dive2, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__result)
  %0 = load double, double* %call, align 8
  store double %0, double* %__value, align 8
  %call3 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %1 = load double, double* %call3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__result)
  store double %1, double* %call4, align 8
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call5 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %4 = load double, double* %__value, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load double*, double** %coerce.dive7, align 8
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(double* %6, i64 0, i64 %call5, double %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(double* %__first.coerce, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"class.std::allocator", align 1
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce25 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce29 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__cmp = alloca %"class.std::allocator", align 1
  %agg.tmp34 = alloca %"class.std::allocator", align 1
  %agg.tmp35 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  store double %__value, double* %__value.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %0, i64* %__topIndex, align 8
  %1 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %1, i64* %__secondChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %__secondChild, align 8
  %3 = load i64, i64* %__len.addr, align 8
  %sub = sub nsw i64 %3, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %__secondChild, align 8
  %add = add nsw i64 %4, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %__secondChild, align 8
  %5 = load i64, i64* %__secondChild, align 8
  %call = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %5)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive1, align 8
  %6 = load i64, i64* %__secondChild, align 8
  %sub3 = sub nsw i64 %6, 1
  %call4 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %sub3)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  store double* %call4, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp2, i32 0, i32 0
  %8 = load double*, double** %coerce.dive7, align 8
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"class.std::allocator"* %__comp, double* %7, double* %8)
  br i1 %call8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i64, i64* %__secondChild, align 8
  %call9 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %10)
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store double* %call9, double** %coerce.dive10, align 8
  %call11 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
  %11 = load double, double* %call11, align 8
  %12 = load i64, i64* %__holeIndex.addr, align 8
  %call12 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %12)
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce13, i32 0, i32 0
  store double* %call12, double** %coerce.dive14, align 8
  %call15 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce13)
  store double %11, double* %call15, align 8
  %13 = load i64, i64* %__secondChild, align 8
  store i64 %13, i64* %__holeIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i64, i64* %__len.addr, align 8
  %and = and i64 %14, 1
  %cmp16 = icmp eq i64 %and, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %while.end
  %15 = load i64, i64* %__secondChild, align 8
  %16 = load i64, i64* %__len.addr, align 8
  %sub17 = sub nsw i64 %16, 2
  %div18 = sdiv i64 %sub17, 2
  %cmp19 = icmp eq i64 %15, %div18
  br i1 %cmp19, label %if.then20, label %if.end33

if.then20:                                        ; preds = %land.lhs.true
  %17 = load i64, i64* %__secondChild, align 8
  %add21 = add nsw i64 %17, 1
  %mul22 = mul nsw i64 2, %add21
  store i64 %mul22, i64* %__secondChild, align 8
  %18 = load i64, i64* %__secondChild, align 8
  %sub23 = sub nsw i64 %18, 1
  %call24 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %sub23)
  %coerce.dive26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce25, i32 0, i32 0
  store double* %call24, double** %coerce.dive26, align 8
  %call27 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce25)
  %19 = load double, double* %call27, align 8
  %20 = load i64, i64* %__holeIndex.addr, align 8
  %call28 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %20)
  %coerce.dive30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce29, i32 0, i32 0
  store double* %call28, double** %coerce.dive30, align 8
  %call31 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce29)
  store double %19, double* %call31, align 8
  %21 = load i64, i64* %__secondChild, align 8
  %sub32 = sub nsw i64 %21, 1
  store i64 %sub32, i64* %__holeIndex.addr, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %land.lhs.true, %while.end
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"class.std::allocator"* %__cmp)
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  %24 = load i64, i64* %__holeIndex.addr, align 8
  %25 = load i64, i64* %__topIndex, align 8
  %26 = load double, double* %__value.addr, align 8
  %coerce.dive36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35, i32 0, i32 0
  %27 = load double*, double** %coerce.dive36, align 8
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_(double* %27, i64 %24, i64 %25, double %26, %"class.std::allocator"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_(double* %__first.coerce, i64 %__holeIndex, i64 %__topIndex, double %__value, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__parent = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  %sub = sub nsw i64 %0, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__holeIndex.addr, align 8
  %2 = load i64, i64* %__topIndex.addr, align 8
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  %4 = load i64, i64* %__parent, align 8
  %call = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %4)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive2, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_(%"class.std::allocator"* %3, double* %5, double* dereferenceable(8) %__value.addr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %call3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i64, i64* %__parent, align 8
  %call4 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %7)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store double* %call4, double** %coerce.dive5, align 8
  %call6 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
  %8 = load double, double* %call6, align 8
  %9 = load i64, i64* %__holeIndex.addr, align 8
  %call7 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %9)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce8, i32 0, i32 0
  store double* %call7, double** %coerce.dive9, align 8
  %call10 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce8)
  store double %8, double* %call10, align 8
  %10 = load i64, i64* %__parent, align 8
  store i64 %10, i64* %__holeIndex.addr, align 8
  %11 = load i64, i64* %__holeIndex.addr, align 8
  %sub11 = sub nsw i64 %11, 1
  %div12 = sdiv i64 %sub11, 2
  store i64 %div12, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load double, double* %__value.addr, align 8
  %13 = load i64, i64* %__holeIndex.addr, align 8
  %call13 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %13)
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce14, i32 0, i32 0
  store double* %call13, double** %coerce.dive15, align 8
  %call16 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce14)
  store double %12, double* %call16, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_(%"class.std::allocator"* %this, double* %__it.coerce, double* dereferenceable(8) %__val) #2 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__val.addr = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %0 = load double, double* %call, align 8
  %1 = load double*, double** %__val.addr, align 8
  %2 = load double, double* %1, align 8
  %cmp = fcmp olt double %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(double* %__first.coerce, double* %__last.coerce, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp slt i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  store i64 %call2, i64* %__len, align 8
  %0 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %0, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end10
  %1 = load i64, i64* %__parent, align 8
  %call3 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %1)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store double* %call3, double** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce)
  %2 = load double, double* %call5, align 8
  store double %2, double* %__value, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load i64, i64* %__parent, align 8
  %6 = load i64, i64* %__len, align 8
  %7 = load double, double* %__value, align 8
  %8 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(double* %9, i64 %5, i64 %6, double %7)
  %10 = load i64, i64* %__parent, align 8
  %cmp8 = icmp eq i64 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  br label %return

if.end10:                                         ; preds = %while.body
  %11 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then9, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z10deque_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %container = alloca %"class.std::deque", align 8
  %ref.tmp = alloca double, align 8
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp10 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp12 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp14 = alloca %"struct.std::_Deque_iterator", align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %last.addr, align 8
  %1 = load double*, double** %first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store double 0.000000e+00, double* %ref.tmp, align 8
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %ref.tmp1) #1
  invoke void @_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_(%"class.std::deque"* %container, i64 %sub.ptr.div, double* dereferenceable(8) %ref.tmp, %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp1) #1
  %2 = load double*, double** %first.addr, align 8
  %3 = load double*, double** %last.addr, align 8
  invoke void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %container)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  invoke void @_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_(%"struct.std::_Deque_iterator"* sret %tmp, double* %2, double* %3, %"struct.std::_Deque_iterator"* %agg.tmp)
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  invoke void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp5, %"class.std::deque"* %container)
          to label %invoke.cont6 unwind label %lpad2

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @_ZNSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp7, %"class.std::deque"* %container)
          to label %invoke.cont8 unwind label %lpad2

invoke.cont8:                                     ; preds = %invoke.cont6
  invoke void @_ZSt4sortISt15_Deque_iteratorIdRdPdEEvT_S4_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %agg.tmp7)
          to label %invoke.cont9 unwind label %lpad2

invoke.cont9:                                     ; preds = %invoke.cont8
  invoke void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp10, %"class.std::deque"* %container)
          to label %invoke.cont11 unwind label %lpad2

invoke.cont11:                                    ; preds = %invoke.cont9
  invoke void @_ZNSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp12, %"class.std::deque"* %container)
          to label %invoke.cont13 unwind label %lpad2

invoke.cont13:                                    ; preds = %invoke.cont11
  invoke void @_ZSt6uniqueISt15_Deque_iteratorIdRdPdEET_S4_S4_(%"struct.std::_Deque_iterator"* sret %tmp14, %"struct.std::_Deque_iterator"* %agg.tmp10, %"struct.std::_Deque_iterator"* %agg.tmp12)
          to label %invoke.cont15 unwind label %lpad2

invoke.cont15:                                    ; preds = %invoke.cont13
  call void @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %container)
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp1) #1
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont13, %invoke.cont11, %invoke.cont9, %invoke.cont8, %invoke.cont6, %invoke.cont4, %invoke.cont3, %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  invoke void @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %container)
          to label %invoke.cont16 unwind label %terminate.lpad

invoke.cont16:                                    ; preds = %lpad2
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont16, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val17 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val17

terminate.lpad:                                   ; preds = %lpad2
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_(%"class.std::deque"* %this, i64 %__n, double* dereferenceable(8) %__value, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_m(%"class.std::_Deque_base"* %0, %"class.std::allocator"* dereferenceable(1) %1, i64 %2)
  %3 = load double*, double** %__value.addr, align 8
  invoke void @_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd(%"class.std::deque"* %this1, double* dereferenceable(8) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %7)
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
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, double* %__first, double* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__miter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %1)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt14__copy_move_a2ILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* sret %agg.result, double* %call, double* %call1, %"struct.std::_Deque_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortISt15_Deque_iteratorIdRdPdEEvT_S4_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6uniqueISt15_Deque_iteratorIdRdPdEET_S4_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv()
  call void @_ZSt8__uniqueISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  invoke void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"class.std::deque"* %this1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont3
  invoke void @_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_(%"class.std::deque"* %this1, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %1)
  ret void

lpad:                                             ; preds = %invoke.cont4, %invoke.cont3, %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %5)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont6
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1)) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl, i32 0, i32 0
  %0 = load double**, double*** %_M_map, align 8
  %tobool = icmp ne double** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %1 = load double**, double*** %_M_node, align 8
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load double**, double*** %_M_node4, align 8
  %add.ptr = getelementptr inbounds double*, double** %2, i64 1
  invoke void @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_(%"class.std::_Deque_base"* %this1, double** %1, double** %add.ptr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map6 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl5, i32 0, i32 0
  %3 = load double**, double*** %_M_map6, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %4 = load i64, i64* %_M_map_size, align 8
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdm(%"class.std::_Deque_base"* %this1, double** %3, i64 %4)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %if.then
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl10) #1
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont8, %entry
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl9) #1
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_(%"class.std::_Deque_base"* %this, double** %__nstart, double** %__nfinish) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca double**, align 8
  %__nfinish.addr = alloca double**, align 8
  %__n = alloca double**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store double** %__nstart, double*** %__nstart.addr, align 8
  store double** %__nfinish, double*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load double**, double*** %__nstart.addr, align 8
  store double** %0, double*** %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load double**, double*** %__n, align 8
  %2 = load double**, double*** %__nfinish.addr, align 8
  %cmp = icmp ult double** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double**, double*** %__n, align 8
  %4 = load double*, double** %3, align 8
  call void @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd(%"class.std::_Deque_base"* %this1, double* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load double**, double*** %__n, align 8
  %incdec.ptr = getelementptr inbounds double*, double** %5, i32 1
  store double** %incdec.ptr, double*** %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdm(%"class.std::_Deque_base"* %this, double** %__p, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca double**, align 8
  %__n.addr = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store double** %__p, double*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  call void @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv(%"class.std::allocator"* sret %__map_alloc, %"class.std::_Deque_base"* %this1)
  %0 = load double**, double*** %__p.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIPdEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %__map_alloc, double** %0, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPdED2Ev(%"class.std::allocator"* %__map_alloc) #1
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIPdED2Ev(%"class.std::allocator"* %__map_alloc) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv(%"class.std::allocator"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this1)
  call void @_ZNSaIPdEC2IdEERKSaIT_E(%"class.std::allocator"* %agg.result, %"class.std::allocator"* dereferenceable(1) %call) #1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIPdEE10deallocateERS2_PS1_m(%"class.std::allocator"* dereferenceable(1) %__a, double** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store double** %__p, double*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load double**, double*** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_m(%"class.std::allocator"* %1, double** %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIPdED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIPdED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPdED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_m(%"class.std::allocator"* %this, double** %__p, i64) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double**, align 8
  %.addr = alloca i64, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double** %__p, double*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load double**, double*** %__p.addr, align 8
  %2 = bitcast double** %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIPdEC2IdEERKSaIT_E(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIPdEC2Ev(%"class.std::allocator"* %1) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPdEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd(%"class.std::_Deque_base"* %this, double* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca double*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %1 = load double*, double** %__p.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"class.std::allocator"* dereferenceable(1) %0, double* %1, i64 %call)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #2 comdat {
entry:
  %__size.addr = alloca i64, align 8
  store i64 %__size, i64* %__size.addr, align 8
  %0 = load i64, i64* %__size.addr, align 8
  %cmp = icmp ult i64 %0, 512
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %__size.addr, align 8
  %div = udiv i64 512, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* dereferenceable(32) %__x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load double*, double** %_M_cur2, align 8
  store double* %1, double** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load double*, double** %_M_first3, align 8
  store double* %3, double** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load double*, double** %_M_last4, align 8
  store double* %5, double** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load double**, double*** %_M_node5, align 8
  store double** %7, double*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8__uniqueISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__binary_pred = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %__dest = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt15__adjacent_findISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_(%"struct.std::_Deque_iterator"* sret %ref.tmp, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  %0 = bitcast %"struct.std::_Deque_iterator"* %__first to i8*
  %1 = bitcast %"struct.std::_Deque_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %call = call zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__first, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__dest, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %call3 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__first)
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %call4 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__first)
  %call5 = call zeroext i1 @_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %call4, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__dest)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__binary_pred, %"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* %agg.tmp7)
  br i1 %call8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %while.body
  %call10 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__first)
  %2 = load double, double* %call10, align 8
  %call11 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__dest)
  %call12 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %call11)
  store double %2, double* %call12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call14 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__dest)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %call14)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt15__adjacent_findISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__binary_pred = alloca %"class.std::allocator", align 1
  %__next = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %call = call zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__first, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__next, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %call1 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__next)
  %call2 = call zeroext i1 @_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %call1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__next)
  %call4 = call zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__binary_pred, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp3)
  br i1 %call4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  br label %return

if.end6:                                          ; preds = %while.body
  %0 = bitcast %"struct.std::_Deque_iterator"* %__first to i8*
  %1 = bitcast %"struct.std::_Deque_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #2 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load double*, double** %_M_cur, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %3 = load double*, double** %_M_cur1, align 8
  %cmp = icmp eq double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_cur, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 1
  store double* %incdec.ptr, double** %_M_cur, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %1 = load double*, double** %_M_cur2, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %2 = load double*, double** %_M_last, align 8
  %cmp = icmp eq double* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %3 = load double**, double*** %_M_node, align 8
  %add.ptr = getelementptr inbounds double*, double** %3, i64 1
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this1, double** %add.ptr)
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %4 = load double*, double** %_M_first, align 8
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store double* %4, double** %_M_cur3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %"struct.std::_Deque_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %0, %"struct.std::_Deque_iterator"* dereferenceable(32) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %this, %"struct.std::_Deque_iterator"* %__it1, %"struct.std::_Deque_iterator"* %__it2) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__it1)
  %0 = load double, double* %call, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__it2)
  %1 = load double, double* %call2, align 8
  %cmp = fcmp oeq double %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_cur, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, double** %__new_node) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__new_node.addr = alloca double**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store double** %__new_node, double*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %0 = load double**, double*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store double** %0, double*** %_M_node, align 8
  %1 = load double**, double*** %__new_node.addr, align 8
  %2 = load double*, double** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store double* %2, double** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %3 = load double*, double** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %add.ptr = getelementptr inbounds double, double* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store double* %add.ptr, double** %_M_last, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv() #2 comdat align 2 {
entry:
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"class.std::allocator", align 1
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"class.std::allocator", align 1
  %call = call zeroext i1 @_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__first, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  %call2 = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %call3 = call i64 @_ZSt4__lgl(i64 %call2)
  %mul = mul nsw i64 %call3, 2
  call void @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1, i64 %mul)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %agg.tmp6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #2 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 3
  %1 = load double**, double*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %3 = load double**, double*** %_M_node1, align 8
  %sub.ptr.lhs.cast = ptrtoint double** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %mul = mul nsw i64 %call, %sub
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 0
  %5 = load double*, double** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 1
  %7 = load double*, double** %_M_first, align 8
  %sub.ptr.lhs.cast2 = ptrtoint double* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint double* %7 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %add = add nsw i64 %mul, %sub.ptr.div5
  %8 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 2
  %9 = load double*, double** %_M_last, align 8
  %10 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %10, i32 0, i32 0
  %11 = load double*, double** %_M_cur6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint double* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint double* %11 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 8
  %add11 = add nsw i64 %add, %sub.ptr.div10
  ret i64 %add11
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, i64 %__depth_limit) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"class.std::allocator", align 1
  %__cut = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"class.std::allocator", align 1
  %agg.tmp8 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp9 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp10 = alloca %"class.std::allocator", align 1
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %cmp = icmp sgt i64 %call, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i64, i64* %__depth_limit.addr, align 8
  %cmp1 = icmp eq i64 %0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3)
  br label %while.end

if.end:                                           ; preds = %while.body
  %1 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %1, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_(%"struct.std::_Deque_iterator"* sret %__cut, %"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %agg.tmp6)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp8, %"struct.std::_Deque_iterator"* dereferenceable(32) %__cut)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp9, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  %2 = load i64, i64* %__depth_limit.addr, align 8
  call void @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(%"struct.std::_Deque_iterator"* %agg.tmp8, %"struct.std::_Deque_iterator"* %agg.tmp9, i64 %2)
  %3 = bitcast %"struct.std::_Deque_iterator"* %__last to i8*
  %4 = bitcast %"struct.std::_Deque_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"class.std::allocator", align 1
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp8 = alloca %"class.std::allocator", align 1
  %call = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %cmp = icmp sgt i64 %call, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp1, %"struct.std::_Deque_iterator"* %__first, i64 16)
  call void @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp3, %"struct.std::_Deque_iterator"* %__first, i64 16)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp4, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* %agg.tmp4)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* %agg.tmp7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %this1)
  %0 = load i64, i64* %__n.addr, align 8
  %call = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEpLEl(%"struct.std::_Deque_iterator"* %__tmp, i64 %0)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__i = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %__val = alloca double, align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp8 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp10 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp11 = alloca %"class.std::allocator", align 1
  %agg.tmp12 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  %call = call zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__first, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %__i, %"struct.std::_Deque_iterator"* %__first, i64 1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %call1 = call zeroext i1 @_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__i, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__i)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %call5 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__i)
  %0 = load double, double* %call5, align 8
  store double %0, double* %__val, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__i)
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp8, %"struct.std::_Deque_iterator"* %__i, i64 1)
  call void @_ZSt13copy_backwardISt15_Deque_iteratorIdRdPdES3_ET0_T_S5_S4_(%"struct.std::_Deque_iterator"* sret %tmp, %"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* %agg.tmp8)
  %1 = load double, double* %__val, align 8
  %call9 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__first)
  store double %1, double* %call9, align 8
  br label %if.end13

if.else:                                          ; preds = %for.body
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp10, %"struct.std::_Deque_iterator"* dereferenceable(32) %__i)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp10)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %call14 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__i = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"class.std::allocator", align 1
  %agg.tmp2 = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__i, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZStneIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__i, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__i)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call3 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__val = alloca double, align 8
  %__next = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__last)
  %0 = load double, double* %call, align 8
  store double %0, double* %__val, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__next, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  %call1 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__next)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__next)
  %call2 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdSt15_Deque_iteratorIdRdPdEEEbRT_T0_(%"class.std::allocator"* %__comp, double* dereferenceable(8) %__val, %"struct.std::_Deque_iterator"* %agg.tmp)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__next)
  %1 = load double, double* %call3, align 8
  %call4 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__last)
  store double %1, double* %call4, align 8
  %2 = bitcast %"struct.std::_Deque_iterator"* %__last to i8*
  %3 = bitcast %"struct.std::_Deque_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  %call5 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__next)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load double, double* %__val, align 8
  %call6 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__last)
  store double %4, double* %call6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %1 = load double*, double** %_M_first, align 8
  %cmp = icmp eq double* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %2 = load double**, double*** %_M_node, align 8
  %add.ptr = getelementptr inbounds double*, double** %2, i64 -1
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this1, double** %add.ptr)
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %3 = load double*, double** %_M_last, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store double* %3, double** %_M_cur2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %4 = load double*, double** %_M_cur3, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 -1
  store double* %incdec.ptr, double** %_M_cur3, align 8
  ret %"struct.std::_Deque_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdSt15_Deque_iteratorIdRdPdEEEbRT_T0_(%"class.std::allocator"* %this, double* dereferenceable(8) %__val, %"struct.std::_Deque_iterator"* %__it) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__val.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double, double* %0, align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__it)
  %2 = load double, double* %call, align 8
  %cmp = fcmp olt double %1, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %this, %"struct.std::_Deque_iterator"* %__it1, %"struct.std::_Deque_iterator"* %__it2) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__it1)
  %0 = load double, double* %call, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__it2)
  %1 = load double, double* %call2, align 8
  %cmp = fcmp olt double %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13copy_backwardISt15_Deque_iteratorIdRdPdES3_ET0_T_S5_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp4, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt23__copy_move_backward_a2ILb0ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt12__miter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #0 comdat {
entry:
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__it)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt23__copy_move_backward_a2ILb0ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* sret %agg.tmp4, %"struct.std::_Deque_iterator"* %agg.tmp5)
  call void @_ZSt22__copy_move_backward_aILb0ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #0 comdat {
entry:
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__it)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__copy_move_backward_aILb0ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat {
entry:
  %__simple = alloca i8, align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store i8 0, i8* %__simple, align 1
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt15_Deque_iteratorIdRdPdES6_EET0_T_S8_S7_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt15_Deque_iteratorIdRdPdES6_EET0_T_S8_S7_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat align 2 {
entry:
  %__n = alloca i64, align 8
  %call = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  store i64 %call, i64* %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %__n, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__last)
  %call2 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %call1)
  %1 = load double, double* %call2, align 8
  %call3 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__result)
  %call4 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %call3)
  store double %1, double* %call4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, i64* %__n, align 8
  %dec = add nsw i64 %2, -1
  store i64 %dec, i64* %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEpLEl(%"struct.std::_Deque_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %__offset = alloca i64, align 8
  %__node_offset = alloca i64, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %1 = load double*, double** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %2 = load double*, double** %_M_first, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %0, %sub.ptr.div
  store i64 %add, i64* %__offset, align 8
  %3 = load i64, i64* %__offset, align 8
  %cmp = icmp sge i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %__offset, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %cmp2 = icmp slt i64 %4, %call
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %__n.addr, align 8
  %_M_cur3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %6 = load double*, double** %_M_cur3, align 8
  %add.ptr = getelementptr inbounds double, double* %6, i64 %5
  store double* %add.ptr, double** %_M_cur3, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i64, i64* %__offset, align 8
  %cmp4 = icmp sgt i64 %7, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %8 = load i64, i64* %__offset, align 8
  %call5 = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %div = sdiv i64 %8, %call5
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %9 = load i64, i64* %__offset, align 8
  %sub = sub nsw i64 0, %9
  %sub6 = sub nsw i64 %sub, 1
  %call7 = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %div8 = udiv i64 %sub6, %call7
  %sub9 = sub nsw i64 0, %div8
  %sub10 = sub nsw i64 %sub9, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ %sub10, %cond.false ]
  store i64 %cond, i64* %__node_offset, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %10 = load double**, double*** %_M_node, align 8
  %11 = load i64, i64* %__node_offset, align 8
  %add.ptr11 = getelementptr inbounds double*, double** %10, i64 %11
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this1, double** %add.ptr11)
  %_M_first12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %12 = load double*, double** %_M_first12, align 8
  %13 = load i64, i64* %__offset, align 8
  %14 = load i64, i64* %__node_offset, align 8
  %call13 = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %mul = mul nsw i64 %14, %call13
  %sub14 = sub nsw i64 %13, %mul
  %add.ptr15 = getelementptr inbounds double, double* %12, i64 %sub14
  %_M_cur16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store double* %add.ptr15, double** %_M_cur16, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret %"struct.std::_Deque_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__middle, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %agg.tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__middle)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp4, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__middle)
  call void @_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(%"struct.std::_Deque_iterator"* %agg.tmp4, %"struct.std::_Deque_iterator"* %agg.tmp5, %"class.std::allocator"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__mid = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"class.std::allocator", align 1
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp8 = alloca %"class.std::allocator", align 1
  %call = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %div = sdiv i64 %call, 2
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %__mid, %"struct.std::_Deque_iterator"* %__first, i64 %div)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp1, %"struct.std::_Deque_iterator"* %__first, i64 1)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__mid)
  call void @_ZNKSt15_Deque_iteratorIdRdPdEmiEl(%"struct.std::_Deque_iterator"* sret %agg.tmp3, %"struct.std::_Deque_iterator"* %__last, i64 1)
  call void @_ZSt22__move_median_to_firstISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_S7_T0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3)
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp5, %"struct.std::_Deque_iterator"* %__first, i64 1)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* %agg.tmp7)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt15_Deque_iteratorIdRdPdEmiEl(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %this1)
  %0 = load i64, i64* %__n.addr, align 8
  %call = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmIEl(%"struct.std::_Deque_iterator"* %__tmp, i64 %0)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %call)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_S7_T0_(%"struct.std::_Deque_iterator"* %__result, %"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"* %__b, %"struct.std::_Deque_iterator"* %__c) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp8 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp9 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp12 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp13 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp15 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp16 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp19 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp20 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp23 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp24 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp26 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp27 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp30 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp31 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp33 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp34 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__a)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__b)
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  br i1 %call, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__b)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__c)
  %call4 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3)
  br i1 %call4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__b)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* %agg.tmp7)
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp8, %"struct.std::_Deque_iterator"* dereferenceable(32) %__a)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp9, %"struct.std::_Deque_iterator"* dereferenceable(32) %__c)
  %call10 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp8, %"struct.std::_Deque_iterator"* %agg.tmp9)
  br i1 %call10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp12, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp13, %"struct.std::_Deque_iterator"* dereferenceable(32) %__c)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp12, %"struct.std::_Deque_iterator"* %agg.tmp13)
  br label %if.end

if.else14:                                        ; preds = %if.else
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp15, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp16, %"struct.std::_Deque_iterator"* dereferenceable(32) %__a)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp15, %"struct.std::_Deque_iterator"* %agg.tmp16)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  br label %if.end37

if.else18:                                        ; preds = %entry
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp19, %"struct.std::_Deque_iterator"* dereferenceable(32) %__a)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp20, %"struct.std::_Deque_iterator"* dereferenceable(32) %__c)
  %call21 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp19, %"struct.std::_Deque_iterator"* %agg.tmp20)
  br i1 %call21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else18
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp23, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp24, %"struct.std::_Deque_iterator"* dereferenceable(32) %__a)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp23, %"struct.std::_Deque_iterator"* %agg.tmp24)
  br label %if.end36

if.else25:                                        ; preds = %if.else18
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp26, %"struct.std::_Deque_iterator"* dereferenceable(32) %__b)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp27, %"struct.std::_Deque_iterator"* dereferenceable(32) %__c)
  %call28 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp26, %"struct.std::_Deque_iterator"* %agg.tmp27)
  br i1 %call28, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.else25
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp30, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp31, %"struct.std::_Deque_iterator"* dereferenceable(32) %__c)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp30, %"struct.std::_Deque_iterator"* %agg.tmp31)
  br label %if.end35

if.else32:                                        ; preds = %if.else25
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp33, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp34, %"struct.std::_Deque_iterator"* dereferenceable(32) %__b)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp33, %"struct.std::_Deque_iterator"* %agg.tmp34)
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then29
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end17
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"struct.std::_Deque_iterator"* %__pivot) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp8 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp14 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp15 = alloca %"struct.std::_Deque_iterator", align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__pivot)
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2)
  br i1 %call, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %call4 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__first)
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %call5 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__last)
  br label %while.cond6

while.cond6:                                      ; preds = %while.body10, %while.end
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__pivot)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp8, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  %call9 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* %agg.tmp8)
  br i1 %call9, label %while.body10, label %while.end12

while.body10:                                     ; preds = %while.cond6
  %call11 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__last)
  br label %while.cond6

while.end12:                                      ; preds = %while.cond6
  %call13 = call zeroext i1 @_ZStltIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__first, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call13, label %if.end, label %if.then

if.then:                                          ; preds = %while.end12
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  ret void

if.end:                                           ; preds = %while.end12
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp14, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp15, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp14, %"struct.std::_Deque_iterator"* %agg.tmp15)
  %call16 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__first)
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZStltIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #2 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 3
  %1 = load double**, double*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %3 = load double**, double*** %_M_node1, align 8
  %cmp = icmp eq double** %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 0
  %5 = load double*, double** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %7 = load double*, double** %_M_cur2, align 8
  %cmp3 = icmp ult double* %5, %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %9 = load double**, double*** %_M_node4, align 8
  %10 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %10, i32 0, i32 3
  %11 = load double**, double*** %_M_node5, align 8
  %cmp6 = icmp ult double** %9, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i1 [ %cmp3, %cond.true ], [ %cmp6, %cond.false ]
  ret i1 %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt9iter_swapISt15_Deque_iteratorIdRdPdES3_EvT_T0_(%"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"* %__b) #0 comdat {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__a)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__b)
  call void @_ZNSt11__iter_swapILb1EE9iter_swapISt15_Deque_iteratorIdRdPdES5_EEvT_T0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt11__iter_swapILb1EE9iter_swapISt15_Deque_iteratorIdRdPdES5_EEvT_T0_(%"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"* %__b) #2 comdat align 2 {
entry:
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__a)
  %call1 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__b)
  call void @_ZSt4swapIdEvRT_S1_(double* dereferenceable(8) %call, double* dereferenceable(8) %call1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmIEl(%"struct.std::_Deque_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %sub = sub nsw i64 0, %0
  %call = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEpLEl(%"struct.std::_Deque_iterator"* %this1, i64 %sub)
  ret %"struct.std::_Deque_iterator"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__middle, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %__i = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp5 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__middle)
  call void @_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1, %"class.std::allocator"* dereferenceable(1) %__comp)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %__i, %"struct.std::_Deque_iterator"* dereferenceable(32) %__middle)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZStltIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__i, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__i)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %call4 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3)
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* dereferenceable(32) %__middle)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp7, %"struct.std::_Deque_iterator"* dereferenceable(32) %__i)
  call void @_ZSt10__pop_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_RT0_(%"struct.std::_Deque_iterator"* %agg.tmp5, %"struct.std::_Deque_iterator"* %agg.tmp6, %"struct.std::_Deque_iterator"* %agg.tmp7, %"class.std::allocator"* dereferenceable(1) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call8 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEmmEv(%"struct.std::_Deque_iterator"* %__last)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp3, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_RT0_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* %agg.tmp3, %"class.std::allocator"* dereferenceable(1) %0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_RT0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"struct.std::_Deque_iterator"* %__result, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp4 = alloca %"class.std::allocator", align 1
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__result)
  %0 = load double, double* %call, align 8
  store double %0, double* %__value, align 8
  %call1 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__first)
  %1 = load double, double* %call1, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__result)
  store double %1, double* %call2, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %call3 = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %2 = load double, double* %__value, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(%"struct.std::_Deque_iterator"* %agg.tmp, i64 0, i64 %call3, double %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(%"struct.std::_Deque_iterator"* %__first, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__comp = alloca %"class.std::allocator", align 1
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  %tmp4 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp14 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp16 = alloca %"struct.std::_Deque_iterator", align 8
  %__cmp = alloca %"class.std::allocator", align 1
  %agg.tmp21 = alloca %"class.std::allocator", align 1
  %agg.tmp22 = alloca %"struct.std::_Deque_iterator", align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  store double %__value, double* %__value.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %0, i64* %__topIndex, align 8
  %1 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %1, i64* %__secondChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %__secondChild, align 8
  %3 = load i64, i64* %__len.addr, align 8
  %sub = sub nsw i64 %3, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %__secondChild, align 8
  %add = add nsw i64 %4, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %__secondChild, align 8
  %5 = load i64, i64* %__secondChild, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"struct.std::_Deque_iterator"* %__first, i64 %5)
  %6 = load i64, i64* %__secondChild, align 8
  %sub2 = sub nsw i64 %6, 1
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp1, %"struct.std::_Deque_iterator"* %__first, i64 %sub2)
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt15_Deque_iteratorIdRdPdES6_EEbT_T0_(%"class.std::allocator"* %__comp, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i64, i64* %__secondChild, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp, %"struct.std::_Deque_iterator"* %__first, i64 %8)
  %call3 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp)
  %9 = load double, double* %call3, align 8
  %10 = load i64, i64* %__holeIndex.addr, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp4, %"struct.std::_Deque_iterator"* %__first, i64 %10)
  %call5 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp4)
  store double %9, double* %call5, align 8
  %11 = load i64, i64* %__secondChild, align 8
  store i64 %11, i64* %__holeIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i64, i64* %__len.addr, align 8
  %and = and i64 %12, 1
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %while.end
  %13 = load i64, i64* %__secondChild, align 8
  %14 = load i64, i64* %__len.addr, align 8
  %sub7 = sub nsw i64 %14, 2
  %div8 = sdiv i64 %sub7, 2
  %cmp9 = icmp eq i64 %13, %div8
  br i1 %cmp9, label %if.then10, label %if.end19

if.then10:                                        ; preds = %land.lhs.true
  %15 = load i64, i64* %__secondChild, align 8
  %add11 = add nsw i64 %15, 1
  %mul12 = mul nsw i64 2, %add11
  store i64 %mul12, i64* %__secondChild, align 8
  %16 = load i64, i64* %__secondChild, align 8
  %sub13 = sub nsw i64 %16, 1
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp14, %"struct.std::_Deque_iterator"* %__first, i64 %sub13)
  %call15 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp14)
  %17 = load double, double* %call15, align 8
  %18 = load i64, i64* %__holeIndex.addr, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp16, %"struct.std::_Deque_iterator"* %__first, i64 %18)
  %call17 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp16)
  store double %17, double* %call17, align 8
  %19 = load i64, i64* %__secondChild, align 8
  %sub18 = sub nsw i64 %19, 1
  store i64 %sub18, i64* %__holeIndex.addr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %land.lhs.true, %while.end
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"class.std::allocator"* %__cmp)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp22, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %20 = load i64, i64* %__holeIndex.addr, align 8
  %21 = load i64, i64* %__topIndex, align 8
  %22 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_(%"struct.std::_Deque_iterator"* %agg.tmp22, i64 %20, i64 %21, double %22, %"class.std::allocator"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_(%"struct.std::_Deque_iterator"* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__parent = alloca i64, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  %tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %tmp6 = alloca %"struct.std::_Deque_iterator", align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  %sub = sub nsw i64 %0, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__holeIndex.addr, align 8
  %2 = load i64, i64* %__topIndex.addr, align 8
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  %4 = load i64, i64* %__parent, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"struct.std::_Deque_iterator"* %__first, i64 %4)
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt15_Deque_iteratorIdRdPdEdEEbT_RT0_(%"class.std::allocator"* %3, %"struct.std::_Deque_iterator"* %agg.tmp, double* dereferenceable(8) %__value.addr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, i64* %__parent, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp, %"struct.std::_Deque_iterator"* %__first, i64 %6)
  %call1 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp)
  %7 = load double, double* %call1, align 8
  %8 = load i64, i64* %__holeIndex.addr, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp2, %"struct.std::_Deque_iterator"* %__first, i64 %8)
  %call3 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp2)
  store double %7, double* %call3, align 8
  %9 = load i64, i64* %__parent, align 8
  store i64 %9, i64* %__holeIndex.addr, align 8
  %10 = load i64, i64* %__holeIndex.addr, align 8
  %sub4 = sub nsw i64 %10, 1
  %div5 = sdiv i64 %sub4, 2
  store i64 %div5, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load double, double* %__value.addr, align 8
  %12 = load i64, i64* %__holeIndex.addr, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp6, %"struct.std::_Deque_iterator"* %__first, i64 %12)
  %call7 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp6)
  store double %11, double* %call7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclISt15_Deque_iteratorIdRdPdEdEEbT_RT0_(%"class.std::allocator"* %this, %"struct.std::_Deque_iterator"* %__it, double* dereferenceable(8) %__val) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__val.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__it)
  %0 = load double, double* %call, align 8
  %1 = load double*, double** %__val.addr, align 8
  %2 = load double, double* %1, align 8
  %cmp = fcmp olt double %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__comp.addr = alloca %"class.std::allocator"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  store %"class.std::allocator"* %__comp, %"class.std::allocator"** %__comp.addr, align 8
  %call = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %cmp = icmp slt i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__last, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  store i64 %call1, i64* %__len, align 8
  %0 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %0, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end6
  %1 = load i64, i64* %__parent, align 8
  call void @_ZNKSt15_Deque_iteratorIdRdPdEplEl(%"struct.std::_Deque_iterator"* sret %tmp, %"struct.std::_Deque_iterator"* %__first, i64 %1)
  %call2 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %tmp)
  %2 = load double, double* %call2, align 8
  store double %2, double* %__value, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  %3 = load i64, i64* %__parent, align 8
  %4 = load i64, i64* %__len, align 8
  %5 = load double, double* %__value, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(%"struct.std::_Deque_iterator"* %agg.tmp, i64 %3, i64 %4, double %5)
  %7 = load i64, i64* %__parent, align 8
  %cmp4 = icmp eq i64 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  br label %return

if.end6:                                          ; preds = %while.body
  %8 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then5, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__copy_move_a2ILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, double* %__first, double* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %1)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp2, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2)
  call void @_ZSt13__copy_move_aILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* sret %agg.result, double* %call, double* %call1, %"struct.std::_Deque_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__copy_move_aILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, double* %__first, double* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__simple = alloca i8, align 1
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store i8 0, i8* %__simple, align 1
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPdSt15_Deque_iteratorIdRdS3_EEET0_T_S8_S7_(%"struct.std::_Deque_iterator"* sret %agg.result, double* %0, double* %1, %"struct.std::_Deque_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPdSt15_Deque_iteratorIdRdS3_EEET0_T_S8_S7_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, double* %__first, double* %__last, %"struct.std::_Deque_iterator"* %__result) #0 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__n = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %__n, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double*, double** %__first.addr, align 8
  %4 = load double, double* %3, align 8
  %call = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__result)
  store double %4, double* %call, align 8
  %5 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %5, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  %call1 = call dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__result)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__n, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %__result)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_m(%"class.std::_Deque_base"* %this, %"class.std::allocator"* dereferenceable(1) %__a, i64 %__num_elements) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0)
  %1 = load i64, i64* %__num_elements.addr, align 8
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 %1)
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
  call void @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd(%"class.std::deque"* %this, double* dereferenceable(8) %__value) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__value.addr = alloca double*, align 8
  %__cur = alloca double**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp18 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %1 = load double**, double*** %_M_node, align 8
  store double** %1, double*** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load double**, double*** %__cur, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_node3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %4 = load double**, double*** %_M_node3, align 8
  %cmp = icmp ult double** %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double**, double*** %__cur, align 8
  %6 = load double*, double** %5, align 8
  %7 = load double**, double*** %__cur, align 8
  %8 = load double*, double** %7, align 8
  %call = invoke i64 @_ZNSt5dequeIdSaIdEE14_S_buffer_sizeEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %add.ptr = getelementptr inbounds double, double* %8, i64 %call
  %9 = load double*, double** %__value.addr, align 8
  %10 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call5 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %10)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  invoke void @_ZSt22__uninitialized_fill_aIPdddEvT_S1_RKT0_RSaIT1_E(double* %6, double* %add.ptr, double* dereferenceable(8) %9, %"class.std::allocator"* dereferenceable(1) %call5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont6
  %11 = load double**, double*** %__cur, align 8
  %incdec.ptr = getelementptr inbounds double*, double** %11, i32 1
  store double** %incdec.ptr, double*** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %invoke.cont11, %for.end, %invoke.cont4, %invoke.cont, %for.body
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %15 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %16 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %16, i32 0, i32 0
  %_M_start15 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl14, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start15)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %catch
  %17 = load double**, double*** %__cur, align 8
  %18 = load double*, double** %17, align 8
  %19 = load double**, double*** %__cur, align 8
  invoke void @_ZNSt15_Deque_iteratorIdRdPdEC2ES1_PS1_(%"struct.std::_Deque_iterator"* %agg.tmp18, double* %18, double** %19)
          to label %invoke.cont19 unwind label %lpad16

invoke.cont19:                                    ; preds = %invoke.cont17
  %20 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call21 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %20)
          to label %invoke.cont20 unwind label %lpad16

invoke.cont20:                                    ; preds = %invoke.cont19
  invoke void @_ZSt8_DestroyISt15_Deque_iteratorIdRdPdEdEvT_S4_RSaIT0_E(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp18, %"class.std::allocator"* dereferenceable(1) %call21)
          to label %invoke.cont22 unwind label %lpad16

invoke.cont22:                                    ; preds = %invoke.cont20
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad16

for.end:                                          ; preds = %for.cond
  %21 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %21, i32 0, i32 0
  %_M_finish8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl7, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish8, i32 0, i32 1
  %22 = load double*, double** %_M_first, align 8
  %23 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %23, i32 0, i32 0
  %_M_finish10 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl9, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish10, i32 0, i32 0
  %24 = load double*, double** %_M_cur, align 8
  %25 = load double*, double** %__value.addr, align 8
  %26 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call12 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %26)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %for.end
  invoke void @_ZSt22__uninitialized_fill_aIPdddEvT_S1_RKT0_RSaIT1_E(double* %22, double* %24, double* dereferenceable(8) %25, %"class.std::allocator"* dereferenceable(1) %call12)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  br label %try.cont

lpad16:                                           ; preds = %invoke.cont22, %invoke.cont20, %invoke.cont19, %invoke.cont17, %catch
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %lpad16
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont13
  ret void

eh.resume:                                        ; preds = %invoke.cont23
  %exn24 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn24, 0
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val25

terminate.lpad:                                   ; preds = %lpad16
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #15
  unreachable

unreachable:                                      ; preds = %invoke.cont22
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNSt5dequeIdSaIdEE14_S_buffer_sizeEv() #2 comdat align 2 {
entry:
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__uninitialized_fill_aIPdddEvT_S1_RKT0_RSaIT1_E(double* %__first, double* %__last, double* dereferenceable(8) %__x, %"class.std::allocator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__x.addr = alloca double*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = load double*, double** %__x.addr, align 8
  call void @_ZSt18uninitialized_fillIPddEvT_S1_RKT0_(double* %1, double* %2, double* dereferenceable(8) %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIdRdPdEC2ES1_PS1_(%"struct.std::_Deque_iterator"* %this, double* %__x, double** %__y) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__x.addr = alloca double*, align 8
  %__y.addr = alloca double**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store double** %__y, double*** %__y.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %__x.addr, align 8
  store double* %0, double** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %1 = load double**, double*** %__y.addr, align 8
  %2 = load double*, double** %1, align 8
  store double* %2, double** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %3 = load double**, double*** %__y.addr, align 8
  %4 = load double*, double** %3, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv()
  %add.ptr = getelementptr inbounds double, double* %4, i64 %call
  store double* %add.ptr, double** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %5 = load double**, double*** %__y.addr, align 8
  store double** %5, double*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyISt15_Deque_iteratorIdRdPdEdEvT_S4_RSaIT0_E(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1)) #0 comdat {
entry:
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZSt8_DestroyISt15_Deque_iteratorIdRdPdEEvT_S4_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyISt15_Deque_iteratorIdRdPdEEvT_S4_(%"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #0 comdat {
entry:
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp1 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* dereferenceable(32) %__first)
  call void @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.tmp1, %"struct.std::_Deque_iterator"* dereferenceable(32) %__last)
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIdRdPdEEEvT_S6_(%"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIdRdPdEEEvT_S6_(%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*) #2 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt18uninitialized_fillIPddEvT_S1_RKT0_(double* %__first, double* %__last, double* dereferenceable(8) %__x) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__x.addr = alloca double*, align 8
  %__assignable = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__x.addr, align 8
  call void @_ZNSt20__uninitialized_fillILb1EE13__uninit_fillIPddEEvT_S3_RKT0_(double* %0, double* %1, double* dereferenceable(8) %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt20__uninitialized_fillILb1EE13__uninit_fillIPddEEvT_S3_RKT0_(double* %__first, double* %__last, double* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__x.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__x.addr, align 8
  call void @_ZSt4fillIPddEvT_S1_RKT0_(double* %0, double* %1, double* dereferenceable(8) %2)
  ret void
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double* %__first, double* %__last, double* dereferenceable(8) %__value) #2 comdat {
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
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaIdEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #1
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1, i32 0, i32 0
  store double** null, double*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %_M_start)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %_M_finish)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %5) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  %__nstart = alloca double**, align 8
  %__nfinish = alloca double**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load i64, i64* %__num_elements.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %div = udiv i64 %0, %call
  %add = add i64 %div, 1
  store i64 %add, i64* %__num_nodes, align 8
  store i64 8, i64* %ref.tmp, align 8
  %1 = load i64, i64* %__num_nodes, align 8
  %add3 = add i64 %1, 2
  store i64 %add3, i64* %ref.tmp2, align 8
  %call4 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %ref.tmp2)
  %2 = load i64, i64* %call4, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  store i64 %2, i64* %_M_map_size, align 8
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size6 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %3 = load i64, i64* %_M_map_size6, align 8
  %call7 = call double** @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this1, i64 %3)
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl8, i32 0, i32 0
  store double** %call7, double*** %_M_map, align 8
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map10 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl9, i32 0, i32 0
  %4 = load double**, double*** %_M_map10, align 8
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size12 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl11, i32 0, i32 1
  %5 = load i64, i64* %_M_map_size12, align 8
  %6 = load i64, i64* %__num_nodes, align 8
  %sub = sub i64 %5, %6
  %div13 = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds double*, double** %4, i64 %div13
  store double** %add.ptr, double*** %__nstart, align 8
  %7 = load double**, double*** %__nstart, align 8
  %8 = load i64, i64* %__num_nodes, align 8
  %add.ptr14 = getelementptr inbounds double*, double** %7, i64 %8
  store double** %add.ptr14, double*** %__nfinish, align 8
  %9 = load double**, double*** %__nstart, align 8
  %10 = load double**, double*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_(%"class.std::_Deque_base"* %this1, double** %9, double** %10)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map16 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl15, i32 0, i32 0
  %15 = load double**, double*** %_M_map16, align 8
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size18 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl17, i32 0, i32 1
  %16 = load i64, i64* %_M_map_size18, align 8
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdm(%"class.std::_Deque_base"* %this1, double** %15, i64 %16)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %catch
  %_M_impl21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map22 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl21, i32 0, i32 0
  store double** null, double*** %_M_map22, align 8
  %_M_impl23 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size24 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl23, i32 0, i32 1
  store i64 0, i64* %_M_map_size24, align 8
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad19

lpad19:                                           ; preds = %invoke.cont20, %catch
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont25 unwind label %terminate.lpad

invoke.cont25:                                    ; preds = %lpad19
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %_M_impl26 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl26, i32 0, i32 2
  %20 = load double**, double*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start, double** %20)
  %_M_impl27 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl27, i32 0, i32 3
  %21 = load double**, double*** %__nfinish, align 8
  %add.ptr28 = getelementptr inbounds double*, double** %21, i64 -1
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish, double** %add.ptr28)
  %_M_impl29 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl29, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start30, i32 0, i32 1
  %22 = load double*, double** %_M_first, align 8
  %_M_impl31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start32 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl31, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start32, i32 0, i32 0
  store double* %22, double** %_M_cur, align 8
  %_M_impl33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish34 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl33, i32 0, i32 3
  %_M_first35 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish34, i32 0, i32 1
  %23 = load double*, double** %_M_first35, align 8
  %24 = load i64, i64* %__num_elements.addr, align 8
  %call36 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %rem = urem i64 %24, %call36
  %add.ptr37 = getelementptr inbounds double, double* %23, i64 %rem
  %_M_impl38 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish39 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl", %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl38, i32 0, i32 3
  %_M_cur40 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish39, i32 0, i32 0
  store double* %add.ptr37, double** %_M_cur40, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont25
  %exn41 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn41, 0
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val42

terminate.lpad:                                   ; preds = %lpad19
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #15
  unreachable

unreachable:                                      ; preds = %invoke.cont20
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #2 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr double** @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  call void @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv(%"class.std::allocator"* sret %__map_alloc, %"class.std::_Deque_base"* %this1)
  %0 = load i64, i64* %__n.addr, align 8
  %call = invoke double** @_ZN9__gnu_cxx14__alloc_traitsISaIPdEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %__map_alloc, i64 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPdED2Ev(%"class.std::allocator"* %__map_alloc) #1
  ret double** %call

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIPdED2Ev(%"class.std::allocator"* %__map_alloc) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_(%"class.std::_Deque_base"* %this, double** %__nstart, double** %__nfinish) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca double**, align 8
  %__nfinish.addr = alloca double**, align 8
  %__cur = alloca double**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store double** %__nstart, double*** %__nstart.addr, align 8
  store double** %__nfinish, double*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load double**, double*** %__nstart.addr, align 8
  store double** %0, double*** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load double**, double*** %__cur, align 8
  %2 = load double**, double*** %__nfinish.addr, align 8
  %cmp = icmp ult double** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = invoke double* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %3 = load double**, double*** %__cur, align 8
  store double* %call, double** %3, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load double**, double*** %__cur, align 8
  %incdec.ptr = getelementptr inbounds double*, double** %4, i32 1
  store double** %incdec.ptr, double*** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.body
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %8 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %9 = load double**, double*** %__nstart.addr, align 8
  %10 = load double**, double*** %__cur, align 8
  invoke void @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_(%"class.std::_Deque_base"* %this1, double** %9, double** %10)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad2

for.end:                                          ; preds = %for.cond
  br label %try.cont

lpad2:                                            ; preds = %invoke.cont3, %catch
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad2
  br label %eh.resume

try.cont:                                         ; preds = %for.end
  ret void

eh.resume:                                        ; preds = %invoke.cont4
  %exn5 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn5, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6

terminate.lpad:                                   ; preds = %lpad2
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #15
  unreachable

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %call2 = call double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1) %0, i64 %call)
  ret double* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr double** @_ZN9__gnu_cxx14__alloc_traitsISaIPdEE8allocateERS2_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double** @_ZN9__gnu_cxx13new_allocatorIPdE8allocateEmPKv(%"class.std::allocator"* %1, i64 %2, i8* null)
  ret double** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double** @_ZN9__gnu_cxx13new_allocatorIPdE8allocateEmPKv(%"class.std::allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv(%"class.std::allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to double**
  ret double** %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv(%"class.std::allocator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store double* null, double** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store double* null, double** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store double* null, double** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store double** null, double*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z9list_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %container = alloca %"class.std::__cxx11::list", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %ref.tmp) #1
  invoke void @_ZNSt7__cxx114listIdSaIdEEC2IPdEET_S5_RKS1_(%"class.std::__cxx11::list"* %container, double* %0, double* %1, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp) #1
  invoke void @_ZNSt7__cxx114listIdSaIdEE4sortEv(%"class.std::__cxx11::list"* %container)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZNSt7__cxx114listIdSaIdEE6uniqueEv(%"class.std::__cxx11::list"* %container)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  call void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %container)
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp) #1
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont2, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %container)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad1
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEEC2IPdEET_S5_RKS1_(%"class.std::__cxx11::list"* %this, double* %__first, double* %__last, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.std::allocator", align 1
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaISt10_List_nodeIdEEC2IdEERKSaIT_E(%"class.std::allocator"* %ref.tmp, %"class.std::allocator"* dereferenceable(1) %1) #1
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEEC2ERKSaISt10_List_nodeIdEE(%"class.std::__cxx11::_List_base"* %0, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaISt10_List_nodeIdEED2Ev(%"class.std::allocator"* %ref.tmp) #1
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double*, double** %__last.addr, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE22_M_initialize_dispatchIPdEEvT_S5_St12__false_type(%"class.std::__cxx11::list"* %this1, double* %2, double* %3)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZNSaISt10_List_nodeIdEED2Ev(%"class.std::allocator"* %ref.tmp) #1
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  %10 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEED2Ev(%"class.std::__cxx11::_List_base"* %10)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad2
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE4sortEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__carry = alloca %"class.std::__cxx11::list", align 8
  %__tmp = alloca [64 x %"class.std::__cxx11::list"], align 16
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__fill = alloca %"class.std::__cxx11::list"*, align 8
  %__counter = alloca %"class.std::__cxx11::list"*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp15 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp46 = alloca %"struct.std::_List_iterator", align 8
  %__i = alloca i32, align 4
  %agg.tmp56 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %3 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %4 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.end88

land.lhs.true:                                    ; preds = %entry
  %5 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %6 = bitcast %"struct.std::_List_node"* %_M_node5 to %"struct.std::__detail::_List_node_base"*
  %_M_next6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %6, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next6, align 8
  %_M_next7 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next7, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %9, i32 0, i32 0
  %_M_node9 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl8, i32 0, i32 0
  %10 = bitcast %"struct.std::_List_node"* %_M_node9 to %"struct.std::__detail::_List_node_base"*
  %cmp10 = icmp ne %"struct.std::__detail::_List_node_base"* %8, %10
  br i1 %cmp10, label %if.then, label %if.end88

if.then:                                          ; preds = %land.lhs.true
  call void @_ZNSt7__cxx114listIdSaIdEEC2Ev(%"class.std::__cxx11::list"* %__carry)
  %array.begin = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i32 0, i32 0
  %arrayctor.end = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %array.begin, i64 64
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %if.then
  %arrayctor.cur = phi %"class.std::__cxx11::list"* [ %array.begin, %if.then ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZNSt7__cxx114listIdSaIdEEC2Ev(%"class.std::__cxx11::list"* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %"class.std::__cxx11::list"* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %invoke.cont
  %arraydecay = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i32 0, i32 0
  store %"class.std::__cxx11::list"* %arraydecay, %"class.std::__cxx11::list"** %__fill, align 8
  br label %do.body

do.body:                                          ; preds = %invoke.cont32, %arrayctor.cont
  %call = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %__carry)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %do.body
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call17 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %this1)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  %coerce.dive18 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp15, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call17, %"struct.std::__detail::_List_node_base"** %coerce.dive18, align 8
  %coerce.dive19 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive19, align 8
  %coerce.dive20 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp15, i32 0, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive20, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_S4_(%"class.std::__cxx11::list"* %__carry, %"struct.std::__detail::_List_node_base"* %11, %"class.std::__cxx11::list"* dereferenceable(24) %this1, %"struct.std::__detail::_List_node_base"* %12)
          to label %invoke.cont21 unwind label %lpad13

invoke.cont21:                                    ; preds = %invoke.cont16
  %arraydecay22 = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i32 0, i32 0
  store %"class.std::__cxx11::list"* %arraydecay22, %"class.std::__cxx11::list"** %__counter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont21
  %13 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %14 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__fill, align 8
  %cmp23 = icmp ne %"class.std::__cxx11::list"* %13, %14
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %call25 = invoke zeroext i1 @_ZNKSt7__cxx114listIdSaIdEE5emptyEv(%"class.std::__cxx11::list"* %15)
          to label %invoke.cont24 unwind label %lpad13

invoke.cont24:                                    ; preds = %land.rhs
  %lnot = xor i1 %call25, true
  br label %land.end

land.end:                                         ; preds = %invoke.cont24, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %lnot, %invoke.cont24 ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE5mergeERS2_(%"class.std::__cxx11::list"* %17, %"class.std::__cxx11::list"* dereferenceable(24) %__carry)
          to label %invoke.cont26 unwind label %lpad13

invoke.cont26:                                    ; preds = %for.body
  %18 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE4swapERS2_(%"class.std::__cxx11::list"* %__carry, %"class.std::__cxx11::list"* dereferenceable(24) %18)
          to label %invoke.cont27 unwind label %lpad13

invoke.cont27:                                    ; preds = %invoke.cont26
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont27
  %19 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %19, i32 1
  store %"class.std::__cxx11::list"* %incdec.ptr, %"class.std::__cxx11::list"** %__counter, align 8
  br label %for.cond

lpad:                                             ; preds = %arrayctor.loop
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %exn.slot, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %ehselector.slot, align 4
  %arraydestroy.isempty = icmp eq %"class.std::__cxx11::list"* %array.begin, %arrayctor.cur
  br i1 %arraydestroy.isempty, label %arraydestroy.done12, label %arraydestroy.body

arraydestroy.body:                                ; preds = %invoke.cont11, %lpad
  %arraydestroy.elementPast = phi %"class.std::__cxx11::list"* [ %arrayctor.cur, %lpad ], [ %arraydestroy.element, %invoke.cont11 ]
  %arraydestroy.element = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arraydestroy.elementPast, i64 -1
  invoke void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %arraydestroy.element)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %arraydestroy.body
  %arraydestroy.done = icmp eq %"class.std::__cxx11::list"* %arraydestroy.element, %array.begin
  br i1 %arraydestroy.done, label %arraydestroy.done12, label %arraydestroy.body

arraydestroy.done12:                              ; preds = %invoke.cont11, %lpad
  br label %ehcleanup

lpad13:                                           ; preds = %for.end43, %for.body38, %do.cond, %for.end, %invoke.cont26, %for.body, %land.rhs, %invoke.cont16, %invoke.cont14, %do.body
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %exn.slot, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad13
  %exn = load i8*, i8** %exn.slot, align 8
  %26 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %call49 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %this1)
          to label %invoke.cont48 unwind label %lpad47

invoke.cont48:                                    ; preds = %catch
  %coerce.dive50 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp46, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call49, %"struct.std::__detail::_List_node_base"** %coerce.dive50, align 8
  %coerce.dive51 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp46, i32 0, i32 0
  %27 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive51, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %27, %"class.std::__cxx11::list"* dereferenceable(24) %__carry)
          to label %invoke.cont52 unwind label %lpad47

invoke.cont52:                                    ; preds = %invoke.cont48
  store i32 0, i32* %__i, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc62, %invoke.cont52
  %28 = load i32, i32* %__i, align 4
  %conv = sext i32 %28 to i64
  %cmp54 = icmp ult i64 %conv, 64
  br i1 %cmp54, label %for.body55, label %for.end63

for.body55:                                       ; preds = %for.cond53
  %call58 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %this1)
          to label %invoke.cont57 unwind label %lpad47

invoke.cont57:                                    ; preds = %for.body55
  %coerce.dive59 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp56, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call58, %"struct.std::__detail::_List_node_base"** %coerce.dive59, align 8
  %29 = load i32, i32* %__i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i64 0, i64 %idxprom
  %coerce.dive60 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp56, i32 0, i32 0
  %30 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive60, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %30, %"class.std::__cxx11::list"* dereferenceable(24) %arrayidx)
          to label %invoke.cont61 unwind label %lpad47

invoke.cont61:                                    ; preds = %invoke.cont57
  br label %for.inc62

for.inc62:                                        ; preds = %invoke.cont61
  %31 = load i32, i32* %__i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %__i, align 4
  br label %for.cond53

for.end:                                          ; preds = %land.end
  %32 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE4swapERS2_(%"class.std::__cxx11::list"* %__carry, %"class.std::__cxx11::list"* dereferenceable(24) %32)
          to label %invoke.cont28 unwind label %lpad13

invoke.cont28:                                    ; preds = %for.end
  %33 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %34 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__fill, align 8
  %cmp29 = icmp eq %"class.std::__cxx11::list"* %33, %34
  br i1 %cmp29, label %if.then30, label %if.end

if.then30:                                        ; preds = %invoke.cont28
  %35 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__fill, align 8
  %incdec.ptr31 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %35, i32 1
  store %"class.std::__cxx11::list"* %incdec.ptr31, %"class.std::__cxx11::list"** %__fill, align 8
  br label %if.end

if.end:                                           ; preds = %if.then30, %invoke.cont28
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %call33 = invoke zeroext i1 @_ZNKSt7__cxx114listIdSaIdEE5emptyEv(%"class.std::__cxx11::list"* %this1)
          to label %invoke.cont32 unwind label %lpad13

invoke.cont32:                                    ; preds = %do.cond
  %lnot34 = xor i1 %call33, true
  br i1 %lnot34, label %do.body, label %do.end

do.end:                                           ; preds = %invoke.cont32
  %arraydecay35 = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i32 0, i32 0
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arraydecay35, i64 1
  store %"class.std::__cxx11::list"* %add.ptr, %"class.std::__cxx11::list"** %__counter, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc41, %do.end
  %36 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %37 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__fill, align 8
  %cmp37 = icmp ne %"class.std::__cxx11::list"* %36, %37
  br i1 %cmp37, label %for.body38, label %for.end43

for.body38:                                       ; preds = %for.cond36
  %38 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %39 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %add.ptr39 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %39, i64 -1
  invoke void @_ZNSt7__cxx114listIdSaIdEE5mergeERS2_(%"class.std::__cxx11::list"* %38, %"class.std::__cxx11::list"* dereferenceable(24) %add.ptr39)
          to label %invoke.cont40 unwind label %lpad13

invoke.cont40:                                    ; preds = %for.body38
  br label %for.inc41

for.inc41:                                        ; preds = %invoke.cont40
  %40 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__counter, align 8
  %incdec.ptr42 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %40, i32 1
  store %"class.std::__cxx11::list"* %incdec.ptr42, %"class.std::__cxx11::list"** %__counter, align 8
  br label %for.cond36

for.end43:                                        ; preds = %for.cond36
  %41 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__fill, align 8
  %add.ptr44 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %41, i64 -1
  invoke void @_ZNSt7__cxx114listIdSaIdEE4swapERS2_(%"class.std::__cxx11::list"* %this1, %"class.std::__cxx11::list"* dereferenceable(24) %add.ptr44)
          to label %invoke.cont45 unwind label %lpad13

invoke.cont45:                                    ; preds = %for.end43
  br label %try.cont

lpad47:                                           ; preds = %for.end63, %invoke.cont57, %for.body55, %invoke.cont48, %catch
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont64 unwind label %terminate.lpad

for.end63:                                        ; preds = %for.cond53
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad47

invoke.cont64:                                    ; preds = %lpad47
  %array.begin80 = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i32 0, i32 0
  %45 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %array.begin80, i64 64
  br label %arraydestroy.body81

try.cont:                                         ; preds = %invoke.cont45
  %array.begin65 = getelementptr inbounds [64 x %"class.std::__cxx11::list"], [64 x %"class.std::__cxx11::list"]* %__tmp, i32 0, i32 0
  %46 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %array.begin65, i64 64
  br label %arraydestroy.body66

arraydestroy.body66:                              ; preds = %invoke.cont70, %try.cont
  %arraydestroy.elementPast67 = phi %"class.std::__cxx11::list"* [ %46, %try.cont ], [ %arraydestroy.element68, %invoke.cont70 ]
  %arraydestroy.element68 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arraydestroy.elementPast67, i64 -1
  invoke void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %arraydestroy.element68)
          to label %invoke.cont70 unwind label %lpad69

invoke.cont70:                                    ; preds = %arraydestroy.body66
  %arraydestroy.done78 = icmp eq %"class.std::__cxx11::list"* %arraydestroy.element68, %array.begin65
  br i1 %arraydestroy.done78, label %arraydestroy.done79, label %arraydestroy.body66

arraydestroy.done79:                              ; preds = %invoke.cont70
  call void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %__carry)
  br label %if.end88

lpad69:                                           ; preds = %arraydestroy.body66
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  store i8* %48, i8** %exn.slot, align 8
  %49 = extractvalue { i8*, i32 } %47, 1
  store i32 %49, i32* %ehselector.slot, align 4
  %arraydestroy.isempty71 = icmp eq %"class.std::__cxx11::list"* %array.begin65, %arraydestroy.element68
  br i1 %arraydestroy.isempty71, label %arraydestroy.done77, label %arraydestroy.body72

arraydestroy.body72:                              ; preds = %invoke.cont75, %lpad69
  %arraydestroy.elementPast73 = phi %"class.std::__cxx11::list"* [ %arraydestroy.element68, %lpad69 ], [ %arraydestroy.element74, %invoke.cont75 ]
  %arraydestroy.element74 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arraydestroy.elementPast73, i64 -1
  invoke void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %arraydestroy.element74)
          to label %invoke.cont75 unwind label %terminate.lpad

invoke.cont75:                                    ; preds = %arraydestroy.body72
  %arraydestroy.done76 = icmp eq %"class.std::__cxx11::list"* %arraydestroy.element74, %array.begin65
  br i1 %arraydestroy.done76, label %arraydestroy.done77, label %arraydestroy.body72

arraydestroy.done77:                              ; preds = %invoke.cont75, %lpad69
  br label %ehcleanup

arraydestroy.body81:                              ; preds = %invoke.cont84, %invoke.cont64
  %arraydestroy.elementPast82 = phi %"class.std::__cxx11::list"* [ %45, %invoke.cont64 ], [ %arraydestroy.element83, %invoke.cont84 ]
  %arraydestroy.element83 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %arraydestroy.elementPast82, i64 -1
  invoke void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %arraydestroy.element83)
          to label %invoke.cont84 unwind label %terminate.lpad

invoke.cont84:                                    ; preds = %arraydestroy.body81
  %arraydestroy.done85 = icmp eq %"class.std::__cxx11::list"* %arraydestroy.element83, %array.begin80
  br i1 %arraydestroy.done85, label %arraydestroy.done86, label %arraydestroy.body81

arraydestroy.done86:                              ; preds = %invoke.cont84
  br label %ehcleanup

ehcleanup:                                        ; preds = %arraydestroy.done86, %arraydestroy.done77, %arraydestroy.done12
  invoke void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %__carry)
          to label %invoke.cont87 unwind label %terminate.lpad

invoke.cont87:                                    ; preds = %ehcleanup
  br label %eh.resume

if.end88:                                         ; preds = %arraydestroy.done79, %land.lhs.true, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont87
  %exn89 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn89, 0
  %lpad.val90 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val90

terminate.lpad:                                   ; preds = %ehcleanup, %arraydestroy.body81, %arraydestroy.body72, %lpad47, %arraydestroy.body
  %50 = landingpad { i8*, i32 }
          catch i8* null
  %51 = extractvalue { i8*, i32 } %50, 0
  call void @__clang_call_terminate(i8* %51) #15
  unreachable

unreachable:                                      ; preds = %for.end63
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE6uniqueEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %__next = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZNKSt14_List_iteratorIdEeqERKS0_(%"struct.std::_List_iterator"* %__first, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %0 = bitcast %"struct.std::_List_iterator"* %__next to i8*
  %1 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %call5 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIdEppEv(%"struct.std::_List_iterator"* %__next)
  %call6 = call zeroext i1 @_ZNKSt14_List_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %call5, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  br i1 %call6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call7 = call dereferenceable(8) double* @_ZNKSt14_List_iteratorIdEdeEv(%"struct.std::_List_iterator"* %__first)
  %2 = load double, double* %call7, align 8
  %call8 = call dereferenceable(8) double* @_ZNKSt14_List_iteratorIdEdeEv(%"struct.std::_List_iterator"* %__next)
  %3 = load double, double* %call8, align 8
  %cmp = fcmp oeq double %2, %3
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.body
  %4 = bitcast %"struct.std::_List_iterator"* %agg.tmp to i8*
  %5 = bitcast %"struct.std::_List_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE8_M_eraseESt14_List_iteratorIdE(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %6)
  br label %if.end11

if.else:                                          ; preds = %while.body
  %7 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  %8 = bitcast %"struct.std::_List_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %9 = bitcast %"struct.std::_List_iterator"* %__next to i8*
  %10 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEED2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEED2Ev(%"class.std::__cxx11::_List_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEED2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl) #1
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl2) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__cur = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %__tmp = alloca %"struct.std::_List_node.6"*, align 8
  %__val = alloca double*, align 8
  %temp.lvalue = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %5 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node.6"*
  store %"struct.std::_List_node.6"* %5, %"struct.std::_List_node.6"** %__tmp, align 8
  %6 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__tmp, align 8
  %7 = bitcast %"struct.std::_List_node.6"* %6 to %"struct.std::__detail::_List_node_base"*
  %_M_next4 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4, align 8
  store %"struct.std::__detail::_List_node_base"* %8, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %9 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__tmp, align 8
  %call = call double* @_ZNSt10_List_nodeIdE9_M_valptrEv(%"struct.std::_List_node.6"* %9)
  store double* %call, double** %__val, align 8
  %call5 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this1)
  call void @_ZNSaIdEC2ISt10_List_nodeIdEEERKSaIT_E(%"class.std::allocator"* %temp.lvalue, %"class.std::allocator"* dereferenceable(1) %call5) #1
  %10 = bitcast %"class.std::allocator"* %temp.lvalue to %"class.std::allocator"*
  %11 = load double*, double** %__val, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.std::allocator"* %10, double* %11)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  %12 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__tmp, align 8
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_put_nodeEPSt10_List_nodeIdE(%"class.std::__cxx11::_List_base"* %this1, %"struct.std::_List_node.6"* %12)
  br label %while.cond

lpad:                                             ; preds = %while.body
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  br label %eh.resume

while.end:                                        ; preds = %while.cond
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"*, %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIdEED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIdEED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt10_List_nodeIdE9_M_valptrEv(%"struct.std::_List_node.6"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node.6"*, align 8
  store %"struct.std::_List_node.6"* %this, %"struct.std::_List_node.6"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node.6", %"struct.std::_List_node.6"* %this1, i32 0, i32 1
  %call = call double* @_ZSt11__addressofIdEPT_RS0_(double* dereferenceable(8) %_M_data)
  ret double* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdEC2ISt10_List_nodeIdEEERKSaIT_E(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.std::allocator"* %1) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.std::allocator"* %this, double* %__p) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_put_nodeEPSt10_List_nodeIdE(%"class.std::__cxx11::_List_base"* %this, %"struct.std::_List_node.6"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.6"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store %"struct.std::_List_node.6"* %__p, %"struct.std::_List_node.6"** %__p.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %1 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE10deallocateERS3_PS2_m(%"class.std::allocator"* dereferenceable(1) %0, %"struct.std::_List_node.6"* %1, i64 1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE10deallocateERS3_PS2_m(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::_List_node.6"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.6"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::_List_node.6"* %__p, %"struct.std::_List_node.6"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEE10deallocateEPS2_m(%"class.std::allocator"* %1, %"struct.std::_List_node.6"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEE10deallocateEPS2_m(%"class.std::allocator"* %this, %"struct.std::_List_node.6"* %__p, i64) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.6"*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"struct.std::_List_node.6"* %__p, %"struct.std::_List_node.6"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_List_node.6"* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt11__addressofIdEPT_RS0_(double* dereferenceable(8) %__r) #2 comdat {
entry:
  %__r.addr = alloca double*, align 8
  store double* %__r, double** %__r.addr, align 8
  %0 = load double*, double** %__r.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  call void @_ZNSt14_List_iteratorIdEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIdEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorIdEeqERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_iterator"* %__x, %"struct.std::_List_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::__detail::_List_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIdEppEv(%"struct.std::_List_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  ret %"struct.std::_List_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_iterator"* %__x, %"struct.std::_List_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt14_List_iteratorIdEdeEv(%"struct.std::_List_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %0 to %"struct.std::_List_node.6"*
  %call = call double* @_ZNSt10_List_nodeIdE9_M_valptrEv(%"struct.std::_List_node.6"* %1)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE8_M_eraseESt14_List_iteratorIdE(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__n = alloca %"struct.std::_List_node.6"*, align 8
  %temp.lvalue = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %0, i64 1)
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* %1) #1
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %3 = bitcast %"struct.std::__detail::_List_node_base"* %2 to %"struct.std::_List_node.6"*
  store %"struct.std::_List_node.6"* %3, %"struct.std::_List_node.6"** %__n, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %4)
  call void @_ZNSaIdEC2ISt10_List_nodeIdEEERKSaIT_E(%"class.std::allocator"* %temp.lvalue, %"class.std::allocator"* dereferenceable(1) %call) #1
  %5 = bitcast %"class.std::allocator"* %temp.lvalue to %"class.std::allocator"*
  %6 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__n, align 8
  %call3 = invoke double* @_ZNSt10_List_nodeIdE9_M_valptrEv(%"struct.std::_List_node.6"* %6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.std::allocator"* %5, double* %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  %7 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %8 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__n, align 8
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_put_nodeEPSt10_List_nodeIdE(%"class.std::__cxx11::_List_base"* %7, %"struct.std::_List_node.6"* %8)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %1 = load i64, i64* %call, align 8
  %sub = sub i64 %1, %0
  store i64 %sub, i64* %call, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"*) #10

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %this, %"struct.std::_List_node"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %this1, i32 0, i32 1
  %call = call i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %_M_data)
  ret i64* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %__r) #2 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIdEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::__detail::_List_node_base"* %__x, %"struct.std::__detail::_List_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__x.addr, align 8
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEEC2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEEC2Ev(%"class.std::__cxx11::_List_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_S4_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %"class.std::__cxx11::list"* dereferenceable(24) %__x, %"struct.std::__detail::_List_node_base"* %__i.coerce) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %__i = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__j = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp12 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp15 = alloca %"struct.std::_List_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__i, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__i.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIdE13_M_const_castEv(%"struct.std::_List_iterator"* %__i)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__j, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIdEppEv(%"struct.std::_List_iterator"* %__j)
  %call5 = call zeroext i1 @_ZNKSt14_List_iteratorIdEeqERKS0_(%"struct.std::_List_iterator"* %__position, %"struct.std::_List_iterator"* dereferenceable(8) %__i)
  br i1 %call5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = call zeroext i1 @_ZNKSt14_List_iteratorIdEeqERKS0_(%"struct.std::_List_iterator"* %__position, %"struct.std::_List_iterator"* dereferenceable(8) %__j)
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %0 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call7 = call %"class.std::__cxx11::list"* @_ZSt11__addressofINSt7__cxx114listIdSaIdEEEEPT_RS4_(%"class.std::__cxx11::list"* dereferenceable(24) %0)
  %cmp = icmp ne %"class.std::__cxx11::list"* %this2, %call7
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE25_M_check_equal_allocatorsERS2_(%"class.std::__cxx11::list"* %this2, %"class.std::__cxx11::list"* dereferenceable(24) %1)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %call10 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIdE13_M_const_castEv(%"struct.std::_List_iterator"* %__position)
  %coerce.dive11 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call10, %"struct.std::__detail::_List_node_base"** %coerce.dive11, align 8
  %call13 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIdE13_M_const_castEv(%"struct.std::_List_iterator"* %__i)
  %coerce.dive14 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp12, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call13, %"struct.std::__detail::_List_node_base"** %coerce.dive14, align 8
  %2 = bitcast %"struct.std::_List_iterator"* %agg.tmp15 to i8*
  %3 = bitcast %"struct.std::_List_iterator"* %__j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp12, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp15, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive18, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE11_M_transferESt14_List_iteratorIdES4_S4_(%"class.std::__cxx11::list"* %this2, %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6)
  %7 = bitcast %"class.std::__cxx11::list"* %this2 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %7, i64 1)
  %8 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %9, i64 1)
  br label %return

return:                                           ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt7__cxx114listIdSaIdEE5emptyEv(%"class.std::__cxx11::list"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %3 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %4 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %cmp = icmp eq %"struct.std::__detail::_List_node_base"* %2, %4
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE5mergeERS2_(%"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"* dereferenceable(24) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__first1 = alloca %"struct.std::_List_iterator", align 8
  %__last1 = alloca %"struct.std::_List_iterator", align 8
  %__first2 = alloca %"struct.std::_List_iterator", align 8
  %__last2 = alloca %"struct.std::_List_iterator", align 8
  %__orig_size = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__next = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp19 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp20 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp32 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp33 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp34 = alloca %"struct.std::_List_iterator", align 8
  %__dist = alloca i64, align 8
  %agg.tmp44 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp45 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call = call %"class.std::__cxx11::list"* @_ZSt11__addressofINSt7__cxx114listIdSaIdEEEEPT_RS4_(%"class.std::__cxx11::list"* dereferenceable(24) %0)
  %cmp = icmp ne %"class.std::__cxx11::list"* %this1, %call
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %entry
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE25_M_check_equal_allocatorsERS2_(%"class.std::__cxx11::list"* %this1, %"class.std::__cxx11::list"* dereferenceable(24) %1)
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call3 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call3, %"struct.std::__detail::_List_node_base"** %coerce.dive4, align 8
  %2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call5 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %2)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first2, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call5, %"struct.std::__detail::_List_node_base"** %coerce.dive6, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call7 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %3)
  %coerce.dive8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last2, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call7, %"struct.std::__detail::_List_node_base"** %coerce.dive8, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call9 = call i64 @_ZNKSt7__cxx114listIdSaIdEE4sizeEv(%"class.std::__cxx11::list"* %4)
  store i64 %call9, i64* %__orig_size, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %call10 = invoke zeroext i1 @_ZNKSt14_List_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %__first1, %"struct.std::_List_iterator"* dereferenceable(8) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %invoke.cont
  %call12 = invoke zeroext i1 @_ZNKSt14_List_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %__first2, %"struct.std::_List_iterator"* dereferenceable(8) %__last2)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %land.rhs
  br label %land.end

land.end:                                         ; preds = %invoke.cont11, %invoke.cont
  %5 = phi i1 [ false, %invoke.cont ], [ %call12, %invoke.cont11 ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call14 = invoke dereferenceable(8) double* @_ZNKSt14_List_iteratorIdEdeEv(%"struct.std::_List_iterator"* %__first2)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %while.body
  %6 = load double, double* %call14, align 8
  %call16 = invoke dereferenceable(8) double* @_ZNKSt14_List_iteratorIdEdeEv(%"struct.std::_List_iterator"* %__first1)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  %7 = load double, double* %call16, align 8
  %cmp17 = fcmp olt double %6, %7
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %invoke.cont15
  %8 = bitcast %"struct.std::_List_iterator"* %__next to i8*
  %9 = bitcast %"struct.std::_List_iterator"* %__first2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"struct.std::_List_iterator"* %agg.tmp to i8*
  %11 = bitcast %"struct.std::_List_iterator"* %__first1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = bitcast %"struct.std::_List_iterator"* %agg.tmp19 to i8*
  %13 = bitcast %"struct.std::_List_iterator"* %__first2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %call22 = invoke dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIdEppEv(%"struct.std::_List_iterator"* %__next)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %if.then18
  %14 = bitcast %"struct.std::_List_iterator"* %agg.tmp20 to i8*
  %15 = bitcast %"struct.std::_List_iterator"* %call22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive23 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %16 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp19, i32 0, i32 0
  %17 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp20, i32 0, i32 0
  %18 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive25, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE11_M_transferESt14_List_iteratorIdES4_S4_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %16, %"struct.std::__detail::_List_node_base"* %17, %"struct.std::__detail::_List_node_base"* %18)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %invoke.cont21
  %19 = bitcast %"struct.std::_List_iterator"* %__first2 to i8*
  %20 = bitcast %"struct.std::_List_iterator"* %__next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  br label %if.end

lpad:                                             ; preds = %invoke.cont42, %invoke.cont40, %if.end39, %if.then31, %while.end, %if.else, %invoke.cont21, %if.then18, %invoke.cont13, %while.body, %land.rhs, %while.cond
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %24 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %25 = bitcast %"struct.std::_List_iterator"* %agg.tmp44 to i8*
  %26 = bitcast %"struct.std::_List_iterator"* %__first2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %27 = bitcast %"struct.std::_List_iterator"* %agg.tmp45 to i8*
  %28 = bitcast %"struct.std::_List_iterator"* %__last2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %coerce.dive46 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp44, i32 0, i32 0
  %29 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive46, align 8
  %coerce.dive47 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp45, i32 0, i32 0
  %30 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive47, align 8
  %call50 = invoke i64 @_ZSt8distanceISt14_List_iteratorIdEENSt15iterator_traitsIT_E15difference_typeES3_S3_(%"struct.std::__detail::_List_node_base"* %29, %"struct.std::__detail::_List_node_base"* %30)
          to label %invoke.cont49 unwind label %lpad48

invoke.cont49:                                    ; preds = %catch
  store i64 %call50, i64* %__dist, align 8
  %31 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %32 = load i64, i64* %__orig_size, align 8
  %33 = load i64, i64* %__dist, align 8
  %sub = sub i64 %32, %33
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %31, i64 %sub)
          to label %invoke.cont51 unwind label %lpad48

invoke.cont51:                                    ; preds = %invoke.cont49
  %34 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %35 = bitcast %"class.std::__cxx11::list"* %34 to %"class.std::__cxx11::_List_base"*
  %36 = load i64, i64* %__dist, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %35, i64 %36)
          to label %invoke.cont52 unwind label %lpad48

invoke.cont52:                                    ; preds = %invoke.cont51
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad48

if.else:                                          ; preds = %invoke.cont15
  %call28 = invoke dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIdEppEv(%"struct.std::_List_iterator"* %__first1)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont27, %invoke.cont26
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call30 = invoke zeroext i1 @_ZNKSt14_List_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %__first2, %"struct.std::_List_iterator"* dereferenceable(8) %__last2)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %while.end
  br i1 %call30, label %if.then31, label %if.end39

if.then31:                                        ; preds = %invoke.cont29
  %37 = bitcast %"struct.std::_List_iterator"* %agg.tmp32 to i8*
  %38 = bitcast %"struct.std::_List_iterator"* %__last1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 8, i32 8, i1 false)
  %39 = bitcast %"struct.std::_List_iterator"* %agg.tmp33 to i8*
  %40 = bitcast %"struct.std::_List_iterator"* %__first2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 8, i32 8, i1 false)
  %41 = bitcast %"struct.std::_List_iterator"* %agg.tmp34 to i8*
  %42 = bitcast %"struct.std::_List_iterator"* %__last2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 8, i1 false)
  %coerce.dive35 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp32, i32 0, i32 0
  %43 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive35, align 8
  %coerce.dive36 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp33, i32 0, i32 0
  %44 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive36, align 8
  %coerce.dive37 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp34, i32 0, i32 0
  %45 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive37, align 8
  invoke void @_ZNSt7__cxx114listIdSaIdEE11_M_transferESt14_List_iteratorIdES4_S4_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %43, %"struct.std::__detail::_List_node_base"* %44, %"struct.std::__detail::_List_node_base"* %45)
          to label %invoke.cont38 unwind label %lpad

invoke.cont38:                                    ; preds = %if.then31
  br label %if.end39

if.end39:                                         ; preds = %invoke.cont38, %invoke.cont29
  %46 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %47 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %48 = bitcast %"class.std::__cxx11::list"* %47 to %"class.std::__cxx11::_List_base"*
  %call41 = invoke i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %48)
          to label %invoke.cont40 unwind label %lpad

invoke.cont40:                                    ; preds = %if.end39
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %46, i64 %call41)
          to label %invoke.cont42 unwind label %lpad

invoke.cont42:                                    ; preds = %invoke.cont40
  %49 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %50 = bitcast %"class.std::__cxx11::list"* %49 to %"class.std::__cxx11::_List_base"*
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %50, i64 0)
          to label %invoke.cont43 unwind label %lpad

invoke.cont43:                                    ; preds = %invoke.cont42
  br label %try.cont

lpad48:                                           ; preds = %invoke.cont52, %invoke.cont51, %invoke.cont49, %catch
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %exn.slot, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont53 unwind label %terminate.lpad

invoke.cont53:                                    ; preds = %lpad48
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont43
  br label %if.end54

if.end54:                                         ; preds = %try.cont, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont53
  %exn55 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn55, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val56

terminate.lpad:                                   ; preds = %lpad48
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #15
  unreachable

unreachable:                                      ; preds = %invoke.cont52
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE4swapERS2_(%"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__xsize = alloca i64, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %3 = bitcast %"class.std::__cxx11::list"* %2 to %"class.std::__cxx11::_List_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %4 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(%"struct.std::__detail::_List_node_base"* dereferenceable(16) %1, %"struct.std::__detail::_List_node_base"* dereferenceable(16) %4) #1
  %5 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %6 = bitcast %"class.std::__cxx11::list"* %5 to %"class.std::__cxx11::_List_base"*
  %call = call i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %6)
  store i64 %call, i64* %__xsize, align 8
  %7 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %8 = bitcast %"class.std::__cxx11::list"* %7 to %"class.std::__cxx11::_List_base"*
  %9 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call4 = call i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %9)
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %8, i64 %call4)
  %10 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %11 = load i64, i64* %__xsize, align 8
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %10, i64 %11)
  %12 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call5 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %12)
  %13 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %14 = bitcast %"class.std::__cxx11::list"* %13 to %"class.std::__cxx11::_List_base"*
  %call6 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %14)
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE10_S_on_swapERS3_S5_(%"class.std::allocator"* dereferenceable(1) %call5, %"class.std::allocator"* dereferenceable(1) %call6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE6spliceESt14_List_iteratorIdERS2_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %"class.std::__cxx11::list"* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp7 = alloca %"struct.std::_List_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call = call zeroext i1 @_ZNKSt7__cxx114listIdSaIdEE5emptyEv(%"class.std::__cxx11::list"* %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE25_M_check_equal_allocatorsERS2_(%"class.std::__cxx11::list"* %this1, %"class.std::__cxx11::list"* dereferenceable(24) %1)
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIdE13_M_const_castEv(%"struct.std::_List_iterator"* %__position)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call5 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE5beginEv(%"class.std::__cxx11::list"* %2)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call5, %"struct.std::__detail::_List_node_base"** %coerce.dive6, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call8 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %3)
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp7, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call8, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp7, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive12, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE11_M_transferESt14_List_iteratorIdES4_S4_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6)
  %7 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %8 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  %call13 = call i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %9)
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %7, i64 %call13)
  %10 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %11 = bitcast %"class.std::__cxx11::list"* %10 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %11, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE25_M_check_equal_allocatorsERS2_(%"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %0)
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %2 = bitcast %"class.std::__cxx11::list"* %1 to %"class.std::__cxx11::_List_base"*
  %call2 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %2)
  %call3 = call zeroext i1 @_ZNSt11__alloc_neqISaISt10_List_nodeIdEELb1EE8_S_do_itERKS2_S5_(%"class.std::allocator"* dereferenceable(1) %call, %"class.std::allocator"* dereferenceable(1) %call2)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #15
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIdE13_M_const_castEv(%"struct.std::_List_iterator"* %this) #2 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::_List_iterator"* %retval to i8*
  %1 = bitcast %"struct.std::_List_iterator"* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE11_M_transferESt14_List_iteratorIdES4_S4_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #2 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_node4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node4, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node5, align 8
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(%"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"* %2) #1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNKSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %0 = load i64, i64* %call, align 8
  ret i64 %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %1 = load i64, i64* %call, align 8
  %add = add i64 %1, %0
  store i64 %add, i64* %call, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  store i64 %0, i64* %call, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNKSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %this, %"struct.std::_List_node"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %this1, i32 0, i32 1
  %call = call i64* @_ZSt11__addressofIKmEPT_RS1_(i64* dereferenceable(8) %_M_data)
  ret i64* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt11__addressofIKmEPT_RS1_(i64* dereferenceable(8) %__r) #2 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNSt11__alloc_neqISaISt10_List_nodeIdEELb1EE8_S_do_itERKS2_S5_(%"class.std::allocator"* dereferenceable(1), %"class.std::allocator"* dereferenceable(1)) #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::allocator"*, align 8
  %.addr1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %.addr1, align 8
  ret i1 false
}

; Function Attrs: noreturn nounwind
declare void @abort() #11

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(%"struct.std::__detail::_List_node_base"* dereferenceable(16), %"struct.std::__detail::_List_node_base"* dereferenceable(16)) #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE10_S_on_swapERS3_S5_(%"class.std::allocator"* dereferenceable(1) %__a, %"class.std::allocator"* dereferenceable(1) %__b) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__b.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"class.std::allocator"* %__b, %"class.std::allocator"** %__b.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__b.addr, align 8
  call void @_ZNSt12__alloc_swapISaISt10_List_nodeIdEELb1EE8_S_do_itERS2_S4_(%"class.std::allocator"* dereferenceable(1) %0, %"class.std::allocator"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12__alloc_swapISaISt10_List_nodeIdEELb1EE8_S_do_itERS2_S4_(%"class.std::allocator"* dereferenceable(1), %"class.std::allocator"* dereferenceable(1)) #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::allocator"*, align 8
  %.addr1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %.addr1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"class.std::__cxx11::list"* @_ZSt11__addressofINSt7__cxx114listIdSaIdEEEEPT_RS4_(%"class.std::__cxx11::list"* dereferenceable(24) %__r) #2 comdat {
entry:
  %__r.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %__r, %"class.std::__cxx11::list"** %__r.addr, align 8
  %0 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__r.addr, align 8
  ret %"class.std::__cxx11::list"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt7__cxx114listIdSaIdEE4sizeEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE13_M_node_countEv(%"class.std::__cxx11::_List_base"* %0)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt8distanceISt14_List_iteratorIdEENSt15iterator_traitsIT_E15difference_typeES3_S3_(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  %0 = bitcast %"struct.std::_List_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"struct.std::_List_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"struct.std::_List_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  call void @_ZSt19__iterator_categoryISt14_List_iteratorIdEENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%"struct.std::_List_iterator"* dereferenceable(8) %__first)
  %4 = bitcast %"class.std::allocator"* %ref.tmp to %"class.std::allocator"*
  %coerce.dive4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive5, align 8
  %call = call i64 @_ZSt10__distanceIdElSt14_List_iteratorIT_ES2_St18input_iterator_tag(%"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6)
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryISt14_List_iteratorIdEENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%"struct.std::_List_iterator"* dereferenceable(8)) #2 comdat {
entry:
  %retval = alloca %"class.std::allocator", align 1
  %.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt10__distanceIdElSt14_List_iteratorIT_ES2_St18input_iterator_tag(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %__tag = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp3 = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  call void @_ZNSt20_List_const_iteratorIdEC2ERKSt14_List_iteratorIdE(%"struct.std::_List_iterator"* %agg.tmp, %"struct.std::_List_iterator"* dereferenceable(8) %__first)
  call void @_ZNSt20_List_const_iteratorIdEC2ERKSt14_List_iteratorIdE(%"struct.std::_List_iterator"* %agg.tmp2, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  %coerce.dive4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp2, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive5, align 8
  %call = call i64 @_ZSt10__distanceIdElSt20_List_const_iteratorIT_ES2_St18input_iterator_tag(%"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"* %1)
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt20_List_const_iteratorIdEC2ERKSt14_List_iteratorIdE(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_iterator"* %__x, %"struct.std::_List_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZSt10__distanceIdElSt20_List_const_iteratorIT_ES2_St18input_iterator_tag(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #0 comdat {
entry:
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %0 = alloca %"class.std::allocator", align 1
  %__beyond = alloca %"struct.std::_List_iterator", align 8
  %__whole = alloca i8, align 1
  %__n = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  %1 = bitcast %"struct.std::_List_iterator"* %__beyond to i8*
  %2 = bitcast %"struct.std::_List_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt20_List_const_iteratorIdEppEv(%"struct.std::_List_iterator"* %__beyond)
  %call2 = call zeroext i1 @_ZNKSt20_List_const_iteratorIdEeqERKS0_(%"struct.std::_List_iterator"* %__first, %"struct.std::_List_iterator"* dereferenceable(8) %__beyond)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %__whole, align 1
  store i64 0, i64* %__n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call3 = call zeroext i1 @_ZNKSt20_List_const_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %__first, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt20_List_const_iteratorIdEppEv(%"struct.std::_List_iterator"* %__first)
  %3 = load i64, i64* %__n, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %__n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %__n, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt20_List_const_iteratorIdEppEv(%"struct.std::_List_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  ret %"struct.std::_List_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt20_List_const_iteratorIdEeqERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_iterator"* %__x, %"struct.std::_List_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::__detail::_List_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt20_List_const_iteratorIdEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store %"struct.std::_List_iterator"* %__x, %"struct.std::_List_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt7__cxx1110_List_baseIdSaIdEE13_M_node_countEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNKSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %0 = load i64, i64* %call, align 8
  ret i64 %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEEC2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl)
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this1)
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
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"*, %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIdEEC2Ev(%"class.std::allocator"* %0) #1
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_impl4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node5 to %"struct.std::__detail::_List_node_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl6, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node7 to %"struct.std::__detail::_List_node_base"*
  %_M_prev = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_prev, align 8
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this1, i64 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIdEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIdEEC2IdEERKSaIT_E(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2Ev(%"class.std::allocator"* %1) #1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEEC2ERKSaISt10_List_nodeIdEE(%"class.std::__cxx11::_List_base"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implC2ERKSaISt10_List_nodeIdEE(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0)
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE22_M_initialize_dispatchIPdEEvT_S5_St12__false_type(%"class.std::__cxx11::list"* %this, double* %__first, double* %__last) #0 comdat align 2 {
entry:
  %0 = alloca %"class.std::allocator", align 1
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double*, double** %__first.addr, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE9push_backERKd(%"class.std::__cxx11::list"* %this1, double* dereferenceable(8) %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE9push_backERKd(%"class.std::__cxx11::list"* %this, double* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIdSaIdEE3endEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %0 = load double*, double** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  call void @_ZNSt7__cxx114listIdSaIdEE9_M_insertESt14_List_iteratorIdERKd(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %1, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIdSaIdEE9_M_insertESt14_List_iteratorIdERKd(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, double* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca double*, align 8
  %__tmp = alloca %"struct.std::_List_node.6"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = load double*, double** %__x.addr, align 8
  %call = call %"struct.std::_List_node.6"* @_ZNSt7__cxx114listIdSaIdEE14_M_create_nodeERKd(%"class.std::__cxx11::list"* %this1, double* dereferenceable(8) %0)
  store %"struct.std::_List_node.6"* %call, %"struct.std::_List_node.6"** %__tmp, align 8
  %1 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__tmp, align 8
  %2 = bitcast %"struct.std::_List_node.6"* %1 to %"struct.std::__detail::_List_node_base"*
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"* %3) #1
  %4 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %4, i64 1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.6"* @_ZNSt7__cxx114listIdSaIdEE14_M_create_nodeERKd(%"class.std::__cxx11::list"* %this, double* dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca double*, align 8
  %__p = alloca %"struct.std::_List_node.6"*, align 8
  %__alloc = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call %"struct.std::_List_node.6"* @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %0)
  store %"struct.std::_List_node.6"* %call, %"struct.std::_List_node.6"** %__p, align 8
  %1 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call2 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIdSaIdEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIdEC2ISt10_List_nodeIdEEERKSaIT_E(%"class.std::allocator"* %__alloc, %"class.std::allocator"* dereferenceable(1) %call2) #1
  %2 = bitcast %"class.std::allocator"* %__alloc to %"class.std::allocator"*
  %3 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__p, align 8
  %call5 = invoke double* @_ZNSt10_List_nodeIdE9_M_valptrEv(%"struct.std::_List_node.6"* %3)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %4 = load double*, double** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"class.std::allocator"* %2, double* %call5, double* dereferenceable(8) %4)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %__alloc) #1
  br label %try.cont

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %catch

lpad3:                                            ; preds = %invoke.cont4, %invoke.cont
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %__alloc) #1
  br label %catch

catch:                                            ; preds = %lpad3, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %11 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %12 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %13 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__p, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_put_nodeEPSt10_List_nodeIdE(%"class.std::__cxx11::_List_base"* %12, %"struct.std::_List_node.6"* %13)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad7

lpad7:                                            ; preds = %invoke.cont8, %catch
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont9 unwind label %terminate.lpad

invoke.cont9:                                     ; preds = %lpad7
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont6
  %17 = load %"struct.std::_List_node.6"*, %"struct.std::_List_node.6"** %__p, align 8
  ret %"struct.std::_List_node.6"* %17

eh.resume:                                        ; preds = %invoke.cont9
  %exn10 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn10, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11

terminate.lpad:                                   ; preds = %lpad7
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #15
  unreachable

unreachable:                                      ; preds = %invoke.cont8
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #10

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.6"* @_ZNSt7__cxx1110_List_baseIdSaIdEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %_M_impl to %"class.std::allocator"*
  %call = call %"struct.std::_List_node.6"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE8allocateERS3_m(%"class.std::allocator"* dereferenceable(1) %0, i64 1)
  ret %"struct.std::_List_node.6"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"class.std::allocator"* %this, double* %__p, double* dereferenceable(8) %__val) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__p.addr, align 8
  %1 = bitcast double* %0 to i8*
  %2 = bitcast i8* %1 to double*
  %3 = load double*, double** %__val.addr, align 8
  %4 = load double, double* %3, align 8
  store double %4, double* %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.6"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIdEEE8allocateERS3_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_List_node.6"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEE8allocateEmPKv(%"class.std::allocator"* %1, i64 %2, i8* null)
  ret %"struct.std::_List_node.6"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.6"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEE8allocateEmPKv(%"class.std::allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIdEE8max_sizeEv(%"class.std::allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 24
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_List_node.6"*
  ret %"struct.std::_List_node.6"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIdEE8max_sizeEv(%"class.std::allocator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret i64 768614336404564650
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIdSaIdEE10_List_implC2ERKSaISt10_List_nodeIdEE(%"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"*, %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaISt10_List_nodeIdEEC2ERKS1_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #1
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl", %"struct.std::__cxx11::_List_base<double, std::allocator<double> >::_List_impl"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIdEEC2ERKS1_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2ERKS3_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %2) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIdEEC2ERKS3_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z8set_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %container = alloca %"class.std::set", align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  call void @_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_(%"class.std::set"* %container, double* %0, double* %1)
  call void @_ZNSt3setIdSt4lessIdESaIdEED2Ev(%"class.std::set"* %container)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_(%"class.std::set"* %this, double* %__first, double* %__last) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEEC2Ev(%"class.std::_Rb_tree"* %_M_t)
  %_M_t2 = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_uniqueIPdEEvT_S8_(%"class.std::_Rb_tree"* %_M_t2, double* %0, double* %1)
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
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(%"class.std::_Rb_tree"* %_M_t)
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
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt3setIdSt4lessIdESaIdEED2Ev(%"class.std::set"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl) #1
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl3 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl3) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_beginEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %3 = bitcast %"struct.std::_Rb_tree_node_base"* %2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #0 comdat align 2 {
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
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_drop_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %5)
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeIdEED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIdEED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEED2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #2 comdat align 2 {
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
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #2 comdat align 2 {
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
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_drop_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %0)
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_put_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %temp.lvalue = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  call void @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13get_allocatorEv(%"class.std::allocator"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
  %0 = bitcast %"class.std::allocator"* %temp.lvalue to %"class.std::allocator"*
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %call = invoke double* @_ZNSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.std::allocator"* %0, double* %call)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_put_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeIdEEE10deallocateERS3_PS2_m(%"class.std::allocator"* dereferenceable(1) %call, %"struct.std::_Rb_tree_node"* %0, i64 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeIdEEE10deallocateERS3_PS2_m(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE10deallocateEPS2_m(%"class.std::allocator"* %1, %"struct.std::_Rb_tree_node"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE10deallocateEPS2_m(%"class.std::allocator"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13get_allocatorEv(%"class.std::allocator"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSaIdEC2ISt13_Rb_tree_nodeIdEEERKSaIT_E(%"class.std::allocator"* %agg.result, %"class.std::allocator"* dereferenceable(1) %call) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call double* @_ZSt11__addressofIdEPT_RS0_(double* dereferenceable(8) %_M_value_field)
  ret double* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdEC2ISt13_Rb_tree_nodeIdEEERKSaIT_E(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.std::allocator"* %1) #1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EEC2Ev(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_uniqueIPdEEvT_S8_(%"class.std::_Rb_tree"* %this, double* %__first, double* %__last) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__an = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %coerce = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeC2ERS5_(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %__an, %"class.std::_Rb_tree"* dereferenceable(48) %this1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIdEC2ERKSt17_Rb_tree_iteratorIdE(%"struct.std::_Rb_tree_const_iterator"* %agg.tmp, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %ref.tmp)
  %2 = load double*, double** %__first.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdERKdRT_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, double* dereferenceable(8) %2, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %__an)
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeC2ERS5_(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %this, %"class.std::_Rb_tree"* dereferenceable(48) %__t) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, align 8
  %__t.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %this, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %this.addr, align 8
  store %"class.std::_Rb_tree"* %__t, %"class.std::_Rb_tree"** %__t.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node", %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %__t.addr, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %_M_t, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %_M_header)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIdEC2ERKSt17_Rb_tree_iteratorIdE(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %__it) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__it.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__it, %"struct.std::_Rb_tree_const_iterator"** %__it.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %__it.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdERKdRT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, double* dereferenceable(8) %__v, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %__node_gen) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__v.addr = alloca double*, align 8
  %__node_gen.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, align 8
  %__res = alloca %"struct.std::pair", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__v, double** %__v.addr, align 8
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %__node_gen.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load double*, double** %__v.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %2)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call3 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, double* dereferenceable(8) %call)
  %4 = bitcast %"struct.std::pair"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %5 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 0
  %6 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 1
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 1
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %12 = load double*, double** %__v.addr, align 8
  %13 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %__node_gen.addr, align 8
  %call5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSB_RKdRT_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, double* dereferenceable(8) %12, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %13)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %first7 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first7, align 8
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %this, double* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__x.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__x.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, double* dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca double*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp37 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp55 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp69 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp78 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__k, double** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorIdE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %call3
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call4 = call i64 @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE4sizeEv(%"class.std::_Rb_tree"* %this1)
  %cmp5 = icmp ugt i64 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %1, i32 0, i32 0
  %call6 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call6, align 8
  %call7 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %3 = load double*, double** %__k.addr, align 8
  %call8 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %call7, double* dereferenceable(8) %3)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp, align 8
  %call10 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load double*, double** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %4)
  %5 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %6 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 0
  %7 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 1
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 1
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 8
  br label %return

if.else12:                                        ; preds = %entry
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %10 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl13 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %10, i32 0, i32 0
  %11 = load double*, double** %__k.addr, align 8
  %_M_node15 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node15, align 8
  %call16 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12)
  %call17 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare14, double* dereferenceable(8) %11, double* dereferenceable(8) %call16)
  br i1 %call17, label %if.then18, label %if.else44

if.then18:                                        ; preds = %if.else12
  %13 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__before to i8*
  %14 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node19, align 8
  %call20 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call20, align 8
  %cmp21 = icmp eq %"struct.std::_Rb_tree_node_base"* %15, %16
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %call23 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %call24 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call23, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call24)
  br label %return

if.else25:                                        ; preds = %if.then18
  %_M_impl26 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %17 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl26 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare27 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %17, i32 0, i32 0
  %call28 = call dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEmmEv(%"struct.std::_Rb_tree_const_iterator"* %__before)
  %_M_node29 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %call28, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node29, align 8
  %call30 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %18)
  %19 = load double*, double** %__k.addr, align 8
  %call31 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare27, double* dereferenceable(8) %call30, double* dereferenceable(8) %19)
  br i1 %call31, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.else25
  %_M_node33 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__before, i32 0, i32 0
  %20 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node33, align 8
  %call34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20)
  %cmp35 = icmp eq %"struct.std::_Rb_tree_node"* %call34, null
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, align 8
  %_M_node38 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp37, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node40, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %21 = load double*, double** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %21)
  %22 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %23 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 0
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 0
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 8
  %25 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 1
  %26 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 1
  store %"struct.std::_Rb_tree_node_base"* %26, %"struct.std::_Rb_tree_node_base"** %25, align 8
  br label %return

if.else44:                                        ; preds = %if.else12
  %_M_impl45 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %27 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl45 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare46 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %27, i32 0, i32 0
  %_M_node47 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %28 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node47, align 8
  %call48 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %28)
  %29 = load double*, double** %__k.addr, align 8
  %call49 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare46, double* dereferenceable(8) %call48, double* dereferenceable(8) %29)
  br i1 %call49, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.else44
  %30 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__after to i8*
  %31 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %_M_node51 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node51, align 8
  %call52 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %33 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call52, align 8
  %cmp53 = icmp eq %"struct.std::_Rb_tree_node_base"* %32, %33
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then50
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp55, align 8
  %call56 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp55, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call56)
  br label %return

if.else57:                                        ; preds = %if.then50
  %_M_impl58 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %34 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl58 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare59 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %34, i32 0, i32 0
  %35 = load double*, double** %__k.addr, align 8
  %call60 = call dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEppEv(%"struct.std::_Rb_tree_const_iterator"* %__after)
  %_M_node61 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %call60, i32 0, i32 0
  %36 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node61, align 8
  %call62 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %36)
  %call63 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare59, double* dereferenceable(8) %35, double* dereferenceable(8) %call62)
  br i1 %call63, label %if.then64, label %if.else74

if.then64:                                        ; preds = %if.else57
  %_M_node65 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %37 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node65, align 8
  %call66 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %37)
  %cmp67 = icmp eq %"struct.std::_Rb_tree_node"* %call66, null
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.then64
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, align 8
  %_M_node70 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp69, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node72, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %38 = load double*, double** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %38)
  %39 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %40 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %39, i32 0, i32 0
  %41 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 0
  store %"struct.std::_Rb_tree_node_base"* %41, %"struct.std::_Rb_tree_node_base"** %40, align 8
  %42 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %39, i32 0, i32 1
  %43 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 1
  store %"struct.std::_Rb_tree_node_base"* %43, %"struct.std::_Rb_tree_node_base"** %42, align 8
  br label %return

if.else76:                                        ; preds = %if.else44
  %_M_node77 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp78, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node77, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %44 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %45 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %44, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %45
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSB_RKdRT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, double* dereferenceable(8) %__v, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %__node_gen) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca double*, align 8
  %__node_gen.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, align 8
  %__insert_left = alloca i8, align 1
  %tmp = alloca %"class.std::allocator", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store double* %__v, double** %__v.addr, align 8
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %__node_gen.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %cmp2 = icmp eq %"struct.std::_Rb_tree_node_base"* %1, %call
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %2, i32 0, i32 0
  %3 = load double*, double** %__v.addr, align 8
  %call3 = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %3)
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %call3, double* dereferenceable(8) %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %__node_gen.addr, align 8
  %7 = load double*, double** %__v.addr, align 8
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeclIdEEPSt13_Rb_tree_nodeIdERKT_(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %6, double* dereferenceable(8) %7)
  store %"struct.std::_Rb_tree_node"* %call7, %"struct.std::_Rb_tree_node"** %__z, align 8
  %8 = load i8, i8* %__insert_left, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %12 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl8 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 8
  %13 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %13, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %_M_header) #1
  %_M_impl9 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %14 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl9 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 8
  %15 = bitcast i8* %add.ptr10 to %"struct.std::_Rb_tree_header"*
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %15, i32 0, i32 1
  %16 = load i64, i64* %_M_node_count, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %18 = bitcast %"struct.std::_Rb_tree_node"* %17 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %18)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %19 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %19
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  ret %"struct.std::_Rb_tree_node_base"* %_M_header
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %tmp = alloca %"class.std::allocator", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %call = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %call)
  ret double* %call1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %this, double* dereferenceable(8) %__x, double* dereferenceable(8) %__y) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__x.addr = alloca double*, align 8
  %__y.addr = alloca double*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store double* %__y, double** %__y.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load double*, double** %__x.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__y.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeclIdEEPSt13_Rb_tree_nodeIdERKT_(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %this, double* dereferenceable(8) %__arg) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, align 8
  %__arg.addr = alloca double*, align 8
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %this, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %this.addr, align 8
  store double* %__arg, double** %__arg.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node", %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %this1, i32 0, i32 0
  %ref = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %_M_t, align 8
  %0 = load double*, double** %__arg.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE14_M_create_nodeERKd(%"class.std::_Rb_tree"* %ref, double* dereferenceable(8) %0)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) #10

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE14_M_create_nodeERKd(%"class.std::_Rb_tree"* %this, double* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca double*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %1 = load double*, double** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_construct_nodeEPSt13_Rb_tree_nodeIdERKd(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %0, double* dereferenceable(8) %1)
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1)
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeIdEEE8allocateERS3_m(%"class.std::allocator"* dereferenceable(1) %call, i64 1)
  ret %"struct.std::_Rb_tree_node"* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_construct_nodeEPSt13_Rb_tree_nodeIdERKd(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, double* dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__node.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__x.addr = alloca double*, align 8
  %temp.lvalue = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  invoke void @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13get_allocatorEv(%"class.std::allocator"* sret %temp.lvalue, %"class.std::_Rb_tree"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"class.std::allocator"* %temp.lvalue to %"class.std::allocator"*
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %call = invoke double* @_ZNSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load double*, double** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"class.std::allocator"* %0, double* %call, double* dereferenceable(8) %2)
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
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
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %temp.lvalue) #1
  br label %catch

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %9 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_put_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %10)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
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
  call void @__clang_call_terminate(i8* %15) #15
  unreachable

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeIdEEE8allocateERS3_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE8allocateEmPKv(%"class.std::allocator"* %1, i64 %2, i8* null)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE8allocateEmPKv(%"class.std::allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE8max_sizeEv(%"class.std::allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 40
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEE8max_sizeEv(%"class.std::allocator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret i64 461168601842738790
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call double* @_ZNKSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNKSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_value_field = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call double* @_ZSt11__addressofIKdEPT_RS1_(double* dereferenceable(8) %_M_value_field)
  ret double* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt11__addressofIKdEPT_RS1_(double* dereferenceable(8) %__r) #2 comdat {
entry:
  %__r.addr = alloca double*, align 8
  store double* %__r, double** %__r.addr, align 8
  %0 = load double*, double** %__r.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorIdE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE4sizeEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 1
  %2 = load i64, i64* %_M_node_count, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %_M_right
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__a, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__b) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__a.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__b.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__b, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %this1 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair"* %this1 to %"class.std::allocator"*
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__a.addr, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 1
  %3 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__b.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %4, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(%"class.std::_Rb_tree"* %this, double* dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca double*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp19 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp22 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__k, double** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
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
  %3 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %3, i32 0, i32 0
  %4 = load double*, double** %__k.addr, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt13_Rb_tree_nodeIdE(%"struct.std::_Rb_tree_node"* %5)
  %call4 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %4, double* dereferenceable(8) %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %__comp, align 1
  %6 = load i8, i8* %__comp, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %8)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %__j, %"struct.std::_Rb_tree_node_base"* %11)
  %12 = load i8, i8* %__comp, align 1
  %tobool7 = trunc i8 %12 to i1
  br i1 %tobool7, label %if.then, label %if.end13

if.then:                                          ; preds = %while.end
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5beginEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call9 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorIdEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %__j, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %ref.tmp)
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %13 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %ref.tmp11, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp11, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y)
  br label %return

if.else:                                          ; preds = %if.then
  %call12 = call dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEmmEv(%"struct.std::_Rb_tree_const_iterator"* %__j)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %while.end
  %_M_impl14 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %15 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl14 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare15 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %15, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__j, i32 0, i32 0
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call16 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %16)
  %17 = load double*, double** %__k.addr, align 8
  %call17 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare15, double* dereferenceable(8) %call16, double* dereferenceable(8) %17)
  br i1 %call17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %19 = bitcast %"struct.std::_Rb_tree_node"* %18 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %19, %"struct.std::_Rb_tree_node_base"** %ref.tmp19, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp19, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y)
  br label %return

if.end20:                                         ; preds = %if.end13
  %_M_node21 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp22, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node21, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp22)
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %if.then10
  %20 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %21 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %21
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %_M_left
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEmmEv(%"struct.std::_Rb_tree_const_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #19
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_const_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEppEv(%"struct.std::_Rb_tree_const_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #19
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_const_iterator"* %this1
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #12

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #12

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt13_Rb_tree_nodeIdE(%"struct.std::_Rb_tree_node"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %tmp = alloca %"class.std::allocator", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_valueEPKSt13_Rb_tree_nodeIdE(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %call)
  ret double* %call1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5beginEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorIdEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_valueEPKSt13_Rb_tree_nodeIdE(%"struct.std::_Rb_tree_node"* %__x) #0 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call double* @_ZNKSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE13_Rb_tree_implIS3_Lb0EEC2Ev(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeIdEEC2Ev(%"class.std::allocator"* %0) #1
  %1 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this1 to %"struct.std::_Rb_tree_key_compare"*
  invoke void @_ZNSt20_Rb_tree_key_compareISt4lessIdEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this1 to i8*
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
  %8 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeIdEED2Ev(%"class.std::allocator"* %8) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIdEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.std::allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEEC2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt20_Rb_tree_key_compareISt4lessIdEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %this) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %this) #2 comdat align 2 {
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
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIdEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z13multiset_testPdS_i(double* %first, double* %last, i32 %number_of_times) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %number_of_times.addr = alloca i32, align 4
  %container = alloca %"class.std::set", align 8
  %first1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %last2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %next = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store i32 %number_of_times, i32* %number_of_times.addr, align 4
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  call void @_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_(%"class.std::set"* %container, double* %0, double* %1)
  %call = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt8multisetIdSt4lessIdESaIdEE5beginEv(%"class.std::set"* %container)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %first1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call4 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt8multisetIdSt4lessIdESaIdEE3endEv(%"class.std::set"* %container)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %last2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call4, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %invoke.cont3
  %call7 = invoke zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIdEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %first1, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %last2)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %while.cond
  br i1 %call7, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont6
  %2 = bitcast %"struct.std::_Rb_tree_const_iterator"* %next to i8*
  %3 = bitcast %"struct.std::_Rb_tree_const_iterator"* %first1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %call9 = invoke dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIdEppEv(%"struct.std::_Rb_tree_const_iterator"* %next)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %while.body
  %call11 = invoke zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIdEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %call9, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %last2)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  br i1 %call11, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont10
  br label %while.end

lpad:                                             ; preds = %if.else, %if.then16, %invoke.cont12, %if.end, %invoke.cont8, %while.body, %while.cond, %invoke.cont, %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  invoke void @_ZNSt8multisetIdSt4lessIdESaIdEED2Ev(%"class.std::set"* %container)
          to label %invoke.cont22 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont10
  %call13 = invoke dereferenceable(8) double* @_ZNKSt23_Rb_tree_const_iteratorIdEdeEv(%"struct.std::_Rb_tree_const_iterator"* %first1)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %if.end
  %7 = load double, double* %call13, align 8
  %call15 = invoke dereferenceable(8) double* @_ZNKSt23_Rb_tree_const_iteratorIdEdeEv(%"struct.std::_Rb_tree_const_iterator"* %next)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont12
  %8 = load double, double* %call15, align 8
  %cmp = fcmp oeq double %7, %8
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %invoke.cont14
  %9 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %10 = bitcast %"struct.std::_Rb_tree_const_iterator"* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %coerce.dive17 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive17, align 8
  invoke void @_ZNSt8multisetIdSt4lessIdESaIdEE5eraseESt23_Rb_tree_const_iteratorIdE(%"class.std::set"* %container, %"struct.std::_Rb_tree_node_base"* %11)
          to label %invoke.cont18 unwind label %lpad

invoke.cont18:                                    ; preds = %if.then16
  br label %if.end21

if.else:                                          ; preds = %invoke.cont14
  %call20 = invoke dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIdEppEv(%"struct.std::_Rb_tree_const_iterator"* %first1)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %invoke.cont19, %invoke.cont18
  br label %while.cond

while.end:                                        ; preds = %if.then, %invoke.cont6
  call void @_ZNSt8multisetIdSt4lessIdESaIdEED2Ev(%"class.std::set"* %container)
  ret void

invoke.cont22:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont22
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val23 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val23

terminate.lpad:                                   ; preds = %lpad
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_(%"class.std::set"* %this, double* %__first, double* %__last) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEEC2Ev(%"class.std::_Rb_tree"* %_M_t)
  %_M_t2 = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_equalIPdEEvT_S8_(%"class.std::_Rb_tree"* %_M_t2, double* %0, double* %1)
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
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(%"class.std::_Rb_tree"* %_M_t)
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
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8multisetIdSt4lessIdESaIdEE5beginEv(%"class.std::set"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5beginEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8multisetIdSt4lessIdESaIdEE3endEv(%"class.std::set"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv(%"class.std::_Rb_tree"* %_M_t)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIdEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIdEppEv(%"struct.std::_Rb_tree_const_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #19
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_const_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIdEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8multisetIdSt4lessIdESaIdEED2Ev(%"class.std::set"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt23_Rb_tree_const_iteratorIdEdeEv(%"struct.std::_Rb_tree_const_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call double* @_ZNKSt13_Rb_tree_nodeIdE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8multisetIdSt4lessIdESaIdEE5eraseESt23_Rb_tree_const_iteratorIdE(%"class.std::set"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::set"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::set"* %this, %"class.std::set"** %this.addr, align 8
  %this1 = load %"class.std::set"*, %"class.std::set"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::set", %"class.std::set"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5eraseESt23_Rb_tree_const_iteratorIdE(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5eraseESt23_Rb_tree_const_iteratorIdE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_erase_auxESt23_Rb_tree_const_iteratorIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_erase_auxESt23_Rb_tree_const_iteratorIdE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %2 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %2, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %_M_header) #1
  %3 = bitcast %"struct.std::_Rb_tree_node_base"* %call to %"struct.std::_Rb_tree_node"*
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %__y, align 8
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_drop_nodeEPSt13_Rb_tree_nodeIdE(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %4)
  %_M_impl2 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl2 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 8
  %6 = bitcast i8* %add.ptr3 to %"struct.std::_Rb_tree_header"*
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %6, i32 0, i32 1
  %7 = load i64, i64* %_M_node_count, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %_M_node_count, align 8
  ret void
}

; Function Attrs: nounwind
declare %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) #10

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #12

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorIdEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %_M_header)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIdEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5beginEv(%"class.std::_Rb_tree"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %1, i32 0, i32 0
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIdEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_equalIPdEEvT_S8_(%"class.std::_Rb_tree"* %this, double* %__first, double* %__last) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__an = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %coerce = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_Alloc_nodeC2ERS5_(%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %__an, %"class.std::_Rb_tree"* dereferenceable(48) %this1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE3endEv(%"class.std::_Rb_tree"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIdEC2ERKSt17_Rb_tree_iteratorIdE(%"struct.std::_Rb_tree_const_iterator"* %agg.tmp, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %ref.tmp)
  %2 = load double*, double** %__first.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdERKdRT_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, double* dereferenceable(8) %2, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %__an)
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdERKdRT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, double* dereferenceable(8) %__v, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %__node_gen) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__v.addr = alloca double*, align 8
  %__node_gen.addr = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, align 8
  %__res = alloca %"struct.std::pair", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %tmp = alloca %"class.std::allocator", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__v, double** %__v.addr, align 8
  store %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %__node_gen.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = load double*, double** %__v.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %2)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %call3 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %3, double* dereferenceable(8) %call)
  %4 = bitcast %"struct.std::pair"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %5 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 0
  %6 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %4, i32 0, i32 1
  %8 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call3, 1
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second4 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %__res, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second4, align 8
  %12 = load double*, double** %__v.addr, align 8
  %13 = load %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"*, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"** %__node_gen.addr, align 8
  %call5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_INS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSB_RKdRT_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"* %11, double* dereferenceable(8) %12, %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Alloc_node"* dereferenceable(8) %13)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call5, %"struct.std::_Rb_tree_node_base"** %coerce.dive6, align 8
  br label %return

if.end:                                           ; preds = %entry
  %14 = load double*, double** %__v.addr, align 8
  %call7 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %14)
  %coerce.dive8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call7, %"struct.std::_Rb_tree_node_base"** %coerce.dive8, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive9, align 8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: noinline uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, double* dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca double*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp37 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp49 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp63 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp69 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp70 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__k, double** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorIdE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position)
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %call3
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call4 = call i64 @_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE4sizeEv(%"class.std::_Rb_tree"* %this1)
  %cmp5 = icmp ugt i64 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %1, i32 0, i32 0
  %2 = load double*, double** %__k.addr, align 8
  %call6 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call6, align 8
  %call7 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %3)
  %call8 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %2, double* dereferenceable(8) %call7)
  br i1 %call8, label %if.else, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp, align 8
  %call10 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load double*, double** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE23_M_get_insert_equal_posERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %4)
  %5 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %6 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 0
  %7 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 1
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 1
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 8
  br label %return

if.else12:                                        ; preds = %entry
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %10 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl13 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %10, i32 0, i32 0
  %_M_node15 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node15, align 8
  %call16 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %11)
  %12 = load double*, double** %__k.addr, align 8
  %call17 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare14, double* dereferenceable(8) %call16, double* dereferenceable(8) %12)
  br i1 %call17, label %if.else44, label %if.then18

if.then18:                                        ; preds = %if.else12
  %13 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__before to i8*
  %14 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node19, align 8
  %call20 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call20, align 8
  %cmp21 = icmp eq %"struct.std::_Rb_tree_node_base"* %15, %16
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %call23 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  %call24 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call23, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call24)
  br label %return

if.else25:                                        ; preds = %if.then18
  %_M_impl26 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %17 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl26 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare27 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %17, i32 0, i32 0
  %18 = load double*, double** %__k.addr, align 8
  %call28 = call dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEmmEv(%"struct.std::_Rb_tree_const_iterator"* %__before)
  %_M_node29 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %call28, i32 0, i32 0
  %19 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node29, align 8
  %call30 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %19)
  %call31 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare27, double* dereferenceable(8) %18, double* dereferenceable(8) %call30)
  br i1 %call31, label %if.else42, label %if.then32

if.then32:                                        ; preds = %if.else25
  %_M_node33 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__before, i32 0, i32 0
  %20 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node33, align 8
  %call34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20)
  %cmp35 = icmp eq %"struct.std::_Rb_tree_node"* %call34, null
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, align 8
  %_M_node38 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp37, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node40, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %21 = load double*, double** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE23_M_get_insert_equal_posERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %21)
  %22 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %23 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 0
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 0
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 8
  %25 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 1
  %26 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 1
  store %"struct.std::_Rb_tree_node_base"* %26, %"struct.std::_Rb_tree_node_base"** %25, align 8
  br label %return

if.else44:                                        ; preds = %if.else12
  %27 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__after to i8*
  %28 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %_M_node45 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %29 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node45, align 8
  %call46 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  %30 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call46, align 8
  %cmp47 = icmp eq %"struct.std::_Rb_tree_node_base"* %29, %30
  br i1 %cmp47, label %if.then48, label %if.else51

if.then48:                                        ; preds = %if.else44
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp49, align 8
  %call50 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp49, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call50)
  br label %return

if.else51:                                        ; preds = %if.else44
  %_M_impl52 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %31 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl52 to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare53 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %31, i32 0, i32 0
  %call54 = call dereferenceable(8) %"struct.std::_Rb_tree_const_iterator"* @_ZNSt17_Rb_tree_iteratorIdEppEv(%"struct.std::_Rb_tree_const_iterator"* %__after)
  %_M_node55 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %call54, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node55, align 8
  %call56 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %32)
  %33 = load double*, double** %__k.addr, align 8
  %call57 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare53, double* dereferenceable(8) %call56, double* dereferenceable(8) %33)
  br i1 %call57, label %if.else68, label %if.then58

if.then58:                                        ; preds = %if.else51
  %_M_node59 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node59, align 8
  %call60 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %34)
  %cmp61 = icmp eq %"struct.std::_Rb_tree_node"* %call60, null
  br i1 %cmp61, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.then58
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp63, align 8
  %_M_node64 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp63, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node64)
  br label %return

if.else65:                                        ; preds = %if.then58
  %_M_node66 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__after, i32 0, i32 0
  %_M_node67 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node66, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node67)
  br label %return

if.else68:                                        ; preds = %if.else51
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, align 8
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp70, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp69, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp70)
  br label %return

return:                                           ; preds = %if.else68, %if.else65, %if.then62, %if.then48, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %35 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %36
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerERKd(%"class.std::_Rb_tree"* %this, double* dereferenceable(8) %__v) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__v.addr = alloca double*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %tmp = alloca %"class.std::allocator", align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__v, double** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %__y, align 8
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
  %3 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %3, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt13_Rb_tree_nodeIdE(%"struct.std::_Rb_tree_node"* %4)
  %5 = load double*, double** %__v.addr, align 8
  %call4 = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %5)
  %call5 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %call3, double* dereferenceable(8) %call4)
  br i1 %call5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %call7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call6, %cond.true ], [ %call7, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__y, align 8
  %11 = load double*, double** %__v.addr, align 8
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_lowerEPSt18_Rb_tree_node_baseRKd(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node_base"* %10, double* dereferenceable(8) %11)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive9, align 8
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_lowerEPSt18_Rb_tree_node_baseRKd(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__p, double* dereferenceable(8) %__v) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__v.addr = alloca double*, align 8
  %__insert_left = alloca i8, align 1
  %tmp = alloca %"class.std::allocator", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store double* %__v, double** %__v.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %call
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call2 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %3 = load double*, double** %__v.addr, align 8
  %call3 = call dereferenceable(8) double* @_ZNKSt9_IdentityIdEclERKd(%"class.std::allocator"* %tmp, double* dereferenceable(8) %3)
  %call4 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %call2, double* dereferenceable(8) %call3)
  %lnot = xor i1 %call4, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %frombool = zext i1 %4 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %5 = load double*, double** %__v.addr, align 8
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE14_M_create_nodeERKd(%"class.std::_Rb_tree"* %this1, double* dereferenceable(8) %5)
  store %"struct.std::_Rb_tree_node"* %call6, %"struct.std::_Rb_tree_node"** %__z, align 8
  %6 = load i8, i8* %__insert_left, align 1
  %tobool = trunc i8 %6 to i1
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %10 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl7 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 8
  %11 = bitcast i8* %add.ptr to %"struct.std::_Rb_tree_header"*
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %11, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %_M_header) #1
  %_M_impl8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %12 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl8 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %12, i64 8
  %13 = bitcast i8* %add.ptr9 to %"struct.std::_Rb_tree_header"*
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %13, i32 0, i32 1
  %14 = load i64, i64* %_M_node_count, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %15 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %16 = bitcast %"struct.std::_Rb_tree_node"* %15 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIdEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %16)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %17 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %17
}

; Function Attrs: noinline uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE23_M_get_insert_equal_posERKd(%"class.std::_Rb_tree"* %this, double* dereferenceable(8) %__k) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca double*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store double* %__k, double** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_beginEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_M_endEv(%"class.std::_Rb_tree"* %this1)
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %__y, align 8
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
  %3 = bitcast %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>, std::allocator<double> >::_Rb_tree_impl"* %_M_impl to %"struct.std::_Rb_tree_key_compare"*
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %3, i32 0, i32 0
  %4 = load double*, double** %__k.addr, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call dereferenceable(8) double* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE6_S_keyEPKSt13_Rb_tree_nodeIdE(%"struct.std::_Rb_tree_node"* %5)
  %call4 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%"class.std::allocator"* %_M_key_compare, double* dereferenceable(8) %4, double* dereferenceable(8) %call3)
  br i1 %call4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node"* %10 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %ref.tmp, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y)
  %12 = bitcast %"struct.std::pair"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %13 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %12, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %13
}

; Function Attrs: noinline nounwind uwtable
define void @_Z10initializePdS_(double* %first, double* %last) #2 {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %value = alloca double, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double 0.000000e+00, double* %value, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %value, align 8
  %3 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %3, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  store double %2, double* %3, align 8
  %4 = load double, double* %value, align 8
  %add = fadd double %4, 1.000000e+00
  store double %add, double* %value, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @_Z6logtwod(double %x) #2 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @log(double %0) #1
  %call1 = call double @log(double 2.000000e+00) #1
  %div = fdiv double %call, %call1
  ret double %div
}

; Function Attrs: nounwind
declare double @log(double) #10

; Function Attrs: noinline nounwind uwtable
define i32 @_Z15number_of_testsi(i32 %size) #2 {
entry:
  %size.addr = alloca i32, align 4
  %n = alloca double, align 8
  %largest_n = alloca double, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %n, align 8
  store double 1.000000e+06, double* %largest_n, align 8
  %1 = load double, double* %largest_n, align 8
  %2 = load double, double* %largest_n, align 8
  %call = call double @_Z6logtwod(double %2)
  %mul = fmul double %1, %call
  %3 = load double, double* %n, align 8
  %4 = load double, double* %n, align 8
  %call1 = call double @_Z6logtwod(double %4)
  %mul2 = fmul double %3, %call1
  %div = fdiv double %mul, %mul2
  %call3 = call double @floor(double %div) #6
  %conv4 = fptosi double %call3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind readnone
declare double @floor(double) #13

; Function Attrs: noinline uwtable
define void @_Z9run_testsi(i32 %size) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %size.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %length = alloca i64, align 8
  %buf = alloca %"class.std::vector", align 8
  %ref.tmp = alloca double, align 8
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %buffer = alloca double*, align 8
  %buffer_end = alloca double*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call i32 @_Z15number_of_testsi(i32 %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 2, %1
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %length, align 8
  call void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* @result_times)
  %2 = load i64, i64* %length, align 8
  store double 0.000000e+00, double* %ref.tmp, align 8
  call void @_ZNSaIdEC2Ev(%"class.std::allocator"* %ref.tmp1) #1
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(%"class.std::vector"* %buf, i64 %2, double* dereferenceable(8) %ref.tmp, %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp1) #1
  %call4 = invoke dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %buf, i64 0)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  store double* %call4, double** %buffer, align 8
  %3 = load double*, double** %buffer, align 8
  %4 = load i64, i64* %length, align 8
  %add.ptr = getelementptr inbounds double, double* %3, i64 %4
  store double* %add.ptr, double** %buffer_end, align 8
  %5 = load double*, double** %buffer, align 8
  %6 = load double*, double** %buffer, align 8
  %7 = load i32, i32* %size.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr5 = getelementptr inbounds double, double* %6, i64 %idx.ext
  invoke void @_Z10initializePdS_(double* %5, double* %add.ptr5)
          to label %invoke.cont6 unwind label %lpad2

invoke.cont6:                                     ; preds = %invoke.cont3
  %8 = load double*, double** %buffer, align 8
  %9 = load i32, i32* %size.addr, align 4
  %idx.ext7 = sext i32 %9 to i64
  %add.ptr8 = getelementptr inbounds double, double* %8, i64 %idx.ext7
  %10 = load double*, double** %buffer_end, align 8
  invoke void @_Z10initializePdS_(double* %add.ptr8, double* %10)
          to label %invoke.cont9 unwind label %lpad2

invoke.cont9:                                     ; preds = %invoke.cont6
  %11 = load double*, double** %buffer, align 8
  %12 = load double*, double** %buffer_end, align 8
  invoke void @_ZSt14random_shuffleIPdEvT_S1_(double* %11, double* %12)
          to label %invoke.cont10 unwind label %lpad2

invoke.cont10:                                    ; preds = %invoke.cont9
  %13 = load double*, double** %buffer, align 8
  %14 = load double*, double** %buffer_end, align 8
  %15 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z10array_testPdS_i, double* %13, double* %14, i32 %15)
          to label %invoke.cont11 unwind label %lpad2

invoke.cont11:                                    ; preds = %invoke.cont10
  %16 = load double*, double** %buffer, align 8
  %17 = load double*, double** %buffer_end, align 8
  %18 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z19vector_pointer_testPdS_i, double* %16, double* %17, i32 %18)
          to label %invoke.cont12 unwind label %lpad2

invoke.cont12:                                    ; preds = %invoke.cont11
  %19 = load double*, double** %buffer, align 8
  %20 = load double*, double** %buffer_end, align 8
  %21 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z20vector_iterator_testPdS_i, double* %19, double* %20, i32 %21)
          to label %invoke.cont13 unwind label %lpad2

invoke.cont13:                                    ; preds = %invoke.cont12
  %22 = load double*, double** %buffer, align 8
  %23 = load double*, double** %buffer_end, align 8
  %24 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z10deque_testPdS_i, double* %22, double* %23, i32 %24)
          to label %invoke.cont14 unwind label %lpad2

invoke.cont14:                                    ; preds = %invoke.cont13
  %25 = load double*, double** %buffer, align 8
  %26 = load double*, double** %buffer_end, align 8
  %27 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z9list_testPdS_i, double* %25, double* %26, i32 %27)
          to label %invoke.cont15 unwind label %lpad2

invoke.cont15:                                    ; preds = %invoke.cont14
  %28 = load double*, double** %buffer, align 8
  %29 = load double*, double** %buffer_end, align 8
  %30 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z8set_testPdS_i, double* %28, double* %29, i32 %30)
          to label %invoke.cont16 unwind label %lpad2

invoke.cont16:                                    ; preds = %invoke.cont15
  %31 = load double*, double** %buffer, align 8
  %32 = load double*, double** %buffer_end, align 8
  %33 = load i32, i32* %n, align 4
  invoke void @_Z3runPFvPdS_iES_S_i(void (double*, double*, i32)* @_Z13multiset_testPdS_i, double* %31, double* %32, i32 %33)
          to label %invoke.cont17 unwind label %lpad2

invoke.cont17:                                    ; preds = %invoke.cont16
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %buf)
  ret void

lpad:                                             ; preds = %entry
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %exn.slot, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %ehselector.slot, align 4
  call void @_ZNSaIdED2Ev(%"class.std::allocator"* %ref.tmp1) #1
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont16, %invoke.cont15, %invoke.cont14, %invoke.cont13, %invoke.cont12, %invoke.cont11, %invoke.cont10, %invoke.cont9, %invoke.cont6, %invoke.cont3, %invoke.cont
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %exn.slot, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %buf)
          to label %invoke.cont18 unwind label %terminate.lpad

invoke.cont18:                                    ; preds = %lpad2
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont18, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val19 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val19

terminate.lpad:                                   ; preds = %lpad2
  %40 = landingpad { i8*, i32 }
          catch i8* null
  %41 = extractvalue { i8*, i32 } %40, 0
  call void @__clang_call_terminate(i8* %41) #15
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE5clearEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8
  call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this1, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(%"class.std::vector"* %this, i64 %__n, double* dereferenceable(8) %__value, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %1, %"class.std::allocator"* dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  %4 = load double*, double** %__value.addr, align 8
  invoke void @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd(%"class.std::vector"* %this1, i64 %3, double* dereferenceable(8) %4)
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
  invoke void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %8)
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
  call void @__clang_call_terminate(i8* %10) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %this, i64 %__n) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %1, i64 %2
  ret double* %add.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14random_shuffleIPdEvT_S1_(double* %__first, double* %__last) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__j = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__first.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %2, i64 1
  store double* %add.ptr, double** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load double*, double** %__i, align 8
  %4 = load double*, double** %__last.addr, align 8
  %cmp1 = icmp ne double* %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double*, double** %__first.addr, align 8
  %call = call i32 @rand() #1
  %conv = sext i32 %call to i64
  %6 = load double*, double** %__i, align 8
  %7 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %rem = srem i64 %conv, %add
  %add.ptr2 = getelementptr inbounds double, double* %5, i64 %rem
  store double* %add.ptr2, double** %__j, align 8
  %8 = load double*, double** %__i, align 8
  %9 = load double*, double** %__j, align 8
  %cmp3 = icmp ne double* %8, %9
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %10 = load double*, double** %__i, align 8
  %11 = load double*, double** %__j, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %10, double* %11)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %12, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end5

if.end5:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0)
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
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
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd(%"class.std::vector"* %this, i64 %__n, double* dereferenceable(8) %__value) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load double*, double** %__value.addr, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
  %call2 = call double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %1, i64 %2, double* dereferenceable(8) %3, %"class.std::allocator"* dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store double* %call2, double** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %__first, i64 %__n, double* dereferenceable(8) %__x, %"class.std::allocator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca double*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load double*, double** %__x.addr, align 8
  %call = call double* @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(double* %1, i64 %2, double* dereferenceable(8) %3)
  ret double* %call
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
define linkonce_odr double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %__first, i64 %__n, double* dereferenceable(8) %__value) #2 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store double* %call, double** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load double*, double** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store double* %1, double** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load double*, double** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store double* %add.ptr, double** %_M_end_of_storage, align 8
  ret void
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
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %0, double* %2, %"class.std::allocator"* dereferenceable(1) %call)
  %4 = load double*, double** %__pos.addr, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store double* %4, double** %_M_finish3, align 8
  ret void
}

; Function Attrs: noinline norecurse uwtable
define i32 @main() #14 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* @_ZZ4mainE5sizes, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  call void @_Z9run_testsi(i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
