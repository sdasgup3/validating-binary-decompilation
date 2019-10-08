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

; Function Attrs: noinline nounwind
define %9* @sub_660_sum_2_n(%0* noalias dereferenceable(3376), i64, %9* noalias readnone returned) local_unnamed_addr #6 {
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
  %16 = add i64 %12, -28
  %17 = load i32, i32* %6, align 4
  %18 = add i64 %15, 6
  store i64 %18, i64* %4, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, -8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 7
  store i64 %23, i64* %4, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 0, i32* %24, align 4
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, -4
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 7
  store i64 %28, i64* %4, align 8
  %29 = inttoptr i64 %26 to i32*
  store i32 0, i32* %29, align 4
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 12
  store i64 %31, i64* %4, align 8
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
  store i64 %43, i64* %7, align 8
  %44 = add i64 %155, 4
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %45, 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  store i64 %46, i64* %11, align 8
  %49 = add i64 %155, 5
  store i64 %49, i64* %4, align 8
  %50 = inttoptr i64 %46 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %4, align 8
  %52 = add i64 %45, 16
  store i64 %52, i64* %11, align 8
  ret %9* %2

; <label>:53:                                     ; preds = %116
  %54 = add i64 %155, 3
  store i64 %54, i64* %4, align 8
  %55 = load i32, i32* %121, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %7, align 8
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
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #9
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
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, -4
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %4, align 8
  %91 = inttoptr i64 %88 to i32*
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
  %117 = phi i64 [ %115, %53 ], [ %31, %3 ]
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, -4
  %120 = add i64 %117, 3
  store i64 %120, i64* %4, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %7, align 8
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

