; ModuleID = 'kernel_measureMonteCarlo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Stopwatch_struct = type { i32, double, double }
%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

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
declare double @MonteCarlo_num_flops(i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare double @MonteCarlo_integrate(i32) #0

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
define double @kernel_measureMonteCarlo(double, %struct.Random_struct*) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.Random_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.Stopwatch_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store %struct.Random_struct* %1, %struct.Random_struct** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %8 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %8, %struct.Stopwatch_struct** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %2, %18
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %10)
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 65536
  %13 = call double @MonteCarlo_integrate(i32 %12)
  %14 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %14)
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 4096
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %9
  br label %21

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %7, align 4
  br label %9

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call double @MonteCarlo_num_flops(i32 %22)
  %24 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  %25 = call double @Stopwatch_read(%struct.Stopwatch_struct* %24)
  %26 = fdiv double %23, %25
  %27 = fmul double %26, 0x3EB0C6F7A0B5ED8D
  store double %27, double* %5, align 8
  %28 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %28)
  %29 = load double, double* %5, align 8
  ret double %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
