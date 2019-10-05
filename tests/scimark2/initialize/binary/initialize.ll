; ModuleID = 'initialize.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
define hidden void @initialize(%struct.Random_struct*, i32) #0 {
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Random_struct* %0, %struct.Random_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0x3E00000000200000, double* @dm1, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %13 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

; <label>:19:                                     ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2147483647
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %4, align 4
  br label %25

; <label>:24:                                     ; preds = %19
  br label %25

; <label>:25:                                     ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 2147483647, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %25
  store i32 9069, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 65536
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 65536
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

; <label>:38:                                     ; preds = %67, %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 17
  br i1 %40, label %41, label %70

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 65536
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = srem i32 %54, 32768
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = srem i32 %56, 65536
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 65536, %59
  %61 = add nsw i32 %58, %60
  %62 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %63 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i32], [17 x i32]* %63, i64 0, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %41
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %38

; <label>:70:                                     ; preds = %38
  %71 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %72 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %71, i32 0, i32 2
  store i32 4, i32* %72, align 8
  %73 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %74 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %73, i32 0, i32 3
  store i32 16, i32* %74, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
