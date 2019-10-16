; ModuleID = 'flops-1/flops-1.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A0 = global double 1.000000e+00, align 8
@A1 = global double 0xBFC5555555559705, align 8
@A2 = global double 0x3F811111113AE9A3, align 8
@A3 = global double 0x3F2A01A03FB1CA71, align 8
@A4 = global double 0x3EC71DF284AA3566, align 8
@A5 = global double 0x3E5AEB5A8CF8A426, align 8
@A6 = global double 0x3DE68DF75229C1A6, align 8
@B0 = global double 1.000000e+00, align 8
@B1 = global double 0xBFDFFFFFFFFF8156, align 8
@B2 = global double 0x3FA5555555290224, align 8
@B3 = global double 0xBF56C16BFFE76516, align 8
@B4 = global double 0x3EFA019528242DB7, align 8
@B5 = global double 0xBE927BB3D47DDB8E, align 8
@B6 = global double 0x3E2157B275DF182A, align 8
@C0 = global double 1.000000e+00, align 8
@C1 = global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = global double 0x3FC555587C476915, align 8
@C4 = global double 0x3FA5555B7E795548, align 8
@C5 = global double 0x3F810D9A4AD9120C, align 8
@C6 = global double 0x3F5713187EDB8C05, align 8
@C7 = global double 0x3F26C077C8173F3A, align 8
@C8 = global double 3.931683e-05, align 8
@D1 = global double 0x3FA47AE143138374, align 8
@D2 = global double 9.600000e-04, align 8
@D3 = global double 1.233153e-06, align 8
@E2 = global double 4.800000e-04, align 8
@E3 = global double 4.110510e-07, align 8
@T = common global [36 x double] zeroinitializer, align 16
@TLimit = common global double 0.000000e+00, align 8
@piref = common global double 0.000000e+00, align 8
@one = common global double 0.000000e+00, align 8
@two = common global double 0.000000e+00, align 8
@three = common global double 0.000000e+00, align 8
@four = common global double 0.000000e+00, align 8
@five = common global double 0.000000e+00, align 8
@scale = common global double 0.000000e+00, align 8
@sa = common global double 0.000000e+00, align 8
@sb = common global double 0.000000e+00, align 8
@sc = common global double 0.000000e+00, align 8
@nulltime = common global double 0.000000e+00, align 8
@TimeArray = common global [3 x double] zeroinitializer, align 16
@sd = common global double 0.000000e+00, align 8
@piprg = common global double 0.000000e+00, align 8
@pierr = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %w = alloca double, align 8
  %x = alloca double, align 8
  %loops = alloca i64, align 8
  %NLimit = alloca i64, align 8
  %i = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0))
  store i64 15625, i64* %loops, align 8
  %0 = load i64, i64* %loops, align 8
  %conv = sitofp i64 %0 to double
  %div = fdiv double 1.000000e+06, %conv
  store double %div, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %NLimit, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %1 = load double, double* @one, align 8
  store double %1, double* @scale, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i64, i64* %loops, align 8
  %mul = mul nsw i64 %2, 10000
  store i64 %mul, i64* %n, align 8
  store double 0.000000e+00, double* @sa, align 8
  %3 = load i64, i64* %n, align 8
  %mul4 = mul nsw i64 2, %3
  store i64 %mul4, i64* %n, align 8
  %4 = load double, double* @one, align 8
  %5 = load i64, i64* %n, align 8
  %conv5 = sitofp i64 %5 to double
  %div6 = fdiv double %4, %conv5
  store double %div6, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %6 = load double, double* @one, align 8
  store double %6, double* %w, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %n, align 8
  %sub = sub nsw i64 %8, 1
  %cmp = icmp sle i64 %7, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load double, double* %v, align 8
  %10 = load double, double* %w, align 8
  %add = fadd double %9, %10
  store double %add, double* %v, align 8
  %11 = load double, double* %v, align 8
  %12 = load double, double* %x, align 8
  %mul8 = fmul double %11, %12
  store double %mul8, double* %u, align 8
  %13 = load double, double* %s, align 8
  %14 = load double, double* @D1, align 8
  %15 = load double, double* %u, align 8
  %16 = load double, double* @D2, align 8
  %17 = load double, double* %u, align 8
  %18 = load double, double* @D3, align 8
  %mul9 = fmul double %17, %18
  %add10 = fadd double %16, %mul9
  %mul11 = fmul double %15, %add10
  %add12 = fadd double %14, %mul11
  %19 = load double, double* %w, align 8
  %20 = load double, double* %u, align 8
  %21 = load double, double* @D1, align 8
  %22 = load double, double* %u, align 8
  %23 = load double, double* @E2, align 8
  %24 = load double, double* %u, align 8
  %25 = load double, double* @E3, align 8
  %mul13 = fmul double %24, %25
  %add14 = fadd double %23, %mul13
  %mul15 = fmul double %22, %add14
  %add16 = fadd double %21, %mul15
  %mul17 = fmul double %20, %add16
  %add18 = fadd double %19, %mul17
  %div19 = fdiv double %add12, %add18
  %add20 = fadd double %13, %div19
  store double %add20, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i64, i64* %i, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load double, double* @D1, align 8
  %28 = load double, double* @D2, align 8
  %add21 = fadd double %27, %28
  %29 = load double, double* @D3, align 8
  %add22 = fadd double %add21, %29
  %30 = load double, double* @one, align 8
  %31 = load double, double* @D1, align 8
  %add23 = fadd double %30, %31
  %32 = load double, double* @E2, align 8
  %add24 = fadd double %add23, %32
  %33 = load double, double* @E3, align 8
  %add25 = fadd double %add24, %33
  %div26 = fdiv double %add22, %add25
  store double %div26, double* @sa, align 8
  %34 = load double, double* @D1, align 8
  store double %34, double* @sb, align 8
  %35 = load double, double* %x, align 8
  %36 = load double, double* @sa, align 8
  %37 = load double, double* @sb, align 8
  %add27 = fadd double %36, %37
  %38 = load double, double* @two, align 8
  %39 = load double, double* %s, align 8
  %mul28 = fmul double %38, %39
  %add29 = fadd double %add27, %mul28
  %mul30 = fmul double %35, %add29
  %40 = load double, double* @two, align 8
  %div31 = fdiv double %mul30, %40
  store double %div31, double* @sa, align 8
  %41 = load double, double* @one, align 8
  %42 = load double, double* @sa, align 8
  %div32 = fdiv double %41, %42
  store double %div32, double* @sb, align 8
  %43 = load double, double* @sb, align 8
  %conv33 = fptosi double %43 to i64
  %mul34 = mul nsw i64 40000, %conv33
  %conv35 = sitofp i64 %mul34 to double
  %44 = load double, double* @scale, align 8
  %div36 = fdiv double %conv35, %44
  %conv37 = fptosi double %div36 to i64
  store i64 %conv37, i64* %n, align 8
  %45 = load double, double* @sb, align 8
  %sub38 = fsub double %45, 2.520000e+01
  store double %sub38, double* @sc, align 8
  %46 = load double, double* @sc, align 8
  %mul39 = fmul double %46, 1.000000e-30
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), double %mul39, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
