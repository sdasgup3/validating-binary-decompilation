; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0ee4_type = type <{ [4 x i8] }>
%G_0xabf1c0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb9f59__rip__type = type <{ [8 x i8] }>
%G_0xb9fe4__rip__type = type <{ [8 x i8] }>
%G_0xba06a__rip__type = type <{ [4 x i8] }>
%G_0xba0ba__rip__type = type <{ [8 x i8] }>
%G_0xba0f5__rip__type = type <{ [4 x i8] }>
%G_0xba180__rip__type = type <{ [4 x i8] }>
%G_0xba246__rip__type = type <{ [4 x i8] }>
%G__0xab3948_type = type <{ [8 x i8] }>
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
@G_0xab0ee4 = local_unnamed_addr global %G_0xab0ee4_type zeroinitializer
@G_0xabf1c0 = local_unnamed_addr global %G_0xabf1c0_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb9f59__rip_ = global %G_0xb9f59__rip__type zeroinitializer
@G_0xb9fe4__rip_ = global %G_0xb9fe4__rip__type zeroinitializer
@G_0xba06a__rip_ = global %G_0xba06a__rip__type zeroinitializer
@G_0xba0ba__rip_ = global %G_0xba0ba__rip__type zeroinitializer
@G_0xba0f5__rip_ = global %G_0xba0f5__rip__type zeroinitializer
@G_0xba180__rip_ = global %G_0xba180__rip__type zeroinitializer
@G_0xba246__rip_ = global %G_0xba246__rip__type zeroinitializer
@G__0xab3948 = global %G__0xab3948_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_429170.init_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4774d0.modify_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4294c0.find_influence_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4296d0.accumulate_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_429d10.value_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42a710.segment_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42a830.print_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_compute_influence(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -6520
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 6512
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
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i359, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i458, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RCX.i455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %RCX.i455, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -36
  %66 = load i32, i32* %R8D.i, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %R9.i451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -48
  %72 = load i64, i64* %R9.i451, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %RDI.i447 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -32
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RDI.i447, align 8
  %82 = add i64 %76, -4
  %83 = add i64 %78, 7
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RSI.i359, align 8
  %87 = add i64 %76, -16
  %88 = add i64 %78, 11
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RDX.i458, align 8
  %91 = add i64 %76, -24
  %92 = add i64 %78, 15
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RCX.i455, align 8
  %95 = add i64 %78, 926
  %96 = add i64 %78, 20
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %96, i64* %99, align 8
  store i64 %98, i64* %6, align 8
  store i64 %95, i64* %3, align 8
  %call2_428de1 = tail call %struct.Memory* @sub_429170.init_influence(%struct.State* %0, i64 %95, %struct.Memory* %2)
  %100 = load i64, i64* %3, align 8
  %101 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %102 = add i32 %101, -1
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RSI.i359, align 8
  %104 = icmp eq i32 %101, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %14, align 1
  %106 = and i32 %102, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %21, align 1
  %111 = xor i32 %102, %101
  %112 = lshr i32 %111, 4
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %27, align 1
  %115 = icmp eq i32 %102, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %30, align 1
  %117 = lshr i32 %102, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %33, align 1
  %119 = lshr i32 %101, 31
  %120 = xor i32 %117, %119
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %39, align 1
  store i64 %103, i64* %RDI.i447, align 8
  %124 = add i64 %100, 321258
  %125 = add i64 %100, 17
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %call2_428df2 = tail call %struct.Memory* @sub_4774d0.modify_depth_values(%struct.State* %0, i64 %124, %struct.Memory* %call2_428de1)
  %129 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64), i64* %RCX.i455, align 8
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -32
  %132 = add i64 %129, 14
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %134, ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64)
  %136 = icmp ult i64 %134, ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64)
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %14, align 1
  %138 = trunc i64 %135 to i32
  %139 = and i32 %138, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %21, align 1
  %144 = xor i64 %134, ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64)
  %145 = xor i64 %144, %135
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %27, align 1
  %149 = icmp eq i64 %135, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %30, align 1
  %151 = lshr i64 %135, 63
  %152 = trunc i64 %151 to i8
  store i8 %152, i8* %33, align 1
  %153 = lshr i64 %134, 63
  %154 = xor i64 %153, lshr (i64 ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64), i64 63)
  %155 = xor i64 %151, %153
  %156 = add nuw nsw i64 %155, %154
  %157 = icmp eq i64 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %39, align 1
  %.v31 = select i1 %149, i64 37, i64 20
  %159 = add i64 %129, %.v31
  store i64 %159, i64* %3, align 8
  br i1 %149, label %block_.L_428e1c, label %block_428e0b

block_428e0b:                                     ; preds = %entry
  %160 = add i64 %159, 4
  store i64 %160, i64* %3, align 8
  %161 = load i64, i64* %133, align 8
  store i64 %161, i64* %RDI.i447, align 8
  %162 = add i64 %130, -4
  %163 = add i64 %159, 7
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RSI.i359, align 8
  %167 = add i64 %159, 1717
  %168 = add i64 %159, 12
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %6, align 8
  store i64 %167, i64* %3, align 8
  %call2_428e12 = tail call %struct.Memory* @sub_4294c0.find_influence_patterns(%struct.State* nonnull %0, i64 %167, %struct.Memory* %call2_428df2)
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 16
  store i64 %173, i64* %3, align 8
  br label %block_.L_428e27

block_.L_428e1c:                                  ; preds = %entry
  store i64 0, i64* %RSI.i359, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %174 = add i64 %159, 6
  store i64 %174, i64* %3, align 8
  %175 = load i64, i64* %133, align 8
  store i64 %175, i64* %RDI.i447, align 8
  %176 = add i64 %159, 1700
  %177 = add i64 %159, 11
  %178 = load i64, i64* %6, align 8
  %179 = add i64 %178, -8
  %180 = inttoptr i64 %179 to i64*
  store i64 %177, i64* %180, align 8
  store i64 %179, i64* %6, align 8
  store i64 %176, i64* %3, align 8
  %call2_428e22 = tail call %struct.Memory* @sub_4294c0.find_influence_patterns(%struct.State* nonnull %0, i64 %176, %struct.Memory* %call2_428df2)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_428e27

block_.L_428e27:                                  ; preds = %block_.L_428e1c, %block_428e0b
  %181 = phi i64 [ %.pre, %block_.L_428e1c ], [ %173, %block_428e0b ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_428e22, %block_.L_428e1c ], [ %call2_428e12, %block_428e0b ]
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i406 = getelementptr inbounds %union.anon, %union.anon* %182, i64 0, i32 0
  %183 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %184 = sub i32 1, %183
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX.i406, align 8
  %186 = icmp ugt i32 %183, 1
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = and i32 %184, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %21, align 1
  %193 = xor i32 %184, %183
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %27, align 1
  %197 = icmp eq i32 %184, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1
  %199 = lshr i32 %184, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %33, align 1
  %201 = lshr i32 %183, 31
  %202 = add nuw nsw i32 %199, %201
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %39, align 1
  %EAX.i401 = bitcast %union.anon* %182 to i32*
  store i64 %185, i64* %RDI.i447, align 8
  %205 = add i64 %181, 321193
  %206 = add i64 %181, 19
  %207 = load i64, i64* %6, align 8
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209, align 8
  store i64 %208, i64* %6, align 8
  store i64 %205, i64* %3, align 8
  %call2_428e35 = tail call %struct.Memory* @sub_4774d0.modify_depth_values(%struct.State* nonnull %0, i64 %205, %struct.Memory* %MEMORY.0)
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -32
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 4
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %211 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RCX.i455, align 8
  %216 = add i64 %215, 31012
  %217 = add i64 %212, 11
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  store i8 0, i8* %14, align 1
  %220 = and i32 %219, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %225 = icmp eq i32 %219, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %30, align 1
  %227 = lshr i32 %219, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %225, i64 32, i64 17
  %229 = add i64 %212, %.v
  %230 = add i64 %210, -6468
  %231 = add i64 %229, 10
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  br i1 %225, label %block_.L_428e5a, label %block_428e4b

block_428e4b:                                     ; preds = %block_.L_428e27
  store i32 2409, i32* %232, align 4
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, 15
  store i64 %234, i64* %3, align 8
  br label %block_.L_428e64

block_.L_428e5a:                                  ; preds = %block_.L_428e27
  store i32 2048, i32* %232, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_428e64

block_.L_428e64:                                  ; preds = %block_.L_428e5a, %block_428e4b
  %235 = phi i64 [ %.pre18, %block_.L_428e5a ], [ %234, %block_428e4b ]
  store i64 0, i64* %RAX.i406, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 1600, i64* %RCX.i455, align 8
  store i64 1600, i64* %RDX.i458, align 8
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -6464
  %238 = add i64 %236, -4864
  store i64 %238, i64* %RDI.i447, align 8
  %239 = add i64 %236, -6480
  %240 = add i64 %235, 30
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  store i64 %237, i64* %241, align 8
  %242 = load i32, i32* %EAX.i401, align 4
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %3, align 8
  store i64 %243, i64* %RSI.i359, align 8
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -6488
  %247 = load i64, i64* %RDX.i458, align 8
  %248 = add i64 %244, 9
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i64*
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -6492
  %252 = load i32, i32* %EAX.i401, align 4
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 6
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %251 to i32*
  store i32 %252, i32* %255, align 4
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, -163361
  %258 = add i64 %256, 5
  %259 = load i64, i64* %6, align 8
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261, align 8
  store i64 %260, i64* %6, align 8
  store i64 %257, i64* %3, align 8
  %262 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %call2_428e35)
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -6480
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 7
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RDX.i458, align 8
  store i64 %268, i64* %RDI.i447, align 8
  %269 = add i64 %263, -6492
  %270 = add i64 %265, 16
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RSI.i359, align 8
  %274 = add i64 %263, -6488
  %275 = add i64 %265, 23
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RDX.i458, align 8
  %278 = add i64 %265, -163366
  %279 = add i64 %265, 28
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %283 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %262)
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -52
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 7
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i32*
  store i32 21, i32* %288, align 4
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %289, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %292 = bitcast i64* %291 to double*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %294 = bitcast %union.VectorReg* %293 to i8*
  %295 = bitcast %union.VectorReg* %293 to float*
  %296 = bitcast %union.VectorReg* %293 to i32*
  %297 = getelementptr inbounds i8, i8* %294, i64 4
  %298 = bitcast i8* %297 to float*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %300 = bitcast i64* %299 to float*
  %301 = getelementptr inbounds i8, i8* %294, i64 12
  %302 = bitcast i8* %301 to float*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %304 = bitcast %union.VectorReg* %303 to i8*
  %305 = bitcast %union.VectorReg* %293 to <2 x i32>*
  %306 = bitcast i64* %299 to <2 x i32>*
  %307 = bitcast %union.VectorReg* %303 to i32*
  %308 = getelementptr inbounds i8, i8* %304, i64 4
  %309 = bitcast i8* %308 to i32*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %311 = bitcast i64* %310 to i32*
  %312 = getelementptr inbounds i8, i8* %304, i64 12
  %313 = bitcast i8* %312 to i32*
  %314 = bitcast %union.VectorReg* %303 to <2 x float>*
  %315 = bitcast i64* %310 to <2 x i32>*
  %316 = bitcast %union.VectorReg* %303 to float*
  %317 = bitcast %union.VectorReg* %303 to double*
  %318 = bitcast [32 x %union.VectorReg]* %289 to double*
  %319 = bitcast %union.VectorReg* %293 to <2 x float>*
  %320 = bitcast i8* %297 to i32*
  %321 = bitcast i64* %299 to i32*
  %322 = bitcast i8* %301 to i32*
  %323 = bitcast %union.VectorReg* %293 to double*
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_428eb9

block_.L_428eb9:                                  ; preds = %block_428ec6, %block_.L_428e64
  %324 = phi i64 [ %496, %block_428ec6 ], [ %.pre19, %block_.L_428e64 ]
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -52
  %327 = add i64 %324, 7
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, -400
  %331 = icmp ult i32 %329, 400
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %14, align 1
  %333 = and i32 %330, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333)
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %21, align 1
  %338 = xor i32 %329, 16
  %339 = xor i32 %338, %330
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %27, align 1
  %343 = icmp eq i32 %330, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %30, align 1
  %345 = lshr i32 %330, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %33, align 1
  %347 = lshr i32 %329, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %39, align 1
  %352 = icmp ne i8 %346, 0
  %353 = xor i1 %352, %350
  %.v32 = select i1 %353, i64 13, i64 134
  %354 = add i64 %324, %.v32
  store i64 %354, i64* %3, align 8
  br i1 %353, label %block_428ec6, label %block_.L_428f3f

block_428ec6:                                     ; preds = %block_.L_428eb9
  %355 = add i64 %354, ptrtoint (%G_0xba0ba__rip__type* @G_0xba0ba__rip_ to i64)
  %356 = add i64 %354, 8
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %290, align 1
  store double 0.000000e+00, double* %292, align 1
  %359 = add i64 %354, add (i64 ptrtoint (%G_0xba246__rip__type* @G_0xba246__rip_ to i64), i64 8)
  %360 = add i64 %354, 16
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %296, align 1
  store float 0.000000e+00, float* %298, align 1
  store float 0.000000e+00, float* %300, align 1
  store float 0.000000e+00, float* %302, align 1
  %363 = add i64 %325, -32
  %364 = add i64 %354, 20
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RAX.i406, align 8
  %367 = add i64 %354, 24
  store i64 %367, i64* %3, align 8
  %368 = load i32, i32* %328, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX.i455, align 8
  %370 = load <2 x i32>, <2 x i32>* %305, align 1
  %371 = load <2 x i32>, <2 x i32>* %306, align 1
  %372 = extractelement <2 x i32> %370, i32 0
  store i32 %372, i32* %307, align 1
  %373 = extractelement <2 x i32> %370, i32 1
  store i32 %373, i32* %309, align 1
  %374 = extractelement <2 x i32> %371, i32 0
  store i32 %374, i32* %311, align 1
  %375 = extractelement <2 x i32> %371, i32 1
  store i32 %375, i32* %313, align 1
  %376 = shl nsw i64 %369, 2
  %377 = add i64 %366, 10000
  %378 = add i64 %377, %376
  %379 = add i64 %354, 36
  store i64 %379, i64* %3, align 8
  %380 = load <2 x float>, <2 x float>* %314, align 1
  %381 = load <2 x i32>, <2 x i32>* %315, align 1
  %382 = inttoptr i64 %378 to float*
  %383 = load float, float* %382, align 4
  %384 = extractelement <2 x float> %380, i32 0
  %385 = fmul float %384, %383
  store float %385, float* %316, align 1
  %386 = bitcast <2 x float> %380 to <2 x i32>
  %387 = extractelement <2 x i32> %386, i32 1
  store i32 %387, i32* %309, align 1
  %388 = extractelement <2 x i32> %381, i32 0
  store i32 %388, i32* %311, align 1
  %389 = extractelement <2 x i32> %381, i32 1
  store i32 %389, i32* %313, align 1
  %390 = load <2 x float>, <2 x float>* %314, align 1
  %391 = extractelement <2 x float> %390, i32 0
  %392 = tail call float @llvm.trunc.f32(float %391)
  %393 = tail call float @llvm.fabs.f32(float %392)
  %394 = fcmp ogt float %393, 0x41E0000000000000
  %395 = fptosi float %392 to i32
  %396 = sitofp i32 %395 to double
  %397 = select i1 %394, double 0xC1E0000000000000, double %396
  %398 = bitcast i64 %358 to double
  %399 = fadd double %397, %398
  store double %399, double* %317, align 1
  %400 = tail call double @llvm.trunc.f64(double %399)
  %401 = tail call double @llvm.fabs.f64(double %400)
  %402 = fcmp ogt double %401, 0x41DFFFFFFFC00000
  %403 = fptosi double %400 to i32
  %404 = zext i32 %403 to i64
  %405 = select i1 %402, i64 2147483648, i64 %404
  store i64 %405, i64* %RDX.i458, align 8
  %406 = add i64 %354, 56
  store i64 %406, i64* %3, align 8
  %407 = load i32, i32* %328, align 4
  %408 = sext i32 %407 to i64
  store i64 %408, i64* %RAX.i406, align 8
  %409 = shl nsw i64 %408, 2
  %410 = add i64 %325, -1664
  %411 = add i64 %410, %409
  %412 = trunc i64 %405 to i32
  %413 = add i64 %354, 63
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  store i32 %412, i32* %414, align 4
  %415 = load i64, i64* %RBP.i, align 8
  %416 = add i64 %415, -32
  %417 = load i64, i64* %3, align 8
  %418 = add i64 %417, 4
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %416 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RAX.i406, align 8
  %421 = add i64 %415, -52
  %422 = add i64 %417, 8
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %RCX.i455, align 8
  %426 = shl nsw i64 %425, 2
  %427 = add i64 %420, 11600
  %428 = add i64 %427, %426
  %429 = add i64 %417, 17
  store i64 %429, i64* %3, align 8
  %430 = load <2 x float>, <2 x float>* %319, align 1
  %431 = load <2 x i32>, <2 x i32>* %306, align 1
  %432 = inttoptr i64 %428 to float*
  %433 = load float, float* %432, align 4
  %434 = extractelement <2 x float> %430, i32 0
  %435 = fmul float %434, %433
  store float %435, float* %295, align 1
  %436 = bitcast <2 x float> %430 to <2 x i32>
  %437 = extractelement <2 x i32> %436, i32 1
  store i32 %437, i32* %320, align 1
  %438 = extractelement <2 x i32> %431, i32 0
  store i32 %438, i32* %321, align 1
  %439 = extractelement <2 x i32> %431, i32 1
  store i32 %439, i32* %322, align 1
  %440 = load <2 x float>, <2 x float>* %319, align 1
  %441 = extractelement <2 x float> %440, i32 0
  %442 = tail call float @llvm.trunc.f32(float %441)
  %443 = tail call float @llvm.fabs.f32(float %442)
  %444 = fcmp ogt float %443, 0x41E0000000000000
  %445 = fptosi float %442 to i32
  %446 = sitofp i32 %445 to double
  %447 = select i1 %444, double 0xC1E0000000000000, double %446
  %448 = load double, double* %318, align 1
  %449 = fadd double %447, %448
  store double %449, double* %323, align 1
  %450 = tail call double @llvm.trunc.f64(double %449)
  %451 = tail call double @llvm.fabs.f64(double %450)
  %452 = fcmp ogt double %451, 0x41DFFFFFFFC00000
  %453 = fptosi double %450 to i32
  %454 = zext i32 %453 to i64
  %455 = select i1 %452, i64 2147483648, i64 %454
  store i64 %455, i64* %RDX.i458, align 8
  %456 = add i64 %417, 37
  store i64 %456, i64* %3, align 8
  %457 = load i32, i32* %423, align 4
  %458 = sext i32 %457 to i64
  store i64 %458, i64* %RAX.i406, align 8
  %459 = shl nsw i64 %458, 2
  %460 = add i64 %415, -3264
  %461 = add i64 %460, %459
  %462 = trunc i64 %455 to i32
  %463 = add i64 %417, 44
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %461 to i32*
  store i32 %462, i32* %464, align 4
  %465 = load i64, i64* %RBP.i, align 8
  %466 = add i64 %465, -52
  %467 = load i64, i64* %3, align 8
  %468 = add i64 %467, 3
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = add i32 %470, 1
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i406, align 8
  %473 = icmp eq i32 %470, -1
  %474 = icmp eq i32 %471, 0
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %21, align 1
  %482 = xor i32 %471, %470
  %483 = lshr i32 %482, 4
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %27, align 1
  %486 = zext i1 %474 to i8
  store i8 %486, i8* %30, align 1
  %487 = lshr i32 %471, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %33, align 1
  %489 = lshr i32 %470, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %487
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %39, align 1
  %494 = add i64 %467, 9
  store i64 %494, i64* %3, align 8
  store i32 %471, i32* %469, align 4
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, -129
  store i64 %496, i64* %3, align 8
  br label %block_.L_428eb9

block_.L_428f3f:                                  ; preds = %block_.L_428eb9
  %497 = add i64 %354, 7
  store i64 %497, i64* %3, align 8
  store i32 21, i32* %328, align 4
  %498 = bitcast [32 x %union.VectorReg]* %289 to i8*
  %499 = bitcast [32 x %union.VectorReg]* %289 to i32*
  %500 = getelementptr inbounds i8, i8* %498, i64 4
  %501 = bitcast i8* %500 to i32*
  %502 = bitcast i64* %291 to i32*
  %503 = getelementptr inbounds i8, i8* %498, i64 12
  %504 = bitcast i8* %503 to i32*
  %R8.i = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %505 = bitcast [32 x %union.VectorReg]* %289 to float*
  %506 = bitcast i8* %500 to float*
  %507 = bitcast i64* %291 to float*
  %508 = bitcast i8* %503 to float*
  %509 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %293, i64 0, i32 0, i32 0, i32 0, i64 0
  %510 = bitcast i64* %299 to double*
  %511 = bitcast [32 x %union.VectorReg]* %289 to <2 x i32>*
  %512 = bitcast i64* %291 to <2 x i32>*
  %513 = bitcast [32 x %union.VectorReg]* %289 to <2 x float>*
  %514 = bitcast i64* %6 to i64**
  %.pre20 = load i64, i64* %3, align 8
  %515 = bitcast [32 x %union.VectorReg]* %289 to <4 x i32>*
  %516 = bitcast [32 x %union.VectorReg]* %289 to <4 x i32>*
  br label %block_.L_428f46

block_.L_428f46:                                  ; preds = %block_.L_429083, %block_.L_428f3f
  %517 = phi i64 [ %.pre20, %block_.L_428f3f ], [ %911, %block_.L_429083 ]
  %MEMORY.3 = phi %struct.Memory* [ %283, %block_.L_428f3f ], [ %MEMORY.6, %block_.L_429083 ]
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -52
  %520 = add i64 %517, 7
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, -400
  %524 = icmp ult i32 %522, 400
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %14, align 1
  %526 = and i32 %523, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %21, align 1
  %531 = xor i32 %522, 16
  %532 = xor i32 %531, %523
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %27, align 1
  %536 = icmp eq i32 %523, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %30, align 1
  %538 = lshr i32 %523, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %33, align 1
  %540 = lshr i32 %522, 31
  %541 = xor i32 %538, %540
  %542 = add nuw nsw i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %39, align 1
  %545 = icmp ne i8 %539, 0
  %546 = xor i1 %545, %543
  %.v33 = select i1 %546, i64 13, i64 336
  %547 = add i64 %517, %.v33
  store i64 %547, i64* %3, align 8
  br i1 %546, label %block_428f53, label %block_.L_429096

block_428f53:                                     ; preds = %block_.L_428f46
  %548 = add i64 %547, 4
  store i64 %548, i64* %3, align 8
  %549 = load i32, i32* %521, align 4
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RAX.i406, align 8
  %551 = add nsw i64 %550, 12099168
  %552 = add i64 %547, 12
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i8*
  %554 = load i8, i8* %553, align 1
  %555 = zext i8 %554 to i64
  store i64 %555, i64* %RCX.i455, align 8
  %556 = zext i8 %554 to i32
  %557 = add nsw i32 %556, -3
  %558 = icmp ult i8 %554, 3
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %14, align 1
  %560 = and i32 %557, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %21, align 1
  %565 = xor i32 %557, %556
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %27, align 1
  %569 = icmp eq i32 %557, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %30, align 1
  %571 = lshr i32 %557, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v39 = select i1 %569, i64 304, i64 21
  %573 = add i64 %547, %.v39
  store i64 %573, i64* %3, align 8
  br i1 %569, label %block_.L_429083, label %block_428f68

block_428f68:                                     ; preds = %block_428f53
  store <4 x i32> zeroinitializer, <4 x i32>* %515, align 1
  %574 = add i64 %518, -32
  %575 = add i64 %573, 7
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %RAX.i406, align 8
  %578 = add i64 %573, 11
  store i64 %578, i64* %3, align 8
  %579 = load i32, i32* %521, align 4
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RCX.i455, align 8
  %581 = shl nsw i64 %580, 2
  %582 = add i64 %577, 3600
  %583 = add i64 %582, %581
  %584 = add i64 %573, 20
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to float*
  %586 = load float, float* %585, align 4
  %587 = fpext float %586 to double
  store double %587, double* %323, align 1
  %588 = add i64 %573, 24
  store i64 %588, i64* %3, align 8
  %589 = load double, double* %318, align 1
  %590 = fcmp uno double %587, %589
  br i1 %590, label %591, label %601

; <label>:591:                                    ; preds = %block_428f68
  %592 = fadd double %587, %589
  %593 = bitcast double %592 to i64
  %594 = and i64 %593, 9221120237041090560
  %595 = icmp eq i64 %594, 9218868437227405312
  %596 = and i64 %593, 2251799813685247
  %597 = icmp ne i64 %596, 0
  %598 = and i1 %595, %597
  br i1 %598, label %599, label %607

; <label>:599:                                    ; preds = %591
  %600 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %588, %struct.Memory* %MEMORY.3)
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i8, i8* %14, align 1
  %.pre25 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit236

; <label>:601:                                    ; preds = %block_428f68
  %602 = fcmp ogt double %587, %589
  br i1 %602, label %607, label %603

; <label>:603:                                    ; preds = %601
  %604 = fcmp olt double %587, %589
  br i1 %604, label %607, label %605

; <label>:605:                                    ; preds = %603
  %606 = fcmp oeq double %587, %589
  br i1 %606, label %607, label %611

; <label>:607:                                    ; preds = %605, %603, %601, %591
  %608 = phi i8 [ 0, %601 ], [ 0, %603 ], [ 1, %605 ], [ 1, %591 ]
  %609 = phi i8 [ 0, %601 ], [ 0, %603 ], [ 0, %605 ], [ 1, %591 ]
  %610 = phi i8 [ 0, %601 ], [ 1, %603 ], [ 0, %605 ], [ 1, %591 ]
  store i8 %608, i8* %30, align 1
  store i8 %609, i8* %21, align 1
  store i8 %610, i8* %14, align 1
  br label %611

; <label>:611:                                    ; preds = %607, %605
  %612 = phi i8 [ %608, %607 ], [ %570, %605 ]
  %613 = phi i8 [ %610, %607 ], [ %559, %605 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit236

routine_ucomisd__xmm0___xmm1.exit236:             ; preds = %611, %599
  %614 = phi i8 [ %.pre25, %599 ], [ %612, %611 ]
  %615 = phi i8 [ %.pre24, %599 ], [ %613, %611 ]
  %616 = phi i64 [ %.pre23, %599 ], [ %588, %611 ]
  %617 = phi %struct.Memory* [ %600, %599 ], [ %MEMORY.3, %611 ]
  %618 = or i8 %614, %615
  %619 = icmp ne i8 %618, 0
  %.v40 = select i1 %619, i64 115, i64 6
  %620 = add i64 %616, %.v40
  store i64 %620, i64* %3, align 8
  br i1 %619, label %block_.L_428ff3, label %block_428f86

block_428f86:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit236
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -4864
  store i64 %622, i64* %RAX.i406, align 8
  %623 = add i64 %621, -1664
  store i64 %623, i64* %R8.i, align 8
  %624 = add i64 %620, add (i64 ptrtoint (%G_0xba180__rip__type* @G_0xba180__rip_ to i64), i64 14)
  %625 = add i64 %620, 22
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  store i32 %627, i32* %499, align 1
  store float 0.000000e+00, float* %506, align 1
  store float 0.000000e+00, float* %507, align 1
  store float 0.000000e+00, float* %508, align 1
  %628 = add i64 %620, add (i64 ptrtoint (%G_0xb9fe4__rip__type* @G_0xb9fe4__rip_ to i64), i64 22)
  %629 = add i64 %620, 30
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %509, align 1
  store double 0.000000e+00, double* %510, align 1
  %632 = add i64 %621, -52
  %633 = add i64 %620, 33
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RDI.i447, align 8
  %637 = add i64 %621, -32
  %638 = add i64 %620, 37
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RCX.i455, align 8
  %641 = add i64 %620, 41
  store i64 %641, i64* %3, align 8
  %642 = load i32, i32* %634, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RDX.i458, align 8
  %644 = load <2 x i32>, <2 x i32>* %511, align 1
  %645 = load <2 x i32>, <2 x i32>* %512, align 1
  %646 = extractelement <2 x i32> %644, i32 0
  store i32 %646, i32* %307, align 1
  %647 = extractelement <2 x i32> %644, i32 1
  store i32 %647, i32* %309, align 1
  %648 = extractelement <2 x i32> %645, i32 0
  store i32 %648, i32* %311, align 1
  %649 = extractelement <2 x i32> %645, i32 1
  store i32 %649, i32* %313, align 1
  %650 = shl nsw i64 %643, 2
  %651 = add i64 %640, 3600
  %652 = add i64 %651, %650
  %653 = add i64 %620, 53
  store i64 %653, i64* %3, align 8
  %654 = load <2 x float>, <2 x float>* %314, align 1
  %655 = load <2 x i32>, <2 x i32>* %315, align 1
  %656 = inttoptr i64 %652 to float*
  %657 = load float, float* %656, align 4
  %658 = extractelement <2 x float> %654, i32 0
  %659 = fmul float %658, %657
  store float %659, float* %316, align 1
  %660 = bitcast <2 x float> %654 to <2 x i32>
  %661 = extractelement <2 x i32> %660, i32 1
  store i32 %661, i32* %309, align 1
  %662 = extractelement <2 x i32> %655, i32 0
  store i32 %662, i32* %311, align 1
  %663 = extractelement <2 x i32> %655, i32 1
  store i32 %663, i32* %313, align 1
  %664 = load <2 x float>, <2 x float>* %314, align 1
  %665 = extractelement <2 x float> %664, i32 0
  %666 = tail call float @llvm.trunc.f32(float %665)
  %667 = tail call float @llvm.fabs.f32(float %666)
  %668 = fcmp ogt float %667, 0x41E0000000000000
  %669 = fptosi float %666 to i32
  %670 = sitofp i32 %669 to double
  %671 = select i1 %668, double 0xC1E0000000000000, double %670
  %672 = bitcast i64 %631 to double
  %673 = fadd double %671, %672
  store double %673, double* %317, align 1
  %674 = tail call double @llvm.trunc.f64(double %673)
  %675 = tail call double @llvm.fabs.f64(double %674)
  %676 = fcmp ogt double %675, 0x41DFFFFFFFC00000
  %677 = fptosi double %674 to i32
  %678 = zext i32 %677 to i64
  %679 = select i1 %676, i64 2147483648, i64 %678
  store i64 %679, i64* %RSI.i359, align 8
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -32
  %682 = add i64 %620, 73
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RCX.i455, align 8
  %685 = add i64 %680, -52
  %686 = add i64 %620, 77
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RDX.i458, align 8
  %690 = shl nsw i64 %689, 2
  %691 = add i64 %684, 6800
  %692 = add i64 %691, %690
  %693 = add i64 %620, 86
  store i64 %693, i64* %3, align 8
  %694 = bitcast <2 x i32> %644 to <2 x float>
  %695 = inttoptr i64 %692 to float*
  %696 = load float, float* %695, align 4
  %697 = extractelement <2 x float> %694, i32 0
  %698 = fdiv float %697, %696
  store float %698, float* %505, align 1
  %699 = extractelement <2 x i32> %644, i32 1
  store i32 %699, i32* %501, align 1
  store i32 %648, i32* %502, align 1
  store i32 %649, i32* %504, align 1
  %700 = load <2 x float>, <2 x float>* %513, align 1
  %701 = extractelement <2 x float> %700, i32 0
  %702 = tail call float @llvm.trunc.f32(float %701)
  %703 = tail call float @llvm.fabs.f32(float %702)
  %704 = fcmp ogt float %703, 0x41E0000000000000
  %705 = fptosi float %702 to i32
  %706 = zext i32 %705 to i64
  %707 = select i1 %704, i64 2147483648, i64 %706
  store i64 %707, i64* %RDX.i458, align 8
  %708 = add i64 %680, -6468
  %709 = add i64 %620, 96
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RCX.i455, align 8
  %713 = add i64 %620, 100
  store i64 %713, i64* %3, align 8
  %714 = load i64, i64* %683, align 8
  store i64 %714, i64* %R9.i451, align 8
  %715 = load i64*, i64** %514, align 8
  %716 = load i64, i64* %RAX.i406, align 8
  %717 = add i64 %620, 104
  store i64 %717, i64* %3, align 8
  store i64 %716, i64* %715, align 8
  %718 = load i64, i64* %3, align 8
  %719 = add i64 %718, 1762
  %720 = add i64 %718, 5
  %721 = load i64, i64* %6, align 8
  %722 = add i64 %721, -8
  %723 = inttoptr i64 %722 to i64*
  store i64 %720, i64* %723, align 8
  store i64 %722, i64* %6, align 8
  store i64 %719, i64* %3, align 8
  %call2_428fee = tail call %struct.Memory* @sub_4296d0.accumulate_influence(%struct.State* nonnull %0, i64 %719, %struct.Memory* %617)
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_428ff3

block_.L_428ff3:                                  ; preds = %block_428f86, %routine_ucomisd__xmm0___xmm1.exit236
  %724 = phi i64 [ %620, %routine_ucomisd__xmm0___xmm1.exit236 ], [ %.pre26, %block_428f86 ]
  %MEMORY.4 = phi %struct.Memory* [ %617, %routine_ucomisd__xmm0___xmm1.exit236 ], [ %call2_428fee, %block_428f86 ]
  store <4 x i32> zeroinitializer, <4 x i32>* %516, align 1
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -32
  %727 = add i64 %724, 7
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RAX.i406, align 8
  %730 = add i64 %725, -52
  %731 = add i64 %724, 11
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RCX.i455, align 8
  %735 = shl nsw i64 %734, 2
  %736 = add i64 %729, 5200
  %737 = add i64 %736, %735
  %738 = add i64 %724, 20
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to float*
  %740 = load float, float* %739, align 4
  %741 = fpext float %740 to double
  store double %741, double* %323, align 1
  %742 = add i64 %724, 24
  store i64 %742, i64* %3, align 8
  %743 = load double, double* %318, align 1
  %744 = fcmp uno double %741, %743
  br i1 %744, label %745, label %755

; <label>:745:                                    ; preds = %block_.L_428ff3
  %746 = fadd double %741, %743
  %747 = bitcast double %746 to i64
  %748 = and i64 %747, 9221120237041090560
  %749 = icmp eq i64 %748, 9218868437227405312
  %750 = and i64 %747, 2251799813685247
  %751 = icmp ne i64 %750, 0
  %752 = and i1 %749, %751
  br i1 %752, label %753, label %761

; <label>:753:                                    ; preds = %745
  %754 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %742, %struct.Memory* %MEMORY.4)
  %.pre27 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:755:                                    ; preds = %block_.L_428ff3
  %756 = fcmp ogt double %741, %743
  br i1 %756, label %761, label %757

; <label>:757:                                    ; preds = %755
  %758 = fcmp olt double %741, %743
  br i1 %758, label %761, label %759

; <label>:759:                                    ; preds = %757
  %760 = fcmp oeq double %741, %743
  br i1 %760, label %761, label %765

; <label>:761:                                    ; preds = %759, %757, %755, %745
  %762 = phi i8 [ 0, %755 ], [ 0, %757 ], [ 1, %759 ], [ 1, %745 ]
  %763 = phi i8 [ 0, %755 ], [ 0, %757 ], [ 0, %759 ], [ 1, %745 ]
  %764 = phi i8 [ 0, %755 ], [ 1, %757 ], [ 0, %759 ], [ 1, %745 ]
  store i8 %762, i8* %30, align 1
  store i8 %763, i8* %21, align 1
  store i8 %764, i8* %14, align 1
  br label %765

; <label>:765:                                    ; preds = %761, %759
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %765, %753
  %766 = phi i64 [ %.pre27, %753 ], [ %742, %765 ]
  %767 = phi %struct.Memory* [ %754, %753 ], [ %MEMORY.4, %765 ]
  %768 = add i64 %766, 115
  %769 = add i64 %766, 6
  %770 = load i8, i8* %14, align 1
  %771 = load i8, i8* %30, align 1
  %772 = or i8 %771, %770
  %773 = icmp ne i8 %772, 0
  %774 = select i1 %773, i64 %768, i64 %769
  store i64 %774, i64* %3, align 8
  br i1 %773, label %block_.L_42907e, label %block_429011

block_429011:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -6464
  store i64 %776, i64* %RAX.i406, align 8
  %777 = add i64 %775, -3264
  store i64 %777, i64* %R8.i, align 8
  %778 = add i64 %774, add (i64 ptrtoint (%G_0xba0f5__rip__type* @G_0xba0f5__rip_ to i64), i64 14)
  %779 = add i64 %774, 22
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  store i32 %781, i32* %499, align 1
  store float 0.000000e+00, float* %506, align 1
  store float 0.000000e+00, float* %507, align 1
  store float 0.000000e+00, float* %508, align 1
  %782 = add i64 %774, add (i64 ptrtoint (%G_0xb9f59__rip__type* @G_0xb9f59__rip_ to i64), i64 22)
  %783 = add i64 %774, 30
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %509, align 1
  store double 0.000000e+00, double* %510, align 1
  %786 = add i64 %775, -52
  %787 = add i64 %774, 33
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RDI.i447, align 8
  %791 = add i64 %775, -32
  %792 = add i64 %774, 37
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i64*
  %794 = load i64, i64* %793, align 8
  store i64 %794, i64* %RCX.i455, align 8
  %795 = add i64 %774, 41
  store i64 %795, i64* %3, align 8
  %796 = load i32, i32* %788, align 4
  %797 = sext i32 %796 to i64
  store i64 %797, i64* %RDX.i458, align 8
  %798 = load <2 x i32>, <2 x i32>* %511, align 1
  %799 = load <2 x i32>, <2 x i32>* %512, align 1
  %800 = extractelement <2 x i32> %798, i32 0
  store i32 %800, i32* %307, align 1
  %801 = extractelement <2 x i32> %798, i32 1
  store i32 %801, i32* %309, align 1
  %802 = extractelement <2 x i32> %799, i32 0
  store i32 %802, i32* %311, align 1
  %803 = extractelement <2 x i32> %799, i32 1
  store i32 %803, i32* %313, align 1
  %804 = shl nsw i64 %797, 2
  %805 = add i64 %794, 5200
  %806 = add i64 %805, %804
  %807 = add i64 %774, 53
  store i64 %807, i64* %3, align 8
  %808 = load <2 x float>, <2 x float>* %314, align 1
  %809 = load <2 x i32>, <2 x i32>* %315, align 1
  %810 = inttoptr i64 %806 to float*
  %811 = load float, float* %810, align 4
  %812 = extractelement <2 x float> %808, i32 0
  %813 = fmul float %812, %811
  store float %813, float* %316, align 1
  %814 = bitcast <2 x float> %808 to <2 x i32>
  %815 = extractelement <2 x i32> %814, i32 1
  store i32 %815, i32* %309, align 1
  %816 = extractelement <2 x i32> %809, i32 0
  store i32 %816, i32* %311, align 1
  %817 = extractelement <2 x i32> %809, i32 1
  store i32 %817, i32* %313, align 1
  %818 = load <2 x float>, <2 x float>* %314, align 1
  %819 = extractelement <2 x float> %818, i32 0
  %820 = tail call float @llvm.trunc.f32(float %819)
  %821 = tail call float @llvm.fabs.f32(float %820)
  %822 = fcmp ogt float %821, 0x41E0000000000000
  %823 = fptosi float %820 to i32
  %824 = sitofp i32 %823 to double
  %825 = select i1 %822, double 0xC1E0000000000000, double %824
  %826 = bitcast i64 %785 to double
  %827 = fadd double %825, %826
  store double %827, double* %317, align 1
  %828 = tail call double @llvm.trunc.f64(double %827)
  %829 = tail call double @llvm.fabs.f64(double %828)
  %830 = fcmp ogt double %829, 0x41DFFFFFFFC00000
  %831 = fptosi double %828 to i32
  %832 = zext i32 %831 to i64
  %833 = select i1 %830, i64 2147483648, i64 %832
  store i64 %833, i64* %RSI.i359, align 8
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -32
  %836 = add i64 %774, 73
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %RCX.i455, align 8
  %839 = add i64 %834, -52
  %840 = add i64 %774, 77
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = sext i32 %842 to i64
  store i64 %843, i64* %RDX.i458, align 8
  %844 = shl nsw i64 %843, 2
  %845 = add i64 %838, 8400
  %846 = add i64 %845, %844
  %847 = add i64 %774, 86
  store i64 %847, i64* %3, align 8
  %848 = bitcast <2 x i32> %798 to <2 x float>
  %849 = inttoptr i64 %846 to float*
  %850 = load float, float* %849, align 4
  %851 = extractelement <2 x float> %848, i32 0
  %852 = fdiv float %851, %850
  store float %852, float* %505, align 1
  %853 = extractelement <2 x i32> %798, i32 1
  store i32 %853, i32* %501, align 1
  store i32 %802, i32* %502, align 1
  store i32 %803, i32* %504, align 1
  %854 = load <2 x float>, <2 x float>* %513, align 1
  %855 = extractelement <2 x float> %854, i32 0
  %856 = tail call float @llvm.trunc.f32(float %855)
  %857 = tail call float @llvm.fabs.f32(float %856)
  %858 = fcmp ogt float %857, 0x41E0000000000000
  %859 = fptosi float %856 to i32
  %860 = zext i32 %859 to i64
  %861 = select i1 %858, i64 2147483648, i64 %860
  store i64 %861, i64* %RDX.i458, align 8
  %862 = add i64 %834, -6468
  %863 = add i64 %774, 96
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RCX.i455, align 8
  %867 = add i64 %774, 100
  store i64 %867, i64* %3, align 8
  %868 = load i64, i64* %837, align 8
  store i64 %868, i64* %R9.i451, align 8
  %869 = load i64*, i64** %514, align 8
  %870 = load i64, i64* %RAX.i406, align 8
  %871 = add i64 %774, 104
  store i64 %871, i64* %3, align 8
  store i64 %870, i64* %869, align 8
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, 1623
  %874 = add i64 %872, 5
  %875 = load i64, i64* %6, align 8
  %876 = add i64 %875, -8
  %877 = inttoptr i64 %876 to i64*
  store i64 %874, i64* %877, align 8
  store i64 %876, i64* %6, align 8
  store i64 %873, i64* %3, align 8
  %call2_429079 = tail call %struct.Memory* @sub_4296d0.accumulate_influence(%struct.State* nonnull %0, i64 %873, %struct.Memory* %767)
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_42907e

block_.L_42907e:                                  ; preds = %block_429011, %routine_ucomisd__xmm0___xmm1.exit
  %878 = phi i64 [ %768, %routine_ucomisd__xmm0___xmm1.exit ], [ %.pre28, %block_429011 ]
  %MEMORY.5 = phi %struct.Memory* [ %767, %routine_ucomisd__xmm0___xmm1.exit ], [ %call2_429079, %block_429011 ]
  %879 = add i64 %878, 5
  store i64 %879, i64* %3, align 8
  %.pre29 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429083

block_.L_429083:                                  ; preds = %block_.L_42907e, %block_428f53
  %880 = phi i64 [ %518, %block_428f53 ], [ %.pre29, %block_.L_42907e ]
  %881 = phi i64 [ %573, %block_428f53 ], [ %879, %block_.L_42907e ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.3, %block_428f53 ], [ %MEMORY.5, %block_.L_42907e ]
  %882 = add i64 %880, -52
  %883 = add i64 %881, 8
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = add i32 %885, 1
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RAX.i406, align 8
  %888 = icmp eq i32 %885, -1
  %889 = icmp eq i32 %886, 0
  %890 = or i1 %888, %889
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %14, align 1
  %892 = and i32 %886, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %21, align 1
  %897 = xor i32 %886, %885
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %27, align 1
  %901 = zext i1 %889 to i8
  store i8 %901, i8* %30, align 1
  %902 = lshr i32 %886, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %33, align 1
  %904 = lshr i32 %885, 31
  %905 = xor i32 %902, %904
  %906 = add nuw nsw i32 %905, %902
  %907 = icmp eq i32 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %39, align 1
  %909 = add i64 %881, 14
  store i64 %909, i64* %3, align 8
  store i32 %886, i32* %884, align 4
  %910 = load i64, i64* %3, align 8
  %911 = add i64 %910, -331
  store i64 %911, i64* %3, align 8
  br label %block_.L_428f46

block_.L_429096:                                  ; preds = %block_.L_428f46
  %912 = add i64 %547, 7
  store i64 %912, i64* %3, align 8
  store i32 21, i32* %521, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_42909d

block_.L_42909d:                                  ; preds = %block_4290aa, %block_.L_429096
  %913 = phi i64 [ %1061, %block_4290aa ], [ %.pre21, %block_.L_429096 ]
  %914 = load i64, i64* %RBP.i, align 8
  %915 = add i64 %914, -52
  %916 = add i64 %913, 7
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = add i32 %918, -400
  %920 = icmp ult i32 %918, 400
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %919, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %918, 16
  %928 = xor i32 %927, %919
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %27, align 1
  %932 = icmp eq i32 %919, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %30, align 1
  %934 = lshr i32 %919, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %33, align 1
  %936 = lshr i32 %918, 31
  %937 = xor i32 %934, %936
  %938 = add nuw nsw i32 %937, %936
  %939 = icmp eq i32 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %39, align 1
  %941 = icmp ne i8 %935, 0
  %942 = xor i1 %941, %939
  %.v34 = select i1 %942, i64 13, i64 103
  %943 = add i64 %913, %.v34
  store i64 %943, i64* %3, align 8
  br i1 %942, label %block_4290aa, label %block_.L_429104

block_4290aa:                                     ; preds = %block_.L_42909d
  %944 = add i64 %943, ptrtoint (%G_0xba06a__rip__type* @G_0xba06a__rip_ to i64)
  %945 = add i64 %943, 8
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  store i32 %947, i32* %499, align 1
  store float 0.000000e+00, float* %506, align 1
  store float 0.000000e+00, float* %507, align 1
  store float 0.000000e+00, float* %508, align 1
  %948 = add i64 %943, 12
  store i64 %948, i64* %3, align 8
  %949 = load i32, i32* %917, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RAX.i406, align 8
  %951 = shl nsw i64 %950, 2
  %952 = add i64 %914, -4864
  %953 = add i64 %952, %951
  %954 = add i64 %943, 21
  store i64 %954, i64* %3, align 8
  %955 = load <2 x i32>, <2 x i32>* %305, align 1
  %956 = load <2 x i32>, <2 x i32>* %306, align 1
  %957 = inttoptr i64 %953 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = sitofp i32 %958 to float
  store float %959, float* %295, align 1
  %960 = extractelement <2 x i32> %955, i32 1
  store i32 %960, i32* %320, align 1
  %961 = extractelement <2 x i32> %956, i32 0
  store i32 %961, i32* %321, align 1
  %962 = extractelement <2 x i32> %956, i32 1
  store i32 %962, i32* %322, align 1
  %963 = load <2 x float>, <2 x float>* %319, align 1
  %964 = load <2 x i32>, <2 x i32>* %306, align 1
  %965 = load <2 x float>, <2 x float>* %513, align 1
  %966 = extractelement <2 x float> %963, i32 0
  %967 = extractelement <2 x float> %965, i32 0
  %968 = fdiv float %966, %967
  store float %968, float* %295, align 1
  %969 = bitcast <2 x float> %963 to <2 x i32>
  %970 = extractelement <2 x i32> %969, i32 1
  store i32 %970, i32* %320, align 1
  %971 = extractelement <2 x i32> %964, i32 0
  store i32 %971, i32* %321, align 1
  %972 = extractelement <2 x i32> %964, i32 1
  store i32 %972, i32* %322, align 1
  %973 = add i64 %914, -32
  %974 = add i64 %943, 29
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RAX.i406, align 8
  %977 = add i64 %943, 33
  store i64 %977, i64* %3, align 8
  %978 = load i32, i32* %917, align 4
  %979 = sext i32 %978 to i64
  store i64 %979, i64* %RCX.i455, align 8
  %980 = shl nsw i64 %979, 2
  %981 = add i64 %976, 400
  %982 = add i64 %981, %980
  %983 = add i64 %943, 42
  store i64 %983, i64* %3, align 8
  %984 = load <2 x float>, <2 x float>* %319, align 1
  %985 = extractelement <2 x float> %984, i32 0
  %986 = inttoptr i64 %982 to float*
  store float %985, float* %986, align 4
  %987 = load i64, i64* %RBP.i, align 8
  %988 = add i64 %987, -52
  %989 = load i64, i64* %3, align 8
  %990 = add i64 %989, 4
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %988 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = sext i32 %992 to i64
  store i64 %993, i64* %RAX.i406, align 8
  %994 = shl nsw i64 %993, 2
  %995 = add i64 %987, -6464
  %996 = add i64 %995, %994
  %997 = add i64 %989, 13
  store i64 %997, i64* %3, align 8
  %998 = load <2 x i32>, <2 x i32>* %305, align 1
  %999 = load <2 x i32>, <2 x i32>* %306, align 1
  %1000 = inttoptr i64 %996 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = sitofp i32 %1001 to float
  store float %1002, float* %295, align 1
  %1003 = extractelement <2 x i32> %998, i32 1
  store i32 %1003, i32* %320, align 1
  %1004 = extractelement <2 x i32> %999, i32 0
  store i32 %1004, i32* %321, align 1
  %1005 = extractelement <2 x i32> %999, i32 1
  store i32 %1005, i32* %322, align 1
  %1006 = load <2 x float>, <2 x float>* %319, align 1
  %1007 = load <2 x i32>, <2 x i32>* %306, align 1
  %1008 = load <2 x float>, <2 x float>* %513, align 1
  %1009 = extractelement <2 x float> %1006, i32 0
  %1010 = extractelement <2 x float> %1008, i32 0
  %1011 = fdiv float %1009, %1010
  store float %1011, float* %295, align 1
  %1012 = bitcast <2 x float> %1006 to <2 x i32>
  %1013 = extractelement <2 x i32> %1012, i32 1
  store i32 %1013, i32* %320, align 1
  %1014 = extractelement <2 x i32> %1007, i32 0
  store i32 %1014, i32* %321, align 1
  %1015 = extractelement <2 x i32> %1007, i32 1
  store i32 %1015, i32* %322, align 1
  %1016 = add i64 %987, -32
  %1017 = add i64 %989, 21
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %RAX.i406, align 8
  %1020 = add i64 %989, 25
  store i64 %1020, i64* %3, align 8
  %1021 = load i32, i32* %991, align 4
  %1022 = sext i32 %1021 to i64
  store i64 %1022, i64* %RCX.i455, align 8
  %1023 = shl nsw i64 %1022, 2
  %1024 = add i64 %1019, 2000
  %1025 = add i64 %1024, %1023
  %1026 = add i64 %989, 34
  store i64 %1026, i64* %3, align 8
  %1027 = load <2 x float>, <2 x float>* %319, align 1
  %1028 = extractelement <2 x float> %1027, i32 0
  %1029 = inttoptr i64 %1025 to float*
  store float %1028, float* %1029, align 4
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -52
  %1032 = load i64, i64* %3, align 8
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1031 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = add i32 %1035, 1
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RAX.i406, align 8
  %1038 = icmp eq i32 %1035, -1
  %1039 = icmp eq i32 %1036, 0
  %1040 = or i1 %1038, %1039
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %14, align 1
  %1042 = and i32 %1036, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %21, align 1
  %1047 = xor i32 %1036, %1035
  %1048 = lshr i32 %1047, 4
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %27, align 1
  %1051 = zext i1 %1039 to i8
  store i8 %1051, i8* %30, align 1
  %1052 = lshr i32 %1036, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %33, align 1
  %1054 = lshr i32 %1035, 31
  %1055 = xor i32 %1052, %1054
  %1056 = add nuw nsw i32 %1055, %1052
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %39, align 1
  %1059 = add i64 %1032, 9
  store i64 %1059, i64* %3, align 8
  store i32 %1036, i32* %1034, align 4
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, -98
  store i64 %1061, i64* %3, align 8
  br label %block_.L_42909d

block_.L_429104:                                  ; preds = %block_.L_42909d
  %1062 = add i64 %914, -32
  %1063 = add i64 %943, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RDI.i447, align 8
  %1066 = add i64 %943, 3084
  %1067 = add i64 %943, 9
  %1068 = load i64, i64* %6, align 8
  %1069 = add i64 %1068, -8
  %1070 = inttoptr i64 %1069 to i64*
  store i64 %1067, i64* %1070, align 8
  store i64 %1069, i64* %6, align 8
  store i64 %1066, i64* %3, align 8
  %call2_429108 = tail call %struct.Memory* @sub_429d10.value_territory(%struct.State* nonnull %0, i64 %1066, %struct.Memory* %MEMORY.3)
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -32
  %1073 = load i64, i64* %3, align 8
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1072 to i64*
  %1076 = load i64, i64* %1075, align 8
  store i64 %1076, i64* %RDI.i447, align 8
  %1077 = add i64 %1073, 5635
  %1078 = add i64 %1073, 9
  %1079 = load i64, i64* %6, align 8
  %1080 = add i64 %1079, -8
  %1081 = inttoptr i64 %1080 to i64*
  store i64 %1078, i64* %1081, align 8
  store i64 %1080, i64* %6, align 8
  store i64 %1077, i64* %3, align 8
  %call2_429111 = tail call %struct.Memory* @sub_42a710.segment_influence(%struct.State* nonnull %0, i64 %1077, %struct.Memory* %call2_429108)
  %1082 = load i64, i64* %RBP.i, align 8
  %1083 = add i64 %1082, -36
  %1084 = load i64, i64* %3, align 8
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1083 to i32*
  %1087 = load i32, i32* %1086, align 4
  store i8 0, i8* %14, align 1
  %1088 = and i32 %1087, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1093 = icmp eq i32 %1087, 0
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %30, align 1
  %1095 = lshr i32 %1087, 31
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v35 = select i1 %1093, i64 10, i64 29
  %1097 = add i64 %1084, %.v35
  store i64 %1097, i64* %3, align 8
  br i1 %1093, label %block_429120, label %block_.L_429133

block_429120:                                     ; preds = %block_.L_429104
  %1098 = load i32, i32* bitcast (%G_0xab0ee4_type* @G_0xab0ee4 to i32*), align 8
  %1099 = and i32 %1098, 8
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i406, align 8
  store i8 0, i8* %14, align 1
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1102 = trunc i32 %1101 to i8
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit30 = lshr exact i32 %1099, 3
  %1104 = trunc i32 %.lobit30 to i8
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1106 = icmp eq i8 %1105, 0
  %.v38 = select i1 %1106, i64 49, i64 19
  %1107 = add i64 %1097, %.v38
  store i64 %1107, i64* %3, align 8
  br i1 %1106, label %block_.L_429151, label %block_.L_429133

block_.L_429133:                                  ; preds = %block_.L_429104, %block_429120
  %1108 = phi i64 [ %1107, %block_429120 ], [ %1097, %block_.L_429104 ]
  %1109 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1110 = and i32 %1109, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1115 = icmp eq i32 %1109, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %30, align 1
  %1117 = lshr i32 %1109, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v36 = select i1 %1115, i64 43, i64 14
  %1119 = add i64 %1108, %.v36
  store i64 %1119, i64* %3, align 8
  br i1 %1115, label %block_.L_42915e, label %block_429141

block_429141:                                     ; preds = %block_.L_429133
  %1120 = add i64 %1119, 3
  store i64 %1120, i64* %3, align 8
  %1121 = load i32, i32* %1086, align 4
  %1122 = zext i32 %1121 to i64
  store i64 %1122, i64* %RAX.i406, align 8
  %1123 = sub i32 %1121, %1109
  %1124 = icmp ult i32 %1121, %1109
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %14, align 1
  %1126 = and i32 %1123, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  %1131 = xor i32 %1109, %1121
  %1132 = xor i32 %1131, %1123
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %27, align 1
  %1136 = icmp eq i32 %1123, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %30, align 1
  %1138 = lshr i32 %1123, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %33, align 1
  %1140 = lshr i32 %1121, 31
  %1141 = xor i32 %1117, %1140
  %1142 = xor i32 %1138, %1140
  %1143 = add nuw nsw i32 %1142, %1141
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %39, align 1
  %.v37 = select i1 %1136, i64 16, i64 29
  %1146 = add i64 %1119, %.v37
  store i64 %1146, i64* %3, align 8
  br i1 %1136, label %block_.L_429151, label %block_.L_42915e

block_.L_429151:                                  ; preds = %block_429141, %block_429120
  %1147 = phi i64 [ %1146, %block_429141 ], [ %1107, %block_429120 ]
  %1148 = add i64 %1082, -32
  %1149 = add i64 %1147, 4
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RDI.i447, align 8
  %1152 = add i64 %1082, -48
  %1153 = add i64 %1147, 8
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i64*
  %1155 = load i64, i64* %1154, align 8
  store i64 %1155, i64* %RSI.i359, align 8
  %1156 = add i64 %1147, 5855
  %1157 = add i64 %1147, 13
  %1158 = load i64, i64* %6, align 8
  %1159 = add i64 %1158, -8
  %1160 = inttoptr i64 %1159 to i64*
  store i64 %1157, i64* %1160, align 8
  store i64 %1159, i64* %6, align 8
  store i64 %1156, i64* %3, align 8
  %call2_429159 = tail call %struct.Memory* @sub_42a830.print_influence(%struct.State* nonnull %0, i64 %1156, %struct.Memory* %call2_429111)
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_42915e

block_.L_42915e:                                  ; preds = %block_429141, %block_.L_429151, %block_.L_429133
  %1161 = phi i64 [ %1119, %block_.L_429133 ], [ %1146, %block_429141 ], [ %.pre22, %block_.L_429151 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_429111, %block_.L_429133 ], [ %call2_429111, %block_429141 ], [ %call2_429159, %block_.L_429151 ]
  %1162 = load i64, i64* %6, align 8
  %1163 = add i64 %1162, 6512
  store i64 %1163, i64* %6, align 8
  %1164 = icmp ugt i64 %1162, -6513
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %14, align 1
  %1166 = trunc i64 %1163 to i32
  %1167 = and i32 %1166, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  %1172 = xor i64 %1162, 16
  %1173 = xor i64 %1172, %1163
  %1174 = lshr i64 %1173, 4
  %1175 = trunc i64 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %27, align 1
  %1177 = icmp eq i64 %1163, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %30, align 1
  %1179 = lshr i64 %1163, 63
  %1180 = trunc i64 %1179 to i8
  store i8 %1180, i8* %33, align 1
  %1181 = lshr i64 %1162, 63
  %1182 = xor i64 %1179, %1181
  %1183 = add nuw nsw i64 %1182, %1179
  %1184 = icmp eq i64 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %39, align 1
  %1186 = add i64 %1161, 8
  store i64 %1186, i64* %3, align 8
  %1187 = add i64 %1162, 6520
  %1188 = inttoptr i64 %1163 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RBP.i, align 8
  store i64 %1187, i64* %6, align 8
  %1190 = add i64 %1161, 9
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1187 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %3, align 8
  %1193 = add i64 %1162, 6528
  store i64 %1193, i64* %6, align 8
  ret %struct.Memory* %MEMORY.10
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
define %struct.Memory* @routine_subq__0x1970___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -6512
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 6512
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.init_influence(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb54ce4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.modify_depth_values(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xab3948___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab3948_type* @G__0xab3948 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %9, %5
  %11 = icmp ult i64 %9, %5
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %5
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %9, 63
  %34 = lshr i64 %5, 63
  %35 = xor i64 %33, %34
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_428e1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.find_influence_patterns(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_428e27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xb54ce4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x7924__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 31012
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
define %struct.Memory* @routine_je_.L_428e5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x969__MINUS0x1944__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6468
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2409, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_428e64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x800__MINUS0x1944__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6468
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2048, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x640___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1940__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1300__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x1950__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6480
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1958__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6488
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x195c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1950__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x195c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1958__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_428f3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xba0ba__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xba0ba__rip__type* @G_0xba0ba__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xba246__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xba246__rip__type* @G_0xba246__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x2710__rax__rcx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 10000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__edx___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x680__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1664
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x2d50__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 11600
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__edx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xcc0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3264
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_428eb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429096(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429083(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0xe10__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 3600
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to float*
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_428ff3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1300__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x680__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xba180__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xba180__rip__type* @G_0xba180__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xb9fe4__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb9fe4__rip__type* @G_0xb9fe4__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0xe10__rcx__rdx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 3600
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__esi___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_0x1a90__rcx__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 6800
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fdiv float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1944__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6468
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.accumulate_influence(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0x1450__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 5200
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to float*
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42907e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1940__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xcc0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xba0f5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xba0f5__rip__type* @G_0xba0f5__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xb9f59__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb9f59__rip__type* @G_0xb9f59__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x1450__rcx__rdx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 5200
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_0x20d0__rcx__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 8400
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fdiv float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429083(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429088(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_428f46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429104(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xba06a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xba06a__rip__type* @G_0xba06a__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x1300__rbp__rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -4864
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to float
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %16, i32 0
  %25 = bitcast i64* %14 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fdiv float %15, %16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x190__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 400
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x1940__rbp__rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -6464
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to float
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %16, i32 0
  %25 = bitcast i64* %14 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x7d0__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 2000
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42909d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.value_territory(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.segment_influence(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jne_.L_429133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ee4_type* @G_0xab0ee4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_429151(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xabf1c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42915e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_0xabf1c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42915e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.print_influence(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1970___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6512
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -6513
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
