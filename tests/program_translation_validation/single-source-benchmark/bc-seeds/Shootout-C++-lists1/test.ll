; ModuleID = 'Shootout-C++-lists1/test.bc'
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
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl" = type { %"struct.std::_List_node" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_node.3" = type <{ %"struct.std::__detail::_List_node_base", i32, [4 x i8] }>
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { i32* }

$_ZNSt14_List_iteratorIiEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE5beginEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE3endEv = comdat any

$_ZNKSt14_List_iteratorIiEneERKS0_ = comdat any

$_ZNKSt14_List_iteratorIiEdeEv = comdat any

$_ZNSt14_List_iteratorIiEppEv = comdat any

$_ZNSt10_List_nodeIiE9_M_valptrEv = comdat any

$_ZSt11__addressofIiEPT_RS0_ = comdat any

$_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNSt7__cxx114listIiSaIiEEC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEEC2EmRKiRKS1_ = comdat any

$_ZNSaIiED2Ev = comdat any

$_Z4iotaISt14_List_iteratorIiEiEvT_S2_T0_ = comdat any

$_ZNKSt7__cxx114listIiSaIiEE5emptyEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE5frontEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE10push_frontERKi = comdat any

$_ZNSt7__cxx114listIiSaIiEE9pop_frontEv = comdat any

$_ZNSt7__cxx114listIiSaIiEEC2ERKS2_ = comdat any

$_ZNSt7__cxx114listIiSaIiEED2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE7reverseEv = comdat any

$_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_ = comdat any

$_ZNKSt14_List_iteratorIiEeqERKS0_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE9push_backERKi = comdat any

$_ZNSt7__cxx114listIiSaIiEE6spliceESt14_List_iteratorIiERS2_ = comdat any

$_ZNKSt7__cxx114listIiSaIiEE4sizeEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE4backEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt14_List_iteratorIiEmmEv = comdat any

$_ZNKSt7__cxx1110_List_baseIiSaIiEE13_M_node_countEv = comdat any

$_ZNKSt10_List_nodeImE9_M_valptrEv = comdat any

$_ZSt11__addressofIKmEPT_RS1_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE25_M_check_equal_allocatorsERS2_ = comdat any

$_ZNKSt14_List_iteratorIiE13_M_const_castEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE11_M_transferESt14_List_iteratorIiES4_S4_ = comdat any

$_ZNKSt7__cxx1110_List_baseIiSaIiEE11_M_get_sizeEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm = comdat any

$_ZNSt10_List_nodeImE9_M_valptrEv = comdat any

$_ZSt11__addressofImEPT_RS0_ = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZNSt11__alloc_neqISaISt10_List_nodeIiEELb1EE8_S_do_itERKS2_S5_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE9_M_insertESt14_List_iteratorIiERKi = comdat any

$_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeERKi = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv = comdat any

$_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_ = comdat any

$_ZSt9__find_ifISt14_List_iteratorIiEN9__gnu_cxx5__ops16_Iter_equals_valIKiEEET_S7_S7_T0_ = comdat any

$_ZSt19__iterator_categoryISt14_List_iteratorIiEENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt9__find_ifISt14_List_iteratorIiEN9__gnu_cxx5__ops16_Iter_equals_valIKiEEET_S7_S7_T0_St18input_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclISt14_List_iteratorIiEEEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_ = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev = comdat any

$_ZNSaISt10_List_nodeIiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi = comdat any

$_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE17_S_select_on_copyERKS3_ = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEEC2ERKSaISt10_List_nodeIiEE = comdat any

$_ZNKSt7__cxx114listIiSaIiEE5beginEv = comdat any

$_ZNKSt7__cxx114listIiSaIiEE3endEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type = comdat any

$_ZNKSt20_List_const_iteratorIiEneERKS0_ = comdat any

$_ZNKSt20_List_const_iteratorIiEdeEv = comdat any

$_ZNSt20_List_const_iteratorIiEppEv = comdat any

$_ZNKSt10_List_nodeIiE9_M_valptrEv = comdat any

$_ZSt11__addressofIKiEPT_RS1_ = comdat any

$_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2ERKSaISt10_List_nodeIiEE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv = comdat any

$_ZNSaISt10_List_nodeIiEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm = comdat any

$_ZNSt14_List_iteratorIiEppEi = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSaISt10_List_nodeIiEEC2IiEERKSaIT_E = comdat any

$_ZNSt7__cxx114listIiSaIiEE18_M_fill_initializeEmRKi = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev = comdat any

$_ZNSaISt10_List_nodeIiEEC2Ev = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_lists1.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_lists1.cpp() #0 section ".text.startup" {
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
define void @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi(%"class.std::__cxx11::list"* %L, i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %lastc = alloca i32, align 4
  %i = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp1 = alloca %"struct.std::_List_iterator", align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %lastc, align 4
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %i)
  store i32 0, i32* %c, align 4
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %L)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %1 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %2 = bitcast %"struct.std::_List_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %L)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* dereferenceable(8) %ref.tmp1)
  br i1 %call4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call5 = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
  %6 = load i32, i32* %call5, align 4
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %6)
  %7 = load i32, i32* %c, align 4
  %8 = load i32, i32* %lastc, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call9 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i)
  %9 = load i32, i32* %c, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* null, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #3 comdat align 2 {
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
define linkonce_odr dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %0 to %"struct.std::_List_node.3"*
  %call = call i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %1)
  ret i32* %call
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %this) #3 comdat align 2 {
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

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node.3"*, align 8
  store %"struct.std::_List_node.3"* %this, %"struct.std::_List_node.3"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node.3", %"struct.std::_List_node.3"* %this1, i32 0, i32 1
  %call = call i32* @_ZSt11__addressofIiEPT_RS0_(i32* dereferenceable(4) %_M_data)
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32* @_ZSt11__addressofIiEPT_RS0_(i32* dereferenceable(4) %__r) #3 comdat {
entry:
  %__r.addr = alloca i32*, align 8
  store i32* %__r, i32** %__r.addr, align 8
  %0 = load i32*, i32** %__r.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #3 comdat align 2 {
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

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %N = alloca i32, align 4
  %i = alloca %"struct.std::_List_iterator", align 8
  %B = alloca %"class.std::__cxx11::list", align 8
  %A = alloca %"class.std::__cxx11::list", align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp8 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp12 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp25 = alloca %"class.std::__cxx11::list", align 8
  %agg.tmp32 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp36 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp40 = alloca i32, align 4
  %coerce = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp46 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp57 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp61 = alloca %"struct.std::_List_iterator", align 8
  %coerce69 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp71 = alloca %"struct.std::_List_iterator", align 8
  %mid = alloca i32, align 4
  %ref.tmp82 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp86 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp100 = alloca %"class.std::__cxx11::list", align 8
  %sum = alloca i32, align 4
  %ref.tmp106 = alloca %"struct.std::_List_iterator", align 8
  %ref.tmp111 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp133 = alloca %"struct.std::_List_iterator", align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false5

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #13
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cond.true2, label %cond.false

cond.true2:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %4) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi i32 [ 1, %cond.true2 ], [ %call4, %cond.false ]
  br label %cond.end6

cond.false5:                                      ; preds = %entry
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.end
  %cond7 = phi i32 [ %cond, %cond.end ], [ 1000000, %cond.false5 ]
  store i32 %cond7, i32* %N, align 4
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* %i)
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* %B)
  %5 = load i32, i32* %N, align 4
  %conv = sext i32 %5 to i64
  store i32 0, i32* %ref.tmp, align 4
  call void @_ZNSaIiEC2Ev(%"class.std::ios_base::Init"* %ref.tmp8) #2
  invoke void @_ZNSt7__cxx114listIiSaIiEEC2EmRKiRKS1_(%"class.std::__cxx11::list"* %A, i64 %conv, i32* dereferenceable(4) %ref.tmp, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %cond.end6
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %ref.tmp8) #2
  %call11 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call11, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call14 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont13 unwind label %lpad9

invoke.cont13:                                    ; preds = %invoke.cont10
  %coerce.dive15 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp12, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call14, %"struct.std::__detail::_List_node_base"** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp12, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive17, align 8
  invoke void @_Z4iotaISt14_List_iteratorIiEiEvT_S2_T0_(%"struct.std::__detail::_List_node_base"* %6, %"struct.std::__detail::_List_node_base"* %7, i32 1)
          to label %invoke.cont18 unwind label %lpad9

invoke.cont18:                                    ; preds = %invoke.cont13
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont24, %invoke.cont18
  %call20 = invoke zeroext i1 @_ZNKSt7__cxx114listIiSaIiEE5emptyEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont19 unwind label %lpad9

invoke.cont19:                                    ; preds = %while.cond
  %lnot = xor i1 %call20, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont19
  %call22 = invoke dereferenceable(4) i32* @_ZNSt7__cxx114listIiSaIiEE5frontEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont21 unwind label %lpad9

invoke.cont21:                                    ; preds = %while.body
  invoke void @_ZNSt7__cxx114listIiSaIiEE10push_frontERKi(%"class.std::__cxx11::list"* %B, i32* dereferenceable(4) %call22)
          to label %invoke.cont23 unwind label %lpad9

invoke.cont23:                                    ; preds = %invoke.cont21
  invoke void @_ZNSt7__cxx114listIiSaIiEE9pop_frontEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont24 unwind label %lpad9

invoke.cont24:                                    ; preds = %invoke.cont23
  br label %while.cond

lpad:                                             ; preds = %cond.end6
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %ref.tmp8) #2
  br label %ehcleanup154

lpad9:                                            ; preds = %invoke.cont147, %invoke.cont145, %invoke.cont143, %invoke.cont141, %invoke.cont139, %invoke.cont138, %invoke.cont134, %invoke.cont131, %invoke.cont129, %for.end128, %for.inc125, %if.then121, %for.body117, %invoke.cont112, %for.cond110, %invoke.cont104, %invoke.cont103, %for.end, %for.inc, %invoke.cont95, %if.then, %for.body, %invoke.cont87, %for.cond, %invoke.cont80, %invoke.cont78, %invoke.cont75, %invoke.cont72, %invoke.cont67, %invoke.cont62, %invoke.cont58, %invoke.cont55, %invoke.cont53, %invoke.cont50, %invoke.cont47, %invoke.cont43, %invoke.cont37, %invoke.cont33, %invoke.cont31, %invoke.cont29, %invoke.cont28, %while.end, %invoke.cont23, %invoke.cont21, %while.body, %while.cond, %invoke.cont13, %invoke.cont10, %invoke.cont
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %ehcleanup

while.end:                                        ; preds = %invoke.cont19
  invoke void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(%"class.std::__cxx11::list"* %agg.tmp25, %"class.std::__cxx11::list"* dereferenceable(24) %B)
          to label %invoke.cont26 unwind label %lpad9

invoke.cont26:                                    ; preds = %while.end
  invoke void @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi(%"class.std::__cxx11::list"* %agg.tmp25, i32 2)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont26
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %agg.tmp25)
          to label %invoke.cont29 unwind label %lpad9

invoke.cont29:                                    ; preds = %invoke.cont28
  invoke void @_ZNSt7__cxx114listIiSaIiEE7reverseEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont31 unwind label %lpad9

invoke.cont31:                                    ; preds = %invoke.cont29
  %call34 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont33 unwind label %lpad9

invoke.cont33:                                    ; preds = %invoke.cont31
  %coerce.dive35 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp32, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call34, %"struct.std::__detail::_List_node_base"** %coerce.dive35, align 8
  %call38 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont37 unwind label %lpad9

invoke.cont37:                                    ; preds = %invoke.cont33
  %coerce.dive39 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp36, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call38, %"struct.std::__detail::_List_node_base"** %coerce.dive39, align 8
  store i32 0, i32* %ref.tmp40, align 4
  %coerce.dive41 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp32, i32 0, i32 0
  %14 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive41, align 8
  %coerce.dive42 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp36, i32 0, i32 0
  %15 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive42, align 8
  %call44 = invoke %"struct.std::__detail::_List_node_base"* @_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_(%"struct.std::__detail::_List_node_base"* %14, %"struct.std::__detail::_List_node_base"* %15, i32* dereferenceable(4) %ref.tmp40)
          to label %invoke.cont43 unwind label %lpad9

invoke.cont43:                                    ; preds = %invoke.cont37
  %coerce.dive45 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call44, %"struct.std::__detail::_List_node_base"** %coerce.dive45, align 8
  %call48 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont47 unwind label %lpad9

invoke.cont47:                                    ; preds = %invoke.cont43
  %coerce.dive49 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp46, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call48, %"struct.std::__detail::_List_node_base"** %coerce.dive49, align 8
  %call51 = invoke zeroext i1 @_ZNKSt14_List_iteratorIiEeqERKS0_(%"struct.std::_List_iterator"* %coerce, %"struct.std::_List_iterator"* dereferenceable(8) %ref.tmp46)
          to label %invoke.cont50 unwind label %lpad9

invoke.cont50:                                    ; preds = %invoke.cont47
  %cond52 = select i1 %call51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)
  %call54 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %cond52)
          to label %invoke.cont53 unwind label %lpad9

invoke.cont53:                                    ; preds = %invoke.cont50
  %call56 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call54, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont55 unwind label %lpad9

invoke.cont55:                                    ; preds = %invoke.cont53
  %call59 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont58 unwind label %lpad9

invoke.cont58:                                    ; preds = %invoke.cont55
  %coerce.dive60 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp57, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call59, %"struct.std::__detail::_List_node_base"** %coerce.dive60, align 8
  %call63 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont62 unwind label %lpad9

invoke.cont62:                                    ; preds = %invoke.cont58
  %coerce.dive64 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp61, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call63, %"struct.std::__detail::_List_node_base"** %coerce.dive64, align 8
  %coerce.dive65 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp57, i32 0, i32 0
  %16 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive65, align 8
  %coerce.dive66 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp61, i32 0, i32 0
  %17 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive66, align 8
  %call68 = invoke %"struct.std::__detail::_List_node_base"* @_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_(%"struct.std::__detail::_List_node_base"* %16, %"struct.std::__detail::_List_node_base"* %17, i32* dereferenceable(4) %N)
          to label %invoke.cont67 unwind label %lpad9

invoke.cont67:                                    ; preds = %invoke.cont62
  %coerce.dive70 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %coerce69, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call68, %"struct.std::__detail::_List_node_base"** %coerce.dive70, align 8
  %call73 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont72 unwind label %lpad9

invoke.cont72:                                    ; preds = %invoke.cont67
  %coerce.dive74 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp71, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call73, %"struct.std::__detail::_List_node_base"** %coerce.dive74, align 8
  %call76 = invoke zeroext i1 @_ZNKSt14_List_iteratorIiEeqERKS0_(%"struct.std::_List_iterator"* %coerce69, %"struct.std::_List_iterator"* dereferenceable(8) %ref.tmp71)
          to label %invoke.cont75 unwind label %lpad9

invoke.cont75:                                    ; preds = %invoke.cont72
  %cond77 = select i1 %call76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)
  %call79 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %cond77)
          to label %invoke.cont78 unwind label %lpad9

invoke.cont78:                                    ; preds = %invoke.cont75
  %call81 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call79, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont80 unwind label %lpad9

invoke.cont80:                                    ; preds = %invoke.cont78
  %18 = load i32, i32* %N, align 4
  %div = sdiv i32 %18, 2
  store i32 %div, i32* %mid, align 4
  %call84 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont83 unwind label %lpad9

invoke.cont83:                                    ; preds = %invoke.cont80
  %coerce.dive85 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp82, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call84, %"struct.std::__detail::_List_node_base"** %coerce.dive85, align 8
  %19 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %20 = bitcast %"struct.std::_List_iterator"* %ref.tmp82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont98, %invoke.cont83
  %call88 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont87 unwind label %lpad9

invoke.cont87:                                    ; preds = %for.cond
  %coerce.dive89 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp86, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call88, %"struct.std::__detail::_List_node_base"** %coerce.dive89, align 8
  %call91 = invoke zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* dereferenceable(8) %ref.tmp86)
          to label %invoke.cont90 unwind label %lpad9

invoke.cont90:                                    ; preds = %invoke.cont87
  br i1 %call91, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont90
  %call93 = invoke dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
          to label %invoke.cont92 unwind label %lpad9

invoke.cont92:                                    ; preds = %for.body
  %21 = load i32, i32* %call93, align 4
  %22 = load i32, i32* %mid, align 4
  %cmp94 = icmp slt i32 %21, %22
  br i1 %cmp94, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont92
  %call96 = invoke dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
          to label %invoke.cont95 unwind label %lpad9

invoke.cont95:                                    ; preds = %if.then
  invoke void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* %A, i32* dereferenceable(4) %call96)
          to label %invoke.cont97 unwind label %lpad9

invoke.cont97:                                    ; preds = %invoke.cont95
  br label %if.end

lpad27:                                           ; preds = %invoke.cont26
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %exn.slot, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %agg.tmp25)
          to label %invoke.cont30 unwind label %terminate.lpad

invoke.cont30:                                    ; preds = %lpad27
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont97, %invoke.cont92
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call99 = invoke dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i)
          to label %invoke.cont98 unwind label %lpad9

invoke.cont98:                                    ; preds = %for.inc
  br label %for.cond

for.end:                                          ; preds = %invoke.cont90
  invoke void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(%"class.std::__cxx11::list"* %agg.tmp100, %"class.std::__cxx11::list"* dereferenceable(24) %A)
          to label %invoke.cont101 unwind label %lpad9

invoke.cont101:                                   ; preds = %for.end
  invoke void @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi(%"class.std::__cxx11::list"* %agg.tmp100, i32 10)
          to label %invoke.cont103 unwind label %lpad102

invoke.cont103:                                   ; preds = %invoke.cont101
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %agg.tmp100)
          to label %invoke.cont104 unwind label %lpad9

invoke.cont104:                                   ; preds = %invoke.cont103
  store i32 0, i32* %sum, align 4
  %call108 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont107 unwind label %lpad9

invoke.cont107:                                   ; preds = %invoke.cont104
  %coerce.dive109 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp106, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call108, %"struct.std::__detail::_List_node_base"** %coerce.dive109, align 8
  %26 = bitcast %"struct.std::_List_iterator"* %i to i8*
  %27 = bitcast %"struct.std::_List_iterator"* %ref.tmp106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  br label %for.cond110

for.cond110:                                      ; preds = %invoke.cont126, %invoke.cont107
  %call113 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont112 unwind label %lpad9

invoke.cont112:                                   ; preds = %for.cond110
  %coerce.dive114 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %ref.tmp111, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call113, %"struct.std::__detail::_List_node_base"** %coerce.dive114, align 8
  %call116 = invoke zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %i, %"struct.std::_List_iterator"* dereferenceable(8) %ref.tmp111)
          to label %invoke.cont115 unwind label %lpad9

invoke.cont115:                                   ; preds = %invoke.cont112
  br i1 %call116, label %for.body117, label %for.end128

for.body117:                                      ; preds = %invoke.cont115
  %call119 = invoke dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
          to label %invoke.cont118 unwind label %lpad9

invoke.cont118:                                   ; preds = %for.body117
  %28 = load i32, i32* %call119, align 4
  %cmp120 = icmp slt i32 %28, 1000
  br i1 %cmp120, label %if.then121, label %if.end124

if.then121:                                       ; preds = %invoke.cont118
  %call123 = invoke dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %i)
          to label %invoke.cont122 unwind label %lpad9

invoke.cont122:                                   ; preds = %if.then121
  %29 = load i32, i32* %call123, align 4
  %30 = load i32, i32* %sum, align 4
  %add = add nsw i32 %30, %29
  store i32 %add, i32* %sum, align 4
  br label %if.end124

lpad102:                                          ; preds = %invoke.cont101
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %exn.slot, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %agg.tmp100)
          to label %invoke.cont105 unwind label %terminate.lpad

invoke.cont105:                                   ; preds = %lpad102
  br label %ehcleanup

if.end124:                                        ; preds = %invoke.cont122, %invoke.cont118
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %call127 = invoke dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %i)
          to label %invoke.cont126 unwind label %lpad9

invoke.cont126:                                   ; preds = %for.inc125
  br label %for.cond110

for.end128:                                       ; preds = %invoke.cont115
  %34 = load i32, i32* %sum, align 4
  %call130 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %34)
          to label %invoke.cont129 unwind label %lpad9

invoke.cont129:                                   ; preds = %for.end128
  %call132 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call130, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont131 unwind label %lpad9

invoke.cont131:                                   ; preds = %invoke.cont129
  %call135 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont134 unwind label %lpad9

invoke.cont134:                                   ; preds = %invoke.cont131
  %coerce.dive136 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp133, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call135, %"struct.std::__detail::_List_node_base"** %coerce.dive136, align 8
  %coerce.dive137 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp133, i32 0, i32 0
  %35 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive137, align 8
  invoke void @_ZNSt7__cxx114listIiSaIiEE6spliceESt14_List_iteratorIiERS2_(%"class.std::__cxx11::list"* %A, %"struct.std::__detail::_List_node_base"* %35, %"class.std::__cxx11::list"* dereferenceable(24) %B)
          to label %invoke.cont138 unwind label %lpad9

invoke.cont138:                                   ; preds = %invoke.cont134
  %call140 = invoke i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont139 unwind label %lpad9

invoke.cont139:                                   ; preds = %invoke.cont138
  %call142 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* @_ZSt4cout, i64 %call140)
          to label %invoke.cont141 unwind label %lpad9

invoke.cont141:                                   ; preds = %invoke.cont139
  %call144 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont143 unwind label %lpad9

invoke.cont143:                                   ; preds = %invoke.cont141
  %call146 = invoke dereferenceable(4) i32* @_ZNSt7__cxx114listIiSaIiEE4backEv(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont145 unwind label %lpad9

invoke.cont145:                                   ; preds = %invoke.cont143
  %36 = load i32, i32* %call146, align 4
  %call148 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call144, i32 %36)
          to label %invoke.cont147 unwind label %lpad9

invoke.cont147:                                   ; preds = %invoke.cont145
  %call150 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call148, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont149 unwind label %lpad9

invoke.cont149:                                   ; preds = %invoke.cont147
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont152 unwind label %lpad151

invoke.cont152:                                   ; preds = %invoke.cont149
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %B)
  %37 = load i32, i32* %retval, align 4
  ret i32 %37

lpad151:                                          ; preds = %invoke.cont149
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %exn.slot, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %ehselector.slot, align 4
  br label %ehcleanup154

ehcleanup:                                        ; preds = %invoke.cont105, %invoke.cont30, %lpad9
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %A)
          to label %invoke.cont153 unwind label %terminate.lpad

invoke.cont153:                                   ; preds = %ehcleanup
  br label %ehcleanup154

ehcleanup154:                                     ; preds = %invoke.cont153, %lpad151, %lpad
  invoke void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %B)
          to label %invoke.cont155 unwind label %terminate.lpad

invoke.cont155:                                   ; preds = %ehcleanup154
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont155
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val156 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val156

terminate.lpad:                                   ; preds = %ehcleanup154, %ehcleanup, %lpad102, %lpad27
  %41 = landingpad { i8*, i32 }
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  call void @__clang_call_terminate(i8* %42) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEEC2EmRKiRKS1_(%"class.std::__cxx11::list"* %this, i64 %__n, i32* dereferenceable(4) %__value, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaISt10_List_nodeIiEEC2IiEERKSaIT_E(%"class.std::ios_base::Init"* %ref.tmp, %"class.std::ios_base::Init"* dereferenceable(1) %1) #2
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2ERKSaISt10_List_nodeIiEE(%"class.std::__cxx11::_List_base"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load i32*, i32** %__value.addr, align 8
  invoke void @_ZNSt7__cxx114listIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::__cxx11::list"* %this1, i64 %2, i32* dereferenceable(4) %3)
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
  call void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  %10 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(%"class.std::__cxx11::_List_base"* %10)
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
  call void @__clang_call_terminate(i8* %12) #14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4iotaISt14_List_iteratorIiEiEvT_S2_T0_(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce, i32 %__value) #0 comdat {
entry:
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %__value.addr = alloca i32, align 4
  %coerce = alloca %"struct.std::_List_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  store i32 %__value, i32* %__value.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %__first, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %__value.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %__value.addr, align 4
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNSt14_List_iteratorIiEppEi(%"struct.std::_List_iterator"* %__first, i32 0)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %call4 = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %coerce)
  store i32 %0, i32* %call4, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt7__cxx114listIiSaIiEE5emptyEv(%"class.std::__cxx11::list"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %3 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %4 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %cmp = icmp eq %"struct.std::__detail::_List_node_base"* %2, %4
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt7__cxx114listIiSaIiEE5frontEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %coerce = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %coerce, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call2 = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %coerce)
  ret i32* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE10push_frontERKi(%"class.std::__cxx11::list"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %0 = load i32*, i32** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertESt14_List_iteratorIiERKi(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %1, i32* dereferenceable(4) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE9pop_frontEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(%"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"* dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp4 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp8 = alloca %"class.std::ios_base::Init", align 1
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %2 = bitcast %"class.std::__cxx11::list"* %1 to %"class.std::__cxx11::_List_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %2)
  %call2 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE17_S_select_on_copyERKS3_(%"class.std::ios_base::Init"* dereferenceable(1) %call)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2ERKSaISt10_List_nodeIiEE(%"class.std::__cxx11::_List_base"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %call2)
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call3 = invoke %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call3, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call6 = invoke %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %coerce.dive7 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call6, %"struct.std::__detail::_List_node_base"** %coerce.dive7, align 8
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp4, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  invoke void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont5
  ret void

lpad:                                             ; preds = %invoke.cont5, %invoke.cont, %entry
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  %10 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(%"class.std::__cxx11::_List_base"* %10)
          to label %invoke.cont12 unwind label %terminate.lpad

invoke.cont12:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont12
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13

terminate.lpad:                                   ; preds = %lpad
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(%"class.std::__cxx11::_List_base"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE7reverseEv(%"class.std::__cxx11::list"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt8__detail15_List_node_base10_M_reverseEv(%"struct.std::__detail::_List_node_base"* %1) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce, i32* dereferenceable(4) %__val) #0 comdat {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %__val.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %0 = bitcast %"struct.std::_List_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"struct.std::_List_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"struct.std::_List_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load i32*, i32** %__val.addr, align 8
  %call = call i32* @_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_(i32* dereferenceable(4) %4)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp3, i32 0, i32 0
  store i32* %call, i32** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp3, i32 0, i32 0
  %7 = load i32*, i32** %coerce.dive7, align 8
  %call8 = call %"struct.std::__detail::_List_node_base"* @_ZSt9__find_ifISt14_List_iteratorIiEN9__gnu_cxx5__ops16_Iter_equals_valIKiEEET_S7_S7_T0_(%"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6, i32* %7)
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call8, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  ret %"struct.std::__detail::_List_node_base"* %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_List_iteratorIiEeqERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #3 comdat align 2 {
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %0 = load i32*, i32** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertESt14_List_iteratorIiERKi(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %1, i32* dereferenceable(4) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE6spliceESt14_List_iteratorIiERS2_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %"class.std::__cxx11::list"* dereferenceable(24) %__x) #0 comdat align 2 {
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
  %call = call zeroext i1 @_ZNKSt7__cxx114listIiSaIiEE5emptyEv(%"class.std::__cxx11::list"* %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE25_M_check_equal_allocatorsERS2_(%"class.std::__cxx11::list"* %this1, %"class.std::__cxx11::list"* dereferenceable(24) %1)
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIiE13_M_const_castEv(%"struct.std::_List_iterator"* %__position)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call5 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %2)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call5, %"struct.std::__detail::_List_node_base"** %coerce.dive6, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call8 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %3)
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp7, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call8, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp4, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp7, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive12, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE11_M_transferESt14_List_iteratorIiES4_S4_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6)
  %7 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %8 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  %call13 = call i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %9)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %7, i64 %call13)
  %10 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %11 = bitcast %"class.std::__cxx11::list"* %10 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %11, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE13_M_node_countEv(%"class.std::__cxx11::_List_base"* %0)
  ret i64 %call
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt7__cxx114listIiSaIiEE4backEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %call2 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEmmEv(%"struct.std::_List_iterator"* %__tmp)
  %call3 = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %__tmp)
  ret i32* %call3
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEmmEv(%"struct.std::_List_iterator"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_prev = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 1
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  ret %"struct.std::_List_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE13_M_node_countEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNKSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %0 = load i64, i64* %call, align 8
  ret i64 %0
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
define linkonce_odr i64* @_ZSt11__addressofIKmEPT_RS1_(i64* dereferenceable(8) %__r) #3 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE25_M_check_equal_allocatorsERS2_(%"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %0)
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %2 = bitcast %"class.std::__cxx11::list"* %1 to %"class.std::__cxx11::_List_base"*
  %call2 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %2)
  %call3 = call zeroext i1 @_ZNSt11__alloc_neqISaISt10_List_nodeIiEELb1EE8_S_do_itERKS2_S5_(%"class.std::ios_base::Init"* dereferenceable(1) %call, %"class.std::ios_base::Init"* dereferenceable(1) %call2)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #14
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNKSt14_List_iteratorIiE13_M_const_castEv(%"struct.std::_List_iterator"* %this) #3 comdat align 2 {
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
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE11_M_transferESt14_List_iteratorIiES4_S4_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #3 comdat align 2 {
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
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(%"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"* %2) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNKSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %0 = load i64, i64* %call, align 8
  ret i64 %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %1 = load i64, i64* %call, align 8
  %add = add i64 %1, %0
  store i64 %add, i64* %call, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  store i64 %0, i64* %call, align 8
  ret void
}

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
define linkonce_odr i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %__r) #3 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNSt11__alloc_neqISaISt10_List_nodeIiEELb1EE8_S_do_itERKS2_S5_(%"class.std::ios_base::Init"* dereferenceable(1), %"class.std::ios_base::Init"* dereferenceable(1)) #3 comdat align 2 {
entry:
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr1 = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  store %"class.std::ios_base::Init"* %1, %"class.std::ios_base::Init"** %.addr1, align 8
  ret i1 false
}

; Function Attrs: noreturn nounwind
declare void @abort() #9

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE9_M_insertESt14_List_iteratorIiERKi(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca i32*, align 8
  %__tmp = alloca %"struct.std::_List_node.3"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = load i32*, i32** %__x.addr, align 8
  %call = call %"struct.std::_List_node.3"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeERKi(%"class.std::__cxx11::list"* %this1, i32* dereferenceable(4) %0)
  store %"struct.std::_List_node.3"* %call, %"struct.std::_List_node.3"** %__tmp, align 8
  %1 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__tmp, align 8
  %2 = bitcast %"struct.std::_List_node.3"* %1 to %"struct.std::__detail::_List_node_base"*
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"* %3) #2
  %4 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %4, i64 1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.3"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeERKi(%"class.std::__cxx11::list"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca i32*, align 8
  %__p = alloca %"struct.std::_List_node.3"*, align 8
  %__alloc = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call %"struct.std::_List_node.3"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %0)
  store %"struct.std::_List_node.3"* %call, %"struct.std::_List_node.3"** %__p, align 8
  %1 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call2 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"* dereferenceable(1) %call2) #2
  %2 = bitcast %"class.std::ios_base::Init"* %__alloc to %"class.std::ios_base::Init"*
  %3 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__p, align 8
  %call5 = invoke i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %3)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %4 = load i32*, i32** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.std::ios_base::Init"* %2, i32* %call5, i32* dereferenceable(4) %4)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %__alloc) #2
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
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %__alloc) #2
  br label %catch

catch:                                            ; preds = %lpad3, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %11 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %12 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %13 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__p, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::__cxx11::_List_base"* %12, %"struct.std::_List_node.3"* %13)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
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
  %17 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__p, align 8
  ret %"struct.std::_List_node.3"* %17

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
  call void @__clang_call_terminate(i8* %19) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont8
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #8

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.3"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %call = call %"struct.std::_List_node.3"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE8allocateERS3_m(%"class.std::ios_base::Init"* dereferenceable(1) %0, i64 1)
  ret %"struct.std::_List_node.3"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.std::ios_base::Init"* %1) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.std::ios_base::Init"* %this, i32* %__p, i32* dereferenceable(4) %__val) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i32*, align 8
  %__val.addr = alloca i32*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = bitcast i8* %1 to i32*
  %3 = load i32*, i32** %__val.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %2, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::__cxx11::_List_base"* %this, %"struct.std::_List_node.3"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.3"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store %"struct.std::_List_node.3"* %__p, %"struct.std::_List_node.3"** %__p.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %1 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE10deallocateERS3_PS2_m(%"class.std::ios_base::Init"* dereferenceable(1) %0, %"struct.std::_List_node.3"* %1, i64 1)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE10deallocateERS3_PS2_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, %"struct.std::_List_node.3"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.3"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %"struct.std::_List_node.3"* %__p, %"struct.std::_List_node.3"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.std::ios_base::Init"* %1, %"struct.std::_List_node.3"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.std::ios_base::Init"* %this, %"struct.std::_List_node.3"* %__p, i64) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.3"*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"struct.std::_List_node.3"* %__p, %"struct.std::_List_node.3"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_List_node.3"* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.3"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE8allocateERS3_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_List_node.3"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %2, i8* null)
  ret %"struct.std::_List_node.3"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.3"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.std::ios_base::Init"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 24
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_List_node.3"*
  ret %"struct.std::_List_node.3"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8max_sizeEv(%"class.std::ios_base::Init"* %this) #3 comdat align 2 {
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

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_(i32* dereferenceable(4) %__val) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %__val.addr = alloca i32*, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %0 = load i32*, i32** %__val.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %retval, i32* dereferenceable(4) %0)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZSt9__find_ifISt14_List_iteratorIiEN9__gnu_cxx5__ops16_Iter_equals_valIKiEEET_S7_S7_T0_(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce, i32* %__pred.coerce) #0 comdat {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %__pred = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp3 = alloca %"struct.std::_List_iterator", align 8
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %agg.tmp5 = alloca %"class.std::ios_base::Init", align 1
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %undef.agg.tmp = alloca %"class.std::ios_base::Init", align 1
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, i32 0, i32 0
  store i32* %__pred.coerce, i32** %coerce.dive2, align 8
  %0 = bitcast %"struct.std::_List_iterator"* %agg.tmp to i8*
  %1 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"struct.std::_List_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"struct.std::_List_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp4 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  call void @_ZSt19__iterator_categoryISt14_List_iteratorIiEENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%"struct.std::_List_iterator"* dereferenceable(8) %__first)
  %6 = bitcast %"class.std::ios_base::Init"* %ref.tmp to %"class.std::ios_base::Init"*
  %coerce.dive6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp3, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %agg.tmp4, i32 0, i32 0
  %9 = load i32*, i32** %coerce.dive8, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZSt9__find_ifISt14_List_iteratorIiEN9__gnu_cxx5__ops16_Iter_equals_valIKiEEET_S7_S7_T0_St18input_iterator_tag(%"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"* %8, i32* %9)
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  ret %"struct.std::__detail::_List_node_base"* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryISt14_List_iteratorIiEENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%"struct.std::_List_iterator"* dereferenceable(8)) #3 comdat {
entry:
  %retval = alloca %"class.std::ios_base::Init", align 1
  %.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZSt9__find_ifISt14_List_iteratorIiEN9__gnu_cxx5__ops16_Iter_equals_valIKiEEET_S7_S7_T0_St18input_iterator_tag(%"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce, i32* %__pred.coerce) #0 comdat {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %__pred = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %0 = alloca %"class.std::ios_base::Init", align 1
  %agg.tmp = alloca %"struct.std::_List_iterator", align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, i32 0, i32 0
  store i32* %__pred.coerce, i32** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZNKSt14_List_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %__first, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = bitcast %"struct.std::_List_iterator"* %agg.tmp to i8*
  %2 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %agg.tmp, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclISt14_List_iteratorIiEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %__pred, %"struct.std::__detail::_List_node_base"* %3)
  %lnot = xor i1 %call4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call5 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* %__first)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %5 = bitcast %"struct.std::_List_iterator"* %retval to i8*
  %6 = bitcast %"struct.std::_List_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive6, align 8
  ret %"struct.std::__detail::_List_node_base"* %7
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclISt14_List_iteratorIiEEEbT_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.std::__detail::_List_node_base"* %__it.coerce) #0 comdat align 2 {
entry:
  %__it = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__it, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__it.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  %call = call dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* %__it)
  %0 = load i32, i32* %call, align 4
  %_M_value = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this1, i32 0, i32 0
  %ref = load i32*, i32** %_M_value, align 8
  %1 = load i32, i32* %ref, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_(%"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, i32* dereferenceable(4) %__value) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, align 8
  %__value.addr = alloca i32*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_equals_val"*, %"struct.__gnu_cxx::__ops::_Iter_equals_val"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", %"struct.__gnu_cxx::__ops::_Iter_equals_val"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__value.addr, align 8
  store i32* %0, i32** %_M_value, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base10_M_reverseEv(%"struct.std::__detail::_List_node_base"*) #8

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl) #2
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__cur = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %__tmp = alloca %"struct.std::_List_node.3"*, align 8
  %__val = alloca i32*, align 8
  %temp.lvalue = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %5 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node.3"*
  store %"struct.std::_List_node.3"* %5, %"struct.std::_List_node.3"** %__tmp, align 8
  %6 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__tmp, align 8
  %7 = bitcast %"struct.std::_List_node.3"* %6 to %"struct.std::__detail::_List_node_base"*
  %_M_next4 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4, align 8
  store %"struct.std::__detail::_List_node_base"* %8, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %9 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__tmp, align 8
  %call = call i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %9)
  store i32* %call, i32** %__val, align 8
  %call5 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this1)
  call void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::ios_base::Init"* %temp.lvalue, %"class.std::ios_base::Init"* dereferenceable(1) %call5) #2
  %10 = bitcast %"class.std::ios_base::Init"* %temp.lvalue to %"class.std::ios_base::Init"*
  %11 = load i32*, i32** %__val, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.std::ios_base::Init"* %10, i32* %11)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  %12 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__tmp, align 8
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::__cxx11::_List_base"* %this1, %"struct.std::_List_node.3"* %12)
  br label %while.cond

lpad:                                             ; preds = %while.body
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
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
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"*, %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.std::ios_base::Init"* %this, i32* %__p) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEEE17_S_select_on_copyERKS3_(%"class.std::ios_base::Init"* dereferenceable(1) %__a) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2ERKSaISt10_List_nodeIiEE(%"class.std::__cxx11::_List_base"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2ERKSaISt10_List_nodeIiEE(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, %"class.std::ios_base::Init"* dereferenceable(1) %0)
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this1)
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
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #0 comdat align 2 {
entry:
  %__first = alloca %"struct.std::_List_iterator", align 8
  %__last = alloca %"struct.std::_List_iterator", align 8
  %0 = alloca %"class.std::ios_base::Init", align 1
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZNKSt20_List_const_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %__first, %"struct.std::_List_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call dereferenceable(4) i32* @_ZNKSt20_List_const_iteratorIiEdeEv(%"struct.std::_List_iterator"* %__first)
  call void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* %this2, i32* dereferenceable(4) %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call4 = call dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt20_List_const_iteratorIiEppEv(%"struct.std::_List_iterator"* %__first)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt20_List_const_iteratorIiEneERKS0_(%"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"* dereferenceable(8) %__x) #3 comdat align 2 {
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
define linkonce_odr dereferenceable(4) i32* @_ZNKSt20_List_const_iteratorIiEdeEv(%"struct.std::_List_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %0 to %"struct.std::_List_node.3"*
  %call = call i32* @_ZNKSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %1)
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt20_List_const_iteratorIiEppEv(%"struct.std::_List_iterator"* %this) #3 comdat align 2 {
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

; Function Attrs: noinline uwtable
define linkonce_odr i32* @_ZNKSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node.3"*, align 8
  store %"struct.std::_List_node.3"* %this, %"struct.std::_List_node.3"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node.3", %"struct.std::_List_node.3"* %this1, i32 0, i32 1
  %call = call i32* @_ZSt11__addressofIKiEPT_RS1_(i32* dereferenceable(4) %_M_data)
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32* @_ZSt11__addressofIKiEPT_RS1_(i32* dereferenceable(4) %__r) #3 comdat {
entry:
  %__r.addr = alloca i32*, align 8
  store i32* %__r, i32** %__r.addr, align 8
  %0 = load i32*, i32** %__r.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #3 comdat align 2 {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2ERKSaISt10_List_nodeIiEE(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"*, %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %1) #2
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_impl4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node5 to %"struct.std::__detail::_List_node_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl6, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node7 to %"struct.std::__detail::_List_node_base"*
  %_M_prev = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_prev, align 8
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this1, i64 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %2 = bitcast %"class.std::ios_base::Init"* %1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %2) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE8_M_eraseESt14_List_iteratorIiE(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__n = alloca %"struct.std::_List_node.3"*, align 8
  %temp.lvalue = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %0, i64 1)
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* %1) #2
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %3 = bitcast %"struct.std::__detail::_List_node_base"* %2 to %"struct.std::_List_node.3"*
  store %"struct.std::_List_node.3"* %3, %"struct.std::_List_node.3"** %__n, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %4)
  call void @_ZNSaIiEC2ISt10_List_nodeIiEEERKSaIT_E(%"class.std::ios_base::Init"* %temp.lvalue, %"class.std::ios_base::Init"* dereferenceable(1) %call) #2
  %5 = bitcast %"class.std::ios_base::Init"* %temp.lvalue to %"class.std::ios_base::Init"*
  %6 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__n, align 8
  %call3 = invoke i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node.3"* %6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.std::ios_base::Init"* %5, i32* %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  %7 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %8 = load %"struct.std::_List_node.3"*, %"struct.std::_List_node.3"** %__n, align 8
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::__cxx11::_List_base"* %7, %"struct.std::_List_node.3"* %8)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::ios_base::Init"* %temp.lvalue) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %1 = load i64, i64* %call, align 8
  %sub = sub i64 %1, %0
  store i64 %sub, i64* %call, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt14_List_iteratorIiEppEi(%"struct.std::_List_iterator"* %this, i32) #3 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_iterator", align 8
  %this.addr = alloca %"struct.std::_List_iterator"*, align 8
  %.addr = alloca i32, align 4
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %this.addr, align 8
  %1 = bitcast %"struct.std::_List_iterator"* %retval to i8*
  %2 = bitcast %"struct.std::_List_iterator"* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %_M_node = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %this1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %retval, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEEC2IiEERKSaIT_E(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.std::ios_base::Init"* %1) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::__cxx11::list"* %this, i64 %__n, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %__n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %__x.addr, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* %this1, i32* dereferenceable(4) %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, i64* %__n.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %__n.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl)
  invoke void @_ZNSt7__cxx1110_List_baseIiSaIiEE7_M_initEv(%"class.std::__cxx11::_List_base"* %this1)
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
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %_M_impl) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"*, %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::ios_base::Init"* %0) #2
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int> >::_List_impl"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
