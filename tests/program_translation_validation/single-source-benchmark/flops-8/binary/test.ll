; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/flops-8/flops-8.bc'
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
@sb = common global double 0.000000e+00, align 8
@sc = common global double 0.000000e+00, align 8
@nulltime = common global double 0.000000e+00, align 8
@TimeArray = common global [3 x double] zeroinitializer, align 16
@T = common global [36 x double] zeroinitializer, align 16
@sd = common global double 0.000000e+00, align 8
@piprg = common global double 0.000000e+00, align 8
@pierr = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1

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
  %2 = load double, double* @piref, align 8
  %3 = load double, double* @three, align 8
  %4 = load i64, i64* %m, align 8
  %conv = sitofp i64 %4 to double
  %mul4 = fmul double %3, %conv
  %div = fdiv double %2, %mul4
  store double %div, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
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
  %conv6 = sitofp i64 %7 to double
  %8 = load double, double* %x, align 8
  %mul7 = fmul double %conv6, %8
  store double %mul7, double* %u, align 8
  %9 = load double, double* %u, align 8
  %10 = load double, double* %u, align 8
  %mul8 = fmul double %9, %10
  store double %mul8, double* %w, align 8
  %11 = load double, double* %w, align 8
  %12 = load double, double* %w, align 8
  %13 = load double, double* %w, align 8
  %14 = load double, double* %w, align 8
  %15 = load double, double* %w, align 8
  %16 = load double, double* @B6, align 8
  %17 = load double, double* %w, align 8
  %mul9 = fmul double %16, %17
  %18 = load double, double* @B5, align 8
  %add = fadd double %mul9, %18
  %mul10 = fmul double %15, %add
  %19 = load double, double* @B4, align 8
  %add11 = fadd double %mul10, %19
  %mul12 = fmul double %14, %add11
  %20 = load double, double* @B3, align 8
  %add13 = fadd double %mul12, %20
  %mul14 = fmul double %13, %add13
  %21 = load double, double* @B2, align 8
  %add15 = fadd double %mul14, %21
  %mul16 = fmul double %12, %add15
  %22 = load double, double* @B1, align 8
  %add17 = fadd double %mul16, %22
  %mul18 = fmul double %11, %add17
  %23 = load double, double* @one, align 8
  %add19 = fadd double %mul18, %23
  store double %add19, double* %v, align 8
  %24 = load double, double* %s, align 8
  %25 = load double, double* %v, align 8
  %26 = load double, double* %v, align 8
  %mul20 = fmul double %25, %26
  %27 = load double, double* %u, align 8
  %mul21 = fmul double %mul20, %27
  %28 = load double, double* @A6, align 8
  %29 = load double, double* %w, align 8
  %mul22 = fmul double %28, %29
  %30 = load double, double* @A5, align 8
  %add23 = fadd double %mul22, %30
  %31 = load double, double* %w, align 8
  %mul24 = fmul double %add23, %31
  %32 = load double, double* @A4, align 8
  %add25 = fadd double %mul24, %32
  %33 = load double, double* %w, align 8
  %mul26 = fmul double %add25, %33
  %34 = load double, double* @A3, align 8
  %add27 = fadd double %mul26, %34
  %35 = load double, double* %w, align 8
  %mul28 = fmul double %add27, %35
  %36 = load double, double* @A2, align 8
  %add29 = fadd double %mul28, %36
  %37 = load double, double* %w, align 8
  %mul30 = fmul double %add29, %37
  %38 = load double, double* @A1, align 8
  %add31 = fadd double %mul30, %38
  %39 = load double, double* %w, align 8
  %mul32 = fmul double %add31, %39
  %40 = load double, double* @one, align 8
  %add33 = fadd double %mul32, %40
  %mul34 = fmul double %mul21, %add33
  %add35 = fadd double %24, %mul34
  store double %add35, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, i64* %i, align 8
  %inc = add nsw i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load double, double* @piref, align 8
  %43 = load double, double* @three, align 8
  %div36 = fdiv double %42, %43
  store double %div36, double* %u, align 8
  %44 = load double, double* %u, align 8
  %45 = load double, double* %u, align 8
  %mul37 = fmul double %44, %45
  store double %mul37, double* %w, align 8
  %46 = load double, double* %u, align 8
  %47 = load double, double* @A6, align 8
  %48 = load double, double* %w, align 8
  %mul38 = fmul double %47, %48
  %49 = load double, double* @A5, align 8
  %add39 = fadd double %mul38, %49
  %50 = load double, double* %w, align 8
  %mul40 = fmul double %add39, %50
  %51 = load double, double* @A4, align 8
  %add41 = fadd double %mul40, %51
  %52 = load double, double* %w, align 8
  %mul42 = fmul double %add41, %52
  %53 = load double, double* @A3, align 8
  %add43 = fadd double %mul42, %53
  %54 = load double, double* %w, align 8
  %mul44 = fmul double %add43, %54
  %55 = load double, double* @A2, align 8
  %add45 = fadd double %mul44, %55
  %56 = load double, double* %w, align 8
  %mul46 = fmul double %add45, %56
  %57 = load double, double* @A1, align 8
  %add47 = fadd double %mul46, %57
  %58 = load double, double* %w, align 8
  %mul48 = fmul double %add47, %58
  %59 = load double, double* @one, align 8
  %add49 = fadd double %mul48, %59
  %mul50 = fmul double %46, %add49
  store double %mul50, double* @sa, align 8
  %60 = load double, double* %w, align 8
  %61 = load double, double* %w, align 8
  %62 = load double, double* %w, align 8
  %63 = load double, double* %w, align 8
  %64 = load double, double* %w, align 8
  %65 = load double, double* @B6, align 8
  %66 = load double, double* %w, align 8
  %mul51 = fmul double %65, %66
  %67 = load double, double* @B5, align 8
  %add52 = fadd double %mul51, %67
  %mul53 = fmul double %64, %add52
  %68 = load double, double* @B4, align 8
  %add54 = fadd double %mul53, %68
  %mul55 = fmul double %63, %add54
  %69 = load double, double* @B3, align 8
  %add56 = fadd double %mul55, %69
  %mul57 = fmul double %62, %add56
  %70 = load double, double* @B2, align 8
  %add58 = fadd double %mul57, %70
  %mul59 = fmul double %61, %add58
  %71 = load double, double* @B1, align 8
  %add60 = fadd double %mul59, %71
  %mul61 = fmul double %60, %add60
  %72 = load double, double* @one, align 8
  %add62 = fadd double %mul61, %72
  store double %add62, double* @sb, align 8
  %73 = load double, double* @sa, align 8
  %74 = load double, double* @sb, align 8
  %mul63 = fmul double %73, %74
  %75 = load double, double* @sb, align 8
  %mul64 = fmul double %mul63, %75
  store double %mul64, double* @sa, align 8
  %76 = load double, double* %x, align 8
  %77 = load double, double* @sa, align 8
  %78 = load double, double* @two, align 8
  %79 = load double, double* %s, align 8
  %mul65 = fmul double %78, %79
  %add66 = fadd double %77, %mul65
  %mul67 = fmul double %76, %add66
  %80 = load double, double* @two, align 8
  %div68 = fdiv double %mul67, %80
  store double %div68, double* @sa, align 8
  store double 0x3FD2AAAAAAAAAAAB, double* @sb, align 8
  %81 = load double, double* @sa, align 8
  %82 = load double, double* @sb, align 8
  %sub69 = fsub double %81, %82
  store double %sub69, double* @sc, align 8
  %83 = load double, double* @sc, align 8
  %mul70 = fmul double %83, 1.000000e-30
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), double %mul70, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
