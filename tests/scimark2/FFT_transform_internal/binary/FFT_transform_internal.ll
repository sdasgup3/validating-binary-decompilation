; ModuleID = 'FFT_transform_internal.bc'
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
declare hidden i32 @int_log2(i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @FFT_bitreverse(i32, double*) #0

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @FFT_transform_internal(i32, double*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %3
  br label %253

; <label>:36:                                     ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @int_log2(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  br label %253

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load double*, double** %5, align 8
  call void @FFT_bitreverse(i32 %43, double* %44)
  store i32 0, i32* %8, align 4
  br label %45

; <label>:45:                                     ; preds = %248, %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %253

; <label>:49:                                     ; preds = %45
  store double 1.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sitofp i32 %50 to double
  %52 = fmul double 2.000000e+00, %51
  %53 = fmul double %52, 0x400921FB54442D18
  %54 = load i32, i32* %10, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double 2.000000e+00, %55
  %57 = fdiv double %53, %56
  store double %57, double* %15, align 8
  %58 = load double, double* %15, align 8
  %59 = call double @sin(double %58) #2
  store double %59, double* %16, align 8
  %60 = load double, double* %15, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = call double @sin(double %61) #2
  store double %62, double* %17, align 8
  %63 = load double, double* %17, align 8
  %64 = fmul double 2.000000e+00, %63
  %65 = load double, double* %17, align 8
  %66 = fmul double %64, %65
  store double %66, double* %18, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %67

; <label>:67:                                     ; preds = %128, %49
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %133

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 2, %72
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 2, %76
  store i32 %77, i32* %20, align 4
  %78 = load double*, double** %5, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  store double %82, double* %21, align 8
  %83 = load double*, double** %5, align 8
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  %88 = load double, double* %87, align 8
  store double %88, double* %22, align 8
  %89 = load double*, double** %5, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double, double* %21, align 8
  %95 = fsub double %93, %94
  %96 = load double*, double** %5, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  store double %95, double* %99, align 8
  %100 = load double*, double** %5, align 8
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %100, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double, double* %22, align 8
  %107 = fsub double %105, %106
  %108 = load double*, double** %5, align 8
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %108, i64 %111
  store double %107, double* %112, align 8
  %113 = load double, double* %21, align 8
  %114 = load double*, double** %5, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fadd double %118, %113
  store double %119, double* %117, align 8
  %120 = load double, double* %22, align 8
  %121 = load double*, double** %5, align 8
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %121, i64 %124
  %126 = load double, double* %125, align 8
  %127 = fadd double %126, %120
  store double %127, double* %125, align 8
  br label %128

; <label>:128:                                    ; preds = %71
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 2, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  br label %67

; <label>:133:                                    ; preds = %67
  store i32 1, i32* %13, align 4
  br label %134

; <label>:134:                                    ; preds = %244, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %247

; <label>:138:                                    ; preds = %134
  %139 = load double, double* %11, align 8
  %140 = load double, double* %16, align 8
  %141 = load double, double* %12, align 8
  %142 = fmul double %140, %141
  %143 = fsub double %139, %142
  %144 = load double, double* %18, align 8
  %145 = load double, double* %11, align 8
  %146 = fmul double %144, %145
  %147 = fsub double %143, %146
  store double %147, double* %23, align 8
  %148 = load double, double* %12, align 8
  %149 = load double, double* %16, align 8
  %150 = load double, double* %11, align 8
  %151 = fmul double %149, %150
  %152 = fadd double %148, %151
  %153 = load double, double* %18, align 8
  %154 = load double, double* %12, align 8
  %155 = fmul double %153, %154
  %156 = fsub double %152, %155
  store double %156, double* %24, align 8
  %157 = load double, double* %23, align 8
  store double %157, double* %11, align 8
  %158 = load double, double* %24, align 8
  store double %158, double* %12, align 8
  store i32 0, i32* %14, align 4
  br label %159

; <label>:159:                                    ; preds = %238, %138
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %243

; <label>:163:                                    ; preds = %159
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %164, %165
  %167 = mul nsw i32 2, %166
  store i32 %167, i32* %25, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  %173 = mul nsw i32 2, %172
  store i32 %173, i32* %26, align 4
  %174 = load double*, double** %5, align 8
  %175 = load i32, i32* %26, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %174, i64 %176
  %178 = load double, double* %177, align 8
  store double %178, double* %27, align 8
  %179 = load double*, double** %5, align 8
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %179, i64 %182
  %184 = load double, double* %183, align 8
  store double %184, double* %28, align 8
  %185 = load double, double* %11, align 8
  %186 = load double, double* %27, align 8
  %187 = fmul double %185, %186
  %188 = load double, double* %12, align 8
  %189 = load double, double* %28, align 8
  %190 = fmul double %188, %189
  %191 = fsub double %187, %190
  store double %191, double* %29, align 8
  %192 = load double, double* %11, align 8
  %193 = load double, double* %28, align 8
  %194 = fmul double %192, %193
  %195 = load double, double* %12, align 8
  %196 = load double, double* %27, align 8
  %197 = fmul double %195, %196
  %198 = fadd double %194, %197
  store double %198, double* %30, align 8
  %199 = load double*, double** %5, align 8
  %200 = load i32, i32* %25, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  %203 = load double, double* %202, align 8
  %204 = load double, double* %29, align 8
  %205 = fsub double %203, %204
  %206 = load double*, double** %5, align 8
  %207 = load i32, i32* %26, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  store double %205, double* %209, align 8
  %210 = load double*, double** %5, align 8
  %211 = load i32, i32* %25, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %210, i64 %213
  %215 = load double, double* %214, align 8
  %216 = load double, double* %30, align 8
  %217 = fsub double %215, %216
  %218 = load double*, double** %5, align 8
  %219 = load i32, i32* %26, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %218, i64 %221
  store double %217, double* %222, align 8
  %223 = load double, double* %29, align 8
  %224 = load double*, double** %5, align 8
  %225 = load i32, i32* %25, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds double, double* %224, i64 %226
  %228 = load double, double* %227, align 8
  %229 = fadd double %228, %223
  store double %229, double* %227, align 8
  %230 = load double, double* %30, align 8
  %231 = load double*, double** %5, align 8
  %232 = load i32, i32* %25, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %231, i64 %234
  %236 = load double, double* %235, align 8
  %237 = fadd double %236, %230
  store double %237, double* %235, align 8
  br label %238

; <label>:238:                                    ; preds = %163
  %239 = load i32, i32* %10, align 4
  %240 = mul nsw i32 2, %239
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %14, align 4
  br label %159

; <label>:243:                                    ; preds = %159
  br label %244

; <label>:244:                                    ; preds = %243
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %134

; <label>:247:                                    ; preds = %134
  br label %248

; <label>:248:                                    ; preds = %247
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %10, align 4
  %252 = mul nsw i32 %251, 2
  store i32 %252, i32* %10, align 4
  br label %45

; <label>:253:                                    ; preds = %35, %41, %45
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
