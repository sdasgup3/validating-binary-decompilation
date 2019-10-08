; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@polybench_papi_counters_threadid = global i32 0, align 4
@polybench_program_total_flops = global double 0.000000e+00, align 8
@polybench_t_start = common global double 0.000000e+00, align 8
@polybench_t_end = common global double 0.000000e+00, align 8
@polybench_c_start = common global i64 0, align 8
@polybench_c_end = common global i64 0, align 8
@.str = hidden unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@.str.1 = hidden unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = hidden unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca [1000 x [1000 x double]]*, align 8
  %10 = alloca [1000 x [1000 x double]]*, align 8
  %11 = alloca [1000 x [1000 x double]]*, align 8
  %12 = alloca [1000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  %13 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %14 = bitcast i8* %13 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %14, [1000 x [1000 x double]]** %9, align 8
  %15 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %16 = bitcast i8* %15 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %16, [1000 x [1000 x double]]** %10, align 8
  %17 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %18 = bitcast i8* %17 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %18, [1000 x [1000 x double]]** %11, align 8
  %19 = call i8* @polybench_alloc_data(i64 1000, i32 8)
  %20 = bitcast i8* %19 to [1000 x double]*
  store [1000 x double]* %20, [1000 x double]** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %9, align 8
  %24 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %23, i32 0, i32 0
  call void @init_array(i32 %21, i32 %22, double* %8, [1000 x double]* %24)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load double, double* %8, align 8
  %28 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %9, align 8
  %29 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %28, i32 0, i32 0
  %30 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %10, align 8
  %31 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %30, i32 0, i32 0
  %32 = load [1000 x double]*, [1000 x double]** %12, align 8
  %33 = getelementptr inbounds [1000 x double], [1000 x double]* %32, i32 0, i32 0
  call void @kernel_covariance(i32 %25, i32 %26, double %27, [1000 x double]* %29, [1000 x double]* %31, double* %33)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %9, align 8
  %37 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %36, i32 0, i32 0
  call void @init_array(i32 %34, i32 %35, double* %8, [1000 x double]* %37)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load double, double* %8, align 8
  %41 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %9, align 8
  %42 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %41, i32 0, i32 0
  %43 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %11, align 8
  %44 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %43, i32 0, i32 0
  %45 = load [1000 x double]*, [1000 x double]** %12, align 8
  %46 = getelementptr inbounds [1000 x double], [1000 x double]* %45, i32 0, i32 0
  call void @kernel_covariance(i32 %38, i32 %39, double %40, [1000 x double]* %42, [1000 x double]* %44, double* %46)
  %47 = load i32, i32* %7, align 4
  %48 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %10, align 8
  %49 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %48, i32 0, i32 0
  %50 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %11, align 8
  %51 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %50, i32 0, i32 0
  %52 = call i32 @check_FP(i32 %47, [1000 x double]* %49, [1000 x double]* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

; <label>:54:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

; <label>:55:                                     ; preds = %2
  %56 = load i32, i32* %7, align 4
  %57 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %11, align 8
  %58 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %57, i32 0, i32 0
  call void @print_array(i32 %56, [1000 x double]* %58)
  %59 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %9, align 8
  %60 = bitcast [1000 x [1000 x double]]* %59 to i8*
  call void @free(i8* %60) #2
  %61 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %10, align 8
  %62 = bitcast [1000 x [1000 x double]]* %61 to i8*
  call void @free(i8* %62) #2
  %63 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %11, align 8
  %64 = bitcast [1000 x [1000 x double]]* %63 to i8*
  call void @free(i8* %64) #2
  %65 = load [1000 x double]*, [1000 x double]** %12, align 8
  %66 = bitcast [1000 x double]* %65 to i8*
  call void @free(i8* %66) #2
  store i32 0, i32* %3, align 4
  br label %67

; <label>:67:                                     ; preds = %55, %54
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
declare hidden void @init_array(i32, i32, double*, [1000 x double]*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare hidden void @kernel_covariance(i32, i32, double, [1000 x double]*, [1000 x double]*, double*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare hidden i32 @check_FP(i32, [1000 x double]*, [1000 x double]*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare hidden void @print_array(i32, [1000 x double]*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
