; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/recursive/recursive.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Ack(3,%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fib(%.1f): %.1f\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Tak(%d,%d,%d): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Fib(3): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Tak(3.0,2.0,1.0): %.1f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ack(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %y.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %sub1 = sub nsw i32 %5, 1
  %call = call i32 @ack(i32 %4, i32 %sub1)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %cond.false ]
  %call2 = call i32 @ack(i32 %sub, i32 %cond)
  store i32 %call2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define i32 @fib(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 2
  %call = call i32 @fib(i32 %sub)
  %2 = load i32, i32* %n.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  %call2 = call i32 @fib(i32 %sub1)
  %add = add nsw i32 %call, %call2
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define double @fibFP(double %n) #0 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca double, align 8
  store double %n, double* %n.addr, align 8
  %0 = load double, double* %n.addr, align 8
  %cmp = fcmp olt double %0, 2.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %n.addr, align 8
  %sub = fsub double %1, 2.000000e+00
  %call = call double @fibFP(double %sub)
  %2 = load double, double* %n.addr, align 8
  %sub1 = fsub double %2, 1.000000e+00
  %call2 = call double @fibFP(double %sub1)
  %add = fadd double %call, %call2
  store double %add, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load double, double* %retval, align 8
  ret double %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @tak(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* %z.addr, align 4
  %call = call i32 @tak(i32 %sub, i32 %3, i32 %4)
  %5 = load i32, i32* %y.addr, align 4
  %sub1 = sub nsw i32 %5, 1
  %6 = load i32, i32* %z.addr, align 4
  %7 = load i32, i32* %x.addr, align 4
  %call2 = call i32 @tak(i32 %sub1, i32 %6, i32 %7)
  %8 = load i32, i32* %z.addr, align 4
  %sub3 = sub nsw i32 %8, 1
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %call4 = call i32 @tak(i32 %sub3, i32 %9, i32 %10)
  %call5 = call i32 @tak(i32 %call, i32 %call2, i32 %call4)
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %z.addr, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define double @takFP(double %x, double %y, double %z) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  %0 = load double, double* %y.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %sub = fsub double %2, 1.000000e+00
  %3 = load double, double* %y.addr, align 8
  %4 = load double, double* %z.addr, align 8
  %call = call double @takFP(double %sub, double %3, double %4)
  %5 = load double, double* %y.addr, align 8
  %sub1 = fsub double %5, 1.000000e+00
  %6 = load double, double* %z.addr, align 8
  %7 = load double, double* %x.addr, align 8
  %call2 = call double @takFP(double %sub1, double %6, double %7)
  %8 = load double, double* %z.addr, align 8
  %sub3 = fsub double %8, 1.000000e+00
  %9 = load double, double* %x.addr, align 8
  %10 = load double, double* %y.addr, align 8
  %call4 = call double @takFP(double %sub3, double %9, double %10)
  %call5 = call double @takFP(double %call, double %call2, double %call4)
  store double %call5, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %11 = load double, double* %z.addr, align 8
  store double %11, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load double, double* %retval, align 8
  ret double %12
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, i32* %n, align 4
  %add1 = add nsw i32 %1, 1
  %call = call i32 @ack(i32 3, i32 %add1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %add, i32 %call)
  %2 = load i32, i32* %n, align 4
  %conv = sitofp i32 %2 to double
  %add3 = fadd double 2.800000e+01, %conv
  %3 = load i32, i32* %n, align 4
  %conv4 = sitofp i32 %3 to double
  %add5 = fadd double 2.800000e+01, %conv4
  %call6 = call double @fibFP(double %add5)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), double %add3, double %call6)
  %4 = load i32, i32* %n, align 4
  %mul = mul nsw i32 3, %4
  %5 = load i32, i32* %n, align 4
  %mul8 = mul nsw i32 2, %5
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %mul9 = mul nsw i32 3, %7
  %8 = load i32, i32* %n, align 4
  %mul10 = mul nsw i32 2, %8
  %9 = load i32, i32* %n, align 4
  %call11 = call i32 @tak(i32 %mul9, i32 %mul10, i32 %9)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %mul, i32 %mul8, i32 %6, i32 %call11)
  %call13 = call i32 @fib(i32 3)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %call13)
  %call15 = call double @takFP(double 3.000000e+00, double 2.000000e+00, double 1.000000e+00)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), double %call15)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
