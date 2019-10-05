; ModuleID = '_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }

$_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ = comdat any

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

; Function Attrs: norecurse uwtable
define weak_odr void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"*) local_unnamed_addr #0 comdat {
  %3 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %0, i64 0, i32 1
  %4 = bitcast %"class.std::reverse_iterator"* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !2, !noalias !7
  %6 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %1, i64 0, i32 1
  %7 = bitcast %"class.std::reverse_iterator"* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !2, !noalias !10
  %9 = sub i64 %8, %5
  %10 = ashr exact i64 %9, 3
  %11 = icmp sgt i64 %9, 8
  %12 = inttoptr i64 %5 to double*
  br i1 %11, label %13, label %132

; <label>:13:                                     ; preds = %2
  %14 = sdiv i64 %10, 2
  %15 = add nsw i64 %10, -1
  %16 = getelementptr inbounds double, double* %12, i64 %15
  %17 = bitcast double* %16 to i64*
  br label %18

; <label>:18:                                     ; preds = %13, %68
  %19 = phi i64 [ %14, %13 ], [ %20, %68 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds double, double* %12, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !13
  %23 = shl i64 %20, 1
  %24 = add nsw i64 %23, 2
  %25 = icmp slt i64 %24, %10
  br i1 %25, label %26, label %46

; <label>:26:                                     ; preds = %18
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %38, %27 ], [ %20, %26 ]
  %29 = phi i64 [ %44, %27 ], [ %24, %26 ]
  %30 = add nsw i64 %29, -1
  %31 = getelementptr inbounds double, double* %12, i64 %30
  %32 = load double, double* %31, align 8, !tbaa !13
  %33 = getelementptr inbounds double, double* %12, i64 %29
  %34 = load double, double* %33, align 8, !tbaa !13
  %35 = fcmp olt double %32, %34
  %36 = zext i1 %35 to i64
  %37 = add nsw i64 %29, %36
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds double, double* %12, i64 %38
  %40 = bitcast double* %39 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !13
  %42 = getelementptr inbounds double, double* %12, i64 %28
  %43 = bitcast double* %42 to i64*
  store i64 %41, i64* %43, align 8, !tbaa !13
  %44 = shl nsw i64 %37, 1
  %45 = icmp slt i64 %44, %10
  br i1 %45, label %27, label %46

; <label>:46:                                     ; preds = %27, %18
  %47 = phi i64 [ %24, %18 ], [ %44, %27 ]
  %48 = phi i64 [ %20, %18 ], [ %38, %27 ]
  %49 = icmp eq i64 %47, %10
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %46
  %51 = load i64, i64* %17, align 8, !tbaa !13
  %52 = getelementptr inbounds double, double* %12, i64 %48
  %53 = bitcast double* %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !13
  br label %54

; <label>:54:                                     ; preds = %50, %46
  %55 = phi i64 [ %15, %50 ], [ %48, %46 ]
  %56 = icmp slt i64 %55, %19
  br i1 %56, label %68, label %57

; <label>:57:                                     ; preds = %54
  br label %58

; <label>:58:                                     ; preds = %57, %65
  %59 = phi i64 [ %61, %65 ], [ %55, %57 ]
  %60 = add nsw i64 %59, -1
  %61 = sdiv i64 %60, 2
  %62 = getelementptr inbounds double, double* %12, i64 %61
  %63 = load double, double* %62, align 8, !tbaa !13
  %64 = fcmp olt double %63, %22
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds double, double* %12, i64 %59
  store double %63, double* %66, align 8, !tbaa !13
  %67 = icmp slt i64 %61, %19
  br i1 %67, label %68, label %58

; <label>:68:                                     ; preds = %65, %58, %54
  %69 = phi i64 [ %55, %54 ], [ %59, %58 ], [ %61, %65 ]
  %70 = getelementptr inbounds double, double* %12, i64 %69
  store double %22, double* %70, align 8, !tbaa !13
  %71 = icmp sgt i64 %19, 1
  br i1 %71, label %18, label %72

; <label>:72:                                     ; preds = %68
  br i1 %11, label %73, label %132

; <label>:73:                                     ; preds = %72
  %74 = inttoptr i64 %5 to i64*
  br label %75

; <label>:75:                                     ; preds = %73, %128
  %76 = phi i64 [ %10, %73 ], [ %77, %128 ]
  %77 = add nsw i64 %76, -1
  %78 = getelementptr inbounds double, double* %12, i64 %77
  %79 = load double, double* %78, align 8, !tbaa !13
  %80 = load i64, i64* %74, align 8, !tbaa !13
  %81 = bitcast double* %78 to i64*
  store i64 %80, i64* %81, align 8, !tbaa !13
  %82 = icmp sgt i64 %76, 3
  br i1 %82, label %83, label %103

; <label>:83:                                     ; preds = %75
  br label %84

; <label>:84:                                     ; preds = %83, %84
  %85 = phi i64 [ %95, %84 ], [ 0, %83 ]
  %86 = phi i64 [ %101, %84 ], [ 2, %83 ]
  %87 = add nsw i64 %86, -1
  %88 = getelementptr inbounds double, double* %12, i64 %87
  %89 = load double, double* %88, align 8, !tbaa !13
  %90 = getelementptr inbounds double, double* %12, i64 %86
  %91 = load double, double* %90, align 8, !tbaa !13
  %92 = fcmp olt double %89, %91
  %93 = zext i1 %92 to i64
  %94 = or i64 %86, %93
  %95 = add nsw i64 %94, -1
  %96 = getelementptr inbounds double, double* %12, i64 %95
  %97 = bitcast double* %96 to i64*
  %98 = load i64, i64* %97, align 8, !tbaa !13
  %99 = getelementptr inbounds double, double* %12, i64 %85
  %100 = bitcast double* %99 to i64*
  store i64 %98, i64* %100, align 8, !tbaa !13
  %101 = shl nsw i64 %94, 1
  %102 = icmp slt i64 %101, %77
  br i1 %102, label %84, label %103

; <label>:103:                                    ; preds = %84, %75
  %104 = phi i64 [ 2, %75 ], [ %101, %84 ]
  %105 = phi i64 [ 0, %75 ], [ %95, %84 ]
  %106 = icmp eq i64 %104, %77
  br i1 %106, label %107, label %114

; <label>:107:                                    ; preds = %103
  %108 = add nsw i64 %76, -2
  %109 = getelementptr inbounds double, double* %12, i64 %108
  %110 = bitcast double* %109 to i64*
  %111 = load i64, i64* %110, align 8, !tbaa !13
  %112 = getelementptr inbounds double, double* %12, i64 %105
  %113 = bitcast double* %112 to i64*
  store i64 %111, i64* %113, align 8, !tbaa !13
  br label %114

; <label>:114:                                    ; preds = %107, %103
  %115 = phi i64 [ %108, %107 ], [ %105, %103 ]
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %128

; <label>:117:                                    ; preds = %114
  br label %118

; <label>:118:                                    ; preds = %117, %125
  %119 = phi i64 [ %121, %125 ], [ %115, %117 ]
  %120 = add nsw i64 %119, -1
  %121 = sdiv i64 %120, 2
  %122 = getelementptr inbounds double, double* %12, i64 %121
  %123 = load double, double* %122, align 8, !tbaa !13
  %124 = fcmp olt double %123, %79
  br i1 %124, label %125, label %128

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds double, double* %12, i64 %119
  store double %123, double* %126, align 8, !tbaa !13
  %127 = icmp sgt i64 %119, 2
  br i1 %127, label %118, label %128

; <label>:128:                                    ; preds = %118, %125, %114
  %129 = phi i64 [ %115, %114 ], [ %119, %118 ], [ %121, %125 ]
  %130 = getelementptr inbounds double, double* %12, i64 %129
  store double %79, double* %130, align 8, !tbaa !13
  %131 = icmp sgt i64 %76, 2
  br i1 %131, label %75, label %132

; <label>:132:                                    ; preds = %128, %2, %72
  ret void
}

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
