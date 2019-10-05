; ModuleID = 'shuffle.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@next = hidden global i64 1, align 8
@.str = hidden unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @rand() #0

; Function Attrs: noinline nounwind optnone uwtable
define void @shuffle(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8
  br label %12

; <label>:12:                                     ; preds = %51, %2
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %54

; <label>:15:                                     ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  %18 = uitofp i64 %17 to double
  %19 = call i32 @rand() #1
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 3.276800e+04
  %22 = fmul double %18, %21
  %23 = fptosi double %22 to i32
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %15
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  br label %34

; <label>:32:                                     ; preds = %15
  %33 = load i64, i64* %6, align 8
  br label %34

; <label>:34:                                     ; preds = %32, %29
  %35 = phi i64 [ %31, %29 ], [ %33, %32 ]
  store i64 %35, i64* %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %34
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %7, align 8
  br label %12

; <label>:54:                                     ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
