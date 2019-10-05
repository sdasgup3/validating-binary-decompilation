; ModuleID = 'kernel_covariance.bc'
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

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @kernel_covariance(i32, i32, double, [1000 x double]*, [1000 x double]*, double*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [1000 x double]*, align 8
  %11 = alloca [1000 x double]*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store [1000 x double]* %3, [1000 x double]** %10, align 8
  store [1000 x double]* %4, [1000 x double]** %11, align 8
  store double* %5, double** %12, align 8
  store i32 0, i32* %14, align 4
  br label %17

; <label>:17:                                     ; preds = %56, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %59

; <label>:21:                                     ; preds = %17
  %22 = load double*, double** %12, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  store double 0.000000e+00, double* %25, align 8
  store i32 0, i32* %13, align 4
  br label %26

; <label>:26:                                     ; preds = %45, %21
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

; <label>:30:                                     ; preds = %26
  %31 = load [1000 x double]*, [1000 x double]** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1000 x double], [1000 x double]* %31, i64 %33
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1000 x double], [1000 x double]* %34, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double*, double** %12, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fadd double %43, %38
  store double %44, double* %42, align 8
  br label %45

; <label>:45:                                     ; preds = %30
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %26

; <label>:48:                                     ; preds = %26
  %49 = load double, double* %9, align 8
  %50 = load double*, double** %12, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fdiv double %54, %49
  store double %55, double* %53, align 8
  br label %56

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %17

; <label>:59:                                     ; preds = %17
  store i32 0, i32* %13, align 4
  br label %60

; <label>:60:                                     ; preds = %88, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %91

; <label>:64:                                     ; preds = %60
  store i32 0, i32* %14, align 4
  br label %65

; <label>:65:                                     ; preds = %84, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %87

; <label>:69:                                     ; preds = %65
  %70 = load double*, double** %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = load [1000 x double]*, [1000 x double]** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1000 x double], [1000 x double]* %75, i64 %77
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1000 x double], [1000 x double]* %78, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fsub double %82, %74
  store double %83, double* %81, align 8
  br label %84

; <label>:84:                                     ; preds = %69
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %65

; <label>:87:                                     ; preds = %65
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %60

; <label>:91:                                     ; preds = %60
  store i32 0, i32* %15, align 4
  br label %92

; <label>:92:                                     ; preds = %164, %91
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %167

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %16, align 4
  br label %98

; <label>:98:                                     ; preds = %160, %96
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %163

; <label>:102:                                    ; preds = %98
  %103 = load [1000 x double]*, [1000 x double]** %11, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [1000 x double], [1000 x double]* %103, i64 %105
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1000 x double], [1000 x double]* %106, i64 0, i64 %108
  store double 0.000000e+00, double* %109, align 8
  store i32 0, i32* %13, align 4
  br label %110

; <label>:110:                                    ; preds = %141, %102
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %144

; <label>:114:                                    ; preds = %110
  %115 = load [1000 x double]*, [1000 x double]** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1000 x double], [1000 x double]* %115, i64 %117
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1000 x double], [1000 x double]* %118, i64 0, i64 %120
  %122 = load double, double* %121, align 8
  %123 = load [1000 x double]*, [1000 x double]** %10, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1000 x double], [1000 x double]* %123, i64 %125
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1000 x double], [1000 x double]* %126, i64 0, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fmul double %122, %130
  %132 = load [1000 x double]*, [1000 x double]** %11, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [1000 x double], [1000 x double]* %132, i64 %134
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1000 x double], [1000 x double]* %135, i64 0, i64 %137
  %139 = load double, double* %138, align 8
  %140 = fadd double %139, %131
  store double %140, double* %138, align 8
  br label %141

; <label>:141:                                    ; preds = %114
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %110

; <label>:144:                                    ; preds = %110
  %145 = load [1000 x double]*, [1000 x double]** %11, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [1000 x double], [1000 x double]* %145, i64 %147
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [1000 x double], [1000 x double]* %148, i64 0, i64 %150
  %152 = load double, double* %151, align 8
  %153 = load [1000 x double]*, [1000 x double]** %11, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [1000 x double], [1000 x double]* %153, i64 %155
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [1000 x double], [1000 x double]* %156, i64 0, i64 %158
  store double %152, double* %159, align 8
  br label %160

; <label>:160:                                    ; preds = %144
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %98

; <label>:163:                                    ; preds = %98
  br label %164

; <label>:164:                                    ; preds = %163
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %92

; <label>:167:                                    ; preds = %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
