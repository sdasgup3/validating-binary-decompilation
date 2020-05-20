; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/flops/flops.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

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
@TimeArray = common global [3 x double] zeroinitializer, align 16
@sa = common global double 0.000000e+00, align 8
@nulltime = common global double 0.000000e+00, align 8
@sb = common global double 0.000000e+00, align 8
@sc = common global double 0.000000e+00, align 8
@piprg = common global double 0.000000e+00, align 8
@pierr = common global double 0.000000e+00, align 8
@tnow = common global %struct.timeval zeroinitializer, align 8
@sd = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"   Iterations      = %10ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00", align 1

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
  %call4 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %call5 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %2 = load i64, i64* %loops, align 8
  store i64 %2, i64* %n, align 8
  store double 0.000000e+00, double* @sa, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load double, double* @sa, align 8
  %4 = load double, double* @TLimit, align 8
  %cmp = fcmp olt double %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %n, align 8
  %mul = mul nsw i64 2, %5
  store i64 %mul, i64* %n, align 8
  %6 = load double, double* @one, align 8
  %7 = load i64, i64* %n, align 8
  %conv7 = sitofp i64 %7 to double
  %div8 = fdiv double %6, %conv7
  store double %div8, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %8 = load double, double* @one, align 8
  store double %8, double* %w, align 8
  %call9 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %n, align 8
  %sub = sub nsw i64 %10, 1
  %cmp10 = icmp sle i64 %9, %sub
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load double, double* %v, align 8
  %12 = load double, double* %w, align 8
  %add = fadd double %11, %12
  store double %add, double* %v, align 8
  %13 = load double, double* %v, align 8
  %14 = load double, double* %x, align 8
  %mul12 = fmul double %13, %14
  store double %mul12, double* %u, align 8
  %15 = load double, double* %s, align 8
  %16 = load double, double* @D1, align 8
  %17 = load double, double* %u, align 8
  %18 = load double, double* @D2, align 8
  %19 = load double, double* %u, align 8
  %20 = load double, double* @D3, align 8
  %mul13 = fmul double %19, %20
  %add14 = fadd double %18, %mul13
  %mul15 = fmul double %17, %add14
  %add16 = fadd double %16, %mul15
  %21 = load double, double* %w, align 8
  %22 = load double, double* %u, align 8
  %23 = load double, double* @D1, align 8
  %24 = load double, double* %u, align 8
  %25 = load double, double* @E2, align 8
  %26 = load double, double* %u, align 8
  %27 = load double, double* @E3, align 8
  %mul17 = fmul double %26, %27
  %add18 = fadd double %25, %mul17
  %mul19 = fmul double %24, %add18
  %add20 = fadd double %23, %mul19
  %mul21 = fmul double %22, %add20
  %add22 = fadd double %21, %mul21
  %div23 = fdiv double %add16, %add22
  %add24 = fadd double %15, %div23
  store double %add24, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %inc = add nsw i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call25 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %29 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  store double %29, double* @sa, align 8
  %30 = load i64, i64* %n, align 8
  %31 = load i64, i64* %NLimit, align 8
  %cmp26 = icmp eq i64 %30, %31
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  store double 1.589500e-02, double* @scale, align 8
  %32 = load double, double* @scale, align 8
  store double %32, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %call28 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %while.end
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %n, align 8
  %sub30 = sub nsw i64 %34, 1
  %cmp31 = icmp sle i64 %33, %sub30
  br i1 %cmp31, label %for.body33, label %for.end36

for.body33:                                       ; preds = %for.cond29
  br label %for.inc34

for.inc34:                                        ; preds = %for.body33
  %35 = load i64, i64* %i, align 8
  %inc35 = add nsw i64 %35, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond29

for.end36:                                        ; preds = %for.cond29
  %call37 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %36 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %37 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul38 = fmul double %36, %37
  store double %mul38, double* @nulltime, align 8
  %38 = load double, double* @nulltime, align 8
  %cmp39 = fcmp olt double %38, 0.000000e+00
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end36
  store double 0.000000e+00, double* @nulltime, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.end36
  %39 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %40 = load double, double* @sa, align 8
  %mul43 = fmul double %39, %40
  %41 = load double, double* @nulltime, align 8
  %sub44 = fsub double %mul43, %41
  store double %sub44, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %42 = load double, double* @D1, align 8
  %43 = load double, double* @D2, align 8
  %add45 = fadd double %42, %43
  %44 = load double, double* @D3, align 8
  %add46 = fadd double %add45, %44
  %45 = load double, double* @one, align 8
  %46 = load double, double* @D1, align 8
  %add47 = fadd double %45, %46
  %47 = load double, double* @E2, align 8
  %add48 = fadd double %add47, %47
  %48 = load double, double* @E3, align 8
  %add49 = fadd double %add48, %48
  %div50 = fdiv double %add46, %add49
  store double %div50, double* @sa, align 8
  %49 = load double, double* @D1, align 8
  store double %49, double* @sb, align 8
  %50 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %div51 = fdiv double %50, 1.400000e+01
  store double %div51, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 3), align 8
  %51 = load double, double* %x, align 8
  %52 = load double, double* @sa, align 8
  %53 = load double, double* @sb, align 8
  %add52 = fadd double %52, %53
  %54 = load double, double* @two, align 8
  %55 = load double, double* %s, align 8
  %mul53 = fmul double %54, %55
  %add54 = fadd double %add52, %mul53
  %mul55 = fmul double %51, %add54
  %56 = load double, double* @two, align 8
  %div56 = fdiv double %mul55, %56
  store double %div56, double* @sa, align 8
  %57 = load double, double* @one, align 8
  %58 = load double, double* @sa, align 8
  %div57 = fdiv double %57, %58
  store double %div57, double* @sb, align 8
  %59 = load double, double* @sb, align 8
  %conv58 = fptosi double %59 to i64
  %mul59 = mul nsw i64 40000, %conv58
  %conv60 = sitofp i64 %mul59 to double
  %60 = load double, double* @scale, align 8
  %div61 = fdiv double %conv60, %60
  %conv62 = fptosi double %div61 to i64
  store i64 %conv62, i64* %n, align 8
  %61 = load double, double* @sb, align 8
  %sub63 = fsub double %61, 2.520000e+01
  store double %sub63, double* @sc, align 8
  %62 = load double, double* @one, align 8
  %63 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 3), align 8
  %div64 = fdiv double %62, %63
  store double %div64, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 4), align 16
  %64 = load double, double* @sc, align 8
  %mul65 = fmul double %64, 1.000000e-30
  %65 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %mul66 = fmul double %65, 1.000000e-30
  %66 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 4), align 16
  %mul67 = fmul double %66, 1.000000e-30
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), double %mul65, double %mul66, double %mul67)
  %67 = load i64, i64* %n, align 8
  store i64 %67, i64* %m, align 8
  %68 = load double, double* @five, align 8
  %sub69 = fsub double -0.000000e+00, %68
  store double %sub69, double* %s, align 8
  %69 = load double, double* @one, align 8
  %sub70 = fsub double -0.000000e+00, %69
  store double %sub70, double* @sa, align 8
  %call71 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc78, %if.end42
  %70 = load i64, i64* %i, align 8
  %71 = load i64, i64* %m, align 8
  %cmp73 = icmp sle i64 %70, %71
  br i1 %cmp73, label %for.body75, label %for.end80

for.body75:                                       ; preds = %for.cond72
  %72 = load double, double* %s, align 8
  %sub76 = fsub double -0.000000e+00, %72
  store double %sub76, double* %s, align 8
  %73 = load double, double* @sa, align 8
  %74 = load double, double* %s, align 8
  %add77 = fadd double %73, %74
  store double %add77, double* @sa, align 8
  br label %for.inc78

for.inc78:                                        ; preds = %for.body75
  %75 = load i64, i64* %i, align 8
  %inc79 = add nsw i64 %75, 1
  store i64 %inc79, i64* %i, align 8
  br label %for.cond72

for.end80:                                        ; preds = %for.cond72
  %call81 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %76 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %77 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul82 = fmul double %76, %77
  store double %mul82, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %78 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %cmp83 = fcmp olt double %78, 0.000000e+00
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.end80
  store double 0.000000e+00, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %for.end80
  %79 = load i64, i64* %m, align 8
  %conv87 = sitofp i64 %79 to double
  store double %conv87, double* @sc, align 8
  %80 = load double, double* @sa, align 8
  store double %80, double* %u, align 8
  store double 0.000000e+00, double* %v, align 8
  store double 0.000000e+00, double* %w, align 8
  store double 0.000000e+00, double* %x, align 8
  %call88 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc102, %if.end86
  %81 = load i64, i64* %i, align 8
  %82 = load i64, i64* %m, align 8
  %cmp90 = icmp sle i64 %81, %82
  br i1 %cmp90, label %for.body92, label %for.end104

for.body92:                                       ; preds = %for.cond89
  %83 = load double, double* %s, align 8
  %sub93 = fsub double -0.000000e+00, %83
  store double %sub93, double* %s, align 8
  %84 = load double, double* @sa, align 8
  %85 = load double, double* %s, align 8
  %add94 = fadd double %84, %85
  store double %add94, double* @sa, align 8
  %86 = load double, double* %u, align 8
  %87 = load double, double* @two, align 8
  %add95 = fadd double %86, %87
  store double %add95, double* %u, align 8
  %88 = load double, double* %x, align 8
  %89 = load double, double* %s, align 8
  %90 = load double, double* %u, align 8
  %sub96 = fsub double %89, %90
  %add97 = fadd double %88, %sub96
  store double %add97, double* %x, align 8
  %91 = load double, double* %v, align 8
  %92 = load double, double* %s, align 8
  %93 = load double, double* %u, align 8
  %mul98 = fmul double %92, %93
  %sub99 = fsub double %91, %mul98
  store double %sub99, double* %v, align 8
  %94 = load double, double* %w, align 8
  %95 = load double, double* %s, align 8
  %96 = load double, double* %u, align 8
  %div100 = fdiv double %95, %96
  %add101 = fadd double %94, %div100
  store double %add101, double* %w, align 8
  br label %for.inc102

for.inc102:                                       ; preds = %for.body92
  %97 = load i64, i64* %i, align 8
  %inc103 = add nsw i64 %97, 1
  store i64 %inc103, i64* %i, align 8
  br label %for.cond89

for.end104:                                       ; preds = %for.cond89
  %call105 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %98 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %99 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul106 = fmul double %98, %99
  store double %mul106, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %100 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %101 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub107 = fsub double %100, %101
  %div108 = fdiv double %sub107, 7.000000e+00
  store double %div108, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 7), align 8
  %102 = load double, double* @sa, align 8
  %103 = load double, double* %x, align 8
  %mul109 = fmul double %102, %103
  %104 = load double, double* @sc, align 8
  %div110 = fdiv double %mul109, %104
  %conv111 = fptosi double %div110 to i64
  store i64 %conv111, i64* %m, align 8
  %105 = load double, double* @four, align 8
  %106 = load double, double* %w, align 8
  %mul112 = fmul double %105, %106
  %107 = load double, double* @five, align 8
  %div113 = fdiv double %mul112, %107
  store double %div113, double* @sa, align 8
  %108 = load double, double* @sa, align 8
  %109 = load double, double* @five, align 8
  %110 = load double, double* %v, align 8
  %div114 = fdiv double %109, %110
  %add115 = fadd double %108, %div114
  store double %add115, double* @sb, align 8
  store double 3.125000e+01, double* @sc, align 8
  %111 = load double, double* @sb, align 8
  %112 = load double, double* @sc, align 8
  %113 = load double, double* %v, align 8
  %114 = load double, double* %v, align 8
  %mul116 = fmul double %113, %114
  %115 = load double, double* %v, align 8
  %mul117 = fmul double %mul116, %115
  %div118 = fdiv double %112, %mul117
  %sub119 = fsub double %111, %div118
  store double %sub119, double* @piprg, align 8
  %116 = load double, double* @piprg, align 8
  %117 = load double, double* @piref, align 8
  %sub120 = fsub double %116, %117
  store double %sub120, double* @pierr, align 8
  %118 = load double, double* @one, align 8
  %119 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 7), align 8
  %div121 = fdiv double %118, %119
  store double %div121, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 8), align 16
  %120 = load double, double* @pierr, align 8
  %mul122 = fmul double %120, 1.000000e-30
  %121 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %122 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub123 = fsub double %121, %122
  %mul124 = fmul double %sub123, 1.000000e-30
  %123 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 8), align 16
  %mul125 = fmul double %123, 1.000000e-30
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), double %mul122, double %mul124, double %mul125)
  %124 = load double, double* @piref, align 8
  %125 = load double, double* @three, align 8
  %126 = load i64, i64* %m, align 8
  %conv127 = sitofp i64 %126 to double
  %mul128 = fmul double %125, %conv127
  %div129 = fdiv double %124, %mul128
  store double %div129, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call130 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc153, %for.end104
  %127 = load i64, i64* %i, align 8
  %128 = load i64, i64* %m, align 8
  %sub132 = sub nsw i64 %128, 1
  %cmp133 = icmp sle i64 %127, %sub132
  br i1 %cmp133, label %for.body135, label %for.end155

for.body135:                                      ; preds = %for.cond131
  %129 = load double, double* %v, align 8
  %130 = load double, double* @one, align 8
  %add136 = fadd double %129, %130
  store double %add136, double* %v, align 8
  %131 = load double, double* %v, align 8
  %132 = load double, double* %x, align 8
  %mul137 = fmul double %131, %132
  store double %mul137, double* %u, align 8
  %133 = load double, double* %u, align 8
  %134 = load double, double* %u, align 8
  %mul138 = fmul double %133, %134
  store double %mul138, double* %w, align 8
  %135 = load double, double* %s, align 8
  %136 = load double, double* %u, align 8
  %137 = load double, double* @A6, align 8
  %138 = load double, double* %w, align 8
  %mul139 = fmul double %137, %138
  %139 = load double, double* @A5, align 8
  %sub140 = fsub double %mul139, %139
  %140 = load double, double* %w, align 8
  %mul141 = fmul double %sub140, %140
  %141 = load double, double* @A4, align 8
  %add142 = fadd double %mul141, %141
  %142 = load double, double* %w, align 8
  %mul143 = fmul double %add142, %142
  %143 = load double, double* @A3, align 8
  %sub144 = fsub double %mul143, %143
  %144 = load double, double* %w, align 8
  %mul145 = fmul double %sub144, %144
  %145 = load double, double* @A2, align 8
  %add146 = fadd double %mul145, %145
  %146 = load double, double* %w, align 8
  %mul147 = fmul double %add146, %146
  %147 = load double, double* @A1, align 8
  %add148 = fadd double %mul147, %147
  %148 = load double, double* %w, align 8
  %mul149 = fmul double %add148, %148
  %149 = load double, double* @one, align 8
  %add150 = fadd double %mul149, %149
  %mul151 = fmul double %136, %add150
  %add152 = fadd double %135, %mul151
  store double %add152, double* %s, align 8
  br label %for.inc153

for.inc153:                                       ; preds = %for.body135
  %150 = load i64, i64* %i, align 8
  %inc154 = add nsw i64 %150, 1
  store i64 %inc154, i64* %i, align 8
  br label %for.cond131

for.end155:                                       ; preds = %for.cond131
  %call156 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %151 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %152 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul157 = fmul double %151, %152
  %153 = load double, double* @nulltime, align 8
  %sub158 = fsub double %mul157, %153
  store double %sub158, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %154 = load double, double* @piref, align 8
  %155 = load double, double* @three, align 8
  %div159 = fdiv double %154, %155
  store double %div159, double* %u, align 8
  %156 = load double, double* %u, align 8
  %157 = load double, double* %u, align 8
  %mul160 = fmul double %156, %157
  store double %mul160, double* %w, align 8
  %158 = load double, double* %u, align 8
  %159 = load double, double* @A6, align 8
  %160 = load double, double* %w, align 8
  %mul161 = fmul double %159, %160
  %161 = load double, double* @A5, align 8
  %sub162 = fsub double %mul161, %161
  %162 = load double, double* %w, align 8
  %mul163 = fmul double %sub162, %162
  %163 = load double, double* @A4, align 8
  %add164 = fadd double %mul163, %163
  %164 = load double, double* %w, align 8
  %mul165 = fmul double %add164, %164
  %165 = load double, double* @A3, align 8
  %sub166 = fsub double %mul165, %165
  %166 = load double, double* %w, align 8
  %mul167 = fmul double %sub166, %166
  %167 = load double, double* @A2, align 8
  %add168 = fadd double %mul167, %167
  %168 = load double, double* %w, align 8
  %mul169 = fmul double %add168, %168
  %169 = load double, double* @A1, align 8
  %add170 = fadd double %mul169, %169
  %170 = load double, double* %w, align 8
  %mul171 = fmul double %add170, %170
  %171 = load double, double* @one, align 8
  %add172 = fadd double %mul171, %171
  %mul173 = fmul double %158, %add172
  store double %mul173, double* @sa, align 8
  %172 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %div174 = fdiv double %172, 1.700000e+01
  store double %div174, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 10), align 16
  %173 = load double, double* %x, align 8
  %174 = load double, double* @sa, align 8
  %175 = load double, double* @two, align 8
  %176 = load double, double* %s, align 8
  %mul175 = fmul double %175, %176
  %add176 = fadd double %174, %mul175
  %mul177 = fmul double %173, %add176
  %177 = load double, double* @two, align 8
  %div178 = fdiv double %mul177, %177
  store double %div178, double* @sa, align 8
  store double 5.000000e-01, double* @sb, align 8
  %178 = load double, double* @sa, align 8
  %179 = load double, double* @sb, align 8
  %sub179 = fsub double %178, %179
  store double %sub179, double* @sc, align 8
  %180 = load double, double* @one, align 8
  %181 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 10), align 16
  %div180 = fdiv double %180, %181
  store double %div180, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 11), align 8
  %182 = load double, double* @sc, align 8
  %mul181 = fmul double %182, 1.000000e-30
  %183 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %mul182 = fmul double %183, 1.000000e-30
  %184 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 11), align 8
  %mul183 = fmul double %184, 1.000000e-30
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), double %mul181, double %mul182, double %mul183)
  %185 = load double, double* @A3, align 8
  %sub185 = fsub double -0.000000e+00, %185
  store double %sub185, double* @A3, align 8
  %186 = load double, double* @A5, align 8
  %sub186 = fsub double -0.000000e+00, %186
  store double %sub186, double* @A5, align 8
  %187 = load double, double* @piref, align 8
  %188 = load double, double* @three, align 8
  %189 = load i64, i64* %m, align 8
  %conv187 = sitofp i64 %189 to double
  %mul188 = fmul double %188, %conv187
  %div189 = fdiv double %187, %mul188
  store double %div189, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call190 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc212, %for.end155
  %190 = load i64, i64* %i, align 8
  %191 = load i64, i64* %m, align 8
  %sub192 = sub nsw i64 %191, 1
  %cmp193 = icmp sle i64 %190, %sub192
  br i1 %cmp193, label %for.body195, label %for.end214

for.body195:                                      ; preds = %for.cond191
  %192 = load i64, i64* %i, align 8
  %conv196 = sitofp i64 %192 to double
  %193 = load double, double* %x, align 8
  %mul197 = fmul double %conv196, %193
  store double %mul197, double* %u, align 8
  %194 = load double, double* %u, align 8
  %195 = load double, double* %u, align 8
  %mul198 = fmul double %194, %195
  store double %mul198, double* %w, align 8
  %196 = load double, double* %s, align 8
  %197 = load double, double* %w, align 8
  %198 = load double, double* %w, align 8
  %199 = load double, double* %w, align 8
  %200 = load double, double* %w, align 8
  %201 = load double, double* %w, align 8
  %202 = load double, double* @B6, align 8
  %203 = load double, double* %w, align 8
  %mul199 = fmul double %202, %203
  %204 = load double, double* @B5, align 8
  %add200 = fadd double %mul199, %204
  %mul201 = fmul double %201, %add200
  %205 = load double, double* @B4, align 8
  %add202 = fadd double %mul201, %205
  %mul203 = fmul double %200, %add202
  %206 = load double, double* @B3, align 8
  %add204 = fadd double %mul203, %206
  %mul205 = fmul double %199, %add204
  %207 = load double, double* @B2, align 8
  %add206 = fadd double %mul205, %207
  %mul207 = fmul double %198, %add206
  %208 = load double, double* @B1, align 8
  %add208 = fadd double %mul207, %208
  %mul209 = fmul double %197, %add208
  %add210 = fadd double %196, %mul209
  %209 = load double, double* @one, align 8
  %add211 = fadd double %add210, %209
  store double %add211, double* %s, align 8
  br label %for.inc212

for.inc212:                                       ; preds = %for.body195
  %210 = load i64, i64* %i, align 8
  %inc213 = add nsw i64 %210, 1
  store i64 %inc213, i64* %i, align 8
  br label %for.cond191

for.end214:                                       ; preds = %for.cond191
  %call215 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %211 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %212 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul216 = fmul double %211, %212
  %213 = load double, double* @nulltime, align 8
  %sub217 = fsub double %mul216, %213
  store double %sub217, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %214 = load double, double* @piref, align 8
  %215 = load double, double* @three, align 8
  %div218 = fdiv double %214, %215
  store double %div218, double* %u, align 8
  %216 = load double, double* %u, align 8
  %217 = load double, double* %u, align 8
  %mul219 = fmul double %216, %217
  store double %mul219, double* %w, align 8
  %218 = load double, double* %w, align 8
  %219 = load double, double* %w, align 8
  %220 = load double, double* %w, align 8
  %221 = load double, double* %w, align 8
  %222 = load double, double* %w, align 8
  %223 = load double, double* @B6, align 8
  %224 = load double, double* %w, align 8
  %mul220 = fmul double %223, %224
  %225 = load double, double* @B5, align 8
  %add221 = fadd double %mul220, %225
  %mul222 = fmul double %222, %add221
  %226 = load double, double* @B4, align 8
  %add223 = fadd double %mul222, %226
  %mul224 = fmul double %221, %add223
  %227 = load double, double* @B3, align 8
  %add225 = fadd double %mul224, %227
  %mul226 = fmul double %220, %add225
  %228 = load double, double* @B2, align 8
  %add227 = fadd double %mul226, %228
  %mul228 = fmul double %219, %add227
  %229 = load double, double* @B1, align 8
  %add229 = fadd double %mul228, %229
  %mul230 = fmul double %218, %add229
  %230 = load double, double* @one, align 8
  %add231 = fadd double %mul230, %230
  store double %add231, double* @sa, align 8
  %231 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %div232 = fdiv double %231, 1.500000e+01
  store double %div232, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 13), align 8
  %232 = load double, double* %x, align 8
  %233 = load double, double* @sa, align 8
  %234 = load double, double* @one, align 8
  %add233 = fadd double %233, %234
  %235 = load double, double* @two, align 8
  %236 = load double, double* %s, align 8
  %mul234 = fmul double %235, %236
  %add235 = fadd double %add233, %mul234
  %mul236 = fmul double %232, %add235
  %237 = load double, double* @two, align 8
  %div237 = fdiv double %mul236, %237
  store double %div237, double* @sa, align 8
  %238 = load double, double* @piref, align 8
  %239 = load double, double* @three, align 8
  %div238 = fdiv double %238, %239
  store double %div238, double* %u, align 8
  %240 = load double, double* %u, align 8
  %241 = load double, double* %u, align 8
  %mul239 = fmul double %240, %241
  store double %mul239, double* %w, align 8
  %242 = load double, double* %u, align 8
  %243 = load double, double* @A6, align 8
  %244 = load double, double* %w, align 8
  %mul240 = fmul double %243, %244
  %245 = load double, double* @A5, align 8
  %add241 = fadd double %mul240, %245
  %246 = load double, double* %w, align 8
  %mul242 = fmul double %add241, %246
  %247 = load double, double* @A4, align 8
  %add243 = fadd double %mul242, %247
  %248 = load double, double* %w, align 8
  %mul244 = fmul double %add243, %248
  %249 = load double, double* @A3, align 8
  %add245 = fadd double %mul244, %249
  %250 = load double, double* %w, align 8
  %mul246 = fmul double %add245, %250
  %251 = load double, double* @A2, align 8
  %add247 = fadd double %mul246, %251
  %252 = load double, double* %w, align 8
  %mul248 = fmul double %add247, %252
  %253 = load double, double* @A1, align 8
  %add249 = fadd double %mul248, %253
  %254 = load double, double* %w, align 8
  %mul250 = fmul double %add249, %254
  %255 = load double, double* @A0, align 8
  %add251 = fadd double %mul250, %255
  %mul252 = fmul double %242, %add251
  store double %mul252, double* @sb, align 8
  %256 = load double, double* @sa, align 8
  %257 = load double, double* @sb, align 8
  %sub253 = fsub double %256, %257
  store double %sub253, double* @sc, align 8
  %258 = load double, double* @one, align 8
  %259 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 13), align 8
  %div254 = fdiv double %258, %259
  store double %div254, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 14), align 16
  %260 = load double, double* @sc, align 8
  %mul255 = fmul double %260, 1.000000e-30
  %261 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %mul256 = fmul double %261, 1.000000e-30
  %262 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 14), align 16
  %mul257 = fmul double %262, 1.000000e-30
  %call258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), double %mul255, double %mul256, double %mul257)
  %263 = load double, double* @piref, align 8
  %264 = load double, double* @three, align 8
  %265 = load i64, i64* %m, align 8
  %conv259 = sitofp i64 %265 to double
  %mul260 = fmul double %264, %conv259
  %div261 = fdiv double %263, %mul260
  store double %div261, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call262 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc298, %for.end214
  %266 = load i64, i64* %i, align 8
  %267 = load i64, i64* %m, align 8
  %sub264 = sub nsw i64 %267, 1
  %cmp265 = icmp sle i64 %266, %sub264
  br i1 %cmp265, label %for.body267, label %for.end300

for.body267:                                      ; preds = %for.cond263
  %268 = load i64, i64* %i, align 8
  %conv268 = sitofp i64 %268 to double
  %269 = load double, double* %x, align 8
  %mul269 = fmul double %conv268, %269
  store double %mul269, double* %u, align 8
  %270 = load double, double* %u, align 8
  %271 = load double, double* %u, align 8
  %mul270 = fmul double %270, %271
  store double %mul270, double* %w, align 8
  %272 = load double, double* %u, align 8
  %273 = load double, double* @A6, align 8
  %274 = load double, double* %w, align 8
  %mul271 = fmul double %273, %274
  %275 = load double, double* @A5, align 8
  %add272 = fadd double %mul271, %275
  %276 = load double, double* %w, align 8
  %mul273 = fmul double %add272, %276
  %277 = load double, double* @A4, align 8
  %add274 = fadd double %mul273, %277
  %278 = load double, double* %w, align 8
  %mul275 = fmul double %add274, %278
  %279 = load double, double* @A3, align 8
  %add276 = fadd double %mul275, %279
  %280 = load double, double* %w, align 8
  %mul277 = fmul double %add276, %280
  %281 = load double, double* @A2, align 8
  %add278 = fadd double %mul277, %281
  %282 = load double, double* %w, align 8
  %mul279 = fmul double %add278, %282
  %283 = load double, double* @A1, align 8
  %add280 = fadd double %mul279, %283
  %284 = load double, double* %w, align 8
  %mul281 = fmul double %add280, %284
  %285 = load double, double* @one, align 8
  %add282 = fadd double %mul281, %285
  %mul283 = fmul double %272, %add282
  store double %mul283, double* %v, align 8
  %286 = load double, double* %s, align 8
  %287 = load double, double* %v, align 8
  %288 = load double, double* %w, align 8
  %289 = load double, double* %w, align 8
  %290 = load double, double* %w, align 8
  %291 = load double, double* %w, align 8
  %292 = load double, double* %w, align 8
  %293 = load double, double* @B6, align 8
  %294 = load double, double* %w, align 8
  %mul284 = fmul double %293, %294
  %295 = load double, double* @B5, align 8
  %add285 = fadd double %mul284, %295
  %mul286 = fmul double %292, %add285
  %296 = load double, double* @B4, align 8
  %add287 = fadd double %mul286, %296
  %mul288 = fmul double %291, %add287
  %297 = load double, double* @B3, align 8
  %add289 = fadd double %mul288, %297
  %mul290 = fmul double %290, %add289
  %298 = load double, double* @B2, align 8
  %add291 = fadd double %mul290, %298
  %mul292 = fmul double %289, %add291
  %299 = load double, double* @B1, align 8
  %add293 = fadd double %mul292, %299
  %mul294 = fmul double %288, %add293
  %300 = load double, double* @one, align 8
  %add295 = fadd double %mul294, %300
  %div296 = fdiv double %287, %add295
  %add297 = fadd double %286, %div296
  store double %add297, double* %s, align 8
  br label %for.inc298

for.inc298:                                       ; preds = %for.body267
  %301 = load i64, i64* %i, align 8
  %inc299 = add nsw i64 %301, 1
  store i64 %inc299, i64* %i, align 8
  br label %for.cond263

for.end300:                                       ; preds = %for.cond263
  %call301 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %302 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %303 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul302 = fmul double %302, %303
  %304 = load double, double* @nulltime, align 8
  %sub303 = fsub double %mul302, %304
  store double %sub303, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %305 = load double, double* @piref, align 8
  %306 = load double, double* @three, align 8
  %div304 = fdiv double %305, %306
  store double %div304, double* %u, align 8
  %307 = load double, double* %u, align 8
  %308 = load double, double* %u, align 8
  %mul305 = fmul double %307, %308
  store double %mul305, double* %w, align 8
  %309 = load double, double* %u, align 8
  %310 = load double, double* @A6, align 8
  %311 = load double, double* %w, align 8
  %mul306 = fmul double %310, %311
  %312 = load double, double* @A5, align 8
  %add307 = fadd double %mul306, %312
  %313 = load double, double* %w, align 8
  %mul308 = fmul double %add307, %313
  %314 = load double, double* @A4, align 8
  %add309 = fadd double %mul308, %314
  %315 = load double, double* %w, align 8
  %mul310 = fmul double %add309, %315
  %316 = load double, double* @A3, align 8
  %add311 = fadd double %mul310, %316
  %317 = load double, double* %w, align 8
  %mul312 = fmul double %add311, %317
  %318 = load double, double* @A2, align 8
  %add313 = fadd double %mul312, %318
  %319 = load double, double* %w, align 8
  %mul314 = fmul double %add313, %319
  %320 = load double, double* @A1, align 8
  %add315 = fadd double %mul314, %320
  %321 = load double, double* %w, align 8
  %mul316 = fmul double %add315, %321
  %322 = load double, double* @one, align 8
  %add317 = fadd double %mul316, %322
  %mul318 = fmul double %309, %add317
  store double %mul318, double* @sa, align 8
  %323 = load double, double* %w, align 8
  %324 = load double, double* %w, align 8
  %325 = load double, double* %w, align 8
  %326 = load double, double* %w, align 8
  %327 = load double, double* %w, align 8
  %328 = load double, double* @B6, align 8
  %329 = load double, double* %w, align 8
  %mul319 = fmul double %328, %329
  %330 = load double, double* @B5, align 8
  %add320 = fadd double %mul319, %330
  %mul321 = fmul double %327, %add320
  %331 = load double, double* @B4, align 8
  %add322 = fadd double %mul321, %331
  %mul323 = fmul double %326, %add322
  %332 = load double, double* @B3, align 8
  %add324 = fadd double %mul323, %332
  %mul325 = fmul double %325, %add324
  %333 = load double, double* @B2, align 8
  %add326 = fadd double %mul325, %333
  %mul327 = fmul double %324, %add326
  %334 = load double, double* @B1, align 8
  %add328 = fadd double %mul327, %334
  %mul329 = fmul double %323, %add328
  %335 = load double, double* @one, align 8
  %add330 = fadd double %mul329, %335
  store double %add330, double* @sb, align 8
  %336 = load double, double* @sa, align 8
  %337 = load double, double* @sb, align 8
  %div331 = fdiv double %336, %337
  store double %div331, double* @sa, align 8
  %338 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %div332 = fdiv double %338, 2.900000e+01
  store double %div332, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 16), align 16
  %339 = load double, double* %x, align 8
  %340 = load double, double* @sa, align 8
  %341 = load double, double* @two, align 8
  %342 = load double, double* %s, align 8
  %mul333 = fmul double %341, %342
  %add334 = fadd double %340, %mul333
  %mul335 = fmul double %339, %add334
  %343 = load double, double* @two, align 8
  %div336 = fdiv double %mul335, %343
  store double %div336, double* @sa, align 8
  store double 0x3FE62E42FEFA39EF, double* @sb, align 8
  %344 = load double, double* @sa, align 8
  %345 = load double, double* @sb, align 8
  %sub337 = fsub double %344, %345
  store double %sub337, double* @sc, align 8
  %346 = load double, double* @one, align 8
  %347 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 16), align 16
  %div338 = fdiv double %346, %347
  store double %div338, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 17), align 8
  %348 = load double, double* @sc, align 8
  %mul339 = fmul double %348, 1.000000e-30
  %349 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %mul340 = fmul double %349, 1.000000e-30
  %350 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 17), align 8
  %mul341 = fmul double %350, 1.000000e-30
  %call342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), double %mul339, double %mul340, double %mul341)
  %351 = load double, double* @piref, align 8
  %352 = load double, double* @four, align 8
  %353 = load i64, i64* %m, align 8
  %conv343 = sitofp i64 %353 to double
  %mul344 = fmul double %352, %conv343
  %div345 = fdiv double %351, %mul344
  store double %div345, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call346 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond347

for.cond347:                                      ; preds = %for.inc382, %for.end300
  %354 = load i64, i64* %i, align 8
  %355 = load i64, i64* %m, align 8
  %sub348 = sub nsw i64 %355, 1
  %cmp349 = icmp sle i64 %354, %sub348
  br i1 %cmp349, label %for.body351, label %for.end384

for.body351:                                      ; preds = %for.cond347
  %356 = load i64, i64* %i, align 8
  %conv352 = sitofp i64 %356 to double
  %357 = load double, double* %x, align 8
  %mul353 = fmul double %conv352, %357
  store double %mul353, double* %u, align 8
  %358 = load double, double* %u, align 8
  %359 = load double, double* %u, align 8
  %mul354 = fmul double %358, %359
  store double %mul354, double* %w, align 8
  %360 = load double, double* %u, align 8
  %361 = load double, double* @A6, align 8
  %362 = load double, double* %w, align 8
  %mul355 = fmul double %361, %362
  %363 = load double, double* @A5, align 8
  %add356 = fadd double %mul355, %363
  %364 = load double, double* %w, align 8
  %mul357 = fmul double %add356, %364
  %365 = load double, double* @A4, align 8
  %add358 = fadd double %mul357, %365
  %366 = load double, double* %w, align 8
  %mul359 = fmul double %add358, %366
  %367 = load double, double* @A3, align 8
  %add360 = fadd double %mul359, %367
  %368 = load double, double* %w, align 8
  %mul361 = fmul double %add360, %368
  %369 = load double, double* @A2, align 8
  %add362 = fadd double %mul361, %369
  %370 = load double, double* %w, align 8
  %mul363 = fmul double %add362, %370
  %371 = load double, double* @A1, align 8
  %add364 = fadd double %mul363, %371
  %372 = load double, double* %w, align 8
  %mul365 = fmul double %add364, %372
  %373 = load double, double* @one, align 8
  %add366 = fadd double %mul365, %373
  %mul367 = fmul double %360, %add366
  store double %mul367, double* %v, align 8
  %374 = load double, double* %s, align 8
  %375 = load double, double* %v, align 8
  %376 = load double, double* %w, align 8
  %377 = load double, double* %w, align 8
  %378 = load double, double* %w, align 8
  %379 = load double, double* %w, align 8
  %380 = load double, double* %w, align 8
  %381 = load double, double* @B6, align 8
  %382 = load double, double* %w, align 8
  %mul368 = fmul double %381, %382
  %383 = load double, double* @B5, align 8
  %add369 = fadd double %mul368, %383
  %mul370 = fmul double %380, %add369
  %384 = load double, double* @B4, align 8
  %add371 = fadd double %mul370, %384
  %mul372 = fmul double %379, %add371
  %385 = load double, double* @B3, align 8
  %add373 = fadd double %mul372, %385
  %mul374 = fmul double %378, %add373
  %386 = load double, double* @B2, align 8
  %add375 = fadd double %mul374, %386
  %mul376 = fmul double %377, %add375
  %387 = load double, double* @B1, align 8
  %add377 = fadd double %mul376, %387
  %mul378 = fmul double %376, %add377
  %388 = load double, double* @one, align 8
  %add379 = fadd double %mul378, %388
  %mul380 = fmul double %375, %add379
  %add381 = fadd double %374, %mul380
  store double %add381, double* %s, align 8
  br label %for.inc382

for.inc382:                                       ; preds = %for.body351
  %389 = load i64, i64* %i, align 8
  %inc383 = add nsw i64 %389, 1
  store i64 %inc383, i64* %i, align 8
  br label %for.cond347

for.end384:                                       ; preds = %for.cond347
  %call385 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %390 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %391 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul386 = fmul double %390, %391
  %392 = load double, double* @nulltime, align 8
  %sub387 = fsub double %mul386, %392
  store double %sub387, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %393 = load double, double* @piref, align 8
  %394 = load double, double* @four, align 8
  %div388 = fdiv double %393, %394
  store double %div388, double* %u, align 8
  %395 = load double, double* %u, align 8
  %396 = load double, double* %u, align 8
  %mul389 = fmul double %395, %396
  store double %mul389, double* %w, align 8
  %397 = load double, double* %u, align 8
  %398 = load double, double* @A6, align 8
  %399 = load double, double* %w, align 8
  %mul390 = fmul double %398, %399
  %400 = load double, double* @A5, align 8
  %add391 = fadd double %mul390, %400
  %401 = load double, double* %w, align 8
  %mul392 = fmul double %add391, %401
  %402 = load double, double* @A4, align 8
  %add393 = fadd double %mul392, %402
  %403 = load double, double* %w, align 8
  %mul394 = fmul double %add393, %403
  %404 = load double, double* @A3, align 8
  %add395 = fadd double %mul394, %404
  %405 = load double, double* %w, align 8
  %mul396 = fmul double %add395, %405
  %406 = load double, double* @A2, align 8
  %add397 = fadd double %mul396, %406
  %407 = load double, double* %w, align 8
  %mul398 = fmul double %add397, %407
  %408 = load double, double* @A1, align 8
  %add399 = fadd double %mul398, %408
  %409 = load double, double* %w, align 8
  %mul400 = fmul double %add399, %409
  %410 = load double, double* @one, align 8
  %add401 = fadd double %mul400, %410
  %mul402 = fmul double %397, %add401
  store double %mul402, double* @sa, align 8
  %411 = load double, double* %w, align 8
  %412 = load double, double* %w, align 8
  %413 = load double, double* %w, align 8
  %414 = load double, double* %w, align 8
  %415 = load double, double* %w, align 8
  %416 = load double, double* @B6, align 8
  %417 = load double, double* %w, align 8
  %mul403 = fmul double %416, %417
  %418 = load double, double* @B5, align 8
  %add404 = fadd double %mul403, %418
  %mul405 = fmul double %415, %add404
  %419 = load double, double* @B4, align 8
  %add406 = fadd double %mul405, %419
  %mul407 = fmul double %414, %add406
  %420 = load double, double* @B3, align 8
  %add408 = fadd double %mul407, %420
  %mul409 = fmul double %413, %add408
  %421 = load double, double* @B2, align 8
  %add410 = fadd double %mul409, %421
  %mul411 = fmul double %412, %add410
  %422 = load double, double* @B1, align 8
  %add412 = fadd double %mul411, %422
  %mul413 = fmul double %411, %add412
  %423 = load double, double* @one, align 8
  %add414 = fadd double %mul413, %423
  store double %add414, double* @sb, align 8
  %424 = load double, double* @sa, align 8
  %425 = load double, double* @sb, align 8
  %mul415 = fmul double %424, %425
  store double %mul415, double* @sa, align 8
  %426 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %div416 = fdiv double %426, 2.900000e+01
  store double %div416, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 19), align 8
  %427 = load double, double* %x, align 8
  %428 = load double, double* @sa, align 8
  %429 = load double, double* @two, align 8
  %430 = load double, double* %s, align 8
  %mul417 = fmul double %429, %430
  %add418 = fadd double %428, %mul417
  %mul419 = fmul double %427, %add418
  %431 = load double, double* @two, align 8
  %div420 = fdiv double %mul419, %431
  store double %div420, double* @sa, align 8
  store double 2.500000e-01, double* @sb, align 8
  %432 = load double, double* @sa, align 8
  %433 = load double, double* @sb, align 8
  %sub421 = fsub double %432, %433
  store double %sub421, double* @sc, align 8
  %434 = load double, double* @one, align 8
  %435 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 19), align 8
  %div422 = fdiv double %434, %435
  store double %div422, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 20), align 16
  %436 = load double, double* @sc, align 8
  %mul423 = fmul double %436, 1.000000e-30
  %437 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %mul424 = fmul double %437, 1.000000e-30
  %438 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 20), align 16
  %mul425 = fmul double %438, 1.000000e-30
  %call426 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), double %mul423, double %mul424, double %mul425)
  store double 0.000000e+00, double* %s, align 8
  %439 = load double, double* @one, align 8
  store double %439, double* %w, align 8
  store double 0x40599541F7F192A4, double* @sa, align 8
  %440 = load double, double* @sa, align 8
  %441 = load i64, i64* %m, align 8
  %conv427 = sitofp i64 %441 to double
  %div428 = fdiv double %440, %conv427
  store double %div428, double* %v, align 8
  %call429 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond430

for.cond430:                                      ; preds = %for.inc448, %for.end384
  %442 = load i64, i64* %i, align 8
  %443 = load i64, i64* %m, align 8
  %sub431 = sub nsw i64 %443, 1
  %cmp432 = icmp sle i64 %442, %sub431
  br i1 %cmp432, label %for.body434, label %for.end450

for.body434:                                      ; preds = %for.cond430
  %444 = load i64, i64* %i, align 8
  %conv435 = sitofp i64 %444 to double
  %445 = load double, double* %v, align 8
  %mul436 = fmul double %conv435, %445
  store double %mul436, double* %x, align 8
  %446 = load double, double* %x, align 8
  %447 = load double, double* %x, align 8
  %mul437 = fmul double %446, %447
  store double %mul437, double* %u, align 8
  %448 = load double, double* %s, align 8
  %449 = load double, double* %w, align 8
  %450 = load double, double* %x, align 8
  %451 = load double, double* %w, align 8
  %add438 = fadd double %450, %451
  %div439 = fdiv double %449, %add438
  %sub440 = fsub double %448, %div439
  %452 = load double, double* %x, align 8
  %453 = load double, double* %u, align 8
  %454 = load double, double* %w, align 8
  %add441 = fadd double %453, %454
  %div442 = fdiv double %452, %add441
  %sub443 = fsub double %sub440, %div442
  %455 = load double, double* %u, align 8
  %456 = load double, double* %x, align 8
  %457 = load double, double* %u, align 8
  %mul444 = fmul double %456, %457
  %458 = load double, double* %w, align 8
  %add445 = fadd double %mul444, %458
  %div446 = fdiv double %455, %add445
  %sub447 = fsub double %sub443, %div446
  store double %sub447, double* %s, align 8
  br label %for.inc448

for.inc448:                                       ; preds = %for.body434
  %459 = load i64, i64* %i, align 8
  %inc449 = add nsw i64 %459, 1
  store i64 %inc449, i64* %i, align 8
  br label %for.cond430

for.end450:                                       ; preds = %for.cond430
  %call451 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %460 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %461 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul452 = fmul double %460, %461
  %462 = load double, double* @nulltime, align 8
  %sub453 = fsub double %mul452, %462
  store double %sub453, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %463 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %div454 = fdiv double %463, 1.200000e+01
  store double %div454, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 22), align 16
  %464 = load double, double* @sa, align 8
  store double %464, double* %x, align 8
  %465 = load double, double* %x, align 8
  %466 = load double, double* %x, align 8
  %mul455 = fmul double %465, %466
  store double %mul455, double* %u, align 8
  %467 = load double, double* %w, align 8
  %sub456 = fsub double -0.000000e+00, %467
  %468 = load double, double* %w, align 8
  %469 = load double, double* %x, align 8
  %470 = load double, double* %w, align 8
  %add457 = fadd double %469, %470
  %div458 = fdiv double %468, %add457
  %sub459 = fsub double %sub456, %div458
  %471 = load double, double* %x, align 8
  %472 = load double, double* %u, align 8
  %473 = load double, double* %w, align 8
  %add460 = fadd double %472, %473
  %div461 = fdiv double %471, %add460
  %sub462 = fsub double %sub459, %div461
  %474 = load double, double* %u, align 8
  %475 = load double, double* %x, align 8
  %476 = load double, double* %u, align 8
  %mul463 = fmul double %475, %476
  %477 = load double, double* %w, align 8
  %add464 = fadd double %mul463, %477
  %div465 = fdiv double %474, %add464
  %sub466 = fsub double %sub462, %div465
  store double %sub466, double* @sa, align 8
  %478 = load double, double* %v, align 8
  %mul467 = fmul double 1.800000e+01, %478
  %479 = load double, double* @sa, align 8
  %480 = load double, double* @two, align 8
  %481 = load double, double* %s, align 8
  %mul468 = fmul double %480, %481
  %add469 = fadd double %479, %mul468
  %mul470 = fmul double %mul467, %add469
  store double %mul470, double* @sa, align 8
  %482 = load double, double* @sa, align 8
  %conv471 = fptosi double %482 to i64
  %mul472 = mul nsw i64 -2000, %conv471
  store i64 %mul472, i64* %m, align 8
  %483 = load i64, i64* %m, align 8
  %conv473 = sitofp i64 %483 to double
  %484 = load double, double* @scale, align 8
  %div474 = fdiv double %conv473, %484
  %conv475 = fptosi double %div474 to i64
  store i64 %conv475, i64* %m, align 8
  %485 = load double, double* @sa, align 8
  %add476 = fadd double %485, 5.002000e+02
  store double %add476, double* @sc, align 8
  %486 = load double, double* @one, align 8
  %487 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 22), align 16
  %div477 = fdiv double %486, %487
  store double %div477, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 23), align 8
  %488 = load double, double* @sc, align 8
  %mul478 = fmul double %488, 1.000000e-30
  %489 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %mul479 = fmul double %489, 1.000000e-30
  %490 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 23), align 8
  %mul480 = fmul double %490, 1.000000e-30
  %call481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), double %mul478, double %mul479, double %mul480)
  %491 = load double, double* @piref, align 8
  %492 = load double, double* @three, align 8
  %493 = load i64, i64* %m, align 8
  %conv482 = sitofp i64 %493 to double
  %mul483 = fmul double %492, %conv482
  %div484 = fdiv double %491, %mul483
  store double %div484, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  %call485 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  store i64 1, i64* %i, align 8
  br label %for.cond486

for.cond486:                                      ; preds = %for.inc522, %for.end450
  %494 = load i64, i64* %i, align 8
  %495 = load i64, i64* %m, align 8
  %sub487 = sub nsw i64 %495, 1
  %cmp488 = icmp sle i64 %494, %sub487
  br i1 %cmp488, label %for.body490, label %for.end524

for.body490:                                      ; preds = %for.cond486
  %496 = load i64, i64* %i, align 8
  %conv491 = sitofp i64 %496 to double
  %497 = load double, double* %x, align 8
  %mul492 = fmul double %conv491, %497
  store double %mul492, double* %u, align 8
  %498 = load double, double* %u, align 8
  %499 = load double, double* %u, align 8
  %mul493 = fmul double %498, %499
  store double %mul493, double* %w, align 8
  %500 = load double, double* %w, align 8
  %501 = load double, double* %w, align 8
  %502 = load double, double* %w, align 8
  %503 = load double, double* %w, align 8
  %504 = load double, double* %w, align 8
  %505 = load double, double* @B6, align 8
  %506 = load double, double* %w, align 8
  %mul494 = fmul double %505, %506
  %507 = load double, double* @B5, align 8
  %add495 = fadd double %mul494, %507
  %mul496 = fmul double %504, %add495
  %508 = load double, double* @B4, align 8
  %add497 = fadd double %mul496, %508
  %mul498 = fmul double %503, %add497
  %509 = load double, double* @B3, align 8
  %add499 = fadd double %mul498, %509
  %mul500 = fmul double %502, %add499
  %510 = load double, double* @B2, align 8
  %add501 = fadd double %mul500, %510
  %mul502 = fmul double %501, %add501
  %511 = load double, double* @B1, align 8
  %add503 = fadd double %mul502, %511
  %mul504 = fmul double %500, %add503
  %512 = load double, double* @one, align 8
  %add505 = fadd double %mul504, %512
  store double %add505, double* %v, align 8
  %513 = load double, double* %s, align 8
  %514 = load double, double* %v, align 8
  %515 = load double, double* %v, align 8
  %mul506 = fmul double %514, %515
  %516 = load double, double* %u, align 8
  %mul507 = fmul double %mul506, %516
  %517 = load double, double* @A6, align 8
  %518 = load double, double* %w, align 8
  %mul508 = fmul double %517, %518
  %519 = load double, double* @A5, align 8
  %add509 = fadd double %mul508, %519
  %520 = load double, double* %w, align 8
  %mul510 = fmul double %add509, %520
  %521 = load double, double* @A4, align 8
  %add511 = fadd double %mul510, %521
  %522 = load double, double* %w, align 8
  %mul512 = fmul double %add511, %522
  %523 = load double, double* @A3, align 8
  %add513 = fadd double %mul512, %523
  %524 = load double, double* %w, align 8
  %mul514 = fmul double %add513, %524
  %525 = load double, double* @A2, align 8
  %add515 = fadd double %mul514, %525
  %526 = load double, double* %w, align 8
  %mul516 = fmul double %add515, %526
  %527 = load double, double* @A1, align 8
  %add517 = fadd double %mul516, %527
  %528 = load double, double* %w, align 8
  %mul518 = fmul double %add517, %528
  %529 = load double, double* @one, align 8
  %add519 = fadd double %mul518, %529
  %mul520 = fmul double %mul507, %add519
  %add521 = fadd double %513, %mul520
  store double %add521, double* %s, align 8
  br label %for.inc522

for.inc522:                                       ; preds = %for.body490
  %530 = load i64, i64* %i, align 8
  %inc523 = add nsw i64 %530, 1
  store i64 %inc523, i64* %i, align 8
  br label %for.cond486

for.end524:                                       ; preds = %for.cond486
  %call525 = call i32 @dtime(double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i32 0, i32 0))
  %531 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 1), align 8
  %532 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @TimeArray, i64 0, i64 1), align 8
  %mul526 = fmul double %531, %532
  %533 = load double, double* @nulltime, align 8
  %sub527 = fsub double %mul526, %533
  store double %sub527, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %534 = load double, double* @piref, align 8
  %535 = load double, double* @three, align 8
  %div528 = fdiv double %534, %535
  store double %div528, double* %u, align 8
  %536 = load double, double* %u, align 8
  %537 = load double, double* %u, align 8
  %mul529 = fmul double %536, %537
  store double %mul529, double* %w, align 8
  %538 = load double, double* %u, align 8
  %539 = load double, double* @A6, align 8
  %540 = load double, double* %w, align 8
  %mul530 = fmul double %539, %540
  %541 = load double, double* @A5, align 8
  %add531 = fadd double %mul530, %541
  %542 = load double, double* %w, align 8
  %mul532 = fmul double %add531, %542
  %543 = load double, double* @A4, align 8
  %add533 = fadd double %mul532, %543
  %544 = load double, double* %w, align 8
  %mul534 = fmul double %add533, %544
  %545 = load double, double* @A3, align 8
  %add535 = fadd double %mul534, %545
  %546 = load double, double* %w, align 8
  %mul536 = fmul double %add535, %546
  %547 = load double, double* @A2, align 8
  %add537 = fadd double %mul536, %547
  %548 = load double, double* %w, align 8
  %mul538 = fmul double %add537, %548
  %549 = load double, double* @A1, align 8
  %add539 = fadd double %mul538, %549
  %550 = load double, double* %w, align 8
  %mul540 = fmul double %add539, %550
  %551 = load double, double* @one, align 8
  %add541 = fadd double %mul540, %551
  %mul542 = fmul double %538, %add541
  store double %mul542, double* @sa, align 8
  %552 = load double, double* %w, align 8
  %553 = load double, double* %w, align 8
  %554 = load double, double* %w, align 8
  %555 = load double, double* %w, align 8
  %556 = load double, double* %w, align 8
  %557 = load double, double* @B6, align 8
  %558 = load double, double* %w, align 8
  %mul543 = fmul double %557, %558
  %559 = load double, double* @B5, align 8
  %add544 = fadd double %mul543, %559
  %mul545 = fmul double %556, %add544
  %560 = load double, double* @B4, align 8
  %add546 = fadd double %mul545, %560
  %mul547 = fmul double %555, %add546
  %561 = load double, double* @B3, align 8
  %add548 = fadd double %mul547, %561
  %mul549 = fmul double %554, %add548
  %562 = load double, double* @B2, align 8
  %add550 = fadd double %mul549, %562
  %mul551 = fmul double %553, %add550
  %563 = load double, double* @B1, align 8
  %add552 = fadd double %mul551, %563
  %mul553 = fmul double %552, %add552
  %564 = load double, double* @one, align 8
  %add554 = fadd double %mul553, %564
  store double %add554, double* @sb, align 8
  %565 = load double, double* @sa, align 8
  %566 = load double, double* @sb, align 8
  %mul555 = fmul double %565, %566
  %567 = load double, double* @sb, align 8
  %mul556 = fmul double %mul555, %567
  store double %mul556, double* @sa, align 8
  %568 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %div557 = fdiv double %568, 3.000000e+01
  store double %div557, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 25), align 8
  %569 = load double, double* %x, align 8
  %570 = load double, double* @sa, align 8
  %571 = load double, double* @two, align 8
  %572 = load double, double* %s, align 8
  %mul558 = fmul double %571, %572
  %add559 = fadd double %570, %mul558
  %mul560 = fmul double %569, %add559
  %573 = load double, double* @two, align 8
  %div561 = fdiv double %mul560, %573
  store double %div561, double* @sa, align 8
  store double 0x3FD2AAAAAAAAAAAB, double* @sb, align 8
  %574 = load double, double* @sa, align 8
  %575 = load double, double* @sb, align 8
  %sub562 = fsub double %574, %575
  store double %sub562, double* @sc, align 8
  %576 = load double, double* @one, align 8
  %577 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 25), align 8
  %div563 = fdiv double %576, %577
  store double %div563, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 26), align 16
  %578 = load double, double* @sc, align 8
  %mul564 = fmul double %578, 1.000000e-30
  %579 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %mul565 = fmul double %579, 1.000000e-30
  %580 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 26), align 16
  %mul566 = fmul double %580, 1.000000e-30
  %call567 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), double %mul564, double %mul565, double %mul566)
  %581 = load double, double* @five, align 8
  %582 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 6), align 16
  %583 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 5), align 8
  %sub568 = fsub double %582, %583
  %mul569 = fmul double %581, %sub568
  %584 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add570 = fadd double %mul569, %584
  %div571 = fdiv double %add570, 5.200000e+01
  store double %div571, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 27), align 8
  %585 = load double, double* @one, align 8
  %586 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 27), align 8
  %div572 = fdiv double %585, %586
  store double %div572, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 28), align 16
  %587 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %588 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add573 = fadd double %587, %588
  %589 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add574 = fadd double %add573, %589
  %590 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %add575 = fadd double %add574, %590
  %591 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add576 = fadd double %add575, %591
  store double %add576, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %592 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %593 = load double, double* @four, align 8
  %594 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %mul577 = fmul double %593, %594
  %add578 = fadd double %592, %mul577
  %div579 = fdiv double %add578, 1.520000e+02
  store double %div579, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %595 = load double, double* @one, align 8
  %596 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 29), align 8
  %div580 = fdiv double %595, %596
  store double %div580, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 30), align 16
  %597 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 2), align 16
  %598 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %add581 = fadd double %597, %598
  %599 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add582 = fadd double %add581, %599
  %600 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 15), align 8
  %add583 = fadd double %add582, %600
  %601 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add584 = fadd double %add583, %601
  store double %add584, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %602 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %603 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 21), align 8
  %add585 = fadd double %602, %603
  %604 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %add586 = fadd double %add585, %604
  %div587 = fdiv double %add586, 1.460000e+02
  store double %div587, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %605 = load double, double* @one, align 8
  %606 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 31), align 8
  %div588 = fdiv double %605, %606
  store double %div588, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 32), align 16
  %607 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 9), align 8
  %608 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 12), align 16
  %add589 = fadd double %607, %608
  %609 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 18), align 16
  %add590 = fadd double %add589, %609
  %610 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 24), align 16
  %add591 = fadd double %add590, %610
  %div592 = fdiv double %add591, 9.100000e+01
  store double %div592, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 33), align 8
  %611 = load double, double* @one, align 8
  %612 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 33), align 8
  %div593 = fdiv double %611, %612
  store double %div593, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 34), align 16
  %call594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %613 = load i64, i64* %m, align 8
  %call595 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i64 %613)
  %614 = load double, double* @nulltime, align 8
  %mul596 = fmul double %614, 1.000000e-30
  %call597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), double %mul596)
  %615 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 28), align 16
  %mul598 = fmul double %615, 1.000000e-30
  %call599 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), double %mul598)
  %616 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 30), align 16
  %mul600 = fmul double %616, 1.000000e-30
  %call601 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), double %mul600)
  %617 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 32), align 16
  %mul602 = fmul double %617, 1.000000e-30
  %call603 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), double %mul602)
  %618 = load double, double* getelementptr inbounds ([36 x double], [36 x double]* @T, i64 0, i64 34), align 16
  %mul604 = fmul double %618, 1.000000e-30
  %call605 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), double %mul604)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @dtime(double* %p) #0 {
entry:
  %p.addr = alloca double*, align 8
  %q = alloca double, align 8
  store double* %p, double** %p.addr, align 8
  %0 = load double*, double** %p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %q, align 8
  %call = call i32 @gettimeofday(%struct.timeval* @tnow, %struct.timezone* null) #3
  %2 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 0), align 8
  %conv = sitofp i64 %2 to double
  %3 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tnow, i32 0, i32 1), align 8
  %conv1 = sitofp i64 %3 to double
  %mul = fmul double %conv1, 1.000000e-06
  %add = fadd double %conv, %mul
  %4 = load double*, double** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 2
  store double %add, double* %arrayidx2, align 8
  %5 = load double*, double** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 2
  %6 = load double, double* %arrayidx3, align 8
  %7 = load double, double* %q, align 8
  %sub = fsub double %6, %7
  %8 = load double*, double** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 1
  store double %sub, double* %arrayidx4, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
