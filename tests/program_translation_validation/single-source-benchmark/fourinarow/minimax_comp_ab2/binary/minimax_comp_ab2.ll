; ModuleID = 'minimax_comp_ab2.bc'
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
define i32 @minimax_comp_ab2(i32, i64, i64, i32*, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -100000, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DEPTH, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @value(i64 %21, i64 %22)
  store i32 %23, i32* %6, align 4
  br label %62

; <label>:24:                                     ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

; <label>:25:                                     ; preds = %55, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %58

; <label>:28:                                     ; preds = %25
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @bit_place_piece(i32 %30, i32 2, i64* %8, i64* %16)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %28
  br label %55

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @minimax_player_ab2(i32 %36, i64 %37, i64 %38, i32* %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %14, align 4
  br label %48

; <label>:48:                                     ; preds = %45, %34
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %62

; <label>:54:                                     ; preds = %48
  br label %55

; <label>:55:                                     ; preds = %54, %33
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %25

; <label>:58:                                     ; preds = %25
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

; <label>:62:                                     ; preds = %58, %52, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_player_ab2(i32, i64, i64, i32*, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @bit_place_piece(i32, i32, i64*, i64*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
