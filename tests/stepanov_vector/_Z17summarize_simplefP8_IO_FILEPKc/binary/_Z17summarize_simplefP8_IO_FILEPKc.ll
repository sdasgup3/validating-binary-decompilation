; ModuleID = '_Z17summarize_simplefP8_IO_FILEPKc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_Z17summarize_simplefP8_IO_FILEPKc(%struct._IO_FILE* nocapture, i8*) local_unnamed_addr #1 {
  %3 = load i32, i32* @current_test, align 4, !tbaa !2
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

; <label>:5:                                      ; preds = %2
  %6 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %7 = sext i32 %3 to i64
  br label %8

; <label>:8:                                      ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %17, %8 ]
  %10 = phi i32 [ 12, %5 ], [ %16, %8 ]
  %11 = getelementptr inbounds %struct.one_result, %struct.one_result* %6, i64 %9, i32 1
  %12 = load i8*, i8** %11, align 8, !tbaa !8
  %13 = tail call i64 @strlen(i8* %12) #3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %10, %14
  %16 = select i1 %15, i32 %14, i32 %10
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp slt i64 %17, %7
  br i1 %18, label %8, label %19

; <label>:19:                                     ; preds = %8, %2
  %20 = phi i32 [ 12, %2 ], [ %16, %8 ]
  %21 = add nsw i32 %20, -12
  %22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @current_test, align 4, !tbaa !2
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %91

; <label>:26:                                     ; preds = %19
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %39, %27 ], [ 0, %26 ]
  %29 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.one_result, %struct.one_result* %29, i64 %28, i32 1
  %31 = load i8*, i8** %30, align 8, !tbaa !8
  %32 = tail call i64 @strlen(i8* %31) #3
  %33 = trunc i64 %32 to i32
  %34 = sub i32 %20, %33
  %35 = getelementptr inbounds %struct.one_result, %struct.one_result* %29, i64 %28, i32 0
  %36 = load double, double* %35, align 8, !tbaa !11
  %37 = trunc i64 %28 to i32
  %38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %37, i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* %31, double %36)
  %39 = add nuw nsw i64 %28, 1
  %40 = load i32, i32* @current_test, align 4, !tbaa !2
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %27, label %43

; <label>:43:                                     ; preds = %27
  %44 = icmp sgt i32 %40, 0
  br i1 %44, label %45, label %91

; <label>:45:                                     ; preds = %43
  %46 = load %struct.one_result*, %struct.one_result** @results, align 8, !tbaa !6
  %47 = zext i32 %40 to i64
  %48 = add nsw i64 %47, -1
  %49 = and i64 %47, 3
  %50 = icmp ult i64 %48, 3
  br i1 %50, label %75, label %51

; <label>:51:                                     ; preds = %45
  %52 = sub nsw i64 %47, %49
  br label %53

; <label>:53:                                     ; preds = %53, %51
  %54 = phi i64 [ 0, %51 ], [ %72, %53 ]
  %55 = phi double [ 0.000000e+00, %51 ], [ %71, %53 ]
  %56 = phi i64 [ %52, %51 ], [ %73, %53 ]
  %57 = getelementptr inbounds %struct.one_result, %struct.one_result* %46, i64 %54, i32 0
  %58 = load double, double* %57, align 8, !tbaa !11
  %59 = fadd double %55, %58
  %60 = or i64 %54, 1
  %61 = getelementptr inbounds %struct.one_result, %struct.one_result* %46, i64 %60, i32 0
  %62 = load double, double* %61, align 8, !tbaa !11
  %63 = fadd double %59, %62
  %64 = or i64 %54, 2
  %65 = getelementptr inbounds %struct.one_result, %struct.one_result* %46, i64 %64, i32 0
  %66 = load double, double* %65, align 8, !tbaa !11
  %67 = fadd double %63, %66
  %68 = or i64 %54, 3
  %69 = getelementptr inbounds %struct.one_result, %struct.one_result* %46, i64 %68, i32 0
  %70 = load double, double* %69, align 8, !tbaa !11
  %71 = fadd double %67, %70
  %72 = add nuw nsw i64 %54, 4
  %73 = add i64 %56, -4
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %53

; <label>:75:                                     ; preds = %53, %45
  %76 = phi double [ undef, %45 ], [ %71, %53 ]
  %77 = phi i64 [ 0, %45 ], [ %72, %53 ]
  %78 = phi double [ 0.000000e+00, %45 ], [ %71, %53 ]
  %79 = icmp eq i64 %49, 0
  br i1 %79, label %91, label %80

; <label>:80:                                     ; preds = %75
  br label %81

; <label>:81:                                     ; preds = %81, %80
  %82 = phi i64 [ %77, %80 ], [ %88, %81 ]
  %83 = phi double [ %78, %80 ], [ %87, %81 ]
  %84 = phi i64 [ %49, %80 ], [ %89, %81 ]
  %85 = getelementptr inbounds %struct.one_result, %struct.one_result* %46, i64 %82, i32 0
  %86 = load double, double* %85, align 8, !tbaa !11
  %87 = fadd double %83, %86
  %88 = add nuw nsw i64 %82, 1
  %89 = add i64 %84, -1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %81, !llvm.loop !12

; <label>:91:                                     ; preds = %75, %81, %19, %43
  %92 = phi double [ 0.000000e+00, %43 ], [ 0.000000e+00, %19 ], [ %76, %75 ], [ %87, %81 ]
  %93 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %1, double %92)
  store i32 0, i32* @current_test, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

attributes #0 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

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
