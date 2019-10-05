; ModuleID = 'randInt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@next = hidden global i64 1, align 8
@.str = hidden unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @rand() #0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @randInt(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %7, %8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sitofp i32 %11 to double
  %13 = call i32 @rand() #1
  %14 = sitofp i32 %13 to double
  %15 = fdiv double %14, 3.276800e+04
  %16 = fmul double %12, %15
  %17 = fptosi double %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  br label %30

; <label>:26:                                     ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %27, %28
  br label %30

; <label>:30:                                     ; preds = %26, %21
  %31 = phi i32 [ %25, %21 ], [ %29, %26 ]
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
