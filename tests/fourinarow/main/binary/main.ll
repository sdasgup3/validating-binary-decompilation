; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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
@stderr = external global %struct._IO_FILE*, align 8
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
declare void @init_patterns() #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @init_board([7 x i8]*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @print_board([7 x i8]*) #0

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @place_piece(i32, i32, [7 x i8]*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @find_winner_p([7 x i8]*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @find_winner_c([7 x i8]*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @think([7 x i8]*, i32, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [7 x [7 x i8]], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %10, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %28, label %21

; <label>:21:                                     ; preds = %2
  %22 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %10, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %24 = icmp ne %struct._IO_FILE* %23, null
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

; <label>:27:                                     ; preds = %21
  br label %28

; <label>:28:                                     ; preds = %27, %2
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* @DEPTH)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* %7)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %34 = call i32 @fclose(%struct._IO_FILE* %33)
  %35 = load i32, i32* @DEPTH, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %28
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  br label %46

; <label>:46:                                     ; preds = %44, %28
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  br label %51

; <label>:51:                                     ; preds = %49, %46
  call void @init_patterns()
  %52 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  call void @init_board([7 x i8]* %52)
  %53 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  call void @print_board([7 x i8]* %53)
  br label %54

; <label>:54:                                     ; preds = %82, %80, %51
  %55 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %56 = call i32 @find_winner_p([7 x i8]* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %60 = call i32 @find_winner_c([7 x i8]* %59)
  %61 = icmp ne i32 %60, 0
  br label %62

; <label>:62:                                     ; preds = %58, %54
  %63 = phi i1 [ true, %54 ], [ %61, %58 ]
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %89

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @think([7 x i8]* %69, i32 1, i32 %70)
  %72 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %73 = call i32 @place_piece(i32 %71, i32 1, [7 x i8]* %72)
  br label %82

; <label>:74:                                     ; preds = %65
  %75 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* %9)
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %78 = call i32 @place_piece(i32 %76, i32 1, [7 x i8]* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %74
  br label %54

; <label>:81:                                     ; preds = %74
  br label %82

; <label>:82:                                     ; preds = %81, %68
  %83 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @think([7 x i8]* %83, i32 2, i32 %84)
  %86 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %87 = call i32 @place_piece(i32 %85, i32 2, [7 x i8]* %86)
  %88 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  call void @print_board([7 x i8]* %88)
  br label %54

; <label>:89:                                     ; preds = %62
  %90 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %91 = call i32 @find_winner_p([7 x i8]* %90)
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %95 = call i32 @find_winner_c([7 x i8]* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

; <label>:97:                                     ; preds = %93
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  br label %99

; <label>:99:                                     ; preds = %97, %93, %89
  %100 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %101 = call i32 @find_winner_c([7 x i8]* %100)
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %109

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %105 = call i32 @find_winner_p([7 x i8]* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

; <label>:107:                                    ; preds = %103
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  br label %109

; <label>:109:                                    ; preds = %107, %103, %99
  %110 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %111 = call i32 @find_winner_p([7 x i8]* %110)
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %121, label %113

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %115 = call i32 @find_winner_c([7 x i8]* %114)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i32 0, i32 0
  %119 = call i32 @find_winner_p([7 x i8]* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

; <label>:121:                                    ; preds = %117, %109
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  br label %123

; <label>:123:                                    ; preds = %121, %117, %113
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
