; ModuleID = 'LU_factor.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dm1 = hidden global double 0.000000e+00, align 8
@seconds.t = hidden global double 0.000000e+00, align 8
@RESOLUTION_DEFAULT = constant double 2.000000e+00, align 8
@RANDOM_SEED = constant i32 101010, align 4
@FFT_SIZE = constant i32 1024, align 4
@SOR_SIZE = constant i32 100, align 4
@SPARSE_SIZE_M = constant i32 1000, align 4
@SPARSE_SIZE_nz = constant i32 5000, align 4
@LU_SIZE = constant i32 100, align 4
@LG_FFT_SIZE = constant i32 1048576, align 4
@LG_SOR_SIZE = constant i32 1000, align 4
@LG_SPARSE_SIZE_M = constant i32 100000, align 4
@LG_SPARSE_SIZE_nz = constant i32 1000000, align 4
@LG_LU_SIZE = constant i32 1000, align 4
@TINY_FFT_SIZE = constant i32 16, align 4
@TINY_SOR_SIZE = constant i32 10, align 4
@TINY_SPARSE_SIZE_M = constant i32 10, align 4
@TINY_SPARSE_SIZE_N = constant i32 10, align 4
@TINY_SPARSE_SIZE_nz = constant i32 50, align 4
@TINY_LU_SIZE = constant i32 10, align 4
@.str = hidden unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.1 = hidden unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = hidden unnamed_addr constant [32 x i8] c"Usage: [-large] [minimum_time]\0A\00", align 1
@.str.3 = hidden unnamed_addr constant [7 x i8] c"-large\00", align 1
@.str.4 = hidden unnamed_addr constant [42 x i8] c"Using %10.2f seconds min time per kenel.\0A\00", align 1
@.str.5 = hidden unnamed_addr constant [60 x i8] c"NOTE!!! All Mflops disabled to prevent diffs from failing!\0A\00", align 1
@.str.6 = hidden unnamed_addr constant [31 x i8] c"Composite Score:        %8.2f\0A\00", align 1
@.str.7 = hidden unnamed_addr constant [41 x i8] c"FFT             Mflops: %8.2f    (N=%d)\0A\00", align 1
@.str.8 = hidden unnamed_addr constant [44 x i8] c"SOR             Mflops: %8.2f    (%d x %d)\0A\00", align 1
@.str.9 = hidden unnamed_addr constant [31 x i8] c"MonteCarlo:     Mflops: %8.2f\0A\00", align 1
@.str.10 = hidden unnamed_addr constant [48 x i8] c"Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\0A\00", align 1
@.str.11 = hidden unnamed_addr constant [47 x i8] c"LU              Mflops: %8.2f    (M=%d, N=%d)\0A\00", align 1
@.str.12 = hidden unnamed_addr constant [68 x i8] c"**                                                              **\0A\00", align 1
@.str.13 = hidden unnamed_addr constant [68 x i8] c"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\0A\00", align 1
@.str.14 = hidden unnamed_addr constant [68 x i8] c"** for details. (Results can be submitted to pozo@nist.gov)     **\0A\00", align 1
@.str.15 = hidden unnamed_addr constant [43 x i8] c"FFT: Data length is not a power of 2!: %d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @LU_factor(i32, i32, double**, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double** %2, double*** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %4
  %28 = load i32, i32* %6, align 4
  br label %31

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %7, align 4
  br label %31

; <label>:31:                                     ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %33

; <label>:33:                                     ; preds = %212, %31
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %215

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  %39 = load double**, double*** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = call double @llvm.fabs.f64(double %47)
  store double %48, double* %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

; <label>:51:                                     ; preds = %73, %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

; <label>:55:                                     ; preds = %51
  %56 = load double**, double*** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double*, double** %56, i64 %58
  %60 = load double*, double** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  store double %65, double* %15, align 8
  %66 = load double, double* %15, align 8
  %67 = load double, double* %14, align 8
  %68 = fcmp ogt double %66, %67
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %55
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %12, align 4
  %71 = load double, double* %15, align 8
  store double %71, double* %14, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %55
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %51

; <label>:76:                                     ; preds = %51
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load double**, double*** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double*, double** %82, i64 %84
  %86 = load double*, double** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fcmp oeq double %90, 0.000000e+00
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %76
  store i32 1, i32* %5, align 4
  br label %216

; <label>:93:                                     ; preds = %76
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %117

; <label>:97:                                     ; preds = %93
  %98 = load double**, double*** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double*, double** %98, i64 %100
  %102 = load double*, double** %101, align 8
  store double* %102, double** %16, align 8
  %103 = load double**, double*** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double*, double** %103, i64 %105
  %107 = load double*, double** %106, align 8
  %108 = load double**, double*** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double*, double** %108, i64 %110
  store double* %107, double** %111, align 8
  %112 = load double*, double** %16, align 8
  %113 = load double**, double*** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double*, double** %113, i64 %115
  store double* %112, double** %116, align 8
  br label %117

; <label>:117:                                    ; preds = %97, %93
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %155

; <label>:122:                                    ; preds = %117
  %123 = load double**, double*** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double*, double** %123, i64 %125
  %127 = load double*, double** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %127, i64 %129
  %131 = load double, double* %130, align 8
  %132 = fdiv double 1.000000e+00, %131
  store double %132, double* %17, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %135

; <label>:135:                                    ; preds = %151, %122
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %154

; <label>:139:                                    ; preds = %135
  %140 = load double, double* %17, align 8
  %141 = load double**, double*** %8, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double*, double** %141, i64 %143
  %145 = load double*, double** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, double* %145, i64 %147
  %149 = load double, double* %148, align 8
  %150 = fmul double %149, %140
  store double %150, double* %148, align 8
  br label %151

; <label>:151:                                    ; preds = %139
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %135

; <label>:154:                                    ; preds = %135
  br label %155

; <label>:155:                                    ; preds = %154, %117
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %211

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %163

; <label>:163:                                    ; preds = %207, %160
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %210

; <label>:167:                                    ; preds = %163
  %168 = load double**, double*** %8, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double*, double** %168, i64 %170
  %172 = load double*, double** %171, align 8
  store double* %172, double** %20, align 8
  %173 = load double**, double*** %8, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double*, double** %173, i64 %175
  %177 = load double*, double** %176, align 8
  store double* %177, double** %21, align 8
  %178 = load double*, double** %20, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  store double %182, double* %22, align 8
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %23, align 4
  br label %185

; <label>:185:                                    ; preds = %203, %167
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %206

; <label>:189:                                    ; preds = %185
  %190 = load double, double* %22, align 8
  %191 = load double*, double** %21, align 8
  %192 = load i32, i32* %23, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fmul double %190, %195
  %197 = load double*, double** %20, align 8
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double, double* %197, i64 %199
  %201 = load double, double* %200, align 8
  %202 = fsub double %201, %196
  store double %202, double* %200, align 8
  br label %203

; <label>:203:                                    ; preds = %189
  %204 = load i32, i32* %23, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %23, align 4
  br label %185

; <label>:206:                                    ; preds = %185
  br label %207

; <label>:207:                                    ; preds = %206
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %163

; <label>:210:                                    ; preds = %163
  br label %211

; <label>:211:                                    ; preds = %210, %155
  br label %212

; <label>:212:                                    ; preds = %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %33

; <label>:215:                                    ; preds = %33
  store i32 0, i32* %5, align 4
  br label %216

; <label>:216:                                    ; preds = %215, %92
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
