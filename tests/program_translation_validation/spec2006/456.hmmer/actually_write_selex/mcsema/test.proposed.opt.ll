; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x456fc4_type = type <{ [8 x i8] }>
%G__0x45992c_type = type <{ [8 x i8] }>
%G__0x459931_type = type <{ [8 x i8] }>
%G__0x4599e3_type = type <{ [8 x i8] }>
%G__0x4599e8_type = type <{ [8 x i8] }>
%G__0x459c9f_type = type <{ [8 x i8] }>
%G__0x459ca5_type = type <{ [8 x i8] }>
%G__0x459cae_type = type <{ [8 x i8] }>
%G__0x459cb7_type = type <{ [8 x i8] }>
%G__0x459cc0_type = type <{ [8 x i8] }>
%G__0x459cc9_type = type <{ [8 x i8] }>
%G__0x459cd9_type = type <{ [8 x i8] }>
%G__0x459ce4_type = type <{ [8 x i8] }>
%G__0x459cf4_type = type <{ [8 x i8] }>
%G__0x459cff_type = type <{ [8 x i8] }>
%G__0x459d0f_type = type <{ [8 x i8] }>
%G__0x459d1a_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45b16d_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon = type { i64 }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer
@G__0x45992c = global %G__0x45992c_type zeroinitializer
@G__0x459931 = global %G__0x459931_type zeroinitializer
@G__0x4599e3 = global %G__0x4599e3_type zeroinitializer
@G__0x4599e8 = global %G__0x4599e8_type zeroinitializer
@G__0x459c9f = global %G__0x459c9f_type zeroinitializer
@G__0x459ca5 = global %G__0x459ca5_type zeroinitializer
@G__0x459cae = global %G__0x459cae_type zeroinitializer
@G__0x459cb7 = global %G__0x459cb7_type zeroinitializer
@G__0x459cc0 = global %G__0x459cc0_type zeroinitializer
@G__0x459cc9 = global %G__0x459cc9_type zeroinitializer
@G__0x459cd9 = global %G__0x459cd9_type zeroinitializer
@G__0x459ce4 = global %G__0x459ce4_type zeroinitializer
@G__0x459cf4 = global %G__0x459cf4_type zeroinitializer
@G__0x459cff = global %G__0x459cff_type zeroinitializer
@G__0x459d0f = global %G__0x459d0f_type zeroinitializer
@G__0x459d1a = global %G__0x459d1a_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45b16d = global %G__0x45b16d_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @actually_write_selex(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -296
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 288
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RDI.i109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i109, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i191, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -20
  %52 = load i32, i32* %EDX.i, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -28
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %RDX.i402 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -20
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %62 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 101
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RDX.i402, align 8
  %69 = icmp ugt i32 %66, -102
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %67, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %67, %66
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %26, align 1
  %80 = icmp eq i32 %67, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %29, align 1
  %82 = lshr i32 %67, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %32, align 1
  %84 = lshr i32 %66, 31
  %85 = xor i32 %82, %84
  %86 = add nuw nsw i32 %85, %82
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %38, align 1
  %89 = sext i32 %67 to i64
  store i64 %89, i64* %RSI.i191, align 8
  store i64 %89, i64* %RDI.i109, align 8
  %90 = add i64 %63, -240077
  %91 = add i64 %63, 21
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %94, align 8
  store i64 %93, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  %95 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i737 = getelementptr inbounds %union.anon, %union.anon* %96, i64 0, i32 0
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -40
  %99 = load i64, i64* %RAX.i737, align 8
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102, align 8
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -32
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107, align 4
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -24
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 7
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i865 = getelementptr inbounds %union.anon, %union.anon* %113, i64 0, i32 0
  %EAX.i891 = bitcast %union.anon* %96 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43bfc4

block_.L_43bfc4:                                  ; preds = %block_.L_43bffd, %entry
  %114 = phi i64 [ %.pre, %entry ], [ %255, %block_.L_43bffd ]
  %MEMORY.0 = phi %struct.Memory* [ %95, %entry ], [ %175, %block_.L_43bffd ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -24
  %117 = add i64 %114, 3
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RAX.i737, align 8
  %121 = add i64 %115, -16
  %122 = add i64 %114, 7
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RCX.i865, align 8
  %125 = add i64 %124, 28
  %126 = add i64 %114, 10
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = sub i32 %119, %128
  %130 = icmp ult i32 %119, %128
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %14, align 1
  %132 = and i32 %129, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  %137 = xor i32 %128, %119
  %138 = xor i32 %137, %129
  %139 = lshr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %26, align 1
  %142 = icmp eq i32 %129, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %29, align 1
  %144 = lshr i32 %129, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %32, align 1
  %146 = lshr i32 %119, 31
  %147 = lshr i32 %128, 31
  %148 = xor i32 %147, %146
  %149 = xor i32 %144, %146
  %150 = add nuw nsw i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %38, align 1
  %153 = icmp ne i8 %145, 0
  %154 = xor i1 %153, %151
  %.v81 = select i1 %154, i64 16, i64 76
  %155 = add i64 %114, %.v81
  store i64 %155, i64* %3, align 8
  br i1 %154, label %block_43bfd4, label %block_.L_43c010

block_43bfd4:                                     ; preds = %block_.L_43bfc4
  %156 = add i64 %155, 4
  store i64 %156, i64* %3, align 8
  %157 = load i64, i64* %123, align 8
  store i64 %157, i64* %RAX.i737, align 8
  %158 = add i64 %157, 8
  %159 = add i64 %155, 8
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX.i737, align 8
  %162 = add i64 %155, 12
  store i64 %162, i64* %3, align 8
  %163 = load i32, i32* %118, align 4
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %RCX.i865, align 8
  %165 = shl nsw i64 %164, 3
  %166 = add i64 %165, %161
  %167 = add i64 %155, 16
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %RDI.i109, align 8
  %170 = add i64 %155, -240500
  %171 = add i64 %155, 21
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %6, align 8
  store i64 %170, i64* %3, align 8
  %175 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.0)
  %176 = load i32, i32* %EAX.i891, align 4
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %3, align 8
  store i64 %177, i64* %RDX.i402, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -28
  %181 = add i64 %178, 5
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* %EDX.i, align 4
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -32
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 3
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = sub i32 %183, %189
  %191 = icmp ult i32 %183, %189
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %14, align 1
  %193 = and i32 %190, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %21, align 1
  %198 = xor i32 %189, %183
  %199 = xor i32 %198, %190
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %26, align 1
  %203 = icmp eq i32 %190, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %29, align 1
  %205 = lshr i32 %190, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %32, align 1
  %207 = lshr i32 %183, 31
  %208 = lshr i32 %189, 31
  %209 = xor i32 %208, %207
  %210 = xor i32 %205, %207
  %211 = add nuw nsw i32 %210, %209
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %38, align 1
  %214 = icmp ne i8 %206, 0
  %215 = xor i1 %214, %212
  %216 = or i1 %203, %215
  %.v108 = select i1 %216, i64 15, i64 9
  %217 = add i64 %186, %.v108
  store i64 %217, i64* %3, align 8
  br i1 %216, label %block_.L_43bffd, label %block_43bff7

block_43bff7:                                     ; preds = %block_43bfd4
  %218 = add i64 %184, -28
  %219 = add i64 %217, 3
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX.i737, align 8
  %223 = add i64 %217, 6
  store i64 %223, i64* %3, align 8
  store i32 %221, i32* %188, align 4
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43bffd

block_.L_43bffd:                                  ; preds = %block_43bff7, %block_43bfd4
  %224 = phi i64 [ %.pre80, %block_43bff7 ], [ %184, %block_43bfd4 ]
  %225 = phi i64 [ %.pre79, %block_43bff7 ], [ %217, %block_43bfd4 ]
  %226 = add i64 %224, -24
  %227 = add i64 %225, 8
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = add i32 %229, 1
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX.i737, align 8
  %232 = icmp eq i32 %229, -1
  %233 = icmp eq i32 %230, 0
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %14, align 1
  %236 = and i32 %230, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %21, align 1
  %241 = xor i32 %230, %229
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %26, align 1
  %245 = zext i1 %233 to i8
  store i8 %245, i8* %29, align 1
  %246 = lshr i32 %230, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %32, align 1
  %248 = lshr i32 %229, 31
  %249 = xor i32 %246, %248
  %250 = add nuw nsw i32 %249, %246
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %38, align 1
  %253 = add i64 %225, 14
  store i64 %253, i64* %3, align 8
  store i32 %230, i32* %228, align 4
  %254 = load i64, i64* %3, align 8
  %255 = add i64 %254, -71
  store i64 %255, i64* %3, align 8
  br label %block_.L_43bfc4

block_.L_43c010:                                  ; preds = %block_.L_43bfc4
  %256 = add i64 %115, -32
  %257 = add i64 %155, 4
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = add i32 %259, -6
  %261 = icmp ult i32 %259, 6
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %14, align 1
  %263 = and i32 %260, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %21, align 1
  %268 = xor i32 %260, %259
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %26, align 1
  %272 = icmp eq i32 %260, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %29, align 1
  %274 = lshr i32 %260, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %32, align 1
  %276 = lshr i32 %259, 31
  %277 = xor i32 %274, %276
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %38, align 1
  %281 = icmp ne i8 %275, 0
  %282 = xor i1 %281, %279
  %.v82 = select i1 %282, i64 10, i64 17
  %283 = add i64 %155, %.v82
  store i64 %283, i64* %3, align 8
  br i1 %282, label %block_43c01a, label %block_.L_43c021

block_43c01a:                                     ; preds = %block_.L_43c010
  %284 = add i64 %283, 7
  store i64 %284, i64* %3, align 8
  store i32 6, i32* %258, align 4
  %.pre49 = load i64, i64* %RBP.i, align 8
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_43c021

block_.L_43c021:                                  ; preds = %block_.L_43c010, %block_43c01a
  %285 = phi i64 [ %283, %block_.L_43c010 ], [ %.pre50, %block_43c01a ]
  %286 = phi i64 [ %115, %block_.L_43c010 ], [ %.pre49, %block_43c01a ]
  %287 = add i64 %286, -24
  %288 = add i64 %285, 7
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  store i32 0, i32* %289, align 4
  %AL.i973 = bitcast %union.anon* %96 to i8*
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_43c028

block_.L_43c028:                                  ; preds = %block_43c03b, %block_.L_43c021
  %290 = phi i64 [ %.pre51, %block_.L_43c021 ], [ %393, %block_43c03b ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43c021 ], [ %355, %block_43c03b ]
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -24
  %293 = add i64 %290, 3
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RAX.i737, align 8
  %297 = add i64 %291, -16
  %298 = add i64 %290, 7
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RCX.i865, align 8
  %301 = add i64 %300, 184
  %302 = add i64 %290, 13
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sub i32 %295, %304
  %306 = icmp ult i32 %295, %304
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %14, align 1
  %308 = and i32 %305, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %21, align 1
  %313 = xor i32 %304, %295
  %314 = xor i32 %313, %305
  %315 = lshr i32 %314, 4
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  store i8 %317, i8* %26, align 1
  %318 = icmp eq i32 %305, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %29, align 1
  %320 = lshr i32 %305, 31
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %32, align 1
  %322 = lshr i32 %295, 31
  %323 = lshr i32 %304, 31
  %324 = xor i32 %323, %322
  %325 = xor i32 %320, %322
  %326 = add nuw nsw i32 %325, %324
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %38, align 1
  %329 = icmp ne i8 %321, 0
  %330 = xor i1 %329, %327
  %.v83 = select i1 %330, i64 19, i64 76
  %331 = add i64 %290, %.v83
  store i64 %331, i64* %3, align 8
  br i1 %330, label %block_43c03b, label %block_.L_43c074

block_43c03b:                                     ; preds = %block_.L_43c028
  store i64 ptrtoint (%G__0x459c9f_type* @G__0x459c9f to i64), i64* %RSI.i191, align 8
  %332 = add i64 %291, -8
  %333 = add i64 %331, 14
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %RDI.i109, align 8
  %336 = add i64 %331, 18
  store i64 %336, i64* %3, align 8
  %337 = load i64, i64* %299, align 8
  store i64 %337, i64* %RAX.i737, align 8
  %338 = add i64 %337, 176
  %339 = add i64 %331, 25
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RAX.i737, align 8
  %342 = add i64 %331, 29
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %294, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %RCX.i865, align 8
  %345 = shl nsw i64 %344, 3
  %346 = add i64 %345, %341
  %347 = add i64 %331, 33
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RDX.i402, align 8
  store i8 0, i8* %AL.i973, align 1
  %350 = add i64 %331, -240331
  %351 = add i64 %331, 40
  %352 = load i64, i64* %6, align 8
  %353 = add i64 %352, -8
  %354 = inttoptr i64 %353 to i64*
  store i64 %351, i64* %354, align 8
  store i64 %353, i64* %6, align 8
  store i64 %350, i64* %3, align 8
  %355 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.3)
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -48
  %358 = load i32, i32* %EAX.i891, align 4
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 3
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %357 to i32*
  store i32 %358, i32* %361, align 4
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -24
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 3
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = add i32 %367, 1
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX.i737, align 8
  %370 = icmp eq i32 %367, -1
  %371 = icmp eq i32 %368, 0
  %372 = or i1 %370, %371
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %14, align 1
  %374 = and i32 %368, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %21, align 1
  %379 = xor i32 %368, %367
  %380 = lshr i32 %379, 4
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  store i8 %382, i8* %26, align 1
  %383 = zext i1 %371 to i8
  store i8 %383, i8* %29, align 1
  %384 = lshr i32 %368, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %32, align 1
  %386 = lshr i32 %367, 31
  %387 = xor i32 %384, %386
  %388 = add nuw nsw i32 %387, %384
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %38, align 1
  %391 = add i64 %364, 9
  store i64 %391, i64* %3, align 8
  store i32 %368, i32* %366, align 4
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, -71
  store i64 %393, i64* %3, align 8
  br label %block_.L_43c028

block_.L_43c074:                                  ; preds = %block_.L_43c028
  %394 = add i64 %331, 4
  store i64 %394, i64* %3, align 8
  %395 = load i64, i64* %299, align 8
  store i64 %395, i64* %RAX.i737, align 8
  %396 = add i64 %395, 184
  %397 = add i64 %331, 11
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  store i8 0, i8* %14, align 1
  %400 = and i32 %399, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %405 = icmp eq i32 %399, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %29, align 1
  %407 = lshr i32 %399, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %409 = icmp ne i8 %408, 0
  %410 = or i1 %405, %409
  %.v84 = select i1 %410, i64 41, i64 17
  %411 = add i64 %331, %.v84
  store i64 %411, i64* %3, align 8
  br i1 %410, label %block_.L_43c09d, label %block_43c085

block_43c085:                                     ; preds = %block_.L_43c074
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i191, align 8
  %412 = add i64 %291, -8
  %413 = add i64 %411, 14
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RDI.i109, align 8
  store i8 0, i8* %AL.i973, align 1
  %416 = add i64 %411, -240405
  %417 = add i64 %411, 21
  %418 = load i64, i64* %6, align 8
  %419 = add i64 %418, -8
  %420 = inttoptr i64 %419 to i64*
  store i64 %417, i64* %420, align 8
  store i64 %419, i64* %6, align 8
  store i64 %416, i64* %3, align 8
  %421 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.3)
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -52
  %424 = load i32, i32* %EAX.i891, align 4
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 3
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %427, align 4
  %.pre52 = load i64, i64* %RBP.i, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_43c09d

block_.L_43c09d:                                  ; preds = %block_43c085, %block_.L_43c074
  %428 = phi i64 [ %411, %block_.L_43c074 ], [ %.pre53, %block_43c085 ]
  %429 = phi i64 [ %291, %block_.L_43c074 ], [ %.pre52, %block_43c085 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_43c074 ], [ %421, %block_43c085 ]
  %430 = add i64 %429, -16
  %431 = add i64 %428, 4
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RAX.i737, align 8
  %434 = add i64 %433, 40
  %435 = add i64 %428, 9
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i64*
  %437 = load i64, i64* %436, align 8
  store i8 0, i8* %14, align 1
  %438 = trunc i64 %437 to i32
  %439 = and i32 %438, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %444 = icmp eq i64 %437, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %29, align 1
  %446 = lshr i64 %437, 63
  %447 = trunc i64 %446 to i8
  store i8 %447, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v85 = select i1 %444, i64 47, i64 15
  %448 = add i64 %428, %.v85
  store i64 %448, i64* %3, align 8
  br i1 %444, label %block_.L_43c0cc, label %block_43c0ac

block_43c0ac:                                     ; preds = %block_.L_43c09d
  store i64 ptrtoint (%G__0x459ca5_type* @G__0x459ca5 to i64), i64* %RSI.i191, align 8
  %449 = add i64 %429, -8
  %450 = add i64 %448, 14
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i64*
  %452 = load i64, i64* %451, align 8
  store i64 %452, i64* %RDI.i109, align 8
  %453 = add i64 %448, 18
  store i64 %453, i64* %3, align 8
  %454 = load i64, i64* %432, align 8
  store i64 %454, i64* %RAX.i737, align 8
  %455 = add i64 %454, 40
  %456 = add i64 %448, 22
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RDX.i402, align 8
  store i8 0, i8* %AL.i973, align 1
  %459 = add i64 %448, -240444
  %460 = add i64 %448, 29
  %461 = load i64, i64* %6, align 8
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %460, i64* %463, align 8
  store i64 %462, i64* %6, align 8
  store i64 %459, i64* %3, align 8
  %464 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.4)
  %465 = load i64, i64* %RBP.i, align 8
  %466 = add i64 %465, -56
  %467 = load i32, i32* %EAX.i891, align 4
  %468 = load i64, i64* %3, align 8
  %469 = add i64 %468, 3
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %466 to i32*
  store i32 %467, i32* %470, align 4
  %.pre54 = load i64, i64* %RBP.i, align 8
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_43c0cc

block_.L_43c0cc:                                  ; preds = %block_43c0ac, %block_.L_43c09d
  %471 = phi i64 [ %448, %block_.L_43c09d ], [ %.pre55, %block_43c0ac ]
  %472 = phi i64 [ %429, %block_.L_43c09d ], [ %.pre54, %block_43c0ac ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_43c09d ], [ %464, %block_43c0ac ]
  %473 = add i64 %472, -16
  %474 = add i64 %471, 4
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RAX.i737, align 8
  %477 = add i64 %476, 56
  %478 = add i64 %471, 9
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i8 0, i8* %14, align 1
  %481 = trunc i64 %480 to i32
  %482 = and i32 %481, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %487 = icmp eq i64 %480, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %29, align 1
  %489 = lshr i64 %480, 63
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v86 = select i1 %487, i64 47, i64 15
  %491 = add i64 %471, %.v86
  store i64 %491, i64* %3, align 8
  br i1 %487, label %block_.L_43c0fb, label %block_43c0db

block_43c0db:                                     ; preds = %block_.L_43c0cc
  store i64 ptrtoint (%G__0x459cae_type* @G__0x459cae to i64), i64* %RSI.i191, align 8
  %492 = add i64 %472, -8
  %493 = add i64 %491, 14
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %RDI.i109, align 8
  %496 = add i64 %491, 18
  store i64 %496, i64* %3, align 8
  %497 = load i64, i64* %475, align 8
  store i64 %497, i64* %RAX.i737, align 8
  %498 = add i64 %497, 56
  %499 = add i64 %491, 22
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RDX.i402, align 8
  store i8 0, i8* %AL.i973, align 1
  %502 = add i64 %491, -240491
  %503 = add i64 %491, 29
  %504 = load i64, i64* %6, align 8
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %503, i64* %506, align 8
  store i64 %505, i64* %6, align 8
  store i64 %502, i64* %3, align 8
  %507 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.5)
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -60
  %510 = load i32, i32* %EAX.i891, align 4
  %511 = load i64, i64* %3, align 8
  %512 = add i64 %511, 3
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %509 to i32*
  store i32 %510, i32* %513, align 4
  %.pre56 = load i64, i64* %RBP.i, align 8
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_43c0fb

block_.L_43c0fb:                                  ; preds = %block_43c0db, %block_.L_43c0cc
  %514 = phi i64 [ %491, %block_.L_43c0cc ], [ %.pre57, %block_43c0db ]
  %515 = phi i64 [ %472, %block_.L_43c0cc ], [ %.pre56, %block_43c0db ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_43c0cc ], [ %507, %block_43c0db ]
  %516 = add i64 %515, -16
  %517 = add i64 %514, 4
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RAX.i737, align 8
  %520 = add i64 %519, 48
  %521 = add i64 %514, 9
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i8 0, i8* %14, align 1
  %524 = trunc i64 %523 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %530 = icmp eq i64 %523, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %29, align 1
  %532 = lshr i64 %523, 63
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v87 = select i1 %530, i64 47, i64 15
  %534 = add i64 %514, %.v87
  store i64 %534, i64* %3, align 8
  br i1 %530, label %block_.L_43c12a, label %block_43c10a

block_43c10a:                                     ; preds = %block_.L_43c0fb
  store i64 ptrtoint (%G__0x459cb7_type* @G__0x459cb7 to i64), i64* %RSI.i191, align 8
  %535 = add i64 %515, -8
  %536 = add i64 %534, 14
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %RDI.i109, align 8
  %539 = add i64 %534, 18
  store i64 %539, i64* %3, align 8
  %540 = load i64, i64* %518, align 8
  store i64 %540, i64* %RAX.i737, align 8
  %541 = add i64 %540, 48
  %542 = add i64 %534, 22
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RDX.i402, align 8
  store i8 0, i8* %AL.i973, align 1
  %545 = add i64 %534, -240538
  %546 = add i64 %534, 29
  %547 = load i64, i64* %6, align 8
  %548 = add i64 %547, -8
  %549 = inttoptr i64 %548 to i64*
  store i64 %546, i64* %549, align 8
  store i64 %548, i64* %6, align 8
  store i64 %545, i64* %3, align 8
  %550 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.6)
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -64
  %553 = load i32, i32* %EAX.i891, align 4
  %554 = load i64, i64* %3, align 8
  %555 = add i64 %554, 3
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %552 to i32*
  store i32 %553, i32* %556, align 4
  %.pre58 = load i64, i64* %RBP.i, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_43c12a

block_.L_43c12a:                                  ; preds = %block_43c10a, %block_.L_43c0fb
  %557 = phi i64 [ %534, %block_.L_43c0fb ], [ %.pre59, %block_43c10a ]
  %558 = phi i64 [ %515, %block_.L_43c0fb ], [ %.pre58, %block_43c10a ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_43c0fb ], [ %550, %block_43c10a ]
  %559 = add i64 %558, -16
  %560 = add i64 %557, 4
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %RAX.i737, align 8
  %563 = add i64 %562, 64
  %564 = add i64 %557, 9
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  %566 = load i64, i64* %565, align 8
  store i8 0, i8* %14, align 1
  %567 = trunc i64 %566 to i32
  %568 = and i32 %567, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %573 = icmp eq i64 %566, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %29, align 1
  %575 = lshr i64 %566, 63
  %576 = trunc i64 %575 to i8
  store i8 %576, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v88 = select i1 %573, i64 47, i64 15
  %577 = add i64 %557, %.v88
  store i64 %577, i64* %3, align 8
  br i1 %573, label %block_.L_43c159, label %block_43c139

block_43c139:                                     ; preds = %block_.L_43c12a
  store i64 ptrtoint (%G__0x459cc0_type* @G__0x459cc0 to i64), i64* %RSI.i191, align 8
  %578 = add i64 %558, -8
  %579 = add i64 %577, 14
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RDI.i109, align 8
  %582 = add i64 %577, 18
  store i64 %582, i64* %3, align 8
  %583 = load i64, i64* %561, align 8
  store i64 %583, i64* %RAX.i737, align 8
  %584 = add i64 %583, 64
  %585 = add i64 %577, 22
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %RDX.i402, align 8
  store i8 0, i8* %AL.i973, align 1
  %588 = add i64 %577, -240585
  %589 = add i64 %577, 29
  %590 = load i64, i64* %6, align 8
  %591 = add i64 %590, -8
  %592 = inttoptr i64 %591 to i64*
  store i64 %589, i64* %592, align 8
  store i64 %591, i64* %6, align 8
  store i64 %588, i64* %3, align 8
  %593 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.7)
  %594 = load i64, i64* %RBP.i, align 8
  %595 = add i64 %594, -68
  %596 = load i32, i32* %EAX.i891, align 4
  %597 = load i64, i64* %3, align 8
  %598 = add i64 %597, 3
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %595 to i32*
  store i32 %596, i32* %599, align 4
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_43c159

block_.L_43c159:                                  ; preds = %block_43c139, %block_.L_43c12a
  %600 = phi i64 [ %577, %block_.L_43c12a ], [ %.pre61, %block_43c139 ]
  %601 = phi i64 [ %558, %block_.L_43c12a ], [ %.pre60, %block_43c139 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_43c12a ], [ %593, %block_43c139 ]
  %602 = add i64 %601, -16
  %603 = add i64 %600, 4
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %RAX.i737, align 8
  %606 = add i64 %605, 160
  %607 = add i64 %600, 11
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  store i8 0, i8* %14, align 1
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %615 = icmp eq i32 %609, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %29, align 1
  %617 = lshr i32 %609, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %615, i64 87, i64 17
  %619 = add i64 %600, %.v89
  store i64 %619, i64* %3, align 8
  br i1 %615, label %block_.L_43c1b0, label %block_43c16a

block_43c16a:                                     ; preds = %block_.L_43c159
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = load i64, i64* %604, align 8
  store i64 %621, i64* %RAX.i737, align 8
  %622 = add i64 %621, 164
  %623 = add i64 %619, 11
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  store i8 0, i8* %14, align 1
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %631 = icmp eq i32 %625, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %29, align 1
  %633 = lshr i32 %625, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %631, i64 70, i64 17
  %635 = add i64 %619, %.v90
  store i64 %635, i64* %3, align 8
  br i1 %631, label %block_.L_43c1b0, label %block_43c17b

block_43c17b:                                     ; preds = %block_43c16a
  store i64 ptrtoint (%G__0x459cc9_type* @G__0x459cc9 to i64), i64* %RSI.i191, align 8
  %636 = add i64 %601, -8
  %637 = add i64 %635, 14
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RDI.i109, align 8
  %640 = add i64 %635, 18
  store i64 %640, i64* %3, align 8
  %641 = load i64, i64* %604, align 8
  store i64 %641, i64* %RAX.i737, align 8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %643 = add i64 %641, 136
  %644 = add i64 %635, 26
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to float*
  %646 = load float, float* %645, align 4
  %647 = fpext float %646 to double
  %648 = bitcast [32 x %union.VectorReg]* %642 to double*
  store double %647, double* %648, align 1
  %649 = add i64 %635, 30
  store i64 %649, i64* %3, align 8
  %650 = load i64, i64* %604, align 8
  store i64 %650, i64* %RAX.i737, align 8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %652 = add i64 %650, 140
  %653 = add i64 %635, 38
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to float*
  %655 = load float, float* %654, align 4
  %656 = fpext float %655 to double
  %657 = bitcast %union.VectorReg* %651 to double*
  store double %656, double* %657, align 1
  store i8 2, i8* %AL.i973, align 1
  %658 = add i64 %635, -240651
  %659 = add i64 %635, 45
  %660 = load i64, i64* %6, align 8
  %661 = add i64 %660, -8
  %662 = inttoptr i64 %661 to i64*
  store i64 %659, i64* %662, align 8
  store i64 %661, i64* %6, align 8
  store i64 %658, i64* %3, align 8
  %663 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.8)
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -72
  %666 = load i32, i32* %EAX.i891, align 4
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 3
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %665 to i32*
  store i32 %666, i32* %669, align 4
  %670 = load i64, i64* %3, align 8
  %671 = add i64 %670, 63
  br label %block_.L_43c1ea

block_.L_43c1b0:                                  ; preds = %block_43c16a, %block_.L_43c159
  %672 = phi i64 [ %635, %block_43c16a ], [ %619, %block_.L_43c159 ]
  %673 = add i64 %672, 4
  store i64 %673, i64* %3, align 8
  %674 = load i64, i64* %604, align 8
  store i64 %674, i64* %RAX.i737, align 8
  %675 = add i64 %674, 160
  %676 = add i64 %672, 11
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  store i8 0, i8* %14, align 1
  %679 = and i32 %678, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %684 = icmp eq i32 %678, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %29, align 1
  %686 = lshr i32 %678, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v107 = select i1 %684, i64 53, i64 17
  %688 = add i64 %672, %.v107
  store i64 %688, i64* %3, align 8
  br i1 %684, label %block_.L_43c1e5, label %block_43c1c1

block_43c1c1:                                     ; preds = %block_.L_43c1b0
  store i64 ptrtoint (%G__0x459cd9_type* @G__0x459cd9 to i64), i64* %RSI.i191, align 8
  %689 = add i64 %601, -8
  %690 = add i64 %688, 14
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %RDI.i109, align 8
  %693 = add i64 %688, 18
  store i64 %693, i64* %3, align 8
  %694 = load i64, i64* %604, align 8
  store i64 %694, i64* %RAX.i737, align 8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %696 = add i64 %694, 136
  %697 = add i64 %688, 26
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to float*
  %699 = load float, float* %698, align 4
  %700 = fpext float %699 to double
  %701 = bitcast %union.VectorReg* %695 to double*
  store double %700, double* %701, align 1
  store i8 1, i8* %AL.i973, align 1
  %702 = add i64 %688, -240721
  %703 = add i64 %688, 33
  %704 = load i64, i64* %6, align 8
  %705 = add i64 %704, -8
  %706 = inttoptr i64 %705 to i64*
  store i64 %703, i64* %706, align 8
  store i64 %705, i64* %6, align 8
  store i64 %702, i64* %3, align 8
  %707 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.8)
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -76
  %710 = load i32, i32* %EAX.i891, align 4
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 3
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %709 to i32*
  store i32 %710, i32* %713, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_43c1e5

block_.L_43c1e5:                                  ; preds = %block_43c1c1, %block_.L_43c1b0
  %714 = phi i64 [ %688, %block_.L_43c1b0 ], [ %.pre62, %block_43c1c1 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.8, %block_.L_43c1b0 ], [ %707, %block_43c1c1 ]
  %715 = add i64 %714, 5
  store i64 %715, i64* %3, align 8
  br label %block_.L_43c1ea

block_.L_43c1ea:                                  ; preds = %block_.L_43c1e5, %block_43c17b
  %storemerge = phi i64 [ %671, %block_43c17b ], [ %715, %block_.L_43c1e5 ]
  %MEMORY.11 = phi %struct.Memory* [ %663, %block_43c17b ], [ %MEMORY.10, %block_.L_43c1e5 ]
  %716 = load i64, i64* %RBP.i, align 8
  %717 = add i64 %716, -16
  %718 = add i64 %storemerge, 4
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %RAX.i737, align 8
  %721 = add i64 %720, 168
  %722 = add i64 %storemerge, 11
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  store i8 0, i8* %14, align 1
  %725 = and i32 %724, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %730 = icmp eq i32 %724, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %29, align 1
  %732 = lshr i32 %724, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %730, i64 87, i64 17
  %734 = add i64 %storemerge, %.v91
  store i64 %734, i64* %3, align 8
  br i1 %730, label %block_.L_43c241, label %block_43c1fb

block_43c1fb:                                     ; preds = %block_.L_43c1ea
  %735 = add i64 %734, 4
  store i64 %735, i64* %3, align 8
  %736 = load i64, i64* %719, align 8
  store i64 %736, i64* %RAX.i737, align 8
  %737 = add i64 %736, 172
  %738 = add i64 %734, 11
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  %740 = load i32, i32* %739, align 4
  store i8 0, i8* %14, align 1
  %741 = and i32 %740, 255
  %742 = tail call i32 @llvm.ctpop.i32(i32 %741)
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  store i8 %745, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %746 = icmp eq i32 %740, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %29, align 1
  %748 = lshr i32 %740, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v92 = select i1 %746, i64 70, i64 17
  %750 = add i64 %734, %.v92
  store i64 %750, i64* %3, align 8
  br i1 %746, label %block_.L_43c241, label %block_43c20c

block_43c20c:                                     ; preds = %block_43c1fb
  store i64 ptrtoint (%G__0x459ce4_type* @G__0x459ce4 to i64), i64* %RSI.i191, align 8
  %751 = add i64 %716, -8
  %752 = add i64 %750, 14
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RDI.i109, align 8
  %755 = add i64 %750, 18
  store i64 %755, i64* %3, align 8
  %756 = load i64, i64* %719, align 8
  store i64 %756, i64* %RAX.i737, align 8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %758 = add i64 %756, 144
  %759 = add i64 %750, 26
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to float*
  %761 = load float, float* %760, align 4
  %762 = fpext float %761 to double
  %763 = bitcast [32 x %union.VectorReg]* %757 to double*
  store double %762, double* %763, align 1
  %764 = add i64 %750, 30
  store i64 %764, i64* %3, align 8
  %765 = load i64, i64* %719, align 8
  store i64 %765, i64* %RAX.i737, align 8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %767 = add i64 %765, 148
  %768 = add i64 %750, 38
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to float*
  %770 = load float, float* %769, align 4
  %771 = fpext float %770 to double
  %772 = bitcast %union.VectorReg* %766 to double*
  store double %771, double* %772, align 1
  store i8 2, i8* %AL.i973, align 1
  %773 = add i64 %750, -240796
  %774 = add i64 %750, 45
  %775 = load i64, i64* %6, align 8
  %776 = add i64 %775, -8
  %777 = inttoptr i64 %776 to i64*
  store i64 %774, i64* %777, align 8
  store i64 %776, i64* %6, align 8
  store i64 %773, i64* %3, align 8
  %778 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.11)
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -80
  %781 = load i32, i32* %EAX.i891, align 4
  %782 = load i64, i64* %3, align 8
  %783 = add i64 %782, 3
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %780 to i32*
  store i32 %781, i32* %784, align 4
  %785 = load i64, i64* %3, align 8
  %786 = add i64 %785, 63
  br label %block_.L_43c27b

block_.L_43c241:                                  ; preds = %block_43c1fb, %block_.L_43c1ea
  %787 = phi i64 [ %750, %block_43c1fb ], [ %734, %block_.L_43c1ea ]
  %788 = add i64 %787, 4
  store i64 %788, i64* %3, align 8
  %789 = load i64, i64* %719, align 8
  store i64 %789, i64* %RAX.i737, align 8
  %790 = add i64 %789, 168
  %791 = add i64 %787, 11
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i32*
  %793 = load i32, i32* %792, align 4
  store i8 0, i8* %14, align 1
  %794 = and i32 %793, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %799 = icmp eq i32 %793, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %29, align 1
  %801 = lshr i32 %793, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %799, i64 53, i64 17
  %803 = add i64 %787, %.v106
  store i64 %803, i64* %3, align 8
  br i1 %799, label %block_.L_43c276, label %block_43c252

block_43c252:                                     ; preds = %block_.L_43c241
  store i64 ptrtoint (%G__0x459cf4_type* @G__0x459cf4 to i64), i64* %RSI.i191, align 8
  %804 = add i64 %716, -8
  %805 = add i64 %803, 14
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i64*
  %807 = load i64, i64* %806, align 8
  store i64 %807, i64* %RDI.i109, align 8
  %808 = add i64 %803, 18
  store i64 %808, i64* %3, align 8
  %809 = load i64, i64* %719, align 8
  store i64 %809, i64* %RAX.i737, align 8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %811 = add i64 %809, 144
  %812 = add i64 %803, 26
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to float*
  %814 = load float, float* %813, align 4
  %815 = fpext float %814 to double
  %816 = bitcast %union.VectorReg* %810 to double*
  store double %815, double* %816, align 1
  store i8 1, i8* %AL.i973, align 1
  %817 = add i64 %803, -240866
  %818 = add i64 %803, 33
  %819 = load i64, i64* %6, align 8
  %820 = add i64 %819, -8
  %821 = inttoptr i64 %820 to i64*
  store i64 %818, i64* %821, align 8
  store i64 %820, i64* %6, align 8
  store i64 %817, i64* %3, align 8
  %822 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.11)
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -84
  %825 = load i32, i32* %EAX.i891, align 4
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 3
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %824 to i32*
  store i32 %825, i32* %828, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_43c276

block_.L_43c276:                                  ; preds = %block_43c252, %block_.L_43c241
  %829 = phi i64 [ %803, %block_.L_43c241 ], [ %.pre63, %block_43c252 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.11, %block_.L_43c241 ], [ %822, %block_43c252 ]
  %830 = add i64 %829, 5
  store i64 %830, i64* %3, align 8
  br label %block_.L_43c27b

block_.L_43c27b:                                  ; preds = %block_.L_43c276, %block_43c20c
  %storemerge32 = phi i64 [ %786, %block_43c20c ], [ %830, %block_.L_43c276 ]
  %MEMORY.14 = phi %struct.Memory* [ %778, %block_43c20c ], [ %MEMORY.13, %block_.L_43c276 ]
  %831 = load i64, i64* %RBP.i, align 8
  %832 = add i64 %831, -16
  %833 = add i64 %storemerge32, 4
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  store i64 %835, i64* %RAX.i737, align 8
  %836 = add i64 %835, 152
  %837 = add i64 %storemerge32, 11
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  store i8 0, i8* %14, align 1
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %845 = icmp eq i32 %839, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i32 %839, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v93 = select i1 %845, i64 87, i64 17
  %849 = add i64 %storemerge32, %.v93
  store i64 %849, i64* %3, align 8
  br i1 %845, label %block_.L_43c2d2, label %block_43c28c

block_43c28c:                                     ; preds = %block_.L_43c27b
  %850 = add i64 %849, 4
  store i64 %850, i64* %3, align 8
  %851 = load i64, i64* %834, align 8
  store i64 %851, i64* %RAX.i737, align 8
  %852 = add i64 %851, 156
  %853 = add i64 %849, 11
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  store i8 0, i8* %14, align 1
  %856 = and i32 %855, 255
  %857 = tail call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %861 = icmp eq i32 %855, 0
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %29, align 1
  %863 = lshr i32 %855, 31
  %864 = trunc i32 %863 to i8
  store i8 %864, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v94 = select i1 %861, i64 70, i64 17
  %865 = add i64 %849, %.v94
  store i64 %865, i64* %3, align 8
  br i1 %861, label %block_.L_43c2d2, label %block_43c29d

block_43c29d:                                     ; preds = %block_43c28c
  store i64 ptrtoint (%G__0x459cff_type* @G__0x459cff to i64), i64* %RSI.i191, align 8
  %866 = add i64 %831, -8
  %867 = add i64 %865, 14
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RDI.i109, align 8
  %870 = add i64 %865, 18
  store i64 %870, i64* %3, align 8
  %871 = load i64, i64* %834, align 8
  store i64 %871, i64* %RAX.i737, align 8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %873 = add i64 %871, 128
  %874 = add i64 %865, 26
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to float*
  %876 = load float, float* %875, align 4
  %877 = fpext float %876 to double
  %878 = bitcast [32 x %union.VectorReg]* %872 to double*
  store double %877, double* %878, align 1
  %879 = add i64 %865, 30
  store i64 %879, i64* %3, align 8
  %880 = load i64, i64* %834, align 8
  store i64 %880, i64* %RAX.i737, align 8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %882 = add i64 %880, 132
  %883 = add i64 %865, 38
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to float*
  %885 = load float, float* %884, align 4
  %886 = fpext float %885 to double
  %887 = bitcast %union.VectorReg* %881 to double*
  store double %886, double* %887, align 1
  store i8 2, i8* %AL.i973, align 1
  %888 = add i64 %865, -240941
  %889 = add i64 %865, 45
  %890 = load i64, i64* %6, align 8
  %891 = add i64 %890, -8
  %892 = inttoptr i64 %891 to i64*
  store i64 %889, i64* %892, align 8
  store i64 %891, i64* %6, align 8
  store i64 %888, i64* %3, align 8
  %893 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.14)
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -88
  %896 = load i32, i32* %EAX.i891, align 4
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 3
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %895 to i32*
  store i32 %896, i32* %899, align 4
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, 63
  br label %block_.L_43c30c

block_.L_43c2d2:                                  ; preds = %block_43c28c, %block_.L_43c27b
  %902 = phi i64 [ %865, %block_43c28c ], [ %849, %block_.L_43c27b ]
  %903 = add i64 %902, 4
  store i64 %903, i64* %3, align 8
  %904 = load i64, i64* %834, align 8
  store i64 %904, i64* %RAX.i737, align 8
  %905 = add i64 %904, 152
  %906 = add i64 %902, 11
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  store i8 0, i8* %14, align 1
  %909 = and i32 %908, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %914 = icmp eq i32 %908, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %29, align 1
  %916 = lshr i32 %908, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v105 = select i1 %914, i64 53, i64 17
  %918 = add i64 %902, %.v105
  store i64 %918, i64* %3, align 8
  br i1 %914, label %block_.L_43c307, label %block_43c2e3

block_43c2e3:                                     ; preds = %block_.L_43c2d2
  store i64 ptrtoint (%G__0x459d0f_type* @G__0x459d0f to i64), i64* %RSI.i191, align 8
  %919 = add i64 %831, -8
  %920 = add i64 %918, 14
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i64*
  %922 = load i64, i64* %921, align 8
  store i64 %922, i64* %RDI.i109, align 8
  %923 = add i64 %918, 18
  store i64 %923, i64* %3, align 8
  %924 = load i64, i64* %834, align 8
  store i64 %924, i64* %RAX.i737, align 8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %926 = add i64 %924, 128
  %927 = add i64 %918, 26
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to float*
  %929 = load float, float* %928, align 4
  %930 = fpext float %929 to double
  %931 = bitcast %union.VectorReg* %925 to double*
  store double %930, double* %931, align 1
  store i8 1, i8* %AL.i973, align 1
  %932 = add i64 %918, -241011
  %933 = add i64 %918, 33
  %934 = load i64, i64* %6, align 8
  %935 = add i64 %934, -8
  %936 = inttoptr i64 %935 to i64*
  store i64 %933, i64* %936, align 8
  store i64 %935, i64* %6, align 8
  store i64 %932, i64* %3, align 8
  %937 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.14)
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -92
  %940 = load i32, i32* %EAX.i891, align 4
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, 3
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %939 to i32*
  store i32 %940, i32* %943, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_43c307

block_.L_43c307:                                  ; preds = %block_43c2e3, %block_.L_43c2d2
  %944 = phi i64 [ %918, %block_.L_43c2d2 ], [ %.pre64, %block_43c2e3 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_43c2d2 ], [ %937, %block_43c2e3 ]
  %945 = add i64 %944, 5
  store i64 %945, i64* %3, align 8
  br label %block_.L_43c30c

block_.L_43c30c:                                  ; preds = %block_.L_43c307, %block_43c29d
  %storemerge33 = phi i64 [ %901, %block_43c29d ], [ %945, %block_.L_43c307 ]
  %MEMORY.17 = phi %struct.Memory* [ %893, %block_43c29d ], [ %MEMORY.16, %block_.L_43c307 ]
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -24
  %948 = add i64 %storemerge33, 7
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  store i32 0, i32* %949, align 4
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i613 = getelementptr inbounds %union.anon, %union.anon* %950, i64 0, i32 0
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %952 = bitcast %union.VectorReg* %951 to double*
  %ECX.i585 = bitcast %union.anon* %113 to i32*
  %953 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %951, i64 0, i32 0, i32 0, i32 0, i64 0
  %R9.i494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R8D.i482 = bitcast %union.anon* %950 to i32*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %955 = bitcast i64* %954 to double*
  %R10.i471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %956 = bitcast i64* %6 to i64**
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_43c313

block_.L_43c313:                                  ; preds = %block_.L_43c41f, %block_.L_43c30c
  %957 = phi i64 [ %.pre65, %block_.L_43c30c ], [ %1330, %block_.L_43c41f ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_43c30c ], [ %1292, %block_.L_43c41f ]
  %958 = load i64, i64* %RBP.i, align 8
  %959 = add i64 %958, -24
  %960 = add i64 %957, 3
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i737, align 8
  %964 = add i64 %958, -16
  %965 = add i64 %957, 7
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RCX.i865, align 8
  %968 = add i64 %967, 28
  %969 = add i64 %957, 10
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sub i32 %962, %971
  %973 = icmp ult i32 %962, %971
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %972, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %971, %962
  %981 = xor i32 %980, %972
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %26, align 1
  %985 = icmp eq i32 %972, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %29, align 1
  %987 = lshr i32 %972, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %32, align 1
  %989 = lshr i32 %962, 31
  %990 = lshr i32 %971, 31
  %991 = xor i32 %990, %989
  %992 = xor i32 %987, %989
  %993 = add nuw nsw i32 %992, %991
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %38, align 1
  %996 = icmp ne i8 %988, 0
  %997 = xor i1 %996, %994
  %.v95 = select i1 %997, i64 16, i64 393
  %998 = add i64 %957, %.v95
  store i64 %998, i64* %3, align 8
  br i1 %997, label %block_43c323, label %block_.L_43c49c

block_43c323:                                     ; preds = %block_.L_43c313
  %999 = add i64 %958, -8
  %1000 = add i64 %998, 4
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i64*
  %1002 = load i64, i64* %1001, align 8
  store i64 %1002, i64* %RDI.i109, align 8
  %1003 = add i64 %958, -32
  %1004 = add i64 %998, 7
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RDX.i402, align 8
  %1008 = add i64 %998, 10
  store i64 %1008, i64* %3, align 8
  %1009 = load i32, i32* %1005, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RCX.i865, align 8
  %1011 = add i64 %998, 14
  store i64 %1011, i64* %3, align 8
  %1012 = load i64, i64* %966, align 8
  store i64 %1012, i64* %RAX.i737, align 8
  %1013 = add i64 %1012, 8
  %1014 = add i64 %998, 18
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i64*
  %1016 = load i64, i64* %1015, align 8
  store i64 %1016, i64* %RAX.i737, align 8
  %1017 = add i64 %998, 22
  store i64 %1017, i64* %3, align 8
  %1018 = load i32, i32* %961, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RSI.i191, align 8
  %1020 = shl nsw i64 %1019, 3
  %1021 = add i64 %1020, %1016
  %1022 = add i64 %998, 26
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i64*
  %1024 = load i64, i64* %1023, align 8
  store i64 %1024, i64* %R8.i613, align 8
  %1025 = add i64 %998, 30
  store i64 %1025, i64* %3, align 8
  %1026 = load i64, i64* %966, align 8
  store i64 %1026, i64* %RAX.i737, align 8
  %1027 = add i64 %1026, 16
  %1028 = add i64 %998, 34
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RAX.i737, align 8
  %1031 = add i64 %998, 38
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %961, align 4
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %RSI.i191, align 8
  %1034 = shl nsw i64 %1033, 2
  %1035 = add i64 %1034, %1030
  %1036 = add i64 %998, 43
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to float*
  %1038 = load float, float* %1037, align 4
  %1039 = fpext float %1038 to double
  store double %1039, double* %952, align 1
  %1040 = add i64 %998, 47
  store i64 %1040, i64* %3, align 8
  %1041 = load i64, i64* %966, align 8
  store i64 %1041, i64* %RAX.i737, align 8
  %1042 = add i64 %1041, 96
  %1043 = add i64 %998, 52
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i8 0, i8* %14, align 1
  %1046 = trunc i64 %1045 to i32
  %1047 = and i32 %1046, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1052 = icmp eq i64 %1045, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %29, align 1
  %1054 = lshr i64 %1045, 63
  %1055 = trunc i64 %1054 to i8
  store i8 %1055, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1056 = add i64 %958, -104
  %1057 = add i64 %998, 56
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  store i64 %1002, i64* %1058, align 8
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -108
  %1061 = load i32, i32* %EDX.i, align 4
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 3
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1060 to i32*
  store i32 %1061, i32* %1064, align 4
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -112
  %1067 = load i32, i32* %ECX.i585, align 4
  %1068 = load i64, i64* %3, align 8
  %1069 = add i64 %1068, 3
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1066 to i32*
  store i32 %1067, i32* %1070, align 4
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -120
  %1073 = load i64, i64* %R8.i613, align 8
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1072 to i64*
  store i64 %1073, i64* %1076, align 8
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -128
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %3, align 8
  %1081 = load i64, i64* %953, align 1
  %1082 = inttoptr i64 %1078 to i64*
  store i64 %1081, i64* %1082, align 8
  %1083 = load i64, i64* %3, align 8
  %1084 = load i8, i8* %29, align 1
  %1085 = icmp ne i8 %1084, 0
  %.v120 = select i1 %1085, i64 57, i64 6
  %1086 = add i64 %1083, %.v120
  store i64 %1086, i64* %3, align 8
  %cmpBr_43c36a = icmp eq i8 %1084, 1
  %.pre77 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43c36a, label %block_.L_43c3a3, label %block_43c370

block_43c370:                                     ; preds = %block_43c323
  %1087 = add i64 %.pre77, -16
  %1088 = add i64 %1086, 4
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i64*
  %1090 = load i64, i64* %1089, align 8
  store i64 %1090, i64* %RAX.i737, align 8
  %1091 = add i64 %1090, 96
  %1092 = add i64 %1086, 8
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RAX.i737, align 8
  %1095 = add i64 %.pre77, -24
  %1096 = add i64 %1086, 12
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i865, align 8
  %1100 = shl nsw i64 %1099, 3
  %1101 = add i64 %1100, %1094
  %1102 = add i64 %1086, 17
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i8 0, i8* %14, align 1
  %1105 = trunc i64 %1104 to i32
  %1106 = and i32 %1105, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106)
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1111 = icmp eq i64 %1104, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %29, align 1
  %1113 = lshr i64 %1104, 63
  %1114 = trunc i64 %1113 to i8
  store i8 %1114, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %1111, i64 51, i64 23
  %1115 = add i64 %1086, %.v103
  store i64 %1115, i64* %3, align 8
  br i1 %1111, label %block_.L_43c3a3, label %block_43c387

block_43c387:                                     ; preds = %block_43c370
  %1116 = add i64 %1115, 4
  store i64 %1116, i64* %3, align 8
  %1117 = load i64, i64* %1089, align 8
  store i64 %1117, i64* %RAX.i737, align 8
  %1118 = add i64 %1117, 96
  %1119 = add i64 %1115, 8
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i737, align 8
  %1122 = add i64 %1115, 12
  store i64 %1122, i64* %3, align 8
  %1123 = load i32, i32* %1097, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i865, align 8
  %1125 = shl nsw i64 %1124, 3
  %1126 = add i64 %1125, %1121
  %1127 = add i64 %1115, 16
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX.i737, align 8
  %1130 = add i64 %.pre77, -136
  %1131 = add i64 %1115, 23
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i64*
  store i64 %1129, i64* %1132, align 8
  %1133 = load i64, i64* %3, align 8
  %1134 = add i64 %1133, 27
  br label %block_.L_43c3b9

block_.L_43c3a3:                                  ; preds = %block_43c323, %block_43c370
  %1135 = phi i64 [ %1115, %block_43c370 ], [ %1086, %block_43c323 ]
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RAX.i737, align 8
  %1136 = add i64 %.pre77, -136
  %1137 = add i64 %1135, 17
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %1138, align 8
  %1139 = load i64, i64* %3, align 8
  %1140 = add i64 %1139, 5
  store i64 %1140, i64* %3, align 8
  br label %block_.L_43c3b9

block_.L_43c3b9:                                  ; preds = %block_.L_43c3a3, %block_43c387
  %storemerge34 = phi i64 [ %1134, %block_43c387 ], [ %1140, %block_.L_43c3a3 ]
  %1141 = load i64, i64* %RBP.i, align 8
  %1142 = add i64 %1141, -136
  %1143 = add i64 %storemerge34, 7
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i64*
  %1145 = load i64, i64* %1144, align 8
  store i64 %1145, i64* %RAX.i737, align 8
  %1146 = add i64 %1141, -16
  %1147 = add i64 %storemerge34, 11
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  %1149 = load i64, i64* %1148, align 8
  store i64 %1149, i64* %RCX.i865, align 8
  %1150 = add i64 %1149, 104
  %1151 = add i64 %storemerge34, 16
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i8 0, i8* %14, align 1
  %1154 = trunc i64 %1153 to i32
  %1155 = and i32 %1154, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1160 = icmp eq i64 %1153, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %29, align 1
  %1162 = lshr i64 %1153, 63
  %1163 = trunc i64 %1162 to i8
  store i8 %1163, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1164 = add i64 %1141, -144
  %1165 = add i64 %storemerge34, 23
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i64*
  store i64 %1145, i64* %1166, align 8
  %1167 = load i64, i64* %3, align 8
  %1168 = load i8, i8* %29, align 1
  %1169 = icmp ne i8 %1168, 0
  %.v121 = select i1 %1169, i64 57, i64 6
  %1170 = add i64 %1167, %.v121
  store i64 %1170, i64* %3, align 8
  %cmpBr_43c3d0 = icmp eq i8 %1168, 1
  %.pre78 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43c3d0, label %block_.L_43c409, label %block_43c3d6

block_43c3d6:                                     ; preds = %block_.L_43c3b9
  %1171 = add i64 %.pre78, -16
  %1172 = add i64 %1170, 4
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i64*
  %1174 = load i64, i64* %1173, align 8
  store i64 %1174, i64* %RAX.i737, align 8
  %1175 = add i64 %1174, 104
  %1176 = add i64 %1170, 8
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  %1178 = load i64, i64* %1177, align 8
  store i64 %1178, i64* %RAX.i737, align 8
  %1179 = add i64 %.pre78, -24
  %1180 = add i64 %1170, 12
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = sext i32 %1182 to i64
  store i64 %1183, i64* %RCX.i865, align 8
  %1184 = shl nsw i64 %1183, 3
  %1185 = add i64 %1184, %1178
  %1186 = add i64 %1170, 17
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  store i8 0, i8* %14, align 1
  %1189 = trunc i64 %1188 to i32
  %1190 = and i32 %1189, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1195 = icmp eq i64 %1188, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %29, align 1
  %1197 = lshr i64 %1188, 63
  %1198 = trunc i64 %1197 to i8
  store i8 %1198, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %1195, i64 51, i64 23
  %1199 = add i64 %1170, %.v104
  store i64 %1199, i64* %3, align 8
  br i1 %1195, label %block_.L_43c409, label %block_43c3ed

block_43c3ed:                                     ; preds = %block_43c3d6
  %1200 = add i64 %1199, 4
  store i64 %1200, i64* %3, align 8
  %1201 = load i64, i64* %1173, align 8
  store i64 %1201, i64* %RAX.i737, align 8
  %1202 = add i64 %1201, 104
  %1203 = add i64 %1199, 8
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i64*
  %1205 = load i64, i64* %1204, align 8
  store i64 %1205, i64* %RAX.i737, align 8
  %1206 = add i64 %1199, 12
  store i64 %1206, i64* %3, align 8
  %1207 = load i32, i32* %1181, align 4
  %1208 = sext i32 %1207 to i64
  store i64 %1208, i64* %RCX.i865, align 8
  %1209 = shl nsw i64 %1208, 3
  %1210 = add i64 %1209, %1205
  %1211 = add i64 %1199, 16
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RAX.i737, align 8
  %1214 = add i64 %.pre78, -152
  %1215 = add i64 %1199, 23
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i64*
  store i64 %1213, i64* %1216, align 8
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, 27
  br label %block_.L_43c41f

block_.L_43c409:                                  ; preds = %block_.L_43c3b9, %block_43c3d6
  %1219 = phi i64 [ %1199, %block_43c3d6 ], [ %1170, %block_.L_43c3b9 ]
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RAX.i737, align 8
  %1220 = add i64 %.pre78, -152
  %1221 = add i64 %1219, 17
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i64*
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %1222, align 8
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 5
  store i64 %1224, i64* %3, align 8
  br label %block_.L_43c41f

block_.L_43c41f:                                  ; preds = %block_.L_43c409, %block_43c3ed
  %storemerge35 = phi i64 [ %1218, %block_43c3ed ], [ %1224, %block_.L_43c409 ]
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -152
  %1227 = add i64 %storemerge35, 7
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RAX.i737, align 8
  store i64 ptrtoint (%G__0x459d1a_type* @G__0x459d1a to i64), i64* %RSI.i191, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R9.i494, align 8
  store i64 0, i64* %RCX.i865, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1230 = add i64 %1225, -104
  %1231 = add i64 %storemerge35, 33
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  store i64 %1233, i64* %RDI.i109, align 8
  %1234 = add i64 %1225, -108
  %1235 = add i64 %storemerge35, 36
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RDX.i402, align 8
  %1239 = add i64 %1225, -112
  %1240 = add i64 %storemerge35, 40
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %R8.i613, align 8
  %1244 = add i64 %1225, -156
  %1245 = add i64 %storemerge35, 46
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  store i32 0, i32* %1246, align 4
  %1247 = load i32, i32* %R8D.i482, align 4
  %1248 = zext i32 %1247 to i64
  %1249 = load i64, i64* %3, align 8
  store i64 %1248, i64* %RCX.i865, align 8
  %1250 = load i64, i64* %RBP.i, align 8
  %1251 = add i64 %1250, -120
  %1252 = add i64 %1249, 7
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %R8.i613, align 8
  %1255 = add i64 %1250, -128
  %1256 = add i64 %1249, 12
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %953, align 1
  store double 0.000000e+00, double* %955, align 1
  %1259 = add i64 %1250, -144
  %1260 = add i64 %1249, 19
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %R10.i471, align 8
  %1263 = load i64*, i64** %956, align 8
  %1264 = add i64 %1249, 23
  store i64 %1264, i64* %3, align 8
  store i64 %1262, i64* %1263, align 8
  %1265 = load i64, i64* %6, align 8
  %1266 = add i64 %1265, 8
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 8
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i32*
  store i32 0, i32* %1269, align 4
  %1270 = load i64, i64* %6, align 8
  %1271 = add i64 %1270, 16
  %1272 = load i64, i64* %3, align 8
  %1273 = add i64 %1272, 8
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1271 to i32*
  store i32 0, i32* %1274, align 4
  %1275 = load i64, i64* %6, align 8
  %1276 = add i64 %1275, 24
  %1277 = load i64, i64* %3, align 8
  %1278 = add i64 %1277, 8
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1276 to i32*
  store i32 0, i32* %1279, align 4
  %1280 = load i64, i64* %6, align 8
  %1281 = add i64 %1280, 32
  %1282 = load i64, i64* %RAX.i737, align 8
  %1283 = load i64, i64* %3, align 8
  %1284 = add i64 %1283, 5
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1281 to i64*
  store i64 %1282, i64* %1285, align 8
  %1286 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i973, align 1
  %1287 = add i64 %1286, -241425
  %1288 = add i64 %1286, 7
  %1289 = load i64, i64* %6, align 8
  %1290 = add i64 %1289, -8
  %1291 = inttoptr i64 %1290 to i64*
  store i64 %1288, i64* %1291, align 8
  store i64 %1290, i64* %6, align 8
  store i64 %1287, i64* %3, align 8
  %1292 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.18)
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -160
  %1295 = load i32, i32* %EAX.i891, align 4
  %1296 = load i64, i64* %3, align 8
  %1297 = add i64 %1296, 6
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1294 to i32*
  store i32 %1295, i32* %1298, align 4
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -24
  %1301 = load i64, i64* %3, align 8
  %1302 = add i64 %1301, 3
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = add i32 %1304, 1
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RAX.i737, align 8
  %1307 = icmp eq i32 %1304, -1
  %1308 = icmp eq i32 %1305, 0
  %1309 = or i1 %1307, %1308
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %14, align 1
  %1311 = and i32 %1305, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  %1316 = xor i32 %1305, %1304
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %26, align 1
  %1320 = zext i1 %1308 to i8
  store i8 %1320, i8* %29, align 1
  %1321 = lshr i32 %1305, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %32, align 1
  %1323 = lshr i32 %1304, 31
  %1324 = xor i32 %1321, %1323
  %1325 = add nuw nsw i32 %1324, %1321
  %1326 = icmp eq i32 %1325, 2
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %38, align 1
  %1328 = add i64 %1301, 9
  store i64 %1328, i64* %3, align 8
  store i32 %1305, i32* %1303, align 4
  %1329 = load i64, i64* %3, align 8
  %1330 = add i64 %1329, -388
  store i64 %1330, i64* %3, align 8
  br label %block_.L_43c313

block_.L_43c49c:                                  ; preds = %block_.L_43c313
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i191, align 8
  %1331 = add i64 %958, -8
  %1332 = add i64 %998, 14
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RDI.i109, align 8
  store i8 0, i8* %AL.i973, align 1
  %1335 = add i64 %998, -241452
  %1336 = add i64 %998, 21
  %1337 = load i64, i64* %6, align 8
  %1338 = add i64 %1337, -8
  %1339 = inttoptr i64 %1338 to i64*
  store i64 %1336, i64* %1339, align 8
  store i64 %1338, i64* %6, align 8
  store i64 %1335, i64* %3, align 8
  %1340 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.18)
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -44
  %1343 = load i64, i64* %3, align 8
  %1344 = add i64 %1343, 7
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1342 to i32*
  store i32 0, i32* %1345, align 4
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -164
  %1348 = load i32, i32* %EAX.i891, align 4
  %1349 = load i64, i64* %3, align 8
  %1350 = add i64 %1349, 6
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1347 to i32*
  store i32 %1348, i32* %1351, align 4
  %R8.i212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_43c4be

block_.L_43c4be:                                  ; preds = %block_.L_43c789, %block_.L_43c49c
  %1352 = phi i64 [ %.pre66, %block_.L_43c49c ], [ %2229, %block_.L_43c789 ]
  %MEMORY.23 = phi %struct.Memory* [ %1340, %block_.L_43c49c ], [ %MEMORY.27, %block_.L_43c789 ]
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -44
  %1355 = add i64 %1352, 3
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RAX.i737, align 8
  %1359 = add i64 %1353, -16
  %1360 = add i64 %1352, 7
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i64*
  %1362 = load i64, i64* %1361, align 8
  store i64 %1362, i64* %RCX.i865, align 8
  %1363 = add i64 %1362, 24
  %1364 = add i64 %1352, 10
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = sub i32 %1357, %1366
  %1368 = icmp ult i32 %1357, %1366
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %14, align 1
  %1370 = and i32 %1367, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i32 %1366, %1357
  %1376 = xor i32 %1375, %1367
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %26, align 1
  %1380 = icmp eq i32 %1367, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %29, align 1
  %1382 = lshr i32 %1367, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %32, align 1
  %1384 = lshr i32 %1357, 31
  %1385 = lshr i32 %1366, 31
  %1386 = xor i32 %1385, %1384
  %1387 = xor i32 %1382, %1384
  %1388 = add nuw nsw i32 %1387, %1386
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %38, align 1
  %1391 = icmp ne i8 %1383, 0
  %1392 = xor i1 %1391, %1389
  %.v96 = select i1 %1392, i64 16, i64 734
  %1393 = add i64 %1352, %.v96
  store i64 %1393, i64* %3, align 8
  br i1 %1392, label %block_43c4ce, label %block_.L_43c79c

block_43c4ce:                                     ; preds = %block_.L_43c4be
  %1394 = add i64 %1393, 4
  store i64 %1394, i64* %3, align 8
  %1395 = load i32, i32* %1356, align 4
  store i8 0, i8* %14, align 1
  %1396 = and i32 %1395, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1401 = icmp eq i32 %1395, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = lshr i32 %1395, 31
  %1404 = trunc i32 %1403 to i8
  store i8 %1404, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1405 = icmp ne i8 %1404, 0
  %1406 = or i1 %1401, %1405
  %.v97 = select i1 %1406, i64 37, i64 10
  %1407 = add i64 %1393, %.v97
  store i64 %1407, i64* %3, align 8
  br i1 %1406, label %block_.L_43c4f3, label %block_43c4d8

block_43c4d8:                                     ; preds = %block_43c4ce
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i191, align 8
  %1408 = add i64 %1353, -8
  %1409 = add i64 %1407, 14
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %RDI.i109, align 8
  store i8 0, i8* %AL.i973, align 1
  %1412 = add i64 %1407, -241512
  %1413 = add i64 %1407, 21
  %1414 = load i64, i64* %6, align 8
  %1415 = add i64 %1414, -8
  %1416 = inttoptr i64 %1415 to i64*
  store i64 %1413, i64* %1416, align 8
  store i64 %1415, i64* %6, align 8
  store i64 %1412, i64* %3, align 8
  %1417 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.23)
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -168
  %1420 = load i32, i32* %EAX.i891, align 4
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 6
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1419 to i32*
  store i32 %1420, i32* %1423, align 4
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_43c4f3

block_.L_43c4f3:                                  ; preds = %block_43c4d8, %block_43c4ce
  %1424 = phi i64 [ %1407, %block_43c4ce ], [ %.pre68, %block_43c4d8 ]
  %1425 = phi i64 [ %1353, %block_43c4ce ], [ %.pre67, %block_43c4d8 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.23, %block_43c4ce ], [ %1417, %block_43c4d8 ]
  %1426 = add i64 %1425, -16
  %1427 = add i64 %1424, 4
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX.i737, align 8
  %1430 = add i64 %1429, 72
  %1431 = add i64 %1424, 9
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i64*
  %1433 = load i64, i64* %1432, align 8
  store i8 0, i8* %14, align 1
  %1434 = trunc i64 %1433 to i32
  %1435 = and i32 %1434, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1440 = icmp eq i64 %1433, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %29, align 1
  %1442 = lshr i64 %1433, 63
  %1443 = trunc i64 %1442 to i8
  store i8 %1443, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v98 = select i1 %1440, i64 112, i64 15
  %1444 = add i64 %1424, %.v98
  store i64 %1444, i64* %3, align 8
  br i1 %1440, label %block_.L_43c563, label %block_43c502

block_43c502:                                     ; preds = %block_.L_43c4f3
  %1445 = add i64 %1425, -40
  %1446 = add i64 %1444, 4
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i64*
  %1448 = load i64, i64* %1447, align 8
  store i64 %1448, i64* %RDI.i109, align 8
  %1449 = add i64 %1444, 8
  store i64 %1449, i64* %3, align 8
  %1450 = load i64, i64* %1428, align 8
  store i64 %1450, i64* %RAX.i737, align 8
  %1451 = add i64 %1450, 72
  %1452 = add i64 %1444, 12
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %RAX.i737, align 8
  %1455 = add i64 %1425, -44
  %1456 = add i64 %1444, 16
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i865, align 8
  %1460 = add i64 %1454, %1459
  store i64 %1460, i64* %RAX.i737, align 8
  %1461 = icmp ult i64 %1460, %1454
  %1462 = icmp ult i64 %1460, %1459
  %1463 = or i1 %1461, %1462
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %14, align 1
  %1465 = trunc i64 %1460 to i32
  %1466 = and i32 %1465, 255
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i64 %1454, %1459
  %1472 = xor i64 %1471, %1460
  %1473 = lshr i64 %1472, 4
  %1474 = trunc i64 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %26, align 1
  %1476 = icmp eq i64 %1460, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %29, align 1
  %1478 = lshr i64 %1460, 63
  %1479 = trunc i64 %1478 to i8
  store i8 %1479, i8* %32, align 1
  %1480 = lshr i64 %1454, 63
  %1481 = lshr i64 %1459, 63
  %1482 = xor i64 %1478, %1480
  %1483 = xor i64 %1478, %1481
  %1484 = add nuw nsw i64 %1482, %1483
  %1485 = icmp eq i64 %1484, 2
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %38, align 1
  %1487 = add i64 %1425, -20
  %1488 = add i64 %1444, 23
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = sext i32 %1490 to i64
  store i64 %1491, i64* %RDX.i402, align 8
  store i64 %1460, i64* %RSI.i191, align 8
  %1492 = add i64 %1444, -242002
  %1493 = add i64 %1444, 31
  %1494 = load i64, i64* %6, align 8
  %1495 = add i64 %1494, -8
  %1496 = inttoptr i64 %1495 to i64*
  store i64 %1493, i64* %1496, align 8
  store i64 %1495, i64* %6, align 8
  store i64 %1492, i64* %3, align 8
  %call2_43c51c = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %1492, %struct.Memory* %MEMORY.24)
  %1497 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i191, align 8
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %R8.i212, align 8
  %1498 = load i64, i64* %RBP.i, align 8
  %1499 = add i64 %1498, -40
  %1500 = add i64 %1497, 24
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RCX.i865, align 8
  %1503 = add i64 %1498, -20
  %1504 = add i64 %1497, 28
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i402, align 8
  %1508 = add i64 %1502, %1507
  %1509 = add i64 %1497, 32
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i8*
  store i8 0, i8* %1510, align 1
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -8
  %1513 = load i64, i64* %3, align 8
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1512 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RDI.i109, align 8
  %1517 = add i64 %1511, -32
  %1518 = add i64 %1513, 7
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RDX.i402, align 8
  %1522 = add i64 %1513, 10
  store i64 %1522, i64* %3, align 8
  %1523 = load i32, i32* %1519, align 4
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RCX.i865, align 8
  %1525 = add i64 %1511, -40
  %1526 = add i64 %1513, 14
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i64*
  %1528 = load i64, i64* %1527, align 8
  store i64 %1528, i64* %R9.i494, align 8
  %1529 = add i64 %1511, -176
  %1530 = load i64, i64* %RAX.i737, align 8
  %1531 = add i64 %1513, 21
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1529 to i64*
  store i64 %1530, i64* %1532, align 8
  %1533 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i973, align 1
  %1534 = add i64 %1533, -241638
  %1535 = add i64 %1533, 7
  %1536 = load i64, i64* %6, align 8
  %1537 = add i64 %1536, -8
  %1538 = inttoptr i64 %1537 to i64*
  store i64 %1535, i64* %1538, align 8
  store i64 %1537, i64* %6, align 8
  store i64 %1534, i64* %3, align 8
  %1539 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_43c51c)
  %1540 = load i64, i64* %RBP.i, align 8
  %1541 = add i64 %1540, -180
  %1542 = load i32, i32* %EAX.i891, align 4
  %1543 = load i64, i64* %3, align 8
  %1544 = add i64 %1543, 6
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1541 to i32*
  store i32 %1542, i32* %1545, align 4
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_43c563

block_.L_43c563:                                  ; preds = %block_43c502, %block_.L_43c4f3
  %1546 = phi i64 [ %1444, %block_.L_43c4f3 ], [ %.pre70, %block_43c502 ]
  %1547 = phi i64 [ %1425, %block_.L_43c4f3 ], [ %.pre69, %block_43c502 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_43c4f3 ], [ %1539, %block_43c502 ]
  %1548 = add i64 %1547, -16
  %1549 = add i64 %1546, 4
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i64*
  %1551 = load i64, i64* %1550, align 8
  store i64 %1551, i64* %RAX.i737, align 8
  %1552 = add i64 %1551, 88
  %1553 = add i64 %1546, 9
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i64*
  %1555 = load i64, i64* %1554, align 8
  store i8 0, i8* %14, align 1
  %1556 = trunc i64 %1555 to i32
  %1557 = and i32 %1556, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1562 = icmp eq i64 %1555, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %29, align 1
  %1564 = lshr i64 %1555, 63
  %1565 = trunc i64 %1564 to i8
  store i8 %1565, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %1562, i64 112, i64 15
  %1566 = add i64 %1546, %.v99
  store i64 %1566, i64* %3, align 8
  br i1 %1562, label %block_.L_43c5d3, label %block_43c572

block_43c572:                                     ; preds = %block_.L_43c563
  %1567 = add i64 %1547, -40
  %1568 = add i64 %1566, 4
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i64*
  %1570 = load i64, i64* %1569, align 8
  store i64 %1570, i64* %RDI.i109, align 8
  %1571 = add i64 %1566, 8
  store i64 %1571, i64* %3, align 8
  %1572 = load i64, i64* %1550, align 8
  store i64 %1572, i64* %RAX.i737, align 8
  %1573 = add i64 %1572, 88
  %1574 = add i64 %1566, 12
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i64*
  %1576 = load i64, i64* %1575, align 8
  store i64 %1576, i64* %RAX.i737, align 8
  %1577 = add i64 %1547, -44
  %1578 = add i64 %1566, 16
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = sext i32 %1580 to i64
  store i64 %1581, i64* %RCX.i865, align 8
  %1582 = add i64 %1576, %1581
  store i64 %1582, i64* %RAX.i737, align 8
  %1583 = icmp ult i64 %1582, %1576
  %1584 = icmp ult i64 %1582, %1581
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = trunc i64 %1582 to i32
  %1588 = and i32 %1587, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %21, align 1
  %1593 = xor i64 %1576, %1581
  %1594 = xor i64 %1593, %1582
  %1595 = lshr i64 %1594, 4
  %1596 = trunc i64 %1595 to i8
  %1597 = and i8 %1596, 1
  store i8 %1597, i8* %26, align 1
  %1598 = icmp eq i64 %1582, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %29, align 1
  %1600 = lshr i64 %1582, 63
  %1601 = trunc i64 %1600 to i8
  store i8 %1601, i8* %32, align 1
  %1602 = lshr i64 %1576, 63
  %1603 = lshr i64 %1581, 63
  %1604 = xor i64 %1600, %1602
  %1605 = xor i64 %1600, %1603
  %1606 = add nuw nsw i64 %1604, %1605
  %1607 = icmp eq i64 %1606, 2
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %38, align 1
  %1609 = add i64 %1547, -20
  %1610 = add i64 %1566, 23
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RDX.i402, align 8
  store i64 %1582, i64* %RSI.i191, align 8
  %1614 = add i64 %1566, -242114
  %1615 = add i64 %1566, 31
  %1616 = load i64, i64* %6, align 8
  %1617 = add i64 %1616, -8
  %1618 = inttoptr i64 %1617 to i64*
  store i64 %1615, i64* %1618, align 8
  store i64 %1617, i64* %6, align 8
  store i64 %1614, i64* %3, align 8
  %call2_43c58c = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %1614, %struct.Memory* %MEMORY.25)
  %1619 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i191, align 8
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %R8.i212, align 8
  %1620 = load i64, i64* %RBP.i, align 8
  %1621 = add i64 %1620, -40
  %1622 = add i64 %1619, 24
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RCX.i865, align 8
  %1625 = add i64 %1620, -20
  %1626 = add i64 %1619, 28
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RDX.i402, align 8
  %1630 = add i64 %1624, %1629
  %1631 = add i64 %1619, 32
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i8*
  store i8 0, i8* %1632, align 1
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -8
  %1635 = load i64, i64* %3, align 8
  %1636 = add i64 %1635, 4
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1634 to i64*
  %1638 = load i64, i64* %1637, align 8
  store i64 %1638, i64* %RDI.i109, align 8
  %1639 = add i64 %1633, -32
  %1640 = add i64 %1635, 7
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RDX.i402, align 8
  %1644 = add i64 %1635, 10
  store i64 %1644, i64* %3, align 8
  %1645 = load i32, i32* %1641, align 4
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RCX.i865, align 8
  %1647 = add i64 %1633, -40
  %1648 = add i64 %1635, 14
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %R9.i494, align 8
  %1651 = add i64 %1633, -192
  %1652 = load i64, i64* %RAX.i737, align 8
  %1653 = add i64 %1635, 21
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1651 to i64*
  store i64 %1652, i64* %1654, align 8
  %1655 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i973, align 1
  %1656 = add i64 %1655, -241750
  %1657 = add i64 %1655, 7
  %1658 = load i64, i64* %6, align 8
  %1659 = add i64 %1658, -8
  %1660 = inttoptr i64 %1659 to i64*
  store i64 %1657, i64* %1660, align 8
  store i64 %1659, i64* %6, align 8
  store i64 %1656, i64* %3, align 8
  %1661 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_43c58c)
  %1662 = load i64, i64* %RBP.i, align 8
  %1663 = add i64 %1662, -196
  %1664 = load i32, i32* %EAX.i891, align 4
  %1665 = load i64, i64* %3, align 8
  %1666 = add i64 %1665, 6
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1663 to i32*
  store i32 %1664, i32* %1667, align 4
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_43c5d3

block_.L_43c5d3:                                  ; preds = %block_43c572, %block_.L_43c563
  %1668 = phi i64 [ %1566, %block_.L_43c563 ], [ %.pre72, %block_43c572 ]
  %1669 = phi i64 [ %1547, %block_.L_43c563 ], [ %.pre71, %block_43c572 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_43c563 ], [ %1661, %block_43c572 ]
  %1670 = add i64 %1669, -24
  %1671 = add i64 %1668, 7
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  store i32 0, i32* %1672, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_43c5da

block_.L_43c5da:                                  ; preds = %block_.L_43c776, %block_.L_43c5d3
  %1673 = phi i64 [ %.pre73, %block_.L_43c5d3 ], [ %2190, %block_.L_43c776 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_43c5d3 ], [ %MEMORY.29, %block_.L_43c776 ]
  %1674 = load i64, i64* %RBP.i, align 8
  %1675 = add i64 %1674, -24
  %1676 = add i64 %1673, 3
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RAX.i737, align 8
  %1680 = add i64 %1674, -16
  %1681 = add i64 %1673, 7
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %RCX.i865, align 8
  %1684 = add i64 %1683, 28
  %1685 = add i64 %1673, 10
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = sub i32 %1678, %1687
  %1689 = icmp ult i32 %1678, %1687
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %14, align 1
  %1691 = and i32 %1688, 255
  %1692 = tail call i32 @llvm.ctpop.i32(i32 %1691)
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  store i8 %1695, i8* %21, align 1
  %1696 = xor i32 %1687, %1678
  %1697 = xor i32 %1696, %1688
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %26, align 1
  %1701 = icmp eq i32 %1688, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %29, align 1
  %1703 = lshr i32 %1688, 31
  %1704 = trunc i32 %1703 to i8
  store i8 %1704, i8* %32, align 1
  %1705 = lshr i32 %1678, 31
  %1706 = lshr i32 %1687, 31
  %1707 = xor i32 %1706, %1705
  %1708 = xor i32 %1703, %1705
  %1709 = add nuw nsw i32 %1708, %1707
  %1710 = icmp eq i32 %1709, 2
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %38, align 1
  %1712 = icmp ne i8 %1704, 0
  %1713 = xor i1 %1712, %1710
  %.v = select i1 %1713, i64 16, i64 431
  %1714 = add i64 %1673, %.v
  store i64 %1714, i64* %3, align 8
  br i1 %1713, label %block_43c5ea, label %block_.L_43c789

block_43c5ea:                                     ; preds = %block_.L_43c5da
  %1715 = add i64 %1674, -40
  %1716 = add i64 %1714, 4
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i64*
  %1718 = load i64, i64* %1717, align 8
  store i64 %1718, i64* %RDI.i109, align 8
  %1719 = add i64 %1714, 8
  store i64 %1719, i64* %3, align 8
  %1720 = load i64, i64* %1682, align 8
  store i64 %1720, i64* %RAX.i737, align 8
  %1721 = add i64 %1714, 11
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i64*
  %1723 = load i64, i64* %1722, align 8
  store i64 %1723, i64* %RAX.i737, align 8
  %1724 = add i64 %1714, 15
  store i64 %1724, i64* %3, align 8
  %1725 = load i32, i32* %1677, align 4
  %1726 = sext i32 %1725 to i64
  store i64 %1726, i64* %RCX.i865, align 8
  %1727 = shl nsw i64 %1726, 3
  %1728 = add i64 %1727, %1723
  %1729 = add i64 %1714, 19
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %RAX.i737, align 8
  %1732 = add i64 %1674, -44
  %1733 = add i64 %1714, 23
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = sext i32 %1735 to i64
  store i64 %1736, i64* %RCX.i865, align 8
  %1737 = add i64 %1731, %1736
  store i64 %1737, i64* %RAX.i737, align 8
  %1738 = icmp ult i64 %1737, %1731
  %1739 = icmp ult i64 %1737, %1736
  %1740 = or i1 %1738, %1739
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %14, align 1
  %1742 = trunc i64 %1737 to i32
  %1743 = and i32 %1742, 255
  %1744 = tail call i32 @llvm.ctpop.i32(i32 %1743)
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = xor i8 %1746, 1
  store i8 %1747, i8* %21, align 1
  %1748 = xor i64 %1731, %1736
  %1749 = xor i64 %1748, %1737
  %1750 = lshr i64 %1749, 4
  %1751 = trunc i64 %1750 to i8
  %1752 = and i8 %1751, 1
  store i8 %1752, i8* %26, align 1
  %1753 = icmp eq i64 %1737, 0
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %29, align 1
  %1755 = lshr i64 %1737, 63
  %1756 = trunc i64 %1755 to i8
  store i8 %1756, i8* %32, align 1
  %1757 = lshr i64 %1731, 63
  %1758 = lshr i64 %1736, 63
  %1759 = xor i64 %1755, %1757
  %1760 = xor i64 %1755, %1758
  %1761 = add nuw nsw i64 %1759, %1760
  %1762 = icmp eq i64 %1761, 2
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %38, align 1
  %1764 = add i64 %1674, -20
  %1765 = add i64 %1714, 30
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = sext i32 %1767 to i64
  store i64 %1768, i64* %RDX.i402, align 8
  store i64 %1737, i64* %RSI.i191, align 8
  %1769 = add i64 %1714, -242234
  %1770 = add i64 %1714, 38
  %1771 = load i64, i64* %6, align 8
  %1772 = add i64 %1771, -8
  %1773 = inttoptr i64 %1772 to i64*
  store i64 %1770, i64* %1773, align 8
  store i64 %1772, i64* %6, align 8
  store i64 %1769, i64* %3, align 8
  %call2_43c60b = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %1769, %struct.Memory* %MEMORY.27)
  %1774 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i191, align 8
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -40
  %1777 = add i64 %1774, 14
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i64*
  %1779 = load i64, i64* %1778, align 8
  store i64 %1779, i64* %RCX.i865, align 8
  %1780 = add i64 %1775, -20
  %1781 = add i64 %1774, 18
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = sext i32 %1783 to i64
  store i64 %1784, i64* %RDX.i402, align 8
  %1785 = add i64 %1779, %1784
  %1786 = add i64 %1774, 22
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i8*
  store i8 0, i8* %1787, align 1
  %1788 = load i64, i64* %RBP.i, align 8
  %1789 = add i64 %1788, -8
  %1790 = load i64, i64* %3, align 8
  %1791 = add i64 %1790, 4
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1789 to i64*
  %1793 = load i64, i64* %1792, align 8
  store i64 %1793, i64* %RDI.i109, align 8
  %1794 = add i64 %1788, -32
  %1795 = add i64 %1790, 7
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RDX.i402, align 8
  %1799 = add i64 %1790, 10
  store i64 %1799, i64* %3, align 8
  %1800 = load i32, i32* %1796, align 4
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RCX.i865, align 8
  %1802 = add i64 %1788, -16
  %1803 = add i64 %1790, 14
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i64*
  %1805 = load i64, i64* %1804, align 8
  store i64 %1805, i64* %R8.i212, align 8
  %1806 = add i64 %1805, 8
  %1807 = add i64 %1790, 18
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i64*
  %1809 = load i64, i64* %1808, align 8
  store i64 %1809, i64* %R8.i212, align 8
  %1810 = add i64 %1788, -24
  %1811 = add i64 %1790, 22
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = sext i32 %1813 to i64
  store i64 %1814, i64* %R9.i494, align 8
  %1815 = shl nsw i64 %1814, 3
  %1816 = add i64 %1815, %1809
  %1817 = add i64 %1790, 26
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i64*
  %1819 = load i64, i64* %1818, align 8
  store i64 %1819, i64* %R8.i212, align 8
  %1820 = add i64 %1788, -40
  %1821 = add i64 %1790, 30
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i64*
  %1823 = load i64, i64* %1822, align 8
  store i64 %1823, i64* %R9.i494, align 8
  %1824 = add i64 %1788, -208
  %1825 = load i64, i64* %RAX.i737, align 8
  %1826 = add i64 %1790, 37
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1824 to i64*
  store i64 %1825, i64* %1827, align 8
  %1828 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i973, align 1
  %1829 = add i64 %1828, -241883
  %1830 = add i64 %1828, 7
  %1831 = load i64, i64* %6, align 8
  %1832 = add i64 %1831, -8
  %1833 = inttoptr i64 %1832 to i64*
  store i64 %1830, i64* %1833, align 8
  store i64 %1832, i64* %6, align 8
  store i64 %1829, i64* %3, align 8
  %1834 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %1835 = load i64, i64* %RBP.i, align 8
  %1836 = add i64 %1835, -16
  %1837 = load i64, i64* %3, align 8
  %1838 = add i64 %1837, 4
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1836 to i64*
  %1840 = load i64, i64* %1839, align 8
  store i64 %1840, i64* %RSI.i191, align 8
  %1841 = add i64 %1840, 112
  %1842 = add i64 %1837, 9
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i8 0, i8* %14, align 1
  %1845 = trunc i64 %1844 to i32
  %1846 = and i32 %1845, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1851 = icmp eq i64 %1844, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i64 %1844, 63
  %1854 = trunc i64 %1853 to i8
  store i8 %1854, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1855 = add i64 %1835, -212
  %1856 = load i32, i32* %EAX.i891, align 4
  %1857 = add i64 %1837, 15
  store i64 %1857, i64* %3, align 8
  %1858 = inttoptr i64 %1855 to i32*
  store i32 %1856, i32* %1858, align 4
  %1859 = load i64, i64* %3, align 8
  %1860 = load i8, i8* %29, align 1
  %1861 = icmp ne i8 %1860, 0
  %.v119 = select i1 %1861, i64 134, i64 6
  %1862 = add i64 %1859, %.v119
  store i64 %1862, i64* %3, align 8
  %cmpBr_43c661 = icmp eq i8 %1860, 1
  br i1 %cmpBr_43c661, label %block_.L_43c6e7, label %block_43c667

block_43c667:                                     ; preds = %block_43c5ea
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -16
  %1865 = add i64 %1862, 4
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i64*
  %1867 = load i64, i64* %1866, align 8
  store i64 %1867, i64* %RAX.i737, align 8
  %1868 = add i64 %1867, 112
  %1869 = add i64 %1862, 8
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i64*
  %1871 = load i64, i64* %1870, align 8
  store i64 %1871, i64* %RAX.i737, align 8
  %1872 = add i64 %1863, -24
  %1873 = add i64 %1862, 12
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = sext i32 %1875 to i64
  store i64 %1876, i64* %RCX.i865, align 8
  %1877 = shl nsw i64 %1876, 3
  %1878 = add i64 %1877, %1871
  %1879 = add i64 %1862, 17
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i64*
  %1881 = load i64, i64* %1880, align 8
  store i8 0, i8* %14, align 1
  %1882 = trunc i64 %1881 to i32
  %1883 = and i32 %1882, 255
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1888 = icmp eq i64 %1881, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %29, align 1
  %1890 = lshr i64 %1881, 63
  %1891 = trunc i64 %1890 to i8
  store i8 %1891, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v100 = select i1 %1888, i64 128, i64 23
  %1892 = add i64 %1862, %.v100
  store i64 %1892, i64* %3, align 8
  br i1 %1888, label %block_.L_43c6e7, label %block_43c67e

block_43c67e:                                     ; preds = %block_43c667
  %1893 = add i64 %1863, -40
  %1894 = add i64 %1892, 4
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i64*
  %1896 = load i64, i64* %1895, align 8
  store i64 %1896, i64* %RDI.i109, align 8
  %1897 = add i64 %1892, 8
  store i64 %1897, i64* %3, align 8
  %1898 = load i64, i64* %1866, align 8
  store i64 %1898, i64* %RAX.i737, align 8
  %1899 = add i64 %1898, 112
  %1900 = add i64 %1892, 12
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i64*
  %1902 = load i64, i64* %1901, align 8
  store i64 %1902, i64* %RAX.i737, align 8
  %1903 = add i64 %1892, 16
  store i64 %1903, i64* %3, align 8
  %1904 = load i32, i32* %1874, align 4
  %1905 = sext i32 %1904 to i64
  store i64 %1905, i64* %RCX.i865, align 8
  %1906 = shl nsw i64 %1905, 3
  %1907 = add i64 %1906, %1902
  %1908 = add i64 %1892, 20
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i64*
  %1910 = load i64, i64* %1909, align 8
  store i64 %1910, i64* %RAX.i737, align 8
  %1911 = add i64 %1863, -44
  %1912 = add i64 %1892, 24
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1911 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = sext i32 %1914 to i64
  store i64 %1915, i64* %RCX.i865, align 8
  %1916 = add i64 %1910, %1915
  store i64 %1916, i64* %RAX.i737, align 8
  %1917 = icmp ult i64 %1916, %1910
  %1918 = icmp ult i64 %1916, %1915
  %1919 = or i1 %1917, %1918
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %14, align 1
  %1921 = trunc i64 %1916 to i32
  %1922 = and i32 %1921, 255
  %1923 = tail call i32 @llvm.ctpop.i32(i32 %1922)
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  store i8 %1926, i8* %21, align 1
  %1927 = xor i64 %1910, %1915
  %1928 = xor i64 %1927, %1916
  %1929 = lshr i64 %1928, 4
  %1930 = trunc i64 %1929 to i8
  %1931 = and i8 %1930, 1
  store i8 %1931, i8* %26, align 1
  %1932 = icmp eq i64 %1916, 0
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %29, align 1
  %1934 = lshr i64 %1916, 63
  %1935 = trunc i64 %1934 to i8
  store i8 %1935, i8* %32, align 1
  %1936 = lshr i64 %1910, 63
  %1937 = lshr i64 %1915, 63
  %1938 = xor i64 %1934, %1936
  %1939 = xor i64 %1934, %1937
  %1940 = add nuw nsw i64 %1938, %1939
  %1941 = icmp eq i64 %1940, 2
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %38, align 1
  %1943 = add i64 %1863, -20
  %1944 = add i64 %1892, 31
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i32*
  %1946 = load i32, i32* %1945, align 4
  %1947 = sext i32 %1946 to i64
  store i64 %1947, i64* %RDX.i402, align 8
  store i64 %1916, i64* %RSI.i191, align 8
  %1948 = add i64 %1892, -242382
  %1949 = add i64 %1892, 39
  %1950 = load i64, i64* %6, align 8
  %1951 = add i64 %1950, -8
  %1952 = inttoptr i64 %1951 to i64*
  store i64 %1949, i64* %1952, align 8
  store i64 %1951, i64* %6, align 8
  store i64 %1948, i64* %3, align 8
  %call2_43c6a0 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %1948, %struct.Memory* %1834)
  %1953 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i191, align 8
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %R8.i212, align 8
  %1954 = load i64, i64* %RBP.i, align 8
  %1955 = add i64 %1954, -40
  %1956 = add i64 %1953, 24
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i64*
  %1958 = load i64, i64* %1957, align 8
  store i64 %1958, i64* %RCX.i865, align 8
  %1959 = add i64 %1954, -20
  %1960 = add i64 %1953, 28
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = sext i32 %1962 to i64
  store i64 %1963, i64* %RDX.i402, align 8
  %1964 = add i64 %1958, %1963
  %1965 = add i64 %1953, 32
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i8*
  store i8 0, i8* %1966, align 1
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -8
  %1969 = load i64, i64* %3, align 8
  %1970 = add i64 %1969, 4
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1968 to i64*
  %1972 = load i64, i64* %1971, align 8
  store i64 %1972, i64* %RDI.i109, align 8
  %1973 = add i64 %1967, -32
  %1974 = add i64 %1969, 7
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RDX.i402, align 8
  %1978 = add i64 %1969, 10
  store i64 %1978, i64* %3, align 8
  %1979 = load i32, i32* %1975, align 4
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RCX.i865, align 8
  %1981 = add i64 %1967, -40
  %1982 = add i64 %1969, 14
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i64*
  %1984 = load i64, i64* %1983, align 8
  store i64 %1984, i64* %R9.i494, align 8
  %1985 = add i64 %1967, -224
  %1986 = load i64, i64* %RAX.i737, align 8
  %1987 = add i64 %1969, 21
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1985 to i64*
  store i64 %1986, i64* %1988, align 8
  %1989 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i973, align 1
  %1990 = add i64 %1989, -242026
  %1991 = add i64 %1989, 7
  %1992 = load i64, i64* %6, align 8
  %1993 = add i64 %1992, -8
  %1994 = inttoptr i64 %1993 to i64*
  store i64 %1991, i64* %1994, align 8
  store i64 %1993, i64* %6, align 8
  store i64 %1990, i64* %3, align 8
  %1995 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_43c6a0)
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -228
  %1998 = load i32, i32* %EAX.i891, align 4
  %1999 = load i64, i64* %3, align 8
  %2000 = add i64 %1999, 6
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1997 to i32*
  store i32 %1998, i32* %2001, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_43c6e7

block_.L_43c6e7:                                  ; preds = %block_43c67e, %block_43c667, %block_43c5ea
  %2002 = phi i64 [ %1862, %block_43c5ea ], [ %1892, %block_43c667 ], [ %.pre74, %block_43c67e ]
  %MEMORY.28 = phi %struct.Memory* [ %1834, %block_43c5ea ], [ %1834, %block_43c667 ], [ %1995, %block_43c67e ]
  %2003 = load i64, i64* %RBP.i, align 8
  %2004 = add i64 %2003, -16
  %2005 = add i64 %2002, 4
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i64*
  %2007 = load i64, i64* %2006, align 8
  store i64 %2007, i64* %RAX.i737, align 8
  %2008 = add i64 %2007, 120
  %2009 = add i64 %2002, 9
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i64*
  %2011 = load i64, i64* %2010, align 8
  store i8 0, i8* %14, align 1
  %2012 = trunc i64 %2011 to i32
  %2013 = and i32 %2012, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013)
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2018 = icmp eq i64 %2011, 0
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %29, align 1
  %2020 = lshr i64 %2011, 63
  %2021 = trunc i64 %2020 to i8
  store i8 %2021, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v101 = select i1 %2018, i64 143, i64 15
  %2022 = add i64 %2002, %.v101
  store i64 %2022, i64* %3, align 8
  br i1 %2018, label %block_.L_43c776, label %block_43c6f6

block_43c6f6:                                     ; preds = %block_.L_43c6e7
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %3, align 8
  %2024 = load i64, i64* %2006, align 8
  store i64 %2024, i64* %RAX.i737, align 8
  %2025 = add i64 %2024, 120
  %2026 = add i64 %2022, 8
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i64*
  %2028 = load i64, i64* %2027, align 8
  store i64 %2028, i64* %RAX.i737, align 8
  %2029 = add i64 %2003, -24
  %2030 = add i64 %2022, 12
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = sext i32 %2032 to i64
  store i64 %2033, i64* %RCX.i865, align 8
  %2034 = shl nsw i64 %2033, 3
  %2035 = add i64 %2034, %2028
  %2036 = add i64 %2022, 17
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i64*
  %2038 = load i64, i64* %2037, align 8
  store i8 0, i8* %14, align 1
  %2039 = trunc i64 %2038 to i32
  %2040 = and i32 %2039, 255
  %2041 = tail call i32 @llvm.ctpop.i32(i32 %2040)
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  %2044 = xor i8 %2043, 1
  store i8 %2044, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2045 = icmp eq i64 %2038, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %29, align 1
  %2047 = lshr i64 %2038, 63
  %2048 = trunc i64 %2047 to i8
  store i8 %2048, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v102 = select i1 %2045, i64 128, i64 23
  %2049 = add i64 %2022, %.v102
  store i64 %2049, i64* %3, align 8
  br i1 %2045, label %block_.L_43c776, label %block_43c70d

block_43c70d:                                     ; preds = %block_43c6f6
  %2050 = add i64 %2003, -40
  %2051 = add i64 %2049, 4
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i64*
  %2053 = load i64, i64* %2052, align 8
  store i64 %2053, i64* %RDI.i109, align 8
  %2054 = add i64 %2049, 8
  store i64 %2054, i64* %3, align 8
  %2055 = load i64, i64* %2006, align 8
  store i64 %2055, i64* %RAX.i737, align 8
  %2056 = add i64 %2055, 120
  %2057 = add i64 %2049, 12
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i64*
  %2059 = load i64, i64* %2058, align 8
  store i64 %2059, i64* %RAX.i737, align 8
  %2060 = add i64 %2049, 16
  store i64 %2060, i64* %3, align 8
  %2061 = load i32, i32* %2031, align 4
  %2062 = sext i32 %2061 to i64
  store i64 %2062, i64* %RCX.i865, align 8
  %2063 = shl nsw i64 %2062, 3
  %2064 = add i64 %2063, %2059
  %2065 = add i64 %2049, 20
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i64*
  %2067 = load i64, i64* %2066, align 8
  store i64 %2067, i64* %RAX.i737, align 8
  %2068 = add i64 %2003, -44
  %2069 = add i64 %2049, 24
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = sext i32 %2071 to i64
  store i64 %2072, i64* %RCX.i865, align 8
  %2073 = add i64 %2067, %2072
  store i64 %2073, i64* %RAX.i737, align 8
  %2074 = icmp ult i64 %2073, %2067
  %2075 = icmp ult i64 %2073, %2072
  %2076 = or i1 %2074, %2075
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %14, align 1
  %2078 = trunc i64 %2073 to i32
  %2079 = and i32 %2078, 255
  %2080 = tail call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  store i8 %2083, i8* %21, align 1
  %2084 = xor i64 %2067, %2072
  %2085 = xor i64 %2084, %2073
  %2086 = lshr i64 %2085, 4
  %2087 = trunc i64 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %26, align 1
  %2089 = icmp eq i64 %2073, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %29, align 1
  %2091 = lshr i64 %2073, 63
  %2092 = trunc i64 %2091 to i8
  store i8 %2092, i8* %32, align 1
  %2093 = lshr i64 %2067, 63
  %2094 = lshr i64 %2072, 63
  %2095 = xor i64 %2091, %2093
  %2096 = xor i64 %2091, %2094
  %2097 = add nuw nsw i64 %2095, %2096
  %2098 = icmp eq i64 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %38, align 1
  %2100 = add i64 %2003, -20
  %2101 = add i64 %2049, 31
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = sext i32 %2103 to i64
  store i64 %2104, i64* %RDX.i402, align 8
  store i64 %2073, i64* %RSI.i191, align 8
  %2105 = add i64 %2049, -242525
  %2106 = add i64 %2049, 39
  %2107 = load i64, i64* %6, align 8
  %2108 = add i64 %2107, -8
  %2109 = inttoptr i64 %2108 to i64*
  store i64 %2106, i64* %2109, align 8
  store i64 %2108, i64* %6, align 8
  store i64 %2105, i64* %3, align 8
  %call2_43c72f = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %2105, %struct.Memory* %MEMORY.28)
  %2110 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i191, align 8
  store i64 ptrtoint (%G__0x4599e8_type* @G__0x4599e8 to i64), i64* %R8.i212, align 8
  %2111 = load i64, i64* %RBP.i, align 8
  %2112 = add i64 %2111, -40
  %2113 = add i64 %2110, 24
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i64*
  %2115 = load i64, i64* %2114, align 8
  store i64 %2115, i64* %RCX.i865, align 8
  %2116 = add i64 %2111, -20
  %2117 = add i64 %2110, 28
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to i32*
  %2119 = load i32, i32* %2118, align 4
  %2120 = sext i32 %2119 to i64
  store i64 %2120, i64* %RDX.i402, align 8
  %2121 = add i64 %2115, %2120
  %2122 = add i64 %2110, 32
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i8*
  store i8 0, i8* %2123, align 1
  %2124 = load i64, i64* %RBP.i, align 8
  %2125 = add i64 %2124, -8
  %2126 = load i64, i64* %3, align 8
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2125 to i64*
  %2129 = load i64, i64* %2128, align 8
  store i64 %2129, i64* %RDI.i109, align 8
  %2130 = add i64 %2124, -32
  %2131 = add i64 %2126, 7
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RDX.i402, align 8
  %2135 = add i64 %2126, 10
  store i64 %2135, i64* %3, align 8
  %2136 = load i32, i32* %2132, align 4
  %2137 = zext i32 %2136 to i64
  store i64 %2137, i64* %RCX.i865, align 8
  %2138 = add i64 %2124, -40
  %2139 = add i64 %2126, 14
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i64*
  %2141 = load i64, i64* %2140, align 8
  store i64 %2141, i64* %R9.i494, align 8
  %2142 = add i64 %2124, -240
  %2143 = load i64, i64* %RAX.i737, align 8
  %2144 = add i64 %2126, 21
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2142 to i64*
  store i64 %2143, i64* %2145, align 8
  %2146 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i973, align 1
  %2147 = add i64 %2146, -242169
  %2148 = add i64 %2146, 7
  %2149 = load i64, i64* %6, align 8
  %2150 = add i64 %2149, -8
  %2151 = inttoptr i64 %2150 to i64*
  store i64 %2148, i64* %2151, align 8
  store i64 %2150, i64* %6, align 8
  store i64 %2147, i64* %3, align 8
  %2152 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_43c72f)
  %2153 = load i64, i64* %RBP.i, align 8
  %2154 = add i64 %2153, -244
  %2155 = load i32, i32* %EAX.i891, align 4
  %2156 = load i64, i64* %3, align 8
  %2157 = add i64 %2156, 6
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2154 to i32*
  store i32 %2155, i32* %2158, align 4
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43c776

block_.L_43c776:                                  ; preds = %block_43c70d, %block_43c6f6, %block_.L_43c6e7
  %2159 = phi i64 [ %2003, %block_.L_43c6e7 ], [ %2003, %block_43c6f6 ], [ %.pre76, %block_43c70d ]
  %2160 = phi i64 [ %2022, %block_.L_43c6e7 ], [ %2049, %block_43c6f6 ], [ %.pre75, %block_43c70d ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.28, %block_.L_43c6e7 ], [ %MEMORY.28, %block_43c6f6 ], [ %2152, %block_43c70d ]
  %2161 = add i64 %2159, -24
  %2162 = add i64 %2160, 8
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = add i32 %2164, 1
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i737, align 8
  %2167 = icmp eq i32 %2164, -1
  %2168 = icmp eq i32 %2165, 0
  %2169 = or i1 %2167, %2168
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %14, align 1
  %2171 = and i32 %2165, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %21, align 1
  %2176 = xor i32 %2165, %2164
  %2177 = lshr i32 %2176, 4
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  store i8 %2179, i8* %26, align 1
  %2180 = zext i1 %2168 to i8
  store i8 %2180, i8* %29, align 1
  %2181 = lshr i32 %2165, 31
  %2182 = trunc i32 %2181 to i8
  store i8 %2182, i8* %32, align 1
  %2183 = lshr i32 %2164, 31
  %2184 = xor i32 %2181, %2183
  %2185 = add nuw nsw i32 %2184, %2181
  %2186 = icmp eq i32 %2185, 2
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %38, align 1
  %2188 = add i64 %2160, 14
  store i64 %2188, i64* %3, align 8
  store i32 %2165, i32* %2163, align 4
  %2189 = load i64, i64* %3, align 8
  %2190 = add i64 %2189, -426
  store i64 %2190, i64* %3, align 8
  br label %block_.L_43c5da

block_.L_43c789:                                  ; preds = %block_.L_43c5da
  %2191 = add i64 %1674, -20
  %2192 = add i64 %1714, 8
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = zext i32 %2194 to i64
  store i64 %2195, i64* %RAX.i737, align 8
  %2196 = add i64 %1674, -44
  %2197 = add i64 %1714, 11
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = add i32 %2199, %2194
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RAX.i737, align 8
  %2202 = icmp ult i32 %2200, %2194
  %2203 = icmp ult i32 %2200, %2199
  %2204 = or i1 %2202, %2203
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %14, align 1
  %2206 = and i32 %2200, 255
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %21, align 1
  %2211 = xor i32 %2199, %2194
  %2212 = xor i32 %2211, %2200
  %2213 = lshr i32 %2212, 4
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %26, align 1
  %2216 = icmp eq i32 %2200, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %29, align 1
  %2218 = lshr i32 %2200, 31
  %2219 = trunc i32 %2218 to i8
  store i8 %2219, i8* %32, align 1
  %2220 = lshr i32 %2194, 31
  %2221 = lshr i32 %2199, 31
  %2222 = xor i32 %2218, %2220
  %2223 = xor i32 %2218, %2221
  %2224 = add nuw nsw i32 %2222, %2223
  %2225 = icmp eq i32 %2224, 2
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %38, align 1
  %2227 = add i64 %1714, 14
  store i64 %2227, i64* %3, align 8
  store i32 %2200, i32* %2198, align 4
  %2228 = load i64, i64* %3, align 8
  %2229 = add i64 %2228, -729
  store i64 %2229, i64* %3, align 8
  br label %block_.L_43c4be

block_.L_43c79c:                                  ; preds = %block_.L_43c4be
  %2230 = add i64 %1353, -40
  %2231 = add i64 %1393, 4
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i64*
  %2233 = load i64, i64* %2232, align 8
  store i64 %2233, i64* %RDI.i109, align 8
  %2234 = add i64 %1393, -242716
  %2235 = add i64 %1393, 9
  %2236 = load i64, i64* %6, align 8
  %2237 = add i64 %2236, -8
  %2238 = inttoptr i64 %2237 to i64*
  store i64 %2235, i64* %2238, align 8
  store i64 %2237, i64* %6, align 8
  store i64 %2234, i64* %3, align 8
  %2239 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.23)
  %2240 = load i64, i64* %6, align 8
  %2241 = load i64, i64* %3, align 8
  %2242 = add i64 %2240, 288
  store i64 %2242, i64* %6, align 8
  %2243 = icmp ugt i64 %2240, -289
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = trunc i64 %2242 to i32
  %2246 = and i32 %2245, 255
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %21, align 1
  %2251 = xor i64 %2242, %2240
  %2252 = lshr i64 %2251, 4
  %2253 = trunc i64 %2252 to i8
  %2254 = and i8 %2253, 1
  store i8 %2254, i8* %26, align 1
  %2255 = icmp eq i64 %2242, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %29, align 1
  %2257 = lshr i64 %2242, 63
  %2258 = trunc i64 %2257 to i8
  store i8 %2258, i8* %32, align 1
  %2259 = lshr i64 %2240, 63
  %2260 = xor i64 %2257, %2259
  %2261 = add nuw nsw i64 %2260, %2257
  %2262 = icmp eq i64 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %38, align 1
  %2264 = add i64 %2241, 8
  store i64 %2264, i64* %3, align 8
  %2265 = add i64 %2240, 296
  %2266 = inttoptr i64 %2242 to i64*
  %2267 = load i64, i64* %2266, align 8
  store i64 %2267, i64* %RBP.i, align 8
  store i64 %2265, i64* %6, align 8
  %2268 = add i64 %2241, 9
  store i64 %2268, i64* %3, align 8
  %2269 = inttoptr i64 %2265 to i64*
  %2270 = load i64, i64* %2269, align 8
  store i64 %2270, i64* %3, align 8
  %2271 = add i64 %2240, 304
  store i64 %2271, i64* %6, align 8
  ret %struct.Memory* %2239
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x120___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -288
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 288
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x65___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 101
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -102
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43bffd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c002(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43bfc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43c021(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 6, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 184
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43c074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459c9f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459c9f_type* @G__0x459c9f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43c09d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c0cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459ca5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459ca5_type* @G__0x459ca5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c0fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cae___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cae_type* @G__0x459cae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c12a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cb7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cb7_type* @G__0x459cb7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c159(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cc0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cc0_type* @G__0x459cc0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x40__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xa0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c1b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xa4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cc9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cc9_type* @G__0x459cc9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x88__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x8c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c1ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c1e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cd9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cd9_type* @G__0x459cd9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xa8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c241(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xac__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459ce4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459ce4_type* @G__0x459ce4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x90__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x94__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c27b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c276(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cf4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cf4_type* @G__0x459cf4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c2d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x9c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459cff___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459cff_type* @G__0x459cff to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c30c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c307(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459d0f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459d0f_type* @G__0x459d0f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43c49c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax__rsi_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c3a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i64 %10, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c3b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fc4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x68__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c409(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c41f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459d1a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459d1a_type* @G__0x459d1a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fc4___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c313(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43c79c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43c4f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c563(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45b16d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45992c___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c5d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459931___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43c789(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c6e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4599e3___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43c776(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4599e8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4599e8_type* @G__0x4599e8 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c77b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c5da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c78e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43c4be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x120___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 288
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -289
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
