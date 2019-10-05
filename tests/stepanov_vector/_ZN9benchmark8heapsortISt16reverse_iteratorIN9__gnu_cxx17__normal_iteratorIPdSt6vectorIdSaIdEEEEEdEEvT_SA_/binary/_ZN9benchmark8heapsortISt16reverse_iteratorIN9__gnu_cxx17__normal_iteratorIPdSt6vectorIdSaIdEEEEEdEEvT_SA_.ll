; ModuleID = '_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }
%"class.std::reverse_iterator.1" = type { %"class.std::reverse_iterator" }

$_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ = comdat any

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
define weak_odr void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"*) local_unnamed_addr #0 comdat {
  %3 = bitcast %"class.std::reverse_iterator.1"* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast %"class.std::reverse_iterator.1"* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = sub i64 %4, %6
  %8 = ashr exact i64 %7, 3
  %9 = icmp sgt i64 %7, 8
  %10 = inttoptr i64 %4 to double*
  br i1 %9, label %11, label %169

; <label>:11:                                     ; preds = %2
  %12 = sdiv i64 %8, 2
  %13 = add nsw i64 %8, -1
  %14 = sub nsw i64 1, %8
  %15 = getelementptr inbounds double, double* %10, i64 %14
  %16 = getelementptr inbounds double, double* %15, i64 -1
  %17 = bitcast double* %16 to i64*
  br label %18

; <label>:18:                                     ; preds = %11, %83
  %19 = phi i64 [ %12, %11 ], [ %20, %83 ]
  %20 = add nsw i64 %19, -1
  %21 = sub i64 1, %19
  %22 = getelementptr inbounds double, double* %10, i64 %21
  %23 = getelementptr inbounds double, double* %22, i64 -1
  %24 = load double, double* %23, align 8, !tbaa !2
  %25 = shl i64 %20, 1
  %26 = add nsw i64 %25, 2
  %27 = icmp slt i64 %26, %8
  br i1 %27, label %28, label %55

; <label>:28:                                     ; preds = %18
  br label %29

; <label>:29:                                     ; preds = %28, %29
  %30 = phi i64 [ %43, %29 ], [ %20, %28 ]
  %31 = phi i64 [ %53, %29 ], [ %26, %28 ]
  %32 = sub i64 1, %31
  %33 = getelementptr inbounds double, double* %10, i64 %32
  %34 = getelementptr inbounds double, double* %33, i64 -1
  %35 = load double, double* %34, align 8, !tbaa !2
  %36 = sub i64 0, %31
  %37 = getelementptr inbounds double, double* %10, i64 %36
  %38 = getelementptr inbounds double, double* %37, i64 -1
  %39 = load double, double* %38, align 8, !tbaa !2
  %40 = fcmp olt double %35, %39
  %41 = zext i1 %40 to i64
  %42 = add nsw i64 %31, %41
  %43 = add nsw i64 %42, -1
  %44 = sub i64 1, %42
  %45 = getelementptr inbounds double, double* %10, i64 %44
  %46 = getelementptr inbounds double, double* %45, i64 -1
  %47 = bitcast double* %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !2
  %49 = sub i64 0, %30
  %50 = getelementptr inbounds double, double* %10, i64 %49
  %51 = getelementptr inbounds double, double* %50, i64 -1
  %52 = bitcast double* %51 to i64*
  store i64 %48, i64* %52, align 8, !tbaa !2
  %53 = shl nsw i64 %42, 1
  %54 = icmp slt i64 %53, %8
  br i1 %54, label %29, label %55

; <label>:55:                                     ; preds = %29, %18
  %56 = phi i64 [ %26, %18 ], [ %53, %29 ]
  %57 = phi i64 [ %20, %18 ], [ %43, %29 ]
  %58 = icmp eq i64 %56, %8
  br i1 %58, label %59, label %65

; <label>:59:                                     ; preds = %55
  %60 = load i64, i64* %17, align 8, !tbaa !2
  %61 = sub i64 0, %57
  %62 = getelementptr inbounds double, double* %10, i64 %61
  %63 = getelementptr inbounds double, double* %62, i64 -1
  %64 = bitcast double* %63 to i64*
  store i64 %60, i64* %64, align 8, !tbaa !2
  br label %65

; <label>:65:                                     ; preds = %59, %55
  %66 = phi i64 [ %13, %59 ], [ %57, %55 ]
  %67 = icmp slt i64 %66, %19
  br i1 %67, label %83, label %68

; <label>:68:                                     ; preds = %65
  br label %69

; <label>:69:                                     ; preds = %68, %78
  %70 = phi i64 [ %72, %78 ], [ %66, %68 ]
  %71 = add nsw i64 %70, -1
  %72 = sdiv i64 %71, 2
  %73 = sub nsw i64 0, %72
  %74 = getelementptr inbounds double, double* %10, i64 %73
  %75 = getelementptr inbounds double, double* %74, i64 -1
  %76 = load double, double* %75, align 8, !tbaa !2
  %77 = fcmp olt double %76, %24
  br i1 %77, label %78, label %83

; <label>:78:                                     ; preds = %69
  %79 = sub i64 0, %70
  %80 = getelementptr inbounds double, double* %10, i64 %79
  %81 = getelementptr inbounds double, double* %80, i64 -1
  store double %76, double* %81, align 8, !tbaa !2
  %82 = icmp slt i64 %72, %19
  br i1 %82, label %83, label %69

; <label>:83:                                     ; preds = %78, %69, %65
  %84 = phi i64 [ %66, %65 ], [ %70, %69 ], [ %72, %78 ]
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds double, double* %10, i64 %85
  %87 = getelementptr inbounds double, double* %86, i64 -1
  store double %24, double* %87, align 8, !tbaa !2
  %88 = icmp sgt i64 %19, 1
  br i1 %88, label %18, label %89

; <label>:89:                                     ; preds = %83
  br i1 %9, label %90, label %169

; <label>:90:                                     ; preds = %89
  %91 = getelementptr inbounds double, double* %10, i64 -1
  %92 = bitcast double* %91 to i64*
  br label %93

; <label>:93:                                     ; preds = %90, %163
  %94 = phi i64 [ %8, %90 ], [ %95, %163 ]
  %95 = add nsw i64 %94, -1
  %96 = sub i64 1, %94
  %97 = getelementptr inbounds double, double* %10, i64 %96
  %98 = getelementptr inbounds double, double* %97, i64 -1
  %99 = load double, double* %98, align 8, !tbaa !2
  %100 = load i64, i64* %92, align 8, !tbaa !2
  %101 = bitcast double* %98 to i64*
  store i64 %100, i64* %101, align 8, !tbaa !2
  %102 = icmp sgt i64 %94, 3
  br i1 %102, label %103, label %130

; <label>:103:                                    ; preds = %93
  br label %104

; <label>:104:                                    ; preds = %103, %104
  %105 = phi i64 [ %118, %104 ], [ 0, %103 ]
  %106 = phi i64 [ %128, %104 ], [ 2, %103 ]
  %107 = sub i64 1, %106
  %108 = getelementptr inbounds double, double* %10, i64 %107
  %109 = getelementptr inbounds double, double* %108, i64 -1
  %110 = load double, double* %109, align 8, !tbaa !2
  %111 = sub i64 0, %106
  %112 = getelementptr inbounds double, double* %10, i64 %111
  %113 = getelementptr inbounds double, double* %112, i64 -1
  %114 = load double, double* %113, align 8, !tbaa !2
  %115 = fcmp olt double %110, %114
  %116 = zext i1 %115 to i64
  %117 = or i64 %106, %116
  %118 = add nsw i64 %117, -1
  %119 = sub i64 1, %117
  %120 = getelementptr inbounds double, double* %10, i64 %119
  %121 = getelementptr inbounds double, double* %120, i64 -1
  %122 = bitcast double* %121 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !2
  %124 = sub i64 0, %105
  %125 = getelementptr inbounds double, double* %10, i64 %124
  %126 = getelementptr inbounds double, double* %125, i64 -1
  %127 = bitcast double* %126 to i64*
  store i64 %123, i64* %127, align 8, !tbaa !2
  %128 = shl nsw i64 %117, 1
  %129 = icmp slt i64 %128, %95
  br i1 %129, label %104, label %130

; <label>:130:                                    ; preds = %104, %93
  %131 = phi i64 [ 2, %93 ], [ %128, %104 ]
  %132 = phi i64 [ 0, %93 ], [ %118, %104 ]
  %133 = icmp eq i64 %131, %95
  br i1 %133, label %134, label %145

; <label>:134:                                    ; preds = %130
  %135 = add nsw i64 %94, -2
  %136 = sub i64 2, %94
  %137 = getelementptr inbounds double, double* %10, i64 %136
  %138 = getelementptr inbounds double, double* %137, i64 -1
  %139 = bitcast double* %138 to i64*
  %140 = load i64, i64* %139, align 8, !tbaa !2
  %141 = sub i64 0, %132
  %142 = getelementptr inbounds double, double* %10, i64 %141
  %143 = getelementptr inbounds double, double* %142, i64 -1
  %144 = bitcast double* %143 to i64*
  store i64 %140, i64* %144, align 8, !tbaa !2
  br label %145

; <label>:145:                                    ; preds = %134, %130
  %146 = phi i64 [ %135, %134 ], [ %132, %130 ]
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %163

; <label>:148:                                    ; preds = %145
  br label %149

; <label>:149:                                    ; preds = %148, %158
  %150 = phi i64 [ %152, %158 ], [ %146, %148 ]
  %151 = add nsw i64 %150, -1
  %152 = sdiv i64 %151, 2
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds double, double* %10, i64 %153
  %155 = getelementptr inbounds double, double* %154, i64 -1
  %156 = load double, double* %155, align 8, !tbaa !2
  %157 = fcmp olt double %156, %99
  br i1 %157, label %158, label %163

; <label>:158:                                    ; preds = %149
  %159 = sub i64 0, %150
  %160 = getelementptr inbounds double, double* %10, i64 %159
  %161 = getelementptr inbounds double, double* %160, i64 -1
  store double %156, double* %161, align 8, !tbaa !2
  %162 = icmp sgt i64 %150, 2
  br i1 %162, label %149, label %163

; <label>:163:                                    ; preds = %149, %158, %145
  %164 = phi i64 [ %146, %145 ], [ %150, %149 ], [ %152, %158 ]
  %165 = sub i64 0, %164
  %166 = getelementptr inbounds double, double* %10, i64 %165
  %167 = getelementptr inbounds double, double* %166, i64 -1
  store double %99, double* %167, align 8, !tbaa !2
  %168 = icmp sgt i64 %94, 2
  br i1 %168, label %93, label %169

; <label>:169:                                    ; preds = %163, %2, %89
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
