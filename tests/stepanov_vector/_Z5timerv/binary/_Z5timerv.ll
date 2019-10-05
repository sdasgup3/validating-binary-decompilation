; ModuleID = '_Z5timerv.bc'
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
declare i64 @clock() local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define double @_Z5timerv() local_unnamed_addr #1 {
  %1 = tail call i64 @clock() #2
  store i64 %1, i64* @end_time, align 8, !tbaa !2
  %2 = load i64, i64* @start_time, align 8, !tbaa !2
  %3 = sub nsw i64 %1, %2
  %4 = sitofp i64 %3 to double
  %5 = fdiv double %4, 1.000000e+06
  ret double %5
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
