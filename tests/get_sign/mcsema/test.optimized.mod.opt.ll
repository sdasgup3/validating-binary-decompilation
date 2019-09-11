; ModuleID = 'test.optimized.mod.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%0 = type { %1, [32 x %3], %6, i64, i64, i64, %7 }
%1 = type { i32, i32, %2 }
%2 = type { i64 }
%3 = type { %4 }
%4 = type { %5 }
%5 = type { [8 x i64] }
%6 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%7 = type { i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8 }
%8 = type { %2 }
%9 = type opaque

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind
define %9* @sub_4004a6_get_sign(%0* noalias nocapture dereferenceable(3376), i64, %9* noalias readnone returned) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 11, i32 0
  %6 = bitcast %2* %5 to i32*
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  store i64 %12, i64* %8, align 8
  store i64 %12, i64* %9, align 8
  %14 = add i64 %11, -12
  %15 = load i32, i32* %6, align 4
  %16 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = and i32 %15, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18), !range !0
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = icmp eq i32 %15, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %15, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = xor i1 %25, true
  %33 = icmp eq i8 %29, 0
  %34 = and i1 %33, %32
  %35 = select i1 %34, i64 20, i64 13
  %36 = add i64 %35, %1
  %37 = add i64 %36, 5
  store i64 %37, i64* %4, align 8
  br i1 %34, label %45, label %38

; <label>:38:                                     ; preds = %3
  store i64 1, i64* %7, align 8
  %39 = add i64 %36, 12
  store i64 %39, i64* %4, align 8
  br label %40

; <label>:40:                                     ; preds = %45, %38
  %41 = load i64, i64* %13, align 8
  store i64 %41, i64* %9, align 8
  %42 = inttoptr i64 %11 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  %44 = add i64 %11, 8
  store i64 %44, i64* %8, align 8
  ret %9* %2

; <label>:45:                                     ; preds = %3
  store i64 0, i64* %7, align 8
  br label %40
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind }

!0 = !{i32 0, i32 9}
