; ModuleID = '_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }

$_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ = comdat any

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
define weak_odr void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"*) local_unnamed_addr #0 comdat {
  %3 = alloca %"class.std::reverse_iterator.0", align 8
  %4 = alloca %"class.std::reverse_iterator.0", align 8
  %5 = alloca %"class.std::reverse_iterator.0", align 8
  %6 = alloca %"class.std::reverse_iterator.0", align 8
  %7 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %0, i64 0, i32 1
  %8 = bitcast %"class.std::reverse_iterator"* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !2, !noalias !7
  %10 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %1, i64 0, i32 1
  %11 = bitcast %"class.std::reverse_iterator"* %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !2, !noalias !10
  %13 = sub i64 %12, %9
  %14 = icmp sgt i64 %13, 8
  br i1 %14, label %15, label %62

; <label>:15:                                     ; preds = %2
  %16 = inttoptr i64 %9 to double*
  %17 = load double, double* %16, align 8, !tbaa !13
  br label %18

; <label>:18:                                     ; preds = %46, %15
  %19 = phi i64 [ %12, %15 ], [ %28, %46 ]
  %20 = phi i64 [ %9, %15 ], [ %43, %46 ]
  %21 = inttoptr i64 %19 to double*
  br label %22

; <label>:22:                                     ; preds = %22, %18
  %23 = phi double* [ %21, %18 ], [ %24, %22 ]
  %24 = getelementptr inbounds double, double* %23, i64 -1
  %25 = load double, double* %24, align 8, !tbaa !13
  %26 = fcmp olt double %17, %25
  br i1 %26, label %22, label %27

; <label>:27:                                     ; preds = %22
  %28 = ptrtoint double* %24 to i64
  %29 = inttoptr i64 %20 to double*
  %30 = icmp ugt double* %24, %29
  br i1 %30, label %31, label %51

; <label>:31:                                     ; preds = %27
  %32 = load double, double* %29, align 8, !tbaa !13
  %33 = fcmp olt double %32, %17
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %31
  br label %35

; <label>:35:                                     ; preds = %34, %35
  %36 = phi double* [ %37, %35 ], [ %29, %34 ]
  %37 = getelementptr inbounds double, double* %36, i64 1
  %38 = load double, double* %37, align 8, !tbaa !13
  %39 = fcmp olt double %38, %17
  br i1 %39, label %35, label %40

; <label>:40:                                     ; preds = %35
  %41 = ptrtoint double* %37 to i64
  br label %42

; <label>:42:                                     ; preds = %40, %31
  %43 = phi i64 [ %41, %40 ], [ %20, %31 ]
  %44 = phi double* [ %37, %40 ], [ %29, %31 ]
  %45 = icmp ugt double* %24, %44
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %42
  %47 = bitcast double* %24 to i64*
  %48 = inttoptr i64 %43 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !13
  store i64 %49, i64* %47, align 8, !tbaa !13
  %50 = inttoptr i64 %43 to double*
  store double %25, double* %50, align 8, !tbaa !13
  br label %18

; <label>:51:                                     ; preds = %42, %27
  %52 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %3, i64 0, i32 1
  %53 = bitcast %"class.std::reverse_iterator"* %52 to i64*
  store i64 %9, i64* %53, align 8, !tbaa !2
  %54 = ptrtoint double* %23 to i64
  %55 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %4, i64 0, i32 1
  %56 = bitcast %"class.std::reverse_iterator"* %55 to i64*
  store i64 %54, i64* %56, align 8, !tbaa !2, !alias.scope !15
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* nonnull %3, %"class.std::reverse_iterator.0"* nonnull %4)
  %57 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %5, i64 0, i32 1
  %58 = bitcast %"class.std::reverse_iterator"* %57 to i64*
  store i64 %54, i64* %58, align 8, !tbaa !2, !alias.scope !18
  %59 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %6, i64 0, i32 1
  %60 = load i64, i64* %11, align 8, !tbaa !2
  %61 = bitcast %"class.std::reverse_iterator"* %59 to i64*
  store i64 %60, i64* %61, align 8, !tbaa !2
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* nonnull %5, %"class.std::reverse_iterator.0"* nonnull %6)
  br label %62

; <label>:62:                                     ; preds = %51, %2
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSSt16reverse_iteratorIPdE", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv: argument 0"}
!9 = distinct !{!9, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv: argument 0"}
!12 = distinct !{!12, !"_ZNKSt16reverse_iteratorIS_IPdEE4baseEv"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl: argument 0"}
!17 = distinct !{!17, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl: argument 0"}
!20 = distinct !{!20, !"_ZNKSt16reverse_iteratorIS_IPdEEplEl"}
