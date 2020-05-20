; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/dt/dt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c" %i iterations of each test. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" inner loop / array size %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %dvec1 = alloca double*, align 8
  %dvec2 = alloca double*, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast double** %dvec1 to i8**
  %call = call i32 @posix_memalign(i8** %0, i64 16, i64 16384) #3
  %1 = bitcast double** %dvec2 to i8**
  %call1 = call i32 @posix_memalign(i8** %1, i64 16, i64 16384) #3
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 131072)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 2048)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %2, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %sub = sub nsw i64 2048, %3
  %conv = sitofp i64 %sub to float
  %call4 = call float @cosf(float %conv) #3
  %conv5 = fpext float %call4 to double
  %mul = fmul double 0x3FF000001AD7F29B, %conv5
  %4 = load double*, double** %dvec1, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %5
  store double %mul, double* %arrayidx, align 8
  %6 = load i64, i64* %i, align 8
  %conv6 = sitofp i64 %6 to float
  %call7 = call float @sinf(float %conv6) #3
  %conv8 = fpext float %call7 to double
  %mul9 = fmul double 1.000000e-10, %conv8
  %add = fadd double 1.000000e+00, %mul9
  %7 = load double*, double** %dvec2, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds double, double* %7, i64 %8
  store double %add, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load double*, double** %dvec1, align 8
  %11 = load double*, double** %dvec2, align 8
  call void @double_array_divs_variable(double* %10, double* %11)
  %12 = load double*, double** %dvec1, align 8
  %arrayidx11 = getelementptr inbounds double, double* %12, i64 0
  %13 = load double, double* %arrayidx11, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %13)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare float @cosf(float) #1

; Function Attrs: nounwind
declare float @sinf(float) #1

; Function Attrs: noinline nounwind uwtable
define internal void @double_array_divs_variable(double* noalias %dvec1, double* noalias %dvec2) #0 {
entry:
  %dvec1.addr = alloca double*, align 8
  %dvec2.addr = alloca double*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store double* %dvec1, double** %dvec1.addr, align 8
  store double* %dvec2, double** %dvec2.addr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i64, i64* %j, align 8
  %cmp = icmp slt i64 %0, 131072
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i64, i64* %i, align 8
  %cmp2 = icmp slt i64 %1, 2048
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load double*, double** %dvec2.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %3
  %4 = load double, double* %arrayidx, align 8
  %5 = load double*, double** %dvec1.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds double, double* %5, i64 %6
  %7 = load double, double* %arrayidx4, align 8
  %div = fdiv double %7, %4
  store double %div, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %9 = load i64, i64* %j, align 8
  %inc6 = add nsw i64 %9, 1
  store i64 %inc6, i64* %j, align 8
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
