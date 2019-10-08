; ModuleID = 'Random_nextDouble.bc'
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
define double @Random_nextDouble(%struct.Random_struct*) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.Random_struct* %0, %struct.Random_struct** %3, align 8
  %8 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %9 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %12 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds [17 x i32], [17 x i32]* %15, i32 0, i32 0
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 2147483647
  store i32 %32, i32* %4, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %36 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [17 x i32], [17 x i32]* %36, i64 0, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %33
  store i32 16, i32* %5, align 4
  br label %46

; <label>:43:                                     ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %42
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %49 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %46
  store i32 16, i32* %6, align 4
  br label %56

; <label>:53:                                     ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %56

; <label>:56:                                     ; preds = %53, %52
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %59 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %61 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

; <label>:64:                                     ; preds = %56
  %65 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %66 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %65, i32 0, i32 5
  %67 = load double, double* %66, align 8
  %68 = load double, double* @dm1, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double %68, %70
  %72 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %73 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %72, i32 0, i32 7
  %74 = load double, double* %73, align 8
  %75 = fmul double %71, %74
  %76 = fadd double %67, %75
  store double %76, double* %2, align 8
  br label %82

; <label>:77:                                     ; preds = %56
  %78 = load double, double* @dm1, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sitofp i32 %79 to double
  %81 = fmul double %78, %80
  store double %81, double* %2, align 8
  br label %82

; <label>:82:                                     ; preds = %77, %64
  %83 = load double, double* %2, align 8
  ret double %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
