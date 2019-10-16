; ModuleID = 'Shootout-C++-moments/Shootout-C++-moments.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }
%struct.moments = type { double, double, double, double, double, double, double }
%"class.__gnu_cxx::__normal_iterator" = type { double* }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEE9push_backERKd = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_ = comdat any

$_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_ = comdat any

$_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl = comdat any

$_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_ = comdat any

$_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt13__max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNSt11__iter_swapILb1EE9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEvT_T0_ = comdat any

$_ZSt4swapIdEvRT_S1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_ = comdat any

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

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_ = comdat any

$_ZNSt6vectorIdSaIdEE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd = comdat any

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

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdEC2Ev = comdat any

@.str = private unnamed_addr constant [24 x i8] c"n:                  %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"median:             %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"mean:               %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"average_deviation:  %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"standard_deviation: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"variance:           %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"skew:               %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"kurtosis:           %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %v = alloca %"class.std::vector", align 8
  %d = alloca double, align 8
  %i = alloca i32, align 4
  %ref.tmp = alloca double, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %m = alloca %struct.moments, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
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
  %cond = phi i32 [ %call, %cond.true ], [ 5000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %v)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %conv = uitofp i32 %5 to double
  store double %conv, double* %ref.tmp, align 8
  invoke void @_ZNSt6vectorIdSaIdEE9push_backERKd(%"class.std::vector"* %v, double* dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %invoke.cont33, %invoke.cont31, %invoke.cont29, %invoke.cont27, %invoke.cont25, %invoke.cont23, %invoke.cont21, %invoke.cont19, %invoke.cont16, %invoke.cont12, %invoke.cont10, %invoke.cont5, %invoke.cont2, %for.end, %for.body
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %v)
          to label %invoke.cont37 unwind label %terminate.lpad

for.end:                                          ; preds = %for.cond
  %call3 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %v)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %for.end
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call3, double** %coerce.dive, align 8
  %call6 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %v)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont2
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  store double* %call6, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %11 = load double*, double** %coerce.dive9, align 8
  invoke void @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_(%struct.moments* %m, double* %10, double* %11)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont5
  %call13 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %v)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp11, i32 0, i32 0
  store double* %call13, double** %coerce.dive14, align 8
  %call17 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %v)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont12
  %coerce.dive18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp15, i32 0, i32 0
  store double* %call17, double** %coerce.dive18, align 8
  %call20 = invoke i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp11, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp15)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %invoke.cont16
  %call22 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i64 %call20)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %invoke.cont19
  %median = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 0
  %12 = load double, double* %median, align 8
  %call24 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), double %12)
          to label %invoke.cont23 unwind label %lpad

invoke.cont23:                                    ; preds = %invoke.cont21
  %mean = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 1
  %13 = load double, double* %mean, align 8
  %call26 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), double %13)
          to label %invoke.cont25 unwind label %lpad

invoke.cont25:                                    ; preds = %invoke.cont23
  %average_deviation = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 2
  %14 = load double, double* %average_deviation, align 8
  %call28 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), double %14)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont25
  %standard_deviation = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 3
  %15 = load double, double* %standard_deviation, align 8
  %call30 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), double %15)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont27
  %variance = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 4
  %16 = load double, double* %variance, align 8
  %call32 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), double %16)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont29
  %skew = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 5
  %17 = load double, double* %skew, align 8
  %call34 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), double %17)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont31
  %kurtosis = getelementptr inbounds %struct.moments, %struct.moments* %m, i32 0, i32 6
  %18 = load double, double* %kurtosis, align 8
  %call36 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), double %18)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %invoke.cont33
  store i32 0, i32* %retval, align 4
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %v)
  %19 = load i32, i32* %retval, align 4
  ret i32 %19

invoke.cont37:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont37
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val38 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val38

terminate.lpad:                                   ; preds = %lpad
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE9push_backERKd(%"class.std::vector"* %this, double* dereferenceable(8) %__x) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca double*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load double*, double** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load double*, double** %_M_end_of_storage, align 8
  %cmp = icmp ne double* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl3 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load double*, double** %_M_finish5, align 8
  %8 = load double*, double** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %5, double* %7, double* dereferenceable(8) %8)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load double*, double** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr, double** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %11 = load double*, double** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %12 = load double*, double** %coerce.dive8, align 8
  call void @_ZNSt6vectorIdSaIdEE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd(%"class.std::vector"* %this1, double* %12, double* dereferenceable(8) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call = invoke dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %1, double* %3, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %call)
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
  call void @__clang_call_terminate(i8* %11) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %this) #2 comdat align 2 {
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

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this) #2 comdat align 2 {
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_(%struct.moments* %this, double* %begin.coerce, double* %end.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %begin = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %end = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %struct.moments*, align 8
  %sum = alloca double, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %N = alloca i64, align 8
  %i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %deviation = alloca double, align 8
  %temp = alloca double, align 8
  %mid = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp52 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp53 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp54 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %next_biggest = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp59 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp60 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  store %struct.moments* %this, %struct.moments** %this.addr, align 8
  %this2 = load %struct.moments*, %struct.moments** %this.addr, align 8
  %median = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 0
  store double 0.000000e+00, double* %median, align 8
  %mean = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 1
  store double 0.000000e+00, double* %mean, align 8
  %average_deviation = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 2
  store double 0.000000e+00, double* %average_deviation, align 8
  %standard_deviation = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 3
  store double 0.000000e+00, double* %standard_deviation, align 8
  %variance = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  store double 0.000000e+00, double* %variance, align 8
  %skew = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 5
  store double 0.000000e+00, double* %skew, align 8
  %kurtosis = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 6
  store double 0.000000e+00, double* %kurtosis, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load double*, double** %coerce.dive5, align 8
  %call = call double @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_(double* %4, double* %5, double 0.000000e+00)
  store double %call, double* %sum, align 8
  %call6 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %end, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %begin)
  store i64 %call6, i64* %N, align 8
  %6 = load double, double* %sum, align 8
  %7 = load i64, i64* %N, align 8
  %conv = uitofp i64 %7 to double
  %div = fdiv double %6, %conv
  %mean7 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 1
  store double %div, double* %mean7, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %i to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call8 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %i, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %end)
  br i1 %call8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %i)
  %10 = load double, double* %call9, align 8
  %mean10 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 1
  %11 = load double, double* %mean10, align 8
  %sub = fsub double %10, %11
  store double %sub, double* %deviation, align 8
  %12 = load double, double* %deviation, align 8
  %call11 = call double @fabs(double %12) #9
  %average_deviation12 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 2
  %13 = load double, double* %average_deviation12, align 8
  %add = fadd double %13, %call11
  store double %add, double* %average_deviation12, align 8
  %14 = load double, double* %deviation, align 8
  %15 = load double, double* %deviation, align 8
  %mul = fmul double %14, %15
  store double %mul, double* %temp, align 8
  %16 = load double, double* %temp, align 8
  %variance13 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %17 = load double, double* %variance13, align 8
  %add14 = fadd double %17, %16
  store double %add14, double* %variance13, align 8
  %18 = load double, double* %deviation, align 8
  %19 = load double, double* %temp, align 8
  %mul15 = fmul double %19, %18
  store double %mul15, double* %temp, align 8
  %20 = load double, double* %temp, align 8
  %skew16 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 5
  %21 = load double, double* %skew16, align 8
  %add17 = fadd double %21, %20
  store double %add17, double* %skew16, align 8
  %22 = load double, double* %temp, align 8
  %23 = load double, double* %deviation, align 8
  %mul18 = fmul double %22, %23
  %kurtosis19 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 6
  %24 = load double, double* %kurtosis19, align 8
  %add20 = fadd double %24, %mul18
  store double %add20, double* %kurtosis19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call21 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* %N, align 8
  %conv22 = uitofp i64 %25 to double
  %average_deviation23 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 2
  %26 = load double, double* %average_deviation23, align 8
  %div24 = fdiv double %26, %conv22
  store double %div24, double* %average_deviation23, align 8
  %27 = load i64, i64* %N, align 8
  %sub25 = sub i64 %27, 1
  %conv26 = uitofp i64 %sub25 to double
  %variance27 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %28 = load double, double* %variance27, align 8
  %div28 = fdiv double %28, %conv26
  store double %div28, double* %variance27, align 8
  %variance29 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %29 = load double, double* %variance29, align 8
  %call30 = call double @sqrt(double %29) #15
  %standard_deviation31 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 3
  store double %call30, double* %standard_deviation31, align 8
  %variance32 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %30 = load double, double* %variance32, align 8
  %tobool = fcmp une double %30, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %31 = load i64, i64* %N, align 8
  %conv33 = uitofp i64 %31 to double
  %variance34 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %32 = load double, double* %variance34, align 8
  %mul35 = fmul double %conv33, %32
  %standard_deviation36 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 3
  %33 = load double, double* %standard_deviation36, align 8
  %mul37 = fmul double %mul35, %33
  %skew38 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 5
  %34 = load double, double* %skew38, align 8
  %div39 = fdiv double %34, %mul37
  store double %div39, double* %skew38, align 8
  %kurtosis40 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 6
  %35 = load double, double* %kurtosis40, align 8
  %36 = load i64, i64* %N, align 8
  %conv41 = uitofp i64 %36 to double
  %variance42 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %37 = load double, double* %variance42, align 8
  %mul43 = fmul double %conv41, %37
  %variance44 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 4
  %38 = load double, double* %variance44, align 8
  %mul45 = fmul double %mul43, %38
  %div46 = fdiv double %35, %mul45
  %sub47 = fsub double %div46, 3.000000e+00
  %kurtosis48 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 6
  store double %sub47, double* %kurtosis48, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %39 = load i64, i64* %N, align 8
  %div49 = udiv i64 %39, 2
  %call50 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %begin, i64 %div49)
  %coerce.dive51 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %mid, i32 0, i32 0
  store double* %call50, double** %coerce.dive51, align 8
  %40 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp52 to i8*
  %41 = bitcast %"class.__gnu_cxx::__normal_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 8, i1 false)
  %42 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp53 to i8*
  %43 = bitcast %"class.__gnu_cxx::__normal_iterator"* %mid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 8, i32 8, i1 false)
  %44 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp54 to i8*
  %45 = bitcast %"class.__gnu_cxx::__normal_iterator"* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 8, i1 false)
  %coerce.dive55 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp52, i32 0, i32 0
  %46 = load double*, double** %coerce.dive55, align 8
  %coerce.dive56 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp53, i32 0, i32 0
  %47 = load double*, double** %coerce.dive56, align 8
  %coerce.dive57 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp54, i32 0, i32 0
  %48 = load double*, double** %coerce.dive57, align 8
  call void @_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_(double* %46, double* %47, double* %48)
  %49 = load i64, i64* %N, align 8
  %rem = urem i64 %49, 2
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end
  %50 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp59 to i8*
  %51 = bitcast %"class.__gnu_cxx::__normal_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %52 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp60 to i8*
  %53 = bitcast %"class.__gnu_cxx::__normal_iterator"* %mid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 8, i32 8, i1 false)
  %coerce.dive61 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp59, i32 0, i32 0
  %54 = load double*, double** %coerce.dive61, align 8
  %coerce.dive62 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp60, i32 0, i32 0
  %55 = load double*, double** %coerce.dive62, align 8
  %call63 = call double* @_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_(double* %54, double* %55)
  %coerce.dive64 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %next_biggest, i32 0, i32 0
  store double* %call63, double** %coerce.dive64, align 8
  %call65 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %mid)
  %56 = load double, double* %call65, align 8
  %call66 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %next_biggest)
  %57 = load double, double* %call66, align 8
  %add67 = fadd double %56, %57
  %div68 = fdiv double %add67, 2.000000e+00
  %median69 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 0
  store double %div68, double* %median69, align 8
  br label %if.end72

if.else:                                          ; preds = %if.end
  %call70 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %mid)
  %58 = load double, double* %call70, align 8
  %median71 = getelementptr inbounds %struct.moments, %struct.moments* %this2, i32 0, i32 0
  store double %58, double* %median71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #3 comdat {
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

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #5 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #15
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret double** %_M_current
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_(double* %__first.coerce, double* %__last.coerce, double %__init) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__init.addr = alloca double, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store double %__init, double* %__init.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load double, double* %__init.addr, align 8
  %call2 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %1 = load double, double* %call2, align 8
  %add = fadd double %0, %1
  store double %add, double* %__init.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call3 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %2 = load double, double* %__init.addr, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #3 comdat {
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
define linkonce_odr dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  ret double* %0
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
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

; Function Attrs: nounwind
declare double @sqrt(double) #8

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %this, i64 %__n) #2 comdat align 2 {
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
define linkonce_odr void @_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_(double* %__first.coerce, double* %__nth.coerce, double* %__last.coerce) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__nth = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__nth, i32 0, i32 0
  store double* %__nth.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive2, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__nth, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__nth to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %call6 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %call7 = call i64 @_ZSt4__lgl(i64 %call6)
  %mul = mul nsw i64 %call7, 2
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load double*, double** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %7 = load double*, double** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp5, i32 0, i32 0
  %8 = load double*, double** %coerce.dive11, align 8
  call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(double* %6, double* %7, double* %8, i64 %mul)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_(double* %__first.coerce, double* %__last.coerce) #2 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %call = call double* @_ZSt13__max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(double* %4, double* %5)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  store double* %call, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %6 = load double*, double** %coerce.dive7, align 8
  ret double* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #3 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt13__max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce) #3 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
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
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %call2 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %call3 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %call2, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive6, align 8
  %call7 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %8, double* %9)
  br i1 %call7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %retval to i8*
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %while.end, %if.then
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %14 = load double*, double** %coerce.dive10, align 8
  ret double* %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #3 comdat {
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
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, double* %__it1.coerce, double* %__it2.coerce) #3 comdat align 2 {
entry:
  %__it1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__it2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it1, i32 0, i32 0
  store double* %__it1.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it2, i32 0, i32 0
  store double* %__it2.coerce, double** %coerce.dive1, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this2 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it1)
  %0 = load double, double* %call, align 8
  %call3 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it2)
  %1 = load double, double* %call3, align 8
  %cmp = fcmp olt double %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZSt4__lgl(i64 %__n) #3 comdat {
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
define linkonce_odr void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(double* %__first.coerce, double* %__nth.coerce, double* %__last.coerce, i64 %__depth_limit) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__nth = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__cut = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp18 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp26 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp27 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp28 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__nth, i32 0, i32 0
  store double* %__nth.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive2, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first)
  %cmp = icmp sgt i64 %call, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i64, i64* %__depth_limit.addr, align 8
  %cmp3 = icmp eq i64 %0, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call5 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__nth, i64 1)
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  store double* %call5, double** %coerce.dive6, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp4, i32 0, i32 0
  %6 = load double*, double** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp7, i32 0, i32 0
  %7 = load double*, double** %coerce.dive11, align 8
  call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(double* %5, double* %6, double* %7)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__nth to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp12, i32 0, i32 0
  %12 = load double*, double** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp13, i32 0, i32 0
  %13 = load double*, double** %coerce.dive15, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %12, double* %13)
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp16, i32 0, i32 0
  %19 = load double*, double** %coerce.dive19, align 8
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp17, i32 0, i32 0
  %20 = load double*, double** %coerce.dive20, align 8
  %call21 = call double* @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(double* %19, double* %20)
  %coerce.dive22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__cut, i32 0, i32 0
  store double* %call21, double** %coerce.dive22, align 8
  %call23 = call zeroext i1 @_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__cut, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__nth)
  br i1 %call23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 8, i1 false)
  br label %if.end25

if.else:                                          ; preds = %if.end
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__cut to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 8, i1 false)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp26 to i8*
  %26 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp27 to i8*
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %coerce.dive29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp26, i32 0, i32 0
  %29 = load double*, double** %coerce.dive29, align 8
  %coerce.dive30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp27, i32 0, i32 0
  %30 = load double*, double** %coerce.dive30, align 8
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %29, double* %30)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(double* %__first.coerce, double* %__middle.coerce, double* %__last.coerce) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__middle = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(double* %4, double* %5, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp)
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
  %call10 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %12, double* %13)
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
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(double* %20, double* %21, double* %22, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp)
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
define linkonce_odr void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_(double* %__a.coerce, double* %__b.coerce) #2 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce) #2 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__mid = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp11 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp19 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp21 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxleIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #3 comdat {
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
  %cmp = icmp ule double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(double* %__first.coerce, double* %__last.coerce) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__val = alloca double, align 8
  %agg.tmp11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp23 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp24 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %4, double* %5)
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
define linkonce_odr double* @_ZSt13copy_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_(double* %__first.coerce, double* %__last.coerce, double* %__result.coerce) #2 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #2 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_(double* %__last.coerce) #2 comdat {
entry:
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* dereferenceable(8) %__val, double* %5)
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
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 {
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
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdNS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, double* dereferenceable(8) %__val, double* %__it.coerce) #3 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__val.addr = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double, double* %0, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %2 = load double, double* %call, align 8
  %cmp = fcmp olt double %1, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(double* %__it.coerce) #3 comdat {
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
define linkonce_odr double* @_ZSt23__copy_move_backward_a2ILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET1_T0_S8_S7_(double* %__first.coerce, double* %__last.coerce, double* %__result.coerce) #2 comdat {
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
define linkonce_odr double* @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(double* %__it.coerce) #3 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %0 = load double*, double** %call, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #2 comdat {
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
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, double** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #3 comdat align 2 {
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
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %this, i64 %__n) #2 comdat align 2 {
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
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(double* %__result.coerce, double* %__a.coerce, double* %__b.coerce, double* %__c.coerce) #2 comdat {
entry:
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__c = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %4, double* %5)
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
  %call11 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %10, double* %11)
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
  %call21 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %22, double* %23)
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
  %call38 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %40, double* %41)
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
  %call49 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %52, double* %53)
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
define linkonce_odr double* @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_(double* %__first.coerce, double* %__last.coerce, double* %__pivot.coerce) #2 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__pivot = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %4, double* %5)
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
  %call15 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %10, double* %11)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #3 comdat {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt4swapIdEvRT_S1_(double* dereferenceable(8) %__a, double* dereferenceable(8) %__b) #3 comdat {
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
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(double* %__first.coerce, double* %__last.coerce, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
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
  %8 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
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
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(double* %__first.coerce, double* %__last.coerce, double* %__result.coerce, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store double* %__result.coerce, double** %coerce.dive2, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
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
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load double*, double** %coerce.dive7, align 8
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(double* %6, i64 0, i64 %call5, double %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(double* %__first.coerce, i64 %__holeIndex, i64 %__len, double %__value) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp34 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
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
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEES8_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, double* %7, double* %8)
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
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__cmp)
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  %24 = load i64, i64* %__holeIndex.addr, align 8
  %25 = load i64, i64* %__topIndex, align 8
  %26 = load double, double* %__value.addr, align 8
  %coerce.dive36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp35, i32 0, i32 0
  %27 = load double*, double** %coerce.dive36, align 8
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_(double* %27, i64 %24, i64 %25, double %26, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_(double* %__first.coerce, i64 %__holeIndex, i64 %__topIndex, double %__value, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #2 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
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
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
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
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  %4 = load i64, i64* %__parent, align 8
  %call = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.__gnu_cxx::__normal_iterator"* %__first, i64 %4)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive2, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %3, double* %5, double* dereferenceable(8) %__value.addr)
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
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, double* %__it.coerce, double* dereferenceable(8) %__val) #3 comdat align 2 {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__val.addr = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %call = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %0 = load double, double* %call, align 8
  %1 = load double*, double** %__val.addr, align 8
  %2 = load double, double* %1, align 8
  %cmp = fcmp olt double %0, %2
  ret i1 %cmp
}

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  ret %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1)) #2 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  call void @_ZSt8_DestroyIPdEvT_S1_(double* %1, double* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl5) #15
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl6) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this, double* %__p, i64 %__n) #2 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %1, double* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  call void @_ZNSaIdED2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdED2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %0 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this1 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  call void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__a, double* %__p, i64 %__n) #2 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__a, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  %1 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %1, double* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, double* %__p, i64) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__p.addr = alloca double*, align 8
  %.addr = alloca i64, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %1 = load double*, double** %__p.addr, align 8
  %2 = bitcast double* %1 to i8*
  call void @_ZdlPv(i8* %2) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPdEvT_S1_(double* %__first, double* %__last) #2 comdat {
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
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double*, double*) #3 comdat align 2 {
entry:
  %.addr = alloca double*, align 8
  %.addr1 = alloca double*, align 8
  store double* %0, double** %.addr, align 8
  store double* %1, double** %.addr1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__a, double* %__p, double* dereferenceable(8) %__arg) #2 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__p.addr = alloca double*, align 8
  %__arg.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__a, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store double* %__arg, double** %__arg.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  %1 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load double*, double** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %1, double* %2, double* dereferenceable(8) %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd(%"class.std::vector"* %this, double* %__position.coerce, double* dereferenceable(8) %__x) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca double*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca double*, align 8
  %__new_finish = alloca double*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store double* %__position.coerce, double** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i64 %call, i64* %__len, align 8
  %call2 = call double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp)
  store i64 %call4, i64* %__elems_before, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__len, align 8
  %call5 = call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1)
  store double* %call5, double** %__new_start, align 8
  %2 = load double*, double** %__new_start, align 8
  store double* %2, double** %__new_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %5 = load double*, double** %__new_start, align 8
  %6 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds double, double* %5, i64 %6
  %7 = load double*, double** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %4, double* %add.ptr, double* dereferenceable(8) %7)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store double* null, double** %__new_finish, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl6, i32 0, i32 0
  %9 = load double*, double** %_M_start, align 8
  %call8 = invoke dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %10 = load double*, double** %call8, align 8
  %11 = load double*, double** %__new_start, align 8
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call10 = invoke dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %12)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %9, double* %10, double* %11, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  store double* %call12, double** %__new_finish, align 8
  %13 = load double*, double** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds double, double* %13, i32 1
  store double* %incdec.ptr, double** %__new_finish, align 8
  %call14 = invoke dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  %14 = load double*, double** %call14, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  %16 = load double*, double** %_M_finish, align 8
  %17 = load double*, double** %__new_finish, align 8
  %18 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call17 = invoke dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %18)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont13
  %call19 = invoke double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %14, double* %16, double* %17, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %call17)
          to label %invoke.cont18 unwind label %lpad

invoke.cont18:                                    ; preds = %invoke.cont16
  store double* %call19, double** %__new_finish, align 8
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
  %22 = call i8* @__cxa_begin_catch(i8* %exn) #15
  %23 = load double*, double** %__new_finish, align 8
  %tobool = icmp ne double* %23, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %24 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl20 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %26 = load double*, double** %__new_start, align 8
  %27 = load i64, i64* %__elems_before, align 8
  %add.ptr21 = getelementptr inbounds double, double* %26, i64 %27
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %25, double* %add.ptr21)
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
  %31 = load double*, double** %__new_start, align 8
  %32 = load double*, double** %__new_finish, align 8
  %33 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call25 = invoke dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %33)
          to label %invoke.cont24 unwind label %lpad22

invoke.cont24:                                    ; preds = %if.else
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %31, double* %32, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %call25)
          to label %invoke.cont26 unwind label %lpad22

invoke.cont26:                                    ; preds = %invoke.cont24
  br label %if.end

if.end:                                           ; preds = %invoke.cont26, %invoke.cont23
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %35 = load double*, double** %__new_start, align 8
  %36 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %34, double* %35, i64 %36)
          to label %invoke.cont27 unwind label %lpad22

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad22

invoke.cont28:                                    ; preds = %lpad22
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont18
  %37 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %38 = load double*, double** %_M_start30, align 8
  %39 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %40 = load double*, double** %_M_finish32, align 8
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call33 = call dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %41)
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %38, double* %40, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %call33)
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %43 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %43, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %44 = load double*, double** %_M_start35, align 8
  %45 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %46 = load double*, double** %_M_end_of_storage, align 8
  %47 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %47, i32 0, i32 0
  %_M_start38 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl37, i32 0, i32 0
  %48 = load double*, double** %_M_start38, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %42, double* %44, i64 %sub.ptr.div)
  %49 = load double*, double** %__new_start, align 8
  %50 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl39 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %_M_start40 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl39, i32 0, i32 0
  store double* %49, double** %_M_start40, align 8
  %51 = load double*, double** %__new_finish, align 8
  %52 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl41 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %52, i32 0, i32 0
  %_M_finish42 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl41, i32 0, i32 1
  store double* %51, double** %_M_finish42, align 8
  %53 = load double*, double** %__new_start, align 8
  %54 = load i64, i64* %__len, align 8
  %add.ptr43 = getelementptr inbounds double, double* %53, i64 %54
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %_M_end_of_storage45 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl44, i32 0, i32 2
  store double* %add.ptr43, double** %_M_end_of_storage45, align 8
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
  call void @__clang_call_terminate(i8* %57) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #2 comdat align 2 {
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
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #16
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
define linkonce_odr double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #2 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %call, %cond.true ], [ null, %cond.false ]
  ret double* %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__alloc) #2 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__alloc.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__alloc, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__alloc.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__alloc.addr, align 8
  %call = call double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %0, double* %1, double* %2, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %3)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__a, double* %__p) #2 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__p.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__a, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  %1 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %2 = load double*, double** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %1, double* %2)
  ret void
}

declare void @__cxa_end_catch()

declare void @__cxa_rethrow()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, double* %__p) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__p.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %__first, double* %__last, double* %__result, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1)) #2 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = load double*, double** %__result.addr, align 8
  %call = call double* @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(double* %1, double* %2, double* %3)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #2 comdat {
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
define linkonce_odr double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(double* %__first, double* %__last, double* %__result) #2 comdat align 2 {
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
define linkonce_odr double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #2 comdat {
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
define linkonce_odr double* @_ZSt12__miter_baseIPdET_S1_(double* %__it) #3 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #2 comdat {
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
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double* %__it) #3 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #2 comdat {
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
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #3 comdat align 2 {
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
define linkonce_odr double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__a, i64 %__n) #2 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__a, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  %1 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %1, i64 %2, i8* null)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, i64 %__n, i8*) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this1) #15
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to double*
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #12

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #3 comdat align 2 {
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

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #11

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
define linkonce_odr dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  ret %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__a) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__a, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__a.addr, align 8
  %1 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %1) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, double* %__p, double* dereferenceable(8) %__val) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__p.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %0 = load double*, double** %__p.addr, align 8
  %1 = bitcast double* %0 to i8*
  %2 = bitcast i8* %1 to double*
  %3 = load double*, double** %__val.addr, align 8
  %4 = load double, double* %3, align 8
  store double %4, double* %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  call void @_ZNSaIdEC2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0) #15
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 0
  store double* null, double** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 1
  store double* null, double** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 2
  store double* null, double** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdEC2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %0 = bitcast %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this1 to %"struct.__gnu_cxx::__ops::_Iter_less_iter"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  ret void
}

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
