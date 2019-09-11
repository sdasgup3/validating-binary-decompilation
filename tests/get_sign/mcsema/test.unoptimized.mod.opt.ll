; ModuleID = 'test.unoptimized.mod.ll'
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
define %9* @sub_660_get_sign(%0* noalias nocapture dereferenceable(3376), i64, %9* noalias readnone returned) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 11, i32 0
  %6 = bitcast %2* %5 to i32*
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %4, align 8
  %11 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14, align 8
  store i64 %13, i64* %11, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %13, i64* %8, align 8
  %16 = add i64 %12, -12
  %17 = load i32, i32* %6, align 4
  %18 = add i64 %15, 6
  store i64 %18, i64* %4, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, -4
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %4, align 8
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %26, align 1
  %27 = and i32 %25, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27), !range !0
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = icmp eq i32 %25, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %25, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %40, align 1
  %41 = xor i1 %34, true
  %42 = icmp eq i8 %38, 0
  %43 = and i1 %42, %41
  %44 = select i1 %43, i64 13, i64 6
  %45 = add i64 %44, %22
  %46 = add i64 %45, 5
  store i64 %46, i64* %4, align 8
  br i1 %43, label %49, label %47

; <label>:47:                                     ; preds = %3
  store i64 1, i64* %7, align 8
  %48 = add i64 %45, 12
  store i64 %48, i64* %4, align 8
  br label %50

; <label>:49:                                     ; preds = %3
  store i64 0, i64* %7, align 8
  br label %50

; <label>:50:                                     ; preds = %49, %47
  %51 = phi i64 [ %46, %49 ], [ %48, %47 ]
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %8, align 8
  store i64 %54, i64* %11, align 8
  %57 = add i64 %51, 2
  store i64 %57, i64* %4, align 8
  %58 = inttoptr i64 %54 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %4, align 8
  %60 = add i64 %53, 16
  store i64 %60, i64* %11, align 8
  ret %9* %2
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind }

!0 = !{i32 0, i32 9}
