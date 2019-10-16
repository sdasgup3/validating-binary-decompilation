; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/pi/pi.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Starting PI...\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" x = %9.6f    y = %12.2f  low = %8d j = %7d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Pi = %9.6f ztot = %12.2f itot = %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @myadd(float* %sum, float* %addend) #0 {
entry:
  %sum.addr = alloca float*, align 8
  %addend.addr = alloca float*, align 8
  store float* %sum, float** %sum.addr, align 8
  store float* %addend, float** %addend.addr, align 8
  %0 = load float*, float** %sum.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %addend.addr, align 8
  %3 = load float, float* %2, align 4
  %add = fadd float %1, %3
  %4 = load float*, float** %sum.addr, align 8
  store float %add, float* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ztot = alloca float, align 4
  %yran = alloca float, align 4
  %ymult = alloca float, align 4
  %ymod = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %pi = alloca float, align 4
  %prod = alloca float, align 4
  %low = alloca i64, align 8
  %ixran = alloca i64, align 8
  %itot = alloca i64, align 8
  %j = alloca i64, align 8
  %iprod = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  store float 0.000000e+00, float* %ztot, align 4
  store i64 1, i64* %low, align 8
  store i64 1907, i64* %ixran, align 8
  store float 5.813000e+03, float* %yran, align 4
  store float 1.307000e+03, float* %ymult, align 4
  store float 5.471000e+03, float* %ymod, align 4
  store i64 40000000, i64* %itot, align 8
  store i64 1, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* %itot, align 8
  %cmp = icmp sle i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %ixran, align 8
  %mul = mul nsw i64 27611, %2
  store i64 %mul, i64* %iprod, align 8
  %3 = load i64, i64* %iprod, align 8
  %4 = load i64, i64* %iprod, align 8
  %div = sdiv i64 %4, 74383
  %mul1 = mul nsw i64 74383, %div
  %sub = sub nsw i64 %3, %mul1
  store i64 %sub, i64* %ixran, align 8
  %5 = load i64, i64* %ixran, align 8
  %conv = sitofp i64 %5 to float
  %conv2 = fpext float %conv to double
  %div3 = fdiv double %conv2, 7.438300e+04
  %conv4 = fptrunc double %div3 to float
  store float %conv4, float* %x, align 4
  %6 = load float, float* %ymult, align 4
  %7 = load float, float* %yran, align 4
  %mul5 = fmul float %6, %7
  store float %mul5, float* %prod, align 4
  %8 = load float, float* %prod, align 4
  %9 = load float, float* %ymod, align 4
  %10 = load float, float* %prod, align 4
  %11 = load float, float* %ymod, align 4
  %div6 = fdiv float %10, %11
  %conv7 = fptosi float %div6 to i64
  %conv8 = sitofp i64 %conv7 to float
  %mul9 = fmul float %9, %conv8
  %sub10 = fsub float %8, %mul9
  store float %sub10, float* %yran, align 4
  %12 = load float, float* %yran, align 4
  %13 = load float, float* %ymod, align 4
  %div11 = fdiv float %12, %13
  store float %div11, float* %y, align 4
  %14 = load float, float* %x, align 4
  %15 = load float, float* %x, align 4
  %mul12 = fmul float %14, %15
  %16 = load float, float* %y, align 4
  %17 = load float, float* %y, align 4
  %mul13 = fmul float %16, %17
  %add = fadd float %mul12, %mul13
  store float %add, float* %z, align 4
  call void @myadd(float* %ztot, float* %z)
  %18 = load float, float* %z, align 4
  %conv14 = fpext float %18 to double
  %cmp15 = fcmp ole double %conv14, 1.000000e+00
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i64, i64* %low, align 8
  %add17 = add nsw i64 %19, 1
  store i64 %add17, i64* %low, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, i64* %j, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load float, float* %x, align 4
  %conv18 = fpext float %21 to double
  %22 = load float, float* %y, align 4
  %conv19 = fpext float %22 to double
  %23 = load i64, i64* %low, align 8
  %conv20 = trunc i64 %23 to i32
  %24 = load i64, i64* %j, align 8
  %conv21 = trunc i64 %24 to i32
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), double %conv18, double %conv19, i32 %conv20, i32 %conv21)
  %25 = load i64, i64* %low, align 8
  %conv23 = sitofp i64 %25 to float
  %conv24 = fpext float %conv23 to double
  %mul25 = fmul double 4.000000e+00, %conv24
  %26 = load i64, i64* %itot, align 8
  %conv26 = sitofp i64 %26 to float
  %conv27 = fpext float %conv26 to double
  %div28 = fdiv double %mul25, %conv27
  %conv29 = fptrunc double %div28 to float
  store float %conv29, float* %pi, align 4
  %27 = load float, float* %pi, align 4
  %conv30 = fpext float %27 to double
  %28 = load float, float* %ztot, align 4
  %conv31 = fpext float %28 to double
  %mul32 = fmul double %conv31, 0.000000e+00
  %29 = load i64, i64* %itot, align 8
  %conv33 = trunc i64 %29 to i32
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), double %conv30, double %mul32, i32 %conv33)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
