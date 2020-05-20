; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/stepanov_abstraction/stepanov_abstraction.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.one_result = type { double, i8* }
%struct.ValueWrapper = type { double }
%struct.ValueWrapper.0 = type { %struct.ValueWrapper.1 }
%struct.ValueWrapper.1 = type { %struct.ValueWrapper.2 }
%struct.ValueWrapper.2 = type { %struct.ValueWrapper.3 }
%struct.ValueWrapper.3 = type { %struct.ValueWrapper.4 }
%struct.ValueWrapper.4 = type { %struct.ValueWrapper.5 }
%struct.ValueWrapper.5 = type { %struct.ValueWrapper.6 }
%struct.ValueWrapper.6 = type { %struct.ValueWrapper.7 }
%struct.ValueWrapper.7 = type { %struct.ValueWrapper.8 }
%struct.ValueWrapper.8 = type { %struct.ValueWrapper }
%struct.PointerWrapper = type { double* }
%struct.PointerWrapper.9 = type { %struct.ValueWrapper* }
%struct.PointerWrapper.10 = type { %struct.ValueWrapper.0* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

$_ZN14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEC2EPSA_ = comdat any

$_ZN14PointerWrapperI12ValueWrapperIdEEC2EPS1_ = comdat any

$_ZN14PointerWrapperIdEC2EPd = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IS_IdEEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IS_IdEEEC2Ev = comdat any

$_ZN12ValueWrapperIS_IdEEC2Ev = comdat any

$_ZN12ValueWrapperIdEC2Ev = comdat any

$_ZN12ValueWrapperIdEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IdEERKT_ = comdat any

$_ZN9benchmark4fillIPddEEvT_S2_T0_ = comdat any

$_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_ = comdat any

$_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_ = comdat any

$_Z15test_accumulateIPddEvT_S1_T0_PKc = comdat any

$_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc = comdat any

$_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc = comdat any

$_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc = comdat any

$_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc = comdat any

$_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc = comdat any

$_ZN9benchmark11fill_randomIPddEEvT_S2_ = comdat any

$_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_ = comdat any

$_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_ = comdat any

$_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc = comdat any

$_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc = comdat any

$_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc = comdat any

$_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc = comdat any

$_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc = comdat any

$_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc = comdat any

$_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc = comdat any

$_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc = comdat any

$_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc = comdat any

$_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc = comdat any

$_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc = comdat any

$_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc = comdat any

$_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc = comdat any

$_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc = comdat any

$_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc = comdat any

$_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_ = comdat any

$_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ = comdat any

$_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_ = comdat any

$_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_ = comdat any

$_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i = comdat any

$_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_ = comdat any

$_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEbRKS0_IT_ESC_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEbRKS0_IT_ESB_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IdEEEEEEEbRKS0_IT_ESA_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IdEEEEEEbRKS0_IT_ES9_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IdEEEEEbRKS0_IT_ES8_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IdEEEEbRKS0_IT_ES7_ = comdat any

$_ZltI12ValueWrapperIS0_IdEEEbRKS0_IT_ES6_ = comdat any

$_ZltI12ValueWrapperIdEEbRKS0_IT_ES5_ = comdat any

$_ZltIdEbRK12ValueWrapperIT_ES4_ = comdat any

$_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_ = comdat any

$_ZmiI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEElR14PointerWrapperIT_ESE_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l = comdat any

$_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_ = comdat any

$_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_ = comdat any

$_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ = comdat any

$_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_ = comdat any

$_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_ = comdat any

$_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_ = comdat any

$_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_ = comdat any

$_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ = comdat any

$_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_ = comdat any

$_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_ = comdat any

$_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i = comdat any

$_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_ = comdat any

$_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv = comdat any

$_ZppI12ValueWrapperIdEER14PointerWrapperIT_ES5_ = comdat any

$_ZmiI12ValueWrapperIdEElR14PointerWrapperIT_ES5_ = comdat any

$_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l = comdat any

$_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_ = comdat any

$_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_ = comdat any

$_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_ = comdat any

$_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_ = comdat any

$_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_ = comdat any

$_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_ = comdat any

$_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_ = comdat any

$_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_ = comdat any

$_Z13verify_sortedI14PointerWrapperIdEEvT_S2_ = comdat any

$_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_ = comdat any

$_ZppIdE14PointerWrapperIT_ERS2_i = comdat any

$_ZneIdEbRK14PointerWrapperIT_ES4_ = comdat any

$_ZNK14PointerWrapperIdEdeEv = comdat any

$_ZppIdER14PointerWrapperIT_ES3_ = comdat any

$_ZmiIdElR14PointerWrapperIT_ES3_ = comdat any

$_ZplIdE14PointerWrapperIT_ERS2_l = comdat any

$_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_ = comdat any

$_ZN9benchmark4copyIPdS1_EEvT_S2_T0_ = comdat any

$_ZN9benchmark8heapsortIPddEEvT_S2_ = comdat any

$_Z13verify_sortedIPdEvT_S1_ = comdat any

$_ZN9benchmark9is_sortedIPdEEbT_S2_ = comdat any

$_ZN9benchmark7sift_inIPddEEvlT_lT0_ = comdat any

$_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ = comdat any

$_ZmmI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_ = comdat any

$_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_ = comdat any

$_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ = comdat any

$_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ = comdat any

$_ZmmI12ValueWrapperIdEER14PointerWrapperIT_ES5_ = comdat any

$_ZltI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_ = comdat any

$_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_ = comdat any

$_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_ = comdat any

$_ZmmIdER14PointerWrapperIT_ES3_ = comdat any

$_ZltIdEbRK14PointerWrapperIT_ES4_ = comdat any

$_ZN9benchmark9quicksortIPddEEvT_S2_ = comdat any

$_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ = comdat any

$_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ = comdat any

$_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ = comdat any

$_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_ = comdat any

$_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_ = comdat any

$_ZN9benchmark13insertionSortIPddEEvT_S2_ = comdat any

$_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_ = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEcvT_IdEEv = comdat any

$_Z9check_sumd = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IS_IdEEEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IS_IS_IdEEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IS_IdEEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIS_IdEEcvT_IdEEv = comdat any

$_ZNK12ValueWrapperIdEcvT_IdEEv = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEES0_IT_ERKSB_SD_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEES0_IT_ERKSA_SC_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IS8_EERKT_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEES0_IT_ERKS9_SB_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2IS7_EERKT_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IdEEEEEEES0_IT_ERKS8_SA_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2IS6_EERKT_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IdEEEEEES0_IT_ERKS7_S9_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2IS5_EERKT_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IS0_IdEEEEES0_IT_ERKS6_S8_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2IS4_EERKT_ = comdat any

$_ZplI12ValueWrapperIS0_IS0_IdEEEES0_IT_ERKS5_S7_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2IS3_EERKT_ = comdat any

$_ZplI12ValueWrapperIS0_IdEEES0_IT_ERKS4_S6_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IdEEEEC2IS2_EERKT_ = comdat any

$_ZplI12ValueWrapperIdEES0_IT_ERKS3_S5_ = comdat any

$_ZN12ValueWrapperIS_IS_IdEEEC2IS1_EERKT_ = comdat any

$_ZplIdE12ValueWrapperIT_ERKS2_S4_ = comdat any

$_ZN12ValueWrapperIS_IdEEC2IS0_EERKT_ = comdat any

$_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_ = comdat any

$_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_ = comdat any

$_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_ = comdat any

$_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_ = comdat any

$_ZN9benchmark10accumulateIPddEET0_T_S3_S2_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IS_IdEEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IS_IdEEEC2IdEERKT_ = comdat any

$_ZN12ValueWrapperIS_IdEEC2IdEERKT_ = comdat any

@results = global %struct.one_result* null, align 8
@current_test = global i32 0, align 4
@allocated_results = global i32 0, align 4
@start_time = global i64 0, align 8
@end_time = global i64 0, align 8
@iterations = global i32 200000, align 4
@init_value = global double 3.000000e+00, align 8
@data = global [2000 x double] zeroinitializer, align 16
@VData = global [2000 x %struct.ValueWrapper] zeroinitializer, align 16
@V10Data = global [2000 x %struct.ValueWrapper.0] zeroinitializer, align 16
@dataMaster = global [2000 x double] zeroinitializer, align 16
@VDataMaster = global [2000 x %struct.ValueWrapper] zeroinitializer, align 16
@V10DataMaster = global [2000 x %struct.ValueWrapper.0] zeroinitializer, align 16
@dpb = global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i32 0, i32 0), align 8
@dpe = global double* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x double]* @data to i8*), i64 16000) to double*), align 8
@dMpb = global double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i32 0, i32 0), align 8
@dMpe = global double* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x double]* @dataMaster to i8*), i64 16000) to double*), align 8
@DVpb = global %struct.ValueWrapper* getelementptr inbounds ([2000 x %struct.ValueWrapper], [2000 x %struct.ValueWrapper]* @VData, i32 0, i32 0), align 8
@DVpe = global %struct.ValueWrapper* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x %struct.ValueWrapper]* @VData to i8*), i64 16000) to %struct.ValueWrapper*), align 8
@DVMpb = global %struct.ValueWrapper* getelementptr inbounds ([2000 x %struct.ValueWrapper], [2000 x %struct.ValueWrapper]* @VDataMaster, i32 0, i32 0), align 8
@DVMpe = global %struct.ValueWrapper* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x %struct.ValueWrapper]* @VDataMaster to i8*), i64 16000) to %struct.ValueWrapper*), align 8
@DV10pb = global %struct.ValueWrapper.0* getelementptr inbounds ([2000 x %struct.ValueWrapper.0], [2000 x %struct.ValueWrapper.0]* @V10Data, i32 0, i32 0), align 8
@DV10pe = global %struct.ValueWrapper.0* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x %struct.ValueWrapper.0]* @V10Data to i8*), i64 16000) to %struct.ValueWrapper.0*), align 8
@DV10Mpb = global %struct.ValueWrapper.0* getelementptr inbounds ([2000 x %struct.ValueWrapper.0], [2000 x %struct.ValueWrapper.0]* @V10DataMaster, i32 0, i32 0), align 8
@DV10Mpe = global %struct.ValueWrapper.0* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x %struct.ValueWrapper.0]* @V10DataMaster to i8*), i64 16000) to %struct.ValueWrapper.0*), align 8
@dPb = global %struct.PointerWrapper zeroinitializer, align 8
@dPe = global %struct.PointerWrapper zeroinitializer, align 8
@dMPb = global %struct.PointerWrapper zeroinitializer, align 8
@dMPe = global %struct.PointerWrapper zeroinitializer, align 8
@DVPb = global %struct.PointerWrapper.9 zeroinitializer, align 8
@DVPe = global %struct.PointerWrapper.9 zeroinitializer, align 8
@DVMPb = global %struct.PointerWrapper.9 zeroinitializer, align 8
@DVMPe = global %struct.PointerWrapper.9 zeroinitializer, align 8
@DV10Pb = global %struct.PointerWrapper.10 zeroinitializer, align 8
@DV10Pe = global %struct.PointerWrapper.10 zeroinitializer, align 8
@DV10MPb = global %struct.PointerWrapper.10 zeroinitializer, align 8
@DV10MPe = global %struct.PointerWrapper.10 zeroinitializer, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_stepanov_abstraction.cpp, i8* null }]
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
@.str.26 = private unnamed_addr constant [15 x i8] c"double pointer\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"double pointer_class\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"DoubleValueWrapper pointer\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"DoubleValueWrapper pointer_class\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"DoubleValueWrapper10 pointer\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"DoubleValueWrapper10 pointer_class\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"insertion_sort double pointer\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"insertion_sort double pointer_class\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"insertion_sort DoubleValueWrapper pointer\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"insertion_sort DoubleValueWrapper pointer_class\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"insertion_sort DoubleValueWrapper10 pointer\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"insertion_sort DoubleValueWrapper10 pointer_class\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"quicksort double pointer\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"quicksort double pointer_class\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"quicksort DoubleValueWrapper pointer\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"quicksort DoubleValueWrapper pointer_class\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"quicksort DoubleValueWrapper10 pointer\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"quicksort DoubleValueWrapper10 pointer_class\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"heap_sort double pointer\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"heap_sort double pointer_class\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"heap_sort DoubleValueWrapper pointer\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"heap_sort DoubleValueWrapper pointer_class\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"heap_sort DoubleValueWrapper10 pointer\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"heap_sort DoubleValueWrapper10 pointer_class\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"sort test %i failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_stepanov_abstraction.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.11()
  call void @__cxx_global_var_init.12()
  call void @__cxx_global_var_init.13()
  call void @__cxx_global_var_init.14()
  call void @__cxx_global_var_init.15()
  call void @__cxx_global_var_init.16()
  call void @__cxx_global_var_init.17()
  call void @__cxx_global_var_init.18()
  call void @__cxx_global_var_init.19()
  call void @__cxx_global_var_init.20()
  call void @__cxx_global_var_init.21()
  call void @__cxx_global_var_init.22()
  call void @__cxx_global_var_init.23()
  call void @__cxx_global_var_init.24()
  call void @__cxx_global_var_init.25()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.ValueWrapper* [ getelementptr inbounds ([2000 x %struct.ValueWrapper], [2000 x %struct.ValueWrapper]* @VData, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN12ValueWrapperIdEC2Ev(%struct.ValueWrapper* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.ValueWrapper* %arrayctor.next, getelementptr inbounds (%struct.ValueWrapper, %struct.ValueWrapper* getelementptr inbounds ([2000 x %struct.ValueWrapper], [2000 x %struct.ValueWrapper]* @VData, i32 0, i32 0), i64 2000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.11() #0 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.ValueWrapper.0* [ getelementptr inbounds ([2000 x %struct.ValueWrapper.0], [2000 x %struct.ValueWrapper.0]* @V10Data, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2Ev(%struct.ValueWrapper.0* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.ValueWrapper.0* %arrayctor.next, getelementptr inbounds (%struct.ValueWrapper.0, %struct.ValueWrapper.0* getelementptr inbounds ([2000 x %struct.ValueWrapper.0], [2000 x %struct.ValueWrapper.0]* @V10Data, i32 0, i32 0), i64 2000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.12() #0 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.ValueWrapper* [ getelementptr inbounds ([2000 x %struct.ValueWrapper], [2000 x %struct.ValueWrapper]* @VDataMaster, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN12ValueWrapperIdEC2Ev(%struct.ValueWrapper* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.ValueWrapper* %arrayctor.next, getelementptr inbounds (%struct.ValueWrapper, %struct.ValueWrapper* getelementptr inbounds ([2000 x %struct.ValueWrapper], [2000 x %struct.ValueWrapper]* @VDataMaster, i32 0, i32 0), i64 2000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.13() #0 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.ValueWrapper.0* [ getelementptr inbounds ([2000 x %struct.ValueWrapper.0], [2000 x %struct.ValueWrapper.0]* @V10DataMaster, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2Ev(%struct.ValueWrapper.0* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.ValueWrapper.0* %arrayctor.next, getelementptr inbounds (%struct.ValueWrapper.0, %struct.ValueWrapper.0* getelementptr inbounds ([2000 x %struct.ValueWrapper.0], [2000 x %struct.ValueWrapper.0]* @V10DataMaster, i32 0, i32 0), i64 2000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.14() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpb, align 8
  call void @_ZN14PointerWrapperIdEC2EPd(%struct.PointerWrapper* @dPb, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.15() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpe, align 8
  call void @_ZN14PointerWrapperIdEC2EPd(%struct.PointerWrapper* @dPe, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.16() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dMpb, align 8
  call void @_ZN14PointerWrapperIdEC2EPd(%struct.PointerWrapper* @dMPb, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.17() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dMpe, align 8
  call void @_ZN14PointerWrapperIdEC2EPd(%struct.PointerWrapper* @dMPe, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.18() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpb, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIdEEC2EPS1_(%struct.PointerWrapper.9* @DVPb, %struct.ValueWrapper* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.19() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpe, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIdEEC2EPS1_(%struct.PointerWrapper.9* @DVPe, %struct.ValueWrapper* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.20() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpb, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIdEEC2EPS1_(%struct.PointerWrapper.9* @DVMPb, %struct.ValueWrapper* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.21() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpe, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIdEEC2EPS1_(%struct.PointerWrapper.9* @DVMPe, %struct.ValueWrapper* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.22() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pb, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEC2EPSA_(%struct.PointerWrapper.10* @DV10Pb, %struct.ValueWrapper.0* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.23() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pe, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEC2EPSA_(%struct.PointerWrapper.10* @DV10Pe, %struct.ValueWrapper.0* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.24() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpb, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEC2EPSA_(%struct.PointerWrapper.10* @DV10MPb, %struct.ValueWrapper.0* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.25() #0 section ".text.startup" {
entry:
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpe, align 8
  call void @_ZN14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEC2EPSA_(%struct.PointerWrapper.10* @DV10MPe, %struct.ValueWrapper.0* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEC2EPSA_(%struct.PointerWrapper.10* %this, %struct.ValueWrapper.0* %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.PointerWrapper.10*, align 8
  %x.addr = alloca %struct.ValueWrapper.0*, align 8
  store %struct.PointerWrapper.10* %this, %struct.PointerWrapper.10** %this.addr, align 8
  store %struct.ValueWrapper.0* %x, %struct.ValueWrapper.0** %x.addr, align 8
  %this1 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %this.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %x.addr, align 8
  store %struct.ValueWrapper.0* %0, %struct.ValueWrapper.0** %current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN14PointerWrapperI12ValueWrapperIdEEC2EPS1_(%struct.PointerWrapper.9* %this, %struct.ValueWrapper* %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.PointerWrapper.9*, align 8
  %x.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.PointerWrapper.9* %this, %struct.PointerWrapper.9** %this.addr, align 8
  store %struct.ValueWrapper* %x, %struct.ValueWrapper** %x.addr, align 8
  %this1 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %this.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %x.addr, align 8
  store %struct.ValueWrapper* %0, %struct.ValueWrapper** %current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN14PointerWrapperIdEC2EPd(%struct.PointerWrapper* %this, double* %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.PointerWrapper*, align 8
  %x.addr = alloca double*, align 8
  store %struct.PointerWrapper* %this, %struct.PointerWrapper** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.PointerWrapper*, %struct.PointerWrapper** %this.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  store double* %0, double** %current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2Ev(%struct.ValueWrapper.0* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %this, %struct.ValueWrapper.0** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2Ev(%struct.ValueWrapper.1* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2Ev(%struct.ValueWrapper.1* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.1*, align 8
  store %struct.ValueWrapper.1* %this, %struct.ValueWrapper.1** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2Ev(%struct.ValueWrapper.2* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2Ev(%struct.ValueWrapper.2* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.2*, align 8
  store %struct.ValueWrapper.2* %this, %struct.ValueWrapper.2** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2Ev(%struct.ValueWrapper.3* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2Ev(%struct.ValueWrapper.3* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.3*, align 8
  store %struct.ValueWrapper.3* %this, %struct.ValueWrapper.3** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2Ev(%struct.ValueWrapper.4* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2Ev(%struct.ValueWrapper.4* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.4*, align 8
  store %struct.ValueWrapper.4* %this, %struct.ValueWrapper.4** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2Ev(%struct.ValueWrapper.5* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2Ev(%struct.ValueWrapper.5* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.5*, align 8
  store %struct.ValueWrapper.5* %this, %struct.ValueWrapper.5** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IS_IdEEEEC2Ev(%struct.ValueWrapper.6* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IdEEEEC2Ev(%struct.ValueWrapper.6* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.6*, align 8
  store %struct.ValueWrapper.6* %this, %struct.ValueWrapper.6** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IS_IdEEEC2Ev(%struct.ValueWrapper.7* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IdEEEC2Ev(%struct.ValueWrapper.7* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.7*, align 8
  store %struct.ValueWrapper.7* %this, %struct.ValueWrapper.7** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIS_IdEEC2Ev(%struct.ValueWrapper.8* %value)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IdEEC2Ev(%struct.ValueWrapper.8* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.8*, align 8
  store %struct.ValueWrapper.8* %this, %struct.ValueWrapper.8** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %this1, i32 0, i32 0
  call void @_ZN12ValueWrapperIdEC2Ev(%struct.ValueWrapper* %value)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIdEC2Ev(%struct.ValueWrapper* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %this, %struct.ValueWrapper** %this.addr, align 8
  %this1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %this.addr, align 8
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
  %call = call i8* @realloc(i8* %5, i64 %mul) #8
  %7 = bitcast i8* %call to %struct.one_result*
  store %struct.one_result* %7, %struct.one_result** @results, align 8
  %8 = load %struct.one_result*, %struct.one_result** @results, align 8
  %cmp2 = icmp eq %struct.one_result* %8, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load i32, i32* @allocated_results, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 %9)
  call void @exit(i32 -1) #9
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
  %call = call i64 @strlen(i8* %6) #10
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
  %call13 = call i64 @strlen(i8* %19) #10
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
  %call56 = call double @log(double %div55) #8
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
  %call64 = call double @exp(double %div63) #8
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
  %call = call i64 @strlen(i8* %4) #10
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
  %call11 = call i64 @strlen(i8* %20) #10
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
  %call = call i64 @clock() #8
  store i64 %call, i64* @start_time, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: noinline nounwind uwtable
define double @_Z5timerv() #1 {
entry:
  %call = call i64 @clock() #8
  store i64 %call, i64* @end_time, align 8
  %0 = load i64, i64* @end_time, align 8
  %1 = load i64, i64* @start_time, align 8
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  ret double %div
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #6 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %dZero = alloca double, align 8
  %DVZero = alloca %struct.ValueWrapper, align 8
  %ref.tmp = alloca double, align 8
  %DV10Zero = alloca %struct.ValueWrapper.0, align 8
  %ref.tmp1 = alloca double, align 8
  %agg.tmp = alloca %struct.ValueWrapper, align 8
  %agg.tmp7 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp18 = alloca %struct.PointerWrapper, align 8
  %agg.tmp19 = alloca %struct.PointerWrapper, align 8
  %agg.tmp22 = alloca %struct.ValueWrapper, align 8
  %agg.tmp24 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp25 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp26 = alloca %struct.ValueWrapper, align 8
  %agg.tmp30 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp41 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp42 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp43 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp56 = alloca %struct.PointerWrapper, align 8
  %agg.tmp57 = alloca %struct.PointerWrapper, align 8
  %agg.tmp58 = alloca %struct.PointerWrapper, align 8
  %agg.tmp59 = alloca %struct.PointerWrapper, align 8
  %agg.tmp64 = alloca %struct.ValueWrapper, align 8
  %agg.tmp66 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp67 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp68 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp69 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp70 = alloca %struct.ValueWrapper, align 8
  %agg.tmp76 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp87 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp88 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp89 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp90 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp91 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp106 = alloca %struct.PointerWrapper, align 8
  %agg.tmp107 = alloca %struct.PointerWrapper, align 8
  %agg.tmp108 = alloca %struct.PointerWrapper, align 8
  %agg.tmp109 = alloca %struct.PointerWrapper, align 8
  %agg.tmp114 = alloca %struct.ValueWrapper, align 8
  %agg.tmp116 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp117 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp118 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp119 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp120 = alloca %struct.ValueWrapper, align 8
  %agg.tmp126 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp137 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp138 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp139 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp140 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp141 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp156 = alloca %struct.PointerWrapper, align 8
  %agg.tmp157 = alloca %struct.PointerWrapper, align 8
  %agg.tmp158 = alloca %struct.PointerWrapper, align 8
  %agg.tmp159 = alloca %struct.PointerWrapper, align 8
  %agg.tmp164 = alloca %struct.ValueWrapper, align 8
  %agg.tmp166 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp167 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp168 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp169 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp170 = alloca %struct.ValueWrapper, align 8
  %agg.tmp176 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp187 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp188 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp189 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp190 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp191 = alloca %struct.ValueWrapper.0, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0.000000e+00, double* %dZero, align 8
  store double 0.000000e+00, double* %ref.tmp, align 8
  call void @_ZN12ValueWrapperIdEC2IdEERKT_(%struct.ValueWrapper* %DVZero, double* dereferenceable(8) %ref.tmp)
  store double 0.000000e+00, double* %ref.tmp1, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.0* %DV10Zero, double* dereferenceable(8) %ref.tmp1)
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #10
  store i32 %call, i32* @iterations, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp sgt i32 %3, 2
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx4, align 8
  %call5 = call double @atof(i8* %5) #10
  store double %call5, double* @init_value, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %6 = load double, double* @init_value, align 8
  %conv = fptosi double %6 to i32
  %add = add nsw i32 %conv, 123
  call void @srand(i32 %add) #8
  %7 = load double*, double** @dpb, align 8
  %8 = load double*, double** @dpe, align 8
  %9 = load double, double* @init_value, align 8
  call void @_ZN9benchmark4fillIPddEEvT_S2_T0_(double* %7, double* %8, double %9)
  %10 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpb, align 8
  %11 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpe, align 8
  call void @_ZN12ValueWrapperIdEC2IdEERKT_(%struct.ValueWrapper* %agg.tmp, double* dereferenceable(8) @init_value)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp, i32 0, i32 0
  %12 = load double, double* %coerce.dive, align 8
  call void @_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_(%struct.ValueWrapper* %10, %struct.ValueWrapper* %11, double %12)
  %13 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pb, align 8
  %14 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pe, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.0* %agg.tmp7, double* dereferenceable(8) @init_value)
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive14, i32 0, i32 0
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive15, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive16, i32 0, i32 0
  %15 = load double, double* %coerce.dive17, align 8
  call void @_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_(%struct.ValueWrapper.0* %13, %struct.ValueWrapper.0* %14, double %15)
  %16 = load double*, double** @dpb, align 8
  %17 = load double*, double** @dpe, align 8
  %18 = load double, double* %dZero, align 8
  call void @_Z15test_accumulateIPddEvT_S1_T0_PKc(double* %16, double* %17, double %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0))
  %19 = bitcast %struct.PointerWrapper* %agg.tmp18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.PointerWrapper* @dPb to i8*), i64 8, i32 8, i1 false)
  %20 = bitcast %struct.PointerWrapper* %agg.tmp19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast (%struct.PointerWrapper* @dPe to i8*), i64 8, i32 8, i1 false)
  %21 = load double, double* %dZero, align 8
  %coerce.dive20 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp18, i32 0, i32 0
  %22 = load double*, double** %coerce.dive20, align 8
  %coerce.dive21 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp19, i32 0, i32 0
  %23 = load double*, double** %coerce.dive21, align 8
  call void @_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc(double* %22, double* %23, double %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  %24 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpb, align 8
  %25 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpe, align 8
  %26 = bitcast %struct.ValueWrapper* %agg.tmp22 to i8*
  %27 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %coerce.dive23 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp22, i32 0, i32 0
  %28 = load double, double* %coerce.dive23, align 8
  call void @_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc(%struct.ValueWrapper* %24, %struct.ValueWrapper* %25, double %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0))
  %29 = bitcast %struct.PointerWrapper.9* %agg.tmp24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.PointerWrapper.9* @DVPb to i8*), i64 8, i32 8, i1 false)
  %30 = bitcast %struct.PointerWrapper.9* %agg.tmp25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast (%struct.PointerWrapper.9* @DVPe to i8*), i64 8, i32 8, i1 false)
  %31 = bitcast %struct.ValueWrapper* %agg.tmp26 to i8*
  %32 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false)
  %coerce.dive27 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp24, i32 0, i32 0
  %33 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive27, align 8
  %coerce.dive28 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp25, i32 0, i32 0
  %34 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive28, align 8
  %coerce.dive29 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp26, i32 0, i32 0
  %35 = load double, double* %coerce.dive29, align 8
  call void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc(%struct.ValueWrapper* %33, %struct.ValueWrapper* %34, double %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0))
  %36 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pb, align 8
  %37 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pe, align 8
  %38 = bitcast %struct.ValueWrapper.0* %agg.tmp30 to i8*
  %39 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 8, i32 8, i1 false)
  %coerce.dive31 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp30, i32 0, i32 0
  %coerce.dive32 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive31, i32 0, i32 0
  %coerce.dive33 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive32, i32 0, i32 0
  %coerce.dive34 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive33, i32 0, i32 0
  %coerce.dive35 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive34, i32 0, i32 0
  %coerce.dive36 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive35, i32 0, i32 0
  %coerce.dive37 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive36, i32 0, i32 0
  %coerce.dive38 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive37, i32 0, i32 0
  %coerce.dive39 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive38, i32 0, i32 0
  %coerce.dive40 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive39, i32 0, i32 0
  %40 = load double, double* %coerce.dive40, align 8
  call void @_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc(%struct.ValueWrapper.0* %36, %struct.ValueWrapper.0* %37, double %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  %41 = bitcast %struct.PointerWrapper.10* %agg.tmp41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast (%struct.PointerWrapper.10* @DV10Pb to i8*), i64 8, i32 8, i1 false)
  %42 = bitcast %struct.PointerWrapper.10* %agg.tmp42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.PointerWrapper.10* @DV10Pe to i8*), i64 8, i32 8, i1 false)
  %43 = bitcast %struct.ValueWrapper.0* %agg.tmp43 to i8*
  %44 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  %coerce.dive44 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp41, i32 0, i32 0
  %45 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive44, align 8
  %coerce.dive45 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp42, i32 0, i32 0
  %46 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive45, align 8
  %coerce.dive46 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp43, i32 0, i32 0
  %coerce.dive47 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive46, i32 0, i32 0
  %coerce.dive48 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive47, i32 0, i32 0
  %coerce.dive49 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive48, i32 0, i32 0
  %coerce.dive50 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive49, i32 0, i32 0
  %coerce.dive51 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive50, i32 0, i32 0
  %coerce.dive52 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive51, i32 0, i32 0
  %coerce.dive53 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive52, i32 0, i32 0
  %coerce.dive54 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive53, i32 0, i32 0
  %coerce.dive55 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive54, i32 0, i32 0
  %47 = load double, double* %coerce.dive55, align 8
  call void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc(%struct.ValueWrapper.0* %45, %struct.ValueWrapper.0* %46, double %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0))
  %48 = load i32, i32* @iterations, align 4
  %div = sdiv i32 %48, 2000
  store i32 %div, i32* @iterations, align 4
  %49 = load double*, double** @dMpb, align 8
  %50 = load double*, double** @dMpe, align 8
  call void @_ZN9benchmark11fill_randomIPddEEvT_S2_(double* %49, double* %50)
  %51 = load double*, double** @dMpb, align 8
  %52 = load double*, double** @dMpe, align 8
  %53 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpb, align 8
  call void @_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_(double* %51, double* %52, %struct.ValueWrapper* %53)
  %54 = load double*, double** @dMpb, align 8
  %55 = load double*, double** @dMpe, align 8
  %56 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpb, align 8
  call void @_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_(double* %54, double* %55, %struct.ValueWrapper.0* %56)
  %57 = load double*, double** @dMpb, align 8
  %58 = load double*, double** @dMpe, align 8
  %59 = load double*, double** @dpb, align 8
  %60 = load double*, double** @dpe, align 8
  %61 = load double, double* %dZero, align 8
  call void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(double* %57, double* %58, double* %59, double* %60, double %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0))
  %62 = bitcast %struct.PointerWrapper* %agg.tmp56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* bitcast (%struct.PointerWrapper* @dMPb to i8*), i64 8, i32 8, i1 false)
  %63 = bitcast %struct.PointerWrapper* %agg.tmp57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.PointerWrapper* @dMPe to i8*), i64 8, i32 8, i1 false)
  %64 = bitcast %struct.PointerWrapper* %agg.tmp58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* bitcast (%struct.PointerWrapper* @dPb to i8*), i64 8, i32 8, i1 false)
  %65 = bitcast %struct.PointerWrapper* %agg.tmp59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* bitcast (%struct.PointerWrapper* @dPe to i8*), i64 8, i32 8, i1 false)
  %66 = load double, double* %dZero, align 8
  %coerce.dive60 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp56, i32 0, i32 0
  %67 = load double*, double** %coerce.dive60, align 8
  %coerce.dive61 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp57, i32 0, i32 0
  %68 = load double*, double** %coerce.dive61, align 8
  %coerce.dive62 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp58, i32 0, i32 0
  %69 = load double*, double** %coerce.dive62, align 8
  %coerce.dive63 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp59, i32 0, i32 0
  %70 = load double*, double** %coerce.dive63, align 8
  call void @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(double* %67, double* %68, double* %69, double* %70, double %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0))
  %71 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpb, align 8
  %72 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpe, align 8
  %73 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpb, align 8
  %74 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpe, align 8
  %75 = bitcast %struct.ValueWrapper* %agg.tmp64 to i8*
  %76 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 8, i32 8, i1 false)
  %coerce.dive65 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp64, i32 0, i32 0
  %77 = load double, double* %coerce.dive65, align 8
  call void @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(%struct.ValueWrapper* %71, %struct.ValueWrapper* %72, %struct.ValueWrapper* %73, %struct.ValueWrapper* %74, double %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i32 0, i32 0))
  %78 = bitcast %struct.PointerWrapper.9* %agg.tmp66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast (%struct.PointerWrapper.9* @DVMPb to i8*), i64 8, i32 8, i1 false)
  %79 = bitcast %struct.PointerWrapper.9* %agg.tmp67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* bitcast (%struct.PointerWrapper.9* @DVMPe to i8*), i64 8, i32 8, i1 false)
  %80 = bitcast %struct.PointerWrapper.9* %agg.tmp68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* bitcast (%struct.PointerWrapper.9* @DVPb to i8*), i64 8, i32 8, i1 false)
  %81 = bitcast %struct.PointerWrapper.9* %agg.tmp69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast (%struct.PointerWrapper.9* @DVPe to i8*), i64 8, i32 8, i1 false)
  %82 = bitcast %struct.ValueWrapper* %agg.tmp70 to i8*
  %83 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 8, i32 8, i1 false)
  %coerce.dive71 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp66, i32 0, i32 0
  %84 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive71, align 8
  %coerce.dive72 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp67, i32 0, i32 0
  %85 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive72, align 8
  %coerce.dive73 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp68, i32 0, i32 0
  %86 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive73, align 8
  %coerce.dive74 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp69, i32 0, i32 0
  %87 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive74, align 8
  %coerce.dive75 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp70, i32 0, i32 0
  %88 = load double, double* %coerce.dive75, align 8
  call void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(%struct.ValueWrapper* %84, %struct.ValueWrapper* %85, %struct.ValueWrapper* %86, %struct.ValueWrapper* %87, double %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0))
  %89 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpb, align 8
  %90 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpe, align 8
  %91 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pb, align 8
  %92 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pe, align 8
  %93 = bitcast %struct.ValueWrapper.0* %agg.tmp76 to i8*
  %94 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 8, i32 8, i1 false)
  %coerce.dive77 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp76, i32 0, i32 0
  %coerce.dive78 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive77, i32 0, i32 0
  %coerce.dive79 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive78, i32 0, i32 0
  %coerce.dive80 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive79, i32 0, i32 0
  %coerce.dive81 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive80, i32 0, i32 0
  %coerce.dive82 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive81, i32 0, i32 0
  %coerce.dive83 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive82, i32 0, i32 0
  %coerce.dive84 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive83, i32 0, i32 0
  %coerce.dive85 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive84, i32 0, i32 0
  %coerce.dive86 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive85, i32 0, i32 0
  %95 = load double, double* %coerce.dive86, align 8
  call void @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(%struct.ValueWrapper.0* %89, %struct.ValueWrapper.0* %90, %struct.ValueWrapper.0* %91, %struct.ValueWrapper.0* %92, double %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i32 0, i32 0))
  %96 = bitcast %struct.PointerWrapper.10* %agg.tmp87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* bitcast (%struct.PointerWrapper.10* @DV10MPb to i8*), i64 8, i32 8, i1 false)
  %97 = bitcast %struct.PointerWrapper.10* %agg.tmp88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* bitcast (%struct.PointerWrapper.10* @DV10MPe to i8*), i64 8, i32 8, i1 false)
  %98 = bitcast %struct.PointerWrapper.10* %agg.tmp89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* bitcast (%struct.PointerWrapper.10* @DV10Pb to i8*), i64 8, i32 8, i1 false)
  %99 = bitcast %struct.PointerWrapper.10* %agg.tmp90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast (%struct.PointerWrapper.10* @DV10Pe to i8*), i64 8, i32 8, i1 false)
  %100 = bitcast %struct.ValueWrapper.0* %agg.tmp91 to i8*
  %101 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 8, i32 8, i1 false)
  %coerce.dive92 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp87, i32 0, i32 0
  %102 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive92, align 8
  %coerce.dive93 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp88, i32 0, i32 0
  %103 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive93, align 8
  %coerce.dive94 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp89, i32 0, i32 0
  %104 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive94, align 8
  %coerce.dive95 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp90, i32 0, i32 0
  %105 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive95, align 8
  %coerce.dive96 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp91, i32 0, i32 0
  %coerce.dive97 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive96, i32 0, i32 0
  %coerce.dive98 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive97, i32 0, i32 0
  %coerce.dive99 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive98, i32 0, i32 0
  %coerce.dive100 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive99, i32 0, i32 0
  %coerce.dive101 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive100, i32 0, i32 0
  %coerce.dive102 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive101, i32 0, i32 0
  %coerce.dive103 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive102, i32 0, i32 0
  %coerce.dive104 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive103, i32 0, i32 0
  %coerce.dive105 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive104, i32 0, i32 0
  %106 = load double, double* %coerce.dive105, align 8
  call void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(%struct.ValueWrapper.0* %102, %struct.ValueWrapper.0* %103, %struct.ValueWrapper.0* %104, %struct.ValueWrapper.0* %105, double %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0))
  %107 = load i32, i32* @iterations, align 4
  %mul = mul nsw i32 %107, 8
  store i32 %mul, i32* @iterations, align 4
  %108 = load double*, double** @dMpb, align 8
  %109 = load double*, double** @dMpe, align 8
  %110 = load double*, double** @dpb, align 8
  %111 = load double*, double** @dpe, align 8
  %112 = load double, double* %dZero, align 8
  call void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(double* %108, double* %109, double* %110, double* %111, double %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0))
  %113 = bitcast %struct.PointerWrapper* %agg.tmp106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* bitcast (%struct.PointerWrapper* @dMPb to i8*), i64 8, i32 8, i1 false)
  %114 = bitcast %struct.PointerWrapper* %agg.tmp107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* bitcast (%struct.PointerWrapper* @dMPe to i8*), i64 8, i32 8, i1 false)
  %115 = bitcast %struct.PointerWrapper* %agg.tmp108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* bitcast (%struct.PointerWrapper* @dPb to i8*), i64 8, i32 8, i1 false)
  %116 = bitcast %struct.PointerWrapper* %agg.tmp109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* bitcast (%struct.PointerWrapper* @dPe to i8*), i64 8, i32 8, i1 false)
  %117 = load double, double* %dZero, align 8
  %coerce.dive110 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp106, i32 0, i32 0
  %118 = load double*, double** %coerce.dive110, align 8
  %coerce.dive111 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp107, i32 0, i32 0
  %119 = load double*, double** %coerce.dive111, align 8
  %coerce.dive112 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp108, i32 0, i32 0
  %120 = load double*, double** %coerce.dive112, align 8
  %coerce.dive113 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp109, i32 0, i32 0
  %121 = load double*, double** %coerce.dive113, align 8
  call void @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(double* %118, double* %119, double* %120, double* %121, double %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0))
  %122 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpb, align 8
  %123 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpe, align 8
  %124 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpb, align 8
  %125 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpe, align 8
  %126 = bitcast %struct.ValueWrapper* %agg.tmp114 to i8*
  %127 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 8, i32 8, i1 false)
  %coerce.dive115 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp114, i32 0, i32 0
  %128 = load double, double* %coerce.dive115, align 8
  call void @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(%struct.ValueWrapper* %122, %struct.ValueWrapper* %123, %struct.ValueWrapper* %124, %struct.ValueWrapper* %125, double %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0))
  %129 = bitcast %struct.PointerWrapper.9* %agg.tmp116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* bitcast (%struct.PointerWrapper.9* @DVMPb to i8*), i64 8, i32 8, i1 false)
  %130 = bitcast %struct.PointerWrapper.9* %agg.tmp117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* bitcast (%struct.PointerWrapper.9* @DVMPe to i8*), i64 8, i32 8, i1 false)
  %131 = bitcast %struct.PointerWrapper.9* %agg.tmp118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* bitcast (%struct.PointerWrapper.9* @DVPb to i8*), i64 8, i32 8, i1 false)
  %132 = bitcast %struct.PointerWrapper.9* %agg.tmp119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* bitcast (%struct.PointerWrapper.9* @DVPe to i8*), i64 8, i32 8, i1 false)
  %133 = bitcast %struct.ValueWrapper* %agg.tmp120 to i8*
  %134 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 8, i32 8, i1 false)
  %coerce.dive121 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp116, i32 0, i32 0
  %135 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive121, align 8
  %coerce.dive122 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp117, i32 0, i32 0
  %136 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive122, align 8
  %coerce.dive123 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp118, i32 0, i32 0
  %137 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive123, align 8
  %coerce.dive124 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp119, i32 0, i32 0
  %138 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive124, align 8
  %coerce.dive125 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp120, i32 0, i32 0
  %139 = load double, double* %coerce.dive125, align 8
  call void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(%struct.ValueWrapper* %135, %struct.ValueWrapper* %136, %struct.ValueWrapper* %137, %struct.ValueWrapper* %138, double %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0))
  %140 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpb, align 8
  %141 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpe, align 8
  %142 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pb, align 8
  %143 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pe, align 8
  %144 = bitcast %struct.ValueWrapper.0* %agg.tmp126 to i8*
  %145 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 8, i32 8, i1 false)
  %coerce.dive127 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp126, i32 0, i32 0
  %coerce.dive128 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive127, i32 0, i32 0
  %coerce.dive129 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive128, i32 0, i32 0
  %coerce.dive130 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive129, i32 0, i32 0
  %coerce.dive131 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive130, i32 0, i32 0
  %coerce.dive132 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive131, i32 0, i32 0
  %coerce.dive133 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive132, i32 0, i32 0
  %coerce.dive134 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive133, i32 0, i32 0
  %coerce.dive135 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive134, i32 0, i32 0
  %coerce.dive136 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive135, i32 0, i32 0
  %146 = load double, double* %coerce.dive136, align 8
  call void @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(%struct.ValueWrapper.0* %140, %struct.ValueWrapper.0* %141, %struct.ValueWrapper.0* %142, %struct.ValueWrapper.0* %143, double %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0))
  %147 = bitcast %struct.PointerWrapper.10* %agg.tmp137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* bitcast (%struct.PointerWrapper.10* @DV10MPb to i8*), i64 8, i32 8, i1 false)
  %148 = bitcast %struct.PointerWrapper.10* %agg.tmp138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* bitcast (%struct.PointerWrapper.10* @DV10MPe to i8*), i64 8, i32 8, i1 false)
  %149 = bitcast %struct.PointerWrapper.10* %agg.tmp139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* bitcast (%struct.PointerWrapper.10* @DV10Pb to i8*), i64 8, i32 8, i1 false)
  %150 = bitcast %struct.PointerWrapper.10* %agg.tmp140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* bitcast (%struct.PointerWrapper.10* @DV10Pe to i8*), i64 8, i32 8, i1 false)
  %151 = bitcast %struct.ValueWrapper.0* %agg.tmp141 to i8*
  %152 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 8, i32 8, i1 false)
  %coerce.dive142 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp137, i32 0, i32 0
  %153 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive142, align 8
  %coerce.dive143 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp138, i32 0, i32 0
  %154 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive143, align 8
  %coerce.dive144 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp139, i32 0, i32 0
  %155 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive144, align 8
  %coerce.dive145 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp140, i32 0, i32 0
  %156 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive145, align 8
  %coerce.dive146 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp141, i32 0, i32 0
  %coerce.dive147 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive146, i32 0, i32 0
  %coerce.dive148 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive147, i32 0, i32 0
  %coerce.dive149 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive148, i32 0, i32 0
  %coerce.dive150 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive149, i32 0, i32 0
  %coerce.dive151 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive150, i32 0, i32 0
  %coerce.dive152 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive151, i32 0, i32 0
  %coerce.dive153 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive152, i32 0, i32 0
  %coerce.dive154 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive153, i32 0, i32 0
  %coerce.dive155 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive154, i32 0, i32 0
  %157 = load double, double* %coerce.dive155, align 8
  call void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(%struct.ValueWrapper.0* %153, %struct.ValueWrapper.0* %154, %struct.ValueWrapper.0* %155, %struct.ValueWrapper.0* %156, double %157, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0))
  %158 = load double*, double** @dMpb, align 8
  %159 = load double*, double** @dMpe, align 8
  %160 = load double*, double** @dpb, align 8
  %161 = load double*, double** @dpe, align 8
  %162 = load double, double* %dZero, align 8
  call void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(double* %158, double* %159, double* %160, double* %161, double %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0))
  %163 = bitcast %struct.PointerWrapper* %agg.tmp156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* bitcast (%struct.PointerWrapper* @dMPb to i8*), i64 8, i32 8, i1 false)
  %164 = bitcast %struct.PointerWrapper* %agg.tmp157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* bitcast (%struct.PointerWrapper* @dMPe to i8*), i64 8, i32 8, i1 false)
  %165 = bitcast %struct.PointerWrapper* %agg.tmp158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* bitcast (%struct.PointerWrapper* @dPb to i8*), i64 8, i32 8, i1 false)
  %166 = bitcast %struct.PointerWrapper* %agg.tmp159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* bitcast (%struct.PointerWrapper* @dPe to i8*), i64 8, i32 8, i1 false)
  %167 = load double, double* %dZero, align 8
  %coerce.dive160 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp156, i32 0, i32 0
  %168 = load double*, double** %coerce.dive160, align 8
  %coerce.dive161 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp157, i32 0, i32 0
  %169 = load double*, double** %coerce.dive161, align 8
  %coerce.dive162 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp158, i32 0, i32 0
  %170 = load double*, double** %coerce.dive162, align 8
  %coerce.dive163 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp159, i32 0, i32 0
  %171 = load double*, double** %coerce.dive163, align 8
  call void @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(double* %168, double* %169, double* %170, double* %171, double %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0))
  %172 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpb, align 8
  %173 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVMpe, align 8
  %174 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpb, align 8
  %175 = load %struct.ValueWrapper*, %struct.ValueWrapper** @DVpe, align 8
  %176 = bitcast %struct.ValueWrapper* %agg.tmp164 to i8*
  %177 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 8, i32 8, i1 false)
  %coerce.dive165 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp164, i32 0, i32 0
  %178 = load double, double* %coerce.dive165, align 8
  call void @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(%struct.ValueWrapper* %172, %struct.ValueWrapper* %173, %struct.ValueWrapper* %174, %struct.ValueWrapper* %175, double %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i32 0, i32 0))
  %179 = bitcast %struct.PointerWrapper.9* %agg.tmp166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* bitcast (%struct.PointerWrapper.9* @DVMPb to i8*), i64 8, i32 8, i1 false)
  %180 = bitcast %struct.PointerWrapper.9* %agg.tmp167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* bitcast (%struct.PointerWrapper.9* @DVMPe to i8*), i64 8, i32 8, i1 false)
  %181 = bitcast %struct.PointerWrapper.9* %agg.tmp168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* bitcast (%struct.PointerWrapper.9* @DVPb to i8*), i64 8, i32 8, i1 false)
  %182 = bitcast %struct.PointerWrapper.9* %agg.tmp169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* bitcast (%struct.PointerWrapper.9* @DVPe to i8*), i64 8, i32 8, i1 false)
  %183 = bitcast %struct.ValueWrapper* %agg.tmp170 to i8*
  %184 = bitcast %struct.ValueWrapper* %DVZero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 8, i32 8, i1 false)
  %coerce.dive171 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp166, i32 0, i32 0
  %185 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive171, align 8
  %coerce.dive172 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp167, i32 0, i32 0
  %186 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive172, align 8
  %coerce.dive173 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp168, i32 0, i32 0
  %187 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive173, align 8
  %coerce.dive174 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp169, i32 0, i32 0
  %188 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive174, align 8
  %coerce.dive175 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp170, i32 0, i32 0
  %189 = load double, double* %coerce.dive175, align 8
  call void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(%struct.ValueWrapper* %185, %struct.ValueWrapper* %186, %struct.ValueWrapper* %187, %struct.ValueWrapper* %188, double %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i32 0, i32 0))
  %190 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpb, align 8
  %191 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10Mpe, align 8
  %192 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pb, align 8
  %193 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** @DV10pe, align 8
  %194 = bitcast %struct.ValueWrapper.0* %agg.tmp176 to i8*
  %195 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %195, i64 8, i32 8, i1 false)
  %coerce.dive177 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp176, i32 0, i32 0
  %coerce.dive178 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive177, i32 0, i32 0
  %coerce.dive179 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive178, i32 0, i32 0
  %coerce.dive180 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive179, i32 0, i32 0
  %coerce.dive181 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive180, i32 0, i32 0
  %coerce.dive182 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive181, i32 0, i32 0
  %coerce.dive183 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive182, i32 0, i32 0
  %coerce.dive184 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive183, i32 0, i32 0
  %coerce.dive185 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive184, i32 0, i32 0
  %coerce.dive186 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive185, i32 0, i32 0
  %196 = load double, double* %coerce.dive186, align 8
  call void @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(%struct.ValueWrapper.0* %190, %struct.ValueWrapper.0* %191, %struct.ValueWrapper.0* %192, %struct.ValueWrapper.0* %193, double %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0))
  %197 = bitcast %struct.PointerWrapper.10* %agg.tmp187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* bitcast (%struct.PointerWrapper.10* @DV10MPb to i8*), i64 8, i32 8, i1 false)
  %198 = bitcast %struct.PointerWrapper.10* %agg.tmp188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* bitcast (%struct.PointerWrapper.10* @DV10MPe to i8*), i64 8, i32 8, i1 false)
  %199 = bitcast %struct.PointerWrapper.10* %agg.tmp189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %199, i8* bitcast (%struct.PointerWrapper.10* @DV10Pb to i8*), i64 8, i32 8, i1 false)
  %200 = bitcast %struct.PointerWrapper.10* %agg.tmp190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* bitcast (%struct.PointerWrapper.10* @DV10Pe to i8*), i64 8, i32 8, i1 false)
  %201 = bitcast %struct.ValueWrapper.0* %agg.tmp191 to i8*
  %202 = bitcast %struct.ValueWrapper.0* %DV10Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %202, i64 8, i32 8, i1 false)
  %coerce.dive192 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp187, i32 0, i32 0
  %203 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive192, align 8
  %coerce.dive193 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp188, i32 0, i32 0
  %204 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive193, align 8
  %coerce.dive194 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp189, i32 0, i32 0
  %205 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive194, align 8
  %coerce.dive195 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp190, i32 0, i32 0
  %206 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive195, align 8
  %coerce.dive196 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp191, i32 0, i32 0
  %coerce.dive197 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive196, i32 0, i32 0
  %coerce.dive198 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive197, i32 0, i32 0
  %coerce.dive199 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive198, i32 0, i32 0
  %coerce.dive200 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive199, i32 0, i32 0
  %coerce.dive201 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive200, i32 0, i32 0
  %coerce.dive202 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive201, i32 0, i32 0
  %coerce.dive203 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive202, i32 0, i32 0
  %coerce.dive204 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive203, i32 0, i32 0
  %coerce.dive205 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive204, i32 0, i32 0
  %207 = load double, double* %coerce.dive205, align 8
  call void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(%struct.ValueWrapper.0* %203, %struct.ValueWrapper.0* %204, %struct.ValueWrapper.0* %205, %struct.ValueWrapper.0* %206, double %207, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.49, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIdEC2IdEERKT_(%struct.ValueWrapper* %this, double* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper* %this, %struct.ValueWrapper** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %value, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.0* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.0*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.0* %this, %struct.ValueWrapper.0** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.1* %value, double* dereferenceable(8) %0)
  ret void
}

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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark4fillIP12ValueWrapperIdES2_EEvT_S4_T0_(%struct.ValueWrapper* %first, %struct.ValueWrapper* %last, double %value.coerce) #1 comdat {
entry:
  %value = alloca %struct.ValueWrapper, align 8
  %first.addr = alloca %struct.ValueWrapper*, align 8
  %last.addr = alloca %struct.ValueWrapper*, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %value, i32 0, i32 0
  store double %value.coerce, double* %coerce.dive, align 8
  store %struct.ValueWrapper* %first, %struct.ValueWrapper** %first.addr, align 8
  store %struct.ValueWrapper* %last, %struct.ValueWrapper** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %last.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %2, i32 1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %first.addr, align 8
  %3 = bitcast %struct.ValueWrapper* %2 to i8*
  %4 = bitcast %struct.ValueWrapper* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark4fillIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_T0_(%struct.ValueWrapper.0* %first, %struct.ValueWrapper.0* %last, double %value.coerce) #1 comdat {
entry:
  %value = alloca %struct.ValueWrapper.0, align 8
  %first.addr = alloca %struct.ValueWrapper.0*, align 8
  %last.addr = alloca %struct.ValueWrapper.0*, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %value, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %value.coerce, double* %coerce.dive9, align 8
  store %struct.ValueWrapper.0* %first, %struct.ValueWrapper.0** %first.addr, align 8
  store %struct.ValueWrapper.0* %last, %struct.ValueWrapper.0** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %last.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper.0* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %2, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %first.addr, align 8
  %3 = bitcast %struct.ValueWrapper.0* %2 to i8*
  %4 = bitcast %struct.ValueWrapper.0* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc(double* %first.coerce, double* %last.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper, align 8
  %last = alloca %struct.PointerWrapper, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %agg.tmp2 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %last, i32 0, i32 0
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
  %2 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper* %agg.tmp2 to i8*
  %5 = bitcast %struct.PointerWrapper* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %7 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp2, i32 0, i32 0
  %8 = load double*, double** %coerce.dive4, align 8
  %call = call double @_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_(double* %7, double* %8, double %6)
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
define linkonce_odr void @_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc(%struct.ValueWrapper* %first, %struct.ValueWrapper* %last, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper, align 8
  %first.addr = alloca %struct.ValueWrapper*, align 8
  %last.addr = alloca %struct.ValueWrapper*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.ValueWrapper, align 8
  %coerce = alloca %struct.ValueWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive, align 8
  store %struct.ValueWrapper* %first, %struct.ValueWrapper** %first.addr, align 8
  store %struct.ValueWrapper* %last, %struct.ValueWrapper** %last.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %last.addr, align 8
  %4 = bitcast %struct.ValueWrapper* %agg.tmp to i8*
  %5 = bitcast %struct.ValueWrapper* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp, i32 0, i32 0
  %6 = load double, double* %coerce.dive1, align 8
  %call = call double @_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_(%struct.ValueWrapper* %2, %struct.ValueWrapper* %3, double %6)
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive2, align 8
  %call3 = call double @_ZNK12ValueWrapperIdEcvT_IdEEv(%struct.ValueWrapper* %coerce)
  call void @_Z9check_sumd(double %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc(%struct.ValueWrapper* %first.coerce, %struct.ValueWrapper* %last.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper.9, align 8
  %last = alloca %struct.PointerWrapper.9, align 8
  %zero = alloca %struct.ValueWrapper, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp3 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp4 = alloca %struct.ValueWrapper, align 8
  %coerce = alloca %struct.ValueWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %first, i32 0, i32 0
  store %struct.ValueWrapper* %first.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %last, i32 0, i32 0
  store %struct.ValueWrapper* %last.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive2, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.9* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.9* %agg.tmp3 to i8*
  %5 = bitcast %struct.PointerWrapper.9* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.ValueWrapper* %agg.tmp4 to i8*
  %7 = bitcast %struct.ValueWrapper* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp3, i32 0, i32 0
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp4, i32 0, i32 0
  %10 = load double, double* %coerce.dive7, align 8
  %call = call double @_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_(%struct.ValueWrapper* %8, %struct.ValueWrapper* %9, double %10)
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive8, align 8
  %call9 = call double @_ZNK12ValueWrapperIdEcvT_IdEEv(%struct.ValueWrapper* %coerce)
  call void @_Z9check_sumd(double %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc(%struct.ValueWrapper.0* %first, %struct.ValueWrapper.0* %last, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper.0, align 8
  %first.addr = alloca %struct.ValueWrapper.0*, align 8
  %last.addr = alloca %struct.ValueWrapper.0*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.ValueWrapper.0, align 8
  %coerce = alloca %struct.ValueWrapper.0, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive9, align 8
  store %struct.ValueWrapper.0* %first, %struct.ValueWrapper.0** %first.addr, align 8
  store %struct.ValueWrapper.0* %last, %struct.ValueWrapper.0** %last.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %last.addr, align 8
  %4 = bitcast %struct.ValueWrapper.0* %agg.tmp to i8*
  %5 = bitcast %struct.ValueWrapper.0* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive14, i32 0, i32 0
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive15, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive16, i32 0, i32 0
  %coerce.dive18 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive17, i32 0, i32 0
  %coerce.dive19 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive18, i32 0, i32 0
  %6 = load double, double* %coerce.dive19, align 8
  %call = call double @_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_(%struct.ValueWrapper.0* %2, %struct.ValueWrapper.0* %3, double %6)
  %coerce.dive20 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %coerce, i32 0, i32 0
  %coerce.dive21 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive20, i32 0, i32 0
  %coerce.dive22 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive21, i32 0, i32 0
  %coerce.dive23 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive22, i32 0, i32 0
  %coerce.dive24 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive23, i32 0, i32 0
  %coerce.dive25 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive24, i32 0, i32 0
  %coerce.dive26 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive25, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive26, i32 0, i32 0
  %coerce.dive28 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive27, i32 0, i32 0
  %coerce.dive29 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive28, i32 0, i32 0
  store double %call, double* %coerce.dive29, align 8
  %call30 = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.0* %coerce)
  call void @_Z9check_sumd(double %call30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc(%struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0* %last.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper.10, align 8
  %last = alloca %struct.PointerWrapper.10, align 8
  %zero = alloca %struct.ValueWrapper.0, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp12 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp13 = alloca %struct.ValueWrapper.0, align 8
  %coerce = alloca %struct.ValueWrapper.0, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %first, i32 0, i32 0
  store %struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %last, i32 0, i32 0
  store %struct.ValueWrapper.0* %last.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive10, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive11, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.10* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.10* %agg.tmp12 to i8*
  %5 = bitcast %struct.PointerWrapper.10* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.ValueWrapper.0* %agg.tmp13 to i8*
  %7 = bitcast %struct.ValueWrapper.0* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive14 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp12, i32 0, i32 0
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp13, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive16, i32 0, i32 0
  %coerce.dive18 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive17, i32 0, i32 0
  %coerce.dive19 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive18, i32 0, i32 0
  %coerce.dive20 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive19, i32 0, i32 0
  %coerce.dive21 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive20, i32 0, i32 0
  %coerce.dive22 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive21, i32 0, i32 0
  %coerce.dive23 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive22, i32 0, i32 0
  %coerce.dive24 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive23, i32 0, i32 0
  %coerce.dive25 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive24, i32 0, i32 0
  %10 = load double, double* %coerce.dive25, align 8
  %call = call double @_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_(%struct.ValueWrapper.0* %8, %struct.ValueWrapper.0* %9, double %10)
  %coerce.dive26 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %coerce, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive26, i32 0, i32 0
  %coerce.dive28 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive27, i32 0, i32 0
  %coerce.dive29 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive28, i32 0, i32 0
  %coerce.dive30 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive29, i32 0, i32 0
  %coerce.dive31 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive30, i32 0, i32 0
  %coerce.dive32 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive31, i32 0, i32 0
  %coerce.dive33 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive32, i32 0, i32 0
  %coerce.dive34 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive33, i32 0, i32 0
  %coerce.dive35 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive34, i32 0, i32 0
  store double %call, double* %coerce.dive35, align 8
  %call36 = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.0* %coerce)
  call void @_Z9check_sumd(double %call36)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
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
  %call = call i32 @rand() #8
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
define linkonce_odr void @_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_(double* %firstSource, double* %lastSource, %struct.ValueWrapper* %firstDest) #0 comdat {
entry:
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper*, align 8
  %ref.tmp = alloca %struct.ValueWrapper, align 8
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  store %struct.ValueWrapper* %firstDest, %struct.ValueWrapper** %firstDest.addr, align 8
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
  call void @_ZN12ValueWrapperIdEC2IdEERKT_(%struct.ValueWrapper* %ref.tmp, double* dereferenceable(8) %2)
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %3, i32 1
  store %struct.ValueWrapper* %incdec.ptr1, %struct.ValueWrapper** %firstDest.addr, align 8
  %4 = bitcast %struct.ValueWrapper* %3 to i8*
  %5 = bitcast %struct.ValueWrapper* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyIPdP12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEvT_SE_T0_(double* %firstSource, double* %lastSource, %struct.ValueWrapper.0* %firstDest) #0 comdat {
entry:
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.0, align 8
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  store %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0** %firstDest.addr, align 8
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
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.0* %ref.tmp, double* dereferenceable(8) %2)
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %3, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr1, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %4 = bitcast %struct.ValueWrapper.0* %3 to i8*
  %5 = bitcast %struct.ValueWrapper.0* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
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
define linkonce_odr void @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce, double* %lastDest.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper, align 8
  %lastSource = alloca %struct.PointerWrapper, align 8
  %firstDest = alloca %struct.PointerWrapper, align 8
  %lastDest = alloca %struct.PointerWrapper, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %agg.tmp4 = alloca %struct.PointerWrapper, align 8
  %agg.tmp5 = alloca %struct.PointerWrapper, align 8
  %agg.tmp9 = alloca %struct.PointerWrapper, align 8
  %agg.tmp10 = alloca %struct.PointerWrapper, align 8
  %agg.tmp13 = alloca %struct.PointerWrapper, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastDest, i32 0, i32 0
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
  %2 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper* %agg.tmp4 to i8*
  %5 = bitcast %struct.PointerWrapper* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper* %agg.tmp5 to i8*
  %7 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp5, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_(double* %8, double* %9, double* %10)
  %11 = bitcast %struct.PointerWrapper* %agg.tmp9 to i8*
  %12 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper* %agg.tmp10 to i8*
  %14 = bitcast %struct.PointerWrapper* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp9, i32 0, i32 0
  %15 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive12, align 8
  call void @_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_(double* %15, double* %16)
  %17 = bitcast %struct.PointerWrapper* %agg.tmp13 to i8*
  %18 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper* %agg.tmp14 to i8*
  %20 = bitcast %struct.PointerWrapper* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp13, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp14, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_Z13verify_sortedI14PointerWrapperIdEEvT_S2_(double* %21, double* %22)
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
define linkonce_odr void @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(%struct.ValueWrapper* %firstSource, %struct.ValueWrapper* %lastSource, %struct.ValueWrapper* %firstDest, %struct.ValueWrapper* %lastDest, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper, align 8
  %firstSource.addr = alloca %struct.ValueWrapper*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper*, align 8
  %lastDest.addr = alloca %struct.ValueWrapper*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive, align 8
  store %struct.ValueWrapper* %firstSource, %struct.ValueWrapper** %firstSource.addr, align 8
  store %struct.ValueWrapper* %lastSource, %struct.ValueWrapper** %lastSource.addr, align 8
  store %struct.ValueWrapper* %firstDest, %struct.ValueWrapper** %firstDest.addr, align 8
  store %struct.ValueWrapper* %lastDest, %struct.ValueWrapper** %lastDest.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastSource.addr, align 8
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_(%struct.ValueWrapper* %2, %struct.ValueWrapper* %3, %struct.ValueWrapper* %4)
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %6 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastDest.addr, align 8
  call void @_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %5, %struct.ValueWrapper* %6)
  %7 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastDest.addr, align 8
  call void @_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_(%struct.ValueWrapper* %7, %struct.ValueWrapper* %8)
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
define linkonce_odr void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(%struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper* %lastDest.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.9, align 8
  %lastSource = alloca %struct.PointerWrapper.9, align 8
  %firstDest = alloca %struct.PointerWrapper.9, align 8
  %lastDest = alloca %struct.PointerWrapper.9, align 8
  %zero = alloca %struct.ValueWrapper, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp5 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp6 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp10 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp11 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp15 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastDest, i32 0, i32 0
  store %struct.ValueWrapper* %lastDest.coerce, %struct.ValueWrapper** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive4, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.9* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.9* %agg.tmp5 to i8*
  %5 = bitcast %struct.PointerWrapper.9* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.9* %agg.tmp6 to i8*
  %7 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp5, i32 0, i32 0
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp6, i32 0, i32 0
  %10 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive9, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_(%struct.ValueWrapper* %8, %struct.ValueWrapper* %9, %struct.ValueWrapper* %10)
  %11 = bitcast %struct.PointerWrapper.9* %agg.tmp10 to i8*
  %12 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper.9* %agg.tmp11 to i8*
  %14 = bitcast %struct.PointerWrapper.9* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp10, i32 0, i32 0
  %15 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp11, i32 0, i32 0
  %16 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive13, align 8
  call void @_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %15, %struct.ValueWrapper* %16)
  %17 = bitcast %struct.PointerWrapper.9* %agg.tmp14 to i8*
  %18 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper.9* %agg.tmp15 to i8*
  %20 = bitcast %struct.PointerWrapper.9* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp14, i32 0, i32 0
  %21 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp15, i32 0, i32 0
  %22 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive17, align 8
  call void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_(%struct.ValueWrapper* %21, %struct.ValueWrapper* %22)
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
define linkonce_odr void @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(%struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0* %lastDest, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper.0, align 8
  %firstSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive9, align 8
  store %struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0** %firstSource.addr, align 8
  store %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0** %lastSource.addr, align 8
  store %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0** %firstDest.addr, align 8
  store %struct.ValueWrapper.0* %lastDest, %struct.ValueWrapper.0** %lastDest.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastSource.addr, align 8
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_(%struct.ValueWrapper.0* %2, %struct.ValueWrapper.0* %3, %struct.ValueWrapper.0* %4)
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %6 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastDest.addr, align 8
  call void @_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %5, %struct.ValueWrapper.0* %6)
  %7 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastDest.addr, align 8
  call void @_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_(%struct.ValueWrapper.0* %7, %struct.ValueWrapper.0* %8)
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
define linkonce_odr void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(%struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0* %lastDest.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.10, align 8
  %lastSource = alloca %struct.PointerWrapper.10, align 8
  %firstDest = alloca %struct.PointerWrapper.10, align 8
  %lastDest = alloca %struct.PointerWrapper.10, align 8
  %zero = alloca %struct.ValueWrapper.0, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp15 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp19 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp20 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp23 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp24 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastDest.coerce, %struct.ValueWrapper.0** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive12, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive13, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.10* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.10* %agg.tmp14 to i8*
  %5 = bitcast %struct.PointerWrapper.10* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.10* %agg.tmp15 to i8*
  %7 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp14, i32 0, i32 0
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp15, i32 0, i32 0
  %10 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive18, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_(%struct.ValueWrapper.0* %8, %struct.ValueWrapper.0* %9, %struct.ValueWrapper.0* %10)
  %11 = bitcast %struct.PointerWrapper.10* %agg.tmp19 to i8*
  %12 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper.10* %agg.tmp20 to i8*
  %14 = bitcast %struct.PointerWrapper.10* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive21 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp19, i32 0, i32 0
  %15 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive21, align 8
  %coerce.dive22 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp20, i32 0, i32 0
  %16 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive22, align 8
  call void @_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %15, %struct.ValueWrapper.0* %16)
  %17 = bitcast %struct.PointerWrapper.10* %agg.tmp23 to i8*
  %18 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper.10* %agg.tmp24 to i8*
  %20 = bitcast %struct.PointerWrapper.10* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp23, i32 0, i32 0
  %21 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive25, align 8
  %coerce.dive26 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp24, i32 0, i32 0
  %22 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive26, align 8
  call void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_(%struct.ValueWrapper.0* %21, %struct.ValueWrapper.0* %22)
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
define linkonce_odr void @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce, double* %lastDest.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper, align 8
  %lastSource = alloca %struct.PointerWrapper, align 8
  %firstDest = alloca %struct.PointerWrapper, align 8
  %lastDest = alloca %struct.PointerWrapper, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %agg.tmp4 = alloca %struct.PointerWrapper, align 8
  %agg.tmp5 = alloca %struct.PointerWrapper, align 8
  %agg.tmp9 = alloca %struct.PointerWrapper, align 8
  %agg.tmp10 = alloca %struct.PointerWrapper, align 8
  %agg.tmp13 = alloca %struct.PointerWrapper, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastDest, i32 0, i32 0
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
  %2 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper* %agg.tmp4 to i8*
  %5 = bitcast %struct.PointerWrapper* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper* %agg.tmp5 to i8*
  %7 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp5, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_(double* %8, double* %9, double* %10)
  %11 = bitcast %struct.PointerWrapper* %agg.tmp9 to i8*
  %12 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper* %agg.tmp10 to i8*
  %14 = bitcast %struct.PointerWrapper* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp9, i32 0, i32 0
  %15 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive12, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(double* %15, double* %16)
  %17 = bitcast %struct.PointerWrapper* %agg.tmp13 to i8*
  %18 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper* %agg.tmp14 to i8*
  %20 = bitcast %struct.PointerWrapper* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp13, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp14, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_Z13verify_sortedI14PointerWrapperIdEEvT_S2_(double* %21, double* %22)
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
define linkonce_odr void @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(%struct.ValueWrapper* %firstSource, %struct.ValueWrapper* %lastSource, %struct.ValueWrapper* %firstDest, %struct.ValueWrapper* %lastDest, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper, align 8
  %firstSource.addr = alloca %struct.ValueWrapper*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper*, align 8
  %lastDest.addr = alloca %struct.ValueWrapper*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive, align 8
  store %struct.ValueWrapper* %firstSource, %struct.ValueWrapper** %firstSource.addr, align 8
  store %struct.ValueWrapper* %lastSource, %struct.ValueWrapper** %lastSource.addr, align 8
  store %struct.ValueWrapper* %firstDest, %struct.ValueWrapper** %firstDest.addr, align 8
  store %struct.ValueWrapper* %lastDest, %struct.ValueWrapper** %lastDest.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastSource.addr, align 8
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_(%struct.ValueWrapper* %2, %struct.ValueWrapper* %3, %struct.ValueWrapper* %4)
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %6 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastDest.addr, align 8
  call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %5, %struct.ValueWrapper* %6)
  %7 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastDest.addr, align 8
  call void @_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_(%struct.ValueWrapper* %7, %struct.ValueWrapper* %8)
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
define linkonce_odr void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(%struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper* %lastDest.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.9, align 8
  %lastSource = alloca %struct.PointerWrapper.9, align 8
  %firstDest = alloca %struct.PointerWrapper.9, align 8
  %lastDest = alloca %struct.PointerWrapper.9, align 8
  %zero = alloca %struct.ValueWrapper, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp5 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp6 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp10 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp11 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp15 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastDest, i32 0, i32 0
  store %struct.ValueWrapper* %lastDest.coerce, %struct.ValueWrapper** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive4, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.9* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.9* %agg.tmp5 to i8*
  %5 = bitcast %struct.PointerWrapper.9* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.9* %agg.tmp6 to i8*
  %7 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp5, i32 0, i32 0
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp6, i32 0, i32 0
  %10 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive9, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_(%struct.ValueWrapper* %8, %struct.ValueWrapper* %9, %struct.ValueWrapper* %10)
  %11 = bitcast %struct.PointerWrapper.9* %agg.tmp10 to i8*
  %12 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper.9* %agg.tmp11 to i8*
  %14 = bitcast %struct.PointerWrapper.9* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp10, i32 0, i32 0
  %15 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp11, i32 0, i32 0
  %16 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive13, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %15, %struct.ValueWrapper* %16)
  %17 = bitcast %struct.PointerWrapper.9* %agg.tmp14 to i8*
  %18 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper.9* %agg.tmp15 to i8*
  %20 = bitcast %struct.PointerWrapper.9* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp14, i32 0, i32 0
  %21 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp15, i32 0, i32 0
  %22 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive17, align 8
  call void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_(%struct.ValueWrapper* %21, %struct.ValueWrapper* %22)
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
define linkonce_odr void @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(%struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0* %lastDest, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper.0, align 8
  %firstSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive9, align 8
  store %struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0** %firstSource.addr, align 8
  store %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0** %lastSource.addr, align 8
  store %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0** %firstDest.addr, align 8
  store %struct.ValueWrapper.0* %lastDest, %struct.ValueWrapper.0** %lastDest.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastSource.addr, align 8
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_(%struct.ValueWrapper.0* %2, %struct.ValueWrapper.0* %3, %struct.ValueWrapper.0* %4)
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %6 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastDest.addr, align 8
  call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %5, %struct.ValueWrapper.0* %6)
  %7 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastDest.addr, align 8
  call void @_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_(%struct.ValueWrapper.0* %7, %struct.ValueWrapper.0* %8)
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
define linkonce_odr void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(%struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0* %lastDest.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.10, align 8
  %lastSource = alloca %struct.PointerWrapper.10, align 8
  %firstDest = alloca %struct.PointerWrapper.10, align 8
  %lastDest = alloca %struct.PointerWrapper.10, align 8
  %zero = alloca %struct.ValueWrapper.0, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp15 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp19 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp20 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp23 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp24 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastDest.coerce, %struct.ValueWrapper.0** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive12, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive13, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.10* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.10* %agg.tmp14 to i8*
  %5 = bitcast %struct.PointerWrapper.10* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.10* %agg.tmp15 to i8*
  %7 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp14, i32 0, i32 0
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp15, i32 0, i32 0
  %10 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive18, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_(%struct.ValueWrapper.0* %8, %struct.ValueWrapper.0* %9, %struct.ValueWrapper.0* %10)
  %11 = bitcast %struct.PointerWrapper.10* %agg.tmp19 to i8*
  %12 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper.10* %agg.tmp20 to i8*
  %14 = bitcast %struct.PointerWrapper.10* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive21 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp19, i32 0, i32 0
  %15 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive21, align 8
  %coerce.dive22 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp20, i32 0, i32 0
  %16 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive22, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %15, %struct.ValueWrapper.0* %16)
  %17 = bitcast %struct.PointerWrapper.10* %agg.tmp23 to i8*
  %18 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper.10* %agg.tmp24 to i8*
  %20 = bitcast %struct.PointerWrapper.10* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp23, i32 0, i32 0
  %21 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive25, align 8
  %coerce.dive26 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp24, i32 0, i32 0
  %22 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive26, align 8
  call void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_(%struct.ValueWrapper.0* %21, %struct.ValueWrapper.0* %22)
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
define linkonce_odr void @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce, double* %lastDest.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper, align 8
  %lastSource = alloca %struct.PointerWrapper, align 8
  %firstDest = alloca %struct.PointerWrapper, align 8
  %lastDest = alloca %struct.PointerWrapper, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %agg.tmp4 = alloca %struct.PointerWrapper, align 8
  %agg.tmp5 = alloca %struct.PointerWrapper, align 8
  %agg.tmp9 = alloca %struct.PointerWrapper, align 8
  %agg.tmp10 = alloca %struct.PointerWrapper, align 8
  %agg.tmp13 = alloca %struct.PointerWrapper, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastDest, i32 0, i32 0
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
  %2 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper* %agg.tmp4 to i8*
  %5 = bitcast %struct.PointerWrapper* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper* %agg.tmp5 to i8*
  %7 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp5, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_(double* %8, double* %9, double* %10)
  %11 = bitcast %struct.PointerWrapper* %agg.tmp9 to i8*
  %12 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper* %agg.tmp10 to i8*
  %14 = bitcast %struct.PointerWrapper* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp9, i32 0, i32 0
  %15 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive12, align 8
  call void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(double* %15, double* %16)
  %17 = bitcast %struct.PointerWrapper* %agg.tmp13 to i8*
  %18 = bitcast %struct.PointerWrapper* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper* %agg.tmp14 to i8*
  %20 = bitcast %struct.PointerWrapper* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp13, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp14, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_Z13verify_sortedI14PointerWrapperIdEEvT_S2_(double* %21, double* %22)
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
define linkonce_odr void @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(%struct.ValueWrapper* %firstSource, %struct.ValueWrapper* %lastSource, %struct.ValueWrapper* %firstDest, %struct.ValueWrapper* %lastDest, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper, align 8
  %firstSource.addr = alloca %struct.ValueWrapper*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper*, align 8
  %lastDest.addr = alloca %struct.ValueWrapper*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive, align 8
  store %struct.ValueWrapper* %firstSource, %struct.ValueWrapper** %firstSource.addr, align 8
  store %struct.ValueWrapper* %lastSource, %struct.ValueWrapper** %lastSource.addr, align 8
  store %struct.ValueWrapper* %firstDest, %struct.ValueWrapper** %firstDest.addr, align 8
  store %struct.ValueWrapper* %lastDest, %struct.ValueWrapper** %lastDest.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastSource.addr, align 8
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_(%struct.ValueWrapper* %2, %struct.ValueWrapper* %3, %struct.ValueWrapper* %4)
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %6 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastDest.addr, align 8
  call void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %5, %struct.ValueWrapper* %6)
  %7 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastDest.addr, align 8
  call void @_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_(%struct.ValueWrapper* %7, %struct.ValueWrapper* %8)
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
define linkonce_odr void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(%struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper* %lastDest.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.9, align 8
  %lastSource = alloca %struct.PointerWrapper.9, align 8
  %firstDest = alloca %struct.PointerWrapper.9, align 8
  %lastDest = alloca %struct.PointerWrapper.9, align 8
  %zero = alloca %struct.ValueWrapper, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp5 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp6 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp10 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp11 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp15 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastDest, i32 0, i32 0
  store %struct.ValueWrapper* %lastDest.coerce, %struct.ValueWrapper** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive4, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.9* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.9* %agg.tmp5 to i8*
  %5 = bitcast %struct.PointerWrapper.9* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.9* %agg.tmp6 to i8*
  %7 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp5, i32 0, i32 0
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp6, i32 0, i32 0
  %10 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive9, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_(%struct.ValueWrapper* %8, %struct.ValueWrapper* %9, %struct.ValueWrapper* %10)
  %11 = bitcast %struct.PointerWrapper.9* %agg.tmp10 to i8*
  %12 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper.9* %agg.tmp11 to i8*
  %14 = bitcast %struct.PointerWrapper.9* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp10, i32 0, i32 0
  %15 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp11, i32 0, i32 0
  %16 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive13, align 8
  call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %15, %struct.ValueWrapper* %16)
  %17 = bitcast %struct.PointerWrapper.9* %agg.tmp14 to i8*
  %18 = bitcast %struct.PointerWrapper.9* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper.9* %agg.tmp15 to i8*
  %20 = bitcast %struct.PointerWrapper.9* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp14, i32 0, i32 0
  %21 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp15, i32 0, i32 0
  %22 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive17, align 8
  call void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_(%struct.ValueWrapper* %21, %struct.ValueWrapper* %22)
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
define linkonce_odr void @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(%struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0* %lastDest, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %zero = alloca %struct.ValueWrapper.0, align 8
  %firstSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastDest.addr = alloca %struct.ValueWrapper.0*, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive9, align 8
  store %struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0** %firstSource.addr, align 8
  store %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0** %lastSource.addr, align 8
  store %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0** %firstDest.addr, align 8
  store %struct.ValueWrapper.0* %lastDest, %struct.ValueWrapper.0** %lastDest.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastSource.addr, align 8
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_(%struct.ValueWrapper.0* %2, %struct.ValueWrapper.0* %3, %struct.ValueWrapper.0* %4)
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %6 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastDest.addr, align 8
  call void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %5, %struct.ValueWrapper.0* %6)
  %7 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastDest.addr, align 8
  call void @_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_(%struct.ValueWrapper.0* %7, %struct.ValueWrapper.0* %8)
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
define linkonce_odr void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(%struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0* %lastDest.coerce, double %zero.coerce, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.10, align 8
  %lastSource = alloca %struct.PointerWrapper.10, align 8
  %firstDest = alloca %struct.PointerWrapper.10, align 8
  %lastDest = alloca %struct.PointerWrapper.10, align 8
  %zero = alloca %struct.ValueWrapper.0, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp14 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp15 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp19 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp20 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp23 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp24 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastDest.coerce, %struct.ValueWrapper.0** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %zero, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive12, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive13, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %3 = bitcast %struct.PointerWrapper.10* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.10* %agg.tmp14 to i8*
  %5 = bitcast %struct.PointerWrapper.10* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.10* %agg.tmp15 to i8*
  %7 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive16, align 8
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp14, i32 0, i32 0
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive17, align 8
  %coerce.dive18 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp15, i32 0, i32 0
  %10 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive18, align 8
  call void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_(%struct.ValueWrapper.0* %8, %struct.ValueWrapper.0* %9, %struct.ValueWrapper.0* %10)
  %11 = bitcast %struct.PointerWrapper.10* %agg.tmp19 to i8*
  %12 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %struct.PointerWrapper.10* %agg.tmp20 to i8*
  %14 = bitcast %struct.PointerWrapper.10* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive21 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp19, i32 0, i32 0
  %15 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive21, align 8
  %coerce.dive22 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp20, i32 0, i32 0
  %16 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive22, align 8
  call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %15, %struct.ValueWrapper.0* %16)
  %17 = bitcast %struct.PointerWrapper.10* %agg.tmp23 to i8*
  %18 = bitcast %struct.PointerWrapper.10* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %struct.PointerWrapper.10* %agg.tmp24 to i8*
  %20 = bitcast %struct.PointerWrapper.10* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp23, i32 0, i32 0
  %21 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive25, align 8
  %coerce.dive26 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp24, i32 0, i32 0
  %22 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive26, align 8
  call void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_(%struct.ValueWrapper.0* %21, %struct.ValueWrapper.0* %22)
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
define linkonce_odr void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESD_EEvT_SE_T0_(%struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0* %firstDest.coerce) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.10, align 8
  %lastSource = alloca %struct.PointerWrapper.10, align 8
  %firstDest = alloca %struct.PointerWrapper.10, align 8
  %coerce = alloca %struct.PointerWrapper.10, align 8
  %coerce7 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstSource.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper.0* %lastSource.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper.0* %firstDest.coerce, %struct.ValueWrapper.0** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %firstSource, %struct.PointerWrapper.10* dereferenceable(8) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %firstSource, i32 0)
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce, i32 0, i32 0
  store %struct.ValueWrapper.0* %call3, %struct.ValueWrapper.0** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce)
  %call6 = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %firstDest, i32 0)
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce7, i32 0, i32 0
  store %struct.ValueWrapper.0* %call6, %struct.ValueWrapper.0** %coerce.dive8, align 8
  %call9 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce7)
  %0 = bitcast %struct.ValueWrapper.0* %call9 to i8*
  %1 = bitcast %struct.ValueWrapper.0* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.10, align 8
  %end = alloca %struct.PointerWrapper.10, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca %struct.ValueWrapper.0, align 8
  %coerce = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp5 = alloca %struct.ValueWrapper.0, align 8
  %next21 = alloca %struct.ValueWrapper.0, align 8
  %coerce23 = alloca %struct.PointerWrapper.10, align 8
  %coerce28 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp31 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp32 = alloca %struct.ValueWrapper.0, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %begin, i32 0, i32 0
  store %struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %end, i32 0, i32 0
  store %struct.ValueWrapper.0* %end.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %call = call i64 @_ZmiI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEElR14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %end, %struct.PointerWrapper.10* dereferenceable(8) %begin)
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
  %call2 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %2)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce, i32 0, i32 0
  store %struct.ValueWrapper.0* %call2, %struct.ValueWrapper.0** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce)
  %3 = bitcast %struct.ValueWrapper.0* %next to i8*
  %4 = bitcast %struct.ValueWrapper.0* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load i64, i64* %count, align 8
  %6 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %7 = bitcast %struct.PointerWrapper.10* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = load i64, i64* %j, align 8
  %9 = bitcast %struct.ValueWrapper.0* %agg.tmp5 to i8*
  %10 = bitcast %struct.ValueWrapper.0* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %11 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp5, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive14, i32 0, i32 0
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive15, i32 0, i32 0
  %12 = load double, double* %coerce.dive16, align 8
  call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_(i64 %5, %struct.ValueWrapper.0* %11, i64 %8, double %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %j, align 8
  %dec = add nsw i64 %13, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %count, align 8
  %sub17 = sub nsw i64 %14, 1
  store i64 %sub17, i64* %j, align 8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc44, %for.end
  %15 = load i64, i64* %j, align 8
  %cmp19 = icmp sge i64 %15, 1
  br i1 %cmp19, label %for.body20, label %for.end46

for.body20:                                       ; preds = %for.cond18
  %16 = load i64, i64* %j, align 8
  %call22 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %16)
  %coerce.dive24 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce23, i32 0, i32 0
  store %struct.ValueWrapper.0* %call22, %struct.ValueWrapper.0** %coerce.dive24, align 8
  %call25 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce23)
  %17 = bitcast %struct.ValueWrapper.0* %next21 to i8*
  %18 = bitcast %struct.ValueWrapper.0* %call25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %call26 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %begin)
  %19 = load i64, i64* %j, align 8
  %call27 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %19)
  %coerce.dive29 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce28, i32 0, i32 0
  store %struct.ValueWrapper.0* %call27, %struct.ValueWrapper.0** %coerce.dive29, align 8
  %call30 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce28)
  %20 = bitcast %struct.ValueWrapper.0* %call30 to i8*
  %21 = bitcast %struct.ValueWrapper.0* %call26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 8, i1 false)
  %22 = load i64, i64* %j, align 8
  %23 = bitcast %struct.PointerWrapper.10* %agg.tmp31 to i8*
  %24 = bitcast %struct.PointerWrapper.10* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 8, i1 false)
  %25 = bitcast %struct.ValueWrapper.0* %agg.tmp32 to i8*
  %26 = bitcast %struct.ValueWrapper.0* %next21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %coerce.dive33 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp31, i32 0, i32 0
  %27 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive33, align 8
  %coerce.dive34 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp32, i32 0, i32 0
  %coerce.dive35 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive34, i32 0, i32 0
  %coerce.dive36 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive35, i32 0, i32 0
  %coerce.dive37 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive36, i32 0, i32 0
  %coerce.dive38 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive37, i32 0, i32 0
  %coerce.dive39 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive38, i32 0, i32 0
  %coerce.dive40 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive39, i32 0, i32 0
  %coerce.dive41 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive40, i32 0, i32 0
  %coerce.dive42 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive41, i32 0, i32 0
  %coerce.dive43 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive42, i32 0, i32 0
  %28 = load double, double* %coerce.dive43, align 8
  call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_(i64 %22, %struct.ValueWrapper.0* %27, i64 0, double %28)
  br label %for.inc44

for.inc44:                                        ; preds = %for.body20
  %29 = load i64, i64* %j, align 8
  %dec45 = add nsw i64 %29, -1
  store i64 %dec45, i64* %j, align 8
  br label %for.cond18

for.end46:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEvT_SD_(%struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0* %last.coerce) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper.10, align 8
  %last = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp2 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %first, i32 0, i32 0
  store %struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %last, i32 0, i32 0
  store %struct.ValueWrapper.0* %last.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %1 = bitcast %struct.PointerWrapper.10* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %struct.PointerWrapper.10* %agg.tmp2 to i8*
  %3 = bitcast %struct.PointerWrapper.10* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp2, i32 0, i32 0
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive4, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_(%struct.ValueWrapper.0* %4, %struct.ValueWrapper.0* %5)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @current_test, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEEEEbT_SE_(%struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0* %last.coerce) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %first = alloca %struct.PointerWrapper.10, align 8
  %last = alloca %struct.PointerWrapper.10, align 8
  %prev = alloca %struct.PointerWrapper.10, align 8
  %coerce = alloca %struct.PointerWrapper.10, align 8
  %coerce5 = alloca %struct.PointerWrapper.10, align 8
  %coerce9 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %first, i32 0, i32 0
  store %struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %last, i32 0, i32 0
  store %struct.ValueWrapper.0* %last.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper.10* %prev to i8*
  %1 = bitcast %struct.PointerWrapper.10* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %first, i32 0)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce, i32 0, i32 0
  store %struct.ValueWrapper.0* %call, %struct.ValueWrapper.0** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call3 = call zeroext i1 @_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %first, %struct.PointerWrapper.10* dereferenceable(8) %last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %first, i32 0)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce5, i32 0, i32 0
  store %struct.ValueWrapper.0* %call4, %struct.ValueWrapper.0** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce5)
  %call8 = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %prev, i32 0)
  %coerce.dive10 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce9, i32 0, i32 0
  store %struct.ValueWrapper.0* %call8, %struct.ValueWrapper.0** %coerce.dive10, align 8
  %call11 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce9)
  %call12 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %call7, %struct.ValueWrapper.0* dereferenceable(8) %call11)
  br i1 %call12, label %if.then, label %if.end

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
define linkonce_odr %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %xx, i32) #0 comdat {
entry:
  %retval = alloca %struct.PointerWrapper.10, align 8
  %xx.addr = alloca %struct.PointerWrapper.10*, align 8
  %.addr = alloca i32, align 4
  store %struct.PointerWrapper.10* %xx, %struct.PointerWrapper.10** %xx.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %1 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  %2 = bitcast %struct.PointerWrapper.10* %retval to i8*
  %3 = bitcast %struct.PointerWrapper.10* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  %call = call dereferenceable(8) %struct.PointerWrapper.10* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %4)
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %retval, i32 0, i32 0
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive, align 8
  ret %struct.ValueWrapper.0* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %x, %struct.PointerWrapper.10* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.PointerWrapper.10*, align 8
  %y.addr = alloca %struct.PointerWrapper.10*, align 8
  store %struct.PointerWrapper.10* %x, %struct.PointerWrapper.10** %x.addr, align 8
  store %struct.PointerWrapper.10* %y, %struct.PointerWrapper.10** %y.addr, align 8
  %0 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %x.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  %2 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %2, i32 0, i32 0
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current1, align 8
  %cmp = icmp ne %struct.ValueWrapper.0* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.PointerWrapper.10*, align 8
  store %struct.PointerWrapper.10* %this, %struct.PointerWrapper.10** %this.addr, align 8
  %this1 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %this.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  ret %struct.ValueWrapper.0* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %x, %struct.ValueWrapper.0* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.0*, align 8
  %y.addr = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %x, %struct.ValueWrapper.0** %x.addr, align 8
  store %struct.ValueWrapper.0* %y, %struct.ValueWrapper.0** %y.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEbRKS0_IT_ESC_(%struct.ValueWrapper.1* dereferenceable(8) %value, %struct.ValueWrapper.1* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEbRKS0_IT_ESC_(%struct.ValueWrapper.1* dereferenceable(8) %x, %struct.ValueWrapper.1* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.1*, align 8
  %y.addr = alloca %struct.ValueWrapper.1*, align 8
  store %struct.ValueWrapper.1* %x, %struct.ValueWrapper.1** %x.addr, align 8
  store %struct.ValueWrapper.1* %y, %struct.ValueWrapper.1** %y.addr, align 8
  %0 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEbRKS0_IT_ESB_(%struct.ValueWrapper.2* dereferenceable(8) %value, %struct.ValueWrapper.2* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEbRKS0_IT_ESB_(%struct.ValueWrapper.2* dereferenceable(8) %x, %struct.ValueWrapper.2* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.2*, align 8
  %y.addr = alloca %struct.ValueWrapper.2*, align 8
  store %struct.ValueWrapper.2* %x, %struct.ValueWrapper.2** %x.addr, align 8
  store %struct.ValueWrapper.2* %y, %struct.ValueWrapper.2** %y.addr, align 8
  %0 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IdEEEEEEEbRKS0_IT_ESA_(%struct.ValueWrapper.3* dereferenceable(8) %value, %struct.ValueWrapper.3* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IdEEEEEEEbRKS0_IT_ESA_(%struct.ValueWrapper.3* dereferenceable(8) %x, %struct.ValueWrapper.3* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.3*, align 8
  %y.addr = alloca %struct.ValueWrapper.3*, align 8
  store %struct.ValueWrapper.3* %x, %struct.ValueWrapper.3** %x.addr, align 8
  store %struct.ValueWrapper.3* %y, %struct.ValueWrapper.3** %y.addr, align 8
  %0 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IdEEEEEEbRKS0_IT_ES9_(%struct.ValueWrapper.4* dereferenceable(8) %value, %struct.ValueWrapper.4* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IdEEEEEEbRKS0_IT_ES9_(%struct.ValueWrapper.4* dereferenceable(8) %x, %struct.ValueWrapper.4* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.4*, align 8
  %y.addr = alloca %struct.ValueWrapper.4*, align 8
  store %struct.ValueWrapper.4* %x, %struct.ValueWrapper.4** %x.addr, align 8
  store %struct.ValueWrapper.4* %y, %struct.ValueWrapper.4** %y.addr, align 8
  %0 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IdEEEEEbRKS0_IT_ES8_(%struct.ValueWrapper.5* dereferenceable(8) %value, %struct.ValueWrapper.5* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IdEEEEEbRKS0_IT_ES8_(%struct.ValueWrapper.5* dereferenceable(8) %x, %struct.ValueWrapper.5* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.5*, align 8
  %y.addr = alloca %struct.ValueWrapper.5*, align 8
  store %struct.ValueWrapper.5* %x, %struct.ValueWrapper.5** %x.addr, align 8
  store %struct.ValueWrapper.5* %y, %struct.ValueWrapper.5** %y.addr, align 8
  %0 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IdEEEEbRKS0_IT_ES7_(%struct.ValueWrapper.6* dereferenceable(8) %value, %struct.ValueWrapper.6* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IdEEEEbRKS0_IT_ES7_(%struct.ValueWrapper.6* dereferenceable(8) %x, %struct.ValueWrapper.6* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.6*, align 8
  %y.addr = alloca %struct.ValueWrapper.6*, align 8
  store %struct.ValueWrapper.6* %x, %struct.ValueWrapper.6** %x.addr, align 8
  store %struct.ValueWrapper.6* %y, %struct.ValueWrapper.6** %y.addr, align 8
  %0 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IdEEEbRKS0_IT_ES6_(%struct.ValueWrapper.7* dereferenceable(8) %value, %struct.ValueWrapper.7* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IdEEEbRKS0_IT_ES6_(%struct.ValueWrapper.7* dereferenceable(8) %x, %struct.ValueWrapper.7* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.7*, align 8
  %y.addr = alloca %struct.ValueWrapper.7*, align 8
  store %struct.ValueWrapper.7* %x, %struct.ValueWrapper.7** %x.addr, align 8
  store %struct.ValueWrapper.7* %y, %struct.ValueWrapper.7** %y.addr, align 8
  %0 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltI12ValueWrapperIdEEbRKS0_IT_ES5_(%struct.ValueWrapper.8* dereferenceable(8) %value, %struct.ValueWrapper.8* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIdEEbRKS0_IT_ES5_(%struct.ValueWrapper.8* dereferenceable(8) %x, %struct.ValueWrapper.8* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper.8*, align 8
  %y.addr = alloca %struct.ValueWrapper.8*, align 8
  store %struct.ValueWrapper.8* %x, %struct.ValueWrapper.8** %x.addr, align 8
  store %struct.ValueWrapper.8* %y, %struct.ValueWrapper.8** %y.addr, align 8
  %0 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %1, i32 0, i32 0
  %call = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %value, %struct.ValueWrapper* dereferenceable(8) %value1)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %x, %struct.ValueWrapper* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.ValueWrapper*, align 8
  %y.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %x, %struct.ValueWrapper** %x.addr, align 8
  store %struct.ValueWrapper* %y, %struct.ValueWrapper** %y.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %0, i32 0, i32 0
  %1 = load double, double* %value, align 8
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %2, i32 0, i32 0
  %3 = load double, double* %value1, align 8
  %cmp = fcmp olt double %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.PointerWrapper.10* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %xx) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper.10*, align 8
  store %struct.PointerWrapper.10* %xx, %struct.PointerWrapper.10** %xx.addr, align 8
  %0 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %1, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %current, align 8
  %2 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  ret %struct.PointerWrapper.10* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZmiI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEElR14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %xx, %struct.PointerWrapper.10* dereferenceable(8) %yy) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper.10*, align 8
  %yy.addr = alloca %struct.PointerWrapper.10*, align 8
  store %struct.PointerWrapper.10* %xx, %struct.PointerWrapper.10** %xx.addr, align 8
  store %struct.PointerWrapper.10* %yy, %struct.PointerWrapper.10** %yy.addr, align 8
  %0 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  %2 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %yy.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %2, i32 0, i32 0
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current1, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ValueWrapper.0* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ValueWrapper.0* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %xx, i64 %inc) #1 comdat {
entry:
  %retval = alloca %struct.PointerWrapper.10, align 8
  %xx.addr = alloca %struct.PointerWrapper.10*, align 8
  %inc.addr = alloca i64, align 8
  store %struct.PointerWrapper.10* %xx, %struct.PointerWrapper.10** %xx.addr, align 8
  store i64 %inc, i64* %inc.addr, align 8
  %0 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  %1 = bitcast %struct.PointerWrapper.10* %retval to i8*
  %2 = bitcast %struct.PointerWrapper.10* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = load i64, i64* %inc.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %retval, i32 0, i32 0
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  %add.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %4, i64 %3
  store %struct.ValueWrapper.0* %add.ptr, %struct.ValueWrapper.0** %current, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %retval, i32 0, i32 0
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive, align 8
  ret %struct.ValueWrapper.0* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_(i64 %count, %struct.ValueWrapper.0* %begin.coerce, i64 %free_in, double %next.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.10, align 8
  %next = alloca %struct.ValueWrapper.0, align 8
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %coerce = alloca %struct.PointerWrapper.10, align 8
  %coerce14 = alloca %struct.PointerWrapper.10, align 8
  %coerce20 = alloca %struct.PointerWrapper.10, align 8
  %coerce24 = alloca %struct.PointerWrapper.10, align 8
  %coerce33 = alloca %struct.PointerWrapper.10, align 8
  %coerce37 = alloca %struct.PointerWrapper.10, align 8
  %coerce45 = alloca %struct.PointerWrapper.10, align 8
  %coerce50 = alloca %struct.PointerWrapper.10, align 8
  %coerce54 = alloca %struct.PointerWrapper.10, align 8
  %coerce60 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %begin, i32 0, i32 0
  store %struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %next, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive9, i32 0, i32 0
  store double %next.coerce, double* %coerce.dive10, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
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
  %call = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %sub)
  %coerce.dive11 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce, i32 0, i32 0
  store %struct.ValueWrapper.0* %call, %struct.ValueWrapper.0** %coerce.dive11, align 8
  %call12 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce)
  %5 = load i64, i64* %i, align 8
  %call13 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %5)
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce14, i32 0, i32 0
  store %struct.ValueWrapper.0* %call13, %struct.ValueWrapper.0** %coerce.dive15, align 8
  %call16 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce14)
  %call17 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %call12, %struct.ValueWrapper.0* dereferenceable(8) %call16)
  br i1 %call17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %7, 1
  %call19 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %sub18)
  %coerce.dive21 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce20, i32 0, i32 0
  store %struct.ValueWrapper.0* %call19, %struct.ValueWrapper.0** %coerce.dive21, align 8
  %call22 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce20)
  %8 = load i64, i64* %free, align 8
  %call23 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %8)
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce24, i32 0, i32 0
  store %struct.ValueWrapper.0* %call23, %struct.ValueWrapper.0** %coerce.dive25, align 8
  %call26 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce24)
  %9 = bitcast %struct.ValueWrapper.0* %call26 to i8*
  %10 = bitcast %struct.ValueWrapper.0* %call22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load i64, i64* %i, align 8
  %sub27 = sub nsw i64 %11, 1
  store i64 %sub27, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %i, align 8
  %add28 = add nsw i64 %13, %12
  store i64 %add28, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %count.addr, align 8
  %cmp29 = icmp eq i64 %14, %15
  br i1 %cmp29, label %if.then30, label %if.end41

if.then30:                                        ; preds = %for.end
  %16 = load i64, i64* %i, align 8
  %sub31 = sub nsw i64 %16, 1
  %call32 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %sub31)
  %coerce.dive34 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce33, i32 0, i32 0
  store %struct.ValueWrapper.0* %call32, %struct.ValueWrapper.0** %coerce.dive34, align 8
  %call35 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce33)
  %17 = load i64, i64* %free, align 8
  %call36 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %17)
  %coerce.dive38 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce37, i32 0, i32 0
  store %struct.ValueWrapper.0* %call36, %struct.ValueWrapper.0** %coerce.dive38, align 8
  %call39 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce37)
  %18 = bitcast %struct.ValueWrapper.0* %call39 to i8*
  %19 = bitcast %struct.ValueWrapper.0* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = load i64, i64* %i, align 8
  %sub40 = sub nsw i64 %20, 1
  store i64 %sub40, i64* %free, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %for.end
  %21 = load i64, i64* %free, align 8
  %sub42 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub42, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end41
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp43 = icmp sgt i64 %22, %23
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  %call44 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %24)
  %coerce.dive46 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce45, i32 0, i32 0
  store %struct.ValueWrapper.0* %call44, %struct.ValueWrapper.0** %coerce.dive46, align 8
  %call47 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce45)
  %call48 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %call47, %struct.ValueWrapper.0* dereferenceable(8) %next)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %call48, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load i64, i64* %i, align 8
  %call49 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %26)
  %coerce.dive51 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce50, i32 0, i32 0
  store %struct.ValueWrapper.0* %call49, %struct.ValueWrapper.0** %coerce.dive51, align 8
  %call52 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce50)
  %27 = load i64, i64* %free, align 8
  %call53 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %27)
  %coerce.dive55 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce54, i32 0, i32 0
  store %struct.ValueWrapper.0* %call53, %struct.ValueWrapper.0** %coerce.dive55, align 8
  %call56 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce54)
  %28 = bitcast %struct.ValueWrapper.0* %call56 to i8*
  %29 = bitcast %struct.ValueWrapper.0* %call52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  %30 = load i64, i64* %i, align 8
  store i64 %30, i64* %free, align 8
  %31 = load i64, i64* %free, align 8
  %sub57 = sub nsw i64 %31, 1
  %div58 = sdiv i64 %sub57, 2
  store i64 %div58, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i64, i64* %free, align 8
  %call59 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %begin, i64 %32)
  %coerce.dive61 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce60, i32 0, i32 0
  store %struct.ValueWrapper.0* %call59, %struct.ValueWrapper.0** %coerce.dive61, align 8
  %call62 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce60)
  %33 = bitcast %struct.ValueWrapper.0* %call62 to i8*
  %34 = bitcast %struct.ValueWrapper.0* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark4copyIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESC_EEvT_SD_T0_(%struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0* %firstDest) #1 comdat {
entry:
  %firstSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper.0*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %firstSource, %struct.ValueWrapper.0** %firstSource.addr, align 8
  store %struct.ValueWrapper.0* %lastSource, %struct.ValueWrapper.0** %lastSource.addr, align 8
  store %struct.ValueWrapper.0* %firstDest, %struct.ValueWrapper.0** %firstDest.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstSource.addr, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %lastSource.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper.0* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstSource.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %2, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %3, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr1, %struct.ValueWrapper.0** %firstDest.addr, align 8
  %4 = bitcast %struct.ValueWrapper.0* %3 to i8*
  %5 = bitcast %struct.ValueWrapper.0* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0* %end) #0 comdat {
entry:
  %begin.addr = alloca %struct.ValueWrapper.0*, align 8
  %end.addr = alloca %struct.ValueWrapper.0*, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp = alloca %struct.ValueWrapper.0, align 8
  %next14 = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp17 = alloca %struct.ValueWrapper.0, align 8
  store %struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0** %begin.addr, align 8
  store %struct.ValueWrapper.0* %end, %struct.ValueWrapper.0** %end.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %end.addr, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ValueWrapper.0* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ValueWrapper.0* %1 to i64
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
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %5 = load i64, i64* %j, align 8
  %add.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %4, i64 %5
  %6 = bitcast %struct.ValueWrapper.0* %next to i8*
  %7 = bitcast %struct.ValueWrapper.0* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = load i64, i64* %count, align 8
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %10 = load i64, i64* %j, align 8
  %11 = bitcast %struct.ValueWrapper.0* %agg.tmp to i8*
  %12 = bitcast %struct.ValueWrapper.0* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  %13 = load double, double* %coerce.dive9, align 8
  call void @_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_(i64 %8, %struct.ValueWrapper.0* %9, i64 %10, double %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %j, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %count, align 8
  %sub10 = sub nsw i64 %15, 1
  store i64 %sub10, i64* %j, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc28, %for.end
  %16 = load i64, i64* %j, align 8
  %cmp12 = icmp sge i64 %16, 1
  br i1 %cmp12, label %for.body13, label %for.end30

for.body13:                                       ; preds = %for.cond11
  %17 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %18 = load i64, i64* %j, align 8
  %add.ptr15 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %17, i64 %18
  %19 = bitcast %struct.ValueWrapper.0* %next14 to i8*
  %20 = bitcast %struct.ValueWrapper.0* %add.ptr15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %22 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %23 = load i64, i64* %j, align 8
  %add.ptr16 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %22, i64 %23
  %24 = bitcast %struct.ValueWrapper.0* %add.ptr16 to i8*
  %25 = bitcast %struct.ValueWrapper.0* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load i64, i64* %j, align 8
  %27 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %28 = bitcast %struct.ValueWrapper.0* %agg.tmp17 to i8*
  %29 = bitcast %struct.ValueWrapper.0* %next14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  %coerce.dive18 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %agg.tmp17, i32 0, i32 0
  %coerce.dive19 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive18, i32 0, i32 0
  %coerce.dive20 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive19, i32 0, i32 0
  %coerce.dive21 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive20, i32 0, i32 0
  %coerce.dive22 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive21, i32 0, i32 0
  %coerce.dive23 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive22, i32 0, i32 0
  %coerce.dive24 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive23, i32 0, i32 0
  %coerce.dive25 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive24, i32 0, i32 0
  %coerce.dive26 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive25, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive26, i32 0, i32 0
  %30 = load double, double* %coerce.dive27, align 8
  call void @_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_(i64 %26, %struct.ValueWrapper.0* %27, i64 0, double %30)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body13
  %31 = load i64, i64* %j, align 8
  %dec29 = add nsw i64 %31, -1
  store i64 %dec29, i64* %j, align 8
  br label %for.cond11

for.end30:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEvT_SC_(%struct.ValueWrapper.0* %first, %struct.ValueWrapper.0* %last) #0 comdat {
entry:
  %first.addr = alloca %struct.ValueWrapper.0*, align 8
  %last.addr = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %first, %struct.ValueWrapper.0** %first.addr, align 8
  store %struct.ValueWrapper.0* %last, %struct.ValueWrapper.0** %last.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %last.addr, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_(%struct.ValueWrapper.0* %0, %struct.ValueWrapper.0* %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @current_test, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEEEbT_SD_(%struct.ValueWrapper.0* %first, %struct.ValueWrapper.0* %last) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %first.addr = alloca %struct.ValueWrapper.0*, align 8
  %last.addr = alloca %struct.ValueWrapper.0*, align 8
  %prev = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %first, %struct.ValueWrapper.0** %first.addr, align 8
  store %struct.ValueWrapper.0* %last, %struct.ValueWrapper.0** %last.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  store %struct.ValueWrapper.0* %0, %struct.ValueWrapper.0** %prev, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %1, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %first.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %last.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper.0* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %4, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr1, %struct.ValueWrapper.0** %first.addr, align 8
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %prev, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %5, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr2, %struct.ValueWrapper.0** %prev, align 8
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %4, %struct.ValueWrapper.0* dereferenceable(8) %5)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_(i64 %count, %struct.ValueWrapper.0* %begin, i64 %free_in, double %next.coerce) #0 comdat {
entry:
  %next = alloca %struct.ValueWrapper.0, align 8
  %count.addr = alloca i64, align 8
  %begin.addr = alloca %struct.ValueWrapper.0*, align 8
  %free_in.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %next, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %next.coerce, double* %coerce.dive9, align 8
  store i64 %count, i64* %count.addr, align 8
  store %struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0** %begin.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
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
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %5 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %5, 1
  %add.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %4, i64 %sub
  %6 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %7 = load i64, i64* %i, align 8
  %add.ptr10 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %6, i64 %7
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %add.ptr, %struct.ValueWrapper.0* dereferenceable(8) %add.ptr10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %10 = load i64, i64* %i, align 8
  %sub11 = sub nsw i64 %10, 1
  %add.ptr12 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %9, i64 %sub11
  %11 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %12 = load i64, i64* %free, align 8
  %add.ptr13 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %11, i64 %12
  %13 = bitcast %struct.ValueWrapper.0* %add.ptr13 to i8*
  %14 = bitcast %struct.ValueWrapper.0* %add.ptr12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = load i64, i64* %i, align 8
  %sub14 = sub nsw i64 %15, 1
  store i64 %sub14, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %i, align 8
  %add15 = add nsw i64 %17, %16
  store i64 %add15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %count.addr, align 8
  %cmp16 = icmp eq i64 %18, %19
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %for.end
  %20 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %21 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %21, 1
  %add.ptr19 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %20, i64 %sub18
  %22 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %23 = load i64, i64* %free, align 8
  %add.ptr20 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %22, i64 %23
  %24 = bitcast %struct.ValueWrapper.0* %add.ptr20 to i8*
  %25 = bitcast %struct.ValueWrapper.0* %add.ptr19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load i64, i64* %i, align 8
  %sub21 = sub nsw i64 %26, 1
  store i64 %sub21, i64* %free, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %for.end
  %27 = load i64, i64* %free, align 8
  %sub23 = sub nsw i64 %27, 1
  %div = sdiv i64 %sub23, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end22
  %28 = load i64, i64* %free, align 8
  %29 = load i64, i64* %free_in.addr, align 8
  %cmp24 = icmp sgt i64 %28, %29
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %30, i64 %31
  %call26 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %add.ptr25, %struct.ValueWrapper.0* dereferenceable(8) %next)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %call26, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %34 = load i64, i64* %i, align 8
  %add.ptr27 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %33, i64 %34
  %35 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %36 = load i64, i64* %free, align 8
  %add.ptr28 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %35, i64 %36
  %37 = bitcast %struct.ValueWrapper.0* %add.ptr28 to i8*
  %38 = bitcast %struct.ValueWrapper.0* %add.ptr27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 8, i32 8, i1 false)
  %39 = load i64, i64* %i, align 8
  store i64 %39, i64* %free, align 8
  %40 = load i64, i64* %free, align 8
  %sub29 = sub nsw i64 %40, 1
  %div30 = sdiv i64 %sub29, 2
  store i64 %div30, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %41 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %42 = load i64, i64* %free, align 8
  %add.ptr31 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %41, i64 %42
  %43 = bitcast %struct.ValueWrapper.0* %add.ptr31 to i8*
  %44 = bitcast %struct.ValueWrapper.0* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyI14PointerWrapperI12ValueWrapperIdEES4_EEvT_S5_T0_(%struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper* %firstDest.coerce) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper.9, align 8
  %lastSource = alloca %struct.PointerWrapper.9, align 8
  %firstDest = alloca %struct.PointerWrapper.9, align 8
  %coerce = alloca %struct.PointerWrapper.9, align 8
  %coerce7 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstSource, i32 0, i32 0
  store %struct.ValueWrapper* %firstSource.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %lastSource, i32 0, i32 0
  store %struct.ValueWrapper* %lastSource.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %firstDest, i32 0, i32 0
  store %struct.ValueWrapper* %firstDest.coerce, %struct.ValueWrapper** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %firstSource, %struct.PointerWrapper.9* dereferenceable(8) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %firstSource, i32 0)
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce, i32 0, i32 0
  store %struct.ValueWrapper* %call3, %struct.ValueWrapper** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce)
  %call6 = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %firstDest, i32 0)
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce7, i32 0, i32 0
  store %struct.ValueWrapper* %call6, %struct.ValueWrapper** %coerce.dive8, align 8
  %call9 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce7)
  %0 = bitcast %struct.ValueWrapper* %call9 to i8*
  %1 = bitcast %struct.ValueWrapper* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.9, align 8
  %end = alloca %struct.PointerWrapper.9, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca %struct.ValueWrapper, align 8
  %coerce = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp5 = alloca %struct.ValueWrapper, align 8
  %next12 = alloca %struct.ValueWrapper, align 8
  %coerce14 = alloca %struct.PointerWrapper.9, align 8
  %coerce19 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp22 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp23 = alloca %struct.ValueWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %begin, i32 0, i32 0
  store %struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %end, i32 0, i32 0
  store %struct.ValueWrapper* %end.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %call = call i64 @_ZmiI12ValueWrapperIdEElR14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %end, %struct.PointerWrapper.9* dereferenceable(8) %begin)
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
  %call2 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %2)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce, i32 0, i32 0
  store %struct.ValueWrapper* %call2, %struct.ValueWrapper** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce)
  %3 = bitcast %struct.ValueWrapper* %next to i8*
  %4 = bitcast %struct.ValueWrapper* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load i64, i64* %count, align 8
  %6 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %7 = bitcast %struct.PointerWrapper.9* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = load i64, i64* %j, align 8
  %9 = bitcast %struct.ValueWrapper* %agg.tmp5 to i8*
  %10 = bitcast %struct.ValueWrapper* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %11 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp5, i32 0, i32 0
  %12 = load double, double* %coerce.dive7, align 8
  call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_(i64 %5, %struct.ValueWrapper* %11, i64 %8, double %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %j, align 8
  %dec = add nsw i64 %13, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %count, align 8
  %sub8 = sub nsw i64 %14, 1
  store i64 %sub8, i64* %j, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.end
  %15 = load i64, i64* %j, align 8
  %cmp10 = icmp sge i64 %15, 1
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  %16 = load i64, i64* %j, align 8
  %call13 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %16)
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce14, i32 0, i32 0
  store %struct.ValueWrapper* %call13, %struct.ValueWrapper** %coerce.dive15, align 8
  %call16 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce14)
  %17 = bitcast %struct.ValueWrapper* %next12 to i8*
  %18 = bitcast %struct.ValueWrapper* %call16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %call17 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %begin)
  %19 = load i64, i64* %j, align 8
  %call18 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %19)
  %coerce.dive20 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce19, i32 0, i32 0
  store %struct.ValueWrapper* %call18, %struct.ValueWrapper** %coerce.dive20, align 8
  %call21 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce19)
  %20 = bitcast %struct.ValueWrapper* %call21 to i8*
  %21 = bitcast %struct.ValueWrapper* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 8, i1 false)
  %22 = load i64, i64* %j, align 8
  %23 = bitcast %struct.PointerWrapper.9* %agg.tmp22 to i8*
  %24 = bitcast %struct.PointerWrapper.9* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 8, i1 false)
  %25 = bitcast %struct.ValueWrapper* %agg.tmp23 to i8*
  %26 = bitcast %struct.ValueWrapper* %next12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %coerce.dive24 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp22, i32 0, i32 0
  %27 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp23, i32 0, i32 0
  %28 = load double, double* %coerce.dive25, align 8
  call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_(i64 %22, %struct.ValueWrapper* %27, i64 0, double %28)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body11
  %29 = load i64, i64* %j, align 8
  %dec27 = add nsw i64 %29, -1
  store i64 %dec27, i64* %j, align 8
  br label %for.cond9

for.end28:                                        ; preds = %for.cond9
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedI14PointerWrapperI12ValueWrapperIdEEEvT_S4_(%struct.ValueWrapper* %first.coerce, %struct.ValueWrapper* %last.coerce) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper.9, align 8
  %last = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp2 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %first, i32 0, i32 0
  store %struct.ValueWrapper* %first.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %last, i32 0, i32 0
  store %struct.ValueWrapper* %last.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %1 = bitcast %struct.PointerWrapper.9* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %struct.PointerWrapper.9* %agg.tmp2 to i8*
  %3 = bitcast %struct.PointerWrapper.9* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp2, i32 0, i32 0
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive4, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_(%struct.ValueWrapper* %4, %struct.ValueWrapper* %5)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @current_test, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedI14PointerWrapperI12ValueWrapperIdEEEEbT_S5_(%struct.ValueWrapper* %first.coerce, %struct.ValueWrapper* %last.coerce) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %first = alloca %struct.PointerWrapper.9, align 8
  %last = alloca %struct.PointerWrapper.9, align 8
  %prev = alloca %struct.PointerWrapper.9, align 8
  %coerce = alloca %struct.PointerWrapper.9, align 8
  %coerce5 = alloca %struct.PointerWrapper.9, align 8
  %coerce9 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %first, i32 0, i32 0
  store %struct.ValueWrapper* %first.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %last, i32 0, i32 0
  store %struct.ValueWrapper* %last.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper.9* %prev to i8*
  %1 = bitcast %struct.PointerWrapper.9* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %first, i32 0)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce, i32 0, i32 0
  store %struct.ValueWrapper* %call, %struct.ValueWrapper** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call3 = call zeroext i1 @_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %first, %struct.PointerWrapper.9* dereferenceable(8) %last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %first, i32 0)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce5, i32 0, i32 0
  store %struct.ValueWrapper* %call4, %struct.ValueWrapper** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce5)
  %call8 = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %prev, i32 0)
  %coerce.dive10 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce9, i32 0, i32 0
  store %struct.ValueWrapper* %call8, %struct.ValueWrapper** %coerce.dive10, align 8
  %call11 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce9)
  %call12 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %call7, %struct.ValueWrapper* dereferenceable(8) %call11)
  br i1 %call12, label %if.then, label %if.end

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
define linkonce_odr %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %xx, i32) #0 comdat {
entry:
  %retval = alloca %struct.PointerWrapper.9, align 8
  %xx.addr = alloca %struct.PointerWrapper.9*, align 8
  %.addr = alloca i32, align 4
  store %struct.PointerWrapper.9* %xx, %struct.PointerWrapper.9** %xx.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %1 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  %2 = bitcast %struct.PointerWrapper.9* %retval to i8*
  %3 = bitcast %struct.PointerWrapper.9* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  %call = call dereferenceable(8) %struct.PointerWrapper.9* @_ZppI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %4)
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %retval, i32 0, i32 0
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive, align 8
  ret %struct.ValueWrapper* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %x, %struct.PointerWrapper.9* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.PointerWrapper.9*, align 8
  %y.addr = alloca %struct.PointerWrapper.9*, align 8
  store %struct.PointerWrapper.9* %x, %struct.PointerWrapper.9** %x.addr, align 8
  store %struct.PointerWrapper.9* %y, %struct.PointerWrapper.9** %y.addr, align 8
  %0 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %x.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  %2 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %2, i32 0, i32 0
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current1, align 8
  %cmp = icmp ne %struct.ValueWrapper* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.PointerWrapper.9*, align 8
  store %struct.PointerWrapper.9* %this, %struct.PointerWrapper.9** %this.addr, align 8
  %this1 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %this.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  ret %struct.ValueWrapper* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.PointerWrapper.9* @_ZppI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %xx) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper.9*, align 8
  store %struct.PointerWrapper.9* %xx, %struct.PointerWrapper.9** %xx.addr, align 8
  %0 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %1, i32 1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %current, align 8
  %2 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  ret %struct.PointerWrapper.9* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZmiI12ValueWrapperIdEElR14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %xx, %struct.PointerWrapper.9* dereferenceable(8) %yy) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper.9*, align 8
  %yy.addr = alloca %struct.PointerWrapper.9*, align 8
  store %struct.PointerWrapper.9* %xx, %struct.PointerWrapper.9** %xx.addr, align 8
  store %struct.PointerWrapper.9* %yy, %struct.PointerWrapper.9** %yy.addr, align 8
  %0 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  %2 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %yy.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %2, i32 0, i32 0
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current1, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ValueWrapper* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ValueWrapper* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %xx, i64 %inc) #1 comdat {
entry:
  %retval = alloca %struct.PointerWrapper.9, align 8
  %xx.addr = alloca %struct.PointerWrapper.9*, align 8
  %inc.addr = alloca i64, align 8
  store %struct.PointerWrapper.9* %xx, %struct.PointerWrapper.9** %xx.addr, align 8
  store i64 %inc, i64* %inc.addr, align 8
  %0 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  %1 = bitcast %struct.PointerWrapper.9* %retval to i8*
  %2 = bitcast %struct.PointerWrapper.9* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = load i64, i64* %inc.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %retval, i32 0, i32 0
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  %add.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %4, i64 %3
  store %struct.ValueWrapper* %add.ptr, %struct.ValueWrapper** %current, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %retval, i32 0, i32 0
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive, align 8
  ret %struct.ValueWrapper* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_(i64 %count, %struct.ValueWrapper* %begin.coerce, i64 %free_in, double %next.coerce) #1 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.9, align 8
  %next = alloca %struct.ValueWrapper, align 8
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %coerce = alloca %struct.PointerWrapper.9, align 8
  %coerce5 = alloca %struct.PointerWrapper.9, align 8
  %coerce11 = alloca %struct.PointerWrapper.9, align 8
  %coerce15 = alloca %struct.PointerWrapper.9, align 8
  %coerce24 = alloca %struct.PointerWrapper.9, align 8
  %coerce28 = alloca %struct.PointerWrapper.9, align 8
  %coerce36 = alloca %struct.PointerWrapper.9, align 8
  %coerce41 = alloca %struct.PointerWrapper.9, align 8
  %coerce45 = alloca %struct.PointerWrapper.9, align 8
  %coerce51 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %begin, i32 0, i32 0
  store %struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %next, i32 0, i32 0
  store double %next.coerce, double* %coerce.dive1, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
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
  %call = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %sub)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce, i32 0, i32 0
  store %struct.ValueWrapper* %call, %struct.ValueWrapper** %coerce.dive2, align 8
  %call3 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce)
  %5 = load i64, i64* %i, align 8
  %call4 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %5)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce5, i32 0, i32 0
  store %struct.ValueWrapper* %call4, %struct.ValueWrapper** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce5)
  %call8 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %call3, %struct.ValueWrapper* dereferenceable(8) %call7)
  br i1 %call8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %7, 1
  %call10 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %sub9)
  %coerce.dive12 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce11, i32 0, i32 0
  store %struct.ValueWrapper* %call10, %struct.ValueWrapper** %coerce.dive12, align 8
  %call13 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce11)
  %8 = load i64, i64* %free, align 8
  %call14 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %8)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce15, i32 0, i32 0
  store %struct.ValueWrapper* %call14, %struct.ValueWrapper** %coerce.dive16, align 8
  %call17 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce15)
  %9 = bitcast %struct.ValueWrapper* %call17 to i8*
  %10 = bitcast %struct.ValueWrapper* %call13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %11, 1
  store i64 %sub18, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %i, align 8
  %add19 = add nsw i64 %13, %12
  store i64 %add19, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %count.addr, align 8
  %cmp20 = icmp eq i64 %14, %15
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %for.end
  %16 = load i64, i64* %i, align 8
  %sub22 = sub nsw i64 %16, 1
  %call23 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %sub22)
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce24, i32 0, i32 0
  store %struct.ValueWrapper* %call23, %struct.ValueWrapper** %coerce.dive25, align 8
  %call26 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce24)
  %17 = load i64, i64* %free, align 8
  %call27 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %17)
  %coerce.dive29 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce28, i32 0, i32 0
  store %struct.ValueWrapper* %call27, %struct.ValueWrapper** %coerce.dive29, align 8
  %call30 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce28)
  %18 = bitcast %struct.ValueWrapper* %call30 to i8*
  %19 = bitcast %struct.ValueWrapper* %call26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = load i64, i64* %i, align 8
  %sub31 = sub nsw i64 %20, 1
  store i64 %sub31, i64* %free, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %for.end
  %21 = load i64, i64* %free, align 8
  %sub33 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub33, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end32
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp34 = icmp sgt i64 %22, %23
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  %call35 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %24)
  %coerce.dive37 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce36, i32 0, i32 0
  store %struct.ValueWrapper* %call35, %struct.ValueWrapper** %coerce.dive37, align 8
  %call38 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce36)
  %call39 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %call38, %struct.ValueWrapper* dereferenceable(8) %next)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %call39, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load i64, i64* %i, align 8
  %call40 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %26)
  %coerce.dive42 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce41, i32 0, i32 0
  store %struct.ValueWrapper* %call40, %struct.ValueWrapper** %coerce.dive42, align 8
  %call43 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce41)
  %27 = load i64, i64* %free, align 8
  %call44 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %27)
  %coerce.dive46 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce45, i32 0, i32 0
  store %struct.ValueWrapper* %call44, %struct.ValueWrapper** %coerce.dive46, align 8
  %call47 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce45)
  %28 = bitcast %struct.ValueWrapper* %call47 to i8*
  %29 = bitcast %struct.ValueWrapper* %call43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  %30 = load i64, i64* %i, align 8
  store i64 %30, i64* %free, align 8
  %31 = load i64, i64* %free, align 8
  %sub48 = sub nsw i64 %31, 1
  %div49 = sdiv i64 %sub48, 2
  store i64 %div49, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i64, i64* %free, align 8
  %call50 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %begin, i64 %32)
  %coerce.dive52 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce51, i32 0, i32 0
  store %struct.ValueWrapper* %call50, %struct.ValueWrapper** %coerce.dive52, align 8
  %call53 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce51)
  %33 = bitcast %struct.ValueWrapper* %call53 to i8*
  %34 = bitcast %struct.ValueWrapper* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark4copyIP12ValueWrapperIdES3_EEvT_S4_T0_(%struct.ValueWrapper* %firstSource, %struct.ValueWrapper* %lastSource, %struct.ValueWrapper* %firstDest) #1 comdat {
entry:
  %firstSource.addr = alloca %struct.ValueWrapper*, align 8
  %lastSource.addr = alloca %struct.ValueWrapper*, align 8
  %firstDest.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %firstSource, %struct.ValueWrapper** %firstSource.addr, align 8
  store %struct.ValueWrapper* %lastSource, %struct.ValueWrapper** %lastSource.addr, align 8
  store %struct.ValueWrapper* %firstDest, %struct.ValueWrapper** %firstDest.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstSource.addr, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %lastSource.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstSource.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %2, i32 1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %firstSource.addr, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %firstDest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %3, i32 1
  store %struct.ValueWrapper* %incdec.ptr1, %struct.ValueWrapper** %firstDest.addr, align 8
  %4 = bitcast %struct.ValueWrapper* %3 to i8*
  %5 = bitcast %struct.ValueWrapper* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %begin, %struct.ValueWrapper* %end) #0 comdat {
entry:
  %begin.addr = alloca %struct.ValueWrapper*, align 8
  %end.addr = alloca %struct.ValueWrapper*, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca %struct.ValueWrapper, align 8
  %agg.tmp = alloca %struct.ValueWrapper, align 8
  %next5 = alloca %struct.ValueWrapper, align 8
  %agg.tmp8 = alloca %struct.ValueWrapper, align 8
  store %struct.ValueWrapper* %begin, %struct.ValueWrapper** %begin.addr, align 8
  store %struct.ValueWrapper* %end, %struct.ValueWrapper** %end.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %end.addr, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ValueWrapper* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ValueWrapper* %1 to i64
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
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %5 = load i64, i64* %j, align 8
  %add.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %4, i64 %5
  %6 = bitcast %struct.ValueWrapper* %next to i8*
  %7 = bitcast %struct.ValueWrapper* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = load i64, i64* %count, align 8
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %10 = load i64, i64* %j, align 8
  %11 = bitcast %struct.ValueWrapper* %agg.tmp to i8*
  %12 = bitcast %struct.ValueWrapper* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp, i32 0, i32 0
  %13 = load double, double* %coerce.dive, align 8
  call void @_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_(i64 %8, %struct.ValueWrapper* %9, i64 %10, double %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %j, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %count, align 8
  %sub1 = sub nsw i64 %15, 1
  store i64 %sub1, i64* %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %16 = load i64, i64* %j, align 8
  %cmp3 = icmp sge i64 %16, 1
  br i1 %cmp3, label %for.body4, label %for.end12

for.body4:                                        ; preds = %for.cond2
  %17 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %18 = load i64, i64* %j, align 8
  %add.ptr6 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %17, i64 %18
  %19 = bitcast %struct.ValueWrapper* %next5 to i8*
  %20 = bitcast %struct.ValueWrapper* %add.ptr6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %22 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %23 = load i64, i64* %j, align 8
  %add.ptr7 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %22, i64 %23
  %24 = bitcast %struct.ValueWrapper* %add.ptr7 to i8*
  %25 = bitcast %struct.ValueWrapper* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load i64, i64* %j, align 8
  %27 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %28 = bitcast %struct.ValueWrapper* %agg.tmp8 to i8*
  %29 = bitcast %struct.ValueWrapper* %next5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %agg.tmp8, i32 0, i32 0
  %30 = load double, double* %coerce.dive9, align 8
  call void @_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_(i64 %26, %struct.ValueWrapper* %27, i64 0, double %30)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body4
  %31 = load i64, i64* %j, align 8
  %dec11 = add nsw i64 %31, -1
  store i64 %dec11, i64* %j, align 8
  br label %for.cond2

for.end12:                                        ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedIP12ValueWrapperIdEEvT_S3_(%struct.ValueWrapper* %first, %struct.ValueWrapper* %last) #0 comdat {
entry:
  %first.addr = alloca %struct.ValueWrapper*, align 8
  %last.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %first, %struct.ValueWrapper** %first.addr, align 8
  store %struct.ValueWrapper* %last, %struct.ValueWrapper** %last.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %last.addr, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_(%struct.ValueWrapper* %0, %struct.ValueWrapper* %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @current_test, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedIP12ValueWrapperIdEEEbT_S4_(%struct.ValueWrapper* %first, %struct.ValueWrapper* %last) #1 comdat {
entry:
  %retval = alloca i1, align 1
  %first.addr = alloca %struct.ValueWrapper*, align 8
  %last.addr = alloca %struct.ValueWrapper*, align 8
  %prev = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %first, %struct.ValueWrapper** %first.addr, align 8
  store %struct.ValueWrapper* %last, %struct.ValueWrapper** %last.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  store %struct.ValueWrapper* %0, %struct.ValueWrapper** %prev, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %1, i32 1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %first.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %last.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %4, i32 1
  store %struct.ValueWrapper* %incdec.ptr1, %struct.ValueWrapper** %first.addr, align 8
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %prev, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %5, i32 1
  store %struct.ValueWrapper* %incdec.ptr2, %struct.ValueWrapper** %prev, align 8
  %call = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %4, %struct.ValueWrapper* dereferenceable(8) %5)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_(i64 %count, %struct.ValueWrapper* %begin, i64 %free_in, double %next.coerce) #1 comdat {
entry:
  %next = alloca %struct.ValueWrapper, align 8
  %count.addr = alloca i64, align 8
  %begin.addr = alloca %struct.ValueWrapper*, align 8
  %free_in.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %next, i32 0, i32 0
  store double %next.coerce, double* %coerce.dive, align 8
  store i64 %count, i64* %count.addr, align 8
  store %struct.ValueWrapper* %begin, %struct.ValueWrapper** %begin.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
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
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %5 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %5, 1
  %add.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %4, i64 %sub
  %6 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %7 = load i64, i64* %i, align 8
  %add.ptr1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %6, i64 %7
  %call = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %add.ptr, %struct.ValueWrapper* dereferenceable(8) %add.ptr1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %10 = load i64, i64* %i, align 8
  %sub2 = sub nsw i64 %10, 1
  %add.ptr3 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %9, i64 %sub2
  %11 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %12 = load i64, i64* %free, align 8
  %add.ptr4 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %11, i64 %12
  %13 = bitcast %struct.ValueWrapper* %add.ptr4 to i8*
  %14 = bitcast %struct.ValueWrapper* %add.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = load i64, i64* %i, align 8
  %sub5 = sub nsw i64 %15, 1
  store i64 %sub5, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %i, align 8
  %add6 = add nsw i64 %17, %16
  store i64 %add6, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %count.addr, align 8
  %cmp7 = icmp eq i64 %18, %19
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %for.end
  %20 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %21 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %21, 1
  %add.ptr10 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %20, i64 %sub9
  %22 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %23 = load i64, i64* %free, align 8
  %add.ptr11 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %22, i64 %23
  %24 = bitcast %struct.ValueWrapper* %add.ptr11 to i8*
  %25 = bitcast %struct.ValueWrapper* %add.ptr10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load i64, i64* %i, align 8
  %sub12 = sub nsw i64 %26, 1
  store i64 %sub12, i64* %free, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %for.end
  %27 = load i64, i64* %free, align 8
  %sub14 = sub nsw i64 %27, 1
  %div = sdiv i64 %sub14, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %28 = load i64, i64* %free, align 8
  %29 = load i64, i64* %free_in.addr, align 8
  %cmp15 = icmp sgt i64 %28, %29
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr16 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %30, i64 %31
  %call17 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %add.ptr16, %struct.ValueWrapper* dereferenceable(8) %next)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %call17, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %34 = load i64, i64* %i, align 8
  %add.ptr18 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %33, i64 %34
  %35 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %36 = load i64, i64* %free, align 8
  %add.ptr19 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %35, i64 %36
  %37 = bitcast %struct.ValueWrapper* %add.ptr19 to i8*
  %38 = bitcast %struct.ValueWrapper* %add.ptr18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 8, i32 8, i1 false)
  %39 = load i64, i64* %i, align 8
  store i64 %39, i64* %free, align 8
  %40 = load i64, i64* %free, align 8
  %sub20 = sub nsw i64 %40, 1
  %div21 = sdiv i64 %sub20, 2
  store i64 %div21, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %41 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %42 = load i64, i64* %free, align 8
  %add.ptr22 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %41, i64 %42
  %43 = bitcast %struct.ValueWrapper* %add.ptr22 to i8*
  %44 = bitcast %struct.ValueWrapper* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyI14PointerWrapperIdES2_EEvT_S3_T0_(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce) #0 comdat {
entry:
  %firstSource = alloca %struct.PointerWrapper, align 8
  %lastSource = alloca %struct.PointerWrapper, align 8
  %firstDest = alloca %struct.PointerWrapper, align 8
  %coerce = alloca %struct.PointerWrapper, align 8
  %coerce7 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZneIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %firstSource, %struct.PointerWrapper* dereferenceable(8) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %firstSource, i32 0)
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce, i32 0, i32 0
  store double* %call3, double** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce)
  %0 = load double, double* %call5, align 8
  %call6 = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %firstDest, i32 0)
  %coerce.dive8 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce7, i32 0, i32 0
  store double* %call6, double** %coerce.dive8, align 8
  %call9 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce7)
  store double %0, double* %call9, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(double* %begin.coerce, double* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper, align 8
  %end = alloca %struct.PointerWrapper, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %coerce = alloca %struct.PointerWrapper, align 8
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %next10 = alloca double, align 8
  %coerce12 = alloca %struct.PointerWrapper, align 8
  %coerce17 = alloca %struct.PointerWrapper, align 8
  %agg.tmp20 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  %call = call i64 @_ZmiIdElR14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %end, %struct.PointerWrapper* dereferenceable(8) %begin)
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
  %call2 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %2)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce)
  %3 = load double, double* %call4, align 8
  store double %3, double* %next, align 8
  %4 = load i64, i64* %count, align 8
  %5 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %6 = bitcast %struct.PointerWrapper* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load i64, i64* %j, align 8
  %8 = load double, double* %next, align 8
  %coerce.dive5 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %9 = load double*, double** %coerce.dive5, align 8
  call void @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(i64 %4, double* %9, i64 %7, double %8)
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
  %call11 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %13)
  %coerce.dive13 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce12, i32 0, i32 0
  store double* %call11, double** %coerce.dive13, align 8
  %call14 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce12)
  %14 = load double, double* %call14, align 8
  store double %14, double* %next10, align 8
  %call15 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %begin)
  %15 = load double, double* %call15, align 8
  %16 = load i64, i64* %j, align 8
  %call16 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %16)
  %coerce.dive18 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce17, i32 0, i32 0
  store double* %call16, double** %coerce.dive18, align 8
  %call19 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce17)
  store double %15, double* %call19, align 8
  %17 = load i64, i64* %j, align 8
  %18 = bitcast %struct.PointerWrapper* %agg.tmp20 to i8*
  %19 = bitcast %struct.PointerWrapper* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = load double, double* %next10, align 8
  %coerce.dive21 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp20, i32 0, i32 0
  %21 = load double*, double** %coerce.dive21, align 8
  call void @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(i64 %17, double* %21, i64 0, double %20)
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
define linkonce_odr void @_Z13verify_sortedI14PointerWrapperIdEEvT_S2_(double* %first.coerce, double* %last.coerce) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper, align 8
  %last = alloca %struct.PointerWrapper, align 8
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %agg.tmp2 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %1 = bitcast %struct.PointerWrapper* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %struct.PointerWrapper* %agg.tmp2 to i8*
  %3 = bitcast %struct.PointerWrapper* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_(double* %4, double* %5)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @current_test, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedI14PointerWrapperIdEEEbT_S3_(double* %first.coerce, double* %last.coerce) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %first = alloca %struct.PointerWrapper, align 8
  %last = alloca %struct.PointerWrapper, align 8
  %prev = alloca %struct.PointerWrapper, align 8
  %coerce = alloca %struct.PointerWrapper, align 8
  %coerce5 = alloca %struct.PointerWrapper, align 8
  %coerce9 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper* %prev to i8*
  %1 = bitcast %struct.PointerWrapper* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %first, i32 0)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call3 = call zeroext i1 @_ZneIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %first, %struct.PointerWrapper* dereferenceable(8) %last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %first, i32 0)
  %coerce.dive6 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce5, i32 0, i32 0
  store double* %call4, double** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce5)
  %2 = load double, double* %call7, align 8
  %call8 = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %prev, i32 0)
  %coerce.dive10 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce9, i32 0, i32 0
  store double* %call8, double** %coerce.dive10, align 8
  %call11 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce9)
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
define linkonce_odr double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %xx, i32) #0 comdat {
entry:
  %retval = alloca %struct.PointerWrapper, align 8
  %xx.addr = alloca %struct.PointerWrapper*, align 8
  %.addr = alloca i32, align 4
  store %struct.PointerWrapper* %xx, %struct.PointerWrapper** %xx.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %1 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  %2 = bitcast %struct.PointerWrapper* %retval to i8*
  %3 = bitcast %struct.PointerWrapper* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  %call = call dereferenceable(8) %struct.PointerWrapper* @_ZppIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %4)
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %retval, i32 0, i32 0
  %5 = load double*, double** %coerce.dive, align 8
  ret double* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZneIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %x, %struct.PointerWrapper* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.PointerWrapper*, align 8
  %y.addr = alloca %struct.PointerWrapper*, align 8
  store %struct.PointerWrapper* %x, %struct.PointerWrapper** %x.addr, align 8
  store %struct.PointerWrapper* %y, %struct.PointerWrapper** %y.addr, align 8
  %0 = load %struct.PointerWrapper*, %struct.PointerWrapper** %x.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %2 = load %struct.PointerWrapper*, %struct.PointerWrapper** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %2, i32 0, i32 0
  %3 = load double*, double** %current1, align 8
  %cmp = icmp ne double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.PointerWrapper*, align 8
  store %struct.PointerWrapper* %this, %struct.PointerWrapper** %this.addr, align 8
  %this1 = load %struct.PointerWrapper*, %struct.PointerWrapper** %this.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  ret double* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.PointerWrapper* @_ZppIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %xx) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper*, align 8
  store %struct.PointerWrapper* %xx, %struct.PointerWrapper** %xx.addr, align 8
  %0 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 1
  store double* %incdec.ptr, double** %current, align 8
  %2 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  ret %struct.PointerWrapper* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZmiIdElR14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %xx, %struct.PointerWrapper* dereferenceable(8) %yy) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper*, align 8
  %yy.addr = alloca %struct.PointerWrapper*, align 8
  store %struct.PointerWrapper* %xx, %struct.PointerWrapper** %xx.addr, align 8
  store %struct.PointerWrapper* %yy, %struct.PointerWrapper** %yy.addr, align 8
  %0 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %2 = load %struct.PointerWrapper*, %struct.PointerWrapper** %yy.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %2, i32 0, i32 0
  %3 = load double*, double** %current1, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %xx, i64 %inc) #1 comdat {
entry:
  %retval = alloca %struct.PointerWrapper, align 8
  %xx.addr = alloca %struct.PointerWrapper*, align 8
  %inc.addr = alloca i64, align 8
  store %struct.PointerWrapper* %xx, %struct.PointerWrapper** %xx.addr, align 8
  store i64 %inc, i64* %inc.addr, align 8
  %0 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  %1 = bitcast %struct.PointerWrapper* %retval to i8*
  %2 = bitcast %struct.PointerWrapper* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = load i64, i64* %inc.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %retval, i32 0, i32 0
  %4 = load double*, double** %current, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %3
  store double* %add.ptr, double** %current, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %retval, i32 0, i32 0
  %5 = load double*, double** %coerce.dive, align 8
  ret double* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(i64 %count, double* %begin.coerce, i64 %free_in, double %next) #1 comdat {
entry:
  %begin = alloca %struct.PointerWrapper, align 8
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %coerce = alloca %struct.PointerWrapper, align 8
  %coerce4 = alloca %struct.PointerWrapper, align 8
  %coerce10 = alloca %struct.PointerWrapper, align 8
  %coerce14 = alloca %struct.PointerWrapper, align 8
  %coerce23 = alloca %struct.PointerWrapper, align 8
  %coerce27 = alloca %struct.PointerWrapper, align 8
  %coerce35 = alloca %struct.PointerWrapper, align 8
  %coerce40 = alloca %struct.PointerWrapper, align 8
  %coerce44 = alloca %struct.PointerWrapper, align 8
  %coerce50 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %begin, i32 0, i32 0
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
  %call = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %sub)
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive1, align 8
  %call2 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce)
  %5 = load double, double* %call2, align 8
  %6 = load i64, i64* %i, align 8
  %call3 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %6)
  %coerce.dive5 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce4, i32 0, i32 0
  store double* %call3, double** %coerce.dive5, align 8
  %call6 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce4)
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
  %call9 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %sub8)
  %coerce.dive11 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce10, i32 0, i32 0
  store double* %call9, double** %coerce.dive11, align 8
  %call12 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce10)
  %10 = load double, double* %call12, align 8
  %11 = load i64, i64* %free, align 8
  %call13 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %11)
  %coerce.dive15 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce14, i32 0, i32 0
  store double* %call13, double** %coerce.dive15, align 8
  %call16 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce14)
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
  %call22 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %sub21)
  %coerce.dive24 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce23, i32 0, i32 0
  store double* %call22, double** %coerce.dive24, align 8
  %call25 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce23)
  %18 = load double, double* %call25, align 8
  %19 = load i64, i64* %free, align 8
  %call26 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %19)
  %coerce.dive28 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce27, i32 0, i32 0
  store double* %call26, double** %coerce.dive28, align 8
  %call29 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce27)
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
  %call34 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %24)
  %coerce.dive36 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce35, i32 0, i32 0
  store double* %call34, double** %coerce.dive36, align 8
  %call37 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce35)
  %25 = load double, double* %call37, align 8
  %26 = load double, double* %next.addr, align 8
  %cmp38 = fcmp olt double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %i, align 8
  %call39 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %28)
  %coerce.dive41 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce40, i32 0, i32 0
  store double* %call39, double** %coerce.dive41, align 8
  %call42 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce40)
  %29 = load double, double* %call42, align 8
  %30 = load i64, i64* %free, align 8
  %call43 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %30)
  %coerce.dive45 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce44, i32 0, i32 0
  store double* %call43, double** %coerce.dive45, align 8
  %call46 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce44)
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
  %call49 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %begin, i64 %34)
  %coerce.dive51 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce50, i32 0, i32 0
  store double* %call49, double** %coerce.dive51, align 8
  %call52 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce50)
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
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %2)
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
define linkonce_odr void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.10, align 8
  %end = alloca %struct.PointerWrapper.10, align 8
  %middleValue = alloca %struct.ValueWrapper.0, align 8
  %left = alloca %struct.PointerWrapper.10, align 8
  %right = alloca %struct.PointerWrapper.10, align 8
  %temp = alloca %struct.ValueWrapper.0, align 8
  %agg.tmp = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp21 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp26 = alloca %struct.PointerWrapper.10, align 8
  %agg.tmp29 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %begin, i32 0, i32 0
  store %struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %end, i32 0, i32 0
  store %struct.ValueWrapper.0* %end.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %call = call i64 @_ZmiI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEElR14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %end, %struct.PointerWrapper.10* dereferenceable(8) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %call2 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %begin)
  %0 = bitcast %struct.ValueWrapper.0* %middleValue to i8*
  %1 = bitcast %struct.ValueWrapper.0* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %struct.PointerWrapper.10* %left to i8*
  %3 = bitcast %struct.PointerWrapper.10* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.10* %right to i8*
  %5 = bitcast %struct.PointerWrapper.10* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %call3 = call dereferenceable(8) %struct.PointerWrapper.10* @_ZmmI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %right)
  %call4 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %call3)
  %call5 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %middleValue, %struct.ValueWrapper.0* dereferenceable(8) %call4)
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call6 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %left, %struct.PointerWrapper.10* dereferenceable(8) %right)
  br i1 %call6, label %if.end, label %if.then7

if.then7:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %if.end
  %call9 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %left)
  %call10 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %call9, %struct.ValueWrapper.0* dereferenceable(8) %middleValue)
  br i1 %call10, label %while.body11, label %while.end13

while.body11:                                     ; preds = %while.cond8
  %call12 = call dereferenceable(8) %struct.PointerWrapper.10* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %left)
  br label %while.cond8

while.end13:                                      ; preds = %while.cond8
  %call14 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %left, %struct.PointerWrapper.10* dereferenceable(8) %right)
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.end13
  br label %for.end

if.end16:                                         ; preds = %while.end13
  %call17 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %right)
  %6 = bitcast %struct.ValueWrapper.0* %temp to i8*
  %7 = bitcast %struct.ValueWrapper.0* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %call18 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %left)
  %call19 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %right)
  %8 = bitcast %struct.ValueWrapper.0* %call19 to i8*
  %9 = bitcast %struct.ValueWrapper.0* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %call20 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %left)
  %10 = bitcast %struct.ValueWrapper.0* %call20 to i8*
  %11 = bitcast %struct.ValueWrapper.0* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  br label %for.cond

for.end:                                          ; preds = %if.then15, %if.then7
  %12 = bitcast %struct.PointerWrapper.10* %agg.tmp to i8*
  %13 = bitcast %struct.PointerWrapper.10* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %call22 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %right, i64 1)
  %coerce.dive23 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp21, i32 0, i32 0
  store %struct.ValueWrapper.0* %call22, %struct.ValueWrapper.0** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp, i32 0, i32 0
  %14 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp21, i32 0, i32 0
  %15 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive25, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %14, %struct.ValueWrapper.0* %15)
  %call27 = call %struct.ValueWrapper.0* @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_l(%struct.PointerWrapper.10* dereferenceable(8) %right, i64 1)
  %coerce.dive28 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp26, i32 0, i32 0
  store %struct.ValueWrapper.0* %call27, %struct.ValueWrapper.0** %coerce.dive28, align 8
  %16 = bitcast %struct.PointerWrapper.10* %agg.tmp29 to i8*
  %17 = bitcast %struct.PointerWrapper.10* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %coerce.dive30 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp26, i32 0, i32 0
  %18 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive30, align 8
  %coerce.dive31 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %agg.tmp29, i32 0, i32 0
  %19 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %coerce.dive31, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %18, %struct.ValueWrapper.0* %19)
  br label %if.end32

if.end32:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.PointerWrapper.10* @_ZmmI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %xx) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper.10*, align 8
  store %struct.PointerWrapper.10* %xx, %struct.PointerWrapper.10** %xx.addr, align 8
  %0 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %1, i32 -1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %current, align 8
  %2 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %xx.addr, align 8
  ret %struct.PointerWrapper.10* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %x, %struct.PointerWrapper.10* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.PointerWrapper.10*, align 8
  %y.addr = alloca %struct.PointerWrapper.10*, align 8
  store %struct.PointerWrapper.10* %x, %struct.PointerWrapper.10** %x.addr, align 8
  store %struct.PointerWrapper.10* %y, %struct.PointerWrapper.10** %y.addr, align 8
  %0 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %x.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current, align 8
  %2 = load %struct.PointerWrapper.10*, %struct.PointerWrapper.10** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %2, i32 0, i32 0
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %current1, align 8
  %cmp = icmp ult %struct.ValueWrapper.0* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0* %end) #0 comdat {
entry:
  %begin.addr = alloca %struct.ValueWrapper.0*, align 8
  %end.addr = alloca %struct.ValueWrapper.0*, align 8
  %middleValue = alloca %struct.ValueWrapper.0, align 8
  %left = alloca %struct.ValueWrapper.0*, align 8
  %right = alloca %struct.ValueWrapper.0*, align 8
  %temp = alloca %struct.ValueWrapper.0, align 8
  store %struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0** %begin.addr, align 8
  store %struct.ValueWrapper.0* %end, %struct.ValueWrapper.0** %end.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %end.addr, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ValueWrapper.0* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ValueWrapper.0* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %3 = bitcast %struct.ValueWrapper.0* %middleValue to i8*
  %4 = bitcast %struct.ValueWrapper.0* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  store %struct.ValueWrapper.0* %5, %struct.ValueWrapper.0** %left, align 8
  %6 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %end.addr, align 8
  store %struct.ValueWrapper.0* %6, %struct.ValueWrapper.0** %right, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %7 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %7, i32 -1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %right, align 8
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %middleValue, %struct.ValueWrapper.0* dereferenceable(8) %incdec.ptr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %left, align 8
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %cmp1 = icmp ult %struct.ValueWrapper.0* %8, %9
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %10 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %left, align 8
  %call4 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %10, %struct.ValueWrapper.0* dereferenceable(8) %middleValue)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %11 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %left, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %11, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr6, %struct.ValueWrapper.0** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %12 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %left, align 8
  %13 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %cmp8 = icmp ult %struct.ValueWrapper.0* %12, %13
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %14 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %15 = bitcast %struct.ValueWrapper.0* %temp to i8*
  %16 = bitcast %struct.ValueWrapper.0* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %left, align 8
  %18 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %19 = bitcast %struct.ValueWrapper.0* %18 to i8*
  %20 = bitcast %struct.ValueWrapper.0* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %left, align 8
  %22 = bitcast %struct.ValueWrapper.0* %21 to i8*
  %23 = bitcast %struct.ValueWrapper.0* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %24 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %25 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %add.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %25, i64 1
  call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %24, %struct.ValueWrapper.0* %add.ptr)
  %26 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %right, align 8
  %add.ptr11 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %26, i64 1
  %27 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %end.addr, align 8
  call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %add.ptr11, %struct.ValueWrapper.0* %27)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.9, align 8
  %end = alloca %struct.PointerWrapper.9, align 8
  %middleValue = alloca %struct.ValueWrapper, align 8
  %left = alloca %struct.PointerWrapper.9, align 8
  %right = alloca %struct.PointerWrapper.9, align 8
  %temp = alloca %struct.ValueWrapper, align 8
  %agg.tmp = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp21 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp26 = alloca %struct.PointerWrapper.9, align 8
  %agg.tmp29 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %begin, i32 0, i32 0
  store %struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %end, i32 0, i32 0
  store %struct.ValueWrapper* %end.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %call = call i64 @_ZmiI12ValueWrapperIdEElR14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %end, %struct.PointerWrapper.9* dereferenceable(8) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %call2 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %begin)
  %0 = bitcast %struct.ValueWrapper* %middleValue to i8*
  %1 = bitcast %struct.ValueWrapper* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %struct.PointerWrapper.9* %left to i8*
  %3 = bitcast %struct.PointerWrapper.9* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.9* %right to i8*
  %5 = bitcast %struct.PointerWrapper.9* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %call3 = call dereferenceable(8) %struct.PointerWrapper.9* @_ZmmI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %right)
  %call4 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %call3)
  %call5 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %middleValue, %struct.ValueWrapper* dereferenceable(8) %call4)
  br i1 %call5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call6 = call zeroext i1 @_ZltI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %left, %struct.PointerWrapper.9* dereferenceable(8) %right)
  br i1 %call6, label %if.end, label %if.then7

if.then7:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %if.end
  %call9 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %left)
  %call10 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %call9, %struct.ValueWrapper* dereferenceable(8) %middleValue)
  br i1 %call10, label %while.body11, label %while.end13

while.body11:                                     ; preds = %while.cond8
  %call12 = call dereferenceable(8) %struct.PointerWrapper.9* @_ZppI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %left)
  br label %while.cond8

while.end13:                                      ; preds = %while.cond8
  %call14 = call zeroext i1 @_ZltI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %left, %struct.PointerWrapper.9* dereferenceable(8) %right)
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.end13
  br label %for.end

if.end16:                                         ; preds = %while.end13
  %call17 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %right)
  %6 = bitcast %struct.ValueWrapper* %temp to i8*
  %7 = bitcast %struct.ValueWrapper* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %call18 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %left)
  %call19 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %right)
  %8 = bitcast %struct.ValueWrapper* %call19 to i8*
  %9 = bitcast %struct.ValueWrapper* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %call20 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %left)
  %10 = bitcast %struct.ValueWrapper* %call20 to i8*
  %11 = bitcast %struct.ValueWrapper* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  br label %for.cond

for.end:                                          ; preds = %if.then15, %if.then7
  %12 = bitcast %struct.PointerWrapper.9* %agg.tmp to i8*
  %13 = bitcast %struct.PointerWrapper.9* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %call22 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %right, i64 1)
  %coerce.dive23 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp21, i32 0, i32 0
  store %struct.ValueWrapper* %call22, %struct.ValueWrapper** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp, i32 0, i32 0
  %14 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp21, i32 0, i32 0
  %15 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive25, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %14, %struct.ValueWrapper* %15)
  %call27 = call %struct.ValueWrapper* @_ZplI12ValueWrapperIdEE14PointerWrapperIT_ERS4_l(%struct.PointerWrapper.9* dereferenceable(8) %right, i64 1)
  %coerce.dive28 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp26, i32 0, i32 0
  store %struct.ValueWrapper* %call27, %struct.ValueWrapper** %coerce.dive28, align 8
  %16 = bitcast %struct.PointerWrapper.9* %agg.tmp29 to i8*
  %17 = bitcast %struct.PointerWrapper.9* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %coerce.dive30 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp26, i32 0, i32 0
  %18 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive30, align 8
  %coerce.dive31 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %agg.tmp29, i32 0, i32 0
  %19 = load %struct.ValueWrapper*, %struct.ValueWrapper** %coerce.dive31, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %18, %struct.ValueWrapper* %19)
  br label %if.end32

if.end32:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.PointerWrapper.9* @_ZmmI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %xx) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper.9*, align 8
  store %struct.PointerWrapper.9* %xx, %struct.PointerWrapper.9** %xx.addr, align 8
  %0 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %1, i32 -1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %current, align 8
  %2 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %xx.addr, align 8
  ret %struct.PointerWrapper.9* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZltI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %x, %struct.PointerWrapper.9* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.PointerWrapper.9*, align 8
  %y.addr = alloca %struct.PointerWrapper.9*, align 8
  store %struct.PointerWrapper.9* %x, %struct.PointerWrapper.9** %x.addr, align 8
  store %struct.PointerWrapper.9* %y, %struct.PointerWrapper.9** %y.addr, align 8
  %0 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %x.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current, align 8
  %2 = load %struct.PointerWrapper.9*, %struct.PointerWrapper.9** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %2, i32 0, i32 0
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %current1, align 8
  %cmp = icmp ult %struct.ValueWrapper* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %begin, %struct.ValueWrapper* %end) #0 comdat {
entry:
  %begin.addr = alloca %struct.ValueWrapper*, align 8
  %end.addr = alloca %struct.ValueWrapper*, align 8
  %middleValue = alloca %struct.ValueWrapper, align 8
  %left = alloca %struct.ValueWrapper*, align 8
  %right = alloca %struct.ValueWrapper*, align 8
  %temp = alloca %struct.ValueWrapper, align 8
  store %struct.ValueWrapper* %begin, %struct.ValueWrapper** %begin.addr, align 8
  store %struct.ValueWrapper* %end, %struct.ValueWrapper** %end.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %end.addr, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ValueWrapper* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ValueWrapper* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %3 = bitcast %struct.ValueWrapper* %middleValue to i8*
  %4 = bitcast %struct.ValueWrapper* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  store %struct.ValueWrapper* %5, %struct.ValueWrapper** %left, align 8
  %6 = load %struct.ValueWrapper*, %struct.ValueWrapper** %end.addr, align 8
  store %struct.ValueWrapper* %6, %struct.ValueWrapper** %right, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %7 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %7, i32 -1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %right, align 8
  %call = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %middleValue, %struct.ValueWrapper* dereferenceable(8) %incdec.ptr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %left, align 8
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %cmp1 = icmp ult %struct.ValueWrapper* %8, %9
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %if.end
  %10 = load %struct.ValueWrapper*, %struct.ValueWrapper** %left, align 8
  %call4 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %10, %struct.ValueWrapper* dereferenceable(8) %middleValue)
  br i1 %call4, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %11 = load %struct.ValueWrapper*, %struct.ValueWrapper** %left, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %11, i32 1
  store %struct.ValueWrapper* %incdec.ptr6, %struct.ValueWrapper** %left, align 8
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %12 = load %struct.ValueWrapper*, %struct.ValueWrapper** %left, align 8
  %13 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %cmp8 = icmp ult %struct.ValueWrapper* %12, %13
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end7
  br label %for.end

if.end10:                                         ; preds = %while.end7
  %14 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %15 = bitcast %struct.ValueWrapper* %temp to i8*
  %16 = bitcast %struct.ValueWrapper* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = load %struct.ValueWrapper*, %struct.ValueWrapper** %left, align 8
  %18 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %19 = bitcast %struct.ValueWrapper* %18 to i8*
  %20 = bitcast %struct.ValueWrapper* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.ValueWrapper*, %struct.ValueWrapper** %left, align 8
  %22 = bitcast %struct.ValueWrapper* %21 to i8*
  %23 = bitcast %struct.ValueWrapper* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then2
  %24 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %25 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %add.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %25, i64 1
  call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %24, %struct.ValueWrapper* %add.ptr)
  %26 = load %struct.ValueWrapper*, %struct.ValueWrapper** %right, align 8
  %add.ptr11 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %26, i64 1
  %27 = load %struct.ValueWrapper*, %struct.ValueWrapper** %end.addr, align 8
  call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %add.ptr11, %struct.ValueWrapper* %27)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(double* %begin.coerce, double* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper, align 8
  %end = alloca %struct.PointerWrapper, align 8
  %middleValue = alloca double, align 8
  %left = alloca %struct.PointerWrapper, align 8
  %right = alloca %struct.PointerWrapper, align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %struct.PointerWrapper, align 8
  %agg.tmp21 = alloca %struct.PointerWrapper, align 8
  %agg.tmp26 = alloca %struct.PointerWrapper, align 8
  %agg.tmp29 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  %call = call i64 @_ZmiIdElR14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %end, %struct.PointerWrapper* dereferenceable(8) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %call2 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %begin)
  %0 = load double, double* %call2, align 8
  store double %0, double* %middleValue, align 8
  %1 = bitcast %struct.PointerWrapper* %left to i8*
  %2 = bitcast %struct.PointerWrapper* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %struct.PointerWrapper* %right to i8*
  %4 = bitcast %struct.PointerWrapper* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %5 = load double, double* %middleValue, align 8
  %call3 = call dereferenceable(8) %struct.PointerWrapper* @_ZmmIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %right)
  %call4 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %call3)
  %6 = load double, double* %call4, align 8
  %cmp5 = fcmp olt double %5, %6
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call6 = call zeroext i1 @_ZltIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %left, %struct.PointerWrapper* dereferenceable(8) %right)
  br i1 %call6, label %if.end, label %if.then7

if.then7:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %if.end
  %call9 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %left)
  %7 = load double, double* %call9, align 8
  %8 = load double, double* %middleValue, align 8
  %cmp10 = fcmp olt double %7, %8
  br i1 %cmp10, label %while.body11, label %while.end13

while.body11:                                     ; preds = %while.cond8
  %call12 = call dereferenceable(8) %struct.PointerWrapper* @_ZppIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %left)
  br label %while.cond8

while.end13:                                      ; preds = %while.cond8
  %call14 = call zeroext i1 @_ZltIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %left, %struct.PointerWrapper* dereferenceable(8) %right)
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.end13
  br label %for.end

if.end16:                                         ; preds = %while.end13
  %call17 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %right)
  %9 = load double, double* %call17, align 8
  store double %9, double* %temp, align 8
  %call18 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %left)
  %10 = load double, double* %call18, align 8
  %call19 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %right)
  store double %10, double* %call19, align 8
  %11 = load double, double* %temp, align 8
  %call20 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %left)
  store double %11, double* %call20, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then15, %if.then7
  %12 = bitcast %struct.PointerWrapper* %agg.tmp to i8*
  %13 = bitcast %struct.PointerWrapper* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %call22 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %right, i64 1)
  %coerce.dive23 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp21, i32 0, i32 0
  store double* %call22, double** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp, i32 0, i32 0
  %14 = load double*, double** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp21, i32 0, i32 0
  %15 = load double*, double** %coerce.dive25, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(double* %14, double* %15)
  %call27 = call double* @_ZplIdE14PointerWrapperIT_ERS2_l(%struct.PointerWrapper* dereferenceable(8) %right, i64 1)
  %coerce.dive28 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp26, i32 0, i32 0
  store double* %call27, double** %coerce.dive28, align 8
  %16 = bitcast %struct.PointerWrapper* %agg.tmp29 to i8*
  %17 = bitcast %struct.PointerWrapper* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %coerce.dive30 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp26, i32 0, i32 0
  %18 = load double*, double** %coerce.dive30, align 8
  %coerce.dive31 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %agg.tmp29, i32 0, i32 0
  %19 = load double*, double** %coerce.dive31, align 8
  call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(double* %18, double* %19)
  br label %if.end32

if.end32:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.PointerWrapper* @_ZmmIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %xx) #1 comdat {
entry:
  %xx.addr = alloca %struct.PointerWrapper*, align 8
  store %struct.PointerWrapper* %xx, %struct.PointerWrapper** %xx.addr, align 8
  %0 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 -1
  store double* %incdec.ptr, double** %current, align 8
  %2 = load %struct.PointerWrapper*, %struct.PointerWrapper** %xx.addr, align 8
  ret %struct.PointerWrapper* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZltIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %x, %struct.PointerWrapper* dereferenceable(8) %y) #1 comdat {
entry:
  %x.addr = alloca %struct.PointerWrapper*, align 8
  %y.addr = alloca %struct.PointerWrapper*, align 8
  store %struct.PointerWrapper* %x, %struct.PointerWrapper** %x.addr, align 8
  store %struct.PointerWrapper* %y, %struct.PointerWrapper** %y.addr, align 8
  %0 = load %struct.PointerWrapper*, %struct.PointerWrapper** %x.addr, align 8
  %current = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %2 = load %struct.PointerWrapper*, %struct.PointerWrapper** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %2, i32 0, i32 0
  %3 = load double*, double** %current1, align 8
  %cmp = icmp ult double* %1, %3
  ret i1 %cmp
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
define linkonce_odr void @_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(%struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.10, align 8
  %end = alloca %struct.PointerWrapper.10, align 8
  %p = alloca %struct.PointerWrapper.10, align 8
  %coerce = alloca %struct.PointerWrapper.10, align 8
  %tmp = alloca %struct.ValueWrapper.0, align 8
  %j = alloca %struct.PointerWrapper.10, align 8
  %prev = alloca %struct.PointerWrapper.10, align 8
  %coerce16 = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %begin, i32 0, i32 0
  store %struct.ValueWrapper.0* %begin.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %end, i32 0, i32 0
  store %struct.ValueWrapper.0* %end.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper.10* %p to i8*
  %1 = bitcast %struct.PointerWrapper.10* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %p, i32 0)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce, i32 0, i32 0
  store %struct.ValueWrapper.0* %call, %struct.ValueWrapper.0** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call3 = call zeroext i1 @_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %p, %struct.PointerWrapper.10* dereferenceable(8) %end)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %p)
  %2 = bitcast %struct.ValueWrapper.0* %tmp to i8*
  %3 = bitcast %struct.ValueWrapper.0* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.10* %j to i8*
  %5 = bitcast %struct.PointerWrapper.10* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.10* %prev to i8*
  %7 = bitcast %struct.PointerWrapper.10* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call7 = call zeroext i1 @_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %j, %struct.PointerWrapper.10* dereferenceable(8) %begin)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %call8 = call dereferenceable(8) %struct.PointerWrapper.10* @_ZmmI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %prev)
  %call9 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %call8)
  %call10 = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %tmp, %struct.ValueWrapper.0* dereferenceable(8) %call9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %call10, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call11 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %prev)
  %call12 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %j)
  %9 = bitcast %struct.ValueWrapper.0* %call12 to i8*
  %10 = bitcast %struct.ValueWrapper.0* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call13 = call dereferenceable(8) %struct.PointerWrapper.10* @_ZmmI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEER14PointerWrapperIT_ESE_(%struct.PointerWrapper.10* dereferenceable(8) %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %call14 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %j)
  %11 = bitcast %struct.ValueWrapper.0* %call14 to i8*
  %12 = bitcast %struct.ValueWrapper.0* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %call15 = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %p, i32 0)
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce16, i32 0, i32 0
  store %struct.ValueWrapper.0* %call15, %struct.ValueWrapper.0** %coerce.dive17, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(%struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0* %end) #0 comdat {
entry:
  %begin.addr = alloca %struct.ValueWrapper.0*, align 8
  %end.addr = alloca %struct.ValueWrapper.0*, align 8
  %p = alloca %struct.ValueWrapper.0*, align 8
  %tmp = alloca %struct.ValueWrapper.0, align 8
  %j = alloca %struct.ValueWrapper.0*, align 8
  %prev = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %begin, %struct.ValueWrapper.0** %begin.addr, align 8
  store %struct.ValueWrapper.0* %end, %struct.ValueWrapper.0** %end.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  store %struct.ValueWrapper.0* %0, %struct.ValueWrapper.0** %p, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %1, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %p, align 8
  %3 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %end.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper.0* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %p, align 8
  %5 = bitcast %struct.ValueWrapper.0* %tmp to i8*
  %6 = bitcast %struct.ValueWrapper.0* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %p, align 8
  store %struct.ValueWrapper.0* %7, %struct.ValueWrapper.0** %j, align 8
  %8 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %j, align 8
  store %struct.ValueWrapper.0* %8, %struct.ValueWrapper.0** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %j, align 8
  %10 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %begin.addr, align 8
  %cmp3 = icmp ne %struct.ValueWrapper.0* %9, %10
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %prev, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %11, i32 -1
  store %struct.ValueWrapper.0* %incdec.ptr4, %struct.ValueWrapper.0** %prev, align 8
  %call = call zeroext i1 @_ZltI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEbRKS0_IT_ESD_(%struct.ValueWrapper.0* dereferenceable(8) %tmp, %struct.ValueWrapper.0* dereferenceable(8) %incdec.ptr4)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %call, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %prev, align 8
  %14 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %j, align 8
  %15 = bitcast %struct.ValueWrapper.0* %14 to i8*
  %16 = bitcast %struct.ValueWrapper.0* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %j, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %17, i32 -1
  store %struct.ValueWrapper.0* %incdec.ptr5, %struct.ValueWrapper.0** %j, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %j, align 8
  %19 = bitcast %struct.ValueWrapper.0* %18 to i8*
  %20 = bitcast %struct.ValueWrapper.0* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %p, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %21, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr6, %struct.ValueWrapper.0** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(%struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper.9, align 8
  %end = alloca %struct.PointerWrapper.9, align 8
  %p = alloca %struct.PointerWrapper.9, align 8
  %coerce = alloca %struct.PointerWrapper.9, align 8
  %tmp = alloca %struct.ValueWrapper, align 8
  %j = alloca %struct.PointerWrapper.9, align 8
  %prev = alloca %struct.PointerWrapper.9, align 8
  %coerce16 = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %begin, i32 0, i32 0
  store %struct.ValueWrapper* %begin.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %end, i32 0, i32 0
  store %struct.ValueWrapper* %end.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper.9* %p to i8*
  %1 = bitcast %struct.PointerWrapper.9* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %p, i32 0)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce, i32 0, i32 0
  store %struct.ValueWrapper* %call, %struct.ValueWrapper** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call3 = call zeroext i1 @_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %p, %struct.PointerWrapper.9* dereferenceable(8) %end)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %p)
  %2 = bitcast %struct.ValueWrapper* %tmp to i8*
  %3 = bitcast %struct.ValueWrapper* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.PointerWrapper.9* %j to i8*
  %5 = bitcast %struct.PointerWrapper.9* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.PointerWrapper.9* %prev to i8*
  %7 = bitcast %struct.PointerWrapper.9* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call7 = call zeroext i1 @_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %j, %struct.PointerWrapper.9* dereferenceable(8) %begin)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %call8 = call dereferenceable(8) %struct.PointerWrapper.9* @_ZmmI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %prev)
  %call9 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %call8)
  %call10 = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %tmp, %struct.ValueWrapper* dereferenceable(8) %call9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %call10, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call11 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %prev)
  %call12 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %j)
  %9 = bitcast %struct.ValueWrapper* %call12 to i8*
  %10 = bitcast %struct.ValueWrapper* %call11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call13 = call dereferenceable(8) %struct.PointerWrapper.9* @_ZmmI12ValueWrapperIdEER14PointerWrapperIT_ES5_(%struct.PointerWrapper.9* dereferenceable(8) %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %call14 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %j)
  %11 = bitcast %struct.ValueWrapper* %call14 to i8*
  %12 = bitcast %struct.ValueWrapper* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %call15 = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %p, i32 0)
  %coerce.dive17 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce16, i32 0, i32 0
  store %struct.ValueWrapper* %call15, %struct.ValueWrapper** %coerce.dive17, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortIP12ValueWrapperIdES2_EEvT_S4_(%struct.ValueWrapper* %begin, %struct.ValueWrapper* %end) #0 comdat {
entry:
  %begin.addr = alloca %struct.ValueWrapper*, align 8
  %end.addr = alloca %struct.ValueWrapper*, align 8
  %p = alloca %struct.ValueWrapper*, align 8
  %tmp = alloca %struct.ValueWrapper, align 8
  %j = alloca %struct.ValueWrapper*, align 8
  %prev = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %begin, %struct.ValueWrapper** %begin.addr, align 8
  store %struct.ValueWrapper* %end, %struct.ValueWrapper** %end.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  store %struct.ValueWrapper* %0, %struct.ValueWrapper** %p, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %1, i32 1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %p, align 8
  %3 = load %struct.ValueWrapper*, %struct.ValueWrapper** %end.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.ValueWrapper*, %struct.ValueWrapper** %p, align 8
  %5 = bitcast %struct.ValueWrapper* %tmp to i8*
  %6 = bitcast %struct.ValueWrapper* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load %struct.ValueWrapper*, %struct.ValueWrapper** %p, align 8
  store %struct.ValueWrapper* %7, %struct.ValueWrapper** %j, align 8
  %8 = load %struct.ValueWrapper*, %struct.ValueWrapper** %j, align 8
  store %struct.ValueWrapper* %8, %struct.ValueWrapper** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load %struct.ValueWrapper*, %struct.ValueWrapper** %j, align 8
  %10 = load %struct.ValueWrapper*, %struct.ValueWrapper** %begin.addr, align 8
  %cmp3 = icmp ne %struct.ValueWrapper* %9, %10
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.ValueWrapper*, %struct.ValueWrapper** %prev, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %11, i32 -1
  store %struct.ValueWrapper* %incdec.ptr4, %struct.ValueWrapper** %prev, align 8
  %call = call zeroext i1 @_ZltIdEbRK12ValueWrapperIT_ES4_(%struct.ValueWrapper* dereferenceable(8) %tmp, %struct.ValueWrapper* dereferenceable(8) %incdec.ptr4)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %call, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.ValueWrapper*, %struct.ValueWrapper** %prev, align 8
  %14 = load %struct.ValueWrapper*, %struct.ValueWrapper** %j, align 8
  %15 = bitcast %struct.ValueWrapper* %14 to i8*
  %16 = bitcast %struct.ValueWrapper* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.ValueWrapper*, %struct.ValueWrapper** %j, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %17, i32 -1
  store %struct.ValueWrapper* %incdec.ptr5, %struct.ValueWrapper** %j, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load %struct.ValueWrapper*, %struct.ValueWrapper** %j, align 8
  %19 = bitcast %struct.ValueWrapper* %18 to i8*
  %20 = bitcast %struct.ValueWrapper* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load %struct.ValueWrapper*, %struct.ValueWrapper** %p, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %21, i32 1
  store %struct.ValueWrapper* %incdec.ptr6, %struct.ValueWrapper** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortI14PointerWrapperIdEdEEvT_S3_(double* %begin.coerce, double* %end.coerce) #0 comdat {
entry:
  %begin = alloca %struct.PointerWrapper, align 8
  %end = alloca %struct.PointerWrapper, align 8
  %p = alloca %struct.PointerWrapper, align 8
  %coerce = alloca %struct.PointerWrapper, align 8
  %tmp = alloca double, align 8
  %j = alloca %struct.PointerWrapper, align 8
  %prev = alloca %struct.PointerWrapper, align 8
  %coerce15 = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %struct.PointerWrapper* %p to i8*
  %1 = bitcast %struct.PointerWrapper* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %p, i32 0)
  %coerce.dive2 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call3 = call zeroext i1 @_ZneIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %p, %struct.PointerWrapper* dereferenceable(8) %end)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %p)
  %2 = load double, double* %call4, align 8
  store double %2, double* %tmp, align 8
  %3 = bitcast %struct.PointerWrapper* %j to i8*
  %4 = bitcast %struct.PointerWrapper* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = bitcast %struct.PointerWrapper* %prev to i8*
  %6 = bitcast %struct.PointerWrapper* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call7 = call zeroext i1 @_ZneIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %j, %struct.PointerWrapper* dereferenceable(8) %begin)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load double, double* %tmp, align 8
  %call8 = call dereferenceable(8) %struct.PointerWrapper* @_ZmmIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %prev)
  %call9 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %call8)
  %8 = load double, double* %call9, align 8
  %cmp = fcmp olt double %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call10 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %prev)
  %10 = load double, double* %call10, align 8
  %call11 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %j)
  store double %10, double* %call11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call12 = call dereferenceable(8) %struct.PointerWrapper* @_ZmmIdER14PointerWrapperIT_ES3_(%struct.PointerWrapper* dereferenceable(8) %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load double, double* %tmp, align 8
  %call13 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %j)
  store double %11, double* %call13, align 8
  %call14 = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %p, i32 0)
  %coerce.dive16 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce15, i32 0, i32 0
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
define linkonce_odr double @_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EET0_T_SF_SE_(%struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.0, align 8
  %first = alloca %struct.PointerWrapper.10, align 8
  %last = alloca %struct.PointerWrapper.10, align 8
  %result = alloca %struct.ValueWrapper.0, align 8
  %ref.tmp = alloca %struct.ValueWrapper.0, align 8
  %coerce = alloca %struct.PointerWrapper.10, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %first, i32 0, i32 0
  store %struct.ValueWrapper.0* %first.coerce, %struct.ValueWrapper.0** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %last, i32 0, i32 0
  store %struct.ValueWrapper.0* %last.coerce, %struct.ValueWrapper.0** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %result, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive10, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive11, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZneI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEbRK14PointerWrapperIT_ESF_(%struct.PointerWrapper.10* dereferenceable(8) %first, %struct.PointerWrapper.10* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call12 = call %struct.ValueWrapper.0* @_ZppI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEE14PointerWrapperIT_ERSD_i(%struct.PointerWrapper.10* dereferenceable(8) %first, i32 0)
  %coerce.dive13 = getelementptr inbounds %struct.PointerWrapper.10, %struct.PointerWrapper.10* %coerce, i32 0, i32 0
  store %struct.ValueWrapper.0* %call12, %struct.ValueWrapper.0** %coerce.dive13, align 8
  %call14 = call dereferenceable(8) %struct.ValueWrapper.0* @_ZNK14PointerWrapperI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEEEdeEv(%struct.PointerWrapper.10* %coerce)
  %call15 = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEES0_IT_ERKSB_SD_(%struct.ValueWrapper.0* dereferenceable(8) %result, %struct.ValueWrapper.0* dereferenceable(8) %call14)
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %ref.tmp, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive16, i32 0, i32 0
  %coerce.dive18 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive17, i32 0, i32 0
  %coerce.dive19 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive18, i32 0, i32 0
  %coerce.dive20 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive19, i32 0, i32 0
  %coerce.dive21 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive20, i32 0, i32 0
  %coerce.dive22 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive21, i32 0, i32 0
  %coerce.dive23 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive22, i32 0, i32 0
  %coerce.dive24 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive23, i32 0, i32 0
  %coerce.dive25 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive24, i32 0, i32 0
  store double %call15, double* %coerce.dive25, align 8
  %0 = bitcast %struct.ValueWrapper.0* %result to i8*
  %1 = bitcast %struct.ValueWrapper.0* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.ValueWrapper.0* %retval to i8*
  %3 = bitcast %struct.ValueWrapper.0* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive26 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %retval, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive26, i32 0, i32 0
  %coerce.dive28 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive27, i32 0, i32 0
  %coerce.dive29 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive28, i32 0, i32 0
  %coerce.dive30 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive29, i32 0, i32 0
  %coerce.dive31 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive30, i32 0, i32 0
  %coerce.dive32 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive31, i32 0, i32 0
  %coerce.dive33 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive32, i32 0, i32 0
  %coerce.dive34 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive33, i32 0, i32 0
  %coerce.dive35 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive34, i32 0, i32 0
  %4 = load double, double* %coerce.dive35, align 8
  ret double %4
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.0* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.0*, align 8
  store %struct.ValueWrapper.0* %this, %struct.ValueWrapper.0** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.1* %value)
  ret double %call
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.1* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.1*, align 8
  store %struct.ValueWrapper.1* %this, %struct.ValueWrapper.1** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.2* %value)
  ret double %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEcvT_IdEEv(%struct.ValueWrapper.2* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.2*, align 8
  store %struct.ValueWrapper.2* %this, %struct.ValueWrapper.2** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEcvT_IdEEv(%struct.ValueWrapper.3* %value)
  ret double %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEcvT_IdEEv(%struct.ValueWrapper.3* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.3*, align 8
  store %struct.ValueWrapper.3* %this, %struct.ValueWrapper.3** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEcvT_IdEEv(%struct.ValueWrapper.4* %value)
  ret double %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEcvT_IdEEv(%struct.ValueWrapper.4* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.4*, align 8
  store %struct.ValueWrapper.4* %this, %struct.ValueWrapper.4** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IS_IS_IdEEEEEcvT_IdEEv(%struct.ValueWrapper.5* %value)
  ret double %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IS_IdEEEEEcvT_IdEEv(%struct.ValueWrapper.5* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.5*, align 8
  store %struct.ValueWrapper.5* %this, %struct.ValueWrapper.5** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IS_IdEEEEcvT_IdEEv(%struct.ValueWrapper.6* %value)
  ret double %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IS_IdEEEEcvT_IdEEv(%struct.ValueWrapper.6* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.6*, align 8
  store %struct.ValueWrapper.6* %this, %struct.ValueWrapper.6** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IS_IdEEEcvT_IdEEv(%struct.ValueWrapper.7* %value)
  ret double %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IS_IdEEEcvT_IdEEv(%struct.ValueWrapper.7* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.7*, align 8
  store %struct.ValueWrapper.7* %this, %struct.ValueWrapper.7** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIS_IdEEcvT_IdEEv(%struct.ValueWrapper.8* %value)
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK12ValueWrapperIS_IdEEcvT_IdEEv(%struct.ValueWrapper.8* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.8*, align 8
  store %struct.ValueWrapper.8* %this, %struct.ValueWrapper.8** %this.addr, align 8
  %this1 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %this1, i32 0, i32 0
  %call = call double @_ZNK12ValueWrapperIdEcvT_IdEEv(%struct.ValueWrapper* %value)
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK12ValueWrapperIdEcvT_IdEEv(%struct.ValueWrapper* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper* %this, %struct.ValueWrapper** %this.addr, align 8
  %this1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %this1, i32 0, i32 0
  %0 = load double, double* %value, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEES0_IT_ERKSB_SD_(%struct.ValueWrapper.0* dereferenceable(8) %x, %struct.ValueWrapper.0* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.0, align 8
  %x.addr = alloca %struct.ValueWrapper.0*, align 8
  %y.addr = alloca %struct.ValueWrapper.0*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.1, align 8
  store %struct.ValueWrapper.0* %x, %struct.ValueWrapper.0** %x.addr, align 8
  store %struct.ValueWrapper.0* %y, %struct.ValueWrapper.0** %y.addr, align 8
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEES0_IT_ERKSA_SC_(%struct.ValueWrapper.1* dereferenceable(8) %value, %struct.ValueWrapper.1* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %call, double* %coerce.dive9, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IS8_EERKT_(%struct.ValueWrapper.0* %retval, %struct.ValueWrapper.1* dereferenceable(8) %ref.tmp)
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %retval, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive14, i32 0, i32 0
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive15, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive16, i32 0, i32 0
  %coerce.dive18 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive17, i32 0, i32 0
  %coerce.dive19 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive18, i32 0, i32 0
  %2 = load double, double* %coerce.dive19, align 8
  ret double %2
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEES0_IT_ERKSA_SC_(%struct.ValueWrapper.1* dereferenceable(8) %x, %struct.ValueWrapper.1* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.1, align 8
  %x.addr = alloca %struct.ValueWrapper.1*, align 8
  %y.addr = alloca %struct.ValueWrapper.1*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.2, align 8
  store %struct.ValueWrapper.1* %x, %struct.ValueWrapper.1** %x.addr, align 8
  store %struct.ValueWrapper.1* %y, %struct.ValueWrapper.1** %y.addr, align 8
  %0 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEES0_IT_ERKS9_SB_(%struct.ValueWrapper.2* dereferenceable(8) %value, %struct.ValueWrapper.2* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive7, i32 0, i32 0
  store double %call, double* %coerce.dive8, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2IS7_EERKT_(%struct.ValueWrapper.1* %retval, %struct.ValueWrapper.2* dereferenceable(8) %ref.tmp)
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %retval, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive14, i32 0, i32 0
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive15, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive16, i32 0, i32 0
  %2 = load double, double* %coerce.dive17, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEEC2IS8_EERKT_(%struct.ValueWrapper.0* %this, %struct.ValueWrapper.1* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.0*, align 8
  %x.addr = alloca %struct.ValueWrapper.1*, align 8
  store %struct.ValueWrapper.0* %this, %struct.ValueWrapper.0** %this.addr, align 8
  store %struct.ValueWrapper.1* %x, %struct.ValueWrapper.1** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.1* %value to i8*
  %2 = bitcast %struct.ValueWrapper.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEES0_IT_ERKS9_SB_(%struct.ValueWrapper.2* dereferenceable(8) %x, %struct.ValueWrapper.2* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.2, align 8
  %x.addr = alloca %struct.ValueWrapper.2*, align 8
  %y.addr = alloca %struct.ValueWrapper.2*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.3, align 8
  store %struct.ValueWrapper.2* %x, %struct.ValueWrapper.2** %x.addr, align 8
  store %struct.ValueWrapper.2* %y, %struct.ValueWrapper.2** %y.addr, align 8
  %0 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IdEEEEEEES0_IT_ERKS8_SA_(%struct.ValueWrapper.3* dereferenceable(8) %value, %struct.ValueWrapper.3* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive6, i32 0, i32 0
  store double %call, double* %coerce.dive7, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2IS6_EERKT_(%struct.ValueWrapper.2* %retval, %struct.ValueWrapper.3* dereferenceable(8) %ref.tmp)
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %retval, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive14, i32 0, i32 0
  %2 = load double, double* %coerce.dive15, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2IS7_EERKT_(%struct.ValueWrapper.1* %this, %struct.ValueWrapper.2* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.1*, align 8
  %x.addr = alloca %struct.ValueWrapper.2*, align 8
  store %struct.ValueWrapper.1* %this, %struct.ValueWrapper.1** %this.addr, align 8
  store %struct.ValueWrapper.2* %x, %struct.ValueWrapper.2** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.2* %value to i8*
  %2 = bitcast %struct.ValueWrapper.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IdEEEEEEES0_IT_ERKS8_SA_(%struct.ValueWrapper.3* dereferenceable(8) %x, %struct.ValueWrapper.3* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.3, align 8
  %x.addr = alloca %struct.ValueWrapper.3*, align 8
  %y.addr = alloca %struct.ValueWrapper.3*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.4, align 8
  store %struct.ValueWrapper.3* %x, %struct.ValueWrapper.3** %x.addr, align 8
  store %struct.ValueWrapper.3* %y, %struct.ValueWrapper.3** %y.addr, align 8
  %0 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IdEEEEEES0_IT_ERKS7_S9_(%struct.ValueWrapper.4* dereferenceable(8) %value, %struct.ValueWrapper.4* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive5, i32 0, i32 0
  store double %call, double* %coerce.dive6, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2IS5_EERKT_(%struct.ValueWrapper.3* %retval, %struct.ValueWrapper.4* dereferenceable(8) %ref.tmp)
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %retval, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive12, i32 0, i32 0
  %2 = load double, double* %coerce.dive13, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2IS6_EERKT_(%struct.ValueWrapper.2* %this, %struct.ValueWrapper.3* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.2*, align 8
  %x.addr = alloca %struct.ValueWrapper.3*, align 8
  store %struct.ValueWrapper.2* %this, %struct.ValueWrapper.2** %this.addr, align 8
  store %struct.ValueWrapper.3* %x, %struct.ValueWrapper.3** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.3* %value to i8*
  %2 = bitcast %struct.ValueWrapper.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IdEEEEEES0_IT_ERKS7_S9_(%struct.ValueWrapper.4* dereferenceable(8) %x, %struct.ValueWrapper.4* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.4, align 8
  %x.addr = alloca %struct.ValueWrapper.4*, align 8
  %y.addr = alloca %struct.ValueWrapper.4*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.5, align 8
  store %struct.ValueWrapper.4* %x, %struct.ValueWrapper.4** %x.addr, align 8
  store %struct.ValueWrapper.4* %y, %struct.ValueWrapper.4** %y.addr, align 8
  %0 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IdEEEEES0_IT_ERKS6_S8_(%struct.ValueWrapper.5* dereferenceable(8) %value, %struct.ValueWrapper.5* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive4, i32 0, i32 0
  store double %call, double* %coerce.dive5, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2IS4_EERKT_(%struct.ValueWrapper.4* %retval, %struct.ValueWrapper.5* dereferenceable(8) %ref.tmp)
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %retval, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive10, i32 0, i32 0
  %2 = load double, double* %coerce.dive11, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2IS5_EERKT_(%struct.ValueWrapper.3* %this, %struct.ValueWrapper.4* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.3*, align 8
  %x.addr = alloca %struct.ValueWrapper.4*, align 8
  store %struct.ValueWrapper.3* %this, %struct.ValueWrapper.3** %this.addr, align 8
  store %struct.ValueWrapper.4* %x, %struct.ValueWrapper.4** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.4* %value to i8*
  %2 = bitcast %struct.ValueWrapper.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IS0_IdEEEEES0_IT_ERKS6_S8_(%struct.ValueWrapper.5* dereferenceable(8) %x, %struct.ValueWrapper.5* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.5, align 8
  %x.addr = alloca %struct.ValueWrapper.5*, align 8
  %y.addr = alloca %struct.ValueWrapper.5*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.6, align 8
  store %struct.ValueWrapper.5* %x, %struct.ValueWrapper.5** %x.addr, align 8
  store %struct.ValueWrapper.5* %y, %struct.ValueWrapper.5** %y.addr, align 8
  %0 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IdEEEES0_IT_ERKS5_S7_(%struct.ValueWrapper.6* dereferenceable(8) %value, %struct.ValueWrapper.6* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive3, i32 0, i32 0
  store double %call, double* %coerce.dive4, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2IS3_EERKT_(%struct.ValueWrapper.5* %retval, %struct.ValueWrapper.6* dereferenceable(8) %ref.tmp)
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %retval, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  %2 = load double, double* %coerce.dive9, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2IS4_EERKT_(%struct.ValueWrapper.4* %this, %struct.ValueWrapper.5* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.4*, align 8
  %x.addr = alloca %struct.ValueWrapper.5*, align 8
  store %struct.ValueWrapper.4* %this, %struct.ValueWrapper.4** %this.addr, align 8
  store %struct.ValueWrapper.5* %x, %struct.ValueWrapper.5** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.5* %value to i8*
  %2 = bitcast %struct.ValueWrapper.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IS0_IdEEEES0_IT_ERKS5_S7_(%struct.ValueWrapper.6* dereferenceable(8) %x, %struct.ValueWrapper.6* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.6, align 8
  %x.addr = alloca %struct.ValueWrapper.6*, align 8
  %y.addr = alloca %struct.ValueWrapper.6*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.7, align 8
  store %struct.ValueWrapper.6* %x, %struct.ValueWrapper.6** %x.addr, align 8
  store %struct.ValueWrapper.6* %y, %struct.ValueWrapper.6** %y.addr, align 8
  %0 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIS0_IdEEES0_IT_ERKS4_S6_(%struct.ValueWrapper.7* dereferenceable(8) %value, %struct.ValueWrapper.7* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive2, i32 0, i32 0
  store double %call, double* %coerce.dive3, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IdEEEEC2IS2_EERKT_(%struct.ValueWrapper.6* %retval, %struct.ValueWrapper.7* dereferenceable(8) %ref.tmp)
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive6, i32 0, i32 0
  %2 = load double, double* %coerce.dive7, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2IS3_EERKT_(%struct.ValueWrapper.5* %this, %struct.ValueWrapper.6* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.5*, align 8
  %x.addr = alloca %struct.ValueWrapper.6*, align 8
  store %struct.ValueWrapper.5* %this, %struct.ValueWrapper.5** %this.addr, align 8
  store %struct.ValueWrapper.6* %x, %struct.ValueWrapper.6** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.6* %value to i8*
  %2 = bitcast %struct.ValueWrapper.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIS0_IdEEES0_IT_ERKS4_S6_(%struct.ValueWrapper.7* dereferenceable(8) %x, %struct.ValueWrapper.7* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.7, align 8
  %x.addr = alloca %struct.ValueWrapper.7*, align 8
  %y.addr = alloca %struct.ValueWrapper.7*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.8, align 8
  store %struct.ValueWrapper.7* %x, %struct.ValueWrapper.7** %x.addr, align 8
  store %struct.ValueWrapper.7* %y, %struct.ValueWrapper.7** %y.addr, align 8
  %0 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %1, i32 0, i32 0
  %call = call double @_ZplI12ValueWrapperIdEES0_IT_ERKS3_S5_(%struct.ValueWrapper.8* dereferenceable(8) %value, %struct.ValueWrapper.8* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %ref.tmp, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive, i32 0, i32 0
  store double %call, double* %coerce.dive2, align 8
  call void @_ZN12ValueWrapperIS_IS_IdEEEC2IS1_EERKT_(%struct.ValueWrapper.7* %retval, %struct.ValueWrapper.8* dereferenceable(8) %ref.tmp)
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %retval, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive4, i32 0, i32 0
  %2 = load double, double* %coerce.dive5, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IdEEEEC2IS2_EERKT_(%struct.ValueWrapper.6* %this, %struct.ValueWrapper.7* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.6*, align 8
  %x.addr = alloca %struct.ValueWrapper.7*, align 8
  store %struct.ValueWrapper.6* %this, %struct.ValueWrapper.6** %this.addr, align 8
  store %struct.ValueWrapper.7* %x, %struct.ValueWrapper.7** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.7* %value to i8*
  %2 = bitcast %struct.ValueWrapper.7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplI12ValueWrapperIdEES0_IT_ERKS3_S5_(%struct.ValueWrapper.8* dereferenceable(8) %x, %struct.ValueWrapper.8* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.8, align 8
  %x.addr = alloca %struct.ValueWrapper.8*, align 8
  %y.addr = alloca %struct.ValueWrapper.8*, align 8
  %ref.tmp = alloca %struct.ValueWrapper, align 8
  store %struct.ValueWrapper.8* %x, %struct.ValueWrapper.8** %x.addr, align 8
  store %struct.ValueWrapper.8* %y, %struct.ValueWrapper.8** %y.addr, align 8
  %0 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %0, i32 0, i32 0
  %1 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %1, i32 0, i32 0
  %call = call double @_ZplIdE12ValueWrapperIT_ERKS2_S4_(%struct.ValueWrapper* dereferenceable(8) %value, %struct.ValueWrapper* dereferenceable(8) %value1)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %ref.tmp, i32 0, i32 0
  store double %call, double* %coerce.dive, align 8
  call void @_ZN12ValueWrapperIS_IdEEC2IS0_EERKT_(%struct.ValueWrapper.8* %retval, %struct.ValueWrapper* dereferenceable(8) %ref.tmp)
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %retval, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive2, i32 0, i32 0
  %2 = load double, double* %coerce.dive3, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IdEEEC2IS1_EERKT_(%struct.ValueWrapper.7* %this, %struct.ValueWrapper.8* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.7*, align 8
  %x.addr = alloca %struct.ValueWrapper.8*, align 8
  store %struct.ValueWrapper.7* %this, %struct.ValueWrapper.7** %this.addr, align 8
  store %struct.ValueWrapper.8* %x, %struct.ValueWrapper.8** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper.8* %value to i8*
  %2 = bitcast %struct.ValueWrapper.8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplIdE12ValueWrapperIT_ERKS2_S4_(%struct.ValueWrapper* dereferenceable(8) %x, %struct.ValueWrapper* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper, align 8
  %x.addr = alloca %struct.ValueWrapper*, align 8
  %y.addr = alloca %struct.ValueWrapper*, align 8
  %ref.tmp = alloca double, align 8
  store %struct.ValueWrapper* %x, %struct.ValueWrapper** %x.addr, align 8
  store %struct.ValueWrapper* %y, %struct.ValueWrapper** %y.addr, align 8
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %x.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %0, i32 0, i32 0
  %1 = load double, double* %value, align 8
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %2, i32 0, i32 0
  %3 = load double, double* %value1, align 8
  %add = fadd double %1, %3
  store double %add, double* %ref.tmp, align 8
  call void @_ZN12ValueWrapperIdEC2IdEERKT_(%struct.ValueWrapper* %retval, double* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive, align 8
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IdEEC2IS0_EERKT_(%struct.ValueWrapper.8* %this, %struct.ValueWrapper* dereferenceable(8) %x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.8*, align 8
  %x.addr = alloca %struct.ValueWrapper*, align 8
  store %struct.ValueWrapper.8* %this, %struct.ValueWrapper.8** %this.addr, align 8
  store %struct.ValueWrapper* %x, %struct.ValueWrapper** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %this1, i32 0, i32 0
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %x.addr, align 8
  %1 = bitcast %struct.ValueWrapper* %value to i8*
  %2 = bitcast %struct.ValueWrapper* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EET0_T_SE_SD_(%struct.ValueWrapper.0* %first, %struct.ValueWrapper.0* %last, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper.0, align 8
  %result = alloca %struct.ValueWrapper.0, align 8
  %first.addr = alloca %struct.ValueWrapper.0*, align 8
  %last.addr = alloca %struct.ValueWrapper.0*, align 8
  %ref.tmp = alloca %struct.ValueWrapper.0, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %result, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive1, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive2, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive4, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive5, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive8, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive9, align 8
  store %struct.ValueWrapper.0* %first, %struct.ValueWrapper.0** %first.addr, align 8
  store %struct.ValueWrapper.0* %last, %struct.ValueWrapper.0** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %1 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %last.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper.0* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ValueWrapper.0*, %struct.ValueWrapper.0** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %2, i32 1
  store %struct.ValueWrapper.0* %incdec.ptr, %struct.ValueWrapper.0** %first.addr, align 8
  %call = call double @_ZplI12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEES0_IT_ERKSB_SD_(%struct.ValueWrapper.0* dereferenceable(8) %result, %struct.ValueWrapper.0* dereferenceable(8) %2)
  %coerce.dive10 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %ref.tmp, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive11, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive13, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive14, i32 0, i32 0
  %coerce.dive16 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive15, i32 0, i32 0
  %coerce.dive17 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive16, i32 0, i32 0
  %coerce.dive18 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive17, i32 0, i32 0
  %coerce.dive19 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive18, i32 0, i32 0
  store double %call, double* %coerce.dive19, align 8
  %3 = bitcast %struct.ValueWrapper.0* %result to i8*
  %4 = bitcast %struct.ValueWrapper.0* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = bitcast %struct.ValueWrapper.0* %retval to i8*
  %6 = bitcast %struct.ValueWrapper.0* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %coerce.dive20 = getelementptr inbounds %struct.ValueWrapper.0, %struct.ValueWrapper.0* %retval, i32 0, i32 0
  %coerce.dive21 = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %coerce.dive20, i32 0, i32 0
  %coerce.dive22 = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %coerce.dive21, i32 0, i32 0
  %coerce.dive23 = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %coerce.dive22, i32 0, i32 0
  %coerce.dive24 = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %coerce.dive23, i32 0, i32 0
  %coerce.dive25 = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %coerce.dive24, i32 0, i32 0
  %coerce.dive26 = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %coerce.dive25, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %coerce.dive26, i32 0, i32 0
  %coerce.dive28 = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %coerce.dive27, i32 0, i32 0
  %coerce.dive29 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %coerce.dive28, i32 0, i32 0
  %7 = load double, double* %coerce.dive29, align 8
  ret double %7
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateI14PointerWrapperI12ValueWrapperIdEES3_EET0_T_S6_S5_(%struct.ValueWrapper* %first.coerce, %struct.ValueWrapper* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper, align 8
  %first = alloca %struct.PointerWrapper.9, align 8
  %last = alloca %struct.PointerWrapper.9, align 8
  %result = alloca %struct.ValueWrapper, align 8
  %ref.tmp = alloca %struct.ValueWrapper, align 8
  %coerce = alloca %struct.PointerWrapper.9, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %first, i32 0, i32 0
  store %struct.ValueWrapper* %first.coerce, %struct.ValueWrapper** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %last, i32 0, i32 0
  store %struct.ValueWrapper* %last.coerce, %struct.ValueWrapper** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZneI12ValueWrapperIdEEbRK14PointerWrapperIT_ES6_(%struct.PointerWrapper.9* dereferenceable(8) %first, %struct.PointerWrapper.9* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call %struct.ValueWrapper* @_ZppI12ValueWrapperIdEE14PointerWrapperIT_ERS4_i(%struct.PointerWrapper.9* dereferenceable(8) %first, i32 0)
  %coerce.dive4 = getelementptr inbounds %struct.PointerWrapper.9, %struct.PointerWrapper.9* %coerce, i32 0, i32 0
  store %struct.ValueWrapper* %call3, %struct.ValueWrapper** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) %struct.ValueWrapper* @_ZNK14PointerWrapperI12ValueWrapperIdEEdeEv(%struct.PointerWrapper.9* %coerce)
  %call6 = call double @_ZplIdE12ValueWrapperIT_ERKS2_S4_(%struct.ValueWrapper* dereferenceable(8) %result, %struct.ValueWrapper* dereferenceable(8) %call5)
  %coerce.dive7 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %ref.tmp, i32 0, i32 0
  store double %call6, double* %coerce.dive7, align 8
  %0 = bitcast %struct.ValueWrapper* %result to i8*
  %1 = bitcast %struct.ValueWrapper* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.ValueWrapper* %retval to i8*
  %3 = bitcast %struct.ValueWrapper* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive8, align 8
  ret double %4
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateIP12ValueWrapperIdES2_EET0_T_S5_S4_(%struct.ValueWrapper* %first, %struct.ValueWrapper* %last, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.ValueWrapper, align 8
  %result = alloca %struct.ValueWrapper, align 8
  %first.addr = alloca %struct.ValueWrapper*, align 8
  %last.addr = alloca %struct.ValueWrapper*, align 8
  %ref.tmp = alloca %struct.ValueWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive, align 8
  store %struct.ValueWrapper* %first, %struct.ValueWrapper** %first.addr, align 8
  store %struct.ValueWrapper* %last, %struct.ValueWrapper** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %1 = load %struct.ValueWrapper*, %struct.ValueWrapper** %last.addr, align 8
  %cmp = icmp ne %struct.ValueWrapper* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ValueWrapper*, %struct.ValueWrapper** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %2, i32 1
  store %struct.ValueWrapper* %incdec.ptr, %struct.ValueWrapper** %first.addr, align 8
  %call = call double @_ZplIdE12ValueWrapperIT_ERKS2_S4_(%struct.ValueWrapper* dereferenceable(8) %result, %struct.ValueWrapper* dereferenceable(8) %2)
  %coerce.dive1 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %ref.tmp, i32 0, i32 0
  store double %call, double* %coerce.dive1, align 8
  %3 = bitcast %struct.ValueWrapper* %result to i8*
  %4 = bitcast %struct.ValueWrapper* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = bitcast %struct.ValueWrapper* %retval to i8*
  %6 = bitcast %struct.ValueWrapper* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %struct.ValueWrapper, %struct.ValueWrapper* %retval, i32 0, i32 0
  %7 = load double, double* %coerce.dive2, align 8
  ret double %7
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateI14PointerWrapperIdEdEET0_T_S4_S3_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %struct.PointerWrapper, align 8
  %last = alloca %struct.PointerWrapper, align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %struct.PointerWrapper, align 8
  %coerce.dive = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZneIdEbRK14PointerWrapperIT_ES4_(%struct.PointerWrapper* dereferenceable(8) %first, %struct.PointerWrapper* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  %call2 = call double* @_ZppIdE14PointerWrapperIT_ERS2_i(%struct.PointerWrapper* dereferenceable(8) %first, i32 0)
  %coerce.dive3 = getelementptr inbounds %struct.PointerWrapper, %struct.PointerWrapper* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK14PointerWrapperIdEdeEv(%struct.PointerWrapper* %coerce)
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.1* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.1*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.1* %this, %struct.ValueWrapper.1** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.1*, %struct.ValueWrapper.1** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.1, %struct.ValueWrapper.1* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.2* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IS_IdEEEEEEEEC2IdEERKT_(%struct.ValueWrapper.2* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.2*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.2* %this, %struct.ValueWrapper.2** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.2*, %struct.ValueWrapper.2** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.2, %struct.ValueWrapper.2* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2IdEERKT_(%struct.ValueWrapper.3* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IS_IdEEEEEEEC2IdEERKT_(%struct.ValueWrapper.3* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.3*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.3* %this, %struct.ValueWrapper.3** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.3*, %struct.ValueWrapper.3** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.3, %struct.ValueWrapper.3* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2IdEERKT_(%struct.ValueWrapper.4* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IS_IdEEEEEEC2IdEERKT_(%struct.ValueWrapper.4* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.4*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.4* %this, %struct.ValueWrapper.4** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.4*, %struct.ValueWrapper.4** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.4, %struct.ValueWrapper.4* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2IdEERKT_(%struct.ValueWrapper.5* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IS_IdEEEEEC2IdEERKT_(%struct.ValueWrapper.5* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.5*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.5* %this, %struct.ValueWrapper.5** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.5*, %struct.ValueWrapper.5** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.5, %struct.ValueWrapper.5* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IS_IdEEEEC2IdEERKT_(%struct.ValueWrapper.6* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IS_IdEEEEC2IdEERKT_(%struct.ValueWrapper.6* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.6*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.6* %this, %struct.ValueWrapper.6** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.6*, %struct.ValueWrapper.6** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.6, %struct.ValueWrapper.6* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IS_IdEEEC2IdEERKT_(%struct.ValueWrapper.7* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IS_IdEEEC2IdEERKT_(%struct.ValueWrapper.7* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.7*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.7* %this, %struct.ValueWrapper.7** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.7*, %struct.ValueWrapper.7** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.7, %struct.ValueWrapper.7* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIS_IdEEC2IdEERKT_(%struct.ValueWrapper.8* %value, double* dereferenceable(8) %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12ValueWrapperIS_IdEEC2IdEERKT_(%struct.ValueWrapper.8* %this, double* dereferenceable(8) %x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ValueWrapper.8*, align 8
  %x.addr = alloca double*, align 8
  store %struct.ValueWrapper.8* %this, %struct.ValueWrapper.8** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.ValueWrapper.8*, %struct.ValueWrapper.8** %this.addr, align 8
  %value = getelementptr inbounds %struct.ValueWrapper.8, %struct.ValueWrapper.8* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  call void @_ZN12ValueWrapperIdEC2IdEERKT_(%struct.ValueWrapper* %value, double* dereferenceable(8) %0)
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
