; ModuleID = 'kernel_measureSparseMatMult.bc'
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
declare double @SparseCompRow_num_flops(i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @SparseCompRow_matmult(i32, double*, double*, i32*, i32*, double*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @kernel_measureSparseMatMult(i32, i32, double, %struct.Random_struct*) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.Random_struct*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.Stopwatch_struct*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store %struct.Random_struct* %3, %struct.Random_struct** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.Random_struct*, %struct.Random_struct** %8, align 8
  %25 = call double* @RandomVector(i32 %23, %struct.Random_struct* %24)
  store double* %25, double** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = call noalias i8* @malloc(i64 %28) #2
  %30 = bitcast i8* %29 to double*
  store double* %30, double** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.Random_struct*, %struct.Random_struct** %8, align 8
  %39 = call double* @RandomVector(i32 %37, %struct.Random_struct* %38)
  store double* %39, double** %14, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = call noalias i8* @malloc(i64 %42) #2
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %15, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = call noalias i8* @malloc(i64 %48) #2
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %51 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %51, %struct.Stopwatch_struct** %19, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %53, align 4
  store i32 0, i32* %17, align 4
  br label %54

; <label>:54:                                     ; preds = %97, %4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %100

; <label>:58:                                     ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %58
  store i32 1, i32* %21, align 4
  br label %78

; <label>:78:                                     ; preds = %77, %58
  store i32 0, i32* %22, align 4
  br label %79

; <label>:79:                                     ; preds = %93, %78
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %21, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

; <label>:93:                                     ; preds = %83
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %79

; <label>:96:                                     ; preds = %79
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %54

; <label>:100:                                    ; preds = %54
  br label %101

; <label>:101:                                    ; preds = %100, %115
  %102 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %102)
  %103 = load i32, i32* %5, align 4
  %104 = load double*, double** %10, align 8
  %105 = load double*, double** %14, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = load double*, double** %9, align 8
  %109 = load i32, i32* %18, align 4
  %110 = mul nsw i32 %109, 64
  call void @SparseCompRow_matmult(i32 %103, double* %104, double* %105, i32* %106, i32* %107, double* %108, i32 %110)
  %111 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %111)
  %112 = load i32, i32* %18, align 4
  %113 = icmp sgt i32 %112, 4096
  br i1 %113, label %114, label %115

; <label>:114:                                    ; preds = %101
  br label %118

; <label>:115:                                    ; preds = %101
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %116, 2
  store i32 %117, i32* %18, align 4
  br label %101

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call double @SparseCompRow_num_flops(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  %124 = call double @Stopwatch_read(%struct.Stopwatch_struct* %123)
  %125 = fdiv double %122, %124
  %126 = fmul double %125, 0x3EB0C6F7A0B5ED8D
  store double %126, double* %11, align 8
  %127 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %127)
  %128 = load i32*, i32** %16, align 8
  %129 = bitcast i32* %128 to i8*
  call void @free(i8* %129) #2
  %130 = load i32*, i32** %15, align 8
  %131 = bitcast i32* %130 to i8*
  call void @free(i8* %131) #2
  %132 = load double*, double** %14, align 8
  %133 = bitcast double* %132 to i8*
  call void @free(i8* %133) #2
  %134 = load double*, double** %10, align 8
  %135 = bitcast double* %134 to i8*
  call void @free(i8* %135) #2
  %136 = load double*, double** %9, align 8
  %137 = bitcast double* %136 to i8*
  call void @free(i8* %137) #2
  %138 = load double, double* %11, align 8
  ret double %138
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
