; ModuleID = 'functionobjects/functionobjects.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.one_result = type { double, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.less_than_functor = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i1 (double, double)* }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6" = type { %struct.less_than_functor }

$_Z9quicksortIPdPFbddEEvT_S3_T0_ = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_Z13verify_sortedIPdEvT_S1_ = comdat any

$_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_ = comdat any

$_ZSt4sortIPdPFbddEEvT_S3_T0_ = comdat any

$_Z9quicksortIPd17less_than_functorEvT_S2_T0_ = comdat any

$_ZSt4sortIPd17less_than_functorEvT_S2_T0_ = comdat any

$_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_ = comdat any

$_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_ = comdat any

$_Z9quicksortIPdSt4lessIdEEvT_S3_T0_ = comdat any

$_ZSt4sortIPdSt4lessIdEEvT_S3_T0_ = comdat any

$_Z9quicksortIPdEvT_S1_ = comdat any

$_ZSt4sortIPdEvT_S1_ = comdat any

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

$_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_ = comdat any

$_ZNKSt4lessIdEclERKdS2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2ERKNS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_ = comdat any

$_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2ERKNS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_ = comdat any

$_ZNK24inline_less_than_functorclERKdS1_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_ = comdat any

$_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_ = comdat any

$_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_ = comdat any

$_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE = comdat any

$_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2ERKNS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_ = comdat any

$_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_ = comdat any

$_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_ = comdat any

$_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_ = comdat any

$_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_ = comdat any

$_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2ERKNS0_15_Iter_comp_iterIS3_EE = comdat any

$_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

@results = global %struct.one_result* null, align 8
@current_test = global i32 0, align 4
@allocated_results = global i32 0, align 4
@start_time = global i64 0, align 8
@end_time = global i64 0, align 8
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
@.str.11 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1

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
  %call = call i8* @realloc(i8* %5, i64 %mul) #11
  %7 = bitcast i8* %call to %struct.one_result*
  store %struct.one_result* %7, %struct.one_result** @results, align 8
  %8 = load %struct.one_result*, %struct.one_result** @results, align 8
  %cmp2 = icmp eq %struct.one_result* %8, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load i32, i32* @allocated_results, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 %9)
  call void @exit(i32 -1) #12
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
declare i8* @realloc(i8*, i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

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
  %call = call i64 @strlen(i8* %6) #13
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
  %call13 = call i64 @strlen(i8* %19) #13
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
  %call56 = call double @log(double %div55) #11
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
  %call64 = call double @exp(double %div63) #11
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %56, double %call64)
  br label %if.end66

if.end66:                                         ; preds = %for.end60, %land.lhs.true, %for.end43
  store i32 0, i32* @current_test, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare double @exp(double) #1

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
  %call = call i64 @strlen(i8* %4) #13
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
  %call11 = call i64 @strlen(i8* %20) #13
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

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define void @_Z11start_timerv() #5 {
entry:
  %call = call i64 @clock() #11
  store i64 %call, i64* @start_time, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: noinline nounwind uwtable
define double @_Z5timerv() #5 {
entry:
  %call = call i64 @clock() #11
  store i64 %call, i64* @end_time, align 8
  %0 = load i64, i64* @end_time, align 8
  %1 = load i64, i64* @start_time, align 8
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  ret double %div
}

; Function Attrs: noinline nounwind uwtable
define i32 @_Z19less_than_function1PKvS0_(i8* %lhs, i8* %rhs) #5 {
entry:
  %retval = alloca i32, align 4
  %lhs.addr = alloca i8*, align 8
  %rhs.addr = alloca i8*, align 8
  store i8* %lhs, i8** %lhs.addr, align 8
  store i8* %rhs, i8** %rhs.addr, align 8
  %0 = load i8*, i8** %lhs.addr, align 8
  %1 = bitcast i8* %0 to double*
  %2 = load double, double* %1, align 8
  %3 = load i8*, i8** %rhs.addr, align 8
  %4 = bitcast i8* %3 to double*
  %5 = load double, double* %4, align 8
  %cmp = fcmp olt double %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %lhs.addr, align 8
  %7 = bitcast i8* %6 to double*
  %8 = load double, double* %7, align 8
  %9 = load i8*, i8** %rhs.addr, align 8
  %10 = bitcast i8* %9 to double*
  %11 = load double, double* %10, align 8
  %cmp1 = fcmp ogt double %8, %11
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @_Z19less_than_function2dd(double %lhs, double %rhs) #5 {
entry:
  %lhs.addr = alloca double, align 8
  %rhs.addr = alloca double, align 8
  store double %lhs, double* %lhs.addr, align 8
  store double %rhs, double* %rhs.addr, align 8
  %0 = load double, double* %lhs.addr, align 8
  %1 = load double, double* %rhs.addr, align 8
  %cmp = fcmp olt double %0, %1
  %cond = select i1 %cmp, i1 true, i1 false
  ret i1 %cond
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @_ZNK17less_than_functorclERKdS1_(%struct.less_than_functor* %this, double* dereferenceable(8) %lhs, double* dereferenceable(8) %rhs) #5 align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  %lhs.addr = alloca double*, align 8
  %rhs.addr = alloca double*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  store double* %lhs, double** %lhs.addr, align 8
  store double* %rhs, double** %rhs.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  %0 = load double*, double** %lhs.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %rhs.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  %cond = select i1 %cmp, i1 true, i1 false
  ret i1 %cond
}

; Function Attrs: noinline uwtable
define void @_Z18quicksort_functionPdS_PFbddE(double* %begin, double* %end, i1 (double, double)* %compare) #0 {
entry:
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %compare.addr = alloca i1 (double, double)*, align 8
  %middleValue = alloca double, align 8
  %left = alloca double*, align 8
  %right = alloca double*, align 8
  %temp = alloca double, align 8
  store double* %begin, double** %begin.addr, align 8
  store double* %end, double** %end.addr, align 8
  store i1 (double, double)* %compare, i1 (double, double)** %compare.addr, align 8
  %0 = load double*, double** %end.addr, align 8
  %1 = load double*, double** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load double*, double** %begin.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %middleValue, align 8
  %4 = load double*, double** %begin.addr, align 8
  store double* %4, double** %left, align 8
  %5 = load double*, double** %end.addr, align 8
  store double* %5, double** %right, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  %7 = load double, double* %middleValue, align 8
  %8 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %8, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %9 = load double, double* %incdec.ptr, align 8
  %call = call zeroext i1 %6(double %7, double %9)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load double*, double** %left, align 8
  %11 = load double*, double** %right, align 8
  %cmp1 = icmp ult double* %10, %11
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %12 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  %13 = load double*, double** %left, align 8
  %14 = load double, double* %13, align 8
  %15 = load double, double* %middleValue, align 8
  %call4 = call zeroext i1 %12(double %14, double %15)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %16 = load double*, double** %left, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %16, i32 1
  store double* %incdec.ptr6, double** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %17 = load double*, double** %left, align 8
  %18 = load double*, double** %right, align 8
  %cmp8 = icmp ult double* %17, %18
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %19 = load double*, double** %right, align 8
  %20 = load double, double* %19, align 8
  store double %20, double* %temp, align 8
  %21 = load double*, double** %left, align 8
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %right, align 8
  store double %22, double* %23, align 8
  %24 = load double, double* %temp, align 8
  %25 = load double*, double** %left, align 8
  store double %24, double* %25, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %26 = load double*, double** %begin.addr, align 8
  %27 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %27, i64 1
  %28 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %26, double* %add.ptr, i1 (double, double)* %28)
  %29 = load double*, double** %right, align 8
  %add.ptr11 = getelementptr inbounds double, double* %29, i64 1
  %30 = load double*, double** %end.addr, align 8
  %31 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %add.ptr11, double* %30, i1 (double, double)* %31)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %begin, double* %end, i1 (double, double)* %compare) #0 comdat {
entry:
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %compare.addr = alloca i1 (double, double)*, align 8
  %middleValue = alloca double, align 8
  %left = alloca double*, align 8
  %right = alloca double*, align 8
  %temp = alloca double, align 8
  store double* %begin, double** %begin.addr, align 8
  store double* %end, double** %end.addr, align 8
  store i1 (double, double)* %compare, i1 (double, double)** %compare.addr, align 8
  %0 = load double*, double** %end.addr, align 8
  %1 = load double*, double** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load double*, double** %begin.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %middleValue, align 8
  %4 = load double*, double** %begin.addr, align 8
  store double* %4, double** %left, align 8
  %5 = load double*, double** %end.addr, align 8
  store double* %5, double** %right, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  %7 = load double, double* %middleValue, align 8
  %8 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %8, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %9 = load double, double* %incdec.ptr, align 8
  %call = call zeroext i1 %6(double %7, double %9)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load double*, double** %left, align 8
  %11 = load double*, double** %right, align 8
  %cmp1 = icmp ult double* %10, %11
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %12 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  %13 = load double*, double** %left, align 8
  %14 = load double, double* %13, align 8
  %15 = load double, double* %middleValue, align 8
  %call4 = call zeroext i1 %12(double %14, double %15)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %16 = load double*, double** %left, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %16, i32 1
  store double* %incdec.ptr6, double** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %17 = load double*, double** %left, align 8
  %18 = load double*, double** %right, align 8
  %cmp8 = icmp ult double* %17, %18
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %19 = load double*, double** %right, align 8
  %20 = load double, double* %19, align 8
  store double %20, double* %temp, align 8
  %21 = load double*, double** %left, align 8
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %right, align 8
  store double %22, double* %23, align 8
  %24 = load double, double* %temp, align 8
  %25 = load double*, double** %left, align 8
  store double %24, double* %25, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %26 = load double*, double** %begin.addr, align 8
  %27 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %27, i64 1
  %28 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %26, double* %add.ptr, i1 (double, double)* %28)
  %29 = load double*, double** %right, align 8
  %add.ptr11 = getelementptr inbounds double, double* %29, i64 1
  %30 = load double*, double** %end.addr, align 8
  %31 = load i1 (double, double)*, i1 (double, double)** %compare.addr, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %add.ptr11, double* %30, i1 (double, double)* %31)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #6 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %iterations = alloca i32, align 4
  %tablesize = alloca i32, align 4
  %master_table = alloca double*, align 8
  %n = alloca i32, align 4
  %table = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp93 = alloca %struct.less_than_functor, align 1
  %agg.tmp110 = alloca %struct.less_than_functor, align 1
  %agg.tmp124 = alloca %struct.less_than_functor, align 1
  %agg.tmp138 = alloca %struct.less_than_functor, align 1
  %agg.tmp152 = alloca %struct.less_than_functor, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 1, %0
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
  %cond = phi i32 [ %call, %cond.true ], [ 300, %cond.false ]
  store i32 %cond, i32* %iterations, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 2, %3
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #13
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 10000, %cond.false5 ]
  store i32 %cond7, i32* %tablesize, align 4
  %6 = load i32, i32* %tablesize, align 4
  %add = add nsw i32 %6, 123
  call void @srand(i32 %add) #11
  %7 = load i32, i32* %tablesize, align 4
  %8 = sext i32 %7 to i64
  %9 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %8, i64 8)
  %10 = extractvalue { i64, i1 } %9, 1
  %11 = extractvalue { i64, i1 } %9, 0
  %12 = select i1 %10, i64 -1, i64 %11
  %call8 = call i8* @_Znam(i64 %12) #14
  %13 = bitcast i8* %call8 to double*
  store double* %13, double** %master_table, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end6
  %14 = load i32, i32* %n, align 4
  %15 = load i32, i32* %tablesize, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call10 = call i32 @rand() #11
  %conv = sitofp i32 %call10 to double
  %16 = load double*, double** %master_table, align 8
  %17 = load i32, i32* %n, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 %idxprom
  store double %conv, double* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %n, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %tablesize, align 4
  %20 = sext i32 %19 to i64
  %21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %20, i64 8)
  %22 = extractvalue { i64, i1 } %21, 1
  %23 = extractvalue { i64, i1 } %21, 0
  %24 = select i1 %22, i64 -1, i64 %23
  %call12 = call i8* @_Znam(i64 %24) #14
  %25 = bitcast i8* %call12 to double*
  store double* %25, double** %table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %iterations, align 4
  %cmp14 = icmp slt i32 %26, %27
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %28 = load double*, double** %master_table, align 8
  %29 = load double*, double** %master_table, align 8
  %30 = load i32, i32* %tablesize, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds double, double* %29, i64 %idx.ext
  %31 = load double*, double** %table, align 8
  %call16 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %28, double* %add.ptr, double* %31)
  %32 = load double*, double** %table, align 8
  %33 = bitcast double* %32 to i8*
  %34 = load i32, i32* %tablesize, align 4
  %conv17 = sext i32 %34 to i64
  call void @qsort(i8* %33, i64 %conv17, i64 8, i32 (i8*, i8*)* @_Z19less_than_function1PKvS0_)
  %35 = load double*, double** %table, align 8
  %36 = load double*, double** %table, align 8
  %37 = load i32, i32* %tablesize, align 4
  %idx.ext18 = sext i32 %37 to i64
  %add.ptr19 = getelementptr inbounds double, double* %36, i64 %idx.ext18
  call void @_Z13verify_sortedIPdEvT_S1_(double* %35, double* %add.ptr19)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %38 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %38, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond13

for.end22:                                        ; preds = %for.cond13
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc33, %for.end22
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %iterations, align 4
  %cmp24 = icmp slt i32 %39, %40
  br i1 %cmp24, label %for.body25, label %for.end35

for.body25:                                       ; preds = %for.cond23
  %41 = load double*, double** %master_table, align 8
  %42 = load double*, double** %master_table, align 8
  %43 = load i32, i32* %tablesize, align 4
  %idx.ext26 = sext i32 %43 to i64
  %add.ptr27 = getelementptr inbounds double, double* %42, i64 %idx.ext26
  %44 = load double*, double** %table, align 8
  %call28 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %41, double* %add.ptr27, double* %44)
  %45 = load double*, double** %table, align 8
  %46 = load double*, double** %table, align 8
  %47 = load i32, i32* %tablesize, align 4
  %idx.ext29 = sext i32 %47 to i64
  %add.ptr30 = getelementptr inbounds double, double* %46, i64 %idx.ext29
  call void @_Z18quicksort_functionPdS_PFbddE(double* %45, double* %add.ptr30, i1 (double, double)* @_Z19less_than_function2dd)
  %48 = load double*, double** %table, align 8
  %49 = load double*, double** %table, align 8
  %50 = load i32, i32* %tablesize, align 4
  %idx.ext31 = sext i32 %50 to i64
  %add.ptr32 = getelementptr inbounds double, double* %49, i64 %idx.ext31
  call void @_Z13verify_sortedIPdEvT_S1_(double* %48, double* %add.ptr32)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %51 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %51, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond23

for.end35:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc46, %for.end35
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %iterations, align 4
  %cmp37 = icmp slt i32 %52, %53
  br i1 %cmp37, label %for.body38, label %for.end48

for.body38:                                       ; preds = %for.cond36
  %54 = load double*, double** %master_table, align 8
  %55 = load double*, double** %master_table, align 8
  %56 = load i32, i32* %tablesize, align 4
  %idx.ext39 = sext i32 %56 to i64
  %add.ptr40 = getelementptr inbounds double, double* %55, i64 %idx.ext39
  %57 = load double*, double** %table, align 8
  %call41 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %54, double* %add.ptr40, double* %57)
  %58 = load double*, double** %table, align 8
  %59 = load double*, double** %table, align 8
  %60 = load i32, i32* %tablesize, align 4
  %idx.ext42 = sext i32 %60 to i64
  %add.ptr43 = getelementptr inbounds double, double* %59, i64 %idx.ext42
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %58, double* %add.ptr43, i1 (double, double)* @_Z19less_than_function2dd)
  %61 = load double*, double** %table, align 8
  %62 = load double*, double** %table, align 8
  %63 = load i32, i32* %tablesize, align 4
  %idx.ext44 = sext i32 %63 to i64
  %add.ptr45 = getelementptr inbounds double, double* %62, i64 %idx.ext44
  call void @_Z13verify_sortedIPdEvT_S1_(double* %61, double* %add.ptr45)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body38
  %64 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %64, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond36

for.end48:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc59, %for.end48
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %iterations, align 4
  %cmp50 = icmp slt i32 %65, %66
  br i1 %cmp50, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond49
  %67 = load double*, double** %master_table, align 8
  %68 = load double*, double** %master_table, align 8
  %69 = load i32, i32* %tablesize, align 4
  %idx.ext52 = sext i32 %69 to i64
  %add.ptr53 = getelementptr inbounds double, double* %68, i64 %idx.ext52
  %70 = load double*, double** %table, align 8
  %call54 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %67, double* %add.ptr53, double* %70)
  %71 = load double*, double** %table, align 8
  %72 = load double*, double** %table, align 8
  %73 = load i32, i32* %tablesize, align 4
  %idx.ext55 = sext i32 %73 to i64
  %add.ptr56 = getelementptr inbounds double, double* %72, i64 %idx.ext55
  call void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(double* %71, double* %add.ptr56)
  %74 = load double*, double** %table, align 8
  %75 = load double*, double** %table, align 8
  %76 = load i32, i32* %tablesize, align 4
  %idx.ext57 = sext i32 %76 to i64
  %add.ptr58 = getelementptr inbounds double, double* %75, i64 %idx.ext57
  call void @_Z13verify_sortedIPdEvT_S1_(double* %74, double* %add.ptr58)
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %77 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %77, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond49

for.end61:                                        ; preds = %for.cond49
  store i32 0, i32* %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc72, %for.end61
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %iterations, align 4
  %cmp63 = icmp slt i32 %78, %79
  br i1 %cmp63, label %for.body64, label %for.end74

for.body64:                                       ; preds = %for.cond62
  %80 = load double*, double** %master_table, align 8
  %81 = load double*, double** %master_table, align 8
  %82 = load i32, i32* %tablesize, align 4
  %idx.ext65 = sext i32 %82 to i64
  %add.ptr66 = getelementptr inbounds double, double* %81, i64 %idx.ext65
  %83 = load double*, double** %table, align 8
  %call67 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %80, double* %add.ptr66, double* %83)
  %84 = load double*, double** %table, align 8
  %85 = load double*, double** %table, align 8
  %86 = load i32, i32* %tablesize, align 4
  %idx.ext68 = sext i32 %86 to i64
  %add.ptr69 = getelementptr inbounds double, double* %85, i64 %idx.ext68
  call void @_ZSt4sortIPdPFbddEEvT_S3_T0_(double* %84, double* %add.ptr69, i1 (double, double)* @_Z19less_than_function2dd)
  %87 = load double*, double** %table, align 8
  %88 = load double*, double** %table, align 8
  %89 = load i32, i32* %tablesize, align 4
  %idx.ext70 = sext i32 %89 to i64
  %add.ptr71 = getelementptr inbounds double, double* %88, i64 %idx.ext70
  call void @_Z13verify_sortedIPdEvT_S1_(double* %87, double* %add.ptr71)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body64
  %90 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond62

for.end74:                                        ; preds = %for.cond62
  store i32 0, i32* %i, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc85, %for.end74
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %iterations, align 4
  %cmp76 = icmp slt i32 %91, %92
  br i1 %cmp76, label %for.body77, label %for.end87

for.body77:                                       ; preds = %for.cond75
  %93 = load double*, double** %master_table, align 8
  %94 = load double*, double** %master_table, align 8
  %95 = load i32, i32* %tablesize, align 4
  %idx.ext78 = sext i32 %95 to i64
  %add.ptr79 = getelementptr inbounds double, double* %94, i64 %idx.ext78
  %96 = load double*, double** %table, align 8
  %call80 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %93, double* %add.ptr79, double* %96)
  %97 = load double*, double** %table, align 8
  %98 = load double*, double** %table, align 8
  %99 = load i32, i32* %tablesize, align 4
  %idx.ext81 = sext i32 %99 to i64
  %add.ptr82 = getelementptr inbounds double, double* %98, i64 %idx.ext81
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(double* %97, double* %add.ptr82)
  %100 = load double*, double** %table, align 8
  %101 = load double*, double** %table, align 8
  %102 = load i32, i32* %tablesize, align 4
  %idx.ext83 = sext i32 %102 to i64
  %add.ptr84 = getelementptr inbounds double, double* %101, i64 %idx.ext83
  call void @_Z13verify_sortedIPdEvT_S1_(double* %100, double* %add.ptr84)
  br label %for.inc85

for.inc85:                                        ; preds = %for.body77
  %103 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %103, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond75

for.end87:                                        ; preds = %for.cond75
  store i32 0, i32* %i, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc99, %for.end87
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %iterations, align 4
  %cmp89 = icmp slt i32 %104, %105
  br i1 %cmp89, label %for.body90, label %for.end101

for.body90:                                       ; preds = %for.cond88
  %106 = load double*, double** %table, align 8
  %107 = load double*, double** %table, align 8
  %108 = load i32, i32* %tablesize, align 4
  %idx.ext91 = sext i32 %108 to i64
  %add.ptr92 = getelementptr inbounds double, double* %107, i64 %idx.ext91
  call void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(double* %106, double* %add.ptr92)
  %109 = load double*, double** %table, align 8
  %110 = load double*, double** %table, align 8
  %111 = load i32, i32* %tablesize, align 4
  %idx.ext94 = sext i32 %111 to i64
  %add.ptr95 = getelementptr inbounds double, double* %110, i64 %idx.ext94
  call void @_Z13verify_sortedIPdEvT_S1_(double* %109, double* %add.ptr95)
  %112 = load double*, double** %master_table, align 8
  %113 = load double*, double** %master_table, align 8
  %114 = load i32, i32* %tablesize, align 4
  %idx.ext96 = sext i32 %114 to i64
  %add.ptr97 = getelementptr inbounds double, double* %113, i64 %idx.ext96
  %115 = load double*, double** %table, align 8
  %call98 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %112, double* %add.ptr97, double* %115)
  br label %for.inc99

for.inc99:                                        ; preds = %for.body90
  %116 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %116, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond88

for.end101:                                       ; preds = %for.cond88
  store i32 0, i32* %i, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc113, %for.end101
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %iterations, align 4
  %cmp103 = icmp slt i32 %117, %118
  br i1 %cmp103, label %for.body104, label %for.end115

for.body104:                                      ; preds = %for.cond102
  %119 = load double*, double** %master_table, align 8
  %120 = load double*, double** %master_table, align 8
  %121 = load i32, i32* %tablesize, align 4
  %idx.ext105 = sext i32 %121 to i64
  %add.ptr106 = getelementptr inbounds double, double* %120, i64 %idx.ext105
  %122 = load double*, double** %table, align 8
  %call107 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %119, double* %add.ptr106, double* %122)
  %123 = load double*, double** %table, align 8
  %124 = load double*, double** %table, align 8
  %125 = load i32, i32* %tablesize, align 4
  %idx.ext108 = sext i32 %125 to i64
  %add.ptr109 = getelementptr inbounds double, double* %124, i64 %idx.ext108
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(double* %123, double* %add.ptr109)
  %126 = load double*, double** %table, align 8
  %127 = load double*, double** %table, align 8
  %128 = load i32, i32* %tablesize, align 4
  %idx.ext111 = sext i32 %128 to i64
  %add.ptr112 = getelementptr inbounds double, double* %127, i64 %idx.ext111
  call void @_Z13verify_sortedIPdEvT_S1_(double* %126, double* %add.ptr112)
  br label %for.inc113

for.inc113:                                       ; preds = %for.body104
  %129 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %129, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond102

for.end115:                                       ; preds = %for.cond102
  store i32 0, i32* %i, align 4
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc127, %for.end115
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %iterations, align 4
  %cmp117 = icmp slt i32 %130, %131
  br i1 %cmp117, label %for.body118, label %for.end129

for.body118:                                      ; preds = %for.cond116
  %132 = load double*, double** %master_table, align 8
  %133 = load double*, double** %master_table, align 8
  %134 = load i32, i32* %tablesize, align 4
  %idx.ext119 = sext i32 %134 to i64
  %add.ptr120 = getelementptr inbounds double, double* %133, i64 %idx.ext119
  %135 = load double*, double** %table, align 8
  %call121 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %132, double* %add.ptr120, double* %135)
  %136 = load double*, double** %table, align 8
  %137 = load double*, double** %table, align 8
  %138 = load i32, i32* %tablesize, align 4
  %idx.ext122 = sext i32 %138 to i64
  %add.ptr123 = getelementptr inbounds double, double* %137, i64 %idx.ext122
  call void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(double* %136, double* %add.ptr123)
  %139 = load double*, double** %table, align 8
  %140 = load double*, double** %table, align 8
  %141 = load i32, i32* %tablesize, align 4
  %idx.ext125 = sext i32 %141 to i64
  %add.ptr126 = getelementptr inbounds double, double* %140, i64 %idx.ext125
  call void @_Z13verify_sortedIPdEvT_S1_(double* %139, double* %add.ptr126)
  br label %for.inc127

for.inc127:                                       ; preds = %for.body118
  %142 = load i32, i32* %i, align 4
  %inc128 = add nsw i32 %142, 1
  store i32 %inc128, i32* %i, align 4
  br label %for.cond116

for.end129:                                       ; preds = %for.cond116
  store i32 0, i32* %i, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc141, %for.end129
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %iterations, align 4
  %cmp131 = icmp slt i32 %143, %144
  br i1 %cmp131, label %for.body132, label %for.end143

for.body132:                                      ; preds = %for.cond130
  %145 = load double*, double** %master_table, align 8
  %146 = load double*, double** %master_table, align 8
  %147 = load i32, i32* %tablesize, align 4
  %idx.ext133 = sext i32 %147 to i64
  %add.ptr134 = getelementptr inbounds double, double* %146, i64 %idx.ext133
  %148 = load double*, double** %table, align 8
  %call135 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %145, double* %add.ptr134, double* %148)
  %149 = load double*, double** %table, align 8
  %150 = load double*, double** %table, align 8
  %151 = load i32, i32* %tablesize, align 4
  %idx.ext136 = sext i32 %151 to i64
  %add.ptr137 = getelementptr inbounds double, double* %150, i64 %idx.ext136
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(double* %149, double* %add.ptr137)
  %152 = load double*, double** %table, align 8
  %153 = load double*, double** %table, align 8
  %154 = load i32, i32* %tablesize, align 4
  %idx.ext139 = sext i32 %154 to i64
  %add.ptr140 = getelementptr inbounds double, double* %153, i64 %idx.ext139
  call void @_Z13verify_sortedIPdEvT_S1_(double* %152, double* %add.ptr140)
  br label %for.inc141

for.inc141:                                       ; preds = %for.body132
  %155 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %155, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond130

for.end143:                                       ; preds = %for.cond130
  store i32 0, i32* %i, align 4
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc155, %for.end143
  %156 = load i32, i32* %i, align 4
  %157 = load i32, i32* %iterations, align 4
  %cmp145 = icmp slt i32 %156, %157
  br i1 %cmp145, label %for.body146, label %for.end157

for.body146:                                      ; preds = %for.cond144
  %158 = load double*, double** %master_table, align 8
  %159 = load double*, double** %master_table, align 8
  %160 = load i32, i32* %tablesize, align 4
  %idx.ext147 = sext i32 %160 to i64
  %add.ptr148 = getelementptr inbounds double, double* %159, i64 %idx.ext147
  %161 = load double*, double** %table, align 8
  %call149 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %158, double* %add.ptr148, double* %161)
  %162 = load double*, double** %table, align 8
  %163 = load double*, double** %table, align 8
  %164 = load i32, i32* %tablesize, align 4
  %idx.ext150 = sext i32 %164 to i64
  %add.ptr151 = getelementptr inbounds double, double* %163, i64 %idx.ext150
  call void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(double* %162, double* %add.ptr151)
  %165 = load double*, double** %table, align 8
  %166 = load double*, double** %table, align 8
  %167 = load i32, i32* %tablesize, align 4
  %idx.ext153 = sext i32 %167 to i64
  %add.ptr154 = getelementptr inbounds double, double* %166, i64 %idx.ext153
  call void @_Z13verify_sortedIPdEvT_S1_(double* %165, double* %add.ptr154)
  br label %for.inc155

for.inc155:                                       ; preds = %for.body146
  %168 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %168, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond144

for.end157:                                       ; preds = %for.cond144
  store i32 0, i32* %i, align 4
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc168, %for.end157
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %iterations, align 4
  %cmp159 = icmp slt i32 %169, %170
  br i1 %cmp159, label %for.body160, label %for.end170

for.body160:                                      ; preds = %for.cond158
  %171 = load double*, double** %master_table, align 8
  %172 = load double*, double** %master_table, align 8
  %173 = load i32, i32* %tablesize, align 4
  %idx.ext161 = sext i32 %173 to i64
  %add.ptr162 = getelementptr inbounds double, double* %172, i64 %idx.ext161
  %174 = load double*, double** %table, align 8
  %call163 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %171, double* %add.ptr162, double* %174)
  %175 = load double*, double** %table, align 8
  %176 = load double*, double** %table, align 8
  %177 = load i32, i32* %tablesize, align 4
  %idx.ext164 = sext i32 %177 to i64
  %add.ptr165 = getelementptr inbounds double, double* %176, i64 %idx.ext164
  call void @_Z9quicksortIPdEvT_S1_(double* %175, double* %add.ptr165)
  %178 = load double*, double** %table, align 8
  %179 = load double*, double** %table, align 8
  %180 = load i32, i32* %tablesize, align 4
  %idx.ext166 = sext i32 %180 to i64
  %add.ptr167 = getelementptr inbounds double, double* %179, i64 %idx.ext166
  call void @_Z13verify_sortedIPdEvT_S1_(double* %178, double* %add.ptr167)
  br label %for.inc168

for.inc168:                                       ; preds = %for.body160
  %181 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %181, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond158

for.end170:                                       ; preds = %for.cond158
  store i32 0, i32* %i, align 4
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc181, %for.end170
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %iterations, align 4
  %cmp172 = icmp slt i32 %182, %183
  br i1 %cmp172, label %for.body173, label %for.end183

for.body173:                                      ; preds = %for.cond171
  %184 = load double*, double** %master_table, align 8
  %185 = load double*, double** %master_table, align 8
  %186 = load i32, i32* %tablesize, align 4
  %idx.ext174 = sext i32 %186 to i64
  %add.ptr175 = getelementptr inbounds double, double* %185, i64 %idx.ext174
  %187 = load double*, double** %table, align 8
  %call176 = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %184, double* %add.ptr175, double* %187)
  %188 = load double*, double** %table, align 8
  %189 = load double*, double** %table, align 8
  %190 = load i32, i32* %tablesize, align 4
  %idx.ext177 = sext i32 %190 to i64
  %add.ptr178 = getelementptr inbounds double, double* %189, i64 %idx.ext177
  call void @_ZSt4sortIPdEvT_S1_(double* %188, double* %add.ptr178)
  %191 = load double*, double** %table, align 8
  %192 = load double*, double** %table, align 8
  %193 = load i32, i32* %tablesize, align 4
  %idx.ext179 = sext i32 %193 to i64
  %add.ptr180 = getelementptr inbounds double, double* %192, i64 %idx.ext179
  call void @_Z13verify_sortedIPdEvT_S1_(double* %191, double* %add.ptr180)
  br label %for.inc181

for.inc181:                                       ; preds = %for.body173
  %194 = load i32, i32* %i, align 4
  %inc182 = add nsw i32 %194, 1
  store i32 %inc182, i32* %i, align 4
  br label %for.cond171

for.end183:                                       ; preds = %for.cond171
  %195 = load double*, double** %table, align 8
  %isnull = icmp eq double* %195, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end183
  %196 = bitcast double* %195 to i8*
  call void @_ZdaPv(i8* %196) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end183
  %197 = load double*, double** %master_table, align 8
  %isnull184 = icmp eq double* %197, null
  br i1 %isnull184, label %delete.end186, label %delete.notnull185

delete.notnull185:                                ; preds = %delete.end
  %198 = bitcast double* %197 to i8*
  call void @_ZdaPv(i8* %198) #15
  br label %delete.end186

delete.end186:                                    ; preds = %delete.notnull185, %delete.end
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #8

; Function Attrs: nounwind
declare i32 @rand() #1

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

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedIPdEvT_S1_(double* %first, double* %last) #0 comdat {
entry:
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
  %8 = load i32, i32* @current_test, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 %8)
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_(double* %begin, double* %end) #0 comdat {
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
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load double*, double** %begin.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %middleValue, align 8
  %4 = load double*, double** %begin.addr, align 8
  store double* %4, double** %left, align 8
  %5 = load double*, double** %end.addr, align 8
  store double* %5, double** %right, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load double, double* %middleValue, align 8
  %7 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %7, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %8 = load double, double* %incdec.ptr, align 8
  %call = call zeroext i1 @_Z19less_than_function2dd(double %6, double %8)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load double*, double** %left, align 8
  %10 = load double*, double** %right, align 8
  %cmp1 = icmp ult double* %9, %10
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %11 = load double*, double** %left, align 8
  %12 = load double, double* %11, align 8
  %13 = load double, double* %middleValue, align 8
  %call4 = call zeroext i1 @_Z19less_than_function2dd(double %12, double %13)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %14 = load double*, double** %left, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %14, i32 1
  store double* %incdec.ptr6, double** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %15 = load double*, double** %left, align 8
  %16 = load double*, double** %right, align 8
  %cmp8 = icmp ult double* %15, %16
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
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

for.end:                                          ; preds = %if.then9, %if.then2
  %24 = load double*, double** %begin.addr, align 8
  %25 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %25, i64 1
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %24, double* %add.ptr, i1 (double, double)* @_Z19less_than_function2dd)
  %26 = load double*, double** %right, align 8
  %add.ptr11 = getelementptr inbounds double, double* %26, i64 1
  %27 = load double*, double** %end.addr, align 8
  call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(double* %add.ptr11, double* %27, i1 (double, double)* @_Z19less_than_function2dd)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIPdPFbddEEvT_S3_T0_(double* %__first, double* %__last, i1 (double, double)* %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca i1 (double, double)*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store i1 (double, double)* %__comp, i1 (double, double)** %__comp.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load i1 (double, double)*, i1 (double, double)** %__comp.addr, align 8
  %call = call i1 (double, double)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(i1 (double, double)* %2)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  store i1 (double, double)* %call, i1 (double, double)** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %3 = load i1 (double, double)*, i1 (double, double)** %coerce.dive1, align 8
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %0, double* %1, i1 (double, double)* %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(double* %begin, double* %end) #0 comdat {
entry:
  %compare = alloca %struct.less_than_functor, align 1
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %middleValue = alloca double, align 8
  %left = alloca double*, align 8
  %right = alloca double*, align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp12 = alloca %struct.less_than_functor, align 1
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

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %call = call zeroext i1 @_ZNK17less_than_functorclERKdS1_(%struct.less_than_functor* %compare, double* dereferenceable(8) %middleValue, double* dereferenceable(8) %incdec.ptr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load double*, double** %left, align 8
  %8 = load double*, double** %right, align 8
  %cmp1 = icmp ult double* %7, %8
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %9 = load double*, double** %left, align 8
  %call4 = call zeroext i1 @_ZNK17less_than_functorclERKdS1_(%struct.less_than_functor* %compare, double* dereferenceable(8) %9, double* dereferenceable(8) %middleValue)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %10 = load double*, double** %left, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr6, double** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %11 = load double*, double** %left, align 8
  %12 = load double*, double** %right, align 8
  %cmp8 = icmp ult double* %11, %12
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %13 = load double*, double** %right, align 8
  %14 = load double, double* %13, align 8
  store double %14, double* %temp, align 8
  %15 = load double*, double** %left, align 8
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %right, align 8
  store double %16, double* %17, align 8
  %18 = load double, double* %temp, align 8
  %19 = load double*, double** %left, align 8
  store double %18, double* %19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %20 = load double*, double** %begin.addr, align 8
  %21 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %21, i64 1
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(double* %20, double* %add.ptr)
  %22 = load double*, double** %right, align 8
  %add.ptr11 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double*, double** %end.addr, align 8
  call void @_Z9quicksortIPd17less_than_functorEvT_S2_T0_(double* %add.ptr11, double* %23)
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIPd17less_than_functorEvT_S2_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %struct.less_than_functor, align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %0, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(double* %begin, double* %end) #0 comdat {
entry:
  %compare = alloca %struct.less_than_functor, align 1
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %middleValue = alloca double, align 8
  %left = alloca double*, align 8
  %right = alloca double*, align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp12 = alloca %struct.less_than_functor, align 1
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

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %call = call zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(%struct.less_than_functor* %compare, double* dereferenceable(8) %middleValue, double* dereferenceable(8) %incdec.ptr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load double*, double** %left, align 8
  %8 = load double*, double** %right, align 8
  %cmp1 = icmp ult double* %7, %8
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %9 = load double*, double** %left, align 8
  %call4 = call zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(%struct.less_than_functor* %compare, double* dereferenceable(8) %9, double* dereferenceable(8) %middleValue)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %10 = load double*, double** %left, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr6, double** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %11 = load double*, double** %left, align 8
  %12 = load double*, double** %right, align 8
  %cmp8 = icmp ult double* %11, %12
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %13 = load double*, double** %right, align 8
  %14 = load double, double* %13, align 8
  store double %14, double* %temp, align 8
  %15 = load double*, double** %left, align 8
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %right, align 8
  store double %16, double* %17, align 8
  %18 = load double, double* %temp, align 8
  %19 = load double*, double** %left, align 8
  store double %18, double* %19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %20 = load double*, double** %begin.addr, align 8
  %21 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %21, i64 1
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(double* %20, double* %add.ptr)
  %22 = load double*, double** %right, align 8
  %add.ptr11 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double*, double** %end.addr, align 8
  call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(double* %add.ptr11, double* %23)
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIPd24inline_less_than_functorEvT_S2_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %struct.less_than_functor, align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %0, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(double* %begin, double* %end) #0 comdat {
entry:
  %compare = alloca %struct.less_than_functor, align 1
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %middleValue = alloca double, align 8
  %left = alloca double*, align 8
  %right = alloca double*, align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp12 = alloca %struct.less_than_functor, align 1
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

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %call = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%struct.less_than_functor* %compare, double* dereferenceable(8) %middleValue, double* dereferenceable(8) %incdec.ptr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load double*, double** %left, align 8
  %8 = load double*, double** %right, align 8
  %cmp1 = icmp ult double* %7, %8
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %9 = load double*, double** %left, align 8
  %call4 = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%struct.less_than_functor* %compare, double* dereferenceable(8) %9, double* dereferenceable(8) %middleValue)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %10 = load double*, double** %left, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr6, double** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %11 = load double*, double** %left, align 8
  %12 = load double*, double** %right, align 8
  %cmp8 = icmp ult double* %11, %12
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %13 = load double*, double** %right, align 8
  %14 = load double, double* %13, align 8
  store double %14, double* %temp, align 8
  %15 = load double*, double** %left, align 8
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %right, align 8
  store double %16, double* %17, align 8
  %18 = load double, double* %temp, align 8
  %19 = load double*, double** %left, align 8
  store double %18, double* %19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %20 = load double*, double** %begin.addr, align 8
  %21 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %21, i64 1
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(double* %20, double* %add.ptr)
  %22 = load double*, double** %right, align 8
  %add.ptr11 = getelementptr inbounds double, double* %22, i64 1
  %23 = load double*, double** %end.addr, align 8
  call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(double* %add.ptr11, double* %23)
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIPdSt4lessIdEEvT_S3_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %struct.less_than_functor, align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %0, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9quicksortIPdEvT_S1_(double* %begin, double* %end) #0 comdat {
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
  call void @_Z9quicksortIPdEvT_S1_(double* %24, double* %add.ptr)
  %26 = load double*, double** %right, align 8
  %add.ptr12 = getelementptr inbounds double, double* %26, i64 1
  %27 = load double*, double** %end.addr, align 8
  call void @_Z9quicksortIPdEvT_S1_(double* %add.ptr12, double* %27)
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4sortIPdEvT_S1_(double* %__first, double* %__last) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %undef.agg.tmp = alloca %struct.less_than_functor, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %0, double* %1)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
entry:
  %retval = alloca %struct.less_than_functor, align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp1 = alloca %struct.less_than_functor, align 1
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
define linkonce_odr i64 @_ZSt4__lgl(i64 %__n) #5 comdat {
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
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %__cut = alloca double*, align 8
  %agg.tmp2 = alloca %struct.less_than_functor, align 1
  %agg.tmp3 = alloca %struct.less_than_functor, align 1
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
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp2 = alloca %struct.less_than_functor, align 1
  %agg.tmp3 = alloca %struct.less_than_functor, align 1
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
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__val = alloca double, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp5 = alloca %struct.less_than_functor, align 1
  %undef.agg.tmp = alloca %struct.less_than_functor, align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %5, double* %6)
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
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp1 = alloca %struct.less_than_functor, align 1
  %undef.agg.tmp = alloca %struct.less_than_functor, align 1
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
  %retval = alloca %struct.less_than_functor, align 1
  %0 = alloca %struct.less_than_functor, align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%struct.less_than_functor* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(%struct.less_than_functor* %__comp, double* dereferenceable(8) %__val, double* %4)
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
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIdPdEEbRT_T0_(%struct.less_than_functor* %this, double* dereferenceable(8) %__val, double* %__it) #5 comdat align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  %__val.addr = alloca double*, align 8
  %__it.addr = alloca double*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__it.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_less_iterC2Ev(%struct.less_than_functor* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %this, double* %__it1, double* %__it2) #5 comdat align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
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
define linkonce_odr double* @_ZSt12__miter_baseIPdET_S1_(double* %__it) #5 comdat {
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
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double* %__it) #5 comdat {
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
define linkonce_odr double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #5 comdat align 2 {
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
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(double* %0, double* %1, double* %2)
  %3 = load double*, double** %__first.addr, align 8
  %4 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %3, double* %4, %struct.less_than_functor* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__mid = alloca double*, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  %agg.tmp4 = alloca %struct.less_than_functor, align 1
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
  %__comp = alloca %struct.less_than_functor, align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %0, double* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double*, double** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %2, double* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load double*, double** %__result.addr, align 8
  %5 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %4, double* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load double*, double** %__a.addr, align 8
  %7 = load double*, double** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %6, double* %7)
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
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %12, double* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load double*, double** %__result.addr, align 8
  %15 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %14, double* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load double*, double** %__b.addr, align 8
  %17 = load double*, double** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %16, double* %17)
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
  %__comp = alloca %struct.less_than_functor, align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %0, double* %1)
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
  %call5 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %4, double* %5)
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
define linkonce_odr void @_ZSt4swapIdEvRT_S1_(double* dereferenceable(8) %__a, double* dereferenceable(8) %__b) #5 comdat {
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
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %0, double* %1, %struct.less_than_functor* dereferenceable(1) %__comp)
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__middle.addr, align 8
  %9 = load double*, double** %__i, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(double* %7, double* %8, double* %9, %struct.less_than_functor* dereferenceable(1) %__comp)
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
define linkonce_odr void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %__first, double* %__last, %struct.less_than_functor* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %struct.less_than_functor*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %struct.less_than_functor* %__comp, %struct.less_than_functor** %__comp.addr, align 8
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
  %6 = load %struct.less_than_functor*, %struct.less_than_functor** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(double* %3, double* %4, double* %5, %struct.less_than_functor* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(double* %__first, double* %__last, double* %__result, %struct.less_than_functor* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__comp.addr = alloca %struct.less_than_functor*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %struct.less_than_functor* %__comp, %struct.less_than_functor** %__comp.addr, align 8
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
  %9 = load %struct.less_than_functor*, %struct.less_than_functor** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(double* %5, i64 0, i64 %sub.ptr.div, double %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(double* %__first, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %struct.less_than_functor, align 1
  %agg.tmp = alloca %struct.less_than_functor, align 1
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
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPdS3_EEbT_T0_(%struct.less_than_functor* %__comp, double* %add.ptr, double* %add.ptr2)
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
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%struct.less_than_functor* %__cmp)
  %26 = load double*, double** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %29 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(double* %26, i64 %27, i64 %28, double %29, %struct.less_than_functor* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%struct.less_than_functor* %this) unnamed_addr #5 comdat align 2 {
entry:
  %0 = alloca %struct.less_than_functor, align 1
  %this.addr = alloca %struct.less_than_functor*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(double* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %struct.less_than_functor* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %struct.less_than_functor*, align 8
  %__parent = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %struct.less_than_functor* %__comp, %struct.less_than_functor** %__comp.addr, align 8
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
  %3 = load %struct.less_than_functor*, %struct.less_than_functor** %__comp.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(%struct.less_than_functor* %3, double* %add.ptr, double* dereferenceable(8) %__value.addr)
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
define linkonce_odr zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPddEEbT_RT0_(%struct.less_than_functor* %this, double* %__it, double* dereferenceable(8) %__val) #5 comdat align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  %__it.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__val.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(double* %__first, double* %__last, %struct.less_than_functor* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %struct.less_than_functor*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %struct.less_than_functor, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %struct.less_than_functor* %__comp, %struct.less_than_functor** %__comp.addr, align 8
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
  %12 = load %struct.less_than_functor*, %struct.less_than_functor** %__comp.addr, align 8
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
declare i64 @llvm.ctlz.i64(i64, i1) #7

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_comp_iterISt4lessIdEEENS0_15_Iter_comp_iterIT_EES5_() #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__comp = alloca %struct.less_than_functor, align 1
  %agg.tmp = alloca %struct.less_than_functor, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1, i32 1, i1 false)
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(double* %2, double* %3, i64 %mul)
  %8 = load double*, double** %__first.addr, align 8
  %9 = load double*, double** %__last.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp1 to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 1, i32 1, i1 false)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %8, double* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(double* %__first, double* %__last, i64 %__depth_limit) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__cut = alloca double*, align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1, i32 1, i1 false)
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(double* %3, double* %4, double* %5)
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %9 = load double*, double** %__first.addr, align 8
  %10 = load double*, double** %__last.addr, align 8
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp2 to i8*
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 1, i32 1, i1 false)
  %call = call double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(double* %9, double* %10)
  store double* %call, double** %__cut, align 8
  %13 = load double*, double** %__cut, align 8
  %14 = load double*, double** %__last.addr, align 8
  %15 = load i64, i64* %__depth_limit.addr, align 8
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp3 to i8*
  %17 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 1, i32 1, i1 false)
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(double* %13, double* %14, i64 %15)
  %18 = load double*, double** %__cut, align 8
  store double* %18, double** %__last.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1, i32 1, i1 false)
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %2, double* %add.ptr)
  %6 = load double*, double** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds double, double* %6, i64 16
  %7 = load double*, double** %__last.addr, align 8
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp2 to i8*
  %9 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 1, i32 1, i1 false)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %add.ptr1, double* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load double*, double** %__first.addr, align 8
  %11 = load double*, double** %__last.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp3 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 1, i32 1, i1 false)
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %10, double* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__val = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %5, double* %6)
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
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp5 to i8*
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 1, i32 1, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(double* %14)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %17 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %17, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp1 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1, i32 1, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(double* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__val_comp_iterISt4lessIdEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE() #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %retval, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_(double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* dereferenceable(8) %__val, double* %4)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* dereferenceable(8) %__val, double* %__it) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__val.addr = alloca double*, align 8
  %__it.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double*, double** %__it.addr, align 8
  %call = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%struct.less_than_functor* %this, double* dereferenceable(8) %__x, double* dereferenceable(8) %__y) #5 comdat align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  %__x.addr = alloca double*, align 8
  %__y.addr = alloca double*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store double* %__y, double** %__y.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  %0 = load double*, double** %__x.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__y.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* %__it1, double* %__it2) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__it1.addr, align 8
  %1 = load double*, double** %__it2.addr, align 8
  %call = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 1, i32 1, i1 false)
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(double* %0, double* %1, double* %2)
  %5 = load double*, double** %__first.addr, align 8
  %6 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(double* %5, double* %6, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__mid = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 1, i32 1, i1 false)
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(double* %3, double* %add.ptr1, double* %5, double* %add.ptr2)
  %9 = load double*, double** %__first.addr, align 8
  %add.ptr3 = getelementptr inbounds double, double* %9, i64 1
  %10 = load double*, double** %__last.addr, align 8
  %11 = load double*, double** %__first.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp4 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 1, i32 1, i1 false)
  %call = call double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(double* %add.ptr3, double* %10, double* %11)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_(double* %__result, double* %__a, double* %__b, double* %__c) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %0, double* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double*, double** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %2, double* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load double*, double** %__result.addr, align 8
  %5 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %4, double* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load double*, double** %__a.addr, align 8
  %7 = load double*, double** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %6, double* %7)
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
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %12, double* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load double*, double** %__result.addr, align 8
  %15 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %14, double* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load double*, double** %__b.addr, align 8
  %17 = load double*, double** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %16, double* %17)
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
define linkonce_odr double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_S7_T0_(double* %__first, double* %__last, double* %__pivot) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %0, double* %1)
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
  %call5 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %4, double* %5)
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
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(double* %0, double* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__middle.addr, align 8
  %9 = load double*, double** %__i, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(double* %7, double* %8, double* %9, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
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
define linkonce_odr void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(double* %3, double* %4, double* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_(double* %__first, double* %__last, double* %__result, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %9 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 1, i32 1, i1 false)
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(double* %5, i64 0, i64 %sub.ptr.div, double %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(double* %__first, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %add.ptr, double* %add.ptr2)
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
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__cmp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  %26 = load double*, double** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %29 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(double* %26, i64 %27, i64 %28, double %29, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEEEvT_T0_S8_T1_RT2_(double* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__parent = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %3, double* %add.ptr, double* dereferenceable(8) %__value.addr)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIdEEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* %__it, double* dereferenceable(8) %__val) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__it.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__it.addr, align 8
  %1 = load double*, double** %__val.addr, align 8
  %call = call zeroext i1 @_ZNKSt4lessIdEclERKdS2_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 1, i32 1, i1 false)
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_(double* %8, i64 %9, i64 %10, double %11)
  %15 = load i64, i64* %__parent, align 8
  %cmp5 = icmp eq i64 %15, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  br label %return

if.end7:                                          ; preds = %while.body
  %16 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then6, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEC2ES3_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_comp_iterI24inline_less_than_functorEENS0_15_Iter_comp_iterIT_EES4_() #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__comp = alloca %struct.less_than_functor, align 1
  %agg.tmp = alloca %struct.less_than_functor, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1, i32 1, i1 false)
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(double* %2, double* %3, i64 %mul)
  %8 = load double*, double** %__first.addr, align 8
  %9 = load double*, double** %__last.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp1 to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 1, i32 1, i1 false)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %8, double* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(double* %__first, double* %__last, i64 %__depth_limit) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__cut = alloca double*, align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1, i32 1, i1 false)
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(double* %3, double* %4, double* %5)
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %9 = load double*, double** %__first.addr, align 8
  %10 = load double*, double** %__last.addr, align 8
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp2 to i8*
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 1, i32 1, i1 false)
  %call = call double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(double* %9, double* %10)
  store double* %call, double** %__cut, align 8
  %13 = load double*, double** %__cut, align 8
  %14 = load double*, double** %__last.addr, align 8
  %15 = load i64, i64* %__depth_limit.addr, align 8
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp3 to i8*
  %17 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 1, i32 1, i1 false)
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(double* %13, double* %14, i64 %15)
  %18 = load double*, double** %__cut, align 8
  store double* %18, double** %__last.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1, i32 1, i1 false)
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %2, double* %add.ptr)
  %6 = load double*, double** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds double, double* %6, i64 16
  %7 = load double*, double** %__last.addr, align 8
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp2 to i8*
  %9 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 1, i32 1, i1 false)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %add.ptr1, double* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load double*, double** %__first.addr, align 8
  %11 = load double*, double** %__last.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp3 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 1, i32 1, i1 false)
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %10, double* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__val = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %5, double* %6)
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
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp5 to i8*
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 1, i32 1, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(double* %14)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %17 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %17, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp1 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1, i32 1, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(double* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__val_comp_iterI24inline_less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE() #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %retval, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_(double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* dereferenceable(8) %__val, double* %4)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* dereferenceable(8) %__val, double* %__it) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__val.addr = alloca double*, align 8
  %__it.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double*, double** %__it.addr, align 8
  %call = call zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(%struct.less_than_functor* %this, double* dereferenceable(8) %lhs, double* dereferenceable(8) %rhs) #5 comdat align 2 {
entry:
  %this.addr = alloca %struct.less_than_functor*, align 8
  %lhs.addr = alloca double*, align 8
  %rhs.addr = alloca double*, align 8
  store %struct.less_than_functor* %this, %struct.less_than_functor** %this.addr, align 8
  store double* %lhs, double** %lhs.addr, align 8
  store double* %rhs, double** %rhs.addr, align 8
  %this1 = load %struct.less_than_functor*, %struct.less_than_functor** %this.addr, align 8
  %0 = load double*, double** %lhs.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %rhs.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  %cond = select i1 %cmp, i1 true, i1 false
  ret i1 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* %__it1, double* %__it2) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__it1.addr, align 8
  %1 = load double*, double** %__it2.addr, align 8
  %call = call zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 1, i32 1, i1 false)
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(double* %0, double* %1, double* %2)
  %5 = load double*, double** %__first.addr, align 8
  %6 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(double* %5, double* %6, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__mid = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 1, i32 1, i1 false)
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(double* %3, double* %add.ptr1, double* %5, double* %add.ptr2)
  %9 = load double*, double** %__first.addr, align 8
  %add.ptr3 = getelementptr inbounds double, double* %9, i64 1
  %10 = load double*, double** %__last.addr, align 8
  %11 = load double*, double** %__first.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp4 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 1, i32 1, i1 false)
  %call = call double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(double* %add.ptr3, double* %10, double* %11)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_(double* %__result, double* %__a, double* %__b, double* %__c) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %0, double* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double*, double** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %2, double* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load double*, double** %__result.addr, align 8
  %5 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %4, double* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load double*, double** %__a.addr, align 8
  %7 = load double*, double** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %6, double* %7)
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
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %12, double* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load double*, double** %__result.addr, align 8
  %15 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %14, double* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load double*, double** %__b.addr, align 8
  %17 = load double*, double** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %16, double* %17)
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
define linkonce_odr double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_S6_T0_(double* %__first, double* %__last, double* %__pivot) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %0, double* %1)
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
  %call5 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %4, double* %5)
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
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(double* %0, double* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__middle.addr, align 8
  %9 = load double*, double** %__i, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(double* %7, double* %8, double* %9, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
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
define linkonce_odr void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(double* %3, double* %4, double* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_(double* %__first, double* %__last, double* %__result, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %9 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 1, i32 1, i1 false)
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(double* %5, i64 0, i64 %sub.ptr.div, double %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(double* %__first, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %add.ptr, double* %add.ptr2)
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
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__cmp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  %26 = load double*, double** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %29 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(double* %26, i64 %27, i64 %28, double %29, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEEEvT_T0_S7_T1_RT2_(double* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__parent = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %3, double* %add.ptr, double* dereferenceable(8) %__value.addr)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24inline_less_than_functorEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* %__it, double* dereferenceable(8) %__val) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__it.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__it.addr, align 8
  %1 = load double*, double** %__val.addr, align 8
  %call = call zeroext i1 @_ZNK24inline_less_than_functorclERKdS1_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 1, i32 1, i1 false)
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_(double* %8, i64 %9, i64 %10, double %11)
  %15 = load i64, i64* %__parent, align 8
  %cmp5 = icmp eq i64 %15, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  br label %return

if.end7:                                          ; preds = %while.body
  %16 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then6, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEC2ES2_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops16__iter_comp_iterI17less_than_functorEENS0_15_Iter_comp_iterIT_EES4_() #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__comp = alloca %struct.less_than_functor, align 1
  %agg.tmp = alloca %struct.less_than_functor, align 1
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %retval)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1, i32 1, i1 false)
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(double* %2, double* %3, i64 %mul)
  %8 = load double*, double** %__first.addr, align 8
  %9 = load double*, double** %__last.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp1 to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 1, i32 1, i1 false)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %8, double* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(double* %__first, double* %__last, i64 %__depth_limit) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__cut = alloca double*, align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 1, i32 1, i1 false)
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(double* %3, double* %4, double* %5)
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %9 = load double*, double** %__first.addr, align 8
  %10 = load double*, double** %__last.addr, align 8
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp2 to i8*
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 1, i32 1, i1 false)
  %call = call double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(double* %9, double* %10)
  store double* %call, double** %__cut, align 8
  %13 = load double*, double** %__cut, align 8
  %14 = load double*, double** %__last.addr, align 8
  %15 = load i64, i64* %__depth_limit.addr, align 8
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp3 to i8*
  %17 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 1, i32 1, i1 false)
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(double* %13, double* %14, i64 %15)
  %18 = load double*, double** %__cut, align 8
  store double* %18, double** %__last.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1, i32 1, i1 false)
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %2, double* %add.ptr)
  %6 = load double*, double** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds double, double* %6, i64 16
  %7 = load double*, double** %__last.addr, align 8
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp2 to i8*
  %9 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 1, i32 1, i1 false)
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %add.ptr1, double* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load double*, double** %__first.addr, align 8
  %11 = load double*, double** %__last.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp3 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 1, i32 1, i1 false)
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %10, double* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__val = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %5, double* %6)
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
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp5 to i8*
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 1, i32 1, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(double* %14)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %17 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %17, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp1 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1, i32 1, i1 false)
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE()
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(double* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15__val_comp_iterI17less_than_functorEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE() #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %retval, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_(double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* dereferenceable(8) %__val, double* %4)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* dereferenceable(8) %__val, double* %__it) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__val.addr = alloca double*, align 8
  %__it.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__val.addr, align 8
  %1 = load double*, double** %__it.addr, align 8
  %call = call zeroext i1 @_ZNK17less_than_functorclERKdS1_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* %__it1, double* %__it2) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__it1.addr, align 8
  %1 = load double*, double** %__it2.addr, align 8
  %call = call zeroext i1 @_ZNK17less_than_functorclERKdS1_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 1, i32 1, i1 false)
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(double* %0, double* %1, double* %2)
  %5 = load double*, double** %__first.addr, align 8
  %6 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(double* %5, double* %6, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_(double* %__first, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__mid = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 1, i32 1, i1 false)
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(double* %3, double* %add.ptr1, double* %5, double* %add.ptr2)
  %9 = load double*, double** %__first.addr, align 8
  %add.ptr3 = getelementptr inbounds double, double* %9, i64 1
  %10 = load double*, double** %__last.addr, align 8
  %11 = load double*, double** %__first.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp4 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 1, i32 1, i1 false)
  %call = call double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(double* %add.ptr3, double* %10, double* %11)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_(double* %__result, double* %__a, double* %__b, double* %__c) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %0, double* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double*, double** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %2, double* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load double*, double** %__result.addr, align 8
  %5 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %4, double* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load double*, double** %__a.addr, align 8
  %7 = load double*, double** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %6, double* %7)
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
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %12, double* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load double*, double** %__result.addr, align 8
  %15 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %14, double* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load double*, double** %__b.addr, align 8
  %17 = load double*, double** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %16, double* %17)
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
define linkonce_odr double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_S6_T0_(double* %__first, double* %__last, double* %__pivot) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %0, double* %1)
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
  %call5 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %4, double* %5)
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
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_(double* %__first, double* %__middle, double* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(double* %0, double* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__middle.addr, align 8
  %9 = load double*, double** %__i, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(double* %7, double* %8, double* %9, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
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
define linkonce_odr void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(double* %3, double* %4, double* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_(double* %__first, double* %__last, double* %__result, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %9 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 1, i32 1, i1 false)
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(double* %5, i64 0, i64 %sub.ptr.div, double %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(double* %__first, i64 %__holeIndex, i64 %__len, double %__value) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEclIPdS5_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, double* %add.ptr, double* %add.ptr2)
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
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__cmp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp)
  %26 = load double*, double** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %29 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(double* %26, i64 %27, i64 %28, double %29, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEC2ERKNS0_15_Iter_comp_iterIS2_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %0, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEEEvT_T0_S7_T1_RT2_(double* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__parent = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %3, double* %add.ptr, double* dereferenceable(8) %__value.addr)
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
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI17less_than_functorEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, double* %__it, double* dereferenceable(8) %__val) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__it.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  %0 = load double*, double** %__it.addr, align 8
  %1 = load double*, double** %__val.addr, align 8
  %call = call zeroext i1 @_ZNK17less_than_functorclERKdS1_(%struct.less_than_functor* %_M_comp, double* dereferenceable(8) %0, double* dereferenceable(8) %1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
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
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %__comp.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %agg.tmp to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 1, i32 1, i1 false)
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_(double* %8, i64 %9, i64 %10, double %11)
  %15 = load i64, i64* %__parent, align 8
  %cmp5 = icmp eq i64 %15, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  br label %return

if.end7:                                          ; preds = %while.body
  %16 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then6, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEC2ES2_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %__comp = alloca %struct.less_than_functor, align 1
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6"* %this1, i32 0, i32 0
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i1 (double, double)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbddEEENS0_15_Iter_comp_iterIT_EES5_(i1 (double, double)* %__comp) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__comp.addr = alloca i1 (double, double)*, align 8
  store i1 (double, double)* %__comp, i1 (double, double)** %__comp.addr, align 8
  %0 = load i1 (double, double)*, i1 (double, double)** %__comp.addr, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i1 (double, double)* %0)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i32 0, i32 0
  %1 = load i1 (double, double)*, i1 (double, double)** %coerce.dive, align 8
  ret i1 (double, double)* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt6__sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %__first, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %8 = load i1 (double, double)*, i1 (double, double)** %coerce.dive1, align 8
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(double* %2, double* %3, i64 %mul, i1 (double, double)* %8)
  %9 = load double*, double** %__first.addr, align 8
  %10 = load double*, double** %__last.addr, align 8
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp2 to i8*
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp2, i32 0, i32 0
  %13 = load i1 (double, double)*, i1 (double, double)** %coerce.dive3, align 8
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %9, double* %10, i1 (double, double)* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(double* %__first, double* %__last, i64 %__depth_limit, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__cut = alloca double*, align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %8 = load i1 (double, double)*, i1 (double, double)** %coerce.dive2, align 8
  call void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(double* %3, double* %4, double* %5, i1 (double, double)* %8)
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %10 = load double*, double** %__first.addr, align 8
  %11 = load double*, double** %__last.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %14 = load i1 (double, double)*, i1 (double, double)** %coerce.dive4, align 8
  %call = call double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(double* %10, double* %11, i1 (double, double)* %14)
  store double* %call, double** %__cut, align 8
  %15 = load double*, double** %__cut, align 8
  %16 = load double*, double** %__last.addr, align 8
  %17 = load i64, i64* %__depth_limit.addr, align 8
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %19 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %20 = load i1 (double, double)*, i1 (double, double)** %coerce.dive6, align 8
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(double* %15, double* %16, i64 %17, i1 (double, double)* %20)
  %21 = load double*, double** %__cut, align 8
  store double* %21, double** %__last.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %__first, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %6 = load i1 (double, double)*, i1 (double, double)** %coerce.dive1, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %2, double* %add.ptr, i1 (double, double)* %6)
  %7 = load double*, double** %__first.addr, align 8
  %add.ptr2 = getelementptr inbounds double, double* %7, i64 16
  %8 = load double*, double** %__last.addr, align 8
  %9 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %11 = load i1 (double, double)*, i1 (double, double)** %coerce.dive4, align 8
  call void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %add.ptr2, double* %8, i1 (double, double)* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load double*, double** %__first.addr, align 8
  %13 = load double*, double** %__last.addr, align 8
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %16 = load i1 (double, double)*, i1 (double, double)** %coerce.dive6, align 8
  call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %12, double* %13, i1 (double, double)* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %__first, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %__val = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %5, double* %6)
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
  br label %if.end10

if.else:                                          ; preds = %for.body
  %14 = load double*, double** %__i, align 8
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %17 = load i1 (double, double)*, i1 (double, double)** %coerce.dive6, align 8
  %call7 = call i1 (double, double)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i1 (double, double)* %17)
  %coerce.dive8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  store i1 (double, double)* %call7, i1 (double, double)** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %18 = load i1 (double, double)*, i1 (double, double)** %coerce.dive9, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(double* %14, i1 (double, double)* %18)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %19 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %19, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_(double* %__first, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp1 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp1, i32 0, i32 0
  %6 = load i1 (double, double)*, i1 (double, double)** %coerce.dive2, align 8
  %call = call i1 (double, double)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i1 (double, double)* %6)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  store i1 (double, double)* %call, i1 (double, double)** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %7 = load i1 (double, double)*, i1 (double, double)** %coerce.dive4, align 8
  call void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(double* %3, i1 (double, double)* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load double*, double** %__i, align 8
  %incdec.ptr = getelementptr inbounds double, double* %8, i32 1
  store double* %incdec.ptr, double** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i1 (double, double)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbddEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE(i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i32 0, i32 0
  %0 = load i1 (double, double)*, i1 (double, double)** %coerce.dive1, align 8
  ret i1 (double, double)* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_(double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__last.addr = alloca double*, align 8
  %__val = alloca double, align 8
  %__next = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* dereferenceable(8) %__val, double* %4)
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

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEclIdPdEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, double* dereferenceable(8) %__val, double* %__it) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__val.addr = alloca double*, align 8
  %__it.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load i1 (double, double)*, i1 (double, double)** %_M_comp, align 8
  %1 = load double*, double** %__val.addr, align 8
  %2 = load double, double* %1, align 8
  %3 = load double*, double** %__it.addr, align 8
  %4 = load double, double* %3, align 8
  %call = call zeroext i1 %0(double %2, double %4)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i32 0, i32 0
  %1 = load i1 (double, double)*, i1 (double, double)** %_M_comp2, align 8
  store i1 (double, double)* %1, i1 (double, double)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, double* %__it1, double* %__it2) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__it1.addr = alloca double*, align 8
  %__it2.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store double* %__it1, double** %__it1.addr, align 8
  store double* %__it2, double** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load i1 (double, double)*, i1 (double, double)** %_M_comp, align 8
  %1 = load double*, double** %__it1.addr, align 8
  %2 = load double, double* %1, align 8
  %3 = load double*, double** %__it2.addr, align 8
  %4 = load double, double* %3, align 8
  %call = call zeroext i1 %0(double %2, double %4)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(double* %__first, double* %__middle, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %5 = load i1 (double, double)*, i1 (double, double)** %coerce.dive1, align 8
  call void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(double* %0, double* %1, double* %2, i1 (double, double)* %5)
  %6 = load double*, double** %__first.addr, align 8
  %7 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(double* %6, double* %7, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_(double* %__first, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__mid = alloca double*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %9 = load i1 (double, double)*, i1 (double, double)** %coerce.dive3, align 8
  call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(double* %3, double* %add.ptr1, double* %5, double* %add.ptr2, i1 (double, double)* %9)
  %10 = load double*, double** %__first.addr, align 8
  %add.ptr4 = getelementptr inbounds double, double* %10, i64 1
  %11 = load double*, double** %__last.addr, align 8
  %12 = load double*, double** %__first.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %15 = load i1 (double, double)*, i1 (double, double)** %coerce.dive6, align 8
  %call = call double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(double* %add.ptr4, double* %11, double* %12, i1 (double, double)* %15)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_(double* %__result, double* %__a, double* %__b, double* %__c, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__result.addr = alloca double*, align 8
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  %__c.addr = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
  store double* %__result, double** %__result.addr, align 8
  store double* %__a, double** %__a.addr, align 8
  store double* %__b, double** %__b.addr, align 8
  store double* %__c, double** %__c.addr, align 8
  %0 = load double*, double** %__a.addr, align 8
  %1 = load double*, double** %__b.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %0, double* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double*, double** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %2, double* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load double*, double** %__result.addr, align 8
  %5 = load double*, double** %__b.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %4, double* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load double*, double** %__a.addr, align 8
  %7 = load double*, double** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %6, double* %7)
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
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %12, double* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load double*, double** %__result.addr, align 8
  %15 = load double*, double** %__a.addr, align 8
  call void @_ZSt9iter_swapIPdS0_EvT_T0_(double* %14, double* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load double*, double** %__b.addr, align 8
  %17 = load double*, double** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %16, double* %17)
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
define linkonce_odr double* @_ZSt21__unguarded_partitionIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_S7_T0_(double* %__first, double* %__last, double* %__pivot, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__pivot.addr = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__pivot, double** %__pivot.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__pivot.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %0, double* %1)
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
  %call5 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %4, double* %5)
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
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_(double* %__first, double* %__middle, double* %__last, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__middle.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__i = alloca double*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__middle, double** %__middle.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(double* %0, double* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %5, double* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load double*, double** %__first.addr, align 8
  %8 = load double*, double** %__middle.addr, align 8
  %9 = load double*, double** %__i, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(double* %7, double* %8, double* %9, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
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
define linkonce_odr void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
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
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(double* %3, double* %4, double* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_(double* %__first, double* %__last, double* %__result, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
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
  %9 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %12 = load i1 (double, double)*, i1 (double, double)** %coerce.dive, align 8
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(double* %5, i64 0, i64 %sub.ptr.div, double %8, i1 (double, double)* %12)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(double* %__first, i64 %__holeIndex, i64 %__len, double %__value, i1 (double, double)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (double, double)* %__comp.coerce, i1 (double, double)** %coerce.dive, align 8
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
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEclIPdS6_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, double* %add.ptr, double* %add.ptr2)
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
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__cmp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  %26 = load double*, double** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %29 = load double, double* %__value.addr, align 8
  call void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(double* %26, i64 %27, i64 %28, double %29, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEC2ERKNS0_15_Iter_comp_iterIS3_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i32 0, i32 0
  %1 = load i1 (double, double)*, i1 (double, double)** %_M_comp2, align 8
  store i1 (double, double)* %1, i1 (double, double)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEEEvT_T0_S8_T1_RT2_(double* %__first, i64 %__holeIndex, i64 %__topIndex, double %__value, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca double, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__parent = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store double %__value, double* %__value.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
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
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %4 = load double*, double** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, double* %add.ptr, double* dereferenceable(8) %__value.addr)
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

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbddEEclIPddEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, double* %__it, double* dereferenceable(8) %__val) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__it.addr = alloca double*, align 8
  %__val.addr = alloca double*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store double* %__it, double** %__it.addr, align 8
  store double* %__val, double** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load i1 (double, double)*, i1 (double, double)** %_M_comp, align 8
  %1 = load double*, double** %__it.addr, align 8
  %2 = load double, double* %1, align 8
  %3 = load double*, double** %__val.addr, align 8
  %4 = load double, double* %3, align 8
  %call = call zeroext i1 %0(double %2, double %4)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(double* %__first, double* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca double, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
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
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %15 = load i1 (double, double)*, i1 (double, double)** %coerce.dive, align 8
  call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_(double* %8, i64 %9, i64 %10, double %11, i1 (double, double)* %15)
  %16 = load i64, i64* %__parent, align 8
  %cmp5 = icmp eq i64 %16, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  br label %return

if.end7:                                          ; preds = %while.body
  %17 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %17, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then6, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEC2ES3_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, i1 (double, double)* %__comp) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__comp.addr = alloca i1 (double, double)*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store i1 (double, double)* %__comp, i1 (double, double)** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load i1 (double, double)*, i1 (double, double)** %__comp.addr, align 8
  store i1 (double, double)* %0, i1 (double, double)** %_M_comp, align 8
  ret void
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
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #5 comdat align 2 {
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

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
