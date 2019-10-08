; ModuleID = 'kernel_measureFFT.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }
%struct.Stopwatch_struct = type { i32, double, double }

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

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare double* @RandomVector(i32, %struct.Random_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.Stopwatch_struct* @new_Stopwatch() #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @Stopwatch_delete(%struct.Stopwatch_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @Stopwatch_start(%struct.Stopwatch_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @Stopwatch_stop(%struct.Stopwatch_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare double @Stopwatch_read(%struct.Stopwatch_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @kernel_measureFFT(i32, double, %struct.Random_struct*) #1 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Stopwatch_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 2, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %17 = call double* @RandomVector(i32 %15, %struct.Random_struct* %16)
  store double* %17, double** %8, align 8
  store i64 1, i64* %9, align 8
  %18 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %18, %struct.Stopwatch_struct** %10, align 8
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  br label %19

; <label>:19:                                     ; preds = %3, %40
  %20 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %20)
  store i32 0, i32* %11, align 4
  br label %21

; <label>:21:                                     ; preds = %32, %19
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = mul nsw i64 %24, 8
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load double*, double** %8, align 8
  call void @FFT_transform(i32 %28, double* %29)
  %30 = load i32, i32* %7, align 4
  %31 = load double*, double** %8, align 8
  call void @FFT_inverse(i32 %30, double* %31)
  br label %32

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %21

; <label>:35:                                     ; preds = %21
  %36 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %36)
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %37, 4096
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  br label %43

; <label>:40:                                     ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = mul nsw i64 %41, 2
  store i64 %42, i64* %9, align 8
  br label %19

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call double @FFT_num_flops(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = sitofp i64 %46 to double
  %48 = fmul double %45, %47
  %49 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  %50 = call double @Stopwatch_read(%struct.Stopwatch_struct* %49)
  %51 = fdiv double %48, %50
  %52 = fmul double %51, 0x3EB0C6F7A0B5ED8D
  store double %52, double* %12, align 8
  %53 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %53)
  %54 = load double*, double** %8, align 8
  %55 = bitcast double* %54 to i8*
  call void @free(i8* %55) #2
  %56 = load double, double* %12, align 8
  ret double %56
}

; Function Attrs: noinline nounwind optnone uwtable
declare double @FFT_num_flops(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @FFT_transform(i32, double*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @FFT_inverse(i32, double*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
