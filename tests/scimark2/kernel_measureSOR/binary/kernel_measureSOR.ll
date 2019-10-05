; ModuleID = 'kernel_measureSOR.bc'
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

; Function Attrs: noinline nounwind optnone uwtable
declare double** @RandomMatrix(i32, i32, %struct.Random_struct*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare double @SOR_num_flops(i32, i32, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @SOR_execute(i32, i32, double, double**, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.Stopwatch_struct* @new_Stopwatch() #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @Stopwatch_delete(%struct.Stopwatch_struct*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @Stopwatch_start(%struct.Stopwatch_struct*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @Stopwatch_stop(%struct.Stopwatch_struct*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare double @Stopwatch_read(%struct.Stopwatch_struct*) #0

; Function Attrs: noinline nounwind optnone uwtable
define double @kernel_measureSOR(i32, double, %struct.Random_struct*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.Stopwatch_struct*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %14 = call double** @RandomMatrix(i32 %11, i32 %12, %struct.Random_struct* %13)
  store double** %14, double*** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %15 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %15, %struct.Stopwatch_struct** %9, align 8
  store i32 1, i32* %10, align 4
  br label %16

; <label>:16:                                     ; preds = %3, %27
  %17 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %17)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load double**, double*** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %21, 16
  call void @SOR_execute(i32 %18, i32 %19, double 1.250000e+00, double** %20, i32 %22)
  %23 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %23)
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 4096
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %16
  br label %30

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %10, align 4
  br label %16

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call double @SOR_num_flops(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  %36 = call double @Stopwatch_read(%struct.Stopwatch_struct* %35)
  %37 = fdiv double %34, %36
  %38 = fmul double %37, 0x3EB0C6F7A0B5ED8D
  store double %38, double* %8, align 8
  %39 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %39)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load double**, double*** %7, align 8
  call void @Array2D_double_delete(i32 %40, i32 %41, double** %42)
  %43 = load double, double* %8, align 8
  ret double %43
}

; Function Attrs: noinline nounwind optnone uwtable
declare void @Array2D_double_delete(i32, i32, double**) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
