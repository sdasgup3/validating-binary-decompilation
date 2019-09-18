; ModuleID = 'get_sign.bin.unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%0 = type { i64 }
%1 = type <{ i64, i64 }>
%2 = type <{ [8 x i8] }>
%3 = type <{ [24 x i8], i64, i64, i64, i64, i64, i64 }>
%4 = type <{ [8 x i8], i64 }>
%5 = type <{ [8 x i8] }>
%6 = type { %7, [32 x %8], %11, %0, %12, %14, %16, %17, %19, %23, %0, %24, %34 }
%7 = type { i32, i32, %0 }
%8 = type { %9 }
%9 = type { %10 }
%10 = type { [8 x i64] }
%11 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%12 = type { i16, %13, i16, %13, i16, %13, i16, %13, i16, %13, i16, %13 }
%13 = type { i16 }
%14 = type { i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15 }
%15 = type { %0 }
%16 = type { i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15, i64, %15 }
%17 = type { [8 x %18] }
%18 = type { i64, double }
%19 = type { [8 x %20] }
%20 = type { i64, %21 }
%21 = type { %22 }
%22 = type { [1 x i64] }
%23 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%24 = type { %25 }
%25 = type { %26, [96 x i8] }
%26 = type { %13, %13, %27, i8, i16, i32, %13, i16, i32, %13, i16, %28, %28, [8 x %29], [16 x %32] }
%27 = type { i8 }
%28 = type { i32 }
%29 = type { %30, [6 x i8] }
%30 = type { %31 }
%31 = type { [10 x i8] }
%32 = type { %33 }
%33 = type { [1 x i128] }
%34 = type { %35, %35, %35, %35, %35, %35 }
%35 = type { %0, i32, i32 }
%36 = type opaque
%37 = type { i8, i8 }

@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %0, align 1
@gCR1 = external global %0, align 1
@gCR2 = external global %0, align 1
@gCR3 = external global %0, align 1
@gCR4 = external global %0, align 1
@gCR8 = external global %0, align 1
@0 = internal global %1 <{ i64 ptrtoint (void ()* @15 to i64), i64 ptrtoint (void ()* @17 to i64) }>
@1 = internal global %2 zeroinitializer
@2 = internal global %3 <{ [24 x i8] c"\F8\0D \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @_ITM_deregisterTMCloneTable to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64), i64 ptrtoint (i64 (i64)* @_Jv_RegisterClasses to i64), i64 ptrtoint (i64 (i64, i64)* @_ITM_registerTMCloneTable to i64), i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64) }>
@3 = internal global %4 <{ [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%4* @3 to i64), i64 8) }>
@__bss_start = global %5 zeroinitializer
@4 = internal global i1 false
@5 = internal constant %36* (%6*, i64, %36*)* @16
@6 = internal constant void ()* @__mcsema_attach_call
@7 = internal constant %36* (%6*, i64, %36*)* @18
@8 = internal constant %36* (%6*, i64, %36*)* @20
@9 = internal constant %36* (%6*, i64, %36*)* @22
@10 = internal constant %36* (%6*, i64, %36*)* @23
@11 = internal constant %36* (%6*, i64, %36*)* @26
@12 = internal constant %36* (%6*, i64, %36*)* @27
@13 = internal constant %36* (%6*, i64, %36*)* @28
@14 = internal constant %36* (%6*, i64, %36*)* @29
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @30, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @31, i8* null }]

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %36* @__remill_error(%6*, i64, %36*) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define %36* @__remill_basic_block(%6* noalias, i64, %36* noalias) local_unnamed_addr #2 {
  %4 = alloca %6*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %36*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %6*, align 8
  %13 = alloca %36*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  store %6* %0, %6** %4, align 8
  store i64 %1, i64* %5, align 8
  store %36* %2, %36** %6, align 8
  store i8 0, i8* %7, align 1
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %6* %0, %6** %12, align 8
  store %36* %2, %36** %13, align 8
  %28 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %29 = getelementptr inbounds %16, %16* %28, i32 0, i32 33
  %30 = getelementptr inbounds %15, %15* %29, i32 0, i32 0
  %31 = bitcast %0* %30 to i64*
  store i64 %1, i64* %31, align 8
  %32 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %33 = getelementptr inbounds %16, %16* %32, i32 0, i32 1
  %34 = getelementptr inbounds %15, %15* %33, i32 0, i32 0
  %35 = bitcast %0* %34 to %37*
  %36 = getelementptr inbounds %37, %37* %35, i32 0, i32 1
  %37 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %38 = getelementptr inbounds %16, %16* %37, i32 0, i32 3
  %39 = getelementptr inbounds %15, %15* %38, i32 0, i32 0
  %40 = bitcast %0* %39 to %37*
  %41 = getelementptr inbounds %37, %37* %40, i32 0, i32 1
  %42 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %43 = getelementptr inbounds %16, %16* %42, i32 0, i32 5
  %44 = getelementptr inbounds %15, %15* %43, i32 0, i32 0
  %45 = bitcast %0* %44 to %37*
  %46 = getelementptr inbounds %37, %37* %45, i32 0, i32 1
  %47 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %48 = getelementptr inbounds %16, %16* %47, i32 0, i32 7
  %49 = getelementptr inbounds %15, %15* %48, i32 0, i32 0
  %50 = bitcast %0* %49 to %37*
  %51 = getelementptr inbounds %37, %37* %50, i32 0, i32 1
  %52 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %53 = getelementptr inbounds %16, %16* %52, i32 0, i32 1
  %54 = getelementptr inbounds %15, %15* %53, i32 0, i32 0
  %55 = bitcast %0* %54 to %37*
  %56 = getelementptr inbounds %37, %37* %55, i32 0, i32 0
  %57 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %58 = getelementptr inbounds %16, %16* %57, i32 0, i32 3
  %59 = getelementptr inbounds %15, %15* %58, i32 0, i32 0
  %60 = bitcast %0* %59 to %37*
  %61 = getelementptr inbounds %37, %37* %60, i32 0, i32 0
  %62 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %63 = getelementptr inbounds %16, %16* %62, i32 0, i32 5
  %64 = getelementptr inbounds %15, %15* %63, i32 0, i32 0
  %65 = bitcast %0* %64 to %37*
  %66 = getelementptr inbounds %37, %37* %65, i32 0, i32 0
  %67 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %68 = getelementptr inbounds %16, %16* %67, i32 0, i32 7
  %69 = getelementptr inbounds %15, %15* %68, i32 0, i32 0
  %70 = bitcast %0* %69 to %37*
  %71 = getelementptr inbounds %37, %37* %70, i32 0, i32 0
  %72 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %73 = getelementptr inbounds %16, %16* %72, i32 0, i32 9
  %74 = getelementptr inbounds %15, %15* %73, i32 0, i32 0
  %75 = bitcast %0* %74 to %37*
  %76 = getelementptr inbounds %37, %37* %75, i32 0, i32 0
  %77 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %78 = getelementptr inbounds %16, %16* %77, i32 0, i32 11
  %79 = getelementptr inbounds %15, %15* %78, i32 0, i32 0
  %80 = bitcast %0* %79 to %37*
  %81 = getelementptr inbounds %37, %37* %80, i32 0, i32 0
  %82 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %83 = getelementptr inbounds %16, %16* %82, i32 0, i32 13
  %84 = getelementptr inbounds %15, %15* %83, i32 0, i32 0
  %85 = bitcast %0* %84 to %37*
  %86 = getelementptr inbounds %37, %37* %85, i32 0, i32 0
  %87 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %88 = getelementptr inbounds %16, %16* %87, i32 0, i32 15
  %89 = getelementptr inbounds %15, %15* %88, i32 0, i32 0
  %90 = bitcast %0* %89 to %37*
  %91 = getelementptr inbounds %37, %37* %90, i32 0, i32 0
  %92 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %93 = getelementptr inbounds %16, %16* %92, i32 0, i32 17
  %94 = getelementptr inbounds %15, %15* %93, i32 0, i32 0
  %95 = bitcast %0* %94 to %37*
  %96 = getelementptr inbounds %37, %37* %95, i32 0, i32 0
  %97 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %98 = getelementptr inbounds %16, %16* %97, i32 0, i32 19
  %99 = getelementptr inbounds %15, %15* %98, i32 0, i32 0
  %100 = bitcast %0* %99 to %37*
  %101 = getelementptr inbounds %37, %37* %100, i32 0, i32 0
  %102 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %103 = getelementptr inbounds %16, %16* %102, i32 0, i32 21
  %104 = getelementptr inbounds %15, %15* %103, i32 0, i32 0
  %105 = bitcast %0* %104 to %37*
  %106 = getelementptr inbounds %37, %37* %105, i32 0, i32 0
  %107 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %108 = getelementptr inbounds %16, %16* %107, i32 0, i32 23
  %109 = getelementptr inbounds %15, %15* %108, i32 0, i32 0
  %110 = bitcast %0* %109 to %37*
  %111 = getelementptr inbounds %37, %37* %110, i32 0, i32 0
  %112 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %113 = getelementptr inbounds %16, %16* %112, i32 0, i32 25
  %114 = getelementptr inbounds %15, %15* %113, i32 0, i32 0
  %115 = bitcast %0* %114 to %37*
  %116 = getelementptr inbounds %37, %37* %115, i32 0, i32 0
  %117 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %118 = getelementptr inbounds %16, %16* %117, i32 0, i32 27
  %119 = getelementptr inbounds %15, %15* %118, i32 0, i32 0
  %120 = bitcast %0* %119 to %37*
  %121 = getelementptr inbounds %37, %37* %120, i32 0, i32 0
  %122 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %123 = getelementptr inbounds %16, %16* %122, i32 0, i32 29
  %124 = getelementptr inbounds %15, %15* %123, i32 0, i32 0
  %125 = bitcast %0* %124 to %37*
  %126 = getelementptr inbounds %37, %37* %125, i32 0, i32 0
  %127 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %128 = getelementptr inbounds %16, %16* %127, i32 0, i32 31
  %129 = getelementptr inbounds %15, %15* %128, i32 0, i32 0
  %130 = bitcast %0* %129 to %37*
  %131 = getelementptr inbounds %37, %37* %130, i32 0, i32 0
  %132 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %133 = getelementptr inbounds %16, %16* %132, i32 0, i32 1
  %134 = getelementptr inbounds %15, %15* %133, i32 0, i32 0
  %135 = bitcast %0* %134 to i16*
  %136 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %137 = getelementptr inbounds %16, %16* %136, i32 0, i32 3
  %138 = getelementptr inbounds %15, %15* %137, i32 0, i32 0
  %139 = bitcast %0* %138 to i16*
  %140 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %141 = getelementptr inbounds %16, %16* %140, i32 0, i32 5
  %142 = getelementptr inbounds %15, %15* %141, i32 0, i32 0
  %143 = bitcast %0* %142 to i16*
  %144 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %145 = getelementptr inbounds %16, %16* %144, i32 0, i32 7
  %146 = getelementptr inbounds %15, %15* %145, i32 0, i32 0
  %147 = bitcast %0* %146 to i16*
  %148 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %149 = getelementptr inbounds %16, %16* %148, i32 0, i32 9
  %150 = getelementptr inbounds %15, %15* %149, i32 0, i32 0
  %151 = bitcast %0* %150 to i16*
  %152 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %153 = getelementptr inbounds %16, %16* %152, i32 0, i32 11
  %154 = getelementptr inbounds %15, %15* %153, i32 0, i32 0
  %155 = bitcast %0* %154 to i16*
  %156 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %157 = getelementptr inbounds %16, %16* %156, i32 0, i32 13
  %158 = getelementptr inbounds %15, %15* %157, i32 0, i32 0
  %159 = bitcast %0* %158 to i16*
  %160 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %161 = getelementptr inbounds %16, %16* %160, i32 0, i32 15
  %162 = getelementptr inbounds %15, %15* %161, i32 0, i32 0
  %163 = bitcast %0* %162 to i16*
  %164 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %165 = getelementptr inbounds %16, %16* %164, i32 0, i32 17
  %166 = getelementptr inbounds %15, %15* %165, i32 0, i32 0
  %167 = bitcast %0* %166 to i16*
  %168 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %169 = getelementptr inbounds %16, %16* %168, i32 0, i32 19
  %170 = getelementptr inbounds %15, %15* %169, i32 0, i32 0
  %171 = bitcast %0* %170 to i16*
  %172 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %173 = getelementptr inbounds %16, %16* %172, i32 0, i32 21
  %174 = getelementptr inbounds %15, %15* %173, i32 0, i32 0
  %175 = bitcast %0* %174 to i16*
  %176 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %177 = getelementptr inbounds %16, %16* %176, i32 0, i32 23
  %178 = getelementptr inbounds %15, %15* %177, i32 0, i32 0
  %179 = bitcast %0* %178 to i16*
  %180 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %181 = getelementptr inbounds %16, %16* %180, i32 0, i32 25
  %182 = getelementptr inbounds %15, %15* %181, i32 0, i32 0
  %183 = bitcast %0* %182 to i16*
  %184 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %185 = getelementptr inbounds %16, %16* %184, i32 0, i32 27
  %186 = getelementptr inbounds %15, %15* %185, i32 0, i32 0
  %187 = bitcast %0* %186 to i16*
  %188 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %189 = getelementptr inbounds %16, %16* %188, i32 0, i32 29
  %190 = getelementptr inbounds %15, %15* %189, i32 0, i32 0
  %191 = bitcast %0* %190 to i16*
  %192 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %193 = getelementptr inbounds %16, %16* %192, i32 0, i32 31
  %194 = getelementptr inbounds %15, %15* %193, i32 0, i32 0
  %195 = bitcast %0* %194 to i16*
  %196 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %197 = getelementptr inbounds %16, %16* %196, i32 0, i32 33
  %198 = getelementptr inbounds %15, %15* %197, i32 0, i32 0
  %199 = bitcast %0* %198 to i16*
  %200 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %201 = getelementptr inbounds %16, %16* %200, i32 0, i32 1
  %202 = getelementptr inbounds %15, %15* %201, i32 0, i32 0
  %203 = bitcast %0* %202 to i32*
  %204 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %205 = getelementptr inbounds %16, %16* %204, i32 0, i32 3
  %206 = getelementptr inbounds %15, %15* %205, i32 0, i32 0
  %207 = bitcast %0* %206 to i32*
  %208 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %209 = getelementptr inbounds %16, %16* %208, i32 0, i32 5
  %210 = getelementptr inbounds %15, %15* %209, i32 0, i32 0
  %211 = bitcast %0* %210 to i32*
  %212 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %213 = getelementptr inbounds %16, %16* %212, i32 0, i32 7
  %214 = getelementptr inbounds %15, %15* %213, i32 0, i32 0
  %215 = bitcast %0* %214 to i32*
  %216 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %217 = getelementptr inbounds %16, %16* %216, i32 0, i32 9
  %218 = getelementptr inbounds %15, %15* %217, i32 0, i32 0
  %219 = bitcast %0* %218 to i32*
  %220 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %221 = getelementptr inbounds %16, %16* %220, i32 0, i32 11
  %222 = getelementptr inbounds %15, %15* %221, i32 0, i32 0
  %223 = bitcast %0* %222 to i32*
  %224 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %225 = getelementptr inbounds %16, %16* %224, i32 0, i32 13
  %226 = getelementptr inbounds %15, %15* %225, i32 0, i32 0
  %227 = bitcast %0* %226 to i32*
  %228 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %229 = getelementptr inbounds %16, %16* %228, i32 0, i32 15
  %230 = getelementptr inbounds %15, %15* %229, i32 0, i32 0
  %231 = bitcast %0* %230 to i32*
  %232 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %233 = getelementptr inbounds %16, %16* %232, i32 0, i32 33
  %234 = getelementptr inbounds %15, %15* %233, i32 0, i32 0
  %235 = bitcast %0* %234 to i32*
  %236 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %237 = getelementptr inbounds %16, %16* %236, i32 0, i32 17
  %238 = getelementptr inbounds %15, %15* %237, i32 0, i32 0
  %239 = bitcast %0* %238 to i32*
  %240 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %241 = getelementptr inbounds %16, %16* %240, i32 0, i32 19
  %242 = getelementptr inbounds %15, %15* %241, i32 0, i32 0
  %243 = bitcast %0* %242 to i32*
  %244 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %245 = getelementptr inbounds %16, %16* %244, i32 0, i32 21
  %246 = getelementptr inbounds %15, %15* %245, i32 0, i32 0
  %247 = bitcast %0* %246 to i32*
  %248 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %249 = getelementptr inbounds %16, %16* %248, i32 0, i32 23
  %250 = getelementptr inbounds %15, %15* %249, i32 0, i32 0
  %251 = bitcast %0* %250 to i32*
  %252 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %253 = getelementptr inbounds %16, %16* %252, i32 0, i32 25
  %254 = getelementptr inbounds %15, %15* %253, i32 0, i32 0
  %255 = bitcast %0* %254 to i32*
  %256 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %257 = getelementptr inbounds %16, %16* %256, i32 0, i32 27
  %258 = getelementptr inbounds %15, %15* %257, i32 0, i32 0
  %259 = bitcast %0* %258 to i32*
  %260 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %261 = getelementptr inbounds %16, %16* %260, i32 0, i32 29
  %262 = getelementptr inbounds %15, %15* %261, i32 0, i32 0
  %263 = bitcast %0* %262 to i32*
  %264 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %265 = getelementptr inbounds %16, %16* %264, i32 0, i32 31
  %266 = getelementptr inbounds %15, %15* %265, i32 0, i32 0
  %267 = bitcast %0* %266 to i32*
  %268 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %269 = getelementptr inbounds %16, %16* %268, i32 0, i32 1
  %270 = getelementptr inbounds %15, %15* %269, i32 0, i32 0
  %271 = bitcast %0* %270 to i64*
  %272 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %273 = getelementptr inbounds %16, %16* %272, i32 0, i32 3
  %274 = getelementptr inbounds %15, %15* %273, i32 0, i32 0
  %275 = bitcast %0* %274 to i64*
  %276 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %277 = getelementptr inbounds %16, %16* %276, i32 0, i32 5
  %278 = getelementptr inbounds %15, %15* %277, i32 0, i32 0
  %279 = bitcast %0* %278 to i64*
  %280 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %281 = getelementptr inbounds %16, %16* %280, i32 0, i32 7
  %282 = getelementptr inbounds %15, %15* %281, i32 0, i32 0
  %283 = bitcast %0* %282 to i64*
  %284 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %285 = getelementptr inbounds %16, %16* %284, i32 0, i32 9
  %286 = getelementptr inbounds %15, %15* %285, i32 0, i32 0
  %287 = bitcast %0* %286 to i64*
  %288 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %289 = getelementptr inbounds %16, %16* %288, i32 0, i32 11
  %290 = getelementptr inbounds %15, %15* %289, i32 0, i32 0
  %291 = bitcast %0* %290 to i64*
  %292 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %293 = getelementptr inbounds %16, %16* %292, i32 0, i32 13
  %294 = getelementptr inbounds %15, %15* %293, i32 0, i32 0
  %295 = bitcast %0* %294 to i64*
  %296 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %297 = getelementptr inbounds %16, %16* %296, i32 0, i32 15
  %298 = getelementptr inbounds %15, %15* %297, i32 0, i32 0
  %299 = bitcast %0* %298 to i64*
  %300 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %301 = getelementptr inbounds %16, %16* %300, i32 0, i32 17
  %302 = getelementptr inbounds %15, %15* %301, i32 0, i32 0
  %303 = bitcast %0* %302 to i64*
  %304 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %305 = getelementptr inbounds %16, %16* %304, i32 0, i32 19
  %306 = getelementptr inbounds %15, %15* %305, i32 0, i32 0
  %307 = bitcast %0* %306 to i64*
  %308 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %309 = getelementptr inbounds %16, %16* %308, i32 0, i32 21
  %310 = getelementptr inbounds %15, %15* %309, i32 0, i32 0
  %311 = bitcast %0* %310 to i64*
  %312 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %313 = getelementptr inbounds %16, %16* %312, i32 0, i32 23
  %314 = getelementptr inbounds %15, %15* %313, i32 0, i32 0
  %315 = bitcast %0* %314 to i64*
  %316 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %317 = getelementptr inbounds %16, %16* %316, i32 0, i32 25
  %318 = getelementptr inbounds %15, %15* %317, i32 0, i32 0
  %319 = bitcast %0* %318 to i64*
  %320 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %321 = getelementptr inbounds %16, %16* %320, i32 0, i32 27
  %322 = getelementptr inbounds %15, %15* %321, i32 0, i32 0
  %323 = bitcast %0* %322 to i64*
  %324 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %325 = getelementptr inbounds %16, %16* %324, i32 0, i32 29
  %326 = getelementptr inbounds %15, %15* %325, i32 0, i32 0
  %327 = bitcast %0* %326 to i64*
  %328 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %329 = getelementptr inbounds %16, %16* %328, i32 0, i32 31
  %330 = getelementptr inbounds %15, %15* %329, i32 0, i32 0
  %331 = bitcast %0* %330 to i64*
  %332 = getelementptr inbounds %6, %6* %0, i32 0, i32 6
  %333 = getelementptr inbounds %16, %16* %332, i32 0, i32 33
  %334 = getelementptr inbounds %15, %15* %333, i32 0, i32 0
  %335 = bitcast %0* %334 to i64*
  %336 = getelementptr inbounds %6, %6* %0, i32 0, i32 4
  %337 = getelementptr inbounds %12, %12* %336, i32 0, i32 1
  %338 = bitcast %13* %337 to i16*
  %339 = getelementptr inbounds %6, %6* %0, i32 0, i32 4
  %340 = getelementptr inbounds %12, %12* %339, i32 0, i32 3
  %341 = bitcast %13* %340 to i16*
  %342 = getelementptr inbounds %6, %6* %0, i32 0, i32 4
  %343 = getelementptr inbounds %12, %12* %342, i32 0, i32 5
  %344 = bitcast %13* %343 to i16*
  %345 = getelementptr inbounds %6, %6* %0, i32 0, i32 4
  %346 = getelementptr inbounds %12, %12* %345, i32 0, i32 7
  %347 = bitcast %13* %346 to i16*
  %348 = getelementptr inbounds %6, %6* %0, i32 0, i32 4
  %349 = getelementptr inbounds %12, %12* %348, i32 0, i32 9
  %350 = bitcast %13* %349 to i16*
  %351 = getelementptr inbounds %6, %6* %0, i32 0, i32 4
  %352 = getelementptr inbounds %12, %12* %351, i32 0, i32 11
  %353 = bitcast %13* %352 to i16*
  %354 = getelementptr inbounds %6, %6* %0, i32 0, i32 5
  %355 = getelementptr inbounds %14, %14* %354, i32 0, i32 5
  %356 = getelementptr inbounds %15, %15* %355, i32 0, i32 0
  %357 = bitcast %0* %356 to i64*
  %358 = getelementptr inbounds %6, %6* %0, i32 0, i32 5
  %359 = getelementptr inbounds %14, %14* %358, i32 0, i32 7
  %360 = getelementptr inbounds %15, %15* %359, i32 0, i32 0
  %361 = bitcast %0* %360 to i64*
  %362 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %363 = getelementptr inbounds [32 x %8], [32 x %8]* %362, i64 0, i64 0
  %364 = bitcast %8* %363 to %32*
  %365 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %366 = getelementptr inbounds [32 x %8], [32 x %8]* %365, i64 0, i64 1
  %367 = bitcast %8* %366 to %32*
  %368 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %369 = getelementptr inbounds [32 x %8], [32 x %8]* %368, i64 0, i64 2
  %370 = bitcast %8* %369 to %32*
  %371 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %372 = getelementptr inbounds [32 x %8], [32 x %8]* %371, i64 0, i64 3
  %373 = bitcast %8* %372 to %32*
  %374 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %375 = getelementptr inbounds [32 x %8], [32 x %8]* %374, i64 0, i64 4
  %376 = bitcast %8* %375 to %32*
  %377 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %378 = getelementptr inbounds [32 x %8], [32 x %8]* %377, i64 0, i64 5
  %379 = bitcast %8* %378 to %32*
  %380 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %381 = getelementptr inbounds [32 x %8], [32 x %8]* %380, i64 0, i64 6
  %382 = bitcast %8* %381 to %32*
  %383 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %384 = getelementptr inbounds [32 x %8], [32 x %8]* %383, i64 0, i64 7
  %385 = bitcast %8* %384 to %32*
  %386 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %387 = getelementptr inbounds [32 x %8], [32 x %8]* %386, i64 0, i64 8
  %388 = bitcast %8* %387 to %32*
  %389 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %390 = getelementptr inbounds [32 x %8], [32 x %8]* %389, i64 0, i64 9
  %391 = bitcast %8* %390 to %32*
  %392 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %393 = getelementptr inbounds [32 x %8], [32 x %8]* %392, i64 0, i64 10
  %394 = bitcast %8* %393 to %32*
  %395 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %396 = getelementptr inbounds [32 x %8], [32 x %8]* %395, i64 0, i64 11
  %397 = bitcast %8* %396 to %32*
  %398 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %399 = getelementptr inbounds [32 x %8], [32 x %8]* %398, i64 0, i64 12
  %400 = bitcast %8* %399 to %32*
  %401 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %402 = getelementptr inbounds [32 x %8], [32 x %8]* %401, i64 0, i64 13
  %403 = bitcast %8* %402 to %32*
  %404 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %405 = getelementptr inbounds [32 x %8], [32 x %8]* %404, i64 0, i64 14
  %406 = bitcast %8* %405 to %32*
  %407 = getelementptr inbounds %6, %6* %0, i32 0, i32 1
  %408 = getelementptr inbounds [32 x %8], [32 x %8]* %407, i64 0, i64 15
  %409 = bitcast %8* %408 to %32*
  %410 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %411 = getelementptr inbounds %17, %17* %410, i32 0, i32 0
  %412 = getelementptr inbounds [8 x %18], [8 x %18]* %411, i64 0, i64 0
  %413 = getelementptr inbounds %18, %18* %412, i32 0, i32 1
  %414 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %415 = getelementptr inbounds %17, %17* %414, i32 0, i32 0
  %416 = getelementptr inbounds [8 x %18], [8 x %18]* %415, i64 0, i64 1
  %417 = getelementptr inbounds %18, %18* %416, i32 0, i32 1
  %418 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %419 = getelementptr inbounds %17, %17* %418, i32 0, i32 0
  %420 = getelementptr inbounds [8 x %18], [8 x %18]* %419, i64 0, i64 2
  %421 = getelementptr inbounds %18, %18* %420, i32 0, i32 1
  %422 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %423 = getelementptr inbounds %17, %17* %422, i32 0, i32 0
  %424 = getelementptr inbounds [8 x %18], [8 x %18]* %423, i64 0, i64 3
  %425 = getelementptr inbounds %18, %18* %424, i32 0, i32 1
  %426 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %427 = getelementptr inbounds %17, %17* %426, i32 0, i32 0
  %428 = getelementptr inbounds [8 x %18], [8 x %18]* %427, i64 0, i64 4
  %429 = getelementptr inbounds %18, %18* %428, i32 0, i32 1
  %430 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %431 = getelementptr inbounds %17, %17* %430, i32 0, i32 0
  %432 = getelementptr inbounds [8 x %18], [8 x %18]* %431, i64 0, i64 5
  %433 = getelementptr inbounds %18, %18* %432, i32 0, i32 1
  %434 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %435 = getelementptr inbounds %17, %17* %434, i32 0, i32 0
  %436 = getelementptr inbounds [8 x %18], [8 x %18]* %435, i64 0, i64 6
  %437 = getelementptr inbounds %18, %18* %436, i32 0, i32 1
  %438 = getelementptr inbounds %6, %6* %0, i32 0, i32 7
  %439 = getelementptr inbounds %17, %17* %438, i32 0, i32 0
  %440 = getelementptr inbounds [8 x %18], [8 x %18]* %439, i64 0, i64 7
  %441 = getelementptr inbounds %18, %18* %440, i32 0, i32 1
  %442 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %443 = getelementptr inbounds %19, %19* %442, i32 0, i32 0
  %444 = getelementptr inbounds [8 x %20], [8 x %20]* %443, i64 0, i64 0
  %445 = getelementptr inbounds %20, %20* %444, i32 0, i32 1
  %446 = bitcast %21* %445 to %22*
  %447 = getelementptr inbounds %22, %22* %446, i32 0, i32 0
  %448 = getelementptr inbounds [1 x i64], [1 x i64]* %447, i64 0, i64 0
  %449 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %450 = getelementptr inbounds %19, %19* %449, i32 0, i32 0
  %451 = getelementptr inbounds [8 x %20], [8 x %20]* %450, i64 0, i64 1
  %452 = getelementptr inbounds %20, %20* %451, i32 0, i32 1
  %453 = bitcast %21* %452 to %22*
  %454 = getelementptr inbounds %22, %22* %453, i32 0, i32 0
  %455 = getelementptr inbounds [1 x i64], [1 x i64]* %454, i64 0, i64 0
  %456 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %457 = getelementptr inbounds %19, %19* %456, i32 0, i32 0
  %458 = getelementptr inbounds [8 x %20], [8 x %20]* %457, i64 0, i64 2
  %459 = getelementptr inbounds %20, %20* %458, i32 0, i32 1
  %460 = bitcast %21* %459 to %22*
  %461 = getelementptr inbounds %22, %22* %460, i32 0, i32 0
  %462 = getelementptr inbounds [1 x i64], [1 x i64]* %461, i64 0, i64 0
  %463 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %464 = getelementptr inbounds %19, %19* %463, i32 0, i32 0
  %465 = getelementptr inbounds [8 x %20], [8 x %20]* %464, i64 0, i64 3
  %466 = getelementptr inbounds %20, %20* %465, i32 0, i32 1
  %467 = bitcast %21* %466 to %22*
  %468 = getelementptr inbounds %22, %22* %467, i32 0, i32 0
  %469 = getelementptr inbounds [1 x i64], [1 x i64]* %468, i64 0, i64 0
  %470 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %471 = getelementptr inbounds %19, %19* %470, i32 0, i32 0
  %472 = getelementptr inbounds [8 x %20], [8 x %20]* %471, i64 0, i64 4
  %473 = getelementptr inbounds %20, %20* %472, i32 0, i32 1
  %474 = bitcast %21* %473 to %22*
  %475 = getelementptr inbounds %22, %22* %474, i32 0, i32 0
  %476 = getelementptr inbounds [1 x i64], [1 x i64]* %475, i64 0, i64 0
  %477 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %478 = getelementptr inbounds %19, %19* %477, i32 0, i32 0
  %479 = getelementptr inbounds [8 x %20], [8 x %20]* %478, i64 0, i64 5
  %480 = getelementptr inbounds %20, %20* %479, i32 0, i32 1
  %481 = bitcast %21* %480 to %22*
  %482 = getelementptr inbounds %22, %22* %481, i32 0, i32 0
  %483 = getelementptr inbounds [1 x i64], [1 x i64]* %482, i64 0, i64 0
  %484 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %485 = getelementptr inbounds %19, %19* %484, i32 0, i32 0
  %486 = getelementptr inbounds [8 x %20], [8 x %20]* %485, i64 0, i64 6
  %487 = getelementptr inbounds %20, %20* %486, i32 0, i32 1
  %488 = bitcast %21* %487 to %22*
  %489 = getelementptr inbounds %22, %22* %488, i32 0, i32 0
  %490 = getelementptr inbounds [1 x i64], [1 x i64]* %489, i64 0, i64 0
  %491 = getelementptr inbounds %6, %6* %0, i32 0, i32 8
  %492 = getelementptr inbounds %19, %19* %491, i32 0, i32 0
  %493 = getelementptr inbounds [8 x %20], [8 x %20]* %492, i64 0, i64 7
  %494 = getelementptr inbounds %20, %20* %493, i32 0, i32 1
  %495 = bitcast %21* %494 to %22*
  %496 = getelementptr inbounds %22, %22* %495, i32 0, i32 0
  %497 = getelementptr inbounds [1 x i64], [1 x i64]* %496, i64 0, i64 0
  %498 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %499 = getelementptr inbounds %11, %11* %498, i32 0, i32 5
  %500 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %501 = getelementptr inbounds %11, %11* %500, i32 0, i32 1
  %502 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %503 = getelementptr inbounds %11, %11* %502, i32 0, i32 11
  %504 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %505 = getelementptr inbounds %11, %11* %504, i32 0, i32 13
  %506 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %507 = getelementptr inbounds %11, %11* %506, i32 0, i32 3
  %508 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %509 = getelementptr inbounds %11, %11* %508, i32 0, i32 9
  %510 = getelementptr inbounds %6, %6* %0, i32 0, i32 2
  %511 = getelementptr inbounds %11, %11* %510, i32 0, i32 7
  store i64* @DR0, i64** %14, align 8
  store i64* @DR1, i64** %15, align 8
  store i64* @DR2, i64** %16, align 8
  store i64* @DR3, i64** %17, align 8
  store i64* @DR4, i64** %18, align 8
  store i64* @DR5, i64** %19, align 8
  store i64* @DR6, i64** %20, align 8
  store i64* @DR7, i64** %21, align 8
  store i64* getelementptr inbounds (%0, %0* @gCR0, i32 0, i32 0), i64** %22, align 8
  store i64* getelementptr inbounds (%0, %0* @gCR1, i32 0, i32 0), i64** %23, align 8
  store i64* getelementptr inbounds (%0, %0* @gCR2, i32 0, i32 0), i64** %24, align 8
  store i64* getelementptr inbounds (%0, %0* @gCR3, i32 0, i32 0), i64** %25, align 8
  store i64* getelementptr inbounds (%0, %0* @gCR4, i32 0, i32 0), i64** %26, align 8
  store i64* getelementptr inbounds (%0, %0* @gCR8, i32 0, i32 0), i64** %27, align 8
  ret %36* %2
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %36* @__remill_function_call(%6*, i64, %36*) local_unnamed_addr #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %36* @__remill_jump(%6*, i64, %36*) local_unnamed_addr #1

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_deregisterTMCloneTable(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_Jv_RegisterClasses(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_finalize(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_registerTMCloneTable(i64, i64) #3

; Function Attrs: noinline nounwind
define %36* @sub_6e0___libc_csu_init(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0
  %6 = bitcast %0* %5 to i32*
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 31, i32 0
  %8 = bitcast %0* %7 to i32*
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %10 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %12 = getelementptr inbounds %0, %0* %5, i64 0, i32 0
  %13 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %15 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %16 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %17 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %18 = getelementptr inbounds %0, %0* %7, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %1, 2
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %13, align 8, !tbaa !3
  %22 = add i64 %21, -8
  %23 = inttoptr i64 %22 to i64*
  store i64 %19, i64* %23, align 8
  %24 = load i64, i64* %17, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 2
  store i64 %26, i64* %4, align 8
  %27 = add i64 %21, -16
  %28 = inttoptr i64 %27 to i64*
  store i64 %24, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  store i64 %30, i64* %18, align 8, !tbaa !3
  %32 = load i64, i64* %16, align 8
  %33 = add i64 %31, 5
  store i64 %33, i64* %4, align 8
  %34 = add i64 %21, -24
  %35 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 2
  store i64 %38, i64* %4, align 8
  %39 = add i64 %21, -32
  %40 = inttoptr i64 %39 to i64*
  store i64 %36, i64* %40, align 8
  %41 = load i64, i64* %4, align 8
  store i64 ptrtoint (%1* @0 to i64), i64* %15, align 8, !tbaa !3
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %41, 8
  store i64 %43, i64* %4, align 8
  %44 = add i64 %21, -40
  %45 = inttoptr i64 %44 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %4, align 8
  store i64 add (i64 ptrtoint (%1* @0 to i64), i64 8), i64* %14, align 8, !tbaa !3
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, 8
  store i64 %48, i64* %4, align 8
  %49 = add i64 %21, -48
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %4, align 8
  store i64 %51, i64* %17, align 8, !tbaa !3
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %16, align 8, !tbaa !3
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  %58 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  %59 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  %60 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  %61 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  %62 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  %63 = lshr i64 %56, 2
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  %66 = ashr i64 %56, 3
  store i64 %66, i64* %14, align 8, !tbaa !3
  store i8 %65, i8* %57, align 1, !tbaa !7
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %58, align 1, !tbaa !7
  store i8 0, i8* %59, align 1, !tbaa !7
  %73 = icmp eq i64 %66, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %60, align 1, !tbaa !7
  %75 = lshr i64 %66, 63
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %61, align 1, !tbaa !7
  store i8 0, i8* %62, align 1, !tbaa !7
  %77 = add i64 %52, -515
  %78 = add i64 %52, 22
  %79 = add i64 %21, -64
  %80 = inttoptr i64 %79 to i64*
  store i64 %78, i64* %80, align 8
  store i64 %79, i64* %13, align 8, !tbaa !3
  store i64 %77, i64* %4, align 8, !tbaa !3
  %81 = tail call %36* @sub_4f8__init_proc(%6* %0, i64 %77, %36* %2)
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %4, align 8
  store i8 0, i8* %57, align 1, !tbaa !8
  %84 = trunc i64 %82 to i32
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %58, align 1, !tbaa !22
  %90 = icmp eq i64 %82, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %60, align 1, !tbaa !23
  %92 = lshr i64 %82, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %61, align 1, !tbaa !24
  store i8 0, i8* %62, align 1, !tbaa !25
  store i8 0, i8* %59, align 1, !tbaa !26
  %94 = select i1 %90, i64 37, i64 5
  %95 = add i64 %83, %94
  store i64 %95, i64* %4, align 8, !tbaa !3
  br i1 %90, label %97, label %151

; <label>:96:                                     ; preds = %153
  br label %97

; <label>:97:                                     ; preds = %96, %3
  %98 = phi i64 [ %95, %3 ], [ %201, %96 ]
  %99 = phi %36* [ %81, %3 ], [ %170, %96 ]
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 8
  store i64 %101, i64* %13, align 8, !tbaa !3
  %102 = icmp ugt i64 %100, -9
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %57, align 1, !tbaa !8
  %104 = trunc i64 %101 to i32
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %58, align 1, !tbaa !22
  %110 = xor i64 %101, %100
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %59, align 1, !tbaa !26
  %114 = icmp eq i64 %101, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %60, align 1, !tbaa !23
  %116 = lshr i64 %101, 63
  %117 = trunc i64 %116 to i8
  store i8 %117, i8* %61, align 1, !tbaa !24
  %118 = lshr i64 %100, 63
  %119 = xor i64 %116, %118
  %120 = add nuw nsw i64 %119, %116
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %62, align 1, !tbaa !25
  %123 = add i64 %98, 5
  store i64 %123, i64* %4, align 8
  %124 = add i64 %100, 16
  %125 = inttoptr i64 %101 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %9, align 8, !tbaa !3
  store i64 %124, i64* %13, align 8, !tbaa !3
  %127 = add i64 %98, 6
  store i64 %127, i64* %4, align 8
  %128 = add i64 %100, 24
  %129 = inttoptr i64 %124 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %14, align 8, !tbaa !3
  store i64 %128, i64* %13, align 8, !tbaa !3
  %131 = add i64 %98, 8
  store i64 %131, i64* %4, align 8
  %132 = add i64 %100, 32
  %133 = inttoptr i64 %128 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %15, align 8, !tbaa !3
  store i64 %132, i64* %13, align 8, !tbaa !3
  %135 = add i64 %98, 10
  store i64 %135, i64* %4, align 8
  %136 = add i64 %100, 40
  %137 = inttoptr i64 %132 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %16, align 8, !tbaa !3
  store i64 %136, i64* %13, align 8, !tbaa !3
  %139 = add i64 %98, 12
  store i64 %139, i64* %4, align 8
  %140 = add i64 %100, 48
  %141 = inttoptr i64 %136 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %17, align 8, !tbaa !3
  store i64 %140, i64* %13, align 8, !tbaa !3
  %143 = add i64 %98, 14
  store i64 %143, i64* %4, align 8
  %144 = add i64 %100, 56
  %145 = inttoptr i64 %140 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %18, align 8, !tbaa !3
  store i64 %144, i64* %13, align 8, !tbaa !3
  %147 = add i64 %98, 15
  store i64 %147, i64* %4, align 8
  %148 = inttoptr i64 %144 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %4, align 8, !tbaa !3
  %150 = add i64 %100, 64
  store i64 %150, i64* %13, align 8, !tbaa !3
  ret %36* %99

; <label>:151:                                    ; preds = %3
  store i64 0, i64* %9, align 8, !tbaa !3
  store i8 0, i8* %57, align 1, !tbaa !8
  store i8 1, i8* %58, align 1, !tbaa !22
  store i8 1, i8* %60, align 1, !tbaa !23
  store i8 0, i8* %61, align 1, !tbaa !24
  store i8 0, i8* %62, align 1, !tbaa !25
  store i8 0, i8* %59, align 1, !tbaa !26
  %152 = add i64 %95, 10
  store i64 %152, i64* %4, align 8
  br label %153

; <label>:153:                                    ; preds = %153, %151
  %154 = phi i64 [ 0, %151 ], [ %173, %153 ]
  %155 = phi i64 [ %152, %151 ], [ %201, %153 ]
  %156 = phi %36* [ %81, %151 ], [ %170, %153 ]
  %157 = load i64, i64* %16, align 8
  store i64 %157, i64* %10, align 8, !tbaa !3
  %158 = load i64, i64* %17, align 8
  store i64 %158, i64* %11, align 8, !tbaa !3
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %12, align 8, !tbaa !3
  %161 = load i64, i64* %15, align 8
  %162 = shl i64 %154, 3
  %163 = add i64 %162, %161
  %164 = add i64 %155, 13
  store i64 %164, i64* %4, align 8
  %165 = load i64, i64* %13, align 8, !tbaa !3
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167, align 8
  store i64 %166, i64* %13, align 8, !tbaa !3
  %168 = inttoptr i64 %163 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %4, align 8, !tbaa !3
  %170 = tail call %36* @__remill_function_call(%6* nonnull %0, i64 %169, %36* %156)
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %4, align 8
  %173 = add i64 %171, 1
  store i64 %173, i64* %9, align 8, !tbaa !3
  %174 = lshr i64 %173, 63
  %175 = load i64, i64* %14, align 8
  %176 = sub i64 %175, %173
  %177 = icmp ult i64 %175, %173
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %57, align 1, !tbaa !8
  %179 = trunc i64 %176 to i32
  %180 = and i32 %179, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %58, align 1, !tbaa !22
  %185 = xor i64 %173, %175
  %186 = xor i64 %185, %176
  %187 = lshr i64 %186, 4
  %188 = trunc i64 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %59, align 1, !tbaa !26
  %190 = icmp eq i64 %176, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %60, align 1, !tbaa !23
  %192 = lshr i64 %176, 63
  %193 = trunc i64 %192 to i8
  store i8 %193, i8* %61, align 1, !tbaa !24
  %194 = lshr i64 %175, 63
  %195 = xor i64 %174, %194
  %196 = xor i64 %192, %194
  %197 = add nuw nsw i64 %196, %195
  %198 = icmp eq i64 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %62, align 1, !tbaa !25
  %200 = select i1 %190, i64 9, i64 -13
  %201 = add i64 %172, %200
  store i64 %201, i64* %4, align 8, !tbaa !3
  br i1 %190, label %96, label %153
}

; Function Attrs: noinline norecurse nounwind
define %36* @sub_67b_init_var_correspondence(%6* noalias nocapture, i64, %36* noalias readnone returned) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %10 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %1, 1
  store i64 %13, i64* %4, align 8
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !3
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %12, i64* %17, align 8
  store i64 %16, i64* %14, align 8, !tbaa !3
  %18 = load i64, i64* %4, align 8
  store i64 %16, i64* %11, align 8, !tbaa !3
  store i64 10, i64* %5, align 8, !tbaa !3
  store i64 20, i64* %6, align 8, !tbaa !3
  store i64 30, i64* %7, align 8, !tbaa !3
  store i64 40, i64* %8, align 8, !tbaa !3
  store i64 50, i64* %9, align 8, !tbaa !3
  store i64 60, i64* %10, align 8, !tbaa !3
  %19 = add i64 %18, 52
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %17, align 8
  store i64 %20, i64* %11, align 8, !tbaa !3
  store i64 %15, i64* %14, align 8, !tbaa !3
  %21 = add i64 %18, 53
  store i64 %21, i64* %4, align 8
  %22 = inttoptr i64 %15 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8, !tbaa !3
  %24 = add i64 %15, 8
  store i64 %24, i64* %14, align 8, !tbaa !3
  ret %36* %2
}

; Function Attrs: noinline nounwind
define %36* @sub_660_get_sign(%6* noalias nocapture, i64, %36* noalias readnone returned) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0
  %6 = bitcast %0* %5 to i32*
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %4, align 8
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !3
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14, align 8
  store i64 %13, i64* %11, align 8, !tbaa !3
  %15 = load i64, i64* %4, align 8
  store i64 %13, i64* %8, align 8, !tbaa !3
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
  %26 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %26, align 1, !tbaa !8
  %27 = and i32 %25, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1, !tbaa !22
  %33 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1, !tbaa !26
  %34 = icmp eq i32 %25, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1, !tbaa !23
  %37 = lshr i32 %25, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1, !tbaa !24
  %40 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %40, align 1, !tbaa !25
  %41 = xor i1 %34, true
  %42 = icmp eq i8 %38, 0
  %43 = and i1 %42, %41
  %44 = select i1 %43, i64 13, i64 6
  %45 = add i64 %22, %44
  %46 = add i64 %45, 5
  store i64 %46, i64* %4, align 8
  br i1 %43, label %49, label %47

; <label>:47:                                     ; preds = %3
  store i64 1, i64* %7, align 8, !tbaa !3
  %48 = add i64 %45, 12
  store i64 %48, i64* %4, align 8, !tbaa !3
  br label %50

; <label>:49:                                     ; preds = %3
  store i64 0, i64* %7, align 8, !tbaa !3
  br label %50

; <label>:50:                                     ; preds = %49, %47
  %51 = phi i64 [ %46, %49 ], [ %48, %47 ]
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %11, align 8, !tbaa !3
  %54 = add i64 %53, 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %8, align 8, !tbaa !3
  store i64 %54, i64* %11, align 8, !tbaa !3
  %57 = add i64 %51, 2
  store i64 %57, i64* %4, align 8
  %58 = inttoptr i64 %54 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %4, align 8, !tbaa !3
  %60 = add i64 %53, 16
  store i64 %60, i64* %11, align 8, !tbaa !3
  ret %36* %2
}

; Function Attrs: noinline nounwind
define %36* @sub_4f8__init_proc(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  store i64 %8, i64* %6, align 8, !tbaa !3
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  %10 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  %12 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  %13 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  %15 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 40) to i64*), align 8
  store i64 %15, i64* %5, align 8, !tbaa !3
  store i8 0, i8* %9, align 1, !tbaa !8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %10, align 1, !tbaa !22
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %12, align 1, !tbaa !23
  %24 = lshr i64 %15, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %13, align 1, !tbaa !24
  store i8 0, i8* %14, align 1, !tbaa !25
  store i8 0, i8* %11, align 1, !tbaa !26
  %26 = select i1 %22, i64 18, i64 16
  %27 = add i64 %26, %1
  store i64 %27, i64* %4, align 8, !tbaa !3
  br i1 %22, label %28, label %58

; <label>:28:                                     ; preds = %58, %3
  %29 = phi i64 [ %27, %3 ], [ %64, %58 ]
  %30 = phi i64 [ %8, %3 ], [ %63, %58 ]
  %31 = phi %36* [ %2, %3 ], [ %62, %58 ]
  %32 = add i64 %30, 8
  store i64 %32, i64* %6, align 8, !tbaa !3
  %33 = icmp ugt i64 %30, -9
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %9, align 1, !tbaa !8
  %35 = trunc i64 %32 to i32
  %36 = and i32 %35, 255
  %37 = tail call i32 @llvm.ctpop.i32(i32 %36)
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  store i8 %40, i8* %10, align 1, !tbaa !22
  %41 = xor i64 %32, %30
  %42 = lshr i64 %41, 4
  %43 = trunc i64 %42 to i8
  %44 = and i8 %43, 1
  store i8 %44, i8* %11, align 1, !tbaa !26
  %45 = icmp eq i64 %32, 0
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %12, align 1, !tbaa !23
  %47 = lshr i64 %32, 63
  %48 = trunc i64 %47 to i8
  store i8 %48, i8* %13, align 1, !tbaa !24
  %49 = lshr i64 %30, 63
  %50 = xor i64 %47, %49
  %51 = add nuw nsw i64 %50, %47
  %52 = icmp eq i64 %51, 2
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %14, align 1, !tbaa !25
  %54 = add i64 %29, 5
  store i64 %54, i64* %4, align 8
  %55 = inttoptr i64 %32 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8, !tbaa !3
  %57 = add i64 %30, 16
  store i64 %57, i64* %6, align 8, !tbaa !3
  ret %36* %31

; <label>:58:                                     ; preds = %3
  %59 = add i64 %27, 2
  %60 = add i64 %7, -16
  %61 = inttoptr i64 %60 to i64*
  store i64 %59, i64* %61, align 8
  store i64 %60, i64* %6, align 8, !tbaa !3
  store i64 %15, i64* %4, align 8, !tbaa !3
  %62 = tail call %36* @__remill_function_call(%6* nonnull %0, i64 %15, %36* %2)
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %4, align 8
  br label %28
}

; Function Attrs: noinline nounwind
define %36* @sub_754__term_proc(%6* noalias nocapture, i64, %36* noalias readnone returned) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  %10 = xor i64 %7, %6
  %11 = lshr i64 %10, 4
  %12 = trunc i64 %11 to i8
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  %16 = lshr i64 %7, 63
  %17 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  %18 = lshr i64 %6, 63
  %19 = xor i64 %16, %18
  %20 = add nuw nsw i64 %19, %18
  %21 = icmp eq i64 %20, 2
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i64 %6, i64* %5, align 8, !tbaa !3
  %24 = icmp ult i64 %6, 8
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %8, align 1, !tbaa !8
  %26 = trunc i64 %6 to i32
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %9, align 1, !tbaa !22
  store i8 %13, i8* %14, align 1, !tbaa !26
  %32 = icmp eq i64 %6, 0
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %15, align 1, !tbaa !23
  %34 = trunc i64 %18 to i8
  store i8 %34, i8* %17, align 1, !tbaa !24
  store i8 %22, i8* %23, align 1, !tbaa !25
  %35 = add i64 %1, 9
  store i64 %35, i64* %4, align 8
  %36 = inttoptr i64 %6 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8, !tbaa !3
  %38 = add i64 %6, 8
  store i64 %38, i64* %5, align 8, !tbaa !3
  ret %36* %2
}

; Function Attrs: noinline nounwind
define %36* @sub_560_deregister_tm_clones(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 ptrtoint (%5* @__bss_start to i64), i64* %6, align 8, !tbaa !3
  store i64 add (i64 ptrtoint (%5* @__bss_start to i64), i64 7), i64* %5, align 8, !tbaa !3
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %1, 15
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %7, align 8, !tbaa !3
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %9, i64* %13, align 8
  store i64 %12, i64* %7, align 8, !tbaa !3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = sub i64 %14, %15
  store i64 %17, i64* %5, align 8, !tbaa !3
  %18 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  %19 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  %20 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  %21 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  %22 = lshr i64 %17, 63
  %23 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  %24 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i64 %12, i64* %8, align 8, !tbaa !3
  %25 = add i64 %17, -14
  %26 = icmp ult i64 %17, 14
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %18, align 1, !tbaa !8
  %28 = trunc i64 %25 to i32
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %19, align 1, !tbaa !22
  %34 = xor i64 %25, %17
  %35 = lshr i64 %34, 4
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %20, align 1, !tbaa !26
  %38 = icmp eq i64 %25, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %21, align 1, !tbaa !23
  %40 = lshr i64 %25, 63
  %41 = trunc i64 %40 to i8
  store i8 %41, i8* %23, align 1, !tbaa !24
  %42 = xor i64 %40, %22
  %43 = add nuw nsw i64 %42, %22
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %24, align 1, !tbaa !25
  %46 = or i1 %38, %26
  %47 = select i1 %46, i64 33, i64 12
  %48 = add i64 %16, %47
  store i64 %48, i64* %4, align 8, !tbaa !3
  br i1 %46, label %65, label %51

; <label>:49:                                     ; preds = %76
  store i64 1440, i64* %4, align 8
  %50 = tail call %36* @sub_5a0_register_tm_clones(%6* nonnull %0, i64 1440, %36* %2)
  ret %36* %50

; <label>:51:                                     ; preds = %3
  %52 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 24) to i64*), align 8
  store i64 %52, i64* %5, align 8, !tbaa !3
  store i8 0, i8* %18, align 1, !tbaa !8
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %19, align 1, !tbaa !22
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %21, align 1, !tbaa !23
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %23, align 1, !tbaa !24
  store i8 0, i8* %24, align 1, !tbaa !25
  store i8 0, i8* %20, align 1, !tbaa !26
  %63 = select i1 %59, i64 21, i64 12
  %64 = add i64 %48, %63
  store i64 %64, i64* %4, align 8, !tbaa !3
  br i1 %59, label %65, label %76

; <label>:65:                                     ; preds = %79, %51, %3
  %66 = phi i64 [ %11, %79 ], [ %12, %51 ], [ %12, %3 ]
  %67 = phi i64 [ 1424, %79 ], [ %64, %51 ], [ %48, %3 ]
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  %69 = add i64 %66, 8
  %70 = inttoptr i64 %66 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %8, align 8, !tbaa !3
  store i64 %69, i64* %7, align 8, !tbaa !3
  %72 = add i64 %67, 2
  store i64 %72, i64* %4, align 8
  %73 = inttoptr i64 %69 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %4, align 8, !tbaa !3
  %75 = add i64 %66, 16
  store i64 %75, i64* %7, align 8, !tbaa !3
  ret %36* %2

; <label>:76:                                     ; preds = %51
  %77 = add i64 %64, 1
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %8, align 8, !tbaa !3
  store i64 %11, i64* %7, align 8, !tbaa !3
  store i64 %52, i64* %4, align 8, !tbaa !3
  switch i64 %52, label %80 [
    i64 1426, label %49
    i64 1418, label %79
  ]

; <label>:79:                                     ; preds = %76
  store i64 1424, i64* %4, align 8
  br label %65

; <label>:80:                                     ; preds = %76
  %81 = tail call %36* @__remill_jump(%6* nonnull %0, i64 %52, %36* %2)
  ret %36* %81
}

; Function Attrs: noinline nounwind
define %36* @sub_5f0___do_global_dtors_aux(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i8, i8* getelementptr inbounds (%5, %5* @__bss_start, i64 0, i32 0, i64 0), align 8
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1, !tbaa !8
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !22
  %15 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1, !tbaa !26
  %16 = icmp eq i8 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1, !tbaa !23
  %19 = lshr i8 %7, 7
  %20 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1, !tbaa !24
  %21 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1, !tbaa !25
  %22 = select i1 %16, i64 9, i64 48
  %23 = add i64 %22, %1
  store i64 %23, i64* %4, align 8, !tbaa !3
  br i1 %16, label %43, label %24

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !3
  br label %76

; <label>:27:                                     ; preds = %67, %43
  %28 = phi i64 [ %59, %43 ], [ %75, %67 ]
  %29 = phi i64 [ %65, %43 ], [ %74, %67 ]
  %30 = phi %36* [ %2, %43 ], [ %73, %67 ]
  %31 = add i64 %29, -179
  %32 = add i64 %29, 5
  %33 = add i64 %28, -8
  %34 = inttoptr i64 %33 to i64*
  store i64 %32, i64* %34, align 8
  store i64 %33, i64* %57, align 8, !tbaa !3
  store i64 %31, i64* %4, align 8, !tbaa !3
  %35 = tail call %36* @sub_560_deregister_tm_clones(%6* nonnull %0, i64 %31, %36* %30)
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %57, align 8, !tbaa !3
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8, !tbaa !3
  store i64 %39, i64* %57, align 8, !tbaa !3
  %42 = add i64 %36, 8
  store i64 %42, i64* %4, align 8
  store i8 1, i8* getelementptr inbounds (%5, %5* @__bss_start, i64 0, i32 0, i64 0), align 8
  br label %76

; <label>:43:                                     ; preds = %3
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 64) to i64*), align 16
  store i8 0, i8* %8, align 1, !tbaa !8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46)
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  store i8 %50, i8* %14, align 1, !tbaa !22
  store i8 0, i8* %15, align 1, !tbaa !26
  %51 = icmp eq i64 %44, 0
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %18, align 1, !tbaa !23
  %53 = lshr i64 %44, 63
  %54 = trunc i64 %53 to i8
  store i8 %54, i8* %20, align 1, !tbaa !24
  store i8 0, i8* %21, align 1, !tbaa !25
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %23, 9
  store i64 %56, i64* %4, align 8
  %57 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8, !tbaa !3
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %55, i64* %60, align 8
  store i64 %59, i64* %57, align 8, !tbaa !3
  %61 = load i64, i64* %4, align 8
  store i64 %59, i64* %6, align 8, !tbaa !3
  %62 = load i8, i8* %18, align 1, !tbaa !23
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %63, i64 17, i64 5
  %65 = add i64 %61, %64
  store i64 %65, i64* %4, align 8, !tbaa !3
  %66 = icmp eq i8 %62, 1
  br i1 %66, label %27, label %67

; <label>:67:                                     ; preds = %43
  %68 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%4* @3 to i64), i64 8) to i64*), align 8
  store i64 %68, i64* %5, align 8, !tbaa !3
  %69 = add i64 %65, -231
  %70 = add i64 %65, 12
  %71 = add i64 %58, -16
  %72 = inttoptr i64 %71 to i64*
  store i64 %70, i64* %72, align 8
  store i64 %71, i64* %57, align 8, !tbaa !3
  store i64 %69, i64* %4, align 8, !tbaa !3
  %73 = tail call %36* @sub_520___cxa_finalize(%6* nonnull %0, i64 %69, %36* %2)
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %57, align 8, !tbaa !3
  br label %27

; <label>:76:                                     ; preds = %24, %27
  %77 = phi i64* [ %25, %24 ], [ %57, %27 ]
  %78 = phi i64 [ %26, %24 ], [ %39, %27 ]
  %79 = phi i64 [ %23, %24 ], [ %42, %27 ]
  %80 = phi %36* [ %2, %24 ], [ %35, %27 ]
  %81 = add i64 %79, 2
  store i64 %81, i64* %4, align 8
  %82 = inttoptr i64 %78 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %4, align 8, !tbaa !3
  %84 = add i64 %78, 8
  store i64 %84, i64* %77, align 8, !tbaa !3
  ret %36* %80
}

; Function Attrs: noinline nounwind
define %36* @sub_6b1_main(%6* noalias, i64, %36* noalias readnone returned) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %10 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %1, 1
  store i64 %13, i64* %4, align 8
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !3
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %12, i64* %17, align 8
  %18 = load i64, i64* %4, align 8
  store i64 %16, i64* %11, align 8, !tbaa !3
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, 4
  store i64 %20, i64* %4, align 8
  %21 = add i64 %15, -16
  %22 = inttoptr i64 %21 to i64*
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  %26 = add i64 %15, -24
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  %31 = add i64 %15, -32
  %32 = inttoptr i64 %31 to i64*
  store i64 %28, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  %36 = add i64 %15, -40
  %37 = inttoptr i64 %36 to i64*
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  %41 = add i64 %15, -48
  %42 = inttoptr i64 %41 to i64*
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  %46 = add i64 %15, -56
  %47 = inttoptr i64 %46 to i64*
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* %4, align 8
  store i64 0, i64* %5, align 8, !tbaa !3
  %49 = add i64 %48, -64
  %50 = add i64 %48, 10
  %51 = add i64 %15, -64
  %52 = inttoptr i64 %51 to i64*
  store i64 %50, i64* %52, align 8
  store i64 %51, i64* %14, align 8, !tbaa !3
  store i64 %49, i64* %4, align 8, !tbaa !3
  %53 = tail call %36* @sub_67b_init_var_correspondence(%6* %0, i64 %49, %36* %2)
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %14, align 8, !tbaa !3
  %57 = add i64 %56, 8
  %58 = inttoptr i64 %56 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8, !tbaa !3
  store i64 %57, i64* %14, align 8, !tbaa !3
  %60 = add i64 %54, 2
  store i64 %60, i64* %4, align 8
  %61 = add i64 %56, 16
  %62 = inttoptr i64 %57 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %6, align 8, !tbaa !3
  store i64 %61, i64* %14, align 8, !tbaa !3
  %64 = add i64 %54, 3
  store i64 %64, i64* %4, align 8
  %65 = add i64 %56, 24
  %66 = inttoptr i64 %61 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %7, align 8, !tbaa !3
  store i64 %65, i64* %14, align 8, !tbaa !3
  %68 = add i64 %54, 4
  store i64 %68, i64* %4, align 8
  %69 = add i64 %56, 32
  %70 = inttoptr i64 %65 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %8, align 8, !tbaa !3
  store i64 %69, i64* %14, align 8, !tbaa !3
  %72 = add i64 %54, 5
  store i64 %72, i64* %4, align 8
  %73 = inttoptr i64 %69 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8, !tbaa !3
  store i64 10, i64* %10, align 8, !tbaa !3
  %75 = add i64 %54, -101
  %76 = add i64 %54, 16
  %77 = add i64 %56, 40
  %78 = inttoptr i64 %77 to i64*
  store i64 %76, i64* %78, align 8
  store i64 %77, i64* %14, align 8, !tbaa !3
  store i64 %75, i64* %4, align 8, !tbaa !3
  %79 = tail call %36* @sub_660_get_sign(%6* %0, i64 %75, %36* %53)
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %14, align 8, !tbaa !3
  %83 = add i64 %82, 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %11, align 8, !tbaa !3
  store i64 %83, i64* %14, align 8, !tbaa !3
  %86 = add i64 %80, 2
  store i64 %86, i64* %4, align 8
  %87 = inttoptr i64 %83 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %4, align 8, !tbaa !3
  %89 = add i64 %82, 16
  store i64 %89, i64* %14, align 8, !tbaa !3
  ret %36* %79
}

; Function Attrs: noinline norecurse nounwind
define %36* @sub_750___libc_csu_fini(%6* noalias nocapture, i64, %36* noalias readnone returned) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = add i64 %1, 2
  store i64 %5, i64* %4, align 8
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !3
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8, !tbaa !3
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8, !tbaa !3
  ret %36* %2
}

; Function Attrs: noinline nounwind
define %36* @sub_5a0_register_tm_clones(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 ptrtoint (%5* @__bss_start to i64), i64* %7, align 8, !tbaa !3
  store i64 ptrtoint (%5* @__bss_start to i64), i64* %6, align 8, !tbaa !3
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %1, 15
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %8, align 8, !tbaa !3
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %10, i64* %14, align 8
  store i64 %13, i64* %8, align 8, !tbaa !3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sub i64 %15, %16
  %19 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  %20 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  %21 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  %22 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  %23 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  %24 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i64 %13, i64* %9, align 8, !tbaa !3
  %25 = ashr i64 %18, 3
  %26 = lshr i64 %25, 63
  store i64 %26, i64* %5, align 8, !tbaa !3
  %27 = add nsw i64 %26, %25
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = ashr i64 %27, 1
  store i64 %30, i64* %6, align 8, !tbaa !3
  store i8 %29, i8* %19, align 1, !tbaa !7
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  store i8 %36, i8* %20, align 1, !tbaa !7
  store i8 0, i8* %21, align 1, !tbaa !7
  %37 = icmp eq i64 %30, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %22, align 1, !tbaa !7
  %39 = lshr i64 %30, 63
  %40 = trunc i64 %39 to i8
  store i8 %40, i8* %23, align 1, !tbaa !7
  store i8 0, i8* %24, align 1, !tbaa !7
  %41 = select i1 %37, i64 49, i64 25
  %42 = add i64 %17, %41
  store i64 %42, i64* %4, align 8, !tbaa !3
  br i1 %37, label %66, label %44

; <label>:43:                                     ; preds = %58
  store i64 1504, i64* %4, align 8
  br label %66

; <label>:44:                                     ; preds = %3
  %45 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 56) to i64*), align 8
  store i64 %45, i64* %5, align 8, !tbaa !3
  store i8 0, i8* %19, align 1, !tbaa !8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 255
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47)
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  store i8 %51, i8* %20, align 1, !tbaa !22
  %52 = icmp eq i64 %45, 0
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %22, align 1, !tbaa !23
  %54 = lshr i64 %45, 63
  %55 = trunc i64 %54 to i8
  store i8 %55, i8* %23, align 1, !tbaa !24
  store i8 0, i8* %24, align 1, !tbaa !25
  store i8 0, i8* %21, align 1, !tbaa !26
  %56 = select i1 %52, i64 24, i64 12
  %57 = add i64 %42, %56
  store i64 %57, i64* %4, align 8, !tbaa !3
  br i1 %52, label %66, label %58

; <label>:58:                                     ; preds = %44
  %59 = add i64 %57, 1
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %8, align 8, !tbaa !3
  %61 = add i64 %60, 8
  %62 = inttoptr i64 %60 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8, !tbaa !3
  store i64 %61, i64* %8, align 8, !tbaa !3
  store i64 %45, i64* %4, align 8, !tbaa !3
  switch i64 %45, label %77 [
    i64 1506, label %64
    i64 1495, label %43
  ]

; <label>:64:                                     ; preds = %58
  store i64 1520, i64* %4, align 8
  %65 = tail call %36* @sub_5f0___do_global_dtors_aux(%6* nonnull %0, i64 1520, %36* %2)
  ret %36* %65

; <label>:66:                                     ; preds = %44, %43, %3
  %67 = phi i64 [ %57, %44 ], [ 1504, %43 ], [ %42, %3 ]
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %8, align 8, !tbaa !3
  %70 = add i64 %69, 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8, !tbaa !3
  store i64 %70, i64* %8, align 8, !tbaa !3
  %73 = add i64 %67, 2
  store i64 %73, i64* %4, align 8
  %74 = inttoptr i64 %70 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %4, align 8, !tbaa !3
  %76 = add i64 %69, 16
  store i64 %76, i64* %8, align 8, !tbaa !3
  ret %36* %2

; <label>:77:                                     ; preds = %58
  %78 = tail call %36* @__remill_jump(%6* nonnull %0, i64 %45, %36* %2)
  ret %36* %78
}

; Function Attrs: noinline nounwind
define %36* @sub_630_frame_dummy(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 ptrtoint (%2* @1 to i64), i64* %6, align 8, !tbaa !3
  %8 = load i64, i64* bitcast (%2* @1 to i64*), align 8
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1, !tbaa !8
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1, !tbaa !22
  %17 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1, !tbaa !26
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1, !tbaa !23
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1, !tbaa !24
  %24 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1, !tbaa !25
  %25 = select i1 %18, i64 13, i64 24
  %26 = add i64 %25, %1
  store i64 %26, i64* %4, align 8, !tbaa !3
  br i1 %18, label %60, label %46

; <label>:27:                                     ; preds = %46
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %59, 1
  store i64 %29, i64* %4, align 8
  %30 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !3
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %28, i64* %33, align 8
  %34 = load i64, i64* %4, align 8
  store i64 %32, i64* %7, align 8, !tbaa !3
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %34, 5
  %37 = add i64 %31, -16
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %30, align 8, !tbaa !3
  store i64 %35, i64* %4, align 8, !tbaa !3
  %39 = tail call %36* @__remill_function_call(%6* nonnull %0, i64 %35, %36* %2)
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %30, align 8, !tbaa !3
  %43 = add i64 %42, 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8, !tbaa !3
  store i64 %43, i64* %30, align 8, !tbaa !3
  br label %60

; <label>:46:                                     ; preds = %3
  %47 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 48) to i64*), align 16
  store i64 %47, i64* %5, align 8, !tbaa !3
  store i8 0, i8* %9, align 1, !tbaa !8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49)
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %16, align 1, !tbaa !22
  %54 = icmp eq i64 %47, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %20, align 1, !tbaa !23
  %56 = lshr i64 %47, 63
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %23, align 1, !tbaa !24
  store i8 0, i8* %24, align 1, !tbaa !25
  store i8 0, i8* %17, align 1, !tbaa !26
  %58 = select i1 %54, i64 -11, i64 12
  %59 = add i64 %26, %58
  store i64 %59, i64* %4, align 8, !tbaa !3
  br i1 %54, label %60, label %27

; <label>:60:                                     ; preds = %3, %46, %27
  %61 = phi i64 [ %41, %27 ], [ %59, %46 ], [ %26, %3 ]
  %62 = phi i64 [ 187, %27 ], [ 157, %46 ], [ 157, %3 ]
  %63 = phi %36* [ %39, %27 ], [ %2, %46 ], [ %2, %3 ]
  %64 = sub i64 %61, %62
  store i64 %64, i64* %4, align 8, !tbaa !3
  %65 = tail call %36* @sub_5a0_register_tm_clones(%6* nonnull %0, i64 %64, %36* %63)
  ret %36* %65
}

; Function Attrs: noinline nounwind
define %36* @sub_530__start(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %12 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %13 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %11, align 8, !tbaa !3
  %14 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1, !tbaa !8
  %15 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1, !tbaa !22
  %16 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %16, align 1, !tbaa !23
  %17 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1, !tbaa !24
  %18 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1, !tbaa !25
  %19 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1, !tbaa !26
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %13, align 8, !tbaa !3
  %21 = add i64 %1, 6
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %10, align 8, !tbaa !3
  %23 = add i64 %22, 8
  %24 = inttoptr i64 %22 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8, !tbaa !3
  store i64 %23, i64* %7, align 8, !tbaa !3
  %26 = and i64 %23, -16
  store i8 0, i8* %14, align 1, !tbaa !8
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 240
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  store i8 %32, i8* %15, align 1, !tbaa !22
  %33 = icmp eq i64 %26, 0
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %16, align 1, !tbaa !23
  %35 = lshr i64 %23, 63
  %36 = trunc i64 %35 to i8
  store i8 %36, i8* %17, align 1, !tbaa !24
  store i8 0, i8* %18, align 1, !tbaa !25
  store i8 0, i8* %19, align 1, !tbaa !26
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %1, 14
  store i64 %38, i64* %4, align 8
  %39 = add i64 %26, -8
  %40 = inttoptr i64 %39 to i64*
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  %43 = add i64 %26, -16
  %44 = inttoptr i64 %43 to i64*
  store i64 %39, i64* %44, align 16
  %45 = load i64, i64* %4, align 8
  store i64 ptrtoint (void ()* @19 to i64), i64* %12, align 8, !tbaa !3
  store i64 ptrtoint (void ()* @21 to i64), i64* %6, align 8, !tbaa !3
  store i64 ptrtoint (void ()* @main to i64), i64* %9, align 8, !tbaa !3
  %46 = add i64 %45, 27
  %47 = add i64 %26, -24
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48, align 8
  store i64 %47, i64* %10, align 8, !tbaa !3
  %49 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 32) to i64*), align 16
  store i64 %49, i64* %4, align 8, !tbaa !3
  %50 = tail call fastcc %36* @24(%6* %0, %36* %2)
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  %53 = tail call %36* @__remill_error(%6* %0, i64 %52, %36* %50)
  ret %36* %53
}

; Function Attrs: noinline nounwind
define %36* @sub_520___cxa_finalize(%6* noalias, i64, %36* noalias) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%3* @2 to i64), i64 64) to i64*), align 16
  store i64 %5, i64* %4, align 8, !tbaa !3
  %6 = tail call fastcc %36* @25(%6* %0, %36* %2)
  ret %36* %6
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #3

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @15() #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x630;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @5, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @16(%6*, i64, %36*) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_630_frame_dummy(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @17() #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x5f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @7, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @18(%6*, i64, %36*) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_5f0___do_global_dtors_aux(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @19() #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @8, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: norecurse nounwind
define internal %36* @20(%6* nocapture, i64, %36* readnone returned) #8 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_750___libc_csu_fini(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @21() #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x6e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @9, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @22(%6*, i64, %36*) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_6e0___libc_csu_init(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x6b1;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @10, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @23(%6*, i64, %36* readnone returned) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_6b1_main(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: noinline nounwind
define internal fastcc %36* @24(%6*, %36*) unnamed_addr #4 {
  %3 = tail call %36* @__remill_function_call(%6* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %36* %1)
  ret %36* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %36* @25(%6*, %36*) unnamed_addr #4 {
  %3 = tail call %36* @__remill_function_call(%6* %0, i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64), %36* %1)
  ret %36* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @get_sign() local_unnamed_addr #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @11, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @26(%6* nocapture, i64, %36* readnone returned) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_660_get_sign(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4f8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @12, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @27(%6*, i64, %36*) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_4f8__init_proc(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @init_var_correspondence() local_unnamed_addr #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x67b;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @13, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: norecurse nounwind
define internal %36* @28(%6* nocapture, i64, %36* readnone returned) #8 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_67b_init_var_correspondence(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #6 {
  tail call void asm sideeffect "pushq $0;pushq $$0x754;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%36* (%6*, i64, %36*)** nonnull @14, void ()** nonnull @6) #7
  ret void
}

; Function Attrs: nounwind
define internal %36* @29(%6* nocapture, i64, %36* readnone returned) #7 {
  %4 = load volatile i1, i1* @4, align 1
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @4, align 1
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = tail call %36* @sub_754__term_proc(%6* %0, i64 %1, %36* %2)
  ret %36* %7
}

; Function Attrs: nounwind
define internal void @30() #7 {
  %1 = load volatile i1, i1* @4, align 1
  br i1 %1, label %3, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @4, align 1
  br label %3

; <label>:3:                                      ; preds = %0, %2
  tail call void @21()
  ret void
}

; Function Attrs: nounwind
define internal void @31() #7 {
  tail call void @19()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone }
attributes #2 = { noinline nounwind optnone }
attributes #3 = { noinline }
attributes #4 = { noinline nounwind }
attributes #5 = { noinline norecurse nounwind }
attributes #6 = { naked nobuiltin noinline nounwind }
attributes #7 = { nounwind }
attributes #8 = { norecurse nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !5, i64 2065}
!9 = !{!"_ZTS5State", !5, i64 16, !10, i64 2064, !5, i64 2080, !11, i64 2088, !13, i64 2112, !15, i64 2208, !16, i64 2480, !17, i64 2608, !18, i64 2736, !5, i64 2760, !5, i64 2768, !19, i64 3280}
!10 = !{!"_ZTS10ArithFlags", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15}
!11 = !{!"_ZTS8Segments", !12, i64 0, !5, i64 2, !12, i64 4, !5, i64 6, !12, i64 8, !5, i64 10, !12, i64 12, !5, i64 14, !12, i64 16, !5, i64 18, !12, i64 20, !5, i64 22}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTS12AddressSpace", !4, i64 0, !14, i64 8, !4, i64 16, !14, i64 24, !4, i64 32, !14, i64 40, !4, i64 48, !14, i64 56, !4, i64 64, !14, i64 72, !4, i64 80, !14, i64 88}
!14 = !{!"_ZTS3Reg", !5, i64 0}
!15 = !{!"_ZTS3GPR", !4, i64 0, !14, i64 8, !4, i64 16, !14, i64 24, !4, i64 32, !14, i64 40, !4, i64 48, !14, i64 56, !4, i64 64, !14, i64 72, !4, i64 80, !14, i64 88, !4, i64 96, !14, i64 104, !4, i64 112, !14, i64 120, !4, i64 128, !14, i64 136, !4, i64 144, !14, i64 152, !4, i64 160, !14, i64 168, !4, i64 176, !14, i64 184, !4, i64 192, !14, i64 200, !4, i64 208, !14, i64 216, !4, i64 224, !14, i64 232, !4, i64 240, !14, i64 248, !4, i64 256, !14, i64 264}
!16 = !{!"_ZTS8X87Stack", !5, i64 0}
!17 = !{!"_ZTS3MMX", !5, i64 0}
!18 = !{!"_ZTS14FPUStatusFlags", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20}
!19 = !{!"_ZTS13SegmentCaches", !20, i64 0, !20, i64 16, !20, i64 32, !20, i64 48, !20, i64 64, !20, i64 80}
!20 = !{!"_ZTS13SegmentShadow", !5, i64 0, !21, i64 8, !21, i64 12}
!21 = !{!"int", !5, i64 0}
!22 = !{!9, !5, i64 2067}
!23 = !{!9, !5, i64 2071}
!24 = !{!9, !5, i64 2073}
!25 = !{!9, !5, i64 2077}
!26 = !{!9, !5, i64 2069}
