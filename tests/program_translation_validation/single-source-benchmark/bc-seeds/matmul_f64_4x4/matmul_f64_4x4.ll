; ModuleID = 'matmul_f64_4x4/matmul_f64_4x4.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.A = internal constant [4 x [4 x double]] [[4 x double] [double 4.500000e+00, double 1.300000e+00, double 6.000000e+00, double 4.100000e+00], [4 x double] [double 2.500000e+00, double 7.200000e+00, double 7.700000e+00, double 1.700000e+00], [4 x double] [double 6.700000e+00, double 1.300000e+00, double 9.400000e+00, double 1.300000e+00], [4 x double] [double 1.100000e+00, double 2.200000e+00, double 3.000000e+00, double 2.100000e+00]], align 16
@main.B = internal constant [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 7.900000e+00, double 5.100000e+00, double 3.400000e+00], [4 x double] [double 6.600000e+00, double 2.800000e+00, double 5.400000e+00, double 9.200000e+00], [4 x double] [double 5.000000e+00, double 4.100000e+00, double 4.100000e+00, double 9.900000e+00], [4 x double] [double 8.400000e+00, double 3.700000e+00, double 9.500000e+00, double 6.400000e+00]], align 16
@.str = private unnamed_addr constant [6 x i8] c"%8.2f\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define void @wrap_mul4(double* %Out, [4 x double]* %A, [4 x double]* %B) #0 {
entry:
  %Out.addr = alloca double*, align 8
  %A.addr = alloca [4 x double]*, align 8
  %B.addr = alloca [4 x double]*, align 8
  store double* %Out, double** %Out.addr, align 8
  store [4 x double]* %A, [4 x double]** %A.addr, align 8
  store [4 x double]* %B, [4 x double]** %B.addr, align 8
  %0 = load double*, double** %Out.addr, align 8
  %1 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %2 = load [4 x double]*, [4 x double]** %B.addr, align 8
  call void @mul4(double* %0, [4 x double]* %1, [4 x double]* %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mul4(double* %Out, [4 x double]* %A, [4 x double]* %B) #0 {
entry:
  %Out.addr = alloca double*, align 8
  %A.addr = alloca [4 x double]*, align 8
  %B.addr = alloca [4 x double]*, align 8
  %n = alloca i32, align 4
  %Res = alloca [16 x double], align 16
  store double* %Out, double** %Out.addr, align 8
  store [4 x double]* %A, [4 x double]** %A.addr, align 8
  store [4 x double]* %B, [4 x double]** %B.addr, align 8
  %0 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx2 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx2, i64 0, i64 0
  %3 = load double, double* %arrayidx3, align 8
  %mul = fmul double %1, %3
  %4 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx4, i64 0, i64 1
  %5 = load double, double* %arrayidx5, align 8
  %6 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 1
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx6, i64 0, i64 0
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %add = fadd double %mul, %mul8
  %8 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 0
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx9, i64 0, i64 2
  %9 = load double, double* %arrayidx10, align 8
  %10 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx11 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 2
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx11, i64 0, i64 0
  %11 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %9, %11
  %add14 = fadd double %add, %mul13
  %12 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx15, i64 0, i64 3
  %13 = load double, double* %arrayidx16, align 8
  %14 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 3
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx17, i64 0, i64 0
  %15 = load double, double* %arrayidx18, align 8
  %mul19 = fmul double %13, %15
  %add20 = fadd double %add14, %mul19
  %arrayidx21 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 0
  store double %add20, double* %arrayidx21, align 16
  %16 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0
  %arrayidx23 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx22, i64 0, i64 0
  %17 = load double, double* %arrayidx23, align 8
  %18 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx24, i64 0, i64 1
  %19 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %17, %19
  %20 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 0
  %arrayidx28 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx27, i64 0, i64 1
  %21 = load double, double* %arrayidx28, align 8
  %22 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx29 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 1
  %arrayidx30 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx29, i64 0, i64 1
  %23 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %21, %23
  %add32 = fadd double %mul26, %mul31
  %24 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx33 = getelementptr inbounds [4 x double], [4 x double]* %24, i64 0
  %arrayidx34 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx33, i64 0, i64 2
  %25 = load double, double* %arrayidx34, align 8
  %26 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx35 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 2
  %arrayidx36 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx35, i64 0, i64 1
  %27 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %25, %27
  %add38 = fadd double %add32, %mul37
  %28 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx39 = getelementptr inbounds [4 x double], [4 x double]* %28, i64 0
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx39, i64 0, i64 3
  %29 = load double, double* %arrayidx40, align 8
  %30 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx41 = getelementptr inbounds [4 x double], [4 x double]* %30, i64 3
  %arrayidx42 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx41, i64 0, i64 1
  %31 = load double, double* %arrayidx42, align 8
  %mul43 = fmul double %29, %31
  %add44 = fadd double %add38, %mul43
  %arrayidx45 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 1
  store double %add44, double* %arrayidx45, align 8
  %32 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx46 = getelementptr inbounds [4 x double], [4 x double]* %32, i64 0
  %arrayidx47 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx46, i64 0, i64 0
  %33 = load double, double* %arrayidx47, align 8
  %34 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx48 = getelementptr inbounds [4 x double], [4 x double]* %34, i64 0
  %arrayidx49 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx48, i64 0, i64 2
  %35 = load double, double* %arrayidx49, align 8
  %mul50 = fmul double %33, %35
  %36 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx51 = getelementptr inbounds [4 x double], [4 x double]* %36, i64 0
  %arrayidx52 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx51, i64 0, i64 1
  %37 = load double, double* %arrayidx52, align 8
  %38 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx53 = getelementptr inbounds [4 x double], [4 x double]* %38, i64 1
  %arrayidx54 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx53, i64 0, i64 2
  %39 = load double, double* %arrayidx54, align 8
  %mul55 = fmul double %37, %39
  %add56 = fadd double %mul50, %mul55
  %40 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx57 = getelementptr inbounds [4 x double], [4 x double]* %40, i64 0
  %arrayidx58 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx57, i64 0, i64 2
  %41 = load double, double* %arrayidx58, align 8
  %42 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %42, i64 2
  %arrayidx60 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx59, i64 0, i64 2
  %43 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %41, %43
  %add62 = fadd double %add56, %mul61
  %44 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx63 = getelementptr inbounds [4 x double], [4 x double]* %44, i64 0
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx63, i64 0, i64 3
  %45 = load double, double* %arrayidx64, align 8
  %46 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx65 = getelementptr inbounds [4 x double], [4 x double]* %46, i64 3
  %arrayidx66 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx65, i64 0, i64 2
  %47 = load double, double* %arrayidx66, align 8
  %mul67 = fmul double %45, %47
  %add68 = fadd double %add62, %mul67
  %arrayidx69 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 2
  store double %add68, double* %arrayidx69, align 16
  %48 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 0
  %arrayidx71 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx70, i64 0, i64 0
  %49 = load double, double* %arrayidx71, align 8
  %50 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx72 = getelementptr inbounds [4 x double], [4 x double]* %50, i64 0
  %arrayidx73 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx72, i64 0, i64 3
  %51 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double %49, %51
  %52 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx75 = getelementptr inbounds [4 x double], [4 x double]* %52, i64 0
  %arrayidx76 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx75, i64 0, i64 1
  %53 = load double, double* %arrayidx76, align 8
  %54 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx77 = getelementptr inbounds [4 x double], [4 x double]* %54, i64 1
  %arrayidx78 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx77, i64 0, i64 3
  %55 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %53, %55
  %add80 = fadd double %mul74, %mul79
  %56 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx81 = getelementptr inbounds [4 x double], [4 x double]* %56, i64 0
  %arrayidx82 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx81, i64 0, i64 2
  %57 = load double, double* %arrayidx82, align 8
  %58 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx83 = getelementptr inbounds [4 x double], [4 x double]* %58, i64 2
  %arrayidx84 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx83, i64 0, i64 3
  %59 = load double, double* %arrayidx84, align 8
  %mul85 = fmul double %57, %59
  %add86 = fadd double %add80, %mul85
  %60 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx87 = getelementptr inbounds [4 x double], [4 x double]* %60, i64 0
  %arrayidx88 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx87, i64 0, i64 3
  %61 = load double, double* %arrayidx88, align 8
  %62 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx89 = getelementptr inbounds [4 x double], [4 x double]* %62, i64 3
  %arrayidx90 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx89, i64 0, i64 3
  %63 = load double, double* %arrayidx90, align 8
  %mul91 = fmul double %61, %63
  %add92 = fadd double %add86, %mul91
  %arrayidx93 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 3
  store double %add92, double* %arrayidx93, align 8
  %64 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx94 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 1
  %arrayidx95 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx94, i64 0, i64 0
  %65 = load double, double* %arrayidx95, align 8
  %66 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx96 = getelementptr inbounds [4 x double], [4 x double]* %66, i64 0
  %arrayidx97 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx96, i64 0, i64 0
  %67 = load double, double* %arrayidx97, align 8
  %mul98 = fmul double %65, %67
  %68 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx99 = getelementptr inbounds [4 x double], [4 x double]* %68, i64 1
  %arrayidx100 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx99, i64 0, i64 1
  %69 = load double, double* %arrayidx100, align 8
  %70 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx101 = getelementptr inbounds [4 x double], [4 x double]* %70, i64 1
  %arrayidx102 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx101, i64 0, i64 0
  %71 = load double, double* %arrayidx102, align 8
  %mul103 = fmul double %69, %71
  %add104 = fadd double %mul98, %mul103
  %72 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx105 = getelementptr inbounds [4 x double], [4 x double]* %72, i64 1
  %arrayidx106 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx105, i64 0, i64 2
  %73 = load double, double* %arrayidx106, align 8
  %74 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx107 = getelementptr inbounds [4 x double], [4 x double]* %74, i64 2
  %arrayidx108 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx107, i64 0, i64 0
  %75 = load double, double* %arrayidx108, align 8
  %mul109 = fmul double %73, %75
  %add110 = fadd double %add104, %mul109
  %76 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx111 = getelementptr inbounds [4 x double], [4 x double]* %76, i64 1
  %arrayidx112 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx111, i64 0, i64 3
  %77 = load double, double* %arrayidx112, align 8
  %78 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx113 = getelementptr inbounds [4 x double], [4 x double]* %78, i64 3
  %arrayidx114 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx113, i64 0, i64 0
  %79 = load double, double* %arrayidx114, align 8
  %mul115 = fmul double %77, %79
  %add116 = fadd double %add110, %mul115
  %arrayidx117 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 4
  store double %add116, double* %arrayidx117, align 16
  %80 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx118 = getelementptr inbounds [4 x double], [4 x double]* %80, i64 1
  %arrayidx119 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx118, i64 0, i64 0
  %81 = load double, double* %arrayidx119, align 8
  %82 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx120 = getelementptr inbounds [4 x double], [4 x double]* %82, i64 0
  %arrayidx121 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx120, i64 0, i64 1
  %83 = load double, double* %arrayidx121, align 8
  %mul122 = fmul double %81, %83
  %84 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx123 = getelementptr inbounds [4 x double], [4 x double]* %84, i64 1
  %arrayidx124 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx123, i64 0, i64 1
  %85 = load double, double* %arrayidx124, align 8
  %86 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx125 = getelementptr inbounds [4 x double], [4 x double]* %86, i64 1
  %arrayidx126 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx125, i64 0, i64 1
  %87 = load double, double* %arrayidx126, align 8
  %mul127 = fmul double %85, %87
  %add128 = fadd double %mul122, %mul127
  %88 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx129 = getelementptr inbounds [4 x double], [4 x double]* %88, i64 1
  %arrayidx130 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx129, i64 0, i64 2
  %89 = load double, double* %arrayidx130, align 8
  %90 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx131 = getelementptr inbounds [4 x double], [4 x double]* %90, i64 2
  %arrayidx132 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx131, i64 0, i64 1
  %91 = load double, double* %arrayidx132, align 8
  %mul133 = fmul double %89, %91
  %add134 = fadd double %add128, %mul133
  %92 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx135 = getelementptr inbounds [4 x double], [4 x double]* %92, i64 1
  %arrayidx136 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx135, i64 0, i64 3
  %93 = load double, double* %arrayidx136, align 8
  %94 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx137 = getelementptr inbounds [4 x double], [4 x double]* %94, i64 3
  %arrayidx138 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx137, i64 0, i64 1
  %95 = load double, double* %arrayidx138, align 8
  %mul139 = fmul double %93, %95
  %add140 = fadd double %add134, %mul139
  %arrayidx141 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 5
  store double %add140, double* %arrayidx141, align 8
  %96 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx142 = getelementptr inbounds [4 x double], [4 x double]* %96, i64 1
  %arrayidx143 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx142, i64 0, i64 0
  %97 = load double, double* %arrayidx143, align 8
  %98 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx144 = getelementptr inbounds [4 x double], [4 x double]* %98, i64 0
  %arrayidx145 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx144, i64 0, i64 2
  %99 = load double, double* %arrayidx145, align 8
  %mul146 = fmul double %97, %99
  %100 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx147 = getelementptr inbounds [4 x double], [4 x double]* %100, i64 1
  %arrayidx148 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx147, i64 0, i64 1
  %101 = load double, double* %arrayidx148, align 8
  %102 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx149 = getelementptr inbounds [4 x double], [4 x double]* %102, i64 1
  %arrayidx150 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx149, i64 0, i64 2
  %103 = load double, double* %arrayidx150, align 8
  %mul151 = fmul double %101, %103
  %add152 = fadd double %mul146, %mul151
  %104 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx153 = getelementptr inbounds [4 x double], [4 x double]* %104, i64 1
  %arrayidx154 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx153, i64 0, i64 2
  %105 = load double, double* %arrayidx154, align 8
  %106 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx155 = getelementptr inbounds [4 x double], [4 x double]* %106, i64 2
  %arrayidx156 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx155, i64 0, i64 2
  %107 = load double, double* %arrayidx156, align 8
  %mul157 = fmul double %105, %107
  %add158 = fadd double %add152, %mul157
  %108 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx159 = getelementptr inbounds [4 x double], [4 x double]* %108, i64 1
  %arrayidx160 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx159, i64 0, i64 3
  %109 = load double, double* %arrayidx160, align 8
  %110 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx161 = getelementptr inbounds [4 x double], [4 x double]* %110, i64 3
  %arrayidx162 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx161, i64 0, i64 2
  %111 = load double, double* %arrayidx162, align 8
  %mul163 = fmul double %109, %111
  %add164 = fadd double %add158, %mul163
  %arrayidx165 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 6
  store double %add164, double* %arrayidx165, align 16
  %112 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx166 = getelementptr inbounds [4 x double], [4 x double]* %112, i64 1
  %arrayidx167 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx166, i64 0, i64 0
  %113 = load double, double* %arrayidx167, align 8
  %114 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx168 = getelementptr inbounds [4 x double], [4 x double]* %114, i64 0
  %arrayidx169 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx168, i64 0, i64 3
  %115 = load double, double* %arrayidx169, align 8
  %mul170 = fmul double %113, %115
  %116 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx171 = getelementptr inbounds [4 x double], [4 x double]* %116, i64 1
  %arrayidx172 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx171, i64 0, i64 1
  %117 = load double, double* %arrayidx172, align 8
  %118 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx173 = getelementptr inbounds [4 x double], [4 x double]* %118, i64 1
  %arrayidx174 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx173, i64 0, i64 3
  %119 = load double, double* %arrayidx174, align 8
  %mul175 = fmul double %117, %119
  %add176 = fadd double %mul170, %mul175
  %120 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx177 = getelementptr inbounds [4 x double], [4 x double]* %120, i64 1
  %arrayidx178 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx177, i64 0, i64 2
  %121 = load double, double* %arrayidx178, align 8
  %122 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx179 = getelementptr inbounds [4 x double], [4 x double]* %122, i64 2
  %arrayidx180 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx179, i64 0, i64 3
  %123 = load double, double* %arrayidx180, align 8
  %mul181 = fmul double %121, %123
  %add182 = fadd double %add176, %mul181
  %124 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx183 = getelementptr inbounds [4 x double], [4 x double]* %124, i64 1
  %arrayidx184 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx183, i64 0, i64 3
  %125 = load double, double* %arrayidx184, align 8
  %126 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx185 = getelementptr inbounds [4 x double], [4 x double]* %126, i64 3
  %arrayidx186 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx185, i64 0, i64 3
  %127 = load double, double* %arrayidx186, align 8
  %mul187 = fmul double %125, %127
  %add188 = fadd double %add182, %mul187
  %arrayidx189 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 7
  store double %add188, double* %arrayidx189, align 8
  %128 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx190 = getelementptr inbounds [4 x double], [4 x double]* %128, i64 2
  %arrayidx191 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx190, i64 0, i64 0
  %129 = load double, double* %arrayidx191, align 8
  %130 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx192 = getelementptr inbounds [4 x double], [4 x double]* %130, i64 0
  %arrayidx193 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx192, i64 0, i64 0
  %131 = load double, double* %arrayidx193, align 8
  %mul194 = fmul double %129, %131
  %132 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx195 = getelementptr inbounds [4 x double], [4 x double]* %132, i64 2
  %arrayidx196 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx195, i64 0, i64 1
  %133 = load double, double* %arrayidx196, align 8
  %134 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx197 = getelementptr inbounds [4 x double], [4 x double]* %134, i64 1
  %arrayidx198 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx197, i64 0, i64 0
  %135 = load double, double* %arrayidx198, align 8
  %mul199 = fmul double %133, %135
  %add200 = fadd double %mul194, %mul199
  %136 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx201 = getelementptr inbounds [4 x double], [4 x double]* %136, i64 2
  %arrayidx202 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx201, i64 0, i64 2
  %137 = load double, double* %arrayidx202, align 8
  %138 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx203 = getelementptr inbounds [4 x double], [4 x double]* %138, i64 2
  %arrayidx204 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx203, i64 0, i64 0
  %139 = load double, double* %arrayidx204, align 8
  %mul205 = fmul double %137, %139
  %add206 = fadd double %add200, %mul205
  %140 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx207 = getelementptr inbounds [4 x double], [4 x double]* %140, i64 2
  %arrayidx208 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx207, i64 0, i64 3
  %141 = load double, double* %arrayidx208, align 8
  %142 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx209 = getelementptr inbounds [4 x double], [4 x double]* %142, i64 3
  %arrayidx210 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx209, i64 0, i64 0
  %143 = load double, double* %arrayidx210, align 8
  %mul211 = fmul double %141, %143
  %add212 = fadd double %add206, %mul211
  %arrayidx213 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 8
  store double %add212, double* %arrayidx213, align 16
  %144 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx214 = getelementptr inbounds [4 x double], [4 x double]* %144, i64 2
  %arrayidx215 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx214, i64 0, i64 0
  %145 = load double, double* %arrayidx215, align 8
  %146 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx216 = getelementptr inbounds [4 x double], [4 x double]* %146, i64 0
  %arrayidx217 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx216, i64 0, i64 1
  %147 = load double, double* %arrayidx217, align 8
  %mul218 = fmul double %145, %147
  %148 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx219 = getelementptr inbounds [4 x double], [4 x double]* %148, i64 2
  %arrayidx220 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx219, i64 0, i64 1
  %149 = load double, double* %arrayidx220, align 8
  %150 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx221 = getelementptr inbounds [4 x double], [4 x double]* %150, i64 1
  %arrayidx222 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx221, i64 0, i64 1
  %151 = load double, double* %arrayidx222, align 8
  %mul223 = fmul double %149, %151
  %add224 = fadd double %mul218, %mul223
  %152 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx225 = getelementptr inbounds [4 x double], [4 x double]* %152, i64 2
  %arrayidx226 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx225, i64 0, i64 2
  %153 = load double, double* %arrayidx226, align 8
  %154 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx227 = getelementptr inbounds [4 x double], [4 x double]* %154, i64 2
  %arrayidx228 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx227, i64 0, i64 1
  %155 = load double, double* %arrayidx228, align 8
  %mul229 = fmul double %153, %155
  %add230 = fadd double %add224, %mul229
  %156 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx231 = getelementptr inbounds [4 x double], [4 x double]* %156, i64 2
  %arrayidx232 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx231, i64 0, i64 3
  %157 = load double, double* %arrayidx232, align 8
  %158 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx233 = getelementptr inbounds [4 x double], [4 x double]* %158, i64 3
  %arrayidx234 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx233, i64 0, i64 1
  %159 = load double, double* %arrayidx234, align 8
  %mul235 = fmul double %157, %159
  %add236 = fadd double %add230, %mul235
  %arrayidx237 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 9
  store double %add236, double* %arrayidx237, align 8
  %160 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx238 = getelementptr inbounds [4 x double], [4 x double]* %160, i64 2
  %arrayidx239 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx238, i64 0, i64 0
  %161 = load double, double* %arrayidx239, align 8
  %162 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx240 = getelementptr inbounds [4 x double], [4 x double]* %162, i64 0
  %arrayidx241 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx240, i64 0, i64 2
  %163 = load double, double* %arrayidx241, align 8
  %mul242 = fmul double %161, %163
  %164 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx243 = getelementptr inbounds [4 x double], [4 x double]* %164, i64 2
  %arrayidx244 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx243, i64 0, i64 1
  %165 = load double, double* %arrayidx244, align 8
  %166 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx245 = getelementptr inbounds [4 x double], [4 x double]* %166, i64 1
  %arrayidx246 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx245, i64 0, i64 2
  %167 = load double, double* %arrayidx246, align 8
  %mul247 = fmul double %165, %167
  %add248 = fadd double %mul242, %mul247
  %168 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx249 = getelementptr inbounds [4 x double], [4 x double]* %168, i64 2
  %arrayidx250 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx249, i64 0, i64 2
  %169 = load double, double* %arrayidx250, align 8
  %170 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx251 = getelementptr inbounds [4 x double], [4 x double]* %170, i64 2
  %arrayidx252 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx251, i64 0, i64 2
  %171 = load double, double* %arrayidx252, align 8
  %mul253 = fmul double %169, %171
  %add254 = fadd double %add248, %mul253
  %172 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx255 = getelementptr inbounds [4 x double], [4 x double]* %172, i64 2
  %arrayidx256 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx255, i64 0, i64 3
  %173 = load double, double* %arrayidx256, align 8
  %174 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx257 = getelementptr inbounds [4 x double], [4 x double]* %174, i64 3
  %arrayidx258 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx257, i64 0, i64 2
  %175 = load double, double* %arrayidx258, align 8
  %mul259 = fmul double %173, %175
  %add260 = fadd double %add254, %mul259
  %arrayidx261 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 10
  store double %add260, double* %arrayidx261, align 16
  %176 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx262 = getelementptr inbounds [4 x double], [4 x double]* %176, i64 2
  %arrayidx263 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx262, i64 0, i64 0
  %177 = load double, double* %arrayidx263, align 8
  %178 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx264 = getelementptr inbounds [4 x double], [4 x double]* %178, i64 0
  %arrayidx265 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx264, i64 0, i64 3
  %179 = load double, double* %arrayidx265, align 8
  %mul266 = fmul double %177, %179
  %180 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx267 = getelementptr inbounds [4 x double], [4 x double]* %180, i64 2
  %arrayidx268 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx267, i64 0, i64 1
  %181 = load double, double* %arrayidx268, align 8
  %182 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx269 = getelementptr inbounds [4 x double], [4 x double]* %182, i64 1
  %arrayidx270 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx269, i64 0, i64 3
  %183 = load double, double* %arrayidx270, align 8
  %mul271 = fmul double %181, %183
  %add272 = fadd double %mul266, %mul271
  %184 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx273 = getelementptr inbounds [4 x double], [4 x double]* %184, i64 2
  %arrayidx274 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx273, i64 0, i64 2
  %185 = load double, double* %arrayidx274, align 8
  %186 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx275 = getelementptr inbounds [4 x double], [4 x double]* %186, i64 2
  %arrayidx276 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx275, i64 0, i64 3
  %187 = load double, double* %arrayidx276, align 8
  %mul277 = fmul double %185, %187
  %add278 = fadd double %add272, %mul277
  %188 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx279 = getelementptr inbounds [4 x double], [4 x double]* %188, i64 2
  %arrayidx280 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx279, i64 0, i64 3
  %189 = load double, double* %arrayidx280, align 8
  %190 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx281 = getelementptr inbounds [4 x double], [4 x double]* %190, i64 3
  %arrayidx282 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx281, i64 0, i64 3
  %191 = load double, double* %arrayidx282, align 8
  %mul283 = fmul double %189, %191
  %add284 = fadd double %add278, %mul283
  %arrayidx285 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 11
  store double %add284, double* %arrayidx285, align 8
  %192 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx286 = getelementptr inbounds [4 x double], [4 x double]* %192, i64 3
  %arrayidx287 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx286, i64 0, i64 0
  %193 = load double, double* %arrayidx287, align 8
  %194 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx288 = getelementptr inbounds [4 x double], [4 x double]* %194, i64 0
  %arrayidx289 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx288, i64 0, i64 0
  %195 = load double, double* %arrayidx289, align 8
  %mul290 = fmul double %193, %195
  %196 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx291 = getelementptr inbounds [4 x double], [4 x double]* %196, i64 3
  %arrayidx292 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx291, i64 0, i64 1
  %197 = load double, double* %arrayidx292, align 8
  %198 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx293 = getelementptr inbounds [4 x double], [4 x double]* %198, i64 1
  %arrayidx294 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx293, i64 0, i64 0
  %199 = load double, double* %arrayidx294, align 8
  %mul295 = fmul double %197, %199
  %add296 = fadd double %mul290, %mul295
  %200 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx297 = getelementptr inbounds [4 x double], [4 x double]* %200, i64 3
  %arrayidx298 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx297, i64 0, i64 2
  %201 = load double, double* %arrayidx298, align 8
  %202 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx299 = getelementptr inbounds [4 x double], [4 x double]* %202, i64 2
  %arrayidx300 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx299, i64 0, i64 0
  %203 = load double, double* %arrayidx300, align 8
  %mul301 = fmul double %201, %203
  %add302 = fadd double %add296, %mul301
  %204 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx303 = getelementptr inbounds [4 x double], [4 x double]* %204, i64 3
  %arrayidx304 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx303, i64 0, i64 3
  %205 = load double, double* %arrayidx304, align 8
  %206 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx305 = getelementptr inbounds [4 x double], [4 x double]* %206, i64 3
  %arrayidx306 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx305, i64 0, i64 0
  %207 = load double, double* %arrayidx306, align 8
  %mul307 = fmul double %205, %207
  %add308 = fadd double %add302, %mul307
  %arrayidx309 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 12
  store double %add308, double* %arrayidx309, align 16
  %208 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx310 = getelementptr inbounds [4 x double], [4 x double]* %208, i64 3
  %arrayidx311 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx310, i64 0, i64 0
  %209 = load double, double* %arrayidx311, align 8
  %210 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx312 = getelementptr inbounds [4 x double], [4 x double]* %210, i64 0
  %arrayidx313 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx312, i64 0, i64 1
  %211 = load double, double* %arrayidx313, align 8
  %mul314 = fmul double %209, %211
  %212 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx315 = getelementptr inbounds [4 x double], [4 x double]* %212, i64 3
  %arrayidx316 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx315, i64 0, i64 1
  %213 = load double, double* %arrayidx316, align 8
  %214 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx317 = getelementptr inbounds [4 x double], [4 x double]* %214, i64 1
  %arrayidx318 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx317, i64 0, i64 1
  %215 = load double, double* %arrayidx318, align 8
  %mul319 = fmul double %213, %215
  %add320 = fadd double %mul314, %mul319
  %216 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx321 = getelementptr inbounds [4 x double], [4 x double]* %216, i64 3
  %arrayidx322 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx321, i64 0, i64 2
  %217 = load double, double* %arrayidx322, align 8
  %218 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx323 = getelementptr inbounds [4 x double], [4 x double]* %218, i64 2
  %arrayidx324 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx323, i64 0, i64 1
  %219 = load double, double* %arrayidx324, align 8
  %mul325 = fmul double %217, %219
  %add326 = fadd double %add320, %mul325
  %220 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx327 = getelementptr inbounds [4 x double], [4 x double]* %220, i64 3
  %arrayidx328 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx327, i64 0, i64 3
  %221 = load double, double* %arrayidx328, align 8
  %222 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx329 = getelementptr inbounds [4 x double], [4 x double]* %222, i64 3
  %arrayidx330 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx329, i64 0, i64 1
  %223 = load double, double* %arrayidx330, align 8
  %mul331 = fmul double %221, %223
  %add332 = fadd double %add326, %mul331
  %arrayidx333 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 13
  store double %add332, double* %arrayidx333, align 8
  %224 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx334 = getelementptr inbounds [4 x double], [4 x double]* %224, i64 3
  %arrayidx335 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx334, i64 0, i64 0
  %225 = load double, double* %arrayidx335, align 8
  %226 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx336 = getelementptr inbounds [4 x double], [4 x double]* %226, i64 0
  %arrayidx337 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx336, i64 0, i64 2
  %227 = load double, double* %arrayidx337, align 8
  %mul338 = fmul double %225, %227
  %228 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx339 = getelementptr inbounds [4 x double], [4 x double]* %228, i64 3
  %arrayidx340 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx339, i64 0, i64 1
  %229 = load double, double* %arrayidx340, align 8
  %230 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx341 = getelementptr inbounds [4 x double], [4 x double]* %230, i64 1
  %arrayidx342 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx341, i64 0, i64 2
  %231 = load double, double* %arrayidx342, align 8
  %mul343 = fmul double %229, %231
  %add344 = fadd double %mul338, %mul343
  %232 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx345 = getelementptr inbounds [4 x double], [4 x double]* %232, i64 3
  %arrayidx346 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx345, i64 0, i64 2
  %233 = load double, double* %arrayidx346, align 8
  %234 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx347 = getelementptr inbounds [4 x double], [4 x double]* %234, i64 2
  %arrayidx348 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx347, i64 0, i64 2
  %235 = load double, double* %arrayidx348, align 8
  %mul349 = fmul double %233, %235
  %add350 = fadd double %add344, %mul349
  %236 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx351 = getelementptr inbounds [4 x double], [4 x double]* %236, i64 3
  %arrayidx352 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx351, i64 0, i64 3
  %237 = load double, double* %arrayidx352, align 8
  %238 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx353 = getelementptr inbounds [4 x double], [4 x double]* %238, i64 3
  %arrayidx354 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx353, i64 0, i64 2
  %239 = load double, double* %arrayidx354, align 8
  %mul355 = fmul double %237, %239
  %add356 = fadd double %add350, %mul355
  %arrayidx357 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 14
  store double %add356, double* %arrayidx357, align 16
  %240 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx358 = getelementptr inbounds [4 x double], [4 x double]* %240, i64 3
  %arrayidx359 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx358, i64 0, i64 0
  %241 = load double, double* %arrayidx359, align 8
  %242 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx360 = getelementptr inbounds [4 x double], [4 x double]* %242, i64 0
  %arrayidx361 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx360, i64 0, i64 3
  %243 = load double, double* %arrayidx361, align 8
  %mul362 = fmul double %241, %243
  %244 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx363 = getelementptr inbounds [4 x double], [4 x double]* %244, i64 3
  %arrayidx364 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx363, i64 0, i64 1
  %245 = load double, double* %arrayidx364, align 8
  %246 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx365 = getelementptr inbounds [4 x double], [4 x double]* %246, i64 1
  %arrayidx366 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx365, i64 0, i64 3
  %247 = load double, double* %arrayidx366, align 8
  %mul367 = fmul double %245, %247
  %add368 = fadd double %mul362, %mul367
  %248 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx369 = getelementptr inbounds [4 x double], [4 x double]* %248, i64 3
  %arrayidx370 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx369, i64 0, i64 2
  %249 = load double, double* %arrayidx370, align 8
  %250 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx371 = getelementptr inbounds [4 x double], [4 x double]* %250, i64 2
  %arrayidx372 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx371, i64 0, i64 3
  %251 = load double, double* %arrayidx372, align 8
  %mul373 = fmul double %249, %251
  %add374 = fadd double %add368, %mul373
  %252 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %arrayidx375 = getelementptr inbounds [4 x double], [4 x double]* %252, i64 3
  %arrayidx376 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx375, i64 0, i64 3
  %253 = load double, double* %arrayidx376, align 8
  %254 = load [4 x double]*, [4 x double]** %B.addr, align 8
  %arrayidx377 = getelementptr inbounds [4 x double], [4 x double]* %254, i64 3
  %arrayidx378 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx377, i64 0, i64 3
  %255 = load double, double* %arrayidx378, align 8
  %mul379 = fmul double %253, %255
  %add380 = fadd double %add374, %mul379
  %arrayidx381 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 15
  store double %add380, double* %arrayidx381, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %256 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %256, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %257 = load i32, i32* %n, align 4
  %idxprom = zext i32 %257 to i64
  %arrayidx382 = getelementptr inbounds [16 x double], [16 x double]* %Res, i64 0, i64 %idxprom
  %258 = load double, double* %arrayidx382, align 8
  %259 = load double*, double** %Out.addr, align 8
  %260 = load i32, i32* %n, align 4
  %idxprom383 = zext i32 %260 to i64
  %arrayidx384 = getelementptr inbounds double, double* %259, i64 %idxprom383
  store double %258, double* %arrayidx384, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %261 = load i32, i32* %n, align 4
  %inc = add i32 %261, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Iterations = alloca i32, align 4
  %C = alloca [4 x [4 x double]], align 16
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 50000000, i32* %Iterations, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %0, 50000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %C, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 0
  call void @wrap_mul4(double* %arrayidx1, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @main.A, i32 0, i32 0), [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @main.B, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %n, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc15, %for.end
  %2 = load i32, i32* %n, align 4
  %cmp3 = icmp ne i32 %2, 4
  br i1 %cmp3, label %for.body4, label %for.end17

for.body4:                                        ; preds = %for.cond2
  store i32 0, i32* %m, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %for.body4
  %3 = load i32, i32* %m, align 4
  %cmp6 = icmp ne i32 %3, 4
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  %4 = load i32, i32* %n, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %C, i64 0, i64 %idxprom
  %5 = load i32, i32* %m, align 4
  %idxprom9 = zext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx8, i64 0, i64 %idxprom9
  %6 = load double, double* %arrayidx10, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %6)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %7 = load i32, i32* %m, align 4
  %inc12 = add i32 %7, 1
  store i32 %inc12, i32* %m, align 4
  br label %for.cond5

for.end13:                                        ; preds = %for.cond5
  %call14 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc15

for.inc15:                                        ; preds = %for.end13
  %8 = load i32, i32* %n, align 4
  %inc16 = add i32 %8, 1
  store i32 %inc16, i32* %n, align 4
  br label %for.cond2

for.end17:                                        ; preds = %for.cond2
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @puts(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
