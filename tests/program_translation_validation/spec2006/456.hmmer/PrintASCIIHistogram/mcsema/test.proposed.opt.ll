; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3b67a__rip__type = type <{ [4 x i8] }>
%G__0x456f7b_type = type <{ [8 x i8] }>
%G__0x456fa9_type = type <{ [8 x i8] }>
%G__0x456faf_type = type <{ [8 x i8] }>
%G__0x456fb3_type = type <{ [8 x i8] }>
%G__0x456fc0_type = type <{ [8 x i8] }>
%G__0x456fc2_type = type <{ [8 x i8] }>
%G__0x456fc4_type = type <{ [8 x i8] }>
%G__0x456fc6_type = type <{ [8 x i8] }>
%G__0x456fd4_type = type <{ [8 x i8] }>
%G__0x456fd9_type = type <{ [8 x i8] }>
%G__0x456fe7_type = type <{ [8 x i8] }>
%G__0x456ff4_type = type <{ [8 x i8] }>
%G__0x457001_type = type <{ [8 x i8] }>
%G__0x457024_type = type <{ [8 x i8] }>
%G__0x457056_type = type <{ [8 x i8] }>
%G__0x457071_type = type <{ [8 x i8] }>
%G__0x45708c_type = type <{ [8 x i8] }>
%G__0x4570a7_type = type <{ [8 x i8] }>
%G__0x4570c2_type = type <{ [8 x i8] }>
%G__0x4570f9_type = type <{ [8 x i8] }>
%G__0x457114_type = type <{ [8 x i8] }>
%G__0x458351_type = type <{ [8 x i8] }>
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
@G_0x3b67a__rip_ = global %G_0x3b67a__rip__type zeroinitializer
@G__0x456f7b = global %G__0x456f7b_type zeroinitializer
@G__0x456fa9 = global %G__0x456fa9_type zeroinitializer
@G__0x456faf = global %G__0x456faf_type zeroinitializer
@G__0x456fb3 = global %G__0x456fb3_type zeroinitializer
@G__0x456fc0 = global %G__0x456fc0_type zeroinitializer
@G__0x456fc2 = global %G__0x456fc2_type zeroinitializer
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer
@G__0x456fc6 = global %G__0x456fc6_type zeroinitializer
@G__0x456fd4 = global %G__0x456fd4_type zeroinitializer
@G__0x456fd9 = global %G__0x456fd9_type zeroinitializer
@G__0x456fe7 = global %G__0x456fe7_type zeroinitializer
@G__0x456ff4 = global %G__0x456ff4_type zeroinitializer
@G__0x457001 = global %G__0x457001_type zeroinitializer
@G__0x457024 = global %G__0x457024_type zeroinitializer
@G__0x457056 = global %G__0x457056_type zeroinitializer
@G__0x457071 = global %G__0x457071_type zeroinitializer
@G__0x45708c = global %G__0x45708c_type zeroinitializer
@G__0x4570a7 = global %G__0x4570a7_type zeroinitializer
@G__0x4570c2 = global %G__0x4570c2_type zeroinitializer
@G__0x4570f9 = global %G__0x4570f9_type zeroinitializer
@G__0x457114 = global %G__0x457114_type zeroinitializer
@G__0x458351 = global %G__0x458351_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @PrintASCIIHistogram(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -280
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 272
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i42 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -16
  %42 = load i64, i64* %RDI.i42, align 8
  %43 = add i64 %10, 14
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %RSI.i62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i62, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -152
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 10
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 3, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -16
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %62 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RSI.i62, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  %68 = add i64 %66, 20
  %69 = add i64 %63, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %RAX.i, align 8
  %73 = add i64 %63, 11
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %65, align 8
  store i64 %74, i64* %RSI.i62, align 8
  %75 = add i64 %74, 8
  %76 = add i64 %63, 14
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %71, %78
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX.i, align 8
  %81 = icmp ult i32 %71, %78
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %14, align 1
  %83 = and i32 %79, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83)
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1
  %88 = xor i32 %78, %71
  %89 = xor i32 %88, %79
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %27, align 1
  %93 = icmp eq i32 %79, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %30, align 1
  %95 = lshr i32 %79, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %33, align 1
  %97 = lshr i32 %71, 31
  %98 = lshr i32 %78, 31
  %99 = xor i32 %98, %97
  %100 = xor i32 %95, %97
  %101 = add nuw nsw i32 %100, %99
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %39, align 1
  %EAX.i189 = bitcast %union.anon* %67 to i32*
  %104 = add i64 %61, -32
  %105 = add i64 %63, 17
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 %79, i32* %106, align 4
  %RCX.i272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_418a35

block_.L_418a35:                                  ; preds = %block_.L_418a86, %entry
  %107 = phi i64 [ %300, %block_.L_418a86 ], [ %.pre, %entry ]
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -32
  %110 = add i64 %107, 3
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX.i, align 8
  %114 = add i64 %108, -16
  %115 = add i64 %107, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RCX.i272, align 8
  %118 = add i64 %117, 16
  %119 = add i64 %107, 10
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RDX.i353, align 8
  %123 = add i64 %107, 14
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %116, align 8
  store i64 %124, i64* %RCX.i272, align 8
  %125 = add i64 %124, 8
  %126 = add i64 %107, 17
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = sub i32 %121, %128
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RDX.i353, align 8
  %131 = lshr i32 %129, 31
  %132 = sub i32 %112, %129
  %133 = icmp ult i32 %112, %129
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %14, align 1
  %135 = and i32 %132, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135)
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %21, align 1
  %140 = xor i32 %129, %112
  %141 = xor i32 %140, %132
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %27, align 1
  %145 = icmp eq i32 %132, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %30, align 1
  %147 = lshr i32 %132, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %33, align 1
  %149 = lshr i32 %112, 31
  %150 = xor i32 %131, %149
  %151 = xor i32 %147, %149
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %39, align 1
  %155 = icmp ne i8 %148, 0
  %156 = xor i1 %155, %153
  %.demorgan = or i1 %145, %156
  %.v = select i1 %.demorgan, i64 25, i64 100
  %157 = add i64 %107, %.v
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan, label %block_418a4e, label %block_.L_418a99

block_418a4e:                                     ; preds = %block_.L_418a35
  %159 = add i64 %158, -16
  %160 = add i64 %157, 4
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX.i, align 8
  %163 = add i64 %157, 7
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RAX.i, align 8
  %166 = add i64 %158, -32
  %167 = add i64 %157, 11
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %RCX.i272, align 8
  %171 = shl nsw i64 %170, 2
  %172 = add i64 %171, %165
  %173 = add i64 %157, 14
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RDX.i353, align 8
  %177 = add i64 %158, -24
  %178 = add i64 %157, 17
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = sub i32 %175, %180
  %182 = icmp ult i32 %175, %180
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %14, align 1
  %184 = and i32 %181, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1
  %189 = xor i32 %180, %175
  %190 = xor i32 %189, %181
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %27, align 1
  %194 = icmp eq i32 %181, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %30, align 1
  %196 = lshr i32 %181, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %33, align 1
  %198 = lshr i32 %175, 31
  %199 = lshr i32 %180, 31
  %200 = xor i32 %199, %198
  %201 = xor i32 %196, %198
  %202 = add nuw nsw i32 %201, %200
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %39, align 1
  %205 = icmp ne i8 %197, 0
  %206 = xor i1 %205, %203
  %207 = or i1 %194, %206
  %.v133 = select i1 %207, i64 56, i64 23
  %208 = add i64 %157, %.v133
  store i64 %208, i64* %3, align 8
  br i1 %207, label %block_.L_418a86, label %block_418a65

block_418a65:                                     ; preds = %block_418a4e
  %209 = add i64 %208, 4
  store i64 %209, i64* %3, align 8
  %210 = load i64, i64* %161, align 8
  store i64 %210, i64* %RAX.i, align 8
  %211 = add i64 %208, 7
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %RAX.i, align 8
  %214 = add i64 %208, 11
  store i64 %214, i64* %3, align 8
  %215 = load i32, i32* %168, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %RCX.i272, align 8
  %217 = shl nsw i64 %216, 2
  %218 = add i64 %217, %213
  %219 = add i64 %208, 14
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RDX.i353, align 8
  %223 = add i64 %208, 17
  store i64 %223, i64* %3, align 8
  store i32 %221, i32* %179, align 4
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -32
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 3
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RDX.i353, align 8
  %231 = add i64 %224, -16
  %232 = add i64 %226, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RAX.i, align 8
  %235 = add i64 %234, 8
  %236 = add i64 %226, 10
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, %229
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RDX.i353, align 8
  %241 = icmp ult i32 %239, %229
  %242 = icmp ult i32 %239, %238
  %243 = or i1 %241, %242
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %14, align 1
  %245 = and i32 %239, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %21, align 1
  %250 = xor i32 %238, %229
  %251 = xor i32 %250, %239
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %27, align 1
  %255 = icmp eq i32 %239, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %30, align 1
  %257 = lshr i32 %239, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %33, align 1
  %259 = lshr i32 %229, 31
  %260 = lshr i32 %238, 31
  %261 = xor i32 %257, %259
  %262 = xor i32 %257, %260
  %263 = add nuw nsw i32 %261, %262
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %39, align 1
  %266 = add i64 %224, -136
  %267 = add i64 %226, 16
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 %239, i32* %268, align 4
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i64, i64* %RBP.i, align 8
  br label %block_.L_418a86

block_.L_418a86:                                  ; preds = %block_418a65, %block_418a4e
  %269 = phi i64 [ %.pre58, %block_418a65 ], [ %158, %block_418a4e ]
  %270 = phi i64 [ %.pre57, %block_418a65 ], [ %208, %block_418a4e ]
  %271 = add i64 %269, -32
  %272 = add i64 %270, 8
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX.i, align 8
  %277 = icmp eq i32 %274, -1
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %14, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i32 %275, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %27, align 1
  %290 = zext i1 %278 to i8
  store i8 %290, i8* %30, align 1
  %291 = lshr i32 %275, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %33, align 1
  %293 = lshr i32 %274, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %39, align 1
  %298 = add i64 %270, 14
  store i64 %298, i64* %3, align 8
  store i32 %275, i32* %273, align 4
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, -95
  store i64 %300, i64* %3, align 8
  br label %block_.L_418a35

block_.L_418a99:                                  ; preds = %block_.L_418a35
  %301 = add i64 %158, -136
  %302 = add i64 %157, 6
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i, align 8
  %306 = add i64 %158, -144
  %307 = add i64 %157, 12
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  store i32 %304, i32* %308, align 4
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -28
  %311 = load i64, i64* %3, align 8
  %312 = add i64 %311, 7
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %310 to i32*
  store i32 0, i32* %313, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_418aac

block_.L_418aac:                                  ; preds = %block_.L_418b21, %block_.L_418a99
  %314 = phi i64 [ %558, %block_.L_418b21 ], [ %.pre59, %block_.L_418a99 ]
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -136
  %317 = add i64 %314, 6
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i, align 8
  %321 = add i64 %315, -16
  %322 = add i64 %314, 10
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RCX.i272, align 8
  %325 = add i64 %324, 20
  %326 = add i64 %314, 13
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = sub i32 %319, %328
  %330 = icmp ult i32 %319, %328
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = and i32 %329, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i32 %328, %319
  %338 = xor i32 %337, %329
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %27, align 1
  %342 = icmp eq i32 %329, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %30, align 1
  %344 = lshr i32 %329, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %33, align 1
  %346 = lshr i32 %319, 31
  %347 = lshr i32 %328, 31
  %348 = xor i32 %347, %346
  %349 = xor i32 %344, %346
  %350 = add nuw nsw i32 %349, %348
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %39, align 1
  %353 = icmp ne i8 %345, 0
  %354 = xor i1 %353, %351
  %355 = or i1 %342, %354
  %.v107 = select i1 %355, i64 137, i64 19
  %356 = add i64 %314, %.v107
  store i64 %356, i64* %3, align 8
  br i1 %355, label %block_.L_418b35.loopexit, label %block_418abf

block_418abf:                                     ; preds = %block_.L_418aac
  %357 = add i64 %356, 6
  store i64 %357, i64* %3, align 8
  %358 = load i32, i32* %318, align 4
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RAX.i, align 8
  %360 = add i64 %356, 10
  store i64 %360, i64* %3, align 8
  %361 = load i64, i64* %323, align 8
  store i64 %361, i64* %RCX.i272, align 8
  %362 = add i64 %361, 8
  %363 = add i64 %356, 13
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sub i32 %358, %365
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i, align 8
  %368 = icmp ult i32 %358, %365
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %14, align 1
  %370 = and i32 %366, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %21, align 1
  %375 = xor i32 %365, %358
  %376 = xor i32 %375, %366
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %27, align 1
  %380 = icmp eq i32 %366, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %30, align 1
  %382 = lshr i32 %366, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %33, align 1
  %384 = lshr i32 %358, 31
  %385 = lshr i32 %365, 31
  %386 = xor i32 %385, %384
  %387 = xor i32 %382, %384
  %388 = add nuw nsw i32 %387, %386
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %39, align 1
  %391 = add i64 %315, -32
  %392 = add i64 %356, 16
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 %366, i32* %393, align 4
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -16
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, 4
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RCX.i272, align 8
  %400 = add i64 %396, 7
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RCX.i272, align 8
  %403 = add i64 %394, -32
  %404 = add i64 %396, 11
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %RDX.i353, align 8
  %408 = shl nsw i64 %407, 2
  %409 = add i64 %408, %402
  %410 = add i64 %396, 15
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  store i8 0, i8* %14, align 1
  %413 = and i32 %412, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %418 = icmp eq i32 %412, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %30, align 1
  %420 = lshr i32 %412, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %422 = icmp ne i8 %421, 0
  %423 = or i1 %418, %422
  %.v108 = select i1 %423, i64 33, i64 21
  %424 = add i64 %396, %.v108
  store i64 %424, i64* %3, align 8
  %425 = add i64 %394, -28
  br i1 %423, label %block_.L_418af0, label %block_418ae4

block_418ae4:                                     ; preds = %block_418abf
  %426 = add i64 %424, 7
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  store i32 0, i32* %427, align 4
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 54
  %.pre60 = load i64, i64* %RBP.i, align 8
  br label %block_.L_418b21

block_.L_418af0:                                  ; preds = %block_418abf
  %430 = add i64 %424, 3
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %425 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i32 %432, 1
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX.i, align 8
  %435 = icmp eq i32 %432, -1
  %436 = icmp eq i32 %433, 0
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %14, align 1
  %439 = and i32 %433, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %21, align 1
  %444 = xor i32 %433, %432
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %27, align 1
  %448 = zext i1 %436 to i8
  store i8 %448, i8* %30, align 1
  %449 = lshr i32 %433, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %33, align 1
  %451 = lshr i32 %432, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %449
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %39, align 1
  %456 = add i64 %424, 9
  store i64 %456, i64* %3, align 8
  store i32 %433, i32* %431, align 4
  %457 = load i32, i32* %EAX.i189, align 4
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -152
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 6
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = sub i32 %457, %463
  %465 = icmp ult i32 %457, %463
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = and i32 %464, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %21, align 1
  %472 = xor i32 %463, %457
  %473 = xor i32 %472, %464
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %27, align 1
  %477 = icmp eq i32 %464, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %30, align 1
  %479 = lshr i32 %464, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %33, align 1
  %481 = lshr i32 %457, 31
  %482 = lshr i32 %463, 31
  %483 = xor i32 %482, %481
  %484 = xor i32 %479, %481
  %485 = add nuw nsw i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %39, align 1
  %.v109 = select i1 %477, i64 12, i64 35
  %488 = add i64 %460, %.v109
  store i64 %488, i64* %3, align 8
  br i1 %477, label %block_418b05, label %block_.L_418b1c

block_418b05:                                     ; preds = %block_.L_418af0
  %489 = add i64 %488, 6
  store i64 %489, i64* %3, align 8
  %490 = load i32, i32* %462, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i, align 8
  %492 = add i64 %458, -136
  %493 = add i64 %488, 12
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, %490
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i, align 8
  %498 = icmp ult i32 %496, %490
  %499 = icmp ult i32 %496, %495
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %495, %490
  %508 = xor i32 %507, %496
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %27, align 1
  %512 = icmp eq i32 %496, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %30, align 1
  %514 = lshr i32 %496, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %33, align 1
  %516 = lshr i32 %490, 31
  %517 = lshr i32 %495, 31
  %518 = xor i32 %514, %516
  %519 = xor i32 %514, %517
  %520 = add nuw nsw i32 %518, %519
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %39, align 1
  %523 = add i64 %488, 18
  store i64 %523, i64* %3, align 8
  store i32 %496, i32* %494, align 4
  %524 = load i64, i64* %3, align 8
  %525 = add i64 %524, 30
  store i64 %525, i64* %3, align 8
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %block_.L_418b35

block_.L_418b1c:                                  ; preds = %block_.L_418af0
  %526 = add i64 %488, 5
  store i64 %526, i64* %3, align 8
  br label %block_.L_418b21

block_.L_418b21:                                  ; preds = %block_.L_418b1c, %block_418ae4
  %527 = phi i64 [ %.pre60, %block_418ae4 ], [ %458, %block_.L_418b1c ]
  %storemerge = phi i64 [ %429, %block_418ae4 ], [ %526, %block_.L_418b1c ]
  %528 = add i64 %527, -136
  %529 = add i64 %storemerge, 6
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = add i32 %531, -1
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX.i, align 8
  %534 = icmp ne i32 %531, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %14, align 1
  %536 = and i32 %532, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %21, align 1
  %541 = xor i32 %531, 16
  %542 = xor i32 %541, %532
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %27, align 1
  %546 = icmp eq i32 %532, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %30, align 1
  %548 = lshr i32 %532, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %33, align 1
  %550 = lshr i32 %531, 31
  %551 = xor i32 %548, %550
  %552 = xor i32 %548, 1
  %553 = add nuw nsw i32 %551, %552
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %39, align 1
  %556 = add i64 %storemerge, 15
  store i64 %556, i64* %3, align 8
  store i32 %532, i32* %530, align 4
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, -132
  store i64 %558, i64* %3, align 8
  br label %block_.L_418aac

block_.L_418b35.loopexit:                         ; preds = %block_.L_418aac
  br label %block_.L_418b35

block_.L_418b35:                                  ; preds = %block_.L_418b35.loopexit, %block_418b05
  %559 = phi i64 [ %525, %block_418b05 ], [ %356, %block_.L_418b35.loopexit ]
  %560 = phi i64 [ %.pre61, %block_418b05 ], [ %315, %block_.L_418b35.loopexit ]
  %561 = add i64 %560, -28
  %562 = add i64 %559, 7
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 0, i32* %563, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_418b3c

block_.L_418b3c:                                  ; preds = %block_.L_418bb3, %block_.L_418b35
  %564 = phi i64 [ %804, %block_.L_418bb3 ], [ %.pre62, %block_.L_418b35 ]
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -144
  %567 = add i64 %564, 6
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i, align 8
  %571 = add i64 %565, -16
  %572 = add i64 %564, 10
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* %RCX.i272, align 8
  %575 = add i64 %574, 16
  %576 = add i64 %564, 13
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = sub i32 %569, %578
  %580 = icmp ult i32 %569, %578
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %14, align 1
  %582 = and i32 %579, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %21, align 1
  %587 = xor i32 %578, %569
  %588 = xor i32 %587, %579
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %27, align 1
  %592 = icmp eq i32 %579, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %30, align 1
  %594 = lshr i32 %579, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %33, align 1
  %596 = lshr i32 %569, 31
  %597 = lshr i32 %578, 31
  %598 = xor i32 %597, %596
  %599 = xor i32 %594, %596
  %600 = add nuw nsw i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %39, align 1
  %603 = icmp ne i8 %595, 0
  %604 = xor i1 %603, %601
  %.v110 = select i1 %604, i64 19, i64 139
  %605 = add i64 %564, %.v110
  store i64 %605, i64* %3, align 8
  br i1 %604, label %block_418b4f, label %block_.L_418bc7.loopexit

block_418b4f:                                     ; preds = %block_.L_418b3c
  %606 = add i64 %605, 6
  store i64 %606, i64* %3, align 8
  %607 = load i32, i32* %568, align 4
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RAX.i, align 8
  %609 = add i64 %605, 10
  store i64 %609, i64* %3, align 8
  %610 = load i64, i64* %573, align 8
  store i64 %610, i64* %RCX.i272, align 8
  %611 = add i64 %610, 8
  %612 = add i64 %605, 13
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = sub i32 %607, %614
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX.i, align 8
  %617 = icmp ult i32 %607, %614
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = and i32 %615, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %21, align 1
  %624 = xor i32 %614, %607
  %625 = xor i32 %624, %615
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %27, align 1
  %629 = icmp eq i32 %615, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i32 %615, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %33, align 1
  %633 = lshr i32 %607, 31
  %634 = lshr i32 %614, 31
  %635 = xor i32 %634, %633
  %636 = xor i32 %631, %633
  %637 = add nuw nsw i32 %636, %635
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %39, align 1
  %640 = add i64 %565, -32
  %641 = add i64 %605, 16
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  store i32 %615, i32* %642, align 4
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -16
  %645 = load i64, i64* %3, align 8
  %646 = add i64 %645, 4
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %644 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %RCX.i272, align 8
  %649 = add i64 %645, 7
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RCX.i272, align 8
  %652 = add i64 %643, -32
  %653 = add i64 %645, 11
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = sext i32 %655 to i64
  store i64 %656, i64* %RDX.i353, align 8
  %657 = shl nsw i64 %656, 2
  %658 = add i64 %657, %651
  %659 = add i64 %645, 15
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  store i8 0, i8* %14, align 1
  %662 = and i32 %661, 255
  %663 = tail call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  store i8 %666, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %667 = icmp eq i32 %661, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %30, align 1
  %669 = lshr i32 %661, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %671 = icmp ne i8 %670, 0
  %672 = or i1 %667, %671
  %.v131 = select i1 %672, i64 33, i64 21
  %673 = add i64 %645, %.v131
  store i64 %673, i64* %3, align 8
  %674 = add i64 %643, -28
  br i1 %672, label %block_.L_418b80, label %block_418b74

block_418b74:                                     ; preds = %block_418b4f
  %675 = add i64 %673, 7
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  store i32 0, i32* %676, align 4
  %677 = load i64, i64* %3, align 8
  %678 = add i64 %677, 56
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_418bb3

block_.L_418b80:                                  ; preds = %block_418b4f
  %679 = add i64 %673, 3
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %674 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = add i32 %681, 1
  %683 = zext i32 %682 to i64
  store i64 %683, i64* %RAX.i, align 8
  %684 = icmp eq i32 %681, -1
  %685 = icmp eq i32 %682, 0
  %686 = or i1 %684, %685
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %14, align 1
  %688 = and i32 %682, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %21, align 1
  %693 = xor i32 %682, %681
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %27, align 1
  %697 = zext i1 %685 to i8
  store i8 %697, i8* %30, align 1
  %698 = lshr i32 %682, 31
  %699 = trunc i32 %698 to i8
  store i8 %699, i8* %33, align 1
  %700 = lshr i32 %681, 31
  %701 = xor i32 %698, %700
  %702 = add nuw nsw i32 %701, %698
  %703 = icmp eq i32 %702, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %39, align 1
  %705 = add i64 %673, 9
  store i64 %705, i64* %3, align 8
  store i32 %682, i32* %680, align 4
  %706 = load i32, i32* %EAX.i189, align 4
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -152
  %709 = load i64, i64* %3, align 8
  %710 = add i64 %709, 6
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %708 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = sub i32 %706, %712
  %714 = icmp ult i32 %706, %712
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %14, align 1
  %716 = and i32 %713, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  %721 = xor i32 %712, %706
  %722 = xor i32 %721, %713
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %27, align 1
  %726 = icmp eq i32 %713, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %30, align 1
  %728 = lshr i32 %713, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %33, align 1
  %730 = lshr i32 %706, 31
  %731 = lshr i32 %712, 31
  %732 = xor i32 %731, %730
  %733 = xor i32 %728, %730
  %734 = add nuw nsw i32 %733, %732
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %39, align 1
  %.v132 = select i1 %726, i64 12, i64 37
  %737 = add i64 %709, %.v132
  store i64 %737, i64* %3, align 8
  br i1 %726, label %block_418b95, label %block_.L_418bae

block_418b95:                                     ; preds = %block_.L_418b80
  %738 = add i64 %737, 6
  store i64 %738, i64* %3, align 8
  %739 = load i32, i32* %711, align 4
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i, align 8
  %741 = add i64 %707, -144
  %742 = add i64 %737, 12
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = sub i32 %744, %739
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RCX.i272, align 8
  %747 = icmp ult i32 %744, %739
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %14, align 1
  %749 = and i32 %745, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %21, align 1
  %754 = xor i32 %739, %744
  %755 = xor i32 %754, %745
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %27, align 1
  %759 = icmp eq i32 %745, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %30, align 1
  %761 = lshr i32 %745, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %33, align 1
  %763 = lshr i32 %744, 31
  %764 = lshr i32 %739, 31
  %765 = xor i32 %764, %763
  %766 = xor i32 %761, %763
  %767 = add nuw nsw i32 %766, %765
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %39, align 1
  %770 = add i64 %737, 20
  store i64 %770, i64* %3, align 8
  store i32 %745, i32* %743, align 4
  %771 = load i64, i64* %3, align 8
  %772 = add i64 %771, 30
  store i64 %772, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %block_.L_418bc7

block_.L_418bae:                                  ; preds = %block_.L_418b80
  %773 = add i64 %737, 5
  store i64 %773, i64* %3, align 8
  br label %block_.L_418bb3

block_.L_418bb3:                                  ; preds = %block_.L_418bae, %block_418b74
  %774 = phi i64 [ %.pre100, %block_418b74 ], [ %707, %block_.L_418bae ]
  %storemerge33 = phi i64 [ %678, %block_418b74 ], [ %773, %block_.L_418bae ]
  %775 = add i64 %774, -144
  %776 = add i64 %storemerge33, 6
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = add i32 %778, 1
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX.i, align 8
  %781 = icmp eq i32 %778, -1
  %782 = icmp eq i32 %779, 0
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %14, align 1
  %785 = and i32 %779, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  %790 = xor i32 %779, %778
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %27, align 1
  %794 = zext i1 %782 to i8
  store i8 %794, i8* %30, align 1
  %795 = lshr i32 %779, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %33, align 1
  %797 = lshr i32 %778, 31
  %798 = xor i32 %795, %797
  %799 = add nuw nsw i32 %798, %795
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %39, align 1
  %802 = add i64 %storemerge33, 15
  store i64 %802, i64* %3, align 8
  store i32 %779, i32* %777, align 4
  %803 = load i64, i64* %3, align 8
  %804 = add i64 %803, -134
  store i64 %804, i64* %3, align 8
  br label %block_.L_418b3c

block_.L_418bc7.loopexit:                         ; preds = %block_.L_418b3c
  br label %block_.L_418bc7

block_.L_418bc7:                                  ; preds = %block_.L_418bc7.loopexit, %block_418b95
  %805 = phi i64 [ %772, %block_418b95 ], [ %605, %block_.L_418bc7.loopexit ]
  %806 = phi i64 [ %.pre63, %block_418b95 ], [ %565, %block_.L_418bc7.loopexit ]
  %807 = add i64 %806, -140
  %808 = add i64 %805, 10
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  store i32 0, i32* %809, align 4
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -16
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 4
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RAX.i, align 8
  %816 = add i64 %815, 20
  %817 = add i64 %812, 7
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RCX.i272, align 8
  %821 = add i64 %812, 11
  store i64 %821, i64* %3, align 8
  %822 = load i64, i64* %814, align 8
  store i64 %822, i64* %RAX.i, align 8
  %823 = add i64 %822, 8
  %824 = add i64 %812, 14
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = sub i32 %819, %826
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RCX.i272, align 8
  %829 = icmp ult i32 %819, %826
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %14, align 1
  %831 = and i32 %827, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831)
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %21, align 1
  %836 = xor i32 %826, %819
  %837 = xor i32 %836, %827
  %838 = lshr i32 %837, 4
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %27, align 1
  %841 = icmp eq i32 %827, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %30, align 1
  %843 = lshr i32 %827, 31
  %844 = trunc i32 %843 to i8
  store i8 %844, i8* %33, align 1
  %845 = lshr i32 %819, 31
  %846 = lshr i32 %826, 31
  %847 = xor i32 %846, %845
  %848 = xor i32 %843, %845
  %849 = add nuw nsw i32 %848, %847
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %39, align 1
  %852 = add i64 %810, -32
  %853 = add i64 %812, 17
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  store i32 %827, i32* %854, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_418be2

block_.L_418be2:                                  ; preds = %block_418bfa, %block_.L_418bc7
  %855 = phi i64 [ %986, %block_418bfa ], [ %.pre64, %block_.L_418bc7 ]
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -32
  %858 = add i64 %855, 3
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RAX.i, align 8
  %862 = add i64 %856, -136
  %863 = add i64 %855, 9
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RCX.i272, align 8
  %867 = add i64 %856, -16
  %868 = add i64 %855, 13
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %RDX.i353, align 8
  %871 = add i64 %870, 8
  %872 = add i64 %855, 16
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = sub i32 %865, %874
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RCX.i272, align 8
  %877 = lshr i32 %875, 31
  %878 = sub i32 %860, %875
  %879 = icmp ult i32 %860, %875
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %14, align 1
  %881 = and i32 %878, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %21, align 1
  %886 = xor i32 %875, %860
  %887 = xor i32 %886, %878
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %27, align 1
  %891 = icmp eq i32 %878, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %30, align 1
  %893 = lshr i32 %878, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %33, align 1
  %895 = lshr i32 %860, 31
  %896 = xor i32 %877, %895
  %897 = xor i32 %893, %895
  %898 = add nuw nsw i32 %897, %896
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %39, align 1
  %901 = icmp ne i8 %894, 0
  %902 = xor i1 %901, %899
  %.demorgan105 = or i1 %891, %902
  %.v111 = select i1 %.demorgan105, i64 24, i64 64
  %903 = add i64 %855, %.v111
  store i64 %903, i64* %3, align 8
  %904 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan105, label %block_418bfa, label %block_.L_418c22

block_418bfa:                                     ; preds = %block_.L_418be2
  %905 = add i64 %904, -16
  %906 = add i64 %903, 4
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RAX.i, align 8
  %909 = add i64 %903, 7
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX.i, align 8
  %912 = add i64 %904, -32
  %913 = add i64 %903, 11
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = sext i32 %915 to i64
  store i64 %916, i64* %RCX.i272, align 8
  %917 = shl nsw i64 %916, 2
  %918 = add i64 %917, %911
  %919 = add i64 %903, 14
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RDX.i353, align 8
  %923 = add i64 %904, -140
  %924 = add i64 %903, 20
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = add i32 %926, %921
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RDX.i353, align 8
  %929 = icmp ult i32 %927, %921
  %930 = icmp ult i32 %927, %926
  %931 = or i1 %929, %930
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %14, align 1
  %933 = and i32 %927, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %21, align 1
  %938 = xor i32 %926, %921
  %939 = xor i32 %938, %927
  %940 = lshr i32 %939, 4
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  store i8 %942, i8* %27, align 1
  %943 = icmp eq i32 %927, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %30, align 1
  %945 = lshr i32 %927, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %33, align 1
  %947 = lshr i32 %921, 31
  %948 = lshr i32 %926, 31
  %949 = xor i32 %945, %947
  %950 = xor i32 %945, %948
  %951 = add nuw nsw i32 %949, %950
  %952 = icmp eq i32 %951, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %39, align 1
  %954 = add i64 %903, 26
  store i64 %954, i64* %3, align 8
  store i32 %927, i32* %925, align 4
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -32
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, 3
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %956 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = add i32 %960, 1
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RAX.i, align 8
  %963 = icmp eq i32 %960, -1
  %964 = icmp eq i32 %961, 0
  %965 = or i1 %963, %964
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %14, align 1
  %967 = and i32 %961, 255
  %968 = tail call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  store i8 %971, i8* %21, align 1
  %972 = xor i32 %961, %960
  %973 = lshr i32 %972, 4
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %27, align 1
  %976 = zext i1 %964 to i8
  store i8 %976, i8* %30, align 1
  %977 = lshr i32 %961, 31
  %978 = trunc i32 %977 to i8
  store i8 %978, i8* %33, align 1
  %979 = lshr i32 %960, 31
  %980 = xor i32 %977, %979
  %981 = add nuw nsw i32 %980, %977
  %982 = icmp eq i32 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %39, align 1
  %984 = add i64 %957, 9
  store i64 %984, i64* %3, align 8
  store i32 %961, i32* %959, align 4
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, -59
  store i64 %986, i64* %3, align 8
  br label %block_.L_418be2

block_.L_418c22:                                  ; preds = %block_.L_418be2
  %987 = add i64 %904, -148
  %988 = add i64 %903, 10
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  store i32 0, i32* %989, align 4
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -16
  %992 = load i64, i64* %3, align 8
  %993 = add i64 %992, 4
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %991 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RAX.i, align 8
  %996 = add i64 %995, 16
  %997 = add i64 %992, 7
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RCX.i272, align 8
  %1001 = add i64 %992, 11
  store i64 %1001, i64* %3, align 8
  %1002 = load i64, i64* %994, align 8
  store i64 %1002, i64* %RAX.i, align 8
  %1003 = add i64 %1002, 8
  %1004 = add i64 %992, 14
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = sub i32 %999, %1006
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RCX.i272, align 8
  %1009 = icmp ult i32 %999, %1006
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %14, align 1
  %1011 = and i32 %1007, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  %1016 = xor i32 %1006, %999
  %1017 = xor i32 %1016, %1007
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %27, align 1
  %1021 = icmp eq i32 %1007, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %30, align 1
  %1023 = lshr i32 %1007, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %33, align 1
  %1025 = lshr i32 %999, 31
  %1026 = lshr i32 %1006, 31
  %1027 = xor i32 %1026, %1025
  %1028 = xor i32 %1023, %1025
  %1029 = add nuw nsw i32 %1028, %1027
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %39, align 1
  %1032 = add i64 %990, -32
  %1033 = add i64 %992, 17
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i32*
  store i32 %1007, i32* %1034, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_418c3d

block_.L_418c3d:                                  ; preds = %block_418c55, %block_.L_418c22
  %1035 = phi i64 [ %1162, %block_418c55 ], [ %.pre65, %block_.L_418c22 ]
  %1036 = load i64, i64* %RBP.i, align 8
  %1037 = add i64 %1036, -32
  %1038 = add i64 %1035, 3
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1037 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i, align 8
  %1042 = add i64 %1036, -144
  %1043 = add i64 %1035, 9
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RCX.i272, align 8
  %1047 = add i64 %1036, -16
  %1048 = add i64 %1035, 13
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i64*
  %1050 = load i64, i64* %1049, align 8
  store i64 %1050, i64* %RDX.i353, align 8
  %1051 = add i64 %1050, 8
  %1052 = add i64 %1035, 16
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = sub i32 %1045, %1054
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RCX.i272, align 8
  %1057 = lshr i32 %1055, 31
  %1058 = sub i32 %1040, %1055
  %1059 = icmp ult i32 %1040, %1055
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %14, align 1
  %1061 = and i32 %1058, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %21, align 1
  %1066 = xor i32 %1055, %1040
  %1067 = xor i32 %1066, %1058
  %1068 = lshr i32 %1067, 4
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  store i8 %1070, i8* %27, align 1
  %1071 = icmp eq i32 %1058, 0
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %30, align 1
  %1073 = lshr i32 %1058, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %33, align 1
  %1075 = lshr i32 %1040, 31
  %1076 = xor i32 %1057, %1075
  %1077 = xor i32 %1073, %1075
  %1078 = add nuw nsw i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %39, align 1
  %1081 = icmp ne i8 %1074, 0
  %1082 = xor i1 %1081, %1079
  %.v112 = select i1 %1082, i64 64, i64 24
  %1083 = add i64 %1035, %.v112
  store i64 %1083, i64* %3, align 8
  br i1 %1082, label %block_.L_418c7d, label %block_418c55

block_418c55:                                     ; preds = %block_.L_418c3d
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %3, align 8
  %1085 = load i64, i64* %1049, align 8
  store i64 %1085, i64* %RAX.i, align 8
  %1086 = add i64 %1083, 7
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  store i64 %1088, i64* %RAX.i, align 8
  %1089 = add i64 %1083, 11
  store i64 %1089, i64* %3, align 8
  %1090 = load i32, i32* %1039, align 4
  %1091 = sext i32 %1090 to i64
  store i64 %1091, i64* %RCX.i272, align 8
  %1092 = shl nsw i64 %1091, 2
  %1093 = add i64 %1092, %1088
  %1094 = add i64 %1083, 14
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RDX.i353, align 8
  %1098 = add i64 %1036, -148
  %1099 = add i64 %1083, 20
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = add i32 %1101, %1096
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RDX.i353, align 8
  %1104 = icmp ult i32 %1102, %1096
  %1105 = icmp ult i32 %1102, %1101
  %1106 = or i1 %1104, %1105
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %14, align 1
  %1108 = and i32 %1102, 255
  %1109 = tail call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %21, align 1
  %1113 = xor i32 %1101, %1096
  %1114 = xor i32 %1113, %1102
  %1115 = lshr i32 %1114, 4
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, i8* %27, align 1
  %1118 = icmp eq i32 %1102, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %30, align 1
  %1120 = lshr i32 %1102, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %33, align 1
  %1122 = lshr i32 %1096, 31
  %1123 = lshr i32 %1101, 31
  %1124 = xor i32 %1120, %1122
  %1125 = xor i32 %1120, %1123
  %1126 = add nuw nsw i32 %1124, %1125
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %39, align 1
  %1129 = add i64 %1083, 26
  store i64 %1129, i64* %3, align 8
  store i32 %1102, i32* %1100, align 4
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -32
  %1132 = load i64, i64* %3, align 8
  %1133 = add i64 %1132, 3
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1131 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = add i32 %1135, -1
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i, align 8
  %1138 = icmp ne i32 %1135, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %14, align 1
  %1140 = and i32 %1136, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %21, align 1
  %1145 = xor i32 %1135, 16
  %1146 = xor i32 %1145, %1136
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %27, align 1
  %1150 = icmp eq i32 %1136, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %30, align 1
  %1152 = lshr i32 %1136, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %33, align 1
  %1154 = lshr i32 %1135, 31
  %1155 = xor i32 %1152, %1154
  %1156 = xor i32 %1152, 1
  %1157 = add nuw nsw i32 %1155, %1156
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %39, align 1
  %1160 = add i64 %1132, 9
  store i64 %1160, i64* %3, align 8
  store i32 %1136, i32* %1134, align 4
  %1161 = load i64, i64* %3, align 8
  %1162 = add i64 %1161, -59
  store i64 %1162, i64* %3, align 8
  br label %block_.L_418c3d

block_.L_418c7d:                                  ; preds = %block_.L_418c3d
  %1163 = add i64 %1036, -140
  %1164 = add i64 %1083, 6
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RAX.i, align 8
  %1168 = add i64 %1036, -24
  %1169 = add i64 %1083, 9
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sub i32 %1166, %1171
  %1173 = icmp ult i32 %1166, %1171
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %14, align 1
  %1175 = and i32 %1172, 255
  %1176 = tail call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  store i8 %1179, i8* %21, align 1
  %1180 = xor i32 %1171, %1166
  %1181 = xor i32 %1180, %1172
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %27, align 1
  %1185 = icmp eq i32 %1172, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %30, align 1
  %1187 = lshr i32 %1172, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %33, align 1
  %1189 = lshr i32 %1166, 31
  %1190 = lshr i32 %1171, 31
  %1191 = xor i32 %1190, %1189
  %1192 = xor i32 %1187, %1189
  %1193 = add nuw nsw i32 %1192, %1191
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %39, align 1
  %1196 = icmp ne i8 %1188, 0
  %1197 = xor i1 %1196, %1194
  %1198 = or i1 %1185, %1197
  %.v113 = select i1 %1198, i64 24, i64 15
  %1199 = add i64 %1083, %.v113
  store i64 %1199, i64* %3, align 8
  br i1 %1198, label %block_.L_418c95, label %block_418c8c

block_418c8c:                                     ; preds = %block_.L_418c7d
  %1200 = add i64 %1199, 6
  store i64 %1200, i64* %3, align 8
  %1201 = load i32, i32* %1165, align 4
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RAX.i, align 8
  %1203 = add i64 %1199, 9
  store i64 %1203, i64* %3, align 8
  store i32 %1201, i32* %1170, align 4
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_418c95

block_.L_418c95:                                  ; preds = %block_418c8c, %block_.L_418c7d
  %1204 = phi i64 [ %.pre67, %block_418c8c ], [ %1199, %block_.L_418c7d ]
  %1205 = phi i64 [ %.pre66, %block_418c8c ], [ %1036, %block_.L_418c7d ]
  %1206 = add i64 %1205, -148
  %1207 = add i64 %1204, 6
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i, align 8
  %1211 = add i64 %1205, -24
  %1212 = add i64 %1204, 9
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1209, %1214
  %1216 = icmp ult i32 %1209, %1214
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %14, align 1
  %1218 = and i32 %1215, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1
  %1223 = xor i32 %1214, %1209
  %1224 = xor i32 %1223, %1215
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %27, align 1
  %1228 = icmp eq i32 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %30, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %33, align 1
  %1232 = lshr i32 %1209, 31
  %1233 = lshr i32 %1214, 31
  %1234 = xor i32 %1233, %1232
  %1235 = xor i32 %1230, %1232
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %39, align 1
  %1239 = icmp ne i8 %1231, 0
  %1240 = xor i1 %1239, %1237
  %1241 = or i1 %1228, %1240
  %.v114 = select i1 %1241, i64 24, i64 15
  %1242 = add i64 %1204, %.v114
  store i64 %1242, i64* %3, align 8
  br i1 %1241, label %block_.L_418cad, label %block_418ca4

block_418ca4:                                     ; preds = %block_.L_418c95
  %1243 = add i64 %1242, 6
  store i64 %1243, i64* %3, align 8
  %1244 = load i32, i32* %1208, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RAX.i, align 8
  %1246 = add i64 %1242, 9
  store i64 %1246, i64* %3, align 8
  store i32 %1244, i32* %1213, align 4
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %block_.L_418cad

block_.L_418cad:                                  ; preds = %block_418ca4, %block_.L_418c95
  %1247 = phi i64 [ %.pre69, %block_418ca4 ], [ %1205, %block_.L_418c95 ]
  %1248 = phi i64 [ %.pre68, %block_418ca4 ], [ %1242, %block_.L_418c95 ]
  store i64 ptrtoint (%G__0x456f7b_type* @G__0x456f7b to i64), i64* %RSI.i62, align 8
  store i64 ptrtoint (%G__0x456fa9_type* @G__0x456fa9 to i64), i64* %RDX.i353, align 8
  store i64 ptrtoint (%G__0x456faf_type* @G__0x456faf to i64), i64* %RCX.i272, align 8
  %R8.i820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 ptrtoint (%G__0x458351_type* @G__0x458351 to i64), i64* %R8.i820, align 8
  store i64 59, i64* %RAX.i, align 8
  %1249 = add i64 %1247, -24
  %1250 = add i64 %1248, 48
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = add i32 %1252, -1
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RDI.i42, align 8
  %1255 = icmp eq i32 %1252, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %14, align 1
  %1257 = and i32 %1253, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %21, align 1
  %1262 = xor i32 %1253, %1252
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %27, align 1
  %1266 = icmp eq i32 %1253, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %30, align 1
  %1268 = lshr i32 %1253, 31
  %1269 = trunc i32 %1268 to i8
  store i8 %1269, i8* %33, align 1
  %1270 = lshr i32 %1252, 31
  %1271 = xor i32 %1268, %1270
  %1272 = add nuw nsw i32 %1271, %1270
  %1273 = icmp eq i32 %1272, 2
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %39, align 1
  %1275 = add i64 %1247, -156
  %1276 = add i64 %1248, 57
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  store i32 59, i32* %1277, align 4
  %EDI.i807 = bitcast %union.anon* %40 to i32*
  %1278 = load i32, i32* %EDI.i807, align 4
  %1279 = zext i32 %1278 to i64
  %1280 = load i64, i64* %3, align 8
  store i64 %1279, i64* %RAX.i, align 8
  %1281 = load i64, i64* %RBP.i, align 8
  %1282 = add i64 %1281, -168
  %1283 = load i64, i64* %RDX.i353, align 8
  %1284 = add i64 %1280, 9
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1282 to i64*
  store i64 %1283, i64* %1285, align 8
  %1286 = load i64, i64* %3, align 8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1288 = load i32, i32* %EAX.i189, align 8
  %1289 = sext i32 %1288 to i64
  %1290 = lshr i64 %1289, 32
  store i64 %1290, i64* %1287, align 8
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -156
  %1293 = add i64 %1286, 7
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RDI.i42, align 8
  %1297 = add i64 %1286, 9
  store i64 %1297, i64* %3, align 8
  %1298 = zext i32 %1288 to i64
  %1299 = sext i32 %1295 to i64
  %1300 = shl nuw i64 %1290, 32
  %1301 = or i64 %1300, %1298
  %1302 = sdiv i64 %1301, %1299
  %1303 = shl i64 %1302, 32
  %1304 = ashr exact i64 %1303, 32
  %1305 = icmp eq i64 %1302, %1304
  br i1 %1305, label %1308, label %1306

; <label>:1306:                                   ; preds = %block_.L_418cad
  %1307 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1297, %struct.Memory* %2)
  %.pre70 = load i64, i64* %RAX.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:1308:                                   ; preds = %block_.L_418cad
  %1309 = srem i64 %1301, %1299
  %1310 = and i64 %1302, 4294967295
  store i64 %1310, i64* %RAX.i, align 8
  %1311 = and i64 %1309, 4294967295
  store i64 %1311, i64* %RDX.i353, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %1308, %1306
  %1312 = phi i64 [ %.pre72, %1306 ], [ %1291, %1308 ]
  %1313 = phi i64 [ %.pre71, %1306 ], [ %1297, %1308 ]
  %1314 = phi i64 [ %.pre70, %1306 ], [ %1310, %1308 ]
  %1315 = phi %struct.Memory* [ %1307, %1306 ], [ %2, %1308 ]
  %1316 = trunc i64 %1314 to i32
  %1317 = add i32 %1316, 1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i, align 8
  %1319 = icmp eq i32 %1316, -1
  %1320 = icmp eq i32 %1317, 0
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %14, align 1
  %1323 = and i32 %1317, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %21, align 1
  %1328 = xor i32 %1317, %1316
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %27, align 1
  %1332 = zext i1 %1320 to i8
  store i8 %1332, i8* %30, align 1
  %1333 = lshr i32 %1317, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %33, align 1
  %1335 = lshr i32 %1316, 31
  %1336 = xor i32 %1333, %1335
  %1337 = add nuw nsw i32 %1336, %1333
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %39, align 1
  %1340 = add i64 %1312, -20
  %1341 = add i64 %1313, 6
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  store i32 %1317, i32* %1342, align 4
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -8
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 4
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i64*
  %1348 = load i64, i64* %1347, align 8
  store i64 %1348, i64* %RDI.i42, align 8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1350 = add i64 %1343, -20
  %1351 = add i64 %1345, 8
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = zext i32 %1353 to i64
  store i64 %1354, i64* %1349, align 8
  %R10.i784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %1355 = add i64 %1343, -168
  %1356 = add i64 %1345, 15
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i64*
  %1358 = load i64, i64* %1357, align 8
  store i64 %1358, i64* %R10.i784, align 8
  store i64 %1358, i64* %RDX.i353, align 8
  %AL.i779 = bitcast %union.anon* %67 to i8*
  store i8 0, i8* %AL.i779, align 1
  %1359 = add i64 %1345, -96142
  %1360 = add i64 %1345, 25
  %1361 = load i64, i64* %6, align 8
  %1362 = add i64 %1361, -8
  %1363 = inttoptr i64 %1362 to i64*
  store i64 %1360, i64* %1363, align 8
  store i64 %1362, i64* %6, align 8
  store i64 %1359, i64* %3, align 8
  %1364 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1315)
  %1365 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456fb3_type* @G__0x456fb3 to i64), i64* %RSI.i62, align 8
  store i64 ptrtoint (%G__0x456fc0_type* @G__0x456fc0 to i64), i64* %RDX.i353, align 8
  store i64 ptrtoint (%G__0x456fc2_type* @G__0x456fc2 to i64), i64* %RCX.i272, align 8
  %1366 = load i64, i64* %RBP.i, align 8
  %1367 = add i64 %1366, -8
  %1368 = add i64 %1365, 34
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i64*
  %1370 = load i64, i64* %1369, align 8
  store i64 %1370, i64* %RDI.i42, align 8
  %1371 = add i64 %1366, -176
  %1372 = add i64 %1365, 41
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  store i64 ptrtoint (%G__0x456fc2_type* @G__0x456fc2 to i64), i64* %1373, align 8
  %1374 = load i64, i64* %RBP.i, align 8
  %1375 = add i64 %1374, -176
  %1376 = load i64, i64* %3, align 8
  %1377 = add i64 %1376, 7
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1375 to i64*
  %1379 = load i64, i64* %1378, align 8
  store i64 %1379, i64* %R8.i820, align 8
  %1380 = add i64 %1374, -180
  %1381 = load i32, i32* %EAX.i189, align 4
  %1382 = add i64 %1376, 13
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i32*
  store i32 %1381, i32* %1383, align 4
  %1384 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i779, align 1
  %1385 = add i64 %1384, -96221
  %1386 = add i64 %1384, 7
  %1387 = load i64, i64* %6, align 8
  %1388 = add i64 %1387, -8
  %1389 = inttoptr i64 %1388 to i64*
  store i64 %1386, i64* %1389, align 8
  store i64 %1388, i64* %6, align 8
  store i64 %1385, i64* %3, align 8
  %1390 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1364)
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -48
  %1393 = load i64, i64* %3, align 8
  %1394 = add i64 %1393, 4
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1392 to i8*
  store i8 0, i8* %1395, align 1
  %1396 = load i64, i64* %RBP.i, align 8
  %1397 = add i64 %1396, -49
  %1398 = load i64, i64* %3, align 8
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1397 to i8*
  store i8 10, i8* %1400, align 1
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -16
  %1403 = load i64, i64* %3, align 8
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1402 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RCX.i272, align 8
  %1407 = add i64 %1406, 20
  %1408 = add i64 %1403, 8
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %1349, align 8
  %1412 = add i64 %1401, -32
  %1413 = add i64 %1403, 12
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  store i32 %1410, i32* %1414, align 4
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -184
  %1417 = load i32, i32* %EAX.i189, align 4
  %1418 = load i64, i64* %3, align 8
  %1419 = add i64 %1418, 6
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1416 to i32*
  store i32 %1417, i32* %1420, align 4
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1422 = bitcast [32 x %union.VectorReg]* %1421 to i8*
  %1423 = bitcast [32 x %union.VectorReg]* %1421 to i32*
  %1424 = getelementptr inbounds i8, i8* %1422, i64 4
  %1425 = bitcast i8* %1424 to float*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1427 = bitcast i64* %1426 to float*
  %1428 = getelementptr inbounds i8, i8* %1422, i64 12
  %1429 = bitcast i8* %1428 to float*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1431 = bitcast %union.VectorReg* %1430 to i8*
  %1432 = bitcast %union.VectorReg* %1430 to float*
  %1433 = bitcast %union.VectorReg* %1430 to i32*
  %1434 = getelementptr inbounds i8, i8* %1431, i64 4
  %1435 = bitcast i8* %1434 to float*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1437 = bitcast i64* %1436 to float*
  %1438 = getelementptr inbounds i8, i8* %1431, i64 12
  %1439 = bitcast i8* %1438 to float*
  %1440 = bitcast %union.VectorReg* %1430 to <2 x float>*
  %1441 = bitcast i64* %1436 to <2 x i32>*
  %1442 = bitcast [32 x %union.VectorReg]* %1421 to <2 x float>*
  %1443 = bitcast i8* %1434 to i32*
  %1444 = bitcast i64* %1436 to i32*
  %1445 = bitcast i8* %1438 to i32*
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_418d6e

block_.L_418d6e:                                  ; preds = %block_.L_41910a, %routine_idivl__edi.exit
  %1446 = phi i64 [ %.pre73, %routine_idivl__edi.exit ], [ %2831, %block_.L_41910a ]
  %MEMORY.12 = phi %struct.Memory* [ %1390, %routine_idivl__edi.exit ], [ %MEMORY.25, %block_.L_41910a ]
  %1447 = load i64, i64* %RBP.i, align 8
  %1448 = add i64 %1447, -32
  %1449 = add i64 %1446, 3
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX.i, align 8
  %1453 = add i64 %1447, -16
  %1454 = add i64 %1446, 7
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i64 %1456, i64* %RCX.i272, align 8
  %1457 = add i64 %1456, 16
  %1458 = add i64 %1446, 10
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i32*
  %1460 = load i32, i32* %1459, align 4
  %1461 = sub i32 %1451, %1460
  %1462 = icmp ult i32 %1451, %1460
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %14, align 1
  %1464 = and i32 %1461, 255
  %1465 = tail call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  store i8 %1468, i8* %21, align 1
  %1469 = xor i32 %1460, %1451
  %1470 = xor i32 %1469, %1461
  %1471 = lshr i32 %1470, 4
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  store i8 %1473, i8* %27, align 1
  %1474 = icmp eq i32 %1461, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %30, align 1
  %1476 = lshr i32 %1461, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %33, align 1
  %1478 = lshr i32 %1451, 31
  %1479 = lshr i32 %1460, 31
  %1480 = xor i32 %1479, %1478
  %1481 = xor i32 %1476, %1478
  %1482 = add nuw nsw i32 %1481, %1480
  %1483 = icmp eq i32 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %39, align 1
  %1485 = icmp ne i8 %1477, 0
  %1486 = xor i1 %1485, %1483
  %.demorgan106 = or i1 %1474, %1486
  %.v115 = select i1 %.demorgan106, i64 16, i64 938
  %1487 = add i64 %1446, %.v115
  store i64 %1487, i64* %3, align 8
  br i1 %.demorgan106, label %block_418d7e, label %block_.L_419118

block_418d7e:                                     ; preds = %block_.L_418d6e
  store i64 32, i64* %RSI.i62, align 8
  store i64 79, i64* %RAX.i, align 8
  store i64 79, i64* %RDX.i353, align 8
  %1488 = add i64 %1447, -128
  store i64 %1488, i64* %RDI.i42, align 8
  %1489 = add i64 %1487, -96430
  %1490 = add i64 %1487, 21
  %1491 = load i64, i64* %6, align 8
  %1492 = add i64 %1491, -8
  %1493 = inttoptr i64 %1492 to i64*
  store i64 %1490, i64* %1493, align 8
  store i64 %1492, i64* %6, align 8
  store i64 %1489, i64* %3, align 8
  %1494 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %MEMORY.12)
  %1495 = load i64, i64* %RBP.i, align 8
  %1496 = add i64 %1495, -32
  %1497 = load i64, i64* %3, align 8
  %1498 = add i64 %1497, 3
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1496 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RAX.i, align 8
  %1502 = add i64 %1495, -16
  %1503 = add i64 %1497, 7
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i64*
  %1505 = load i64, i64* %1504, align 8
  store i64 %1505, i64* %RDX.i353, align 8
  %1506 = add i64 %1505, 8
  %1507 = add i64 %1497, 10
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = sub i32 %1500, %1509
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i, align 8
  %1512 = icmp ult i32 %1500, %1509
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %14, align 1
  %1514 = and i32 %1510, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i32 %1509, %1500
  %1520 = xor i32 %1519, %1510
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  store i8 %1523, i8* %27, align 1
  %1524 = icmp eq i32 %1510, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %30, align 1
  %1526 = lshr i32 %1510, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %33, align 1
  %1528 = lshr i32 %1500, 31
  %1529 = lshr i32 %1509, 31
  %1530 = xor i32 %1529, %1528
  %1531 = xor i32 %1526, %1528
  %1532 = add nuw nsw i32 %1531, %1530
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %39, align 1
  %1535 = add i64 %1495, -36
  %1536 = add i64 %1497, 13
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  store i32 %1510, i32* %1537, align 4
  %1538 = load i64, i64* %RBP.i, align 8
  %1539 = add i64 %1538, -32
  %1540 = load i64, i64* %3, align 8
  %1541 = add i64 %1540, 3
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1539 to i32*
  %1543 = load i32, i32* %1542, align 4
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i, align 8
  %1545 = add i64 %1538, -136
  %1546 = add i64 %1540, 9
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = sub i32 %1543, %1548
  %1550 = icmp ult i32 %1543, %1548
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %14, align 1
  %1552 = and i32 %1549, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %21, align 1
  %1557 = xor i32 %1548, %1543
  %1558 = xor i32 %1557, %1549
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %27, align 1
  %1562 = icmp eq i32 %1549, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %30, align 1
  %1564 = lshr i32 %1549, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %33, align 1
  %1566 = lshr i32 %1543, 31
  %1567 = lshr i32 %1548, 31
  %1568 = xor i32 %1567, %1566
  %1569 = xor i32 %1564, %1566
  %1570 = add nuw nsw i32 %1569, %1568
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %39, align 1
  %1573 = icmp ne i8 %1565, 0
  %1574 = xor i1 %1573, %1571
  %.v116 = select i1 %1574, i64 15, i64 20
  %1575 = add i64 %1540, %.v116
  store i64 %1575, i64* %3, align 8
  br i1 %1574, label %block_418daf, label %block_.L_418db4

block_418daf:                                     ; preds = %block_418d7e
  %1576 = add i64 %1575, 859
  store i64 %1576, i64* %3, align 8
  br label %block_.L_41910a

block_.L_418db4:                                  ; preds = %block_418d7e
  %1577 = add i64 %1575, 3
  store i64 %1577, i64* %3, align 8
  %1578 = load i32, i32* %1542, align 4
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RAX.i, align 8
  %1580 = add i64 %1538, -144
  %1581 = add i64 %1575, 9
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  %1583 = load i32, i32* %1582, align 4
  %1584 = sub i32 %1578, %1583
  %1585 = icmp ult i32 %1578, %1583
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = and i32 %1584, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i32 %1583, %1578
  %1593 = xor i32 %1592, %1584
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i32 %1584, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i32 %1584, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i32 %1578, 31
  %1602 = lshr i32 %1583, 31
  %1603 = xor i32 %1602, %1601
  %1604 = xor i32 %1599, %1601
  %1605 = add nuw nsw i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %39, align 1
  %1608 = icmp ne i8 %1600, 0
  %1609 = xor i1 %1608, %1606
  %1610 = or i1 %1597, %1609
  %.v117 = select i1 %1610, i64 20, i64 15
  %1611 = add i64 %1575, %.v117
  store i64 %1611, i64* %3, align 8
  br i1 %1610, label %block_.L_418dc8, label %block_418dc3

block_418dc3:                                     ; preds = %block_.L_418db4
  %1612 = add i64 %1611, 839
  store i64 %1612, i64* %3, align 8
  br label %block_.L_41910a

block_.L_418dc8:                                  ; preds = %block_.L_418db4
  %1613 = add i64 %1611, 3
  store i64 %1613, i64* %3, align 8
  %1614 = load i32, i32* %1542, align 4
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RAX.i, align 8
  %1616 = add i64 %1611, 9
  store i64 %1616, i64* %3, align 8
  %1617 = load i32, i32* %1547, align 4
  %1618 = sub i32 %1614, %1617
  %1619 = icmp ult i32 %1614, %1617
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %14, align 1
  %1621 = and i32 %1618, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %21, align 1
  %1626 = xor i32 %1617, %1614
  %1627 = xor i32 %1626, %1618
  %1628 = lshr i32 %1627, 4
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  store i8 %1630, i8* %27, align 1
  %1631 = icmp eq i32 %1618, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %30, align 1
  %1633 = lshr i32 %1618, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %33, align 1
  %1635 = lshr i32 %1614, 31
  %1636 = lshr i32 %1617, 31
  %1637 = xor i32 %1636, %1635
  %1638 = xor i32 %1633, %1635
  %1639 = add nuw nsw i32 %1638, %1637
  %1640 = icmp eq i32 %1639, 2
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %39, align 1
  %.v118 = select i1 %1631, i64 15, i64 229
  %1642 = add i64 %1611, %.v118
  store i64 %1642, i64* %3, align 8
  br i1 %1631, label %block_418dd7, label %block_.L_418ead

block_418dd7:                                     ; preds = %block_.L_418dc8
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %3, align 8
  %1644 = load i32, i32* %1542, align 4
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i, align 8
  %1646 = add i64 %1538, -16
  %1647 = add i64 %1642, 7
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i64*
  %1649 = load i64, i64* %1648, align 8
  store i64 %1649, i64* %RCX.i272, align 8
  %1650 = add i64 %1649, 20
  %1651 = add i64 %1642, 10
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = sub i32 %1644, %1653
  %1655 = icmp ult i32 %1644, %1653
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %14, align 1
  %1657 = and i32 %1654, 255
  %1658 = tail call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  store i8 %1661, i8* %21, align 1
  %1662 = xor i32 %1653, %1644
  %1663 = xor i32 %1662, %1654
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  store i8 %1666, i8* %27, align 1
  %1667 = icmp eq i32 %1654, 0
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %30, align 1
  %1669 = lshr i32 %1654, 31
  %1670 = trunc i32 %1669 to i8
  store i8 %1670, i8* %33, align 1
  %1671 = lshr i32 %1644, 31
  %1672 = lshr i32 %1653, 31
  %1673 = xor i32 %1672, %1671
  %1674 = xor i32 %1669, %1671
  %1675 = add nuw nsw i32 %1674, %1673
  %1676 = icmp eq i32 %1675, 2
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %39, align 1
  %.v128 = select i1 %1667, i64 214, i64 16
  %1678 = add i64 %1642, %.v128
  store i64 %1678, i64* %3, align 8
  br i1 %1667, label %block_.L_418ead, label %block_418de7

block_418de7:                                     ; preds = %block_418dd7
  store i64 ptrtoint (%G__0x456fc6_type* @G__0x456fc6 to i64), i64* %RSI.i62, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R8.i820, align 8
  %1679 = add i64 %1538, -128
  store i64 %1679, i64* %RDI.i42, align 8
  %1680 = add i64 %1678, 27
  store i64 %1680, i64* %3, align 8
  %1681 = load i32, i32* %1542, align 4
  %1682 = add i32 %1681, 1
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RAX.i, align 8
  %1684 = icmp eq i32 %1681, -1
  %1685 = icmp eq i32 %1682, 0
  %1686 = or i1 %1684, %1685
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %14, align 1
  %1688 = and i32 %1682, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %21, align 1
  %1693 = xor i32 %1682, %1681
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %27, align 1
  %1697 = zext i1 %1685 to i8
  store i8 %1697, i8* %30, align 1
  %1698 = lshr i32 %1682, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %33, align 1
  %1700 = lshr i32 %1681, 31
  %1701 = xor i32 %1698, %1700
  %1702 = add nuw nsw i32 %1701, %1698
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %39, align 1
  %1705 = add i64 %1538, -140
  %1706 = add i64 %1678, 36
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i272, align 8
  store i64 %1683, i64* %RDX.i353, align 8
  store i8 0, i8* %AL.i779, align 1
  %1710 = add i64 %1678, -96039
  %1711 = add i64 %1678, 45
  %1712 = load i64, i64* %6, align 8
  %1713 = add i64 %1712, -8
  %1714 = inttoptr i64 %1713 to i64*
  store i64 %1711, i64* %1714, align 8
  store i64 %1713, i64* %6, align 8
  store i64 %1710, i64* %3, align 8
  %1715 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %1494)
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -140
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, 7
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1717 to i32*
  %1721 = load i32, i32* %1720, align 4
  store i8 0, i8* %14, align 1
  %1722 = and i32 %1721, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1727 = icmp eq i32 %1721, 0
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %30, align 1
  %1729 = lshr i32 %1721, 31
  %1730 = trunc i32 %1729 to i8
  store i8 %1730, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1731 = add i64 %1716, -188
  %1732 = load i32, i32* %EAX.i189, align 4
  %1733 = add i64 %1718, 13
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1731 to i32*
  store i32 %1732, i32* %1734, align 4
  %1735 = load i64, i64* %3, align 8
  %1736 = add i64 %1735, 116
  %1737 = add i64 %1735, 6
  %1738 = load i8, i8* %30, align 1
  %1739 = icmp ne i8 %1738, 0
  %1740 = load i8, i8* %33, align 1
  %1741 = icmp ne i8 %1740, 0
  %1742 = load i8, i8* %39, align 1
  %1743 = icmp ne i8 %1742, 0
  %1744 = xor i1 %1741, %1743
  %1745 = or i1 %1739, %1744
  %1746 = select i1 %1745, i64 %1736, i64 %1737
  store i64 %1746, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br i1 %1745, label %block_.L_418e95, label %block_418e27

block_418e27:                                     ; preds = %block_418de7
  %1747 = add i64 %.pre80, -140
  %1748 = add i64 %1746, 6
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = add i32 %1750, -1
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RAX.i, align 8
  %1753 = icmp eq i32 %1750, 0
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %14, align 1
  %1755 = and i32 %1751, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %21, align 1
  %1760 = xor i32 %1751, %1750
  %1761 = lshr i32 %1760, 4
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  store i8 %1763, i8* %27, align 1
  %1764 = icmp eq i32 %1751, 0
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %30, align 1
  %1766 = lshr i32 %1751, 31
  %1767 = trunc i32 %1766 to i8
  store i8 %1767, i8* %33, align 1
  %1768 = lshr i32 %1750, 31
  %1769 = xor i32 %1766, %1768
  %1770 = add nuw nsw i32 %1769, %1768
  %1771 = icmp eq i32 %1770, 2
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %39, align 1
  %1773 = sext i32 %1751 to i64
  %1774 = lshr i64 %1773, 32
  store i64 %1774, i64* %1287, align 8
  %1775 = add i64 %.pre80, -20
  %1776 = add i64 %1746, 13
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = shl nuw i64 %1774, 32
  %1781 = or i64 %1780, %1752
  %1782 = sdiv i64 %1781, %1779
  %1783 = shl i64 %1782, 32
  %1784 = ashr exact i64 %1783, 32
  %1785 = icmp eq i64 %1782, %1784
  br i1 %1785, label %1788, label %1786

; <label>:1786:                                   ; preds = %block_418e27
  %1787 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1776, %struct.Memory* %1715)
  %.pre74 = load i64, i64* %RAX.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x14__rbp_.exit627

; <label>:1788:                                   ; preds = %block_418e27
  %1789 = srem i64 %1781, %1779
  %1790 = and i64 %1782, 4294967295
  store i64 %1790, i64* %RAX.i, align 8
  %1791 = and i64 %1789, 4294967295
  store i64 %1791, i64* %RDX.i353, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl_MINUS0x14__rbp_.exit627

routine_idivl_MINUS0x14__rbp_.exit627:            ; preds = %1788, %1786
  %1792 = phi i64 [ %.pre76, %1786 ], [ %.pre80, %1788 ]
  %1793 = phi i64 [ %.pre75, %1786 ], [ %1776, %1788 ]
  %1794 = phi i64 [ %.pre74, %1786 ], [ %1790, %1788 ]
  %1795 = phi %struct.Memory* [ %1787, %1786 ], [ %1715, %1788 ]
  %1796 = trunc i64 %1794 to i32
  %1797 = add i32 %1796, 1
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i, align 8
  %1799 = icmp eq i32 %1796, -1
  %1800 = icmp eq i32 %1797, 0
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1797, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1797, %1796
  %1809 = lshr i32 %1808, 4
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  store i8 %1811, i8* %27, align 1
  %1812 = zext i1 %1800 to i8
  store i8 %1812, i8* %30, align 1
  %1813 = lshr i32 %1797, 31
  %1814 = trunc i32 %1813 to i8
  store i8 %1814, i8* %33, align 1
  %1815 = lshr i32 %1796, 31
  %1816 = xor i32 %1813, %1815
  %1817 = add nuw nsw i32 %1816, %1813
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %39, align 1
  %1820 = add i64 %1792, -28
  %1821 = add i64 %1793, 6
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  store i32 %1797, i32* %1822, align 4
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -28
  %1825 = load i64, i64* %3, align 8
  %1826 = add i64 %1825, 4
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1824 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = add i32 %1828, -60
  %1830 = icmp ult i32 %1828, 60
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %14, align 1
  %1832 = and i32 %1829, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %21, align 1
  %1837 = xor i32 %1828, 16
  %1838 = xor i32 %1837, %1829
  %1839 = lshr i32 %1838, 4
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %27, align 1
  %1842 = icmp eq i32 %1829, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %30, align 1
  %1844 = lshr i32 %1829, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %33, align 1
  %1846 = lshr i32 %1828, 31
  %1847 = xor i32 %1844, %1846
  %1848 = add nuw nsw i32 %1847, %1846
  %1849 = icmp eq i32 %1848, 2
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %39, align 1
  %1851 = icmp ne i8 %1845, 0
  %1852 = xor i1 %1851, %1849
  %1853 = or i1 %1842, %1852
  %.v129 = select i1 %1853, i64 27, i64 10
  %1854 = add i64 %1825, %.v129
  store i64 %1854, i64* %3, align 8
  br i1 %1853, label %block_.L_418e55, label %block_418e44

block_418e44:                                     ; preds = %routine_idivl_MINUS0x14__rbp_.exit627
  store i64 ptrtoint (%G__0x456fd4_type* @G__0x456fd4 to i64), i64* %RDI.i42, align 8
  store i8 0, i8* %AL.i779, align 1
  %1855 = add i64 %1854, 154572
  %1856 = add i64 %1854, 17
  %1857 = load i64, i64* %6, align 8
  %1858 = add i64 %1857, -8
  %1859 = inttoptr i64 %1858 to i64*
  store i64 %1856, i64* %1859, align 8
  store i64 %1858, i64* %6, align 8
  store i64 %1855, i64* %3, align 8
  %call2_418e50 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1855, %struct.Memory* %1795)
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_418e55

block_.L_418e55:                                  ; preds = %block_418e44, %routine_idivl_MINUS0x14__rbp_.exit627
  %1860 = phi i64 [ %1854, %routine_idivl_MINUS0x14__rbp_.exit627 ], [ %.pre78, %block_418e44 ]
  %1861 = phi i64 [ %1823, %routine_idivl_MINUS0x14__rbp_.exit627 ], [ %.pre77, %block_418e44 ]
  %MEMORY.13 = phi %struct.Memory* [ %1795, %routine_idivl_MINUS0x14__rbp_.exit627 ], [ %call2_418e50, %block_418e44 ]
  %1862 = add i64 %1861, -132
  %1863 = add i64 %1860, 10
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  store i32 20, i32* %1864, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_418e5f

block_.L_418e5f:                                  ; preds = %block_418e69, %block_.L_418e55
  %1865 = phi i64 [ %1952, %block_418e69 ], [ %.pre79, %block_.L_418e55 ]
  %1866 = load i64, i64* %RBP.i, align 8
  %1867 = add i64 %1866, -28
  %1868 = add i64 %1865, 4
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i32*
  %1870 = load i32, i32* %1869, align 4
  store i8 0, i8* %14, align 1
  %1871 = and i32 %1870, 255
  %1872 = tail call i32 @llvm.ctpop.i32(i32 %1871)
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  store i8 %1875, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1876 = icmp eq i32 %1870, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %30, align 1
  %1878 = lshr i32 %1870, 31
  %1879 = trunc i32 %1878 to i8
  store i8 %1879, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1880 = icmp ne i8 %1879, 0
  %1881 = or i1 %1876, %1880
  %.v130 = select i1 %1881, i64 49, i64 10
  %1882 = add i64 %1865, %.v130
  store i64 %1882, i64* %3, align 8
  br i1 %1881, label %block_.L_418e90, label %block_418e69

block_418e69:                                     ; preds = %block_.L_418e5f
  %1883 = add i64 %1866, -132
  %1884 = add i64 %1882, 6
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RAX.i, align 8
  %1888 = add i32 %1886, 1
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RCX.i272, align 8
  %1890 = icmp eq i32 %1886, -1
  %1891 = icmp eq i32 %1888, 0
  %1892 = or i1 %1890, %1891
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %14, align 1
  %1894 = and i32 %1888, 255
  %1895 = tail call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  store i8 %1898, i8* %21, align 1
  %1899 = xor i32 %1888, %1886
  %1900 = lshr i32 %1899, 4
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  store i8 %1902, i8* %27, align 1
  %1903 = zext i1 %1891 to i8
  store i8 %1903, i8* %30, align 1
  %1904 = lshr i32 %1888, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %33, align 1
  %1906 = lshr i32 %1886, 31
  %1907 = xor i32 %1904, %1906
  %1908 = add nuw nsw i32 %1907, %1904
  %1909 = icmp eq i32 %1908, 2
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %39, align 1
  %1911 = add i64 %1882, 17
  store i64 %1911, i64* %3, align 8
  store i32 %1888, i32* %1885, align 4
  %1912 = load i32, i32* %EAX.i189, align 4
  %1913 = load i64, i64* %3, align 8
  %1914 = sext i32 %1912 to i64
  store i64 %1914, i64* %RDX.i353, align 8
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add nsw i64 %1914, -128
  %1917 = add i64 %1916, %1915
  %1918 = add i64 %1913, 8
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to i8*
  store i8 61, i8* %1919, align 1
  %1920 = load i64, i64* %RBP.i, align 8
  %1921 = add i64 %1920, -28
  %1922 = load i64, i64* %3, align 8
  %1923 = add i64 %1922, 3
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1921 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = add i32 %1925, -1
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RAX.i, align 8
  %1928 = icmp ne i32 %1925, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %14, align 1
  %1930 = and i32 %1926, 255
  %1931 = tail call i32 @llvm.ctpop.i32(i32 %1930)
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = xor i8 %1933, 1
  store i8 %1934, i8* %21, align 1
  %1935 = xor i32 %1925, 16
  %1936 = xor i32 %1935, %1926
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %27, align 1
  %1940 = icmp eq i32 %1926, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %30, align 1
  %1942 = lshr i32 %1926, 31
  %1943 = trunc i32 %1942 to i8
  store i8 %1943, i8* %33, align 1
  %1944 = lshr i32 %1925, 31
  %1945 = xor i32 %1942, %1944
  %1946 = xor i32 %1942, 1
  %1947 = add nuw nsw i32 %1945, %1946
  %1948 = icmp eq i32 %1947, 2
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %39, align 1
  %1950 = add i64 %1922, 9
  store i64 %1950, i64* %3, align 8
  store i32 %1926, i32* %1924, align 4
  %1951 = load i64, i64* %3, align 8
  %1952 = add i64 %1951, -44
  store i64 %1952, i64* %3, align 8
  br label %block_.L_418e5f

block_.L_418e90:                                  ; preds = %block_.L_418e5f
  %1953 = add i64 %1882, 5
  store i64 %1953, i64* %3, align 8
  br label %block_.L_418e95

block_.L_418e95:                                  ; preds = %block_418de7, %block_.L_418e90
  %1954 = phi i64 [ %1953, %block_.L_418e90 ], [ %1736, %block_418de7 ]
  %1955 = phi i64 [ %1866, %block_.L_418e90 ], [ %.pre80, %block_418de7 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.13, %block_.L_418e90 ], [ %1715, %block_418de7 ]
  %1956 = add i64 %1955, -128
  store i64 %1956, i64* %RDI.i42, align 8
  %1957 = add i64 %1955, -8
  %1958 = add i64 %1954, 8
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %RSI.i62, align 8
  %1961 = add i64 %1954, -96725
  %1962 = add i64 %1954, 13
  %1963 = load i64, i64* %6, align 8
  %1964 = add i64 %1963, -8
  %1965 = inttoptr i64 %1964 to i64*
  store i64 %1962, i64* %1965, align 8
  store i64 %1964, i64* %6, align 8
  store i64 %1961, i64* %3, align 8
  %1966 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.15)
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -192
  %1969 = load i32, i32* %EAX.i189, align 4
  %1970 = load i64, i64* %3, align 8
  %1971 = add i64 %1970, 6
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1968 to i32*
  store i32 %1969, i32* %1972, align 4
  %1973 = load i64, i64* %3, align 8
  %1974 = add i64 %1973, 610
  store i64 %1974, i64* %3, align 8
  br label %block_.L_41910a

block_.L_418ead:                                  ; preds = %block_.L_418dc8, %block_418dd7
  %1975 = phi i64 [ %1678, %block_418dd7 ], [ %1642, %block_.L_418dc8 ]
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %3, align 8
  %1977 = load i32, i32* %1542, align 4
  %1978 = zext i32 %1977 to i64
  store i64 %1978, i64* %RAX.i, align 8
  %1979 = add i64 %1975, 9
  store i64 %1979, i64* %3, align 8
  %1980 = load i32, i32* %1582, align 4
  %1981 = sub i32 %1977, %1980
  %1982 = icmp ult i32 %1977, %1980
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %14, align 1
  %1984 = and i32 %1981, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %21, align 1
  %1989 = xor i32 %1980, %1977
  %1990 = xor i32 %1989, %1981
  %1991 = lshr i32 %1990, 4
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  store i8 %1993, i8* %27, align 1
  %1994 = icmp eq i32 %1981, 0
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %30, align 1
  %1996 = lshr i32 %1981, 31
  %1997 = trunc i32 %1996 to i8
  store i8 %1997, i8* %33, align 1
  %1998 = lshr i32 %1977, 31
  %1999 = lshr i32 %1980, 31
  %2000 = xor i32 %1999, %1998
  %2001 = xor i32 %1996, %1998
  %2002 = add nuw nsw i32 %2001, %2000
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %39, align 1
  %.v119 = select i1 %1994, i64 15, i64 197
  %2005 = add i64 %1975, %.v119
  store i64 %2005, i64* %3, align 8
  br i1 %1994, label %block_418ebc, label %block_.L_418ead.block_.L_418f72_crit_edge

block_.L_418ead.block_.L_418f72_crit_edge:        ; preds = %block_.L_418ead
  %.pre102 = add i64 %1538, -16
  %.pre103 = inttoptr i64 %.pre102 to i64*
  br label %block_.L_418f72

block_418ebc:                                     ; preds = %block_.L_418ead
  %2006 = add i64 %2005, 3
  store i64 %2006, i64* %3, align 8
  %2007 = load i32, i32* %1542, align 4
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RAX.i, align 8
  %2009 = add i64 %1538, -16
  %2010 = add i64 %2005, 7
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i64*
  %2012 = load i64, i64* %2011, align 8
  store i64 %2012, i64* %RCX.i272, align 8
  %2013 = add i64 %2012, 16
  %2014 = add i64 %2005, 10
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = sub i32 %2007, %2016
  %2018 = icmp ult i32 %2007, %2016
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %14, align 1
  %2020 = and i32 %2017, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %21, align 1
  %2025 = xor i32 %2016, %2007
  %2026 = xor i32 %2025, %2017
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  store i8 %2029, i8* %27, align 1
  %2030 = icmp eq i32 %2017, 0
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %30, align 1
  %2032 = lshr i32 %2017, 31
  %2033 = trunc i32 %2032 to i8
  store i8 %2033, i8* %33, align 1
  %2034 = lshr i32 %2007, 31
  %2035 = lshr i32 %2016, 31
  %2036 = xor i32 %2035, %2034
  %2037 = xor i32 %2032, %2034
  %2038 = add nuw nsw i32 %2037, %2036
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %39, align 1
  %.v126 = select i1 %2030, i64 182, i64 16
  %2041 = add i64 %2005, %.v126
  store i64 %2041, i64* %3, align 8
  br i1 %2030, label %block_.L_418f72, label %block_418ecc

block_418ecc:                                     ; preds = %block_418ebc
  store i64 ptrtoint (%G__0x456fd9_type* @G__0x456fd9 to i64), i64* %RSI.i62, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R8.i820, align 8
  %2042 = add i64 %1538, -128
  store i64 %2042, i64* %RDI.i42, align 8
  %2043 = add i64 %2041, 27
  store i64 %2043, i64* %3, align 8
  %2044 = load i32, i32* %1542, align 4
  %2045 = zext i32 %2044 to i64
  store i64 %2045, i64* %RDX.i353, align 8
  %2046 = add i64 %1538, -148
  %2047 = add i64 %2041, 33
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i32*
  %2049 = load i32, i32* %2048, align 4
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RCX.i272, align 8
  store i8 0, i8* %AL.i779, align 1
  %2051 = add i64 %2041, -96268
  %2052 = add i64 %2041, 40
  %2053 = load i64, i64* %6, align 8
  %2054 = add i64 %2053, -8
  %2055 = inttoptr i64 %2054 to i64*
  store i64 %2052, i64* %2055, align 8
  store i64 %2054, i64* %6, align 8
  store i64 %2051, i64* %3, align 8
  %2056 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %1494)
  %2057 = load i64, i64* %RBP.i, align 8
  %2058 = add i64 %2057, -148
  %2059 = load i64, i64* %3, align 8
  %2060 = add i64 %2059, 7
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2058 to i32*
  %2062 = load i32, i32* %2061, align 4
  store i8 0, i8* %14, align 1
  %2063 = and i32 %2062, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2068 = icmp eq i32 %2062, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %30, align 1
  %2070 = lshr i32 %2062, 31
  %2071 = trunc i32 %2070 to i8
  store i8 %2071, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2072 = add i64 %2057, -196
  %2073 = load i32, i32* %EAX.i189, align 4
  %2074 = add i64 %2059, 13
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2072 to i32*
  store i32 %2073, i32* %2075, align 4
  %2076 = load i64, i64* %3, align 8
  %2077 = add i64 %2076, 89
  %2078 = add i64 %2076, 6
  %2079 = load i8, i8* %30, align 1
  %2080 = icmp ne i8 %2079, 0
  %2081 = load i8, i8* %33, align 1
  %2082 = icmp ne i8 %2081, 0
  %2083 = load i8, i8* %39, align 1
  %2084 = icmp ne i8 %2083, 0
  %2085 = xor i1 %2082, %2084
  %2086 = or i1 %2080, %2085
  %2087 = select i1 %2086, i64 %2077, i64 %2078
  store i64 %2087, i64* %3, align 8
  %.pre85 = load i64, i64* %RBP.i, align 8
  br i1 %2086, label %block_.L_418f5a, label %block_418f07

block_418f07:                                     ; preds = %block_418ecc
  %2088 = add i64 %.pre85, -148
  %2089 = add i64 %2087, 6
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = add i32 %2091, -1
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RAX.i, align 8
  %2094 = icmp eq i32 %2091, 0
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %14, align 1
  %2096 = and i32 %2092, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %21, align 1
  %2101 = xor i32 %2092, %2091
  %2102 = lshr i32 %2101, 4
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  store i8 %2104, i8* %27, align 1
  %2105 = icmp eq i32 %2092, 0
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %30, align 1
  %2107 = lshr i32 %2092, 31
  %2108 = trunc i32 %2107 to i8
  store i8 %2108, i8* %33, align 1
  %2109 = lshr i32 %2091, 31
  %2110 = xor i32 %2107, %2109
  %2111 = add nuw nsw i32 %2110, %2109
  %2112 = icmp eq i32 %2111, 2
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %39, align 1
  %2114 = sext i32 %2092 to i64
  %2115 = lshr i64 %2114, 32
  store i64 %2115, i64* %1287, align 8
  %2116 = add i64 %.pre85, -20
  %2117 = add i64 %2087, 13
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to i32*
  %2119 = load i32, i32* %2118, align 4
  %2120 = sext i32 %2119 to i64
  %2121 = shl nuw i64 %2115, 32
  %2122 = or i64 %2121, %2093
  %2123 = sdiv i64 %2122, %2120
  %2124 = shl i64 %2123, 32
  %2125 = ashr exact i64 %2124, 32
  %2126 = icmp eq i64 %2123, %2125
  br i1 %2126, label %2129, label %2127

; <label>:2127:                                   ; preds = %block_418f07
  %2128 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2117, %struct.Memory* %2056)
  %.pre81 = load i64, i64* %RAX.i, align 8
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x14__rbp_.exit517

; <label>:2129:                                   ; preds = %block_418f07
  %2130 = srem i64 %2122, %2120
  %2131 = and i64 %2123, 4294967295
  store i64 %2131, i64* %RAX.i, align 8
  %2132 = and i64 %2130, 4294967295
  store i64 %2132, i64* %RDX.i353, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl_MINUS0x14__rbp_.exit517

routine_idivl_MINUS0x14__rbp_.exit517:            ; preds = %2129, %2127
  %2133 = phi i64 [ %.pre83, %2127 ], [ %.pre85, %2129 ]
  %2134 = phi i64 [ %.pre82, %2127 ], [ %2117, %2129 ]
  %2135 = phi i64 [ %.pre81, %2127 ], [ %2131, %2129 ]
  %2136 = phi %struct.Memory* [ %2128, %2127 ], [ %2056, %2129 ]
  %2137 = trunc i64 %2135 to i32
  %2138 = add i32 %2137, 1
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RAX.i, align 8
  %2140 = icmp eq i32 %2137, -1
  %2141 = icmp eq i32 %2138, 0
  %2142 = or i1 %2140, %2141
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %14, align 1
  %2144 = and i32 %2138, 255
  %2145 = tail call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  store i8 %2148, i8* %21, align 1
  %2149 = xor i32 %2138, %2137
  %2150 = lshr i32 %2149, 4
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  store i8 %2152, i8* %27, align 1
  %2153 = zext i1 %2141 to i8
  store i8 %2153, i8* %30, align 1
  %2154 = lshr i32 %2138, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %33, align 1
  %2156 = lshr i32 %2137, 31
  %2157 = xor i32 %2154, %2156
  %2158 = add nuw nsw i32 %2157, %2154
  %2159 = icmp eq i32 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %39, align 1
  %2161 = add i64 %2133, -28
  %2162 = add i64 %2134, 6
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  store i32 %2138, i32* %2163, align 4
  %2164 = load i64, i64* %RBP.i, align 8
  %2165 = add i64 %2164, -132
  %2166 = load i64, i64* %3, align 8
  %2167 = add i64 %2166, 10
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2165 to i32*
  store i32 20, i32* %2168, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_418f24

block_.L_418f24:                                  ; preds = %block_418f2e, %routine_idivl_MINUS0x14__rbp_.exit517
  %2169 = phi i64 [ %2256, %block_418f2e ], [ %.pre84, %routine_idivl_MINUS0x14__rbp_.exit517 ]
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -28
  %2172 = add i64 %2169, 4
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  store i8 0, i8* %14, align 1
  %2175 = and i32 %2174, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2180 = icmp eq i32 %2174, 0
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %30, align 1
  %2182 = lshr i32 %2174, 31
  %2183 = trunc i32 %2182 to i8
  store i8 %2183, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2184 = icmp ne i8 %2183, 0
  %2185 = or i1 %2180, %2184
  %.v127 = select i1 %2185, i64 49, i64 10
  %2186 = add i64 %2169, %.v127
  store i64 %2186, i64* %3, align 8
  br i1 %2185, label %block_.L_418f55, label %block_418f2e

block_418f2e:                                     ; preds = %block_.L_418f24
  %2187 = add i64 %2170, -132
  %2188 = add i64 %2186, 6
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RAX.i, align 8
  %2192 = add i32 %2190, 1
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RCX.i272, align 8
  %2194 = icmp eq i32 %2190, -1
  %2195 = icmp eq i32 %2192, 0
  %2196 = or i1 %2194, %2195
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %14, align 1
  %2198 = and i32 %2192, 255
  %2199 = tail call i32 @llvm.ctpop.i32(i32 %2198)
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = xor i8 %2201, 1
  store i8 %2202, i8* %21, align 1
  %2203 = xor i32 %2192, %2190
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  store i8 %2206, i8* %27, align 1
  %2207 = zext i1 %2195 to i8
  store i8 %2207, i8* %30, align 1
  %2208 = lshr i32 %2192, 31
  %2209 = trunc i32 %2208 to i8
  store i8 %2209, i8* %33, align 1
  %2210 = lshr i32 %2190, 31
  %2211 = xor i32 %2208, %2210
  %2212 = add nuw nsw i32 %2211, %2208
  %2213 = icmp eq i32 %2212, 2
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %39, align 1
  %2215 = add i64 %2186, 17
  store i64 %2215, i64* %3, align 8
  store i32 %2192, i32* %2189, align 4
  %2216 = load i32, i32* %EAX.i189, align 4
  %2217 = load i64, i64* %3, align 8
  %2218 = sext i32 %2216 to i64
  store i64 %2218, i64* %RDX.i353, align 8
  %2219 = load i64, i64* %RBP.i, align 8
  %2220 = add nsw i64 %2218, -128
  %2221 = add i64 %2220, %2219
  %2222 = add i64 %2217, 8
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i8*
  store i8 61, i8* %2223, align 1
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -28
  %2226 = load i64, i64* %3, align 8
  %2227 = add i64 %2226, 3
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2225 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = add i32 %2229, -1
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RAX.i, align 8
  %2232 = icmp ne i32 %2229, 0
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %14, align 1
  %2234 = and i32 %2230, 255
  %2235 = tail call i32 @llvm.ctpop.i32(i32 %2234)
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  store i8 %2238, i8* %21, align 1
  %2239 = xor i32 %2229, 16
  %2240 = xor i32 %2239, %2230
  %2241 = lshr i32 %2240, 4
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  store i8 %2243, i8* %27, align 1
  %2244 = icmp eq i32 %2230, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %30, align 1
  %2246 = lshr i32 %2230, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %33, align 1
  %2248 = lshr i32 %2229, 31
  %2249 = xor i32 %2246, %2248
  %2250 = xor i32 %2246, 1
  %2251 = add nuw nsw i32 %2249, %2250
  %2252 = icmp eq i32 %2251, 2
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %39, align 1
  %2254 = add i64 %2226, 9
  store i64 %2254, i64* %3, align 8
  store i32 %2230, i32* %2228, align 4
  %2255 = load i64, i64* %3, align 8
  %2256 = add i64 %2255, -44
  store i64 %2256, i64* %3, align 8
  br label %block_.L_418f24

block_.L_418f55:                                  ; preds = %block_.L_418f24
  %2257 = add i64 %2186, 5
  store i64 %2257, i64* %3, align 8
  br label %block_.L_418f5a

block_.L_418f5a:                                  ; preds = %block_418ecc, %block_.L_418f55
  %2258 = phi i64 [ %2257, %block_.L_418f55 ], [ %2077, %block_418ecc ]
  %2259 = phi i64 [ %2170, %block_.L_418f55 ], [ %.pre85, %block_418ecc ]
  %MEMORY.18 = phi %struct.Memory* [ %2136, %block_.L_418f55 ], [ %2056, %block_418ecc ]
  %2260 = add i64 %2259, -128
  store i64 %2260, i64* %RDI.i42, align 8
  %2261 = add i64 %2259, -8
  %2262 = add i64 %2258, 8
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i64*
  %2264 = load i64, i64* %2263, align 8
  store i64 %2264, i64* %RSI.i62, align 8
  %2265 = add i64 %2258, -96922
  %2266 = add i64 %2258, 13
  %2267 = load i64, i64* %6, align 8
  %2268 = add i64 %2267, -8
  %2269 = inttoptr i64 %2268 to i64*
  store i64 %2266, i64* %2269, align 8
  store i64 %2268, i64* %6, align 8
  store i64 %2265, i64* %3, align 8
  %2270 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.18)
  %2271 = load i64, i64* %RBP.i, align 8
  %2272 = add i64 %2271, -200
  %2273 = load i32, i32* %EAX.i189, align 4
  %2274 = load i64, i64* %3, align 8
  %2275 = add i64 %2274, 6
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2272 to i32*
  store i32 %2273, i32* %2276, align 4
  %2277 = load i64, i64* %3, align 8
  %2278 = add i64 %2277, 413
  store i64 %2278, i64* %3, align 8
  br label %block_.L_41910a

block_.L_418f72:                                  ; preds = %block_.L_418ead.block_.L_418f72_crit_edge, %block_418ebc
  %.pre-phi104 = phi i64* [ %.pre103, %block_.L_418ead.block_.L_418f72_crit_edge ], [ %2011, %block_418ebc ]
  %2279 = phi i64 [ %2005, %block_.L_418ead.block_.L_418f72_crit_edge ], [ %2041, %block_418ebc ]
  %2280 = add i64 %2279, 19
  store i64 %2280, i64* %3, align 8
  %2281 = load i64, i64* %.pre-phi104, align 8
  store i64 %2281, i64* %RAX.i, align 8
  %2282 = add i64 %2281, 40
  %2283 = add i64 %2279, 23
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  store i8 0, i8* %14, align 1
  %2286 = and i32 %2285, 255
  %2287 = tail call i32 @llvm.ctpop.i32(i32 %2286)
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = xor i8 %2289, 1
  store i8 %2290, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2291 = icmp eq i32 %2285, 0
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %30, align 1
  %2293 = lshr i32 %2285, 31
  %2294 = trunc i32 %2293 to i8
  store i8 %2294, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v120 = select i1 %2291, i64 96, i64 29
  %2295 = add i64 %2279, %.v120
  %2296 = add i64 %2295, 10
  store i64 %2296, i64* %3, align 8
  br i1 %2291, label %block_.L_418fd2, label %block_418f8f

block_418f8f:                                     ; preds = %block_.L_418f72
  store i64 ptrtoint (%G__0x456fe7_type* @G__0x456fe7 to i64), i64* %RSI.i62, align 8
  %2297 = add i64 %1538, -128
  store i64 %2297, i64* %RDI.i42, align 8
  %2298 = add i64 %2295, 17
  store i64 %2298, i64* %3, align 8
  %2299 = load i32, i32* %1542, align 4
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RDX.i353, align 8
  %2301 = add i64 %2295, 21
  store i64 %2301, i64* %3, align 8
  %2302 = load i64, i64* %.pre-phi104, align 8
  store i64 %2302, i64* %RAX.i, align 8
  %2303 = add i64 %2295, 24
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i64*
  %2305 = load i64, i64* %2304, align 8
  store i64 %2305, i64* %RAX.i, align 8
  %2306 = add i64 %1538, -36
  %2307 = add i64 %2295, 28
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i32*
  %2309 = load i32, i32* %2308, align 4
  %2310 = sext i32 %2309 to i64
  store i64 %2310, i64* %RCX.i272, align 8
  %2311 = shl nsw i64 %2310, 2
  %2312 = add i64 %2311, %2305
  %2313 = add i64 %2295, 31
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RCX.i272, align 8
  %2317 = add i64 %2295, 35
  store i64 %2317, i64* %3, align 8
  %2318 = load i64, i64* %.pre-phi104, align 8
  store i64 %2318, i64* %RAX.i, align 8
  %2319 = add i64 %2318, 32
  %2320 = add i64 %2295, 39
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i64*
  %2322 = load i64, i64* %2321, align 8
  store i64 %2322, i64* %RAX.i, align 8
  %2323 = add i64 %2295, 43
  store i64 %2323, i64* %3, align 8
  %2324 = load i32, i32* %2308, align 4
  %2325 = sext i32 %2324 to i64
  store i64 %2325, i64* %R8.i820, align 8
  %2326 = shl nsw i64 %2325, 2
  %2327 = add i64 %2326, %2322
  %2328 = add i64 %2295, 49
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to float*
  %2330 = load float, float* %2329, align 4
  %2331 = tail call float @llvm.trunc.f32(float %2330)
  %2332 = tail call float @llvm.fabs.f32(float %2331)
  %2333 = fcmp ogt float %2332, 0x41E0000000000000
  %2334 = fptosi float %2331 to i32
  %2335 = zext i32 %2334 to i64
  %2336 = select i1 %2333, i64 2147483648, i64 %2335
  store i64 %2336, i64* %R8.i820, align 8
  store i8 0, i8* %AL.i779, align 1
  %2337 = add i64 %2295, -96463
  %2338 = add i64 %2295, 56
  %2339 = load i64, i64* %6, align 8
  %2340 = add i64 %2339, -8
  %2341 = inttoptr i64 %2340 to i64*
  store i64 %2338, i64* %2341, align 8
  store i64 %2340, i64* %6, align 8
  store i64 %2337, i64* %3, align 8
  %2342 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %1494)
  %2343 = load i64, i64* %RBP.i, align 8
  %2344 = add i64 %2343, -204
  %2345 = load i32, i32* %EAX.i189, align 4
  %2346 = load i64, i64* %3, align 8
  %2347 = add i64 %2346, 6
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2344 to i32*
  store i32 %2345, i32* %2348, align 4
  %2349 = load i64, i64* %3, align 8
  %2350 = add i64 %2349, 59
  store i64 %2350, i64* %3, align 8
  br label %block_.L_419008

block_.L_418fd2:                                  ; preds = %block_.L_418f72
  store i64 ptrtoint (%G__0x456ff4_type* @G__0x456ff4 to i64), i64* %RSI.i62, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R8.i820, align 8
  %2351 = add i64 %1538, -128
  store i64 %2351, i64* %RDI.i42, align 8
  %2352 = add i64 %2295, 27
  store i64 %2352, i64* %3, align 8
  %2353 = load i32, i32* %1542, align 4
  %2354 = zext i32 %2353 to i64
  store i64 %2354, i64* %RDX.i353, align 8
  %2355 = add i64 %2295, 31
  store i64 %2355, i64* %3, align 8
  %2356 = load i64, i64* %.pre-phi104, align 8
  store i64 %2356, i64* %RAX.i, align 8
  %2357 = add i64 %2295, 34
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i64*
  %2359 = load i64, i64* %2358, align 8
  store i64 %2359, i64* %RAX.i, align 8
  %2360 = add i64 %1538, -36
  %2361 = add i64 %2295, 38
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = sext i32 %2363 to i64
  store i64 %2364, i64* %RCX.i272, align 8
  %2365 = shl nsw i64 %2364, 2
  %2366 = add i64 %2365, %2359
  %2367 = add i64 %2295, 41
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = zext i32 %2369 to i64
  store i64 %2370, i64* %RCX.i272, align 8
  store i8 0, i8* %AL.i779, align 1
  %2371 = add i64 %2295, -96530
  %2372 = add i64 %2295, 48
  %2373 = load i64, i64* %6, align 8
  %2374 = add i64 %2373, -8
  %2375 = inttoptr i64 %2374 to i64*
  store i64 %2372, i64* %2375, align 8
  store i64 %2374, i64* %6, align 8
  store i64 %2371, i64* %3, align 8
  %2376 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %1494)
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -208
  %2379 = load i32, i32* %EAX.i189, align 4
  %2380 = load i64, i64* %3, align 8
  %2381 = add i64 %2380, 6
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2378 to i32*
  store i32 %2379, i32* %2382, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_419008

block_.L_419008:                                  ; preds = %block_.L_418fd2, %block_418f8f
  %2383 = phi i64 [ %.pre86, %block_.L_418fd2 ], [ %2350, %block_418f8f ]
  %MEMORY.20 = phi %struct.Memory* [ %2376, %block_.L_418fd2 ], [ %2342, %block_418f8f ]
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -108
  %2386 = add i64 %2383, 4
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i8*
  store i8 32, i8* %2387, align 1
  %2388 = load i64, i64* %RBP.i, align 8
  %2389 = add i64 %2388, -16
  %2390 = load i64, i64* %3, align 8
  %2391 = add i64 %2390, 4
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2389 to i64*
  %2393 = load i64, i64* %2392, align 8
  store i64 %2393, i64* %RAX.i, align 8
  %2394 = add i64 %2390, 7
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i64*
  %2396 = load i64, i64* %2395, align 8
  store i64 %2396, i64* %RAX.i, align 8
  %2397 = add i64 %2388, -36
  %2398 = add i64 %2390, 11
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = sext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i272, align 8
  %2402 = shl nsw i64 %2401, 2
  %2403 = add i64 %2402, %2396
  %2404 = add i64 %2390, 15
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i32*
  %2406 = load i32, i32* %2405, align 4
  store i8 0, i8* %14, align 1
  %2407 = and i32 %2406, 255
  %2408 = tail call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  store i8 %2411, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2412 = icmp eq i32 %2406, 0
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %30, align 1
  %2414 = lshr i32 %2406, 31
  %2415 = trunc i32 %2414 to i8
  store i8 %2415, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2416 = icmp ne i8 %2415, 0
  %2417 = or i1 %2412, %2416
  %.v121 = select i1 %2417, i64 114, i64 21
  %2418 = add i64 %2390, %.v121
  store i64 %2418, i64* %3, align 8
  br i1 %2417, label %block_.L_41907e, label %block_419021

block_419021:                                     ; preds = %block_.L_419008
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %3, align 8
  %2420 = load i64, i64* %2392, align 8
  store i64 %2420, i64* %RAX.i, align 8
  %2421 = add i64 %2418, 7
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i64*
  %2423 = load i64, i64* %2422, align 8
  store i64 %2423, i64* %RAX.i, align 8
  %2424 = add i64 %2418, 11
  store i64 %2424, i64* %3, align 8
  %2425 = load i32, i32* %2399, align 4
  %2426 = sext i32 %2425 to i64
  store i64 %2426, i64* %RCX.i272, align 8
  %2427 = shl nsw i64 %2426, 2
  %2428 = add i64 %2427, %2423
  %2429 = add i64 %2418, 14
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = add i32 %2431, -1
  %2433 = zext i32 %2432 to i64
  %2434 = icmp eq i32 %2431, 0
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %14, align 1
  %2436 = and i32 %2432, 255
  %2437 = tail call i32 @llvm.ctpop.i32(i32 %2436)
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = xor i8 %2439, 1
  store i8 %2440, i8* %21, align 1
  %2441 = xor i32 %2432, %2431
  %2442 = lshr i32 %2441, 4
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  store i8 %2444, i8* %27, align 1
  %2445 = icmp eq i32 %2432, 0
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %30, align 1
  %2447 = lshr i32 %2432, 31
  %2448 = trunc i32 %2447 to i8
  store i8 %2448, i8* %33, align 1
  %2449 = lshr i32 %2431, 31
  %2450 = xor i32 %2447, %2449
  %2451 = add nuw nsw i32 %2450, %2449
  %2452 = icmp eq i32 %2451, 2
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %39, align 1
  store i64 %2433, i64* %RAX.i, align 8
  %2454 = sext i32 %2432 to i64
  %2455 = lshr i64 %2454, 32
  store i64 %2455, i64* %1287, align 8
  %2456 = add i64 %2388, -20
  %2457 = add i64 %2418, 23
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = sext i32 %2459 to i64
  %2461 = shl nuw i64 %2455, 32
  %2462 = or i64 %2461, %2433
  %2463 = sdiv i64 %2462, %2460
  %2464 = shl i64 %2463, 32
  %2465 = ashr exact i64 %2464, 32
  %2466 = icmp eq i64 %2463, %2465
  br i1 %2466, label %2469, label %2467

; <label>:2467:                                   ; preds = %block_419021
  %2468 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2457, %struct.Memory* %MEMORY.20)
  %.pre87 = load i64, i64* %RAX.i, align 8
  %.pre88 = load i64, i64* %3, align 8
  %.pre89 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x14__rbp_.exit350

; <label>:2469:                                   ; preds = %block_419021
  %2470 = srem i64 %2462, %2460
  %2471 = and i64 %2463, 4294967295
  store i64 %2471, i64* %RAX.i, align 8
  %2472 = and i64 %2470, 4294967295
  store i64 %2472, i64* %RDX.i353, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl_MINUS0x14__rbp_.exit350

routine_idivl_MINUS0x14__rbp_.exit350:            ; preds = %2469, %2467
  %2473 = phi i64 [ %.pre89, %2467 ], [ %2388, %2469 ]
  %2474 = phi i64 [ %.pre88, %2467 ], [ %2457, %2469 ]
  %2475 = phi i64 [ %.pre87, %2467 ], [ %2471, %2469 ]
  %2476 = phi %struct.Memory* [ %2468, %2467 ], [ %MEMORY.20, %2469 ]
  %2477 = trunc i64 %2475 to i32
  %2478 = add i32 %2477, 1
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %RAX.i, align 8
  %2480 = icmp eq i32 %2477, -1
  %2481 = icmp eq i32 %2478, 0
  %2482 = or i1 %2480, %2481
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %14, align 1
  %2484 = and i32 %2478, 255
  %2485 = tail call i32 @llvm.ctpop.i32(i32 %2484)
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  %2488 = xor i8 %2487, 1
  store i8 %2488, i8* %21, align 1
  %2489 = xor i32 %2478, %2477
  %2490 = lshr i32 %2489, 4
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  store i8 %2492, i8* %27, align 1
  %2493 = zext i1 %2481 to i8
  store i8 %2493, i8* %30, align 1
  %2494 = lshr i32 %2478, 31
  %2495 = trunc i32 %2494 to i8
  store i8 %2495, i8* %33, align 1
  %2496 = lshr i32 %2477, 31
  %2497 = xor i32 %2494, %2496
  %2498 = add nuw nsw i32 %2497, %2494
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %39, align 1
  %2501 = add i64 %2473, -28
  %2502 = add i64 %2474, 6
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i32*
  store i32 %2478, i32* %2503, align 4
  %2504 = load i64, i64* %RBP.i, align 8
  %2505 = add i64 %2504, -132
  %2506 = load i64, i64* %3, align 8
  %2507 = add i64 %2506, 10
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2505 to i32*
  store i32 20, i32* %2508, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_419048

block_.L_419048:                                  ; preds = %block_419052, %routine_idivl_MINUS0x14__rbp_.exit350
  %2509 = phi i64 [ %2596, %block_419052 ], [ %.pre90, %routine_idivl_MINUS0x14__rbp_.exit350 ]
  %2510 = load i64, i64* %RBP.i, align 8
  %2511 = add i64 %2510, -28
  %2512 = add i64 %2509, 4
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  store i8 0, i8* %14, align 1
  %2515 = and i32 %2514, 255
  %2516 = tail call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  store i8 %2519, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2520 = icmp eq i32 %2514, 0
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %30, align 1
  %2522 = lshr i32 %2514, 31
  %2523 = trunc i32 %2522 to i8
  store i8 %2523, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2524 = icmp ne i8 %2523, 0
  %2525 = or i1 %2520, %2524
  %.v122 = select i1 %2525, i64 49, i64 10
  %2526 = add i64 %2509, %.v122
  store i64 %2526, i64* %3, align 8
  br i1 %2525, label %block_.L_419079, label %block_419052

block_419052:                                     ; preds = %block_.L_419048
  %2527 = add i64 %2510, -132
  %2528 = add i64 %2526, 6
  store i64 %2528, i64* %3, align 8
  %2529 = inttoptr i64 %2527 to i32*
  %2530 = load i32, i32* %2529, align 4
  %2531 = zext i32 %2530 to i64
  store i64 %2531, i64* %RAX.i, align 8
  %2532 = add i32 %2530, 1
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RCX.i272, align 8
  %2534 = icmp eq i32 %2530, -1
  %2535 = icmp eq i32 %2532, 0
  %2536 = or i1 %2534, %2535
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %14, align 1
  %2538 = and i32 %2532, 255
  %2539 = tail call i32 @llvm.ctpop.i32(i32 %2538)
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  %2542 = xor i8 %2541, 1
  store i8 %2542, i8* %21, align 1
  %2543 = xor i32 %2532, %2530
  %2544 = lshr i32 %2543, 4
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  store i8 %2546, i8* %27, align 1
  %2547 = zext i1 %2535 to i8
  store i8 %2547, i8* %30, align 1
  %2548 = lshr i32 %2532, 31
  %2549 = trunc i32 %2548 to i8
  store i8 %2549, i8* %33, align 1
  %2550 = lshr i32 %2530, 31
  %2551 = xor i32 %2548, %2550
  %2552 = add nuw nsw i32 %2551, %2548
  %2553 = icmp eq i32 %2552, 2
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %39, align 1
  %2555 = add i64 %2526, 17
  store i64 %2555, i64* %3, align 8
  store i32 %2532, i32* %2529, align 4
  %2556 = load i32, i32* %EAX.i189, align 4
  %2557 = load i64, i64* %3, align 8
  %2558 = sext i32 %2556 to i64
  store i64 %2558, i64* %RDX.i353, align 8
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add nsw i64 %2558, -128
  %2561 = add i64 %2560, %2559
  %2562 = add i64 %2557, 8
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i8*
  store i8 61, i8* %2563, align 1
  %2564 = load i64, i64* %RBP.i, align 8
  %2565 = add i64 %2564, -28
  %2566 = load i64, i64* %3, align 8
  %2567 = add i64 %2566, 3
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2565 to i32*
  %2569 = load i32, i32* %2568, align 4
  %2570 = add i32 %2569, -1
  %2571 = zext i32 %2570 to i64
  store i64 %2571, i64* %RAX.i, align 8
  %2572 = icmp ne i32 %2569, 0
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %14, align 1
  %2574 = and i32 %2570, 255
  %2575 = tail call i32 @llvm.ctpop.i32(i32 %2574)
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = xor i8 %2577, 1
  store i8 %2578, i8* %21, align 1
  %2579 = xor i32 %2569, 16
  %2580 = xor i32 %2579, %2570
  %2581 = lshr i32 %2580, 4
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  store i8 %2583, i8* %27, align 1
  %2584 = icmp eq i32 %2570, 0
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %30, align 1
  %2586 = lshr i32 %2570, 31
  %2587 = trunc i32 %2586 to i8
  store i8 %2587, i8* %33, align 1
  %2588 = lshr i32 %2569, 31
  %2589 = xor i32 %2586, %2588
  %2590 = xor i32 %2586, 1
  %2591 = add nuw nsw i32 %2589, %2590
  %2592 = icmp eq i32 %2591, 2
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %39, align 1
  %2594 = add i64 %2566, 9
  store i64 %2594, i64* %3, align 8
  store i32 %2570, i32* %2568, align 4
  %2595 = load i64, i64* %3, align 8
  %2596 = add i64 %2595, -44
  store i64 %2596, i64* %3, align 8
  br label %block_.L_419048

block_.L_419079:                                  ; preds = %block_.L_419048
  %2597 = add i64 %2526, 5
  store i64 %2597, i64* %3, align 8
  br label %block_.L_41907e

block_.L_41907e:                                  ; preds = %block_.L_419079, %block_.L_419008
  %2598 = phi i64 [ %2418, %block_.L_419008 ], [ %2597, %block_.L_419079 ]
  %2599 = phi i64 [ %2388, %block_.L_419008 ], [ %2510, %block_.L_419079 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.20, %block_.L_419008 ], [ %2476, %block_.L_419079 ]
  %2600 = add i64 %2599, -16
  %2601 = add i64 %2598, 4
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i64*
  %2603 = load i64, i64* %2602, align 8
  store i64 %2603, i64* %RAX.i, align 8
  %2604 = add i64 %2603, 40
  %2605 = add i64 %2598, 8
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  store i8 0, i8* %14, align 1
  %2608 = and i32 %2607, 255
  %2609 = tail call i32 @llvm.ctpop.i32(i32 %2608)
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = xor i8 %2611, 1
  store i8 %2612, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2613 = icmp eq i32 %2607, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %30, align 1
  %2615 = lshr i32 %2607, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v123 = select i1 %2613, i64 121, i64 14
  %2617 = add i64 %2598, %.v123
  store i64 %2617, i64* %3, align 8
  br i1 %2613, label %block_.L_4190f7, label %block_41908c

block_41908c:                                     ; preds = %block_.L_41907e
  %2618 = add i64 %2617, 4
  store i64 %2618, i64* %3, align 8
  %2619 = load i64, i64* %2602, align 8
  store i64 %2619, i64* %RAX.i, align 8
  %2620 = add i64 %2619, 32
  %2621 = add i64 %2617, 8
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i64*
  %2623 = load i64, i64* %2622, align 8
  store i64 %2623, i64* %RAX.i, align 8
  %2624 = add i64 %2599, -36
  %2625 = add i64 %2617, 12
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = sext i32 %2627 to i64
  store i64 %2628, i64* %RCX.i272, align 8
  %2629 = shl nsw i64 %2628, 2
  %2630 = add i64 %2629, %2623
  %2631 = add i64 %2617, 17
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to float*
  %2633 = load float, float* %2632, align 4
  %2634 = tail call float @llvm.trunc.f32(float %2633)
  %2635 = tail call float @llvm.fabs.f32(float %2634)
  %2636 = fcmp ogt float %2635, 0x41E0000000000000
  %2637 = fptosi float %2634 to i32
  %2638 = zext i32 %2637 to i64
  %2639 = select i1 %2636, i64 2147483648, i64 %2638
  store i64 %2639, i64* %RDX.i353, align 8
  %2640 = trunc i64 %2639 to i32
  store i8 0, i8* %14, align 1
  %2641 = and i32 %2640, 255
  %2642 = tail call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  store i8 %2645, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2646 = icmp eq i32 %2640, 0
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %30, align 1
  %2648 = lshr i32 %2640, 31
  %2649 = trunc i32 %2648 to i8
  store i8 %2649, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2650 = icmp ne i8 %2649, 0
  %2651 = or i1 %2646, %2650
  %.v124 = select i1 %2651, i64 107, i64 26
  %2652 = add i64 %2617, %.v124
  store i64 %2652, i64* %3, align 8
  br i1 %2651, label %block_.L_4190f7, label %block_4190a6

block_4190a6:                                     ; preds = %block_41908c
  %2653 = add i64 %2652, ptrtoint (%G_0x3b67a__rip__type* @G_0x3b67a__rip_ to i64)
  %2654 = add i64 %2652, 8
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  %2656 = load i32, i32* %2655, align 4
  store i32 %2656, i32* %1423, align 1
  store float 0.000000e+00, float* %1425, align 1
  store float 0.000000e+00, float* %1427, align 1
  store float 0.000000e+00, float* %1429, align 1
  %2657 = add i64 %2652, 12
  store i64 %2657, i64* %3, align 8
  %2658 = load i64, i64* %2602, align 8
  store i64 %2658, i64* %RAX.i, align 8
  %2659 = add i64 %2658, 32
  %2660 = add i64 %2652, 16
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RAX.i, align 8
  %2663 = add i64 %2652, 20
  store i64 %2663, i64* %3, align 8
  %2664 = load i32, i32* %2626, align 4
  %2665 = sext i32 %2664 to i64
  store i64 %2665, i64* %RCX.i272, align 8
  %2666 = shl nsw i64 %2665, 2
  %2667 = add i64 %2666, %2662
  %2668 = add i64 %2652, 25
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i32*
  %2670 = load i32, i32* %2669, align 4
  store i32 %2670, i32* %1433, align 1
  store float 0.000000e+00, float* %1435, align 1
  store float 0.000000e+00, float* %1437, align 1
  store float 0.000000e+00, float* %1439, align 1
  %2671 = load <2 x float>, <2 x float>* %1440, align 1
  %2672 = load <2 x i32>, <2 x i32>* %1441, align 1
  %2673 = load <2 x float>, <2 x float>* %1442, align 1
  %2674 = extractelement <2 x float> %2671, i32 0
  %2675 = extractelement <2 x float> %2673, i32 0
  %2676 = fsub float %2674, %2675
  store float %2676, float* %1432, align 1
  %2677 = bitcast <2 x float> %2671 to <2 x i32>
  %2678 = extractelement <2 x i32> %2677, i32 1
  store i32 %2678, i32* %1443, align 1
  %2679 = extractelement <2 x i32> %2672, i32 0
  store i32 %2679, i32* %1444, align 1
  %2680 = extractelement <2 x i32> %2672, i32 1
  store i32 %2680, i32* %1445, align 1
  %2681 = load <2 x float>, <2 x float>* %1440, align 1
  %2682 = extractelement <2 x float> %2681, i32 0
  %2683 = tail call float @llvm.trunc.f32(float %2682)
  %2684 = tail call float @llvm.fabs.f32(float %2683)
  %2685 = fcmp ogt float %2684, 0x41E0000000000000
  %2686 = fptosi float %2683 to i32
  %2687 = zext i32 %2686 to i64
  %2688 = select i1 %2685, i64 2147483648, i64 %2687
  store i64 %2688, i64* %RAX.i, align 8
  %sext = shl nuw i64 %2688, 32
  %2689 = ashr exact i64 %sext, 32
  %2690 = lshr i64 %2689, 32
  store i64 %2690, i64* %1287, align 8
  %2691 = add i64 %2599, -20
  %2692 = add i64 %2652, 37
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  %2695 = sext i32 %2694 to i64
  %2696 = shl nuw i64 %2690, 32
  %2697 = or i64 %2696, %2688
  %2698 = sdiv i64 %2697, %2695
  %2699 = shl i64 %2698, 32
  %2700 = ashr exact i64 %2699, 32
  %2701 = icmp eq i64 %2698, %2700
  br i1 %2701, label %2704, label %2702

; <label>:2702:                                   ; preds = %block_4190a6
  %2703 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2692, %struct.Memory* %MEMORY.22)
  %.pre91 = load i64, i64* %RAX.i, align 8
  %.pre92 = load i64, i64* %3, align 8
  %.pre93 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x14__rbp_.exit

; <label>:2704:                                   ; preds = %block_4190a6
  %2705 = srem i64 %2697, %2695
  %2706 = and i64 %2698, 4294967295
  store i64 %2706, i64* %RAX.i, align 8
  %2707 = and i64 %2705, 4294967295
  store i64 %2707, i64* %RDX.i353, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl_MINUS0x14__rbp_.exit

routine_idivl_MINUS0x14__rbp_.exit:               ; preds = %2704, %2702
  %2708 = phi i64 [ %.pre93, %2702 ], [ %2599, %2704 ]
  %2709 = phi i64 [ %.pre92, %2702 ], [ %2692, %2704 ]
  %2710 = phi i64 [ %.pre91, %2702 ], [ %2706, %2704 ]
  %2711 = phi %struct.Memory* [ %2703, %2702 ], [ %MEMORY.22, %2704 ]
  %2712 = trunc i64 %2710 to i32
  %2713 = add i32 %2712, 20
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RAX.i, align 8
  %2715 = icmp ugt i32 %2712, -21
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %14, align 1
  %2717 = and i32 %2713, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %21, align 1
  %2722 = xor i32 %2712, 16
  %2723 = xor i32 %2722, %2713
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %27, align 1
  %2727 = icmp eq i32 %2713, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %30, align 1
  %2729 = lshr i32 %2713, 31
  %2730 = trunc i32 %2729 to i8
  store i8 %2730, i8* %33, align 1
  %2731 = lshr i32 %2712, 31
  %2732 = xor i32 %2729, %2731
  %2733 = add nuw nsw i32 %2732, %2729
  %2734 = icmp eq i32 %2733, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %39, align 1
  %2736 = add i64 %2708, -132
  %2737 = add i64 %2709, 9
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i32*
  store i32 %2713, i32* %2738, align 4
  %2739 = load i64, i64* %RBP.i, align 8
  %2740 = add i64 %2739, -132
  %2741 = load i64, i64* %3, align 8
  %2742 = add i64 %2741, 7
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2740 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = add i32 %2744, -78
  %2746 = icmp ult i32 %2744, 78
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %14, align 1
  %2748 = and i32 %2745, 255
  %2749 = tail call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  store i8 %2752, i8* %21, align 1
  %2753 = xor i32 %2745, %2744
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %27, align 1
  %2757 = icmp eq i32 %2745, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %30, align 1
  %2759 = lshr i32 %2745, 31
  %2760 = trunc i32 %2759 to i8
  store i8 %2760, i8* %33, align 1
  %2761 = lshr i32 %2744, 31
  %2762 = xor i32 %2759, %2761
  %2763 = add nuw nsw i32 %2762, %2761
  %2764 = icmp eq i32 %2763, 2
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %39, align 1
  %2766 = icmp ne i8 %2760, 0
  %2767 = xor i1 %2766, %2764
  %.v125 = select i1 %2767, i64 23, i64 13
  %2768 = add i64 %2741, %.v125
  store i64 %2768, i64* %3, align 8
  br i1 %2767, label %block_.L_4190eb, label %block_4190e1

block_4190e1:                                     ; preds = %routine_idivl_MINUS0x14__rbp_.exit
  %2769 = add i64 %2768, 10
  store i64 %2769, i64* %3, align 8
  store i32 78, i32* %2743, align 4
  %.pre94 = load i64, i64* %RBP.i, align 8
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4190eb

block_.L_4190eb:                                  ; preds = %block_4190e1, %routine_idivl_MINUS0x14__rbp_.exit
  %2770 = phi i64 [ %.pre95, %block_4190e1 ], [ %2768, %routine_idivl_MINUS0x14__rbp_.exit ]
  %2771 = phi i64 [ %.pre94, %block_4190e1 ], [ %2739, %routine_idivl_MINUS0x14__rbp_.exit ]
  %2772 = add i64 %2771, -132
  %2773 = add i64 %2770, 7
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = sext i32 %2775 to i64
  store i64 %2776, i64* %RAX.i, align 8
  %2777 = add nsw i64 %2776, -128
  %2778 = add i64 %2777, %2771
  %2779 = add i64 %2770, 12
  store i64 %2779, i64* %3, align 8
  %2780 = inttoptr i64 %2778 to i8*
  store i8 42, i8* %2780, align 1
  %.pre96 = load i64, i64* %RBP.i, align 8
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_4190f7

block_.L_4190f7:                                  ; preds = %block_.L_4190eb, %block_41908c, %block_.L_41907e
  %2781 = phi i64 [ %2617, %block_.L_41907e ], [ %2652, %block_41908c ], [ %.pre97, %block_.L_4190eb ]
  %2782 = phi i64 [ %2599, %block_.L_41907e ], [ %2599, %block_41908c ], [ %.pre96, %block_.L_4190eb ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.22, %block_.L_41907e ], [ %MEMORY.22, %block_41908c ], [ %2711, %block_.L_4190eb ]
  %2783 = add i64 %2782, -128
  store i64 %2783, i64* %RDI.i42, align 8
  %2784 = add i64 %2782, -8
  %2785 = add i64 %2781, 8
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i64*
  %2787 = load i64, i64* %2786, align 8
  store i64 %2787, i64* %RSI.i62, align 8
  %2788 = add i64 %2781, -97335
  %2789 = add i64 %2781, 13
  %2790 = load i64, i64* %6, align 8
  %2791 = add i64 %2790, -8
  %2792 = inttoptr i64 %2791 to i64*
  store i64 %2789, i64* %2792, align 8
  store i64 %2791, i64* %6, align 8
  store i64 %2788, i64* %3, align 8
  %2793 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.24)
  %2794 = load i64, i64* %RBP.i, align 8
  %2795 = add i64 %2794, -212
  %2796 = load i32, i32* %EAX.i189, align 4
  %2797 = load i64, i64* %3, align 8
  %2798 = add i64 %2797, 6
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2795 to i32*
  store i32 %2796, i32* %2799, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_41910a

block_.L_41910a:                                  ; preds = %block_.L_4190f7, %block_.L_418f5a, %block_.L_418e95, %block_418dc3, %block_418daf
  %2800 = phi i64 [ %.pre98, %block_.L_4190f7 ], [ %2278, %block_.L_418f5a ], [ %1974, %block_.L_418e95 ], [ %1612, %block_418dc3 ], [ %1576, %block_418daf ]
  %MEMORY.25 = phi %struct.Memory* [ %2793, %block_.L_4190f7 ], [ %2270, %block_.L_418f5a ], [ %1966, %block_.L_418e95 ], [ %1494, %block_418dc3 ], [ %1494, %block_418daf ]
  %2801 = load i64, i64* %RBP.i, align 8
  %2802 = add i64 %2801, -32
  %2803 = add i64 %2800, 3
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = add i32 %2805, 1
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RAX.i, align 8
  %2808 = icmp eq i32 %2805, -1
  %2809 = icmp eq i32 %2806, 0
  %2810 = or i1 %2808, %2809
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %14, align 1
  %2812 = and i32 %2806, 255
  %2813 = tail call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  store i8 %2816, i8* %21, align 1
  %2817 = xor i32 %2806, %2805
  %2818 = lshr i32 %2817, 4
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  store i8 %2820, i8* %27, align 1
  %2821 = zext i1 %2809 to i8
  store i8 %2821, i8* %30, align 1
  %2822 = lshr i32 %2806, 31
  %2823 = trunc i32 %2822 to i8
  store i8 %2823, i8* %33, align 1
  %2824 = lshr i32 %2805, 31
  %2825 = xor i32 %2822, %2824
  %2826 = add nuw nsw i32 %2825, %2822
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %39, align 1
  %2829 = add i64 %2800, 9
  store i64 %2829, i64* %3, align 8
  store i32 %2806, i32* %2804, align 4
  %2830 = load i64, i64* %3, align 8
  %2831 = add i64 %2830, -933
  store i64 %2831, i64* %3, align 8
  br label %block_.L_418d6e

block_.L_419118:                                  ; preds = %block_.L_418d6e
  %2832 = add i64 %1487, 4
  store i64 %2832, i64* %3, align 8
  %2833 = load i64, i64* %1455, align 8
  store i64 %2833, i64* %RAX.i, align 8
  %2834 = add i64 %2833, 40
  %2835 = add i64 %1487, 7
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  %2837 = load i32, i32* %2836, align 4
  %2838 = zext i32 %2837 to i64
  store i64 %2838, i64* %RCX.i272, align 8
  store i8 0, i8* %14, align 1
  %2839 = and i32 %2837, 255
  %2840 = tail call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  store i8 %2843, i8* %21, align 1
  %2844 = icmp eq i32 %2837, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %30, align 1
  %2846 = lshr i32 %2837, 31
  %2847 = trunc i32 %2846 to i8
  store i8 %2847, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2848 = add i64 %1447, -216
  %2849 = add i64 %1487, 15
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  store i32 %2837, i32* %2850, align 4
  %2851 = load i64, i64* %3, align 8
  %2852 = load i8, i8* %30, align 1
  %2853 = icmp ne i8 %2852, 0
  %.v162 = select i1 %2853, i64 63, i64 6
  %2854 = add i64 %2851, %.v162
  store i64 %2854, i64* %3, align 8
  %cmpBr_419127 = icmp eq i8 %2852, 1
  br i1 %cmpBr_419127, label %block_.L_419166, label %block_41912d

block_41912d:                                     ; preds = %block_.L_419118
  %2855 = load i64, i64* %RBP.i, align 8
  %2856 = add i64 %2855, -216
  %2857 = add i64 %2854, 11
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i32*
  %2859 = load i32, i32* %2858, align 4
  %2860 = add i32 %2859, -1
  %2861 = zext i32 %2860 to i64
  store i64 %2861, i64* %RAX.i, align 8
  %2862 = icmp eq i32 %2859, 0
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %14, align 1
  %2864 = and i32 %2860, 255
  %2865 = tail call i32 @llvm.ctpop.i32(i32 %2864)
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %21, align 1
  %2869 = xor i32 %2860, %2859
  %2870 = lshr i32 %2869, 4
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  store i8 %2872, i8* %27, align 1
  %2873 = icmp eq i32 %2860, 0
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %30, align 1
  %2875 = lshr i32 %2860, 31
  %2876 = trunc i32 %2875 to i8
  store i8 %2876, i8* %33, align 1
  %2877 = lshr i32 %2859, 31
  %2878 = xor i32 %2875, %2877
  %2879 = add nuw nsw i32 %2878, %2877
  %2880 = icmp eq i32 %2879, 2
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %39, align 1
  %2882 = add i64 %2855, -220
  %2883 = add i64 %2854, 20
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i32*
  store i32 %2860, i32* %2884, align 4
  %2885 = load i64, i64* %3, align 8
  %2886 = load i8, i8* %30, align 1
  %2887 = icmp ne i8 %2886, 0
  %.v163 = select i1 %2887, i64 69, i64 6
  %2888 = add i64 %2885, %.v163
  store i64 %2888, i64* %3, align 8
  %cmpBr_419141 = icmp eq i8 %2886, 1
  br i1 %cmpBr_419141, label %block_.L_419186, label %block_419147

block_419147:                                     ; preds = %block_41912d
  %2889 = load i64, i64* %RBP.i, align 8
  %2890 = add i64 %2889, -216
  %2891 = add i64 %2888, 11
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i32*
  %2893 = load i32, i32* %2892, align 4
  %2894 = add i32 %2893, -2
  %2895 = zext i32 %2894 to i64
  store i64 %2895, i64* %RAX.i, align 8
  %2896 = icmp ult i32 %2893, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %14, align 1
  %2898 = and i32 %2894, 255
  %2899 = tail call i32 @llvm.ctpop.i32(i32 %2898)
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  store i8 %2902, i8* %21, align 1
  %2903 = xor i32 %2894, %2893
  %2904 = lshr i32 %2903, 4
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  store i8 %2906, i8* %27, align 1
  %2907 = icmp eq i32 %2894, 0
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %30, align 1
  %2909 = lshr i32 %2894, 31
  %2910 = trunc i32 %2909 to i8
  store i8 %2910, i8* %33, align 1
  %2911 = lshr i32 %2893, 31
  %2912 = xor i32 %2909, %2911
  %2913 = add nuw nsw i32 %2912, %2911
  %2914 = icmp eq i32 %2913, 2
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %39, align 1
  %2916 = add i64 %2889, -224
  %2917 = add i64 %2888, 20
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  store i32 %2894, i32* %2918, align 4
  %2919 = load i64, i64* %3, align 8
  %2920 = load i8, i8* %30, align 1
  %2921 = icmp ne i8 %2920, 0
  %.v164 = select i1 %2921, i64 219, i64 6
  %2922 = add i64 %2919, %.v164
  store i64 %2922, i64* %3, align 8
  %cmpBr_41915b = icmp eq i8 %2920, 1
  br i1 %cmpBr_41915b, label %block_.L_419236, label %block_419161

block_419161:                                     ; preds = %block_419147
  %2923 = add i64 %2922, 384
  store i64 %2923, i64* %3, align 8
  br label %block_.L_4192e1

block_.L_419166:                                  ; preds = %block_.L_419118
  store i64 ptrtoint (%G__0x457001_type* @G__0x457001 to i64), i64* %RSI.i62, align 8
  %2924 = load i64, i64* %RBP.i, align 8
  %2925 = add i64 %2924, -8
  %2926 = add i64 %2854, 14
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i64*
  %2928 = load i64, i64* %2927, align 8
  store i64 %2928, i64* %RDI.i42, align 8
  store i8 0, i8* %AL.i779, align 1
  %2929 = add i64 %2854, -97270
  %2930 = add i64 %2854, 21
  %2931 = load i64, i64* %6, align 8
  %2932 = add i64 %2931, -8
  %2933 = inttoptr i64 %2932 to i64*
  store i64 %2930, i64* %2933, align 8
  store i64 %2932, i64* %6, align 8
  store i64 %2929, i64* %3, align 8
  %2934 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -228
  %2937 = load i32, i32* %EAX.i189, align 4
  %2938 = load i64, i64* %3, align 8
  %2939 = add i64 %2938, 6
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2936 to i32*
  store i32 %2937, i32* %2940, align 4
  %2941 = load i64, i64* %3, align 8
  %2942 = add i64 %2941, 352
  store i64 %2942, i64* %3, align 8
  br label %block_.L_4192e1

block_.L_419186:                                  ; preds = %block_41912d
  store i64 ptrtoint (%G__0x457024_type* @G__0x457024 to i64), i64* %RSI.i62, align 8
  %2943 = load i64, i64* %RBP.i, align 8
  %2944 = add i64 %2943, -8
  %2945 = add i64 %2888, 14
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i64*
  %2947 = load i64, i64* %2946, align 8
  store i64 %2947, i64* %RDI.i42, align 8
  store i8 0, i8* %AL.i779, align 1
  %2948 = add i64 %2888, -97302
  %2949 = add i64 %2888, 21
  %2950 = load i64, i64* %6, align 8
  %2951 = add i64 %2950, -8
  %2952 = inttoptr i64 %2951 to i64*
  store i64 %2949, i64* %2952, align 8
  store i64 %2951, i64* %6, align 8
  store i64 %2948, i64* %3, align 8
  %2953 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %2954 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457056_type* @G__0x457056 to i64), i64* %RSI.i62, align 8
  %2955 = load i64, i64* %RBP.i, align 8
  %2956 = add i64 %2955, -8
  %2957 = add i64 %2954, 14
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i64*
  %2959 = load i64, i64* %2958, align 8
  store i64 %2959, i64* %RDI.i42, align 8
  %2960 = add i64 %2955, -16
  %2961 = add i64 %2954, 18
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to i64*
  %2963 = load i64, i64* %2962, align 8
  store i64 %2963, i64* %RCX.i272, align 8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2965 = add i64 %2963, 44
  %2966 = add i64 %2954, 23
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to float*
  %2968 = load float, float* %2967, align 4
  %2969 = fpext float %2968 to double
  %2970 = bitcast %union.VectorReg* %2964 to double*
  store double %2969, double* %2970, align 1
  %2971 = add i64 %2955, -232
  %2972 = load i32, i32* %EAX.i189, align 4
  %2973 = add i64 %2954, 29
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2971 to i32*
  store i32 %2972, i32* %2974, align 4
  %2975 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %2976 = add i64 %2975, -97352
  %2977 = add i64 %2975, 7
  %2978 = load i64, i64* %6, align 8
  %2979 = add i64 %2978, -8
  %2980 = inttoptr i64 %2979 to i64*
  store i64 %2977, i64* %2980, align 8
  store i64 %2979, i64* %6, align 8
  store i64 %2976, i64* %3, align 8
  %2981 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2953)
  %2982 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457071_type* @G__0x457071 to i64), i64* %RSI.i62, align 8
  %2983 = load i64, i64* %RBP.i, align 8
  %2984 = add i64 %2983, -8
  %2985 = add i64 %2982, 14
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i64*
  %2987 = load i64, i64* %2986, align 8
  store i64 %2987, i64* %RDI.i42, align 8
  %2988 = add i64 %2983, -16
  %2989 = add i64 %2982, 18
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i64*
  %2991 = load i64, i64* %2990, align 8
  store i64 %2991, i64* %RCX.i272, align 8
  %2992 = add i64 %2991, 48
  %2993 = add i64 %2982, 23
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to float*
  %2995 = load float, float* %2994, align 4
  %2996 = fpext float %2995 to double
  store double %2996, double* %2970, align 1
  %2997 = add i64 %2983, -236
  %2998 = load i32, i32* %EAX.i189, align 4
  %2999 = add i64 %2982, 29
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2997 to i32*
  store i32 %2998, i32* %3000, align 4
  %3001 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3002 = add i64 %3001, -97388
  %3003 = add i64 %3001, 7
  %3004 = load i64, i64* %6, align 8
  %3005 = add i64 %3004, -8
  %3006 = inttoptr i64 %3005 to i64*
  store i64 %3003, i64* %3006, align 8
  store i64 %3005, i64* %6, align 8
  store i64 %3002, i64* %3, align 8
  %3007 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2981)
  %3008 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45708c_type* @G__0x45708c to i64), i64* %RSI.i62, align 8
  %3009 = load i64, i64* %RBP.i, align 8
  %3010 = add i64 %3009, -8
  %3011 = add i64 %3008, 14
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i64*
  %3013 = load i64, i64* %3012, align 8
  store i64 %3013, i64* %RDI.i42, align 8
  %3014 = add i64 %3009, -16
  %3015 = add i64 %3008, 18
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i64*
  %3017 = load i64, i64* %3016, align 8
  store i64 %3017, i64* %RCX.i272, align 8
  %3018 = add i64 %3017, 56
  %3019 = add i64 %3008, 23
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to float*
  %3021 = load float, float* %3020, align 4
  %3022 = fpext float %3021 to double
  store double %3022, double* %2970, align 1
  %3023 = add i64 %3009, -240
  %3024 = load i32, i32* %EAX.i189, align 4
  %3025 = add i64 %3008, 29
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3023 to i32*
  store i32 %3024, i32* %3026, align 4
  %3027 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3028 = add i64 %3027, -97424
  %3029 = add i64 %3027, 7
  %3030 = load i64, i64* %6, align 8
  %3031 = add i64 %3030, -8
  %3032 = inttoptr i64 %3031 to i64*
  store i64 %3029, i64* %3032, align 8
  store i64 %3031, i64* %6, align 8
  store i64 %3028, i64* %3, align 8
  %3033 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3007)
  %3034 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4570a7_type* @G__0x4570a7 to i64), i64* %RSI.i62, align 8
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -8
  %3037 = add i64 %3034, 14
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i64*
  %3039 = load i64, i64* %3038, align 8
  store i64 %3039, i64* %RDI.i42, align 8
  %3040 = add i64 %3035, -16
  %3041 = add i64 %3034, 18
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3040 to i64*
  %3043 = load i64, i64* %3042, align 8
  store i64 %3043, i64* %RCX.i272, align 8
  %3044 = add i64 %3043, 60
  %3045 = add i64 %3034, 23
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to float*
  %3047 = load float, float* %3046, align 4
  %3048 = fpext float %3047 to double
  store double %3048, double* %2970, align 1
  %3049 = add i64 %3035, -244
  %3050 = load i32, i32* %EAX.i189, align 4
  %3051 = add i64 %3034, 29
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3049 to i32*
  store i32 %3050, i32* %3052, align 4
  %3053 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3054 = add i64 %3053, -97460
  %3055 = add i64 %3053, 7
  %3056 = load i64, i64* %6, align 8
  %3057 = add i64 %3056, -8
  %3058 = inttoptr i64 %3057 to i64*
  store i64 %3055, i64* %3058, align 8
  store i64 %3057, i64* %6, align 8
  store i64 %3054, i64* %3, align 8
  %3059 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3033)
  %3060 = load i64, i64* %RBP.i, align 8
  %3061 = add i64 %3060, -248
  %3062 = load i32, i32* %EAX.i189, align 4
  %3063 = load i64, i64* %3, align 8
  %3064 = add i64 %3063, 6
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3061 to i32*
  store i32 %3062, i32* %3065, align 4
  %3066 = load i64, i64* %3, align 8
  %3067 = add i64 %3066, 176
  store i64 %3067, i64* %3, align 8
  br label %block_.L_4192e1

block_.L_419236:                                  ; preds = %block_419147
  store i64 ptrtoint (%G__0x4570c2_type* @G__0x4570c2 to i64), i64* %RSI.i62, align 8
  %3068 = load i64, i64* %RBP.i, align 8
  %3069 = add i64 %3068, -8
  %3070 = add i64 %2922, 14
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3069 to i64*
  %3072 = load i64, i64* %3071, align 8
  store i64 %3072, i64* %RDI.i42, align 8
  store i8 0, i8* %AL.i779, align 1
  %3073 = add i64 %2922, -97478
  %3074 = add i64 %2922, 21
  %3075 = load i64, i64* %6, align 8
  %3076 = add i64 %3075, -8
  %3077 = inttoptr i64 %3076 to i64*
  store i64 %3074, i64* %3077, align 8
  store i64 %3076, i64* %6, align 8
  store i64 %3073, i64* %3, align 8
  %3078 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %3079 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4570f9_type* @G__0x4570f9 to i64), i64* %RSI.i62, align 8
  %3080 = load i64, i64* %RBP.i, align 8
  %3081 = add i64 %3080, -8
  %3082 = add i64 %3079, 14
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %RDI.i42, align 8
  %3085 = add i64 %3080, -16
  %3086 = add i64 %3079, 18
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i64*
  %3088 = load i64, i64* %3087, align 8
  store i64 %3088, i64* %RCX.i272, align 8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %3090 = add i64 %3088, 44
  %3091 = add i64 %3079, 23
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to float*
  %3093 = load float, float* %3092, align 4
  %3094 = fpext float %3093 to double
  %3095 = bitcast %union.VectorReg* %3089 to double*
  store double %3094, double* %3095, align 1
  %3096 = add i64 %3080, -252
  %3097 = load i32, i32* %EAX.i189, align 4
  %3098 = add i64 %3079, 29
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3096 to i32*
  store i32 %3097, i32* %3099, align 4
  %3100 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3101 = add i64 %3100, -97528
  %3102 = add i64 %3100, 7
  %3103 = load i64, i64* %6, align 8
  %3104 = add i64 %3103, -8
  %3105 = inttoptr i64 %3104 to i64*
  store i64 %3102, i64* %3105, align 8
  store i64 %3104, i64* %6, align 8
  store i64 %3101, i64* %3, align 8
  %3106 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3078)
  %3107 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457114_type* @G__0x457114 to i64), i64* %RSI.i62, align 8
  %3108 = load i64, i64* %RBP.i, align 8
  %3109 = add i64 %3108, -8
  %3110 = add i64 %3107, 14
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3109 to i64*
  %3112 = load i64, i64* %3111, align 8
  store i64 %3112, i64* %RDI.i42, align 8
  %3113 = add i64 %3108, -16
  %3114 = add i64 %3107, 18
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i64*
  %3116 = load i64, i64* %3115, align 8
  store i64 %3116, i64* %RCX.i272, align 8
  %3117 = add i64 %3116, 48
  %3118 = add i64 %3107, 23
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to float*
  %3120 = load float, float* %3119, align 4
  %3121 = fpext float %3120 to double
  store double %3121, double* %3095, align 1
  %3122 = add i64 %3108, -256
  %3123 = load i32, i32* %EAX.i189, align 4
  %3124 = add i64 %3107, 29
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3122 to i32*
  store i32 %3123, i32* %3125, align 4
  %3126 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3127 = add i64 %3126, -97564
  %3128 = add i64 %3126, 7
  %3129 = load i64, i64* %6, align 8
  %3130 = add i64 %3129, -8
  %3131 = inttoptr i64 %3130 to i64*
  store i64 %3128, i64* %3131, align 8
  store i64 %3130, i64* %6, align 8
  store i64 %3127, i64* %3, align 8
  %3132 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3106)
  %3133 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45708c_type* @G__0x45708c to i64), i64* %RSI.i62, align 8
  %3134 = load i64, i64* %RBP.i, align 8
  %3135 = add i64 %3134, -8
  %3136 = add i64 %3133, 14
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i64*
  %3138 = load i64, i64* %3137, align 8
  store i64 %3138, i64* %RDI.i42, align 8
  %3139 = add i64 %3134, -16
  %3140 = add i64 %3133, 18
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i64*
  %3142 = load i64, i64* %3141, align 8
  store i64 %3142, i64* %RCX.i272, align 8
  %3143 = add i64 %3142, 56
  %3144 = add i64 %3133, 23
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to float*
  %3146 = load float, float* %3145, align 4
  %3147 = fpext float %3146 to double
  store double %3147, double* %3095, align 1
  %3148 = add i64 %3134, -260
  %3149 = load i32, i32* %EAX.i189, align 4
  %3150 = add i64 %3133, 29
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3148 to i32*
  store i32 %3149, i32* %3151, align 4
  %3152 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3153 = add i64 %3152, -97600
  %3154 = add i64 %3152, 7
  %3155 = load i64, i64* %6, align 8
  %3156 = add i64 %3155, -8
  %3157 = inttoptr i64 %3156 to i64*
  store i64 %3154, i64* %3157, align 8
  store i64 %3156, i64* %6, align 8
  store i64 %3153, i64* %3, align 8
  %3158 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3132)
  %3159 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4570a7_type* @G__0x4570a7 to i64), i64* %RSI.i62, align 8
  %3160 = load i64, i64* %RBP.i, align 8
  %3161 = add i64 %3160, -8
  %3162 = add i64 %3159, 14
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i64*
  %3164 = load i64, i64* %3163, align 8
  store i64 %3164, i64* %RDI.i42, align 8
  %3165 = add i64 %3160, -16
  %3166 = add i64 %3159, 18
  store i64 %3166, i64* %3, align 8
  %3167 = inttoptr i64 %3165 to i64*
  %3168 = load i64, i64* %3167, align 8
  store i64 %3168, i64* %RCX.i272, align 8
  %3169 = add i64 %3168, 60
  %3170 = add i64 %3159, 23
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to float*
  %3172 = load float, float* %3171, align 4
  %3173 = fpext float %3172 to double
  store double %3173, double* %3095, align 1
  %3174 = add i64 %3160, -264
  %3175 = load i32, i32* %EAX.i189, align 4
  %3176 = add i64 %3159, 29
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3174 to i32*
  store i32 %3175, i32* %3177, align 4
  %3178 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i779, align 1
  %3179 = add i64 %3178, -97636
  %3180 = add i64 %3178, 7
  %3181 = load i64, i64* %6, align 8
  %3182 = add i64 %3181, -8
  %3183 = inttoptr i64 %3182 to i64*
  store i64 %3180, i64* %3183, align 8
  store i64 %3182, i64* %6, align 8
  store i64 %3179, i64* %3, align 8
  %3184 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3158)
  %3185 = load i64, i64* %RBP.i, align 8
  %3186 = add i64 %3185, -268
  %3187 = load i32, i32* %EAX.i189, align 4
  %3188 = load i64, i64* %3, align 8
  %3189 = add i64 %3188, 6
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3186 to i32*
  store i32 %3187, i32* %3190, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_4192e1

block_.L_4192e1:                                  ; preds = %block_.L_419236, %block_.L_419186, %block_.L_419166, %block_419161
  %3191 = phi i64 [ %2942, %block_.L_419166 ], [ %3067, %block_.L_419186 ], [ %.pre99, %block_.L_419236 ], [ %2923, %block_419161 ]
  %MEMORY.26 = phi %struct.Memory* [ %2934, %block_.L_419166 ], [ %3059, %block_.L_419186 ], [ %3184, %block_.L_419236 ], [ %MEMORY.12, %block_419161 ]
  %3192 = load i64, i64* %6, align 8
  %3193 = add i64 %3192, 272
  store i64 %3193, i64* %6, align 8
  %3194 = icmp ugt i64 %3192, -273
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %14, align 1
  %3196 = trunc i64 %3193 to i32
  %3197 = and i32 %3196, 255
  %3198 = tail call i32 @llvm.ctpop.i32(i32 %3197)
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = xor i8 %3200, 1
  store i8 %3201, i8* %21, align 1
  %3202 = xor i64 %3192, 16
  %3203 = xor i64 %3202, %3193
  %3204 = lshr i64 %3203, 4
  %3205 = trunc i64 %3204 to i8
  %3206 = and i8 %3205, 1
  store i8 %3206, i8* %27, align 1
  %3207 = icmp eq i64 %3193, 0
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %30, align 1
  %3209 = lshr i64 %3193, 63
  %3210 = trunc i64 %3209 to i8
  store i8 %3210, i8* %33, align 1
  %3211 = lshr i64 %3192, 63
  %3212 = xor i64 %3209, %3211
  %3213 = add nuw nsw i64 %3212, %3209
  %3214 = icmp eq i64 %3213, 2
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %39, align 1
  %3216 = add i64 %3191, 8
  store i64 %3216, i64* %3, align 8
  %3217 = add i64 %3192, 280
  %3218 = inttoptr i64 %3193 to i64*
  %3219 = load i64, i64* %3218, align 8
  store i64 %3219, i64* %RBP.i, align 8
  store i64 %3217, i64* %6, align 8
  %3220 = add i64 %3191, 9
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3217 to i64*
  %3222 = load i64, i64* %3221, align 8
  store i64 %3222, i64* %3, align 8
  %3223 = add i64 %3192, 288
  store i64 %3223, i64* %6, align 8
  ret %struct.Memory* %MEMORY.26
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
define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 272
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movl__0x3__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_subl_0x8__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_subl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_418a99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jle_.L_418a86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418a8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_418a35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 20
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
define %struct.Memory* @routine_jle_.L_418b35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_418af0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_418b21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x98__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -152
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
define %struct.Memory* @routine_jne_.L_418b1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418b35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ne i32 %6, 0
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418aac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_jge_.L_418bc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_418b80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_418bb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_418bae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418bc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418b3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_418c22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418be2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_jl_.L_418c7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x94__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418c3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jle_.L_418c95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_418cad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456f7b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456f7b_type* @G__0x456f7b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fa9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fa9_type* @G__0x456fa9 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456faf___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456faf_type* @G__0x456faf to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458351___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458351_type* @G__0x458351 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 59, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x456fb3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fb3_type* @G__0x456fb3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fc0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc0_type* @G__0x456fc0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fc2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc2_type* @G__0x456fc2 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0xa__MINUS0x31__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -49
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 10, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rcx____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_419118(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x20___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 79, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_0x8__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -136
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
define %struct.Memory* @routine_jge_.L_418db4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41910a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -144
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
define %struct.Memory* @routine_jle_.L_418dc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_418ead(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_418ead(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456fc6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc6_type* @G__0x456fc6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fc4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_418e95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3c__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -60
  %10 = icmp ult i32 %8, 60
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
  %19 = xor i32 %8, 16
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_418e55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456fd4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fd4_type* @G__0x456fd4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x14__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 20, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jle_.L_418e90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3d__MINUS0x80__rbp__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %3, -128
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 61, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418e5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418e95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fputs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_418f72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_418f72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456fd9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fd9_type* @G__0x456fd9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_jle_.L_418f5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_418f55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_418f24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418f5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418f77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418f7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_418f81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_je_.L_418fd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456fe7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fe7_type* @G__0x456fe7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl___rax__rcx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si___rax__r8_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = tail call float @llvm.trunc.f32(float %10)
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ogt float %12, 0x41E0000000000000
  %14 = fptosi float %11 to i32
  %15 = zext i32 %14 to i64
  %16 = select i1 %13, i64 2147483648, i64 %15
  store i64 %16, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456ff4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456ff4_type* @G__0x456ff4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x20__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 32, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41907e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_419079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419048(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41907e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4190f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvttss2si___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = tail call float @llvm.trunc.f32(float %10)
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ogt float %12, 0x41E0000000000000
  %14 = fptosi float %11 to i32
  %15 = zext i32 %14 to i64
  %16 = select i1 %13, i64 2147483648, i64 %15
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4190f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x3b67a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3b67a__rip__type* @G_0x3b67a__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4e__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -78
  %10 = icmp ult i32 %8, 78
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
define %struct.Memory* @routine_jl_.L_4190eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4e__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 78, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2a__MINUS0x80__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -128
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 42, i8* %9, align 1
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
define %struct.Memory* @routine_jmpq_.L_418d6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %4, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %4, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419166(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419132(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419186(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41914c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419236(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4192e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457001___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457001_type* @G__0x457001 to i64), i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457024___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457024_type* @G__0x457024 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457056___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457056_type* @G__0x457056 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x2c__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__0x457071___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457071_type* @G__0x457071 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x30__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45708c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45708c_type* @G__0x45708c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x38__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4570a7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4570a7_type* @G__0x4570a7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x3c__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4570c2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4570c2_type* @G__0x4570c2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4570f9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4570f9_type* @G__0x4570f9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457114___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457114_type* @G__0x457114 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -273
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
