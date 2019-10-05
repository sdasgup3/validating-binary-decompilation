; ModuleID = '_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }
%"class.std::reverse_iterator.1" = type { %"class.std::reverse_iterator" }

$_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ = comdat any

@results = local_unnamed_addr global %struct.one_result* null, align 8
@current_test = local_unnamed_addr global i32 0, align 4
@allocated_results = local_unnamed_addr global i32 0, align 4
@start_time = local_unnamed_addr global i64 0, align 8
@end_time = local_unnamed_addr global i64 0, align 8
@iterations = local_unnamed_addr global i32 60000, align 4
@init_value = local_unnamed_addr global double 3.000000e+00, align 8
@data = global [2000 x double] zeroinitializer, align 16
@dataMaster = global [2000 x double] zeroinitializer, align 16
@dpb = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 0, i64 0), align 8
@dpe = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 1, i64 0), align 8
@dMpb = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 0, i64 0), align 8
@dMpe = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 1, i64 0), align 8
@rdpb = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 1, i64 0) }, align 8
@rdpe = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 0, i64 0) }, align 8
@rdMpb = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 1, i64 0) }, align 8
@rdMpe = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 0, i64 0) }, align 8
@rrdpb = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 0, i64 0) } }, align 8
@rrdpe = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 1, i64 0) } }, align 8
@rrdMpb = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 0, i64 0) } }, align 8
@rrdMpe = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 1, i64 0) } }, align 8
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = hidden unnamed_addr constant [31 x i8] c"Could not allocate %d results\0A\00", align 1
@.str.1 = hidden unnamed_addr constant [60 x i8] c"\0Atest %*s description   absolute   operations   ratio with\0A\00", align 1
@.str.2 = hidden unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = hidden unnamed_addr constant [43 x i8] c"number %*s time       per second   test0\0A\0A\00", align 1
@.str.4 = hidden unnamed_addr constant [43 x i8] c"%2i %*s\22%s\22  %5.2f sec   %5.2f M     %.2f\0A\00", align 1
@.str.5 = hidden unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = hidden unnamed_addr constant [39 x i8] c"\0ATotal absolute time for %s: %.2f sec\0A\00", align 1
@.str.7 = hidden unnamed_addr constant [20 x i8] c"\0A%s Penalty: %.2f\0A\0A\00", align 1
@.str.8 = hidden unnamed_addr constant [34 x i8] c"\0Atest %*s description   absolute\0A\00", align 1
@.str.9 = hidden unnamed_addr constant [18 x i8] c"number %*s time\0A\0A\00", align 1
@.str.10 = hidden unnamed_addr constant [24 x i8] c"%2i %*s\22%s\22  %5.2f sec\0A\00", align 1
@.str.51 = hidden unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@.str.26 = hidden unnamed_addr constant [38 x i8] c"insertion_sort double pointer verify2\00", align 1
@.str.27 = hidden unnamed_addr constant [38 x i8] c"insertion_sort double vector iterator\00", align 1
@.str.52 = hidden unnamed_addr constant [21 x i8] c"sort test %i failed\0A\00", align 1
@.str.34 = hidden unnamed_addr constant [33 x i8] c"quicksort double pointer verify2\00", align 1
@.str.35 = hidden unnamed_addr constant [33 x i8] c"quicksort double vector iterator\00", align 1
@.str.42 = hidden unnamed_addr constant [33 x i8] c"heap_sort double pointer verify2\00", align 1
@.str.43 = hidden unnamed_addr constant [33 x i8] c"heap_sort double vector iterator\00", align 1
@.str.50 = hidden unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: uwtable
define weak_odr void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"*) local_unnamed_addr #0 comdat {
  %3 = alloca %"class.std::reverse_iterator.1", align 8
  %4 = alloca %"class.std::reverse_iterator.1", align 8
  %5 = alloca %"class.std::reverse_iterator.1", align 8
  %6 = alloca %"class.std::reverse_iterator.1", align 8
  %7 = bitcast %"class.std::reverse_iterator.1"* %0 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = bitcast %"class.std::reverse_iterator.1"* %1 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %8, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %57

; <label>:13:                                     ; preds = %2
  %14 = inttoptr i64 %8 to double*
  %15 = getelementptr inbounds double, double* %14, i64 -1
  %16 = load double, double* %15, align 8, !tbaa !2
  br label %17

; <label>:17:                                     ; preds = %47, %13
  %18 = phi i64 [ %8, %13 ], [ %43, %47 ]
  %19 = phi i64 [ %10, %13 ], [ %27, %47 ]
  %20 = inttoptr i64 %19 to double*
  br label %21

; <label>:21:                                     ; preds = %21, %17
  %22 = phi double* [ %20, %17 ], [ %23, %21 ]
  %23 = getelementptr inbounds double, double* %22, i64 1
  %24 = load double, double* %22, align 8, !tbaa !2
  %25 = fcmp olt double %16, %24
  br i1 %25, label %21, label %26

; <label>:26:                                     ; preds = %21
  %27 = ptrtoint double* %23 to i64
  %28 = inttoptr i64 %18 to double*
  %29 = icmp ult double* %23, %28
  br i1 %29, label %30, label %51

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds double, double* %28, i64 -1
  %32 = load double, double* %31, align 8, !tbaa !2
  %33 = fcmp olt double %32, %16
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %30
  br label %35

; <label>:35:                                     ; preds = %34, %35
  %36 = phi double* [ %37, %35 ], [ %31, %34 ]
  %37 = getelementptr inbounds double, double* %36, i64 -1
  %38 = load double, double* %37, align 8, !tbaa !2
  %39 = fcmp olt double %38, %16
  br i1 %39, label %35, label %40

; <label>:40:                                     ; preds = %35
  %41 = ptrtoint double* %36 to i64
  br label %42

; <label>:42:                                     ; preds = %40, %30
  %43 = phi i64 [ %41, %40 ], [ %18, %30 ]
  %44 = phi double* [ %36, %40 ], [ %28, %30 ]
  %45 = phi double* [ %37, %40 ], [ %31, %30 ]
  %46 = icmp ult double* %23, %44
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %42
  %48 = bitcast double* %22 to i64*
  %49 = bitcast double* %45 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !2
  store i64 %50, i64* %48, align 8, !tbaa !2
  store double %24, double* %45, align 8, !tbaa !2
  br label %17

; <label>:51:                                     ; preds = %42, %26
  %52 = bitcast %"class.std::reverse_iterator.1"* %3 to i64*
  store i64 %8, i64* %52, align 8, !tbaa !6
  %53 = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %4, i64 0, i32 0, i32 0
  store double* %22, double** %53, align 8, !alias.scope !8
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %3, %"class.std::reverse_iterator.1"* nonnull %4)
  %54 = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %5, i64 0, i32 0, i32 0
  store double* %22, double** %54, align 8, !alias.scope !11
  %55 = bitcast %"class.std::reverse_iterator.1"* %6 to i64*
  %56 = load i64, i64* %9, align 8, !tbaa !6
  store i64 %56, i64* %55, align 8, !tbaa !6
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %5, %"class.std::reverse_iterator.1"* nonnull %6)
  br label %57

; <label>:57:                                     ; preds = %51, %2
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl: argument 0"}
!10 = distinct !{!10, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl: argument 0"}
!13 = distinct !{!13, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl"}
