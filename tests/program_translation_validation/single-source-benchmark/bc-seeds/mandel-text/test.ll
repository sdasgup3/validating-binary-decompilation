; ModuleID = 'mandel-text/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %maxiter = alloca i32, align 4
  %slowdown = alloca i32, align 4
  %fViewRectReal = alloca double, align 8
  %fViewRectImg = alloca double, align 8
  %fMagLevel = alloca double, align 8
  %y = alloca i32, align 4
  %fCImg = alloca double, align 8
  %x = alloca i32, align 4
  %bInside = alloca i8, align 1
  %n = alloca i32, align 4
  %SLOW = alloca i32, align 4
  %fCReal = alloca double, align 8
  %fZReal = alloca double, align 8
  %fZImg = alloca double, align 8
  %fZRealSquared = alloca double, align 8
  %fZImgSquared = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 40, i32* %rows, align 4
  store i32 78, i32* %cols, align 4
  store i32 255, i32* %maxiter, align 4
  store i32 2000, i32* %slowdown, align 4
  store double -2.300000e+00, double* %fViewRectReal, align 8
  store double -1.000000e+00, double* %fViewRectImg, align 8
  store double 5.000000e-02, double* %fMagLevel, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %fViewRectImg, align 8
  %3 = load i32, i32* %y, align 4
  %conv = sitofp i32 %3 to double
  %4 = load double, double* %fMagLevel, align 8
  %mul = fmul double %conv, %4
  %add = fadd double %2, %mul
  store double %add, double* %fCImg, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc42, %for.body
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %cols, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end44

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %SLOW, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.body3
  %7 = load i32, i32* %SLOW, align 4
  %8 = load i32, i32* %slowdown, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  %9 = load double, double* %fViewRectReal, align 8
  %10 = load i32, i32* %x, align 4
  %conv7 = sitofp i32 %10 to double
  %11 = load double, double* %fMagLevel, align 8
  %mul8 = fmul double %conv7, %11
  %add9 = fadd double %9, %mul8
  store double %add9, double* %fCReal, align 8
  %12 = load double, double* %fCReal, align 8
  store double %12, double* %fZReal, align 8
  %13 = load double, double* %fCImg, align 8
  store double %13, double* %fZImg, align 8
  store i8 1, i8* %bInside, align 1
  store i32 0, i32* %n, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body6
  %14 = load i32, i32* %n, align 4
  %15 = load i32, i32* %maxiter, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %16 = load double, double* %fZReal, align 8
  %17 = load double, double* %fZReal, align 8
  %mul13 = fmul double %16, %17
  store double %mul13, double* %fZRealSquared, align 8
  %18 = load double, double* %fZImg, align 8
  %19 = load double, double* %fZImg, align 8
  %mul14 = fmul double %18, %19
  store double %mul14, double* %fZImgSquared, align 8
  %20 = load double, double* %fZRealSquared, align 8
  %21 = load double, double* %fZImgSquared, align 8
  %add15 = fadd double %20, %21
  %cmp16 = fcmp ogt double %add15, 4.000000e+00
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  store i8 0, i8* %bInside, align 1
  br label %for.end

if.end:                                           ; preds = %for.body12
  %22 = load double, double* %fZReal, align 8
  %mul17 = fmul double 2.000000e+00, %22
  %23 = load double, double* %fZImg, align 8
  %mul18 = fmul double %mul17, %23
  %24 = load double, double* %fCImg, align 8
  %add19 = fadd double %mul18, %24
  store double %add19, double* %fZImg, align 8
  %25 = load double, double* %fZRealSquared, align 8
  %26 = load double, double* %fZImgSquared, align 8
  %sub = fsub double %25, %26
  %27 = load double, double* %fCReal, align 8
  %add20 = fadd double %sub, %27
  store double %add20, double* %fZReal, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %n, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond10

for.end:                                          ; preds = %if.then, %for.cond10
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %29 = load i32, i32* %SLOW, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %SLOW, align 4
  br label %for.cond4

for.end23:                                        ; preds = %for.cond4
  %30 = load i32, i32* %n, align 4
  %cmp24 = icmp slt i32 %30, 100000
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.end23
  %call = call i32 @putchar(i32 88)
  br label %if.end41

if.else:                                          ; preds = %for.end23
  %31 = load i8, i8* %bInside, align 1
  %tobool = trunc i8 %31 to i1
  br i1 %tobool, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else
  %call27 = call i32 @putchar(i32 32)
  br label %if.end40

if.else28:                                        ; preds = %if.else
  %32 = load i32, i32* %n, align 4
  %cmp29 = icmp sgt i32 %32, 4
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else28
  %call31 = call i32 @putchar(i32 46)
  br label %if.end39

if.else32:                                        ; preds = %if.else28
  %33 = load i32, i32* %n, align 4
  %cmp33 = icmp sgt i32 %33, 2
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else32
  %call35 = call i32 @putchar(i32 43)
  br label %if.end38

if.else36:                                        ; preds = %if.else32
  %call37 = call i32 @putchar(i32 42)
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then30
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then25
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %34 = load i32, i32* %x, align 4
  %inc43 = add nsw i32 %34, 1
  store i32 %inc43, i32* %x, align 4
  br label %for.cond1

for.end44:                                        ; preds = %for.cond1
  %call45 = call i32 @putchar(i32 10)
  br label %for.inc46

for.inc46:                                        ; preds = %for.end44
  %35 = load i32, i32* %y, align 4
  %inc47 = add nsw i32 %35, 1
  store i32 %inc47, i32* %y, align 4
  br label %for.cond

for.end48:                                        ; preds = %for.cond
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

declare i32 @putchar(i32) #1

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
