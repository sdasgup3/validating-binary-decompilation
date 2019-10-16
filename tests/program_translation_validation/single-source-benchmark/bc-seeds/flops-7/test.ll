; ModuleID = 'flops-7/test.bc'
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
@TLimit = common global double 0.000000e+00, align 8
@piref = common global double 0.000000e+00, align 8
@one = common global double 0.000000e+00, align 8
@two = common global double 0.000000e+00, align 8
@three = common global double 0.000000e+00, align 8
@four = common global double 0.000000e+00, align 8
@five = common global double 0.000000e+00, align 8
@scale = common global double 0.000000e+00, align 8
@sa = common global double 0.000000e+00, align 8
@sc = common global double 0.000000e+00, align 8
@nulltime = common global double 0.000000e+00, align 8
@TimeArray = common global [3 x double] zeroinitializer, align 16
@T = common global [36 x double] zeroinitializer, align 16
@sb = common global double 0.000000e+00, align 8
@sd = common global double 0.000000e+00, align 8
@piprg = common global double 0.000000e+00, align 8
@pierr = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1

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
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %NLimit, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %0 = load double, double* @one, align 8
  store double %0, double* @scale, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  %1 = load i64, i64* %loops, align 8
  %mul = mul nsw i64 %1, 10000
  store i64 %mul, i64* %m, align 8
  store double 0.000000e+00, double* %s, align 8
  %2 = load double, double* @one, align 8
  store double %2, double* %w, align 8
  store double 0x40599541F7F192A4, double* @sa, align 8
  %3 = load double, double* @sa, align 8
  %4 = load i64, i64* %m, align 8
  %conv = sitofp i64 %4 to double
  %div = fdiv double %3, %conv
  store double %div, double* %v, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %m, align 8
  %sub = sub nsw i64 %6, 1
  %cmp = icmp sle i64 %5, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %conv5 = sitofp i64 %7 to double
  %8 = load double, double* %v, align 8
  %mul6 = fmul double %conv5, %8
  store double %mul6, double* %x, align 8
  %9 = load double, double* %x, align 8
  %10 = load double, double* %x, align 8
  %mul7 = fmul double %9, %10
  store double %mul7, double* %u, align 8
  %11 = load double, double* %s, align 8
  %12 = load double, double* %w, align 8
  %13 = load double, double* %x, align 8
  %14 = load double, double* %w, align 8
  %add = fadd double %13, %14
  %div8 = fdiv double %12, %add
  %sub9 = fsub double %11, %div8
  %15 = load double, double* %x, align 8
  %16 = load double, double* %u, align 8
  %17 = load double, double* %w, align 8
  %add10 = fadd double %16, %17
  %div11 = fdiv double %15, %add10
  %sub12 = fsub double %sub9, %div11
  %18 = load double, double* %u, align 8
  %19 = load double, double* %x, align 8
  %20 = load double, double* %u, align 8
  %mul13 = fmul double %19, %20
  %21 = load double, double* %w, align 8
  %add14 = fadd double %mul13, %21
  %div15 = fdiv double %18, %add14
  %sub16 = fsub double %sub12, %div15
  store double %sub16, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, i64* %i, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load double, double* @sa, align 8
  store double %23, double* %x, align 8
  %24 = load double, double* %x, align 8
  %25 = load double, double* %x, align 8
  %mul17 = fmul double %24, %25
  store double %mul17, double* %u, align 8
  %26 = load double, double* %w, align 8
  %sub18 = fsub double -0.000000e+00, %26
  %27 = load double, double* %w, align 8
  %28 = load double, double* %x, align 8
  %29 = load double, double* %w, align 8
  %add19 = fadd double %28, %29
  %div20 = fdiv double %27, %add19
  %sub21 = fsub double %sub18, %div20
  %30 = load double, double* %x, align 8
  %31 = load double, double* %u, align 8
  %32 = load double, double* %w, align 8
  %add22 = fadd double %31, %32
  %div23 = fdiv double %30, %add22
  %sub24 = fsub double %sub21, %div23
  %33 = load double, double* %u, align 8
  %34 = load double, double* %x, align 8
  %35 = load double, double* %u, align 8
  %mul25 = fmul double %34, %35
  %36 = load double, double* %w, align 8
  %add26 = fadd double %mul25, %36
  %div27 = fdiv double %33, %add26
  %sub28 = fsub double %sub24, %div27
  store double %sub28, double* @sa, align 8
  %37 = load double, double* %v, align 8
  %mul29 = fmul double 1.800000e+01, %37
  %38 = load double, double* @sa, align 8
  %39 = load double, double* @two, align 8
  %40 = load double, double* %s, align 8
  %mul30 = fmul double %39, %40
  %add31 = fadd double %38, %mul30
  %mul32 = fmul double %mul29, %add31
  store double %mul32, double* @sa, align 8
  %41 = load double, double* @sa, align 8
  %conv33 = fptosi double %41 to i64
  %mul34 = mul nsw i64 -2000, %conv33
  store i64 %mul34, i64* %m, align 8
  %42 = load i64, i64* %m, align 8
  %conv35 = sitofp i64 %42 to double
  %43 = load double, double* @scale, align 8
  %div36 = fdiv double %conv35, %43
  %conv37 = fptosi double %div36 to i64
  store i64 %conv37, i64* %m, align 8
  %44 = load double, double* @sa, align 8
  %add38 = fadd double %44, 5.002000e+02
  store double %add38, double* @sc, align 8
  %45 = load double, double* @sc, align 8
  %mul39 = fmul double %45, 1.000000e-30
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), double %mul39, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
