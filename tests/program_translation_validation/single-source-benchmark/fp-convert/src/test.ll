; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/fp-convert/fp-convert.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Total is %g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define double @loop(float* %x, float* %y, i64 %length) #0 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %length.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %accumulator = alloca double, align 8
  store float* %x, float** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store double 0.000000e+00, double* %accumulator, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %length.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %x.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %3
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %5 = load float*, float** %y.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 %6
  %7 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %7 to double
  %mul = fmul double %conv, %conv2
  %8 = load double, double* %accumulator, align 8
  %add = fadd double %8, %mul
  store double %add, double* %accumulator, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %accumulator, align 8
  ret double %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca [2048 x float], align 16
  %y = alloca [2048 x float], align 16
  %total = alloca double, align 8
  %a = alloca float, align 4
  %b = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  store float 0.000000e+00, float* %a, align 4
  store float 1.000000e+00, float* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 500000
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 10
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store float 0.000000e+00, float* %a, align 4
  store float 1.000000e+00, float* %b, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %2 = load float, float* %a, align 4
  %add = fadd float %2, 0x3FB99999A0000000
  store float %add, float* %a, align 4
  %3 = load float, float* %b, align 4
  %add1 = fadd float %3, 0x3FC99999A0000000
  store float %add1, float* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.end
  %4 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %4, 2048
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load float, float* %a, align 4
  %6 = load i32, i32* %j, align 4
  %conv = sitofp i32 %6 to float
  %add5 = fadd float %5, %conv
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %x, i64 0, i64 %idxprom
  store float %add5, float* %arrayidx, align 4
  %8 = load float, float* %b, align 4
  %9 = load i32, i32* %j, align 4
  %conv6 = sitofp i32 %9 to float
  %add7 = fadd float %8, %conv6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [2048 x float], [2048 x float]* %y, i64 0, i64 %idxprom8
  store float %add7, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %arraydecay = getelementptr inbounds [2048 x float], [2048 x float]* %x, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [2048 x float], [2048 x float]* %y, i32 0, i32 0
  %call = call double @loop(float* %arraydecay, float* %arraydecay10, i64 2048)
  %12 = load double, double* %total, align 8
  %add11 = fadd double %12, %call
  store double %add11, double* %total, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  %14 = load double, double* %total, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %14)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
