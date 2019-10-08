; ModuleID = '_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }

$_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ = comdat any

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
define weak_odr void @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double*, double*) local_unnamed_addr #0 comdat {
  %3 = ptrtoint double* %0 to i64
  %4 = ptrtoint double* %1 to i64
  %5 = sub i64 %4, %3
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %2
  %9 = sdiv i64 %6, 2
  %10 = add nsw i64 %6, -1
  %11 = getelementptr inbounds double, double* %0, i64 %10
  %12 = bitcast double* %11 to i64*
  br label %13

; <label>:13:                                     ; preds = %8, %63
  %14 = phi i64 [ %9, %8 ], [ %15, %63 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds double, double* %0, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !2
  %18 = shl i64 %15, 1
  %19 = add nsw i64 %18, 2
  %20 = icmp slt i64 %19, %6
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %13
  br label %22

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i64 [ %33, %22 ], [ %15, %21 ]
  %24 = phi i64 [ %39, %22 ], [ %19, %21 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds double, double* %0, i64 %25
  %27 = load double, double* %26, align 8, !tbaa !2
  %28 = getelementptr inbounds double, double* %0, i64 %24
  %29 = load double, double* %28, align 8, !tbaa !2
  %30 = fcmp olt double %27, %29
  %31 = zext i1 %30 to i64
  %32 = add nsw i64 %24, %31
  %33 = add nsw i64 %32, -1
  %34 = getelementptr inbounds double, double* %0, i64 %33
  %35 = bitcast double* %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !2
  %37 = getelementptr inbounds double, double* %0, i64 %23
  %38 = bitcast double* %37 to i64*
  store i64 %36, i64* %38, align 8, !tbaa !2
  %39 = shl nsw i64 %32, 1
  %40 = icmp slt i64 %39, %6
  br i1 %40, label %22, label %41

; <label>:41:                                     ; preds = %22, %13
  %42 = phi i64 [ %19, %13 ], [ %39, %22 ]
  %43 = phi i64 [ %15, %13 ], [ %33, %22 ]
  %44 = icmp eq i64 %42, %6
  br i1 %44, label %45, label %49

; <label>:45:                                     ; preds = %41
  %46 = load i64, i64* %12, align 8, !tbaa !2
  %47 = getelementptr inbounds double, double* %0, i64 %43
  %48 = bitcast double* %47 to i64*
  store i64 %46, i64* %48, align 8, !tbaa !2
  br label %49

; <label>:49:                                     ; preds = %45, %41
  %50 = phi i64 [ %10, %45 ], [ %43, %41 ]
  %51 = icmp slt i64 %50, %14
  br i1 %51, label %63, label %52

; <label>:52:                                     ; preds = %49
  br label %53

; <label>:53:                                     ; preds = %52, %60
  %54 = phi i64 [ %56, %60 ], [ %50, %52 ]
  %55 = add nsw i64 %54, -1
  %56 = sdiv i64 %55, 2
  %57 = getelementptr inbounds double, double* %0, i64 %56
  %58 = load double, double* %57, align 8, !tbaa !2
  %59 = fcmp olt double %58, %17
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds double, double* %0, i64 %54
  store double %58, double* %61, align 8, !tbaa !2
  %62 = icmp slt i64 %56, %14
  br i1 %62, label %63, label %53

; <label>:63:                                     ; preds = %60, %53, %49
  %64 = phi i64 [ %50, %49 ], [ %54, %53 ], [ %56, %60 ]
  %65 = getelementptr inbounds double, double* %0, i64 %64
  store double %17, double* %65, align 8, !tbaa !2
  %66 = icmp sgt i64 %14, 1
  br i1 %66, label %13, label %67

; <label>:67:                                     ; preds = %63
  br i1 %7, label %68, label %127

; <label>:68:                                     ; preds = %67
  %69 = bitcast double* %0 to i64*
  br label %70

; <label>:70:                                     ; preds = %68, %123
  %71 = phi i64 [ %6, %68 ], [ %72, %123 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds double, double* %0, i64 %72
  %74 = load double, double* %73, align 8, !tbaa !2
  %75 = load i64, i64* %69, align 8, !tbaa !2
  %76 = bitcast double* %73 to i64*
  store i64 %75, i64* %76, align 8, !tbaa !2
  %77 = icmp sgt i64 %71, 3
  br i1 %77, label %78, label %98

; <label>:78:                                     ; preds = %70
  br label %79

; <label>:79:                                     ; preds = %78, %79
  %80 = phi i64 [ %90, %79 ], [ 0, %78 ]
  %81 = phi i64 [ %96, %79 ], [ 2, %78 ]
  %82 = add nsw i64 %81, -1
  %83 = getelementptr inbounds double, double* %0, i64 %82
  %84 = load double, double* %83, align 8, !tbaa !2
  %85 = getelementptr inbounds double, double* %0, i64 %81
  %86 = load double, double* %85, align 8, !tbaa !2
  %87 = fcmp olt double %84, %86
  %88 = zext i1 %87 to i64
  %89 = or i64 %81, %88
  %90 = add nsw i64 %89, -1
  %91 = getelementptr inbounds double, double* %0, i64 %90
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !2
  %94 = getelementptr inbounds double, double* %0, i64 %80
  %95 = bitcast double* %94 to i64*
  store i64 %93, i64* %95, align 8, !tbaa !2
  %96 = shl nsw i64 %89, 1
  %97 = icmp slt i64 %96, %72
  br i1 %97, label %79, label %98

; <label>:98:                                     ; preds = %79, %70
  %99 = phi i64 [ 2, %70 ], [ %96, %79 ]
  %100 = phi i64 [ 0, %70 ], [ %90, %79 ]
  %101 = icmp eq i64 %99, %72
  br i1 %101, label %102, label %109

; <label>:102:                                    ; preds = %98
  %103 = add nsw i64 %71, -2
  %104 = getelementptr inbounds double, double* %0, i64 %103
  %105 = bitcast double* %104 to i64*
  %106 = load i64, i64* %105, align 8, !tbaa !2
  %107 = getelementptr inbounds double, double* %0, i64 %100
  %108 = bitcast double* %107 to i64*
  store i64 %106, i64* %108, align 8, !tbaa !2
  br label %109

; <label>:109:                                    ; preds = %102, %98
  %110 = phi i64 [ %103, %102 ], [ %100, %98 ]
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %123

; <label>:112:                                    ; preds = %109
  br label %113

; <label>:113:                                    ; preds = %112, %120
  %114 = phi i64 [ %116, %120 ], [ %110, %112 ]
  %115 = add nsw i64 %114, -1
  %116 = sdiv i64 %115, 2
  %117 = getelementptr inbounds double, double* %0, i64 %116
  %118 = load double, double* %117, align 8, !tbaa !2
  %119 = fcmp olt double %118, %74
  br i1 %119, label %120, label %123

; <label>:120:                                    ; preds = %113
  %121 = getelementptr inbounds double, double* %0, i64 %114
  store double %118, double* %121, align 8, !tbaa !2
  %122 = icmp sgt i64 %114, 2
  br i1 %122, label %113, label %123

; <label>:123:                                    ; preds = %113, %120, %109
  %124 = phi i64 [ %110, %109 ], [ %114, %113 ], [ %116, %120 ]
  %125 = getelementptr inbounds double, double* %0, i64 %124
  store double %74, double* %125, align 8, !tbaa !2
  %126 = icmp sgt i64 %71, 2
  br i1 %126, label %70, label %127

; <label>:127:                                    ; preds = %123, %2, %67
  ret void
}

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
