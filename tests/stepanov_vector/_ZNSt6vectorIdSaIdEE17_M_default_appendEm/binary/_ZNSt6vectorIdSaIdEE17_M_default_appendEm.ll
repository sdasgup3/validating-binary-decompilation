; ModuleID = '_ZNSt6vectorIdSaIdEE17_M_default_appendEm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: uwtable
define weak_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"*, i64) local_unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %72, label %4

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 2
  %6 = bitcast double** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !2
  %8 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %9 = load double*, double** %8, align 8, !tbaa !8
  %10 = ptrtoint double* %9 to i64
  %11 = sub i64 %7, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %4
  %15 = bitcast double* %9 to i8*
  %16 = shl i64 %1, 3
  tail call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %16, i32 8, i1 false)
  %17 = getelementptr double, double* %9, i64 %1
  br label %69

; <label>:18:                                     ; preds = %4
  %19 = bitcast double** %8 to i64*
  %20 = bitcast %"class.std::vector"* %0 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !9
  %22 = sub i64 %10, %21
  %23 = ashr exact i64 %22, 3
  %24 = sub nsw i64 2305843009213693951, %23
  %25 = icmp ult i64 %24, %1
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %18
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0)) #5
  unreachable

; <label>:27:                                     ; preds = %18
  %28 = inttoptr i64 %21 to double*
  %29 = icmp ult i64 %23, %1
  %30 = select i1 %29, i64 %1, i64 %23
  %31 = add i64 %30, %23
  %32 = icmp ult i64 %31, %23
  %33 = icmp ugt i64 %31, 2305843009213693951
  %34 = or i1 %32, %33
  %35 = select i1 %34, i64 2305843009213693951, i64 %31
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

; <label>:37:                                     ; preds = %27
  %38 = icmp ugt i64 %35, 2305843009213693951
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %37
  tail call void @_ZSt17__throw_bad_allocv() #5
  unreachable

; <label>:40:                                     ; preds = %37
  %41 = shl i64 %35, 3
  %42 = tail call i8* @_Znwm(i64 %41)
  %43 = bitcast i8* %42 to double*
  %44 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %45 = load double*, double** %44, align 8, !tbaa !9
  %46 = load i64, i64* %19, align 8, !tbaa !8
  br label %47

; <label>:47:                                     ; preds = %27, %40
  %48 = phi i64 [ %46, %40 ], [ %10, %27 ]
  %49 = phi double* [ %45, %40 ], [ %28, %27 ]
  %50 = phi i8* [ %42, %40 ], [ null, %27 ]
  %51 = phi double* [ %43, %40 ], [ null, %27 ]
  %52 = ptrtoint double* %49 to i64
  %53 = sub i64 %48, %52
  %54 = ashr exact i64 %53, 3
  %55 = icmp eq i64 %53, 0
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %47
  %57 = bitcast double* %49 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %50, i8* %57, i64 %53, i32 8, i1 false) #6
  br label %58

; <label>:58:                                     ; preds = %47, %56
  %59 = getelementptr inbounds double, double* %51, i64 %54
  %60 = bitcast double* %59 to i8*
  %61 = shl i64 %1, 3
  tail call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 %61, i32 8, i1 false)
  %62 = getelementptr double, double* %59, i64 %1
  %63 = icmp eq double* %49, null
  br i1 %63, label %66, label %64

; <label>:64:                                     ; preds = %58
  %65 = bitcast double* %49 to i8*
  tail call void @_ZdlPv(i8* %65) #6
  br label %66

; <label>:66:                                     ; preds = %58, %64
  %67 = bitcast %"class.std::vector"* %0 to i8**
  store i8* %50, i8** %67, align 8, !tbaa !9
  store double* %62, double** %8, align 8, !tbaa !8
  %68 = getelementptr inbounds double, double* %51, i64 %35
  br label %69

; <label>:69:                                     ; preds = %66, %14
  %70 = phi double** [ %8, %14 ], [ %5, %66 ]
  %71 = phi double* [ %17, %14 ], [ %68, %66 ]
  store double* %71, double** %70, align 8, !tbaa !10
  br label %72

; <label>:72:                                     ; preds = %69, %2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !5, i64 16}
!3 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !4, i64 0}
!4 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !5, i64 0, !5, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!3, !5, i64 8}
!9 = !{!3, !5, i64 0}
!10 = !{!5, !5, i64 0}
