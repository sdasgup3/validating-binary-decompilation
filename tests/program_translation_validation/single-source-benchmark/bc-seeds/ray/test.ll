; ModuleID = 'ray/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::numeric_limits" = type { i8 }
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
%struct.Vec = type { double, double, double }
%"struct.std::pair" = type { double, %struct.Vec }
%struct.Ray = type { %struct.Vec, %struct.Vec }
%struct.Scene = type { i32 (...)** }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl" }
%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl" = type { %"struct.std::_List_node" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%struct.Sphere = type { %struct.Scene, %struct.Vec, double }
%struct.Group = type { %struct.Scene, %struct.Sphere, %"class.std::__cxx11::list" }
%"struct.std::_List_const_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_node.0" = type { %"struct.std::__detail::_List_node_base", %struct.Scene* }

$_ZNSt14numeric_limitsIdE8infinityEv = comdat any

$_ZNSt14numeric_limitsIdE7epsilonEv = comdat any

$_ZN3VecC2Eddd = comdat any

$_ZNSt4pairId3VecEC2ERKdRKS0_ = comdat any

$_ZN3RayC2ERK3VecS2_ = comdat any

$_ZN6SphereC2E3Vecd = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EEC2Ev = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EE9push_backERKS2_ = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_ = comdat any

$_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev = comdat any

$_ZN6SphereD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5SceneD2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE8_M_clearEv = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implD2Ev = comdat any

$_ZNSaISt10_List_nodeIP5SceneEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEED2Ev = comdat any

$_ZNSt10_List_nodeIP5SceneE9_M_valptrEv = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSaIP5SceneEC2ISt10_List_nodeIS0_EEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIP5SceneE7destroyEPS2_ = comdat any

$_ZNSaIP5SceneED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE10deallocateERS5_PS4_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE10deallocateEPS4_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP5SceneED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP5SceneEC2Ev = comdat any

$_ZSt11__addressofIP5SceneEPT_RS2_ = comdat any

$_ZN5SceneC2Ev = comdat any

$_ZN6SphereC2ERKS_ = comdat any

$_ZN5SceneC2ERKS_ = comdat any

$_ZN6SphereD0Ev = comdat any

$_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray = comdat any

$_ZNK6Sphere10ray_sphereERK3Ray = comdat any

$_ZN5SceneD0Ev = comdat any

$_ZN5GroupD2Ev = comdat any

$_ZN5GroupD0Ev = comdat any

$_ZNK5Group9intersectERKSt4pairId3VecERK3Ray = comdat any

$_ZNKSt7__cxx114listIP5SceneSaIS2_EE5beginEv = comdat any

$_ZNKSt7__cxx114listIP5SceneSaIS2_EE3endEv = comdat any

$_ZNKSt20_List_const_iteratorIP5SceneEneERKS2_ = comdat any

$_ZNKSt20_List_const_iteratorIP5SceneEdeEv = comdat any

$_ZNSt20_List_const_iteratorIP5SceneEppEv = comdat any

$_ZNKSt10_List_nodeIP5SceneE9_M_valptrEv = comdat any

$_ZSt11__addressofIKP5SceneEPT_RS3_ = comdat any

$_ZNSt20_List_const_iteratorIP5SceneEC2EPKNSt8__detail15_List_node_baseE = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EE5beginEv = comdat any

$_ZNSt20_List_const_iteratorIP5SceneEC2ERKSt14_List_iteratorIS1_E = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EE3endEv = comdat any

$_ZNSt14_List_iteratorIP5SceneEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNKSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE17_S_select_on_copyERKS5_ = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EEC2ERKSaISt10_List_nodeIS2_EE = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implC2ERKSaISt10_List_nodeIS2_EE = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE7_M_initEv = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_set_sizeEm = comdat any

$_ZNSt10_List_nodeImE9_M_valptrEv = comdat any

$_ZSt11__addressofImEPT_RS0_ = comdat any

$_ZNSaISt10_List_nodeIP5SceneEEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEEC2ERKS5_ = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EE9_M_insertESt14_List_iteratorIS2_ERKS2_ = comdat any

$_ZNSt7__cxx114listIP5SceneSaIS2_EE14_M_create_nodeERKS2_ = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_get_nodeEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIP5SceneE9constructEPS2_RKS2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE8allocateERS5_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE8max_sizeEv = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implC2Ev = comdat any

$_ZNSaISt10_List_nodeIP5SceneEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEEC2Ev = comdat any

$_ZTV5Group = comdat any

$_ZTV6Sphere = comdat any

$_ZTI6Sphere = comdat any

$_ZTS6Sphere = comdat any

$_ZTI5Scene = comdat any

$_ZTS5Scene = comdat any

$_ZTV5Scene = comdat any

$_ZTI5Group = comdat any

$_ZTS5Group = comdat any

@real = global %"struct.std::numeric_limits" zeroinitializer, align 1
@delta = global double 0.000000e+00, align 8
@infinity = global double 0.000000e+00, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_ray.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"struct.std::numeric_limits" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZTV5Group = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5Group to i8*), i8* bitcast (void (%struct.Group*)* @_ZN5GroupD2Ev to i8*), i8* bitcast (void (%struct.Group*)* @_ZN5GroupD0Ev to i8*), i8* bitcast (void (%"struct.std::pair"*, %struct.Group*, %"struct.std::pair"*, %struct.Ray*)* @_ZNK5Group9intersectERKSt4pairId3VecERK3Ray to i8*)] }, comdat, align 8
@_ZTV6Sphere = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI6Sphere to i8*), i8* bitcast (void (%struct.Sphere*)* @_ZN6SphereD2Ev to i8*), i8* bitcast (void (%struct.Sphere*)* @_ZN6SphereD0Ev to i8*), i8* bitcast (void (%"struct.std::pair"*, %struct.Sphere*, %"struct.std::pair"*, %struct.Ray*)* @_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray to i8*)] }, comdat, align 8
@_ZTI6Sphere = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_ZTS6Sphere, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI5Scene to i8*) }, comdat
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS6Sphere = linkonce_odr constant [8 x i8] c"6Sphere\00", comdat
@_ZTI5Scene = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5Scene, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS5Scene = linkonce_odr constant [7 x i8] c"5Scene\00", comdat
@_ZTV5Scene = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI5Scene to i8*), i8* bitcast (void (%struct.Scene*)* @_ZN5SceneD2Ev to i8*), i8* bitcast (void (%struct.Scene*)* @_ZN5SceneD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@_ZTI5Group = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5Group, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI5Scene to i8*) }, comdat
@_ZTS5Group = linkonce_odr constant [7 x i8] c"5Group\00", comdat
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\0A255\0A\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_ray.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"struct.std::numeric_limits"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"struct.std::numeric_limits"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"struct.std::numeric_limits", %"struct.std::numeric_limits"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
entry:
  %call = call double @_ZNSt14numeric_limitsIdE7epsilonEv() #4
  %call1 = call double @sqrt(double %call) #4
  store double %call1, double* @delta, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" {
entry:
  %call = call double @_ZNSt14numeric_limitsIdE8infinityEv() #4
  store double %call, double* @infinity, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNSt14numeric_limitsIdE8infinityEv() #1 comdat align 2 {
entry:
  ret double 0x7FF0000000000000
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNSt14numeric_limitsIdE7epsilonEv() #1 comdat align 2 {
entry:
  ret double 0x3CB0000000000000
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare void @_ZNSt8ios_base4InitC1Ev(%"struct.std::numeric_limits"*) unnamed_addr #3

declare void @_ZNSt8ios_base4InitD1Ev(%"struct.std::numeric_limits"*) unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #4

; Function Attrs: noinline uwtable
define void @_ZplRK3VecS1_(%struct.Vec* noalias sret %agg.result, %struct.Vec* dereferenceable(24) %a, %struct.Vec* dereferenceable(24) %b) #0 {
entry:
  %a.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %a, %struct.Vec** %a.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %0 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x1 = getelementptr inbounds %struct.Vec, %struct.Vec* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %add = fadd double %1, %3
  %4 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y2 = getelementptr inbounds %struct.Vec, %struct.Vec* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %add3 = fadd double %5, %7
  %8 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z4 = getelementptr inbounds %struct.Vec, %struct.Vec* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %add5 = fadd double %9, %11
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %add, double %add3, double %add5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3VecC2Eddd(%struct.Vec* %this, double %x2, double %y2, double %z2) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %z2.addr = alloca double, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %z2, double* %z2.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x2.addr, align 8
  store double %0, double* %x, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %1 = load double, double* %y2.addr, align 8
  store double %1, double* %y, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %2 = load double, double* %z2.addr, align 8
  store double %2, double* %z, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZmiRK3VecS1_(%struct.Vec* noalias sret %agg.result, %struct.Vec* dereferenceable(24) %a, %struct.Vec* dereferenceable(24) %b) #0 {
entry:
  %a.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %a, %struct.Vec** %a.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %0 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x1 = getelementptr inbounds %struct.Vec, %struct.Vec* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %1, %3
  %4 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y2 = getelementptr inbounds %struct.Vec, %struct.Vec* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %sub3 = fsub double %5, %7
  %8 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z4 = getelementptr inbounds %struct.Vec, %struct.Vec* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %sub5 = fsub double %9, %11
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %sub, double %sub3, double %sub5)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZmldRK3Vec(%struct.Vec* noalias sret %agg.result, double %a, %struct.Vec* dereferenceable(24) %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store double %a, double* %a.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %0, %2
  %3 = load double, double* %a.addr, align 8
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul1 = fmul double %3, %5
  %6 = load double, double* %a.addr, align 8
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2
  %8 = load double, double* %z, align 8
  %mul2 = fmul double %6, %8
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %mul, double %mul1, double %mul2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @_Z3dotRK3VecS1_(%struct.Vec* dereferenceable(24) %a, %struct.Vec* dereferenceable(24) %b) #1 {
entry:
  %a.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %a, %struct.Vec** %a.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %0 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x1 = getelementptr inbounds %struct.Vec, %struct.Vec* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y2 = getelementptr inbounds %struct.Vec, %struct.Vec* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z4 = getelementptr inbounds %struct.Vec, %struct.Vec* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  ret double %add6
}

; Function Attrs: noinline uwtable
define void @_Z7unitiseRK3Vec(%struct.Vec* noalias sret %agg.result, %struct.Vec* dereferenceable(24) %a) #0 {
entry:
  %a.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %a, %struct.Vec** %a.addr, align 8
  %0 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %1 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  %call = call double @_Z3dotRK3VecS1_(%struct.Vec* dereferenceable(24) %0, %struct.Vec* dereferenceable(24) %1)
  %call1 = call double @sqrt(double %call) #4
  %div = fdiv double 1.000000e+00, %call1
  %2 = load %struct.Vec*, %struct.Vec** %a.addr, align 8
  call void @_ZmldRK3Vec(%struct.Vec* sret %agg.result, double %div, %struct.Vec* dereferenceable(24) %2)
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z9intersectRK3RayRK5Scene(%"struct.std::pair"* noalias sret %agg.result, %struct.Ray* dereferenceable(48) %ray, %struct.Scene* dereferenceable(8) %s) #0 {
entry:
  %ray.addr = alloca %struct.Ray*, align 8
  %s.addr = alloca %struct.Scene*, align 8
  %ref.tmp = alloca %"struct.std::pair", align 8
  %ref.tmp1 = alloca %struct.Vec, align 8
  store %struct.Ray* %ray, %struct.Ray** %ray.addr, align 8
  store %struct.Scene* %s, %struct.Scene** %s.addr, align 8
  %0 = load %struct.Scene*, %struct.Scene** %s.addr, align 8
  %1 = bitcast %struct.Scene* %0 to void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)***
  %vtable = load void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)**, void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)*, void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)** %vtable, i64 2
  %2 = load void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)*, void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)** %vfn, align 8
  call void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp1, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt4pairId3VecEC2ERKdRKS0_(%"struct.std::pair"* %ref.tmp, double* dereferenceable(8) @infinity, %struct.Vec* dereferenceable(24) %ref.tmp1)
  %3 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  call void %2(%"struct.std::pair"* sret %agg.result, %struct.Scene* %0, %"struct.std::pair"* dereferenceable(32) %ref.tmp, %struct.Ray* dereferenceable(48) %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt4pairId3VecEC2ERKdRKS0_(%"struct.std::pair"* %this, double* dereferenceable(8) %__a, %struct.Vec* dereferenceable(24) %__b) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca %struct.Vec*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store double* %__a, double** %__a.addr, align 8
  store %struct.Vec* %__b, %struct.Vec** %__b.addr, align 8
  %this1 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %0 = bitcast %"struct.std::pair"* %this1 to %"struct.std::numeric_limits"*
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 0
  %1 = load double*, double** %__a.addr, align 8
  %2 = load double, double* %1, align 8
  store double %2, double* %first, align 8
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 1
  %3 = load %struct.Vec*, %struct.Vec** %__b.addr, align 8
  %4 = bitcast %struct.Vec* %second to i8*
  %5 = bitcast %struct.Vec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline uwtable
define double @_Z9ray_traceRK3VecRK3RayRK5Scene(%struct.Vec* dereferenceable(24) %light, %struct.Ray* dereferenceable(48) %ray, %struct.Scene* dereferenceable(8) %s) #0 {
entry:
  %retval = alloca double, align 8
  %light.addr = alloca %struct.Vec*, align 8
  %ray.addr = alloca %struct.Ray*, align 8
  %s.addr = alloca %struct.Scene*, align 8
  %hit = alloca %"struct.std::pair", align 8
  %g = alloca double, align 8
  %p = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %ref.tmp4 = alloca %struct.Vec, align 8
  %ref.tmp6 = alloca %struct.Vec, align 8
  %ref.tmp8 = alloca %struct.Ray, align 8
  %ref.tmp9 = alloca %struct.Vec, align 8
  %tmp = alloca %"struct.std::pair", align 8
  store %struct.Vec* %light, %struct.Vec** %light.addr, align 8
  store %struct.Ray* %ray, %struct.Ray** %ray.addr, align 8
  store %struct.Scene* %s, %struct.Scene** %s.addr, align 8
  %0 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %1 = load %struct.Scene*, %struct.Scene** %s.addr, align 8
  call void @_Z9intersectRK3RayRK5Scene(%"struct.std::pair"* sret %hit, %struct.Ray* dereferenceable(48) %0, %struct.Scene* dereferenceable(8) %1)
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %hit, i32 0, i32 0
  %2 = load double, double* %first, align 8
  %3 = load double, double* @infinity, align 8
  %cmp = fcmp oeq double %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %hit, i32 0, i32 1
  %4 = load %struct.Vec*, %struct.Vec** %light.addr, align 8
  %call = call double @_Z3dotRK3VecS1_(%struct.Vec* dereferenceable(24) %second, %struct.Vec* dereferenceable(24) %4)
  store double %call, double* %g, align 8
  %5 = load double, double* %g, align 8
  %cmp1 = fcmp oge double %5, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %orig = getelementptr inbounds %struct.Ray, %struct.Ray* %6, i32 0, i32 0
  %first5 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %hit, i32 0, i32 0
  %7 = load double, double* %first5, align 8
  %8 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %dir = getelementptr inbounds %struct.Ray, %struct.Ray* %8, i32 0, i32 1
  call void @_ZmldRK3Vec(%struct.Vec* sret %ref.tmp4, double %7, %struct.Vec* dereferenceable(24) %dir)
  call void @_ZplRK3VecS1_(%struct.Vec* sret %ref.tmp, %struct.Vec* dereferenceable(24) %orig, %struct.Vec* dereferenceable(24) %ref.tmp4)
  %9 = load double, double* @delta, align 8
  %second7 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %hit, i32 0, i32 1
  call void @_ZmldRK3Vec(%struct.Vec* sret %ref.tmp6, double %9, %struct.Vec* dereferenceable(24) %second7)
  call void @_ZplRK3VecS1_(%struct.Vec* sret %p, %struct.Vec* dereferenceable(24) %ref.tmp, %struct.Vec* dereferenceable(24) %ref.tmp6)
  %10 = load %struct.Vec*, %struct.Vec** %light.addr, align 8
  call void @_ZmldRK3Vec(%struct.Vec* sret %ref.tmp9, double -1.000000e+00, %struct.Vec* dereferenceable(24) %10)
  call void @_ZN3RayC2ERK3VecS2_(%struct.Ray* %ref.tmp8, %struct.Vec* dereferenceable(24) %p, %struct.Vec* dereferenceable(24) %ref.tmp9)
  %11 = load %struct.Scene*, %struct.Scene** %s.addr, align 8
  call void @_Z9intersectRK3RayRK5Scene(%"struct.std::pair"* sret %tmp, %struct.Ray* dereferenceable(48) %ref.tmp8, %struct.Scene* dereferenceable(8) %11)
  %first10 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %tmp, i32 0, i32 0
  %12 = load double, double* %first10, align 8
  %13 = load double, double* @infinity, align 8
  %cmp11 = fcmp olt double %12, %13
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %14 = load double, double* %g, align 8
  %sub = fsub double -0.000000e+00, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %sub, %cond.false ]
  store double %cond, double* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %15 = load double, double* %retval, align 8
  ret double %15
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3RayC2ERK3VecS2_(%struct.Ray* %this, %struct.Vec* dereferenceable(24) %o, %struct.Vec* dereferenceable(24) %d) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Ray*, align 8
  %o.addr = alloca %struct.Vec*, align 8
  %d.addr = alloca %struct.Vec*, align 8
  store %struct.Ray* %this, %struct.Ray** %this.addr, align 8
  store %struct.Vec* %o, %struct.Vec** %o.addr, align 8
  store %struct.Vec* %d, %struct.Vec** %d.addr, align 8
  %this1 = load %struct.Ray*, %struct.Ray** %this.addr, align 8
  %orig = getelementptr inbounds %struct.Ray, %struct.Ray* %this1, i32 0, i32 0
  %0 = load %struct.Vec*, %struct.Vec** %o.addr, align 8
  %1 = bitcast %struct.Vec* %orig to i8*
  %2 = bitcast %struct.Vec* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 8, i1 false)
  %dir = getelementptr inbounds %struct.Ray, %struct.Ray* %this1, i32 0, i32 1
  %3 = load %struct.Vec*, %struct.Vec** %d.addr, align 8
  %4 = bitcast %struct.Vec* %dir to i8*
  %5 = bitcast %struct.Vec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define %struct.Scene* @_Z6createiRK3Vecd(i32 %level, %struct.Vec* dereferenceable(24) %c, double %r) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %struct.Scene*, align 8
  %level.addr = alloca i32, align 4
  %c.addr = alloca %struct.Vec*, align 8
  %r.addr = alloca double, align 8
  %s = alloca %struct.Scene*, align 8
  %agg.tmp = alloca %struct.Vec, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %child = alloca %"class.std::__cxx11::list", align 8
  %rn = alloca double, align 8
  %dz = alloca i32, align 4
  %dx = alloca i32, align 4
  %ref.tmp = alloca %struct.Scene*, align 8
  %ref.tmp8 = alloca %struct.Vec, align 8
  %ref.tmp9 = alloca %struct.Vec, align 8
  %ref.tmp10 = alloca %struct.Vec, align 8
  %agg.tmp24 = alloca %struct.Sphere, align 8
  %agg.tmp25 = alloca %struct.Vec, align 8
  %agg.tmp29 = alloca %"class.std::__cxx11::list", align 8
  %cleanup.isactive = alloca i1, align 1
  store i32 %level, i32* %level.addr, align 4
  store %struct.Vec* %c, %struct.Vec** %c.addr, align 8
  store double %r, double* %r.addr, align 8
  %call = call i8* @_Znwm(i64 40) #12
  %0 = bitcast i8* %call to %struct.Sphere*
  %1 = load %struct.Vec*, %struct.Vec** %c.addr, align 8
  %2 = bitcast %struct.Vec* %agg.tmp to i8*
  %3 = bitcast %struct.Vec* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  %4 = load double, double* %r.addr, align 8
  invoke void @_ZN6SphereC2E3Vecd(%struct.Sphere* %0, %struct.Vec* byval align 8 %agg.tmp, double %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %struct.Sphere* %0 to %struct.Scene*
  store %struct.Scene* %5, %struct.Scene** %s, align 8
  %6 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %7 = load %struct.Scene*, %struct.Scene** %s, align 8
  store %struct.Scene* %7, %struct.Scene** %retval, align 8
  br label %return

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #13
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont
  call void @_ZNSt7__cxx114listIP5SceneSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %child)
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %child, %struct.Scene** dereferenceable(8) %s)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %if.end
  %11 = load double, double* %r.addr, align 8
  %mul = fmul double 3.000000e+00, %11
  %call3 = call double @sqrt(double 1.200000e+01) #4
  %div = fdiv double %mul, %call3
  store double %div, double* %rn, align 8
  store i32 -1, i32* %dz, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %invoke.cont2
  %12 = load i32, i32* %dz, align 4
  %cmp4 = icmp sle i32 %12, 1
  br i1 %cmp4, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %dx, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %dx, align 4
  %cmp6 = icmp sle i32 %13, 1
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %14 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load %struct.Vec*, %struct.Vec** %c.addr, align 8
  %16 = load double, double* %rn, align 8
  %17 = load i32, i32* %dx, align 4
  %conv = sitofp i32 %17 to double
  %18 = load i32, i32* %dz, align 4
  %conv11 = sitofp i32 %18 to double
  invoke void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp10, double %conv, double 1.000000e+00, double %conv11)
          to label %invoke.cont12 unwind label %lpad1

invoke.cont12:                                    ; preds = %for.body7
  invoke void @_ZmldRK3Vec(%struct.Vec* sret %ref.tmp9, double %16, %struct.Vec* dereferenceable(24) %ref.tmp10)
          to label %invoke.cont13 unwind label %lpad1

invoke.cont13:                                    ; preds = %invoke.cont12
  invoke void @_ZplRK3VecS1_(%struct.Vec* sret %ref.tmp8, %struct.Vec* dereferenceable(24) %15, %struct.Vec* dereferenceable(24) %ref.tmp9)
          to label %invoke.cont14 unwind label %lpad1

invoke.cont14:                                    ; preds = %invoke.cont13
  %19 = load double, double* %r.addr, align 8
  %div15 = fdiv double %19, 2.000000e+00
  %call17 = invoke %struct.Scene* @_Z6createiRK3Vecd(i32 %sub, %struct.Vec* dereferenceable(24) %ref.tmp8, double %div15)
          to label %invoke.cont16 unwind label %lpad1

invoke.cont16:                                    ; preds = %invoke.cont14
  store %struct.Scene* %call17, %struct.Scene** %ref.tmp, align 8
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %child, %struct.Scene** dereferenceable(8) %ref.tmp)
          to label %invoke.cont18 unwind label %lpad1

invoke.cont18:                                    ; preds = %invoke.cont16
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont18
  %20 = load i32, i32* %dx, align 4
  %add = add nsw i32 %20, 2
  store i32 %add, i32* %dx, align 4
  br label %for.cond5

lpad1:                                            ; preds = %for.end21, %invoke.cont16, %invoke.cont14, %invoke.cont13, %invoke.cont12, %for.body7, %if.end
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  br label %ehcleanup39

for.end:                                          ; preds = %for.cond5
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %24 = load i32, i32* %dz, align 4
  %add20 = add nsw i32 %24, 2
  store i32 %add20, i32* %dz, align 4
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  %call23 = invoke i8* @_Znwm(i64 72) #12
          to label %invoke.cont22 unwind label %lpad1

invoke.cont22:                                    ; preds = %for.end21
  store i1 true, i1* %cleanup.isactive, align 1
  %25 = bitcast i8* %call23 to %struct.Group*
  %26 = load %struct.Vec*, %struct.Vec** %c.addr, align 8
  %27 = bitcast %struct.Vec* %agg.tmp25 to i8*
  %28 = bitcast %struct.Vec* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 8, i1 false)
  %29 = load double, double* %r.addr, align 8
  %mul26 = fmul double 3.000000e+00, %29
  invoke void @_ZN6SphereC2E3Vecd(%struct.Sphere* %agg.tmp24, %struct.Vec* byval align 8 %agg.tmp25, double %mul26)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont22
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_(%"class.std::__cxx11::list"* %agg.tmp29, %"class.std::__cxx11::list"* dereferenceable(24) %child)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %invoke.cont28
  invoke void @_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE(%struct.Group* %25, %struct.Sphere* %agg.tmp24, %"class.std::__cxx11::list"* %agg.tmp29)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %invoke.cont31
  store i1 false, i1* %cleanup.isactive, align 1
  %30 = bitcast %struct.Group* %25 to %struct.Scene*
  store %struct.Scene* %30, %struct.Scene** %retval, align 8
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %agg.tmp29)
          to label %invoke.cont34 unwind label %lpad30

invoke.cont34:                                    ; preds = %invoke.cont33
  invoke void @_ZN6SphereD2Ev(%struct.Sphere* %agg.tmp24)
          to label %invoke.cont36 unwind label %lpad27

invoke.cont36:                                    ; preds = %invoke.cont34
  call void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %child)
  br label %return

lpad27:                                           ; preds = %invoke.cont34, %invoke.cont22
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %exn.slot, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %ehselector.slot, align 4
  br label %ehcleanup38

lpad30:                                           ; preds = %invoke.cont33, %invoke.cont28
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %exn.slot, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad32:                                           ; preds = %invoke.cont31
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %exn.slot, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %agg.tmp29)
          to label %invoke.cont35 unwind label %terminate.lpad

invoke.cont35:                                    ; preds = %lpad32
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont35, %lpad30
  invoke void @_ZN6SphereD2Ev(%struct.Sphere* %agg.tmp24)
          to label %invoke.cont37 unwind label %terminate.lpad

invoke.cont37:                                    ; preds = %ehcleanup
  br label %ehcleanup38

ehcleanup38:                                      ; preds = %invoke.cont37, %lpad27
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup38
  call void @_ZdlPv(i8* %call23) #13
  br label %cleanup.done

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup38
  br label %ehcleanup39

ehcleanup39:                                      ; preds = %cleanup.done, %lpad1
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %child)
          to label %invoke.cont40 unwind label %terminate.lpad

invoke.cont40:                                    ; preds = %ehcleanup39
  br label %eh.resume

return:                                           ; preds = %invoke.cont36, %if.then
  %40 = load %struct.Scene*, %struct.Scene** %retval, align 8
  ret %struct.Scene* %40

eh.resume:                                        ; preds = %invoke.cont40, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val41 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val41

terminate.lpad:                                   ; preds = %ehcleanup39, %ehcleanup, %lpad32
  %41 = landingpad { i8*, i32 }
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  call void @__clang_call_terminate(i8* %42) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6SphereC2E3Vecd(%struct.Sphere* %this, %struct.Vec* byval align 8 %c, double %r) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  %r.addr = alloca double, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  store double %r, double* %r.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %0 = bitcast %struct.Sphere* %this1 to %struct.Scene*
  call void @_ZN5SceneC2Ev(%struct.Scene* %0) #4
  %1 = bitcast %struct.Sphere* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV6Sphere, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %center = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1
  %2 = bitcast %struct.Vec* %center to i8*
  %3 = bitcast %struct.Vec* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  %radius = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 2
  %4 = load double, double* %r.addr, align 8
  store double %4, double* %radius, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP5SceneSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EEC2Ev(%"class.std::__cxx11::_List_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP5SceneSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %this, %struct.Scene** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %struct.Scene**, align 8
  %agg.tmp = alloca %"struct.std::_List_const_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %struct.Scene** %__x, %struct.Scene*** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %call = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE3endEv(%"class.std::__cxx11::list"* %this1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %0 = load %struct.Scene**, %struct.Scene*** %__x.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive2, align 8
  call void @_ZNSt7__cxx114listIP5SceneSaIS2_EE9_M_insertESt14_List_iteratorIS2_ERKS2_(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %1, %struct.Scene** dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_(%"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"* dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::list"*, align 8
  %agg.tmp = alloca %"struct.std::_List_const_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp4 = alloca %"struct.std::_List_const_iterator", align 8
  %agg.tmp8 = alloca %"struct.std::numeric_limits", align 1
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %"class.std::__cxx11::list"* %__x, %"class.std::__cxx11::list"** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %2 = bitcast %"class.std::__cxx11::list"* %1 to %"class.std::__cxx11::_List_base"*
  %call = call dereferenceable(1) %"struct.std::numeric_limits"* @_ZNKSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %2)
  %call2 = call dereferenceable(1) %"struct.std::numeric_limits"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE17_S_select_on_copyERKS5_(%"struct.std::numeric_limits"* dereferenceable(1) %call)
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EEC2ERKSaISt10_List_nodeIS2_EE(%"class.std::__cxx11::_List_base"* %0, %"struct.std::numeric_limits"* dereferenceable(1) %call2)
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call3 = invoke %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP5SceneSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %agg.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call3, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %__x.addr, align 8
  %call6 = invoke %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP5SceneSaIS2_EE3endEv(%"class.std::__cxx11::list"* %4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %coerce.dive7 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %agg.tmp4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call6, %"struct.std::__detail::_List_node_base"** %coerce.dive7, align 8
  %coerce.dive9 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %agg.tmp4, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive10, align 8
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(%"class.std::__cxx11::list"* %this1, %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"* %6)
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
  invoke void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %10)
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
define linkonce_odr void @_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE(%struct.Group* %this, %struct.Sphere* %b, %"class.std::__cxx11::list"* %c) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.Group*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %struct.Group* %this, %struct.Group** %this.addr, align 8
  %this1 = load %struct.Group*, %struct.Group** %this.addr, align 8
  %0 = bitcast %struct.Group* %this1 to %struct.Scene*
  call void @_ZN5SceneC2Ev(%struct.Scene* %0) #4
  %1 = bitcast %struct.Group* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV5Group, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %bound = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 1
  call void @_ZN6SphereC2ERKS_(%struct.Sphere* %bound, %struct.Sphere* dereferenceable(40) %b) #4
  %child = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_(%"class.std::__cxx11::list"* %child, %"class.std::__cxx11::list"* dereferenceable(24) %c)
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
  invoke void @_ZN6SphereD2Ev(%struct.Sphere* %bound)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %lpad
  %5 = bitcast %struct.Group* %this1 to %struct.Scene*
  invoke void @_ZN5SceneD2Ev(%struct.Scene* %5)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont2
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont3
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %invoke.cont2, %lpad
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6SphereD2Ev(%struct.Sphere* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %0 = bitcast %struct.Sphere* %this1 to %struct.Scene*
  call void @_ZN5SceneD2Ev(%struct.Scene* %0)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #4
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5SceneD2Ev(%struct.Scene* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Scene*, align 8
  store %struct.Scene* %this, %struct.Scene** %this.addr, align 8
  %this1 = load %struct.Scene*, %struct.Scene** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl) #4
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl2) #4
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__cur = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %__tmp = alloca %"struct.std::_List_node.0"*, align 8
  %__val = alloca %struct.Scene**, align 8
  %temp.lvalue = alloca %"struct.std::numeric_limits", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %5 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node.0"*
  store %"struct.std::_List_node.0"* %5, %"struct.std::_List_node.0"** %__tmp, align 8
  %6 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__tmp, align 8
  %7 = bitcast %"struct.std::_List_node.0"* %6 to %"struct.std::__detail::_List_node_base"*
  %_M_next4 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4, align 8
  store %"struct.std::__detail::_List_node_base"* %8, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %9 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__tmp, align 8
  %call = call %struct.Scene** @_ZNSt10_List_nodeIP5SceneE9_M_valptrEv(%"struct.std::_List_node.0"* %9)
  store %struct.Scene** %call, %struct.Scene*** %__val, align 8
  %call5 = call dereferenceable(1) %"struct.std::numeric_limits"* @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this1)
  call void @_ZNSaIP5SceneEC2ISt10_List_nodeIS0_EEERKSaIT_E(%"struct.std::numeric_limits"* %temp.lvalue, %"struct.std::numeric_limits"* dereferenceable(1) %call5) #4
  %10 = bitcast %"struct.std::numeric_limits"* %temp.lvalue to %"struct.std::numeric_limits"*
  %11 = load %struct.Scene**, %struct.Scene*** %__val, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIP5SceneE7destroyEPS2_(%"struct.std::numeric_limits"* %10, %struct.Scene** %11)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZNSaIP5SceneED2Ev(%"struct.std::numeric_limits"* %temp.lvalue) #4
  %12 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__tmp, align 8
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %this1, %"struct.std::_List_node.0"* %12)
  br label %while.cond

lpad:                                             ; preds = %while.body
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  call void @_ZNSaIP5SceneED2Ev(%"struct.std::numeric_limits"* %temp.lvalue) #4
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
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"*, %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this1 to %"struct.std::numeric_limits"*
  call void @_ZNSaISt10_List_nodeIP5SceneEED2Ev(%"struct.std::numeric_limits"* %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIP5SceneEED2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %0 = bitcast %"struct.std::numeric_limits"* %this1 to %"struct.std::numeric_limits"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEED2Ev(%"struct.std::numeric_limits"* %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEED2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Scene** @_ZNSt10_List_nodeIP5SceneE9_M_valptrEv(%"struct.std::_List_node.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node.0"*, align 8
  store %"struct.std::_List_node.0"* %this, %"struct.std::_List_node.0"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node.0", %"struct.std::_List_node.0"* %this1, i32 0, i32 1
  %call = call %struct.Scene** @_ZSt11__addressofIP5SceneEPT_RS2_(%struct.Scene** dereferenceable(8) %_M_data)
  ret %struct.Scene** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::numeric_limits"* @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl to %"struct.std::numeric_limits"*
  ret %"struct.std::numeric_limits"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIP5SceneEC2ISt10_List_nodeIS0_EEERKSaIT_E(%"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store %"struct.std::numeric_limits"* %0, %"struct.std::numeric_limits"** %.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %1 = bitcast %"struct.std::numeric_limits"* %this1 to %"struct.std::numeric_limits"*
  call void @_ZN9__gnu_cxx13new_allocatorIP5SceneEC2Ev(%"struct.std::numeric_limits"* %1) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5SceneE7destroyEPS2_(%"struct.std::numeric_limits"* %this, %struct.Scene** %__p) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__p.addr = alloca %struct.Scene**, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store %struct.Scene** %__p, %struct.Scene*** %__p.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIP5SceneED2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %0 = bitcast %"struct.std::numeric_limits"* %this1 to %"struct.std::numeric_limits"*
  call void @_ZN9__gnu_cxx13new_allocatorIP5SceneED2Ev(%"struct.std::numeric_limits"* %0) #4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %this, %"struct.std::_List_node.0"* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.0"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store %"struct.std::_List_node.0"* %__p, %"struct.std::_List_node.0"** %__p.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl to %"struct.std::numeric_limits"*
  %1 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE10deallocateERS5_PS4_m(%"struct.std::numeric_limits"* dereferenceable(1) %0, %"struct.std::_List_node.0"* %1, i64 1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE10deallocateERS5_PS4_m(%"struct.std::numeric_limits"* dereferenceable(1) %__a, %"struct.std::_List_node.0"* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::numeric_limits"* %__a, %"struct.std::numeric_limits"** %__a.addr, align 8
  store %"struct.std::_List_node.0"* %__p, %"struct.std::_List_node.0"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %__a.addr, align 8
  %1 = bitcast %"struct.std::numeric_limits"* %0 to %"struct.std::numeric_limits"*
  %2 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE10deallocateEPS4_m(%"struct.std::numeric_limits"* %1, %"struct.std::_List_node.0"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE10deallocateEPS4_m(%"struct.std::numeric_limits"* %this, %"struct.std::_List_node.0"* %__p, i64) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__p.addr = alloca %"struct.std::_List_node.0"*, align 8
  %.addr = alloca i64, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store %"struct.std::_List_node.0"* %__p, %"struct.std::_List_node.0"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %1 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_List_node.0"* %1 to i8*
  call void @_ZdlPv(i8* %2) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5SceneED2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5SceneEC2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.Scene** @_ZSt11__addressofIP5SceneEPT_RS2_(%struct.Scene** dereferenceable(8) %__r) #1 comdat {
entry:
  %__r.addr = alloca %struct.Scene**, align 8
  store %struct.Scene** %__r, %struct.Scene*** %__r.addr, align 8
  %0 = load %struct.Scene**, %struct.Scene*** %__r.addr, align 8
  ret %struct.Scene** %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5SceneC2Ev(%struct.Scene* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Scene*, align 8
  store %struct.Scene* %this, %struct.Scene** %this.addr, align 8
  %this1 = load %struct.Scene*, %struct.Scene** %this.addr, align 8
  %0 = bitcast %struct.Scene* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV5Scene, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6SphereC2ERKS_(%struct.Sphere* %this, %struct.Sphere* dereferenceable(40)) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  %.addr = alloca %struct.Sphere*, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  store %struct.Sphere* %0, %struct.Sphere** %.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %1 = bitcast %struct.Sphere* %this1 to %struct.Scene*
  %2 = load %struct.Sphere*, %struct.Sphere** %.addr, align 8
  %3 = bitcast %struct.Sphere* %2 to %struct.Scene*
  call void @_ZN5SceneC2ERKS_(%struct.Scene* %1, %struct.Scene* dereferenceable(8) %3) #4
  %4 = bitcast %struct.Sphere* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV6Sphere, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %center = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1
  %5 = load %struct.Sphere*, %struct.Sphere** %.addr, align 8
  %center2 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %5, i32 0, i32 1
  %6 = bitcast %struct.Vec* %center to i8*
  %7 = bitcast %struct.Vec* %center2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5SceneC2ERKS_(%struct.Scene* %this, %struct.Scene* dereferenceable(8)) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Scene*, align 8
  %.addr = alloca %struct.Scene*, align 8
  store %struct.Scene* %this, %struct.Scene** %this.addr, align 8
  store %struct.Scene* %0, %struct.Scene** %.addr, align 8
  %this1 = load %struct.Scene*, %struct.Scene** %this.addr, align 8
  %1 = bitcast %struct.Scene* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV5Scene, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6SphereD0Ev(%struct.Sphere* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  invoke void @_ZN6SphereD2Ev(%struct.Sphere* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %struct.Sphere* %this1 to i8*
  call void @_ZdlPv(i8* %0) #13
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %struct.Sphere* %this1 to i8*
  call void @_ZdlPv(i8* %4) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray(%"struct.std::pair"* noalias sret %agg.result, %struct.Sphere* %this, %"struct.std::pair"* dereferenceable(32) %hit, %struct.Ray* dereferenceable(48) %ray) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  %hit.addr = alloca %"struct.std::pair"*, align 8
  %ray.addr = alloca %struct.Ray*, align 8
  %lambda = alloca double, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %ref.tmp2 = alloca %struct.Vec, align 8
  %ref.tmp3 = alloca %struct.Vec, align 8
  %ref.tmp4 = alloca %struct.Vec, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  store %"struct.std::pair"* %hit, %"struct.std::pair"** %hit.addr, align 8
  store %struct.Ray* %ray, %struct.Ray** %ray.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %0 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %call = call double @_ZNK6Sphere10ray_sphereERK3Ray(%struct.Sphere* %this1, %struct.Ray* dereferenceable(48) %0)
  store double %call, double* %lambda, align 8
  %1 = load double, double* %lambda, align 8
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %hit.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %2, i32 0, i32 0
  %3 = load double, double* %first, align 8
  %cmp = fcmp oge double %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %"struct.std::pair"*, %"struct.std::pair"** %hit.addr, align 8
  %5 = bitcast %"struct.std::pair"* %agg.result to i8*
  %6 = bitcast %"struct.std::pair"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %orig = getelementptr inbounds %struct.Ray, %struct.Ray* %7, i32 0, i32 0
  %8 = load double, double* %lambda, align 8
  %9 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %dir = getelementptr inbounds %struct.Ray, %struct.Ray* %9, i32 0, i32 1
  call void @_ZmldRK3Vec(%struct.Vec* sret %ref.tmp4, double %8, %struct.Vec* dereferenceable(24) %dir)
  call void @_ZplRK3VecS1_(%struct.Vec* sret %ref.tmp3, %struct.Vec* dereferenceable(24) %orig, %struct.Vec* dereferenceable(24) %ref.tmp4)
  %center = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1
  call void @_ZmiRK3VecS1_(%struct.Vec* sret %ref.tmp2, %struct.Vec* dereferenceable(24) %ref.tmp3, %struct.Vec* dereferenceable(24) %center)
  call void @_Z7unitiseRK3Vec(%struct.Vec* sret %ref.tmp, %struct.Vec* dereferenceable(24) %ref.tmp2)
  call void @_ZNSt4pairId3VecEC2ERKdRKS0_(%"struct.std::pair"* %agg.result, double* dereferenceable(8) %lambda, %struct.Vec* dereferenceable(24) %ref.tmp)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK6Sphere10ray_sphereERK3Ray(%struct.Sphere* %this, %struct.Ray* dereferenceable(48) %ray) #0 comdat align 2 {
entry:
  %retval = alloca double, align 8
  %this.addr = alloca %struct.Sphere*, align 8
  %ray.addr = alloca %struct.Ray*, align 8
  %v = alloca %struct.Vec, align 8
  %b = alloca double, align 8
  %disc = alloca double, align 8
  %d = alloca double, align 8
  %t2 = alloca double, align 8
  %t1 = alloca double, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  store %struct.Ray* %ray, %struct.Ray** %ray.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %center = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1
  %0 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %orig = getelementptr inbounds %struct.Ray, %struct.Ray* %0, i32 0, i32 0
  call void @_ZmiRK3VecS1_(%struct.Vec* sret %v, %struct.Vec* dereferenceable(24) %center, %struct.Vec* dereferenceable(24) %orig)
  %1 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %dir = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i32 0, i32 1
  %call = call double @_Z3dotRK3VecS1_(%struct.Vec* dereferenceable(24) %v, %struct.Vec* dereferenceable(24) %dir)
  store double %call, double* %b, align 8
  %2 = load double, double* %b, align 8
  %3 = load double, double* %b, align 8
  %mul = fmul double %2, %3
  %call2 = call double @_Z3dotRK3VecS1_(%struct.Vec* dereferenceable(24) %v, %struct.Vec* dereferenceable(24) %v)
  %sub = fsub double %mul, %call2
  %radius = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 2
  %4 = load double, double* %radius, align 8
  %radius3 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 2
  %5 = load double, double* %radius3, align 8
  %mul4 = fmul double %4, %5
  %add = fadd double %sub, %mul4
  store double %add, double* %disc, align 8
  %6 = load double, double* %disc, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load double, double* @infinity, align 8
  store double %7, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load double, double* %disc, align 8
  %call5 = call double @sqrt(double %8) #4
  store double %call5, double* %d, align 8
  %9 = load double, double* %b, align 8
  %10 = load double, double* %d, align 8
  %add6 = fadd double %9, %10
  store double %add6, double* %t2, align 8
  %11 = load double, double* %t2, align 8
  %cmp7 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %12 = load double, double* @infinity, align 8
  store double %12, double* %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load double, double* %b, align 8
  %14 = load double, double* %d, align 8
  %sub10 = fsub double %13, %14
  store double %sub10, double* %t1, align 8
  %15 = load double, double* %t1, align 8
  %cmp11 = fcmp ogt double %15, 0.000000e+00
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  %16 = load double, double* %t1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  %17 = load double, double* %t2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ %17, %cond.false ]
  store double %cond, double* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then8, %if.then
  %18 = load double, double* %retval, align 8
  ret double %18
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5SceneD0Ev(%struct.Scene* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.Scene*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %struct.Scene* %this, %struct.Scene** %this.addr, align 8
  %this1 = load %struct.Scene*, %struct.Scene** %this.addr, align 8
  invoke void @_ZN5SceneD2Ev(%struct.Scene* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %struct.Scene* %this1 to i8*
  call void @_ZdlPv(i8* %0) #13
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %struct.Scene* %this1 to i8*
  call void @_ZdlPv(i8* %4) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5GroupD2Ev(%struct.Group* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.Group*, align 8
  %it = alloca %"struct.std::_List_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_const_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp3 = alloca %"struct.std::_List_const_iterator", align 8
  %ref.tmp4 = alloca %"struct.std::_List_const_iterator", align 8
  store %struct.Group* %this, %struct.Group** %this.addr, align 8
  %this1 = load %struct.Group*, %struct.Group** %this.addr, align 8
  %0 = bitcast %struct.Group* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV5Group, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %child = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  %call = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %child)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  invoke void @_ZNSt20_List_const_iteratorIP5SceneEC2ERKSt14_List_iteratorIS1_E(%"struct.std::_List_const_iterator"* %it, %"struct.std::_List_const_iterator"* dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont15, %invoke.cont2
  %child5 = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  %call7 = invoke %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE3endEv(%"class.std::__cxx11::list"* %child5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %for.cond
  %coerce.dive8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %ref.tmp4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call7, %"struct.std::__detail::_List_node_base"** %coerce.dive8, align 8
  invoke void @_ZNSt20_List_const_iteratorIP5SceneEC2ERKSt14_List_iteratorIS1_E(%"struct.std::_List_const_iterator"* %ref.tmp3, %"struct.std::_List_const_iterator"* dereferenceable(8) %ref.tmp4)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont6
  %call11 = invoke zeroext i1 @_ZNKSt20_List_const_iteratorIP5SceneEneERKS2_(%"struct.std::_List_const_iterator"* %it, %"struct.std::_List_const_iterator"* dereferenceable(8) %ref.tmp3)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont9
  br i1 %call11, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont10
  %call13 = invoke dereferenceable(8) %struct.Scene** @_ZNKSt20_List_const_iteratorIP5SceneEdeEv(%"struct.std::_List_const_iterator"* %it)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %for.body
  %1 = load %struct.Scene*, %struct.Scene** %call13, align 8
  %isnull = icmp eq %struct.Scene* %1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %invoke.cont12
  %2 = bitcast %struct.Scene* %1 to void (%struct.Scene*)***
  %vtable = load void (%struct.Scene*)**, void (%struct.Scene*)*** %2, align 8
  %vfn = getelementptr inbounds void (%struct.Scene*)*, void (%struct.Scene*)** %vtable, i64 1
  %3 = load void (%struct.Scene*)*, void (%struct.Scene*)** %vfn, align 8
  invoke void %3(%struct.Scene* %1)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %delete.notnull
  br label %delete.end

delete.end:                                       ; preds = %invoke.cont14, %invoke.cont12
  br label %for.inc

for.inc:                                          ; preds = %delete.end
  %call16 = invoke dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt20_List_const_iteratorIP5SceneEppEv(%"struct.std::_List_const_iterator"* %it)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %for.inc
  br label %for.cond

lpad:                                             ; preds = %for.inc, %delete.notnull, %for.body, %invoke.cont9, %invoke.cont6, %for.cond, %invoke.cont, %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %child20 = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %child20)
          to label %invoke.cont21 unwind label %terminate.lpad

for.end:                                          ; preds = %invoke.cont10
  %child17 = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  invoke void @_ZNSt7__cxx114listIP5SceneSaIS2_EED2Ev(%"class.std::__cxx11::list"* %child17)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %for.end
  %bound = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 1
  invoke void @_ZN6SphereD2Ev(%struct.Sphere* %bound)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %invoke.cont19
  %7 = bitcast %struct.Group* %this1 to %struct.Scene*
  call void @_ZN5SceneD2Ev(%struct.Scene* %7)
  ret void

lpad18:                                           ; preds = %for.end
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup

invoke.cont21:                                    ; preds = %lpad
  br label %ehcleanup

lpad22:                                           ; preds = %invoke.cont19
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %ehcleanup26

ehcleanup:                                        ; preds = %invoke.cont21, %lpad18
  %bound24 = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 1
  invoke void @_ZN6SphereD2Ev(%struct.Sphere* %bound24)
          to label %invoke.cont25 unwind label %terminate.lpad

invoke.cont25:                                    ; preds = %ehcleanup
  br label %ehcleanup26

ehcleanup26:                                      ; preds = %invoke.cont25, %lpad22
  %14 = bitcast %struct.Group* %this1 to %struct.Scene*
  invoke void @_ZN5SceneD2Ev(%struct.Scene* %14)
          to label %invoke.cont27 unwind label %terminate.lpad

invoke.cont27:                                    ; preds = %ehcleanup26
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont27
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val28 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val28

terminate.lpad:                                   ; preds = %ehcleanup26, %ehcleanup, %lpad
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5GroupD0Ev(%struct.Group* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.Group*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %struct.Group* %this, %struct.Group** %this.addr, align 8
  %this1 = load %struct.Group*, %struct.Group** %this.addr, align 8
  invoke void @_ZN5GroupD2Ev(%struct.Group* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %struct.Group* %this1 to i8*
  call void @_ZdlPv(i8* %0) #13
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %struct.Group* %this1 to i8*
  call void @_ZdlPv(i8* %4) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK5Group9intersectERKSt4pairId3VecERK3Ray(%"struct.std::pair"* noalias sret %agg.result, %struct.Group* %this, %"struct.std::pair"* dereferenceable(32) %hit, %struct.Ray* dereferenceable(48) %ray) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Group*, align 8
  %hit.addr = alloca %"struct.std::pair"*, align 8
  %ray.addr = alloca %struct.Ray*, align 8
  %hit2 = alloca %"struct.std::pair", align 8
  %l = alloca double, align 8
  %it = alloca %"struct.std::_List_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_List_const_iterator", align 8
  %ref.tmp7 = alloca %"struct.std::pair", align 8
  store %struct.Group* %this, %struct.Group** %this.addr, align 8
  store %"struct.std::pair"* %hit, %"struct.std::pair"** %hit.addr, align 8
  store %struct.Ray* %ray, %struct.Ray** %ray.addr, align 8
  %this1 = load %struct.Group*, %struct.Group** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %hit.addr, align 8
  %1 = bitcast %"struct.std::pair"* %hit2 to i8*
  %2 = bitcast %"struct.std::pair"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %bound = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 1
  %3 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  %call = call double @_ZNK6Sphere10ray_sphereERK3Ray(%struct.Sphere* %bound, %struct.Ray* dereferenceable(48) %3)
  store double %call, double* %l, align 8
  %4 = load double, double* %l, align 8
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %hit.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 0
  %6 = load double, double* %first, align 8
  %cmp = fcmp oge double %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %hit.addr, align 8
  %8 = bitcast %"struct.std::pair"* %agg.result to i8*
  %9 = bitcast %"struct.std::pair"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %child = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  %call2 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP5SceneSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %child)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %it, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call2, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %child3 = getelementptr inbounds %struct.Group, %struct.Group* %this1, i32 0, i32 2
  %call4 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP5SceneSaIS2_EE3endEv(%"class.std::__cxx11::list"* %child3)
  %coerce.dive5 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %call4, %"struct.std::__detail::_List_node_base"** %coerce.dive5, align 8
  %call6 = call zeroext i1 @_ZNKSt20_List_const_iteratorIP5SceneEneERKS2_(%"struct.std::_List_const_iterator"* %it, %"struct.std::_List_const_iterator"* dereferenceable(8) %ref.tmp)
  br i1 %call6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call dereferenceable(8) %struct.Scene** @_ZNKSt20_List_const_iteratorIP5SceneEdeEv(%"struct.std::_List_const_iterator"* %it)
  %10 = load %struct.Scene*, %struct.Scene** %call8, align 8
  %11 = bitcast %struct.Scene* %10 to void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)***
  %vtable = load void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)**, void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)*** %11, align 8
  %vfn = getelementptr inbounds void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)*, void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)** %vtable, i64 2
  %12 = load void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)*, void (%"struct.std::pair"*, %struct.Scene*, %"struct.std::pair"*, %struct.Ray*)** %vfn, align 8
  %13 = load %struct.Ray*, %struct.Ray** %ray.addr, align 8
  call void %12(%"struct.std::pair"* sret %ref.tmp7, %struct.Scene* %10, %"struct.std::pair"* dereferenceable(32) %hit2, %struct.Ray* dereferenceable(48) %13)
  %14 = bitcast %"struct.std::pair"* %hit2 to i8*
  %15 = bitcast %"struct.std::pair"* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call9 = call dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt20_List_const_iteratorIP5SceneEppEv(%"struct.std::_List_const_iterator"* %it)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast %"struct.std::pair"* %agg.result to i8*
  %17 = bitcast %"struct.std::pair"* %hit2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP5SceneSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_const_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  call void @_ZNSt20_List_const_iteratorIP5SceneEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP5SceneSaIS2_EE3endEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_const_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt20_List_const_iteratorIP5SceneEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt20_List_const_iteratorIP5SceneEneERKS2_(%"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"* dereferenceable(8) %__x) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"** %this.addr, align 8
  store %"struct.std::_List_const_iterator"* %__x, %"struct.std::_List_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  %cmp = icmp ne %"struct.std::__detail::_List_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.Scene** @_ZNKSt20_List_const_iteratorIP5SceneEdeEv(%"struct.std::_List_const_iterator"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %0 to %"struct.std::_List_node.0"*
  %call = call %struct.Scene** @_ZNKSt10_List_nodeIP5SceneE9_M_valptrEv(%"struct.std::_List_node.0"* %1)
  ret %struct.Scene** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt20_List_const_iteratorIP5SceneEppEv(%"struct.std::_List_const_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  ret %"struct.std::_List_const_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Scene** @_ZNKSt10_List_nodeIP5SceneE9_M_valptrEv(%"struct.std::_List_node.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_node.0"*, align 8
  store %"struct.std::_List_node.0"* %this, %"struct.std::_List_node.0"** %this.addr, align 8
  %this1 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %this.addr, align 8
  %_M_data = getelementptr inbounds %"struct.std::_List_node.0", %"struct.std::_List_node.0"* %this1, i32 0, i32 1
  %call = call %struct.Scene** @_ZSt11__addressofIKP5SceneEPT_RS3_(%struct.Scene** dereferenceable(8) %_M_data)
  ret %struct.Scene** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.Scene** @_ZSt11__addressofIKP5SceneEPT_RS3_(%struct.Scene** dereferenceable(8) %__r) #1 comdat {
entry:
  %__r.addr = alloca %struct.Scene**, align 8
  store %struct.Scene** %__r, %struct.Scene*** %__r.addr, align 8
  %0 = load %struct.Scene**, %struct.Scene*** %__r.addr, align 8
  ret %struct.Scene** %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt20_List_const_iteratorIP5SceneEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"** %this.addr, align 8
  store %"struct.std::__detail::_List_node_base"* %__x, %"struct.std::__detail::_List_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__x.addr, align 8
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_const_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  call void @_ZNSt14_List_iteratorIP5SceneEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %2)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %retval, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt20_List_const_iteratorIP5SceneEC2ERKSt14_List_iteratorIS1_E(%"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"* dereferenceable(8) %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"** %this.addr, align 8
  store %"struct.std::_List_const_iterator"* %__x, %"struct.std::_List_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node2, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE3endEv(%"class.std::__cxx11::list"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_List_const_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %0, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIP5SceneEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %retval, %"struct.std::__detail::_List_node_base"* %1)
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %retval, i32 0, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  ret %"struct.std::__detail::_List_node_base"* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIP5SceneEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_List_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_const_iterator"* %this, %"struct.std::_List_const_iterator"** %this.addr, align 8
  store %"struct.std::__detail::_List_node_base"* %__x, %"struct.std::__detail::_List_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %__x.addr, align 8
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::numeric_limits"* @_ZNKSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl to %"struct.std::numeric_limits"*
  ret %"struct.std::numeric_limits"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::numeric_limits"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE17_S_select_on_copyERKS5_(%"struct.std::numeric_limits"* dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %__a, %"struct.std::numeric_limits"** %__a.addr, align 8
  %0 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %__a.addr, align 8
  ret %"struct.std::numeric_limits"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EEC2ERKSaISt10_List_nodeIS2_EE(%"class.std::__cxx11::_List_base"* %this, %"struct.std::numeric_limits"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__a.addr = alloca %"struct.std::numeric_limits"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store %"struct.std::numeric_limits"* %__a, %"struct.std::numeric_limits"** %__a.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %__a.addr, align 8
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implC2ERKSaISt10_List_nodeIS2_EE(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, %"struct.std::numeric_limits"* dereferenceable(1) %0)
  invoke void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE7_M_initEv(%"class.std::__cxx11::_List_base"* %this1)
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
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl) #4
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP5SceneSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"* %__last.coerce) #0 comdat align 2 {
entry:
  %__first = alloca %"struct.std::_List_const_iterator", align 8
  %__last = alloca %"struct.std::_List_const_iterator", align 8
  %0 = alloca %"struct.std::numeric_limits", align 1
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %__first, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__first.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %__last, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__last.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive1, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  %this2 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZNKSt20_List_const_iteratorIP5SceneEneERKS2_(%"struct.std::_List_const_iterator"* %__first, %"struct.std::_List_const_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call dereferenceable(8) %struct.Scene** @_ZNKSt20_List_const_iteratorIP5SceneEdeEv(%"struct.std::_List_const_iterator"* %__first)
  call void @_ZNSt7__cxx114listIP5SceneSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %this2, %struct.Scene** dereferenceable(8) %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call4 = call dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt20_List_const_iteratorIP5SceneEppEv(%"struct.std::_List_const_iterator"* %__first)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implC2ERKSaISt10_List_nodeIS2_EE(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this, %"struct.std::numeric_limits"* dereferenceable(1) %__a) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"*, align 8
  %__a.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"** %this.addr, align 8
  store %"struct.std::numeric_limits"* %__a, %"struct.std::numeric_limits"** %__a.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"*, %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this1 to %"struct.std::numeric_limits"*
  %1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %__a.addr, align 8
  call void @_ZNSaISt10_List_nodeIP5SceneEEC2ERKS3_(%"struct.std::numeric_limits"* %0, %"struct.std::numeric_limits"* dereferenceable(1) %1) #4
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE7_M_initEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %0 = bitcast %"struct.std::_List_node"* %_M_node to %"struct.std::__detail::_List_node_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node3 = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl2, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node3 to %"struct.std::__detail::_List_node_base"*
  %_M_next = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %1, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next, align 8
  %_M_impl4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl4, i32 0, i32 0
  %2 = bitcast %"struct.std::_List_node"* %_M_node5 to %"struct.std::__detail::_List_node_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl6, i32 0, i32 0
  %3 = bitcast %"struct.std::_List_node"* %_M_node7 to %"struct.std::__detail::_List_node_base"*
  %_M_prev = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_prev, align 8
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this1, i64 0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
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
define linkonce_odr i64* @_ZSt11__addressofImEPT_RS0_(i64* dereferenceable(8) %__r) #1 comdat {
entry:
  %__r.addr = alloca i64*, align 8
  store i64* %__r, i64** %__r.addr, align 8
  %0 = load i64*, i64** %__r.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIP5SceneEEC2ERKS3_(%"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"* dereferenceable(1) %__a) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__a.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store %"struct.std::numeric_limits"* %__a, %"struct.std::numeric_limits"** %__a.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %0 = bitcast %"struct.std::numeric_limits"* %this1 to %"struct.std::numeric_limits"*
  %1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %__a.addr, align 8
  %2 = bitcast %"struct.std::numeric_limits"* %1 to %"struct.std::numeric_limits"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEEC2ERKS5_(%"struct.std::numeric_limits"* %0, %"struct.std::numeric_limits"* dereferenceable(1) %2) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEEC2ERKS5_(%"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store %"struct.std::numeric_limits"* %0, %"struct.std::numeric_limits"** %.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP5SceneSaIS2_EE9_M_insertESt14_List_iteratorIS2_ERKS2_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %struct.Scene** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__position = alloca %"struct.std::_List_const_iterator", align 8
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %struct.Scene**, align 8
  %__tmp = alloca %"struct.std::_List_node.0"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %struct.Scene** %__x, %struct.Scene*** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = load %struct.Scene**, %struct.Scene*** %__x.addr, align 8
  %call = call %"struct.std::_List_node.0"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE14_M_create_nodeERKS2_(%"class.std::__cxx11::list"* %this1, %struct.Scene** dereferenceable(8) %0)
  store %"struct.std::_List_node.0"* %call, %"struct.std::_List_node.0"** %__tmp, align 8
  %1 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__tmp, align 8
  %2 = bitcast %"struct.std::_List_node.0"* %1 to %"struct.std::__detail::_List_node_base"*
  %_M_node = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %__position, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"* %3) #4
  %4 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %4, i64 1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.0"* @_ZNSt7__cxx114listIP5SceneSaIS2_EE14_M_create_nodeERKS2_(%"class.std::__cxx11::list"* %this, %struct.Scene** dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::list"*, align 8
  %__x.addr = alloca %struct.Scene**, align 8
  %__p = alloca %"struct.std::_List_node.0"*, align 8
  %__alloc = alloca %"struct.std::numeric_limits", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %this.addr, align 8
  store %struct.Scene** %__x, %struct.Scene*** %__x.addr, align 8
  %this1 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %this.addr, align 8
  %0 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call = call %"struct.std::_List_node.0"* @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %0)
  store %"struct.std::_List_node.0"* %call, %"struct.std::_List_node.0"** %__p, align 8
  %1 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %call2 = invoke dereferenceable(1) %"struct.std::numeric_limits"* @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIP5SceneEC2ISt10_List_nodeIS0_EEERKSaIT_E(%"struct.std::numeric_limits"* %__alloc, %"struct.std::numeric_limits"* dereferenceable(1) %call2) #4
  %2 = bitcast %"struct.std::numeric_limits"* %__alloc to %"struct.std::numeric_limits"*
  %3 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__p, align 8
  %call5 = invoke %struct.Scene** @_ZNSt10_List_nodeIP5SceneE9_M_valptrEv(%"struct.std::_List_node.0"* %3)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %4 = load %struct.Scene**, %struct.Scene*** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIP5SceneE9constructEPS2_RKS2_(%"struct.std::numeric_limits"* %2, %struct.Scene** %call5, %struct.Scene** dereferenceable(8) %4)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  call void @_ZNSaIP5SceneED2Ev(%"struct.std::numeric_limits"* %__alloc) #4
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
  call void @_ZNSaIP5SceneED2Ev(%"struct.std::numeric_limits"* %__alloc) #4
  br label %catch

catch:                                            ; preds = %lpad3, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %11 = call i8* @__cxa_begin_catch(i8* %exn) #4
  %12 = bitcast %"class.std::__cxx11::list"* %this1 to %"class.std::__cxx11::_List_base"*
  %13 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__p, align 8
  invoke void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %12, %"struct.std::_List_node.0"* %13)
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
  %17 = load %"struct.std::_List_node.0"*, %"struct.std::_List_node.0"** %__p, align 8
  ret %"struct.std::_List_node.0"* %17

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
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl, i32 0, i32 0
  %call = call i64* @_ZNSt10_List_nodeImE9_M_valptrEv(%"struct.std::_List_node"* %_M_node)
  %1 = load i64, i64* %call, align 8
  %add = add i64 %1, %0
  store i64 %add, i64* %call, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.0"* @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl to %"struct.std::numeric_limits"*
  %call = call %"struct.std::_List_node.0"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE8allocateERS5_m(%"struct.std::numeric_limits"* dereferenceable(1) %0, i64 1)
  ret %"struct.std::_List_node.0"* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP5SceneE9constructEPS2_RKS2_(%"struct.std::numeric_limits"* %this, %struct.Scene** %__p, %struct.Scene** dereferenceable(8) %__val) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__p.addr = alloca %struct.Scene**, align 8
  %__val.addr = alloca %struct.Scene**, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store %struct.Scene** %__p, %struct.Scene*** %__p.addr, align 8
  store %struct.Scene** %__val, %struct.Scene*** %__val.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %0 = load %struct.Scene**, %struct.Scene*** %__p.addr, align 8
  %1 = bitcast %struct.Scene** %0 to i8*
  %2 = bitcast i8* %1 to %struct.Scene**
  %3 = load %struct.Scene**, %struct.Scene*** %__val.addr, align 8
  %4 = load %struct.Scene*, %struct.Scene** %3, align 8
  store %struct.Scene* %4, %struct.Scene** %2, align 8
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.0"* @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP5SceneEEE8allocateERS5_m(%"struct.std::numeric_limits"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::numeric_limits"* %__a, %"struct.std::numeric_limits"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %__a.addr, align 8
  %1 = bitcast %"struct.std::numeric_limits"* %0 to %"struct.std::numeric_limits"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_List_node.0"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE8allocateEmPKv(%"struct.std::numeric_limits"* %1, i64 %2, i8* null)
  ret %"struct.std::_List_node.0"* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %"struct.std::_List_node.0"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE8allocateEmPKv(%"struct.std::numeric_limits"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE8max_sizeEv(%"struct.std::numeric_limits"* %this1) #4
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 24
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_List_node.0"*
  ret %"struct.std::_List_node.0"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEE8max_sizeEv(%"struct.std::numeric_limits"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret i64 768614336404564650
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EEC2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__cxx11::_List_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %this1 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl)
  invoke void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE7_M_initEv(%"class.std::__cxx11::_List_base"* %this1)
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
  call void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %_M_impl) #4
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"** %this.addr, align 8
  %this1 = load %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"*, %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this1 to %"struct.std::numeric_limits"*
  call void @_ZNSaISt10_List_nodeIP5SceneEEC2Ev(%"struct.std::numeric_limits"* %0) #4
  %_M_node = getelementptr inbounds %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl", %"struct.std::__cxx11::_List_base<Scene *, std::allocator<Scene *> >::_List_impl"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_List_node"* %_M_node to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIP5SceneEEC2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  %0 = bitcast %"struct.std::numeric_limits"* %this1 to %"struct.std::numeric_limits"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEEC2Ev(%"struct.std::numeric_limits"* %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP5SceneEEC2Ev(%"struct.std::numeric_limits"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::numeric_limits"*, align 8
  store %"struct.std::numeric_limits"* %this, %"struct.std::numeric_limits"** %this.addr, align 8
  %this1 = load %"struct.std::numeric_limits"*, %"struct.std::numeric_limits"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #10 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %level = alloca i32, align 4
  %n = alloca i32, align 4
  %ss = alloca i32, align 4
  %light = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %s = alloca %struct.Scene*, align 8
  %ref.tmp1 = alloca %struct.Vec, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %g = alloca double, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dir = alloca %struct.Vec, align 8
  %ref.tmp18 = alloca %struct.Vec, align 8
  %ref.tmp34 = alloca %struct.Ray, align 8
  %ref.tmp35 = alloca %struct.Vec, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 6, i32* %level, align 4
  store i32 512, i32* %n, align 4
  store i32 4, i32* %ss, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #16
  store i32 %call, i32* %level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp, double -1.000000e+00, double -3.000000e+00, double 2.000000e+00)
  call void @_Z7unitiseRK3Vec(%struct.Vec* sret %light, %struct.Vec* dereferenceable(24) %ref.tmp)
  %3 = load i32, i32* %level, align 4
  call void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp1, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00)
  %call2 = call %struct.Scene* @_Z6createiRK3Vecd(i32 %3, %struct.Vec* dereferenceable(24) %ref.tmp1, double 1.000000e+00)
  store %struct.Scene* %call2, %struct.Scene** %s, align 8
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %4 = load i32, i32* %n, align 4
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call3, i32 %4)
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %5 = load i32, i32* %n, align 4
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call5, i32 %5)
  %call7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %6 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %if.end
  %7 = load i32, i32* %y, align 4
  %cmp8 = icmp sge i32 %7, 0
  br i1 %cmp8, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc49, %for.body
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.end51

for.body11:                                       ; preds = %for.cond9
  store double 0.000000e+00, double* %g, align 8
  store i32 0, i32* %dx, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc38, %for.body11
  %10 = load i32, i32* %dx, align 4
  %11 = load i32, i32* %ss, align 4
  %cmp13 = icmp slt i32 %10, %11
  br i1 %cmp13, label %for.body14, label %for.end40

for.body14:                                       ; preds = %for.cond12
  store i32 0, i32* %dy, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body14
  %12 = load i32, i32* %dy, align 4
  %13 = load i32, i32* %ss, align 4
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond15
  %14 = load i32, i32* %x, align 4
  %conv = sitofp i32 %14 to double
  %15 = load i32, i32* %dx, align 4
  %conv19 = sitofp i32 %15 to double
  %mul = fmul double %conv19, 1.000000e+00
  %16 = load i32, i32* %ss, align 4
  %conv20 = sitofp i32 %16 to double
  %div = fdiv double %mul, %conv20
  %add = fadd double %conv, %div
  %17 = load i32, i32* %n, align 4
  %conv21 = sitofp i32 %17 to double
  %div22 = fdiv double %conv21, 2.000000e+00
  %sub23 = fsub double %add, %div22
  %18 = load i32, i32* %y, align 4
  %conv24 = sitofp i32 %18 to double
  %19 = load i32, i32* %dy, align 4
  %conv25 = sitofp i32 %19 to double
  %mul26 = fmul double %conv25, 1.000000e+00
  %20 = load i32, i32* %ss, align 4
  %conv27 = sitofp i32 %20 to double
  %div28 = fdiv double %mul26, %conv27
  %add29 = fadd double %conv24, %div28
  %21 = load i32, i32* %n, align 4
  %conv30 = sitofp i32 %21 to double
  %div31 = fdiv double %conv30, 2.000000e+00
  %sub32 = fsub double %add29, %div31
  %22 = load i32, i32* %n, align 4
  %conv33 = sitofp i32 %22 to double
  call void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp18, double %sub23, double %sub32, double %conv33)
  call void @_Z7unitiseRK3Vec(%struct.Vec* sret %dir, %struct.Vec* dereferenceable(24) %ref.tmp18)
  call void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp35, double 0.000000e+00, double 0.000000e+00, double -4.000000e+00)
  call void @_ZN3RayC2ERK3VecS2_(%struct.Ray* %ref.tmp34, %struct.Vec* dereferenceable(24) %ref.tmp35, %struct.Vec* dereferenceable(24) %dir)
  %23 = load %struct.Scene*, %struct.Scene** %s, align 8
  %call36 = call double @_Z9ray_traceRK3VecRK3RayRK5Scene(%struct.Vec* dereferenceable(24) %light, %struct.Ray* dereferenceable(48) %ref.tmp34, %struct.Scene* dereferenceable(8) %23)
  %24 = load double, double* %g, align 8
  %add37 = fadd double %24, %call36
  store double %add37, double* %g, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body17
  %25 = load i32, i32* %dy, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %dy, align 4
  br label %for.cond15

for.end:                                          ; preds = %for.cond15
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %26 = load i32, i32* %dx, align 4
  %inc39 = add nsw i32 %26, 1
  store i32 %inc39, i32* %dx, align 4
  br label %for.cond12

for.end40:                                        ; preds = %for.cond12
  %27 = load double, double* %g, align 8
  %mul41 = fmul double 2.550000e+02, %27
  %28 = load i32, i32* %ss, align 4
  %29 = load i32, i32* %ss, align 4
  %mul42 = mul nsw i32 %28, %29
  %conv43 = sitofp i32 %mul42 to double
  %div44 = fdiv double %mul41, %conv43
  %add45 = fadd double 5.000000e-01, %div44
  %conv46 = fptosi double %add45 to i32
  %conv47 = trunc i32 %conv46 to i8
  %call48 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8 signext %conv47)
  br label %for.inc49

for.inc49:                                        ; preds = %for.end40
  %30 = load i32, i32* %x, align 4
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, i32* %x, align 4
  br label %for.cond9

for.end51:                                        ; preds = %for.cond9
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %31 = load i32, i32* %y, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  %32 = load %struct.Scene*, %struct.Scene** %s, align 8
  %isnull = icmp eq %struct.Scene* %32, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end53
  %33 = bitcast %struct.Scene* %32 to void (%struct.Scene*)***
  %vtable = load void (%struct.Scene*)**, void (%struct.Scene*)*** %33, align 8
  %vfn = getelementptr inbounds void (%struct.Scene*)*, void (%struct.Scene*)** %vtable, i64 1
  %34 = load void (%struct.Scene*)*, void (%struct.Scene*)** %vfn, align 8
  call void %34(%struct.Scene* %32)
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end53
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #11

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #3

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #3

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272), i8 signext) #3

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
