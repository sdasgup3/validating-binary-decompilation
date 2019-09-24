; ModuleID = 'test.proposed.inline.ll'
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %9* @sub_660_sum_2_n(%0* noalias nocapture dereferenceable(3376), i64, %9* noalias readnone returned) local_unnamed_addr #1 {
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
  %15 = add i64 %9, -28
  %16 = load i32, i32* %14, align 4
  %17 = add i64 %12, 6
  store i64 %17, i64* %4, align 8
  %18 = inttoptr i64 %15 to i32*
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, -8
  %22 = add i64 %19, 7
  store i64 %22, i64* %4, align 8
  %23 = inttoptr i64 %21 to i32*
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, -4
  %27 = add i64 %24, 7
  store i64 %27, i64* %4, align 8
  %28 = inttoptr i64 %26 to i32*
  store i32 0, i32* %28, align 4
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 12
  store i64 %30, i64* %4, align 8
  %31 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %32 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  %34 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  %35 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  %36 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  %37 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  br label %116

; <label>:38:                                     ; preds = %116
  %39 = add i64 %118, -8
  %40 = add i64 %155, 3
  store i64 %40, i64* %4, align 8
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %31, align 8
  %44 = add i64 %155, 4
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  store i64 %46, i64* %8, align 8
  %49 = add i64 %155, 5
  store i64 %49, i64* %4, align 8
  %50 = inttoptr i64 %46 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %4, align 8
  %52 = add i64 %45, 16
  store i64 %52, i64* %8, align 8
  ret %9* %2

; <label>:53:                                     ; preds = %116
  %54 = add i64 %155, 3
  store i64 %54, i64* %4, align 8
  %55 = load i32, i32* %121, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %31, align 8
  %57 = add i64 %118, -8
  %58 = add i64 %155, 6
  store i64 %58, i64* %4, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = icmp ult i32 %61, %60
  %63 = icmp ult i32 %61, %55
  %64 = or i1 %62, %63
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %32, align 1
  %66 = and i32 %61, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66)
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %33, align 1
  %71 = xor i32 %60, %55
  %72 = xor i32 %71, %61
  %73 = lshr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %34, align 1
  %76 = icmp eq i32 %61, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %35, align 1
  %78 = lshr i32 %61, 31
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %36, align 1
  %80 = lshr i32 %60, 31
  %81 = lshr i32 %55, 31
  %82 = xor i32 %78, %80
  %83 = xor i32 %78, %81
  %84 = add nuw nsw i32 %82, %83
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %37, align 1
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, -4
  %90 = add i64 %87, 4
  store i64 %90, i64* %4, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = icmp eq i32 %92, -1
  %95 = icmp eq i32 %93, 0
  %96 = or i1 %94, %95
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %32, align 1
  %98 = and i32 %93, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %33, align 1
  %103 = xor i32 %93, %92
  %104 = lshr i32 %103, 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %34, align 1
  %107 = zext i1 %95 to i8
  store i8 %107, i8* %35, align 1
  %108 = lshr i32 %93, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %36, align 1
  %110 = lshr i32 %92, 31
  %111 = xor i32 %108, %110
  %112 = add nuw nsw i32 %111, %108
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %37, align 1
  %115 = load i64, i64* %4, align 8
  br label %116

; <label>:116:                                    ; preds = %53, %3
  %117 = phi i64 [ %115, %53 ], [ %30, %3 ]
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, -4
  %120 = add i64 %117, 3
  store i64 %120, i64* %4, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %31, align 8
  %124 = add i64 %118, -20
  %125 = add i64 %117, 6
  store i64 %125, i64* %4, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = sub i32 %122, %127
  %129 = icmp ult i32 %122, %127
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %32, align 1
  %131 = and i32 %128, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %33, align 1
  %136 = xor i32 %127, %122
  %137 = xor i32 %136, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %34, align 1
  %141 = icmp eq i32 %128, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %35, align 1
  %143 = lshr i32 %128, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %36, align 1
  %145 = lshr i32 %122, 31
  %146 = lshr i32 %127, 31
  %147 = xor i32 %146, %145
  %148 = xor i32 %143, %145
  %149 = add nuw nsw i32 %148, %147
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %37, align 1
  %152 = icmp ne i8 %144, 0
  %153 = xor i1 %152, %150
  %154 = select i1 %153, i64 -10, i64 8
  %155 = add i64 %117, %154
  store i64 %155, i64* %4, align 8
  br i1 %153, label %53, label %38
}

; Function Attrs: norecurse nounwind
define %9* @routine_pushq_RBP(%0* nocapture, i64, %9* readnone returned) local_unnamed_addr #2 {
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
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_movq_RBP_RSP(%0* nocapture, i64, %9* readnone returned) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %1, 3
  store i64 %8, i64* %4, align 8
  store i64 %7, i64* %5, align 8
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_movl_m32_EDI(%0* nocapture, i64, %9* readnone returned, i64) local_unnamed_addr #2 {
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
  ret %9* %2
}

; Function Attrs: nounwind
define %9* @routine_cmpl_m32_imm32(%0* nocapture, i64, %9* readnone returned, i64, i64) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %8, %4
  %10 = add i64 %1, 4
  store i64 %10, i64* %6, align 8
  %11 = inttoptr i64 %9 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = trunc i64 %3 to i32
  %14 = sub i32 %12, %13
  %15 = icmp ult i32 %12, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %13
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %12, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %36, %37
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_movl_EAX_imm32(%0* nocapture, i64, %9* readnone returned, i64) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = add i64 %1, 5
  store i64 %7, i64* %5, align 8
  %8 = and i64 %3, 4294967295
  store i64 %8, i64* %6, align 8
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_popq_r64(%0* nocapture, i64, %9* readnone returned) local_unnamed_addr #2 {
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
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_retq(%0* nocapture, i64, %9* readnone returned) local_unnamed_addr #2 {
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
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define i1 @routine_jg_label(%0* nocapture, i64, %9* nocapture readnone, i64, i64) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %9* @routine_jmp_label(%0* nocapture, i64, %9* readnone returned, i64) local_unnamed_addr #2 {
  %5 = add i64 %3, %1
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_movl_m32_imm32(%0* nocapture dereferenceable(3376), i64, %9* readnone returned, i64, i64) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %8, %4
  %10 = add i64 %1, 7
  store i64 %10, i64* %6, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %9 to i32*
  store i32 %11, i32* %12, align 4
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_movl_EAX_m32(%0* nocapture dereferenceable(3376), i64, %9* readnone returned, i64) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %8, %3
  %10 = add i64 %1, 3
  store i64 %10, i64* %5, align 8
  %11 = inttoptr i64 %9 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define %9* @routine_movl_m32_EAX(%0* nocapture dereferenceable(3376), i64, %9* readnone returned, i64) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %2* %6 to i32*
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %9, %3
  %11 = load i32, i32* %7, align 4
  %12 = add i64 %1, 3
  store i64 %12, i64* %5, align 8
  %13 = inttoptr i64 %10 to i32*
  store i32 %11, i32* %13, align 4
  ret %9* %2
}

; Function Attrs: nounwind
define %9* @routine_addl_m32_EAX(%0* nocapture dereferenceable(3376), i64, %9* readnone returned, i64) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %2* %6 to i32*
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %9, %3
  %11 = load i32, i32* %7, align 4
  %12 = add i64 %1, 3
  store i64 %12, i64* %5, align 8
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = icmp ult i32 %15, %14
  %17 = icmp ult i32 %15, %11
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %15, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %14, %11
  %28 = xor i32 %27, %15
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %15, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %15, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %14, 31
  %40 = lshr i32 %11, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %9* %2
}

; Function Attrs: nounwind
define %9* @routine_addl_m32_imm32(%0* nocapture dereferenceable(3376), i64, %9* readnone returned, i64, i64) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %8, %4
  %10 = add i64 %1, 4
  store i64 %10, i64* %6, align 8
  %11 = inttoptr i64 %9 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = trunc i64 %3 to i32
  %14 = add i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = icmp ult i32 %14, %12
  %16 = icmp ult i32 %14, %13
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %14, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %13
  %27 = xor i32 %26, %14
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %14, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %12, 31
  %39 = lshr i32 %13, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %9* %2
}

; Function Attrs: nounwind
define %9* @routine_cmpl_EAX_m32(%0* nocapture dereferenceable(3376), i64, %9* readnone returned, i64) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %2* %6 to i32*
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i32, i32* %7, align 4
  %10 = load i64, i64* %8, align 8
  %11 = sub i64 %10, %3
  %12 = add i64 %1, 3
  store i64 %12, i64* %5, align 8
  %13 = inttoptr i64 %11 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %9, %14
  %16 = icmp ult i32 %9, %14
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %15, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %14, %9
  %26 = xor i32 %25, %15
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %15, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %14, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %9* %2
}

; Function Attrs: norecurse nounwind
define i1 @routine_jl_label(%0* nocapture dereferenceable(3376), i64, %9* nocapture readnone, i64, i64) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = select i1 %13, i64 %3, i64 %4
  %15 = add i64 %14, %1
  store i64 %15, i64* %6, align 8
  ret i1 %13
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
