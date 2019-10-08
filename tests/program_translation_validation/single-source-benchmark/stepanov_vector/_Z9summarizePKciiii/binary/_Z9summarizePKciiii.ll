; ModuleID = '_Z9summarizePKciiii.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }

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

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_Z9summarizePKciiii(i8*, i32, i32, i32, i32) local_unnamed_addr #1 {
  %6 = sitofp i32 %1 to double
  %7 = sitofp i32 %2 to double
  %8 = fmul double %6, %7
  %9 = fdiv double %8, 1.000000e+06
  %10 = load i32, i32* @current_test, align 4, !tbaa !2
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %5
  %13 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %14 = sext i32 %10 to i64
  br label %15

; <label>:15:                                     ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %24, %15 ]
  %17 = phi i32 [ 12, %12 ], [ %23, %15 ]
  %18 = getelementptr inbounds %struct.one_result, %struct.one_result* %13, i64 %16, i32 1
  %19 = load i8*, i8** %18, align 8, !tbaa !8
  %20 = tail call i64 @strlen(i8* %19) #3
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %17, %21
  %23 = select i1 %22, i32 %21, i32 %17
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp slt i64 %24, %14
  br i1 %25, label %15, label %26

; <label>:26:                                     ; preds = %15, %5
  %27 = phi i32 [ 12, %5 ], [ %23, %15 ]
  %28 = add nsw i32 %27, -12
  %29 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @current_test, align 4, !tbaa !2
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %102

; <label>:33:                                     ; preds = %26
  br label %34

; <label>:34:                                     ; preds = %33, %34
  %35 = phi i64 [ %50, %34 ], [ 0, %33 ]
  %36 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.one_result, %struct.one_result* %36, i64 %35, i32 1
  %38 = load i8*, i8** %37, align 8, !tbaa !8
  %39 = tail call i64 @strlen(i8* %38) #3
  %40 = trunc i64 %39 to i32
  %41 = sub i32 %27, %40
  %42 = getelementptr inbounds %struct.one_result, %struct.one_result* %36, i64 %35, i32 0
  %43 = load double, double* %42, align 8, !tbaa !11
  %44 = fdiv double %9, %43
  %45 = getelementptr inbounds %struct.one_result, %struct.one_result* %36, i64 0, i32 0
  %46 = load double, double* %45, align 8, !tbaa !11
  %47 = fdiv double %43, %46
  %48 = trunc i64 %35 to i32
  %49 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* %38, double %43, double %44, double %47)
  %50 = add nuw nsw i64 %35, 1
  %51 = load i32, i32* @current_test, align 4, !tbaa !2
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %34, label %54

; <label>:54:                                     ; preds = %34
  %55 = icmp sgt i32 %51, 0
  br i1 %55, label %56, label %102

; <label>:56:                                     ; preds = %54
  %57 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %58 = zext i32 %51 to i64
  %59 = add nsw i64 %58, -1
  %60 = and i64 %58, 3
  %61 = icmp ult i64 %59, 3
  br i1 %61, label %86, label %62

; <label>:62:                                     ; preds = %56
  %63 = sub nsw i64 %58, %60
  br label %64

; <label>:64:                                     ; preds = %64, %62
  %65 = phi i64 [ 0, %62 ], [ %83, %64 ]
  %66 = phi double [ 0.000000e+00, %62 ], [ %82, %64 ]
  %67 = phi i64 [ %63, %62 ], [ %84, %64 ]
  %68 = getelementptr inbounds %struct.one_result, %struct.one_result* %57, i64 %65, i32 0
  %69 = load double, double* %68, align 8, !tbaa !11
  %70 = fadd double %66, %69
  %71 = or i64 %65, 1
  %72 = getelementptr inbounds %struct.one_result, %struct.one_result* %57, i64 %71, i32 0
  %73 = load double, double* %72, align 8, !tbaa !11
  %74 = fadd double %70, %73
  %75 = or i64 %65, 2
  %76 = getelementptr inbounds %struct.one_result, %struct.one_result* %57, i64 %75, i32 0
  %77 = load double, double* %76, align 8, !tbaa !11
  %78 = fadd double %74, %77
  %79 = or i64 %65, 3
  %80 = getelementptr inbounds %struct.one_result, %struct.one_result* %57, i64 %79, i32 0
  %81 = load double, double* %80, align 8, !tbaa !11
  %82 = fadd double %78, %81
  %83 = add nuw nsw i64 %65, 4
  %84 = add i64 %67, -4
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %64

; <label>:86:                                     ; preds = %64, %56
  %87 = phi double [ undef, %56 ], [ %82, %64 ]
  %88 = phi i64 [ 0, %56 ], [ %83, %64 ]
  %89 = phi double [ 0.000000e+00, %56 ], [ %82, %64 ]
  %90 = icmp eq i64 %60, 0
  br i1 %90, label %102, label %91

; <label>:91:                                     ; preds = %86
  br label %92

; <label>:92:                                     ; preds = %92, %91
  %93 = phi i64 [ %88, %91 ], [ %99, %92 ]
  %94 = phi double [ %89, %91 ], [ %98, %92 ]
  %95 = phi i64 [ %60, %91 ], [ %100, %92 ]
  %96 = getelementptr inbounds %struct.one_result, %struct.one_result* %57, i64 %93, i32 0
  %97 = load double, double* %96, align 8, !tbaa !11
  %98 = fadd double %94, %97
  %99 = add nuw nsw i64 %93, 1
  %100 = add i64 %95, -1
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %92, !llvm.loop !12

; <label>:102:                                    ; preds = %86, %92, %26, %54
  %103 = phi double [ 0.000000e+00, %54 ], [ 0.000000e+00, %26 ], [ %87, %86 ], [ %98, %92 ]
  %104 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %0, double %103)
  %105 = load i32, i32* @current_test, align 4, !tbaa !2
  %106 = icmp sgt i32 %105, 1
  %107 = icmp ne i32 %4, 0
  %108 = and i1 %107, %106
  br i1 %108, label %109, label %131

; <label>:109:                                    ; preds = %102
  br label %110

; <label>:110:                                    ; preds = %109, %110
  %111 = phi i64 [ %121, %110 ], [ 1, %109 ]
  %112 = phi double [ %120, %110 ], [ 0.000000e+00, %109 ]
  %113 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct.one_result, %struct.one_result* %113, i64 %111, i32 0
  %115 = load double, double* %114, align 8, !tbaa !11
  %116 = getelementptr inbounds %struct.one_result, %struct.one_result* %113, i64 0, i32 0
  %117 = load double, double* %116, align 8, !tbaa !11
  %118 = fdiv double %115, %117
  %119 = tail call double @log(double %118) #4
  %120 = fadd double %112, %119
  %121 = add nuw nsw i64 %111, 1
  %122 = load i32, i32* @current_test, align 4, !tbaa !2
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %110, label %125

; <label>:125:                                    ; preds = %110
  %126 = add i32 %122, -1
  %127 = sitofp i32 %126 to double
  %128 = fdiv double %120, %127
  %129 = tail call double @exp(double %128) #4
  %130 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %0, double %129)
  br label %131

; <label>:131:                                    ; preds = %125, %102
  store i32 0, i32* @current_test, align 4, !tbaa !2
  ret void
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @log(double) local_unnamed_addr #0

; Function Attrs: nounwind
declare double @exp(double) local_unnamed_addr #0

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !7, i64 8}
!9 = !{!"_ZTS10one_result", !10, i64 0, !7, i64 8}
!10 = !{!"double", !4, i64 0}
!11 = !{!9, !10, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
