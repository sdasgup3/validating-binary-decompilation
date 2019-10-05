; ModuleID = 'minimax_comp_ab.bc'
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
declare i32 @value(i64, i64) #0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @minimax_comp_ab(i32, i64, i64, i32*, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DEPTH, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @value(i64 %24, i64 %25)
  store i32 %26, i32* %7, align 4
  br label %66

; <label>:27:                                     ; preds = %6
  store i32 0, i32* %14, align 4
  br label %28

; <label>:28:                                     ; preds = %59, %27
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %62

; <label>:37:                                     ; preds = %35
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %18, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @bit_place_piece(i32 %39, i32 2, i64* %9, i64* %18)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %37
  br label %59

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @minimax_player_ab(i32 %45, i64 %46, i64 %47, i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %43
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %16, align 4
  br label %58

; <label>:58:                                     ; preds = %55, %43
  br label %59

; <label>:59:                                     ; preds = %58, %42
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %28

; <label>:62:                                     ; preds = %35
  %63 = load i32, i32* %16, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %66

; <label>:66:                                     ; preds = %62, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_player_ab(i32, i64, i64, i32*, i32, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @bit_place_piece(i32, i32, i64*, i64*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
