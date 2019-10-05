; ModuleID = 'think.bc'
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
define i32 @think([7 x i8]*, i32, i32) #0 {
  %4 = alloca [7 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i8 111, i8* %12, align 1
  store i32 0, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %49, %3
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %52

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %10, align 4
  br label %18

; <label>:18:                                     ; preds = %45, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %48

; <label>:21:                                     ; preds = %18
  %22 = load [7 x i8]*, [7 x i8]** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 %24
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %21
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 7
  %40 = add nsw i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %36, %41
  %43 = or i64 %35, %42
  store i64 %43, i64* %7, align 8
  br label %44

; <label>:44:                                     ; preds = %34, %21
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %18

; <label>:48:                                     ; preds = %18
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %14

; <label>:52:                                     ; preds = %14
  store i8 120, i8* %12, align 1
  store i32 0, i32* %11, align 4
  br label %53

; <label>:53:                                     ; preds = %88, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 6
  br i1 %55, label %56, label %91

; <label>:56:                                     ; preds = %53
  store i32 0, i32* %10, align 4
  br label %57

; <label>:57:                                     ; preds = %84, %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 7
  br i1 %59, label %60, label %87

; <label>:60:                                     ; preds = %57
  %61 = load [7 x i8]*, [7 x i8]** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %61, i64 %63
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i8], [7 x i8]* %64, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %83

; <label>:73:                                     ; preds = %60
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 7
  %79 = add nsw i32 %76, %78
  %80 = zext i32 %79 to i64
  %81 = shl i64 %75, %80
  %82 = or i64 %74, %81
  store i64 %82, i64* %8, align 8
  br label %83

; <label>:83:                                     ; preds = %73, %60
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %57

; <label>:87:                                     ; preds = %57
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %53

; <label>:91:                                     ; preds = %53
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %109

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @minimax_comp_ab(i32 1, i64 %98, i64 %99, i32* %13, i32 -100000, i32 100000)
  br label %101

; <label>:101:                                    ; preds = %97, %94
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

; <label>:104:                                    ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @minimax_player_ab(i32 1, i64 %105, i64 %106, i32* %13, i32 -100000, i32 100000)
  br label %108

; <label>:108:                                    ; preds = %104, %101
  br label %143

; <label>:109:                                    ; preds = %91
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %127

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %119

; <label>:115:                                    ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @minimax_comp_ab2(i32 1, i64 %116, i64 %117, i32* %13, i32 100000)
  br label %119

; <label>:119:                                    ; preds = %115, %112
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %126

; <label>:122:                                    ; preds = %119
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @minimax_player_ab2(i32 1, i64 %123, i64 %124, i32* %13, i32 -100000)
  br label %126

; <label>:126:                                    ; preds = %122, %119
  br label %142

; <label>:127:                                    ; preds = %109
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %134

; <label>:130:                                    ; preds = %127
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @minimax_comp(i32 1, i64 %131, i64 %132, i32* %13)
  br label %134

; <label>:134:                                    ; preds = %130, %127
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %141

; <label>:137:                                    ; preds = %134
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @minimax_player(i32 1, i64 %138, i64 %139, i32* %13)
  br label %141

; <label>:141:                                    ; preds = %137, %134
  br label %142

; <label>:142:                                    ; preds = %141, %126
  br label %143

; <label>:143:                                    ; preds = %142, %108
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @bit_place_piece(i32 %144, i32 2, i64* %7, i64* %8)
  %146 = load i32, i32* %13, align 4
  ret i32 %146
}

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_comp_ab(i32, i64, i64, i32*, i32, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_player_ab(i32, i64, i64, i32*, i32, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_comp_ab2(i32, i64, i64, i32*, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_player_ab2(i32, i64, i64, i32*, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_comp(i32, i64, i64, i32*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @minimax_player(i32, i64, i64, i32*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @bit_place_piece(i32, i32, i64*, i64*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
