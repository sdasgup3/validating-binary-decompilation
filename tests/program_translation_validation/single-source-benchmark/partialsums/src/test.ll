; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/partialsums/partialsums.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.9f\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(2/3)^k\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k^-0.5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1/k(k+1)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Flint Hills\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cookson Hills\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Riemann Zeta\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Alternating Harmonic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Gregory\00", align 1

; Function Attrs: noinline nounwind uwtable
define <2 x double> @make_vec(double %a, double %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %v = alloca <2 x double>, align 16
  %tmp = alloca double*, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = bitcast <2 x double>* %v to double*
  store double* %0, double** %tmp, align 8
  %1 = load double, double* %a.addr, align 8
  %2 = load double*, double** %tmp, align 8
  store double %1, double* %2, align 8
  %3 = load double, double* %b.addr, align 8
  %4 = load double*, double** %tmp, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 1
  store double %3, double* %add.ptr, align 8
  %5 = load <2 x double>, <2 x double>* %v, align 16
  ret <2 x double> %5
}

; Function Attrs: noinline nounwind uwtable
define double @sum_vec(<2 x double> %x) #0 {
entry:
  %x.addr = alloca <2 x double>, align 16
  %tmp = alloca double*, align 8
  store <2 x double> %x, <2 x double>* %x.addr, align 16
  %0 = bitcast <2 x double>* %x.addr to double*
  store double* %0, double** %tmp, align 8
  %1 = load double*, double** %tmp, align 8
  %2 = load double, double* %1, align 8
  %3 = load double*, double** %tmp, align 8
  %add.ptr = getelementptr inbounds double, double* %3, i64 1
  %4 = load double, double* %add.ptr, align 8
  %add = fadd double %2, %4
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %twoThrd = alloca double, align 8
  %sqrts = alloca double, align 8
  %Flint = alloca double, align 8
  %Cookson = alloca double, align 8
  %Harmonic = alloca <2 x double>, align 16
  %zeta = alloca <2 x double>, align 16
  %poly = alloca <2 x double>, align 16
  %alt = alloca <2 x double>, align 16
  %Gregory = alloca <2 x double>, align 16
  %zero = alloca <2 x double>, align 16
  %one = alloca <2 x double>, align 16
  %two = alloca <2 x double>, align 16
  %init = alloca <2 x double>, align 16
  %m_one = alloca <2 x double>, align 16
  %kv = alloca <2 x double>, align 16
  %av = alloca <2 x double>, align 16
  %k = alloca double, align 8
  %k3 = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0.000000e+00, double* %twoThrd, align 8
  store double 0.000000e+00, double* %sqrts, align 8
  store double 0.000000e+00, double* %Flint, align 8
  store double 0.000000e+00, double* %Cookson, align 8
  store i32 2500000, i32* %n, align 4
  %call = call <2 x double> @make_vec(double 0.000000e+00, double 0.000000e+00)
  store <2 x double> %call, <2 x double>* %zero, align 16
  %call1 = call <2 x double> @make_vec(double 1.000000e+00, double 1.000000e+00)
  store <2 x double> %call1, <2 x double>* %one, align 16
  %call2 = call <2 x double> @make_vec(double 2.000000e+00, double 2.000000e+00)
  store <2 x double> %call2, <2 x double>* %two, align 16
  %call3 = call <2 x double> @make_vec(double -1.000000e+00, double -1.000000e+00)
  store <2 x double> %call3, <2 x double>* %m_one, align 16
  %call4 = call <2 x double> @make_vec(double 1.000000e+00, double 2.000000e+00)
  store <2 x double> %call4, <2 x double>* %init, align 16
  %call5 = call <2 x double> @make_vec(double 1.000000e+00, double -1.000000e+00)
  store <2 x double> %call5, <2 x double>* %av, align 16
  %0 = load <2 x double>, <2 x double>* %zero, align 16
  store <2 x double> %0, <2 x double>* %Gregory, align 16
  store <2 x double> %0, <2 x double>* %alt, align 16
  store <2 x double> %0, <2 x double>* %poly, align 16
  store <2 x double> %0, <2 x double>* %zeta, align 16
  store <2 x double> %0, <2 x double>* %Harmonic, align 16
  store double 1.000000e+00, double* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load double, double* %k, align 8
  %2 = load i32, i32* %n, align 4
  %conv = sitofp i32 %2 to double
  %cmp = fcmp ole double %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %k, align 8
  %sub = fsub double %3, 1.000000e+00
  %call7 = call double @pow(double 0x3FE5555555555555, double %sub) #3
  %4 = load double, double* %twoThrd, align 8
  %add = fadd double %4, %call7
  store double %add, double* %twoThrd, align 8
  %5 = load double, double* %k, align 8
  %call8 = call double @sqrt(double %5) #3
  %div = fdiv double 1.000000e+00, %call8
  %6 = load double, double* %sqrts, align 8
  %add9 = fadd double %6, %div
  store double %add9, double* %sqrts, align 8
  %7 = load double, double* %k, align 8
  %8 = load double, double* %k, align 8
  %mul = fmul double %7, %8
  %9 = load double, double* %k, align 8
  %mul10 = fmul double %mul, %9
  store double %mul10, double* %k3, align 8
  %10 = load double, double* %k, align 8
  %call11 = call double @sin(double %10) #3
  store double %call11, double* %s, align 8
  %11 = load double, double* %k, align 8
  %call12 = call double @cos(double %11) #3
  store double %call12, double* %c, align 8
  %12 = load double, double* %k3, align 8
  %13 = load double, double* %s, align 8
  %mul13 = fmul double %12, %13
  %14 = load double, double* %s, align 8
  %mul14 = fmul double %mul13, %14
  %div15 = fdiv double 1.000000e+00, %mul14
  %15 = load double, double* %Flint, align 8
  %add16 = fadd double %15, %div15
  store double %add16, double* %Flint, align 8
  %16 = load double, double* %k3, align 8
  %17 = load double, double* %c, align 8
  %mul17 = fmul double %16, %17
  %18 = load double, double* %c, align 8
  %mul18 = fmul double %mul17, %18
  %div19 = fdiv double 1.000000e+00, %mul18
  %19 = load double, double* %Cookson, align 8
  %add20 = fadd double %19, %div19
  store double %add20, double* %Cookson, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load double, double* %k, align 8
  %inc = fadd double %20, 1.000000e+00
  store double %inc, double* %k, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load <2 x double>, <2 x double>* %init, align 16
  store <2 x double> %21, <2 x double>* %kv, align 16
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc41, %for.end
  %22 = bitcast <2 x double>* %kv to double*
  %23 = load double, double* %22, align 16
  %24 = load i32, i32* %n, align 4
  %conv22 = sitofp i32 %24 to double
  %cmp23 = fcmp ole double %23, %conv22
  br i1 %cmp23, label %for.body25, label %for.end43

for.body25:                                       ; preds = %for.cond21
  %25 = load <2 x double>, <2 x double>* %one, align 16
  %26 = load <2 x double>, <2 x double>* %kv, align 16
  %27 = load <2 x double>, <2 x double>* %kv, align 16
  %28 = load <2 x double>, <2 x double>* %one, align 16
  %add26 = fadd <2 x double> %27, %28
  %mul27 = fmul <2 x double> %26, %add26
  %div28 = fdiv <2 x double> %25, %mul27
  %29 = load <2 x double>, <2 x double>* %poly, align 16
  %add29 = fadd <2 x double> %29, %div28
  store <2 x double> %add29, <2 x double>* %poly, align 16
  %30 = load <2 x double>, <2 x double>* %one, align 16
  %31 = load <2 x double>, <2 x double>* %kv, align 16
  %div30 = fdiv <2 x double> %30, %31
  %32 = load <2 x double>, <2 x double>* %Harmonic, align 16
  %add31 = fadd <2 x double> %32, %div30
  store <2 x double> %add31, <2 x double>* %Harmonic, align 16
  %33 = load <2 x double>, <2 x double>* %one, align 16
  %34 = load <2 x double>, <2 x double>* %kv, align 16
  %35 = load <2 x double>, <2 x double>* %kv, align 16
  %mul32 = fmul <2 x double> %34, %35
  %div33 = fdiv <2 x double> %33, %mul32
  %36 = load <2 x double>, <2 x double>* %zeta, align 16
  %add34 = fadd <2 x double> %36, %div33
  store <2 x double> %add34, <2 x double>* %zeta, align 16
  %37 = load <2 x double>, <2 x double>* %av, align 16
  %38 = load <2 x double>, <2 x double>* %kv, align 16
  %div35 = fdiv <2 x double> %37, %38
  %39 = load <2 x double>, <2 x double>* %alt, align 16
  %add36 = fadd <2 x double> %39, %div35
  store <2 x double> %add36, <2 x double>* %alt, align 16
  %40 = load <2 x double>, <2 x double>* %av, align 16
  %41 = load <2 x double>, <2 x double>* %two, align 16
  %42 = load <2 x double>, <2 x double>* %kv, align 16
  %mul37 = fmul <2 x double> %41, %42
  %43 = load <2 x double>, <2 x double>* %one, align 16
  %sub38 = fsub <2 x double> %mul37, %43
  %div39 = fdiv <2 x double> %40, %sub38
  %44 = load <2 x double>, <2 x double>* %Gregory, align 16
  %add40 = fadd <2 x double> %44, %div39
  store <2 x double> %add40, <2 x double>* %Gregory, align 16
  br label %for.inc41

for.inc41:                                        ; preds = %for.body25
  %45 = load <2 x double>, <2 x double>* %two, align 16
  %46 = load <2 x double>, <2 x double>* %kv, align 16
  %add42 = fadd <2 x double> %46, %45
  store <2 x double> %add42, <2 x double>* %kv, align 16
  br label %for.cond21

for.end43:                                        ; preds = %for.cond21
  %47 = load double, double* %twoThrd, align 8
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %48 = load double, double* %sqrts, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  %49 = load <2 x double>, <2 x double>* %poly, align 16
  %call46 = call double @sum_vec(<2 x double> %49)
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %call46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %50 = load double, double* %Flint, align 8
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %51 = load double, double* %Cookson, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %52 = load <2 x double>, <2 x double>* %Harmonic, align 16
  %call50 = call double @sum_vec(<2 x double> %52)
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %call50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %53 = load <2 x double>, <2 x double>* %zeta, align 16
  %call52 = call double @sum_vec(<2 x double> %53)
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %call52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %54 = load <2 x double>, <2 x double>* %alt, align 16
  %call54 = call double @sum_vec(<2 x double> %54)
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %call54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0))
  %55 = load <2 x double>, <2 x double>* %Gregory, align 16
  %call56 = call double @sum_vec(<2 x double> %55)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %call56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
