; ModuleID = 'init_patterns.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@DEPTH = global i32 3, align 4
@off = global i32 0, align 4
@C4VERT = common global i64 0, align 8
@C3VERT = common global i64 0, align 8
@C2VERT = common global i64 0, align 8
@C4HORIZ = common global i64 0, align 8
@C3HORIZ = common global i64 0, align 8
@C2HORIZ = common global i64 0, align 8
@C4UP_R = common global i64 0, align 8
@C3UP_R = common global i64 0, align 8
@C2UP_R = common global i64 0, align 8
@C4UP_L = common global i64 0, align 8
@C3UP_L = common global i64 0, align 8
@C2UP_L = common global i64 0, align 8
@.str = hidden unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = hidden unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = hidden unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.3 = hidden unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.4 = hidden unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@.str.5 = hidden unnamed_addr constant [24 x i8] c"ERROR: Unknown player.\0A\00", align 1
@.str.6 = hidden unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = hidden unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = hidden unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = hidden unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = hidden unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = hidden unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.12 = hidden unnamed_addr constant [35 x i8] c"ERROR: Could not open indata file\0A\00", align 1
@.str.13 = hidden unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = hidden unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.16 = hidden unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = hidden unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = hidden unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.18 = hidden unnamed_addr constant [24 x i8] c"Using pruning method 1\0A\00", align 1
@.str.19 = hidden unnamed_addr constant [24 x i8] c"Using pruning method 2\0A\00", align 1
@.str.20 = hidden unnamed_addr constant [27 x i8] c"The player is the winner.\0A\00", align 1
@.str.21 = hidden unnamed_addr constant [29 x i8] c"The computer is the winner.\0A\00", align 1
@.str.22 = hidden unnamed_addr constant [13 x i8] c"It's a tie.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @init_patterns() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %13

; <label>:5:                                      ; preds = %2
  %6 = load i64, i64* @C4VERT, align 8
  %7 = or i64 %6, 1
  store i64 %7, i64* @C4VERT, align 8
  %8 = load i64, i64* @C4VERT, align 8
  %9 = shl i64 %8, 7
  store i64 %9, i64* @C4VERT, align 8
  br label %10

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* @C4VERT, align 8
  %15 = or i64 %14, 1
  store i64 %15, i64* @C4VERT, align 8
  %16 = load i64, i64* @C4VERT, align 8
  %17 = lshr i64 %16, 7
  store i64 %17, i64* @C3VERT, align 8
  %18 = load i64, i64* @C3VERT, align 8
  %19 = lshr i64 %18, 7
  store i64 %19, i64* @C2VERT, align 8
  store i64 15, i64* @C4HORIZ, align 8
  %20 = load i64, i64* @C4HORIZ, align 8
  %21 = lshr i64 %20, 1
  store i64 %21, i64* @C3HORIZ, align 8
  %22 = load i64, i64* @C3HORIZ, align 8
  %23 = lshr i64 %22, 1
  store i64 %23, i64* @C2HORIZ, align 8
  store i32 0, i32* %1, align 4
  br label %24

; <label>:24:                                     ; preds = %32, %13
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* @C4UP_R, align 8
  %29 = or i64 %28, 1
  store i64 %29, i64* @C4UP_R, align 8
  %30 = load i64, i64* @C4UP_R, align 8
  %31 = shl i64 %30, 8
  store i64 %31, i64* @C4UP_R, align 8
  br label %32

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %24

; <label>:35:                                     ; preds = %24
  %36 = load i64, i64* @C4UP_R, align 8
  %37 = or i64 %36, 1
  store i64 %37, i64* @C4UP_R, align 8
  %38 = load i64, i64* @C4UP_R, align 8
  %39 = lshr i64 %38, 8
  store i64 %39, i64* @C3UP_R, align 8
  %40 = load i64, i64* @C3UP_R, align 8
  %41 = lshr i64 %40, 8
  store i64 %41, i64* @C2UP_R, align 8
  store i32 0, i32* %1, align 4
  br label %42

; <label>:42:                                     ; preds = %50, %35
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %42
  %46 = load i64, i64* @C4UP_L, align 8
  %47 = or i64 %46, 8
  store i64 %47, i64* @C4UP_L, align 8
  %48 = load i64, i64* @C4UP_L, align 8
  %49 = shl i64 %48, 6
  store i64 %49, i64* @C4UP_L, align 8
  br label %50

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %42

; <label>:53:                                     ; preds = %42
  %54 = load i64, i64* @C4UP_L, align 8
  %55 = or i64 %54, 8
  store i64 %55, i64* @C4UP_L, align 8
  %56 = load i64, i64* @C4UP_L, align 8
  %57 = lshr i64 %56, 6
  store i64 %57, i64* @C3UP_L, align 8
  %58 = load i64, i64* @C3UP_L, align 8
  %59 = lshr i64 %58, 6
  store i64 %59, i64* @C2UP_L, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
