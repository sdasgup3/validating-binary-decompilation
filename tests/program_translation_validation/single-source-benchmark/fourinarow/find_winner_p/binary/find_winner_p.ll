; ModuleID = 'find_winner_p.bc'
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
declare i32 @board_full([7 x i8]*) #0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @find_winner_p([7 x i8]*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [7 x i8]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store [7 x i8]* %0, [7 x i8]** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %7, align 8
  %9 = load [7 x i8]*, [7 x i8]** %3, align 8
  %10 = call i32 @board_full([7 x i8]* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %2, align 4
  br label %179

; <label>:13:                                     ; preds = %1
  store i8 111, i8* %8, align 1
  store i32 0, i32* %5, align 4
  br label %14

; <label>:14:                                     ; preds = %49, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 6
  br i1 %16, label %17, label %52

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

; <label>:18:                                     ; preds = %45, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %48

; <label>:21:                                     ; preds = %18
  %22 = load [7 x i8]*, [7 x i8]** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %21
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 %38, 7
  %40 = add i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %36, %41
  %43 = or i64 %35, %42
  store i64 %43, i64* %6, align 8
  br label %44

; <label>:44:                                     ; preds = %34, %21
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %18

; <label>:48:                                     ; preds = %18
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

; <label>:52:                                     ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

; <label>:53:                                     ; preds = %70, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp ult i32 %54, 21
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @C4VERT, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 %58, %60
  %62 = and i64 %57, %61
  %63 = load i64, i64* @C4VERT, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 %63, %65
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %56
  store i32 1, i32* %2, align 4
  br label %179

; <label>:69:                                     ; preds = %56
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %53

; <label>:73:                                     ; preds = %53
  store i32 0, i32* %4, align 4
  br label %74

; <label>:74:                                     ; preds = %105, %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp ult i32 %75, 6
  br i1 %76, label %77, label %108

; <label>:77:                                     ; preds = %74
  store i32 0, i32* %5, align 4
  br label %78

; <label>:78:                                     ; preds = %101, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp ult i32 %79, 4
  br i1 %80, label %81, label %104

; <label>:81:                                     ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @C4HORIZ, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = mul i32 %85, 7
  %87 = add i32 %84, %86
  %88 = zext i32 %87 to i64
  %89 = shl i64 %83, %88
  %90 = and i64 %82, %89
  %91 = load i64, i64* @C4HORIZ, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = mul i32 %93, 7
  %95 = add i32 %92, %94
  %96 = zext i32 %95 to i64
  %97 = shl i64 %91, %96
  %98 = icmp eq i64 %90, %97
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %81
  store i32 1, i32* %2, align 4
  br label %179

; <label>:100:                                    ; preds = %81
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %78

; <label>:104:                                    ; preds = %78
  br label %105

; <label>:105:                                    ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %74

; <label>:108:                                    ; preds = %74
  store i32 0, i32* %4, align 4
  br label %109

; <label>:109:                                    ; preds = %140, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %143

; <label>:112:                                    ; preds = %109
  store i32 0, i32* %5, align 4
  br label %113

; <label>:113:                                    ; preds = %136, %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %139

; <label>:116:                                    ; preds = %113
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @C4UP_R, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = mul i32 %120, 7
  %122 = add i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = shl i64 %118, %123
  %125 = and i64 %117, %124
  %126 = load i64, i64* @C4UP_R, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = mul i32 %128, 7
  %130 = add i32 %127, %129
  %131 = zext i32 %130 to i64
  %132 = shl i64 %126, %131
  %133 = icmp eq i64 %125, %132
  br i1 %133, label %134, label %135

; <label>:134:                                    ; preds = %116
  store i32 1, i32* %2, align 4
  br label %179

; <label>:135:                                    ; preds = %116
  br label %136

; <label>:136:                                    ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %113

; <label>:139:                                    ; preds = %113
  br label %140

; <label>:140:                                    ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %109

; <label>:143:                                    ; preds = %109
  store i32 0, i32* %4, align 4
  br label %144

; <label>:144:                                    ; preds = %175, %143
  %145 = load i32, i32* %4, align 4
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %178

; <label>:147:                                    ; preds = %144
  store i32 0, i32* %5, align 4
  br label %148

; <label>:148:                                    ; preds = %171, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %174

; <label>:151:                                    ; preds = %148
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @C4UP_L, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = mul i32 %155, 7
  %157 = add i32 %154, %156
  %158 = zext i32 %157 to i64
  %159 = shl i64 %153, %158
  %160 = and i64 %152, %159
  %161 = load i64, i64* @C4UP_L, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %4, align 4
  %164 = mul i32 %163, 7
  %165 = add i32 %162, %164
  %166 = zext i32 %165 to i64
  %167 = shl i64 %161, %166
  %168 = icmp eq i64 %160, %167
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %151
  store i32 1, i32* %2, align 4
  br label %179

; <label>:170:                                    ; preds = %151
  br label %171

; <label>:171:                                    ; preds = %170
  %172 = load i32, i32* %5, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %148

; <label>:174:                                    ; preds = %148
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %144

; <label>:178:                                    ; preds = %144
  store i32 0, i32* %2, align 4
  br label %179

; <label>:179:                                    ; preds = %178, %169, %134, %99, %68, %12
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
