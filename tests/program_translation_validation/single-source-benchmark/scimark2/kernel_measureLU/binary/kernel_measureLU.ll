; ModuleID = 'kernel_measureLU.bc'
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
declare noalias i8* @malloc(i64) #0

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare double** @RandomMatrix(i32, i32, %struct.Random_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare double @LU_num_flops(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @LU_factor(i32, i32, double**, i32*) #1

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
define double @kernel_measureLU(i32, double, %struct.Random_struct*) #1 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.Stopwatch_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  store double** null, double*** %7, align 8
  store double** null, double*** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %14, %struct.Stopwatch_struct** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %18 = call double** @RandomMatrix(i32 %15, i32 %16, %struct.Random_struct* %17)
  store double** %18, double*** %7, align 8
  %19 = icmp eq double** %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %3
  call void @exit(i32 1) #3
  unreachable

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call double** @new_Array2D_double(i32 %22, i32 %23)
  store double** %24, double*** %8, align 8
  %25 = icmp eq double** %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  call void @exit(i32 1) #3
  unreachable

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @malloc(i64 %30) #4
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %27
  call void @exit(i32 1) #3
  unreachable

; <label>:35:                                     ; preds = %27
  br label %36

; <label>:36:                                     ; preds = %35, %60
  %37 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %37)
  store i32 0, i32* %12, align 4
  br label %38

; <label>:38:                                     ; preds = %52, %36
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load double**, double*** %8, align 8
  %46 = load double**, double*** %7, align 8
  call void @Array2D_double_copy(i32 %43, i32 %44, double** %45, double** %46)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load double**, double*** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @LU_factor(i32 %47, i32 %48, double** %49, i32* %50)
  br label %52

; <label>:52:                                     ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %38

; <label>:55:                                     ; preds = %38
  %56 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %56)
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 4096
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %55
  br label %63

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %13, align 4
  br label %36

; <label>:63:                                     ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = call double @LU_num_flops(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double %65, %67
  %69 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  %70 = call double @Stopwatch_read(%struct.Stopwatch_struct* %69)
  %71 = fdiv double %68, %70
  %72 = fmul double %71, 0x3EB0C6F7A0B5ED8D
  store double %72, double* %11, align 8
  %73 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %73)
  %74 = load i32*, i32** %9, align 8
  %75 = bitcast i32* %74 to i8*
  call void @free(i8* %75) #4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load double**, double*** %8, align 8
  call void @Array2D_double_delete(i32 %76, i32 %77, double** %78)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load double**, double*** %7, align 8
  call void @Array2D_double_delete(i32 %79, i32 %80, double** %81)
  %82 = load double, double* %11, align 8
  ret double %82
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
declare double** @new_Array2D_double(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @Array2D_double_delete(i32, i32, double**) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @Array2D_double_copy(i32, i32, double**, double**) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
