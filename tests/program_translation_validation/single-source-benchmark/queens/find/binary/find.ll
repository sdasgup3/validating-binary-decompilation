; ModuleID = 'find.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@printing = global i32 1, align 4
@findall = global i32 0, align 4
@solutions = global i64 0, align 8
@progname = global i8* null, align 8
@queens = common global i32 0, align 4
@files = common global i32 0, align 4
@ranks = common global i32 0, align 4
@file = common global [100 x i32] zeroinitializer, align 16
@bakdiag = common global [199 x i32] zeroinitializer, align 16
@fordiag = common global [199 x i32] zeroinitializer, align 16
@queen = common global [100 x i32] zeroinitializer, align 16
@.str = hidden unnamed_addr constant [168 x i8] c"Usage:  %s [-ac] n\0A\09n\09Number of queens (rows and columns). An integer from 1 to 100.\0A\09-a\09Find and print all solutions.\0A\09-c\09Count all solutions, but do not print them.\0A\00", align 1
@.str.1 = hidden unnamed_addr constant [25 x i8] c"%s: Illegal option '%s'\0A\00", align 1
@.str.2 = hidden unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = hidden unnamed_addr constant [31 x i8] c"%s: Non-integer argument '%s'\0A\00", align 1
@.str.4 = hidden unnamed_addr constant [32 x i8] c"%s: n must be positive integer\0A\00", align 1
@.str.5 = hidden unnamed_addr constant [36 x i8] c"%s: Can't have more than %d queens\0A\00", align 1
@.str.6 = hidden unnamed_addr constant [24 x i8] c"%s: Missing n argument\0A\00", align 1
@.str.8 = hidden unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = hidden unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = hidden unnamed_addr constant [32 x i8] c"%d queen%s on a %dx%d board...\0A\00", align 1
@.str.10 = hidden unnamed_addr constant [24 x i8] c"...there is 1 solution\0A\00", align 1
@.str.11 = hidden unnamed_addr constant [28 x i8] c"...there are %ld solutions\0A\00", align 1
@.str.12 = hidden unnamed_addr constant [17 x i8] c"\0ASolution #%lu:\0A\00", align 1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #0

; Function Attrs: noinline nounwind optnone uwtable
define void @find(i32) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @queens, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* @solutions, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @solutions, align 8
  %13 = load i32, i32* @printing, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %10
  call void @pboard()
  br label %16

; <label>:16:                                     ; preds = %15, %10
  %17 = load i32, i32* @findall, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %16
  call void @exit(i32 0) #2
  unreachable

; <label>:20:                                     ; preds = %16
  br label %75

; <label>:21:                                     ; preds = %1
  store i32 0, i32* %3, align 4
  store i32* getelementptr inbounds ([100 x i32], [100 x i32]* @file, i32 0, i32 0), i32** %4, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [199 x i32], [199 x i32]* @fordiag, i64 0, i64 %23
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @files, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [199 x i32], [199 x i32]* @bakdiag, i64 0, i64 %29
  store i32* %30, i32** %6, align 8
  br label %31

; <label>:31:                                     ; preds = %65, %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @files, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %74

; <label>:35:                                     ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %64

; <label>:40:                                     ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %64

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* @queen, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %4, align 8
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  call void @find(i32 %60)
  %61 = load i32*, i32** %6, align 8
  store i32 101, i32* %61, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 101, i32* %62, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 101, i32* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %50, %45, %40, %35
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 -1
  store i32* %73, i32** %6, align 8
  br label %31

; <label>:74:                                     ; preds = %31
  br label %75

; <label>:75:                                     ; preds = %74, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
declare void @pboard() #1

attributes #0 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
