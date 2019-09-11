; ModuleID = 'test.proposed.opt.ll'
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

; Function Attrs: alwaysinline nounwind
define %9* @sub_4004a6_get_sign(%0* noalias nocapture dereferenceable(3376), i64, %9* noalias readnone returned) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %4, align 8
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
  store i64 %10, i64* %8, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %10, i64* %5, align 8
  %13 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 11, i32 0
  %14 = bitcast %2* %13 to i32*
  %15 = add i64 %9, -12
  %16 = load i32, i32* %14, align 4
  %17 = add i64 %12, 6
  store i64 %17, i64* %4, align 8
  %18 = inttoptr i64 %15 to i32*
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, -4
  %22 = add i64 %19, 4
  store i64 %22, i64* %4, align 8
  %23 = inttoptr i64 %21 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %25, align 1
  %26 = and i32 %24, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26), !range !0
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = icmp eq i32 %24, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %24, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %39, align 1
  %40 = xor i1 %33, true
  %41 = icmp eq i8 %37, 0
  %42 = and i1 %41, %40
  %43 = select i1 %42, i64 13, i64 6
  %44 = add i64 %43, %19
  %45 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %46 = add i64 %44, 5
  store i64 %46, i64* %4, align 8
  br i1 %42, label %49, label %47

; <label>:47:                                     ; preds = %3
  store i64 1, i64* %45, align 8
  %48 = add i64 %44, 12
  store i64 %48, i64* %4, align 8
  br label %50

; <label>:49:                                     ; preds = %3
  store i64 0, i64* %45, align 8
  br label %50

; <label>:50:                                     ; preds = %49, %47
  %51 = phi i64 [ %46, %49 ], [ %48, %47 ]
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  store i64 %54, i64* %8, align 8
  %57 = add i64 %51, 2
  store i64 %57, i64* %4, align 8
  %58 = inttoptr i64 %54 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %4, align 8
  %60 = add i64 %53, 16
  store i64 %60, i64* %8, align 8
  ret %9* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define i32 @sub_pushq_RBP(%0* nocapture, i64, i64) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %4, align 8
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
  store i64 %10, i64* %8, align 8
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind
define i32 @sub_movq_RBP_RSP(%0* nocapture, i64, i64) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %1, 3
  store i64 %8, i64* %4, align 8
  store i64 %7, i64* %5, align 8
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind
define i32 @sub_movl_m32_EDI(%0* nocapture, i64, i64, i64) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %2* %6 to i32*
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %9, %3
  %11 = load i32, i32* %7, align 4
  %12 = add i64 %1, 3
  store i64 %12, i64* %5, align 8
  %13 = inttoptr i64 %10 to i32*
  store i32 %11, i32* %13, align 4
  ret i32 0
}

; Function Attrs: alwaysinline nounwind
define i32 @sub_cmpl_m32_imm32(%0* nocapture, i64, i64, i32, i64) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %8, %4
  %10 = add i64 %1, 4
  store i64 %10, i64* %6, align 8
  %11 = inttoptr i64 %9 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %12, %3
  %14 = icmp ult i32 %12, %3
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17), !range !0
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %3
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %12, 31
  %36 = xor i32 %32, %35
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind
define i32 @sub_movl_EAX_imm32(%0* nocapture, i64, i64, i64) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = add i64 %1, 5
  store i64 %7, i64* %5, align 8
  store i64 %3, i64* %6, align 8
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind
define i32 @sub_popq_RBP(%0* nocapture, i64, i64) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = add i64 %1, 1
  store i64 %6, i64* %4, align 8
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 8
  %10 = inttoptr i64 %8 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind
define i32 @sub_retq(%0* nocapture, i64, i64) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = add i64 %1, 1
  store i64 %5, i64* %4, align 8
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind
define i1 @sub_jg_label(%0* nocapture, i64, i64, i64, i64) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  %16 = xor i1 %12, %15
  %17 = xor i1 %16, true
  %18 = and i1 %9, %17
  %19 = select i1 %18, i64 %3, i64 %4
  %20 = add i64 %19, %1
  store i64 %20, i64* %6, align 8
  ret i1 %18
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { alwaysinline nounwind }
attributes #2 = { alwaysinline norecurse nounwind }

!0 = !{i32 0, i32 9}
