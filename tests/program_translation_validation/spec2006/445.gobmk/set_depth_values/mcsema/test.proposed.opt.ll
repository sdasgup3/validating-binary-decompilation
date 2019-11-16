; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x69d84__rip__type = type <{ [8 x i8] }>
%G_0x69dbd__rip__type = type <{ [8 x i8] }>
%G_0x7afde0_type = type <{ [4 x i8] }>
%G_0xab0f20_type = type <{ [4 x i8] }>
%G_0xafd960_type = type <{ [4 x i8] }>
%G_0xafdfb4_type = type <{ [4 x i8] }>
%G_0xb01170_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb4a018_type = type <{ [4 x i8] }>
%G_0xb4bd18_type = type <{ [4 x i8] }>
%G_0xb4bd1c_type = type <{ [4 x i8] }>
%G_0xb54ce0_type = type <{ [4 x i8] }>
%G_0xb54ce8_type = type <{ [4 x i8] }>
%G_0xb63088_type = type <{ [4 x i8] }>
%G_0xb6308c_type = type <{ [4 x i8] }>
%G_0xb6e910_type = type <{ [4 x i8] }>
%G_0xb6eec8_type = type <{ [4 x i8] }>
%G_0xb6eecc_type = type <{ [4 x i8] }>
%G_0xb72710_type = type <{ [4 x i8] }>
%G_0xb8a008_type = type <{ [4 x i8] }>
%G_0xb8a00c_type = type <{ [4 x i8] }>
%G_0xb8af1c_type = type <{ [4 x i8] }>
%G_0xb8af24_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G_0xb9a090_type = type <{ [4 x i8] }>
%G_0xb9d8e0_type = type <{ [4 x i8] }>
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
@G_0x69d84__rip_ = global %G_0x69d84__rip__type zeroinitializer
@G_0x69dbd__rip_ = global %G_0x69dbd__rip__type zeroinitializer
@G_0x7afde0 = local_unnamed_addr global %G_0x7afde0_type zeroinitializer
@G_0xab0f20 = local_unnamed_addr global %G_0xab0f20_type zeroinitializer
@G_0xafd960 = local_unnamed_addr global %G_0xafd960_type zeroinitializer
@G_0xafdfb4 = local_unnamed_addr global %G_0xafdfb4_type zeroinitializer
@G_0xb01170 = local_unnamed_addr global %G_0xb01170_type zeroinitializer
@G_0xb060b8 = local_unnamed_addr global %G_0xb060b8_type zeroinitializer
@G_0xb4a018 = local_unnamed_addr global %G_0xb4a018_type zeroinitializer
@G_0xb4bd18 = local_unnamed_addr global %G_0xb4bd18_type zeroinitializer
@G_0xb4bd1c = local_unnamed_addr global %G_0xb4bd1c_type zeroinitializer
@G_0xb54ce0 = local_unnamed_addr global %G_0xb54ce0_type zeroinitializer
@G_0xb54ce8 = local_unnamed_addr global %G_0xb54ce8_type zeroinitializer
@G_0xb63088 = local_unnamed_addr global %G_0xb63088_type zeroinitializer
@G_0xb6308c = local_unnamed_addr global %G_0xb6308c_type zeroinitializer
@G_0xb6e910 = local_unnamed_addr global %G_0xb6e910_type zeroinitializer
@G_0xb6eec8 = local_unnamed_addr global %G_0xb6eec8_type zeroinitializer
@G_0xb6eecc = local_unnamed_addr global %G_0xb6eecc_type zeroinitializer
@G_0xb72710 = local_unnamed_addr global %G_0xb72710_type zeroinitializer
@G_0xb8a008 = local_unnamed_addr global %G_0xb8a008_type zeroinitializer
@G_0xb8a00c = local_unnamed_addr global %G_0xb8a00c_type zeroinitializer
@G_0xb8af1c = local_unnamed_addr global %G_0xb8af1c_type zeroinitializer
@G_0xb8af24 = local_unnamed_addr global %G_0xb8af24_type zeroinitializer
@G_0xb8af28 = local_unnamed_addr global %G_0xb8af28_type zeroinitializer
@G_0xb8b850 = local_unnamed_addr global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G_0xb9a090 = local_unnamed_addr global %G_0xb9a090_type zeroinitializer
@G_0xb9d8e0 = local_unnamed_addr global %G_0xb9d8e0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @set_depth_values(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, -10
  %52 = icmp ult i32 %50, 10
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %14, align 1
  %54 = and i32 %51, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  %59 = xor i32 %51, %50
  %60 = lshr i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %27, align 1
  %63 = icmp eq i32 %51, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %30, align 1
  %65 = lshr i32 %51, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %33, align 1
  %67 = lshr i32 %50, 31
  %68 = xor i32 %65, %67
  %69 = add nuw nsw i32 %68, %67
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %39, align 1
  %72 = icmp ne i8 %66, 0
  %73 = xor i1 %72, %70
  %.v85 = select i1 %73, i64 24, i64 10
  %74 = add i64 %47, %.v85
  store i64 %74, i64* %3, align 8
  br i1 %73, label %block_.L_478cd3, label %block_478cc5

block_478cc5:                                     ; preds = %entry
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i549 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %76 = add i64 %74, 3
  store i64 %76, i64* %3, align 8
  %77 = load i32, i32* %49, align 4
  %78 = add i32 %77, -10
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RAX.i549, align 8
  %80 = icmp ult i32 %77, 10
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %14, align 1
  %82 = and i32 %78, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %21, align 1
  %87 = xor i32 %78, %77
  %88 = lshr i32 %87, 4
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  store i8 %90, i8* %27, align 1
  %91 = icmp eq i32 %78, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %30, align 1
  %93 = lshr i32 %78, 31
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %33, align 1
  %95 = lshr i32 %77, 31
  %96 = xor i32 %93, %95
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %39, align 1
  %100 = add i64 %45, -8
  %101 = add i64 %74, 9
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 %78, i32* %102, align 4
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 43
  br label %block_.L_478cf9

block_.L_478cd3:                                  ; preds = %entry
  %105 = add i64 %74, 4
  store i64 %105, i64* %3, align 8
  %106 = load i32, i32* %49, align 4
  %107 = add i32 %106, -8
  %108 = icmp ult i32 %106, 8
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %14, align 1
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1
  %115 = xor i32 %107, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %27, align 1
  %119 = icmp eq i32 %107, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %30, align 1
  %121 = lshr i32 %107, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %33, align 1
  %123 = lshr i32 %106, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %39, align 1
  %128 = icmp ne i8 %122, 0
  %129 = xor i1 %128, %126
  %.v84 = select i1 %129, i64 24, i64 10
  %130 = add i64 %74, %.v84
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i833 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0
  %132 = add i64 %130, 3
  store i64 %132, i64* %3, align 8
  %133 = load i32, i32* %49, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RAX.i833, align 8
  %135 = add i64 %130, 6
  store i64 %135, i64* %3, align 8
  br i1 %129, label %block_.L_478ceb, label %block_478cdd

block_478cdd:                                     ; preds = %block_.L_478cd3
  %136 = add i32 %133, -9
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX.i833, align 8
  %138 = icmp ult i32 %133, 9
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %14, align 1
  %140 = and i32 %136, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %21, align 1
  %145 = xor i32 %136, %133
  %146 = lshr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %27, align 1
  %149 = icmp eq i32 %136, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %30, align 1
  %151 = lshr i32 %136, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %33, align 1
  %153 = lshr i32 %133, 31
  %154 = xor i32 %151, %153
  %155 = add nuw nsw i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %39, align 1
  %158 = add i64 %45, -8
  %159 = add i64 %130, 9
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i32*
  store i32 %136, i32* %160, align 4
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 14
  store i64 %162, i64* %3, align 8
  br label %block_.L_478cf4

block_.L_478ceb:                                  ; preds = %block_.L_478cd3
  %163 = add i32 %133, -8
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX.i833, align 8
  %165 = icmp ult i32 %133, 8
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %14, align 1
  %167 = and i32 %163, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %21, align 1
  %172 = xor i32 %163, %133
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %27, align 1
  %176 = icmp eq i32 %163, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %30, align 1
  %178 = lshr i32 %163, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %33, align 1
  %180 = lshr i32 %133, 31
  %181 = xor i32 %178, %180
  %182 = add nuw nsw i32 %181, %180
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %39, align 1
  %185 = add i64 %45, -8
  %186 = add i64 %130, 9
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  store i32 %163, i32* %187, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_478cf4

block_.L_478cf4:                                  ; preds = %block_.L_478ceb, %block_478cdd
  %188 = phi i64 [ %.pre, %block_.L_478ceb ], [ %162, %block_478cdd ]
  %189 = add i64 %188, 5
  store i64 %189, i64* %3, align 8
  br label %block_.L_478cf9

block_.L_478cf9:                                  ; preds = %block_.L_478cf4, %block_478cc5
  %EAX.i817.pre-phi.in = phi %union.anon* [ %131, %block_.L_478cf4 ], [ %75, %block_478cc5 ]
  %RAX.i825.pre-phi = phi i64* [ %RAX.i833, %block_.L_478cf4 ], [ %RAX.i549, %block_478cc5 ]
  %storemerge = phi i64 [ %189, %block_.L_478cf4 ], [ %104, %block_478cc5 ]
  %EAX.i817.pre-phi = bitcast %union.anon* %EAX.i817.pre-phi.in to i32*
  store i64 6, i64* %RAX.i825.pre-phi, align 8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i822 = getelementptr inbounds %union.anon, %union.anon* %190, i64 0, i32 0
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -8
  %193 = add i64 %storemerge, 8
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %195, 16
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RCX.i822, align 8
  %198 = lshr i32 %196, 31
  %ECX.i818 = bitcast %union.anon* %190 to i32*
  %199 = sub i32 -10, %195
  %200 = icmp ugt i32 %196, 6
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %14, align 1
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  %207 = xor i32 %196, %199
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %27, align 1
  %211 = icmp eq i32 %199, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %30, align 1
  %213 = lshr i32 %199, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %33, align 1
  %215 = add nuw nsw i32 %213, %198
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %39, align 1
  %218 = icmp ne i8 %214, 0
  %219 = xor i1 %218, %216
  %.v86 = select i1 %219, i64 19, i64 33
  %220 = add i64 %storemerge, %.v86
  store i64 %220, i64* %3, align 8
  br i1 %219, label %block_478d0c, label %block_.L_478d1a

block_478d0c:                                     ; preds = %block_.L_478cf9
  %221 = add i64 %220, 3
  store i64 %221, i64* %3, align 8
  %222 = load i32, i32* %194, align 4
  %223 = add i32 %222, 16
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX.i825.pre-phi, align 8
  %225 = icmp ugt i32 %222, -17
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1
  %227 = and i32 %223, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %21, align 1
  %232 = xor i32 %222, 16
  %233 = xor i32 %232, %223
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %27, align 1
  %237 = icmp eq i32 %223, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %30, align 1
  %239 = lshr i32 %223, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %33, align 1
  %241 = lshr i32 %222, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %239
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %39, align 1
  %246 = add i64 %191, -12
  %247 = add i64 %220, 9
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  store i32 %223, i32* %248, align 4
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 18
  br label %block_.L_478d27

block_.L_478d1a:                                  ; preds = %block_.L_478cf9
  store i64 6, i64* %RAX.i825.pre-phi, align 8
  %251 = add i64 %191, -12
  %252 = add i64 %220, 8
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  store i32 6, i32* %253, align 4
  %254 = load i64, i64* %3, align 8
  %255 = add i64 %254, 5
  store i64 %255, i64* %3, align 8
  br label %block_.L_478d27

block_.L_478d27:                                  ; preds = %block_.L_478d1a, %block_478d0c
  %storemerge38 = phi i64 [ %250, %block_478d0c ], [ %255, %block_.L_478d1a ]
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -12
  %258 = add i64 %storemerge38, 3
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX.i825.pre-phi, align 8
  store i64 2, i64* %RCX.i822, align 8
  store i32 %260, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %262 = add i64 %256, -8
  %263 = add i64 %storemerge38, 18
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = add i32 %265, 12
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RAX.i825.pre-phi, align 8
  %268 = lshr i32 %266, 31
  %269 = sub i32 -10, %265
  %270 = icmp ugt i32 %266, 2
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %14, align 1
  %272 = and i32 %269, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i32 %266, %269
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %27, align 1
  %281 = icmp eq i32 %269, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %30, align 1
  %283 = lshr i32 %269, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %33, align 1
  %285 = add nuw nsw i32 %283, %268
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %39, align 1
  %288 = icmp ne i8 %284, 0
  %289 = xor i1 %288, %286
  %.v87 = select i1 %289, i64 29, i64 43
  %290 = add i64 %storemerge38, %.v87
  store i64 %290, i64* %3, align 8
  br i1 %289, label %block_478d44, label %block_.L_478d52

block_478d44:                                     ; preds = %block_.L_478d27
  %291 = add i64 %290, 3
  store i64 %291, i64* %3, align 8
  %292 = load i32, i32* %264, align 4
  %293 = add i32 %292, 12
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i825.pre-phi, align 8
  %295 = icmp ugt i32 %292, -13
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %14, align 1
  %297 = and i32 %293, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %21, align 1
  %302 = xor i32 %293, %292
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %27, align 1
  %306 = icmp eq i32 %293, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %30, align 1
  %308 = lshr i32 %293, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %33, align 1
  %310 = lshr i32 %292, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %308
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %39, align 1
  %315 = add i64 %256, -16
  %316 = add i64 %290, 9
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  store i32 %293, i32* %317, align 4
  %318 = load i64, i64* %3, align 8
  %319 = add i64 %318, 18
  br label %block_.L_478d5f

block_.L_478d52:                                  ; preds = %block_.L_478d27
  store i64 2, i64* %RAX.i825.pre-phi, align 8
  %320 = add i64 %256, -16
  %321 = add i64 %290, 8
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  store i32 2, i32* %322, align 4
  %323 = load i64, i64* %3, align 8
  %324 = add i64 %323, 5
  store i64 %324, i64* %3, align 8
  br label %block_.L_478d5f

block_.L_478d5f:                                  ; preds = %block_.L_478d52, %block_478d44
  %storemerge39 = phi i64 [ %319, %block_478d44 ], [ %324, %block_.L_478d52 ]
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -16
  %327 = add i64 %storemerge39, 3
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX.i825.pre-phi, align 8
  store i64 1, i64* %RCX.i822, align 8
  store i32 %329, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %331 = add i64 %325, -8
  %332 = add i64 %storemerge39, 18
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = add i32 %334, 5
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i825.pre-phi, align 8
  %337 = lshr i32 %335, 31
  %338 = sub i32 -4, %334
  %339 = icmp ugt i32 %335, 1
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %338, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %335, %338
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %27, align 1
  %350 = icmp eq i32 %338, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %30, align 1
  %352 = lshr i32 %338, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %33, align 1
  %354 = add nuw nsw i32 %352, %337
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %39, align 1
  %357 = icmp ne i8 %353, 0
  %358 = xor i1 %357, %355
  %.v88 = select i1 %358, i64 29, i64 43
  %359 = add i64 %storemerge39, %.v88
  store i64 %359, i64* %3, align 8
  br i1 %358, label %block_478d7c, label %block_.L_478d8a

block_478d7c:                                     ; preds = %block_.L_478d5f
  %360 = add i64 %359, 3
  store i64 %360, i64* %3, align 8
  %361 = load i32, i32* %333, align 4
  %362 = add i32 %361, 5
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX.i825.pre-phi, align 8
  %364 = icmp ugt i32 %361, -6
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %14, align 1
  %366 = and i32 %362, 255
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %21, align 1
  %371 = xor i32 %362, %361
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %27, align 1
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %30, align 1
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %33, align 1
  %379 = lshr i32 %361, 31
  %380 = xor i32 %377, %379
  %381 = add nuw nsw i32 %380, %377
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %39, align 1
  %384 = add i64 %325, -20
  %385 = add i64 %359, 9
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  store i32 %362, i32* %386, align 4
  %387 = load i64, i64* %3, align 8
  %388 = add i64 %387, 18
  br label %block_.L_478d97

block_.L_478d8a:                                  ; preds = %block_.L_478d5f
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %389 = add i64 %325, -20
  %390 = add i64 %359, 8
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 1, i32* %391, align 4
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, 5
  store i64 %393, i64* %3, align 8
  br label %block_.L_478d97

block_.L_478d97:                                  ; preds = %block_.L_478d8a, %block_478d7c
  %storemerge40 = phi i64 [ %388, %block_478d7c ], [ %393, %block_.L_478d8a ]
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -20
  %396 = add i64 %storemerge40, 3
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RAX.i825.pre-phi, align 8
  store i64 3, i64* %RCX.i822, align 8
  store i32 %398, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %400 = add i64 %394, -8
  %401 = add i64 %storemerge40, 18
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = add i32 %403, 13
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RAX.i825.pre-phi, align 8
  %406 = lshr i32 %404, 31
  %407 = sub i32 -10, %403
  %408 = icmp ugt i32 %404, 3
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %14, align 1
  %410 = and i32 %407, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %21, align 1
  %415 = xor i32 %404, %407
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %27, align 1
  %419 = icmp eq i32 %407, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %30, align 1
  %421 = lshr i32 %407, 31
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %33, align 1
  %423 = add nuw nsw i32 %421, %406
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %39, align 1
  %426 = icmp ne i8 %422, 0
  %427 = xor i1 %426, %424
  %.v89 = select i1 %427, i64 29, i64 43
  %428 = add i64 %storemerge40, %.v89
  store i64 %428, i64* %3, align 8
  br i1 %427, label %block_478db4, label %block_.L_478dc2

block_478db4:                                     ; preds = %block_.L_478d97
  %429 = add i64 %428, 3
  store i64 %429, i64* %3, align 8
  %430 = load i32, i32* %402, align 4
  %431 = add i32 %430, 13
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RAX.i825.pre-phi, align 8
  %433 = icmp ugt i32 %430, -14
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %14, align 1
  %435 = and i32 %431, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %21, align 1
  %440 = xor i32 %431, %430
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %27, align 1
  %444 = icmp eq i32 %431, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %30, align 1
  %446 = lshr i32 %431, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %33, align 1
  %448 = lshr i32 %430, 31
  %449 = xor i32 %446, %448
  %450 = add nuw nsw i32 %449, %446
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %39, align 1
  %453 = add i64 %394, -24
  %454 = add i64 %428, 9
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  store i32 %431, i32* %455, align 4
  %456 = load i64, i64* %3, align 8
  %457 = add i64 %456, 18
  br label %block_.L_478dcf

block_.L_478dc2:                                  ; preds = %block_.L_478d97
  store i64 3, i64* %RAX.i825.pre-phi, align 8
  %458 = add i64 %394, -24
  %459 = add i64 %428, 8
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 3, i32* %460, align 4
  %461 = load i64, i64* %3, align 8
  %462 = add i64 %461, 5
  store i64 %462, i64* %3, align 8
  br label %block_.L_478dcf

block_.L_478dcf:                                  ; preds = %block_.L_478dc2, %block_478db4
  %storemerge41 = phi i64 [ %457, %block_478db4 ], [ %462, %block_.L_478dc2 ]
  %463 = load i64, i64* %RBP.i, align 8
  %464 = add i64 %463, -24
  %465 = add i64 %storemerge41, 3
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX.i825.pre-phi, align 8
  store i32 %467, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  %469 = add i64 %463, -4
  %470 = add i64 %storemerge41, 14
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = add i32 %472, -8
  %474 = icmp ult i32 %472, 8
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %14, align 1
  %476 = and i32 %473, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %21, align 1
  %481 = xor i32 %473, %472
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %27, align 1
  %485 = icmp eq i32 %473, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %30, align 1
  %487 = lshr i32 %473, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %33, align 1
  %489 = lshr i32 %472, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %39, align 1
  %494 = icmp ne i8 %488, 0
  %495 = xor i1 %494, %492
  %.v90 = select i1 %495, i64 113, i64 20
  %496 = add i64 %storemerge41, %.v90
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  store i64 2, i64* %RCX.i822, align 8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i628 = getelementptr inbounds %union.anon, %union.anon* %497, i64 0, i32 0
  %498 = add i64 %463, -8
  %499 = add i64 %496, 13
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RDX.i628, align 8
  %503 = add i64 %496, 16
  store i64 %503, i64* %3, align 8
  br i1 %495, label %block_.L_478e40, label %block_478de3

block_478de3:                                     ; preds = %block_.L_478dcf
  %504 = add i32 %501, 12
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDX.i628, align 8
  %506 = icmp ugt i32 %501, -13
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %14, align 1
  %508 = and i32 %504, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %21, align 1
  %513 = xor i32 %504, %501
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %27, align 1
  %517 = icmp eq i32 %504, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %30, align 1
  %519 = lshr i32 %504, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %33, align 1
  %521 = lshr i32 %501, 31
  %522 = xor i32 %519, %521
  %523 = add nuw nsw i32 %522, %519
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %39, align 1
  %526 = add i64 %463, -28
  %527 = add i64 %496, 19
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  store i32 1, i32* %528, align 4
  %EDX.i685 = bitcast %union.anon* %497 to i32*
  %529 = load i32, i32* %EDX.i685, align 4
  %530 = zext i32 %529 to i64
  %531 = load i64, i64* %3, align 8
  store i64 %530, i64* %RAX.i825.pre-phi, align 8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %533 = sext i32 %529 to i64
  %534 = lshr i64 %533, 32
  store i64 %534, i64* %532, align 8
  %535 = load i32, i32* %ECX.i818, align 4
  %536 = add i64 %531, 5
  store i64 %536, i64* %3, align 8
  %537 = sext i32 %535 to i64
  %538 = shl nuw i64 %534, 32
  %539 = or i64 %538, %530
  %540 = sdiv i64 %539, %537
  %541 = shl i64 %540, 32
  %542 = ashr exact i64 %541, 32
  %543 = icmp eq i64 %540, %542
  br i1 %543, label %546, label %544

; <label>:544:                                    ; preds = %block_478de3
  %545 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %536, %struct.Memory* %2)
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i32, i32* %EAX.i817.pre-phi, align 4
  br label %routine_idivl__ecx.exit680

; <label>:546:                                    ; preds = %block_478de3
  %547 = srem i64 %539, %537
  %548 = and i64 %540, 4294967295
  store i64 %548, i64* %RAX.i825.pre-phi, align 8
  %549 = and i64 %547, 4294967295
  store i64 %549, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %550 = trunc i64 %540 to i32
  br label %routine_idivl__ecx.exit680

routine_idivl__ecx.exit680:                       ; preds = %546, %544
  %551 = phi i32 [ %.pre58, %544 ], [ %550, %546 ]
  %552 = phi i64 [ %.pre57, %544 ], [ %536, %546 ]
  %553 = phi %struct.Memory* [ %545, %544 ], [ %2, %546 ]
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -28
  %556 = add i64 %552, 3
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RCX.i822, align 8
  %560 = sub i32 %558, %551
  %561 = icmp ult i32 %558, %551
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %14, align 1
  %563 = and i32 %560, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %21, align 1
  %568 = xor i32 %551, %558
  %569 = xor i32 %568, %560
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %27, align 1
  %573 = icmp eq i32 %560, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %30, align 1
  %575 = lshr i32 %560, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %33, align 1
  %577 = lshr i32 %558, 31
  %578 = lshr i32 %551, 31
  %579 = xor i32 %578, %577
  %580 = xor i32 %575, %577
  %581 = add nuw nsw i32 %580, %579
  %582 = icmp eq i32 %581, 2
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %39, align 1
  %584 = icmp ne i8 %576, 0
  %585 = xor i1 %584, %582
  %.v91 = select i1 %585, i64 11, i64 41
  %586 = add i64 %552, %.v91
  %587 = add i64 %586, 5
  store i64 %587, i64* %3, align 8
  br i1 %585, label %block_478e06, label %block_.L_478e24

block_478e06:                                     ; preds = %routine_idivl__ecx.exit680
  store i64 2, i64* %RAX.i825.pre-phi, align 8
  %588 = add i64 %554, -8
  %589 = add i64 %586, 8
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = add i32 %591, 12
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RCX.i822, align 8
  %594 = icmp ugt i32 %591, -13
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %14, align 1
  %596 = and i32 %592, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  %601 = xor i32 %592, %591
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %27, align 1
  %605 = icmp eq i32 %592, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %30, align 1
  %607 = lshr i32 %592, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %33, align 1
  %609 = lshr i32 %591, 31
  %610 = xor i32 %607, %609
  %611 = add nuw nsw i32 %610, %607
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %39, align 1
  %614 = add i64 %554, -32
  %615 = add i64 %586, 14
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  store i32 2, i32* %616, align 4
  %617 = load i32, i32* %ECX.i818, align 4
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %3, align 8
  store i64 %618, i64* %RAX.i825.pre-phi, align 8
  %620 = sext i32 %617 to i64
  %621 = lshr i64 %620, 32
  store i64 %621, i64* %532, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -32
  %624 = add i64 %619, 6
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RCX.i822, align 8
  %628 = add i64 %619, 8
  store i64 %628, i64* %3, align 8
  %629 = sext i32 %626 to i64
  %630 = shl nuw i64 %621, 32
  %631 = or i64 %630, %618
  %632 = sdiv i64 %631, %629
  %633 = shl i64 %632, 32
  %634 = ashr exact i64 %633, 32
  %635 = icmp eq i64 %632, %634
  br i1 %635, label %638, label %636

; <label>:636:                                    ; preds = %block_478e06
  %637 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %628, %struct.Memory* %553)
  %.pre59 = load i64, i64* %RBP.i, align 8
  %.pre60 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit652

; <label>:638:                                    ; preds = %block_478e06
  %639 = srem i64 %631, %629
  %640 = and i64 %632, 4294967295
  store i64 %640, i64* %RAX.i825.pre-phi, align 8
  %641 = and i64 %639, 4294967295
  store i64 %641, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %642 = trunc i64 %632 to i32
  br label %routine_idivl__ecx.exit652

routine_idivl__ecx.exit652:                       ; preds = %638, %636
  %643 = phi i64 [ %.pre61, %636 ], [ %628, %638 ]
  %644 = phi i32 [ %.pre60, %636 ], [ %642, %638 ]
  %645 = phi i64 [ %.pre59, %636 ], [ %622, %638 ]
  %646 = phi %struct.Memory* [ %637, %636 ], [ %553, %638 ]
  %647 = add i64 %645, -36
  %648 = add i64 %643, 3
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  store i32 %644, i32* %649, align 4
  %650 = load i64, i64* %3, align 8
  %651 = add i64 %650, 18
  br label %block_.L_478e31

block_.L_478e24:                                  ; preds = %routine_idivl__ecx.exit680
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %652 = add i64 %554, -36
  %653 = add i64 %586, 8
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  store i32 1, i32* %654, align 4
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 5
  store i64 %656, i64* %3, align 8
  br label %block_.L_478e31

block_.L_478e31:                                  ; preds = %block_.L_478e24, %routine_idivl__ecx.exit652
  %storemerge42 = phi i64 [ %651, %routine_idivl__ecx.exit652 ], [ %656, %block_.L_478e24 ]
  %MEMORY.6 = phi %struct.Memory* [ %646, %routine_idivl__ecx.exit652 ], [ %553, %block_.L_478e24 ]
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -36
  %659 = add i64 %storemerge42, 3
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RAX.i825.pre-phi, align 8
  store i32 %661, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  %663 = add i64 %storemerge42, 103
  store i64 %663, i64* %3, align 8
  br label %block_.L_478e98

block_.L_478e40:                                  ; preds = %block_.L_478dcf
  %664 = add i32 %501, 11
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RDX.i628, align 8
  %666 = icmp ugt i32 %501, -12
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %14, align 1
  %668 = and i32 %664, 255
  %669 = tail call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  store i8 %672, i8* %21, align 1
  %673 = xor i32 %664, %501
  %674 = lshr i32 %673, 4
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  store i8 %676, i8* %27, align 1
  %677 = icmp eq i32 %664, 0
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %30, align 1
  %679 = lshr i32 %664, 31
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* %33, align 1
  %681 = lshr i32 %501, 31
  %682 = xor i32 %679, %681
  %683 = add nuw nsw i32 %682, %679
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %39, align 1
  %686 = add i64 %463, -40
  %687 = add i64 %496, 19
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  store i32 1, i32* %688, align 4
  %EDX.i620 = bitcast %union.anon* %497 to i32*
  %689 = load i32, i32* %EDX.i620, align 4
  %690 = zext i32 %689 to i64
  %691 = load i64, i64* %3, align 8
  store i64 %690, i64* %RAX.i825.pre-phi, align 8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %693 = sext i32 %689 to i64
  %694 = lshr i64 %693, 32
  store i64 %694, i64* %692, align 8
  %695 = load i32, i32* %ECX.i818, align 4
  %696 = add i64 %691, 5
  store i64 %696, i64* %3, align 8
  %697 = sext i32 %695 to i64
  %698 = shl nuw i64 %694, 32
  %699 = or i64 %698, %690
  %700 = sdiv i64 %699, %697
  %701 = shl i64 %700, 32
  %702 = ashr exact i64 %701, 32
  %703 = icmp eq i64 %700, %702
  br i1 %703, label %706, label %704

; <label>:704:                                    ; preds = %block_.L_478e40
  %705 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %696, %struct.Memory* %2)
  %.pre62 = load i64, i64* %3, align 8
  %.pre63 = load i32, i32* %EAX.i817.pre-phi, align 4
  br label %routine_idivl__ecx.exit614

; <label>:706:                                    ; preds = %block_.L_478e40
  %707 = srem i64 %699, %697
  %708 = and i64 %700, 4294967295
  store i64 %708, i64* %RAX.i825.pre-phi, align 8
  %709 = and i64 %707, 4294967295
  store i64 %709, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %710 = trunc i64 %700 to i32
  br label %routine_idivl__ecx.exit614

routine_idivl__ecx.exit614:                       ; preds = %706, %704
  %711 = phi i32 [ %.pre63, %704 ], [ %710, %706 ]
  %712 = phi i64 [ %.pre62, %704 ], [ %696, %706 ]
  %713 = phi %struct.Memory* [ %705, %704 ], [ %2, %706 ]
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -40
  %716 = add i64 %712, 3
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RCX.i822, align 8
  %720 = sub i32 %718, %711
  %721 = icmp ult i32 %718, %711
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %14, align 1
  %723 = and i32 %720, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %21, align 1
  %728 = xor i32 %711, %718
  %729 = xor i32 %728, %720
  %730 = lshr i32 %729, 4
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  store i8 %732, i8* %27, align 1
  %733 = icmp eq i32 %720, 0
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %30, align 1
  %735 = lshr i32 %720, 31
  %736 = trunc i32 %735 to i8
  store i8 %736, i8* %33, align 1
  %737 = lshr i32 %718, 31
  %738 = lshr i32 %711, 31
  %739 = xor i32 %738, %737
  %740 = xor i32 %735, %737
  %741 = add nuw nsw i32 %740, %739
  %742 = icmp eq i32 %741, 2
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %39, align 1
  %744 = icmp ne i8 %736, 0
  %745 = xor i1 %744, %742
  %.v120 = select i1 %745, i64 11, i64 41
  %746 = add i64 %712, %.v120
  %747 = add i64 %746, 5
  store i64 %747, i64* %3, align 8
  br i1 %745, label %block_478e63, label %block_.L_478e81

block_478e63:                                     ; preds = %routine_idivl__ecx.exit614
  store i64 2, i64* %RAX.i825.pre-phi, align 8
  %748 = add i64 %714, -8
  %749 = add i64 %746, 8
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = add i32 %751, 11
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RCX.i822, align 8
  %754 = icmp ugt i32 %751, -12
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %14, align 1
  %756 = and i32 %752, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %21, align 1
  %761 = xor i32 %752, %751
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %27, align 1
  %765 = icmp eq i32 %752, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %30, align 1
  %767 = lshr i32 %752, 31
  %768 = trunc i32 %767 to i8
  store i8 %768, i8* %33, align 1
  %769 = lshr i32 %751, 31
  %770 = xor i32 %767, %769
  %771 = add nuw nsw i32 %770, %767
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %39, align 1
  %774 = add i64 %714, -44
  %775 = add i64 %746, 14
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  store i32 2, i32* %776, align 4
  %777 = load i32, i32* %ECX.i818, align 4
  %778 = zext i32 %777 to i64
  %779 = load i64, i64* %3, align 8
  store i64 %778, i64* %RAX.i825.pre-phi, align 8
  %780 = sext i32 %777 to i64
  %781 = lshr i64 %780, 32
  store i64 %781, i64* %692, align 8
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -44
  %784 = add i64 %779, 6
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RCX.i822, align 8
  %788 = add i64 %779, 8
  store i64 %788, i64* %3, align 8
  %789 = sext i32 %786 to i64
  %790 = shl nuw i64 %781, 32
  %791 = or i64 %790, %778
  %792 = sdiv i64 %791, %789
  %793 = shl i64 %792, 32
  %794 = ashr exact i64 %793, 32
  %795 = icmp eq i64 %792, %794
  br i1 %795, label %798, label %796

; <label>:796:                                    ; preds = %block_478e63
  %797 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %788, %struct.Memory* %713)
  %.pre64 = load i64, i64* %RBP.i, align 8
  %.pre65 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit585

; <label>:798:                                    ; preds = %block_478e63
  %799 = srem i64 %791, %789
  %800 = and i64 %792, 4294967295
  store i64 %800, i64* %RAX.i825.pre-phi, align 8
  %801 = and i64 %799, 4294967295
  store i64 %801, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %802 = trunc i64 %792 to i32
  br label %routine_idivl__ecx.exit585

routine_idivl__ecx.exit585:                       ; preds = %798, %796
  %803 = phi i64 [ %.pre66, %796 ], [ %788, %798 ]
  %804 = phi i32 [ %.pre65, %796 ], [ %802, %798 ]
  %805 = phi i64 [ %.pre64, %796 ], [ %782, %798 ]
  %806 = phi %struct.Memory* [ %797, %796 ], [ %713, %798 ]
  %807 = add i64 %805, -48
  %808 = add i64 %803, 3
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  store i32 %804, i32* %809, align 4
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 18
  br label %block_.L_478e8e

block_.L_478e81:                                  ; preds = %routine_idivl__ecx.exit614
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %812 = add i64 %714, -48
  %813 = add i64 %746, 8
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  store i32 1, i32* %814, align 4
  %815 = load i64, i64* %3, align 8
  %816 = add i64 %815, 5
  store i64 %816, i64* %3, align 8
  br label %block_.L_478e8e

block_.L_478e8e:                                  ; preds = %block_.L_478e81, %routine_idivl__ecx.exit585
  %storemerge56 = phi i64 [ %811, %routine_idivl__ecx.exit585 ], [ %816, %block_.L_478e81 ]
  %MEMORY.7 = phi %struct.Memory* [ %806, %routine_idivl__ecx.exit585 ], [ %713, %block_.L_478e81 ]
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -48
  %819 = add i64 %storemerge56, 3
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RAX.i825.pre-phi, align 8
  %823 = add i64 %storemerge56, 10
  store i64 %823, i64* %3, align 8
  store i32 %821, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  br label %block_.L_478e98

block_.L_478e98:                                  ; preds = %block_.L_478e8e, %block_.L_478e31
  %.pre-phi82 = phi i64* [ %692, %block_.L_478e8e ], [ %532, %block_.L_478e31 ]
  %824 = phi i64 [ %817, %block_.L_478e8e ], [ %657, %block_.L_478e31 ]
  %825 = phi i64 [ %823, %block_.L_478e8e ], [ %663, %block_.L_478e31 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_478e8e ], [ %MEMORY.6, %block_.L_478e31 ]
  store i64 2, i64* %RAX.i825.pre-phi, align 8
  %826 = add i64 %824, -8
  %827 = add i64 %825, 8
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = add i32 %829, 16
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RCX.i822, align 8
  %832 = icmp ugt i32 %829, -17
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %14, align 1
  %834 = and i32 %830, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %21, align 1
  %839 = xor i32 %829, 16
  %840 = xor i32 %839, %830
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %27, align 1
  %844 = icmp eq i32 %830, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %30, align 1
  %846 = lshr i32 %830, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %33, align 1
  %848 = lshr i32 %829, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %846
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %39, align 1
  %853 = add i64 %824, -52
  %854 = add i64 %825, 14
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  store i32 2, i32* %855, align 4
  %856 = load i32, i32* %ECX.i818, align 4
  %857 = zext i32 %856 to i64
  %858 = load i64, i64* %3, align 8
  store i64 %857, i64* %RAX.i825.pre-phi, align 8
  %859 = sext i32 %856 to i64
  %860 = lshr i64 %859, 32
  store i64 %860, i64* %.pre-phi82, align 8
  %861 = load i64, i64* %RBP.i, align 8
  %862 = add i64 %861, -52
  %863 = add i64 %858, 6
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RCX.i822, align 8
  %867 = add i64 %858, 8
  store i64 %867, i64* %3, align 8
  %868 = sext i32 %865 to i64
  %869 = shl nuw i64 %860, 32
  %870 = or i64 %869, %857
  %871 = sdiv i64 %870, %868
  %872 = shl i64 %871, 32
  %873 = ashr exact i64 %872, 32
  %874 = icmp eq i64 %871, %873
  br i1 %874, label %877, label %875

; <label>:875:                                    ; preds = %block_.L_478e98
  %876 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %867, %struct.Memory* %MEMORY.8)
  %.pre67 = load i32, i32* %ECX.i818, align 4
  %.pre68 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit547

; <label>:877:                                    ; preds = %block_.L_478e98
  %878 = srem i64 %870, %868
  %879 = and i64 %871, 4294967295
  store i64 %879, i64* %RAX.i825.pre-phi, align 8
  %880 = and i64 %878, 4294967295
  store i64 %880, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %881 = trunc i64 %871 to i32
  br label %routine_idivl__ecx.exit547

routine_idivl__ecx.exit547:                       ; preds = %877, %875
  %882 = phi i64 [ %.pre70, %875 ], [ %861, %877 ]
  %883 = phi i64 [ %.pre69, %875 ], [ %867, %877 ]
  %884 = phi i32 [ %.pre68, %875 ], [ %881, %877 ]
  %885 = phi i32 [ %.pre67, %875 ], [ %865, %877 ]
  %886 = phi %struct.Memory* [ %876, %875 ], [ %MEMORY.8, %877 ]
  %887 = sub i32 %885, %884
  %888 = icmp ult i32 %885, %884
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %14, align 1
  %890 = and i32 %887, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i32 %884, %885
  %896 = xor i32 %895, %887
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %27, align 1
  %900 = icmp eq i32 %887, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %30, align 1
  %902 = lshr i32 %887, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %33, align 1
  %904 = lshr i32 %885, 31
  %905 = lshr i32 %884, 31
  %906 = xor i32 %905, %904
  %907 = xor i32 %902, %904
  %908 = add nuw nsw i32 %907, %906
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %39, align 1
  %911 = icmp ne i8 %903, 0
  %912 = xor i1 %911, %909
  %.v92 = select i1 %912, i64 8, i64 38
  %913 = add i64 %883, %.v92
  %914 = add i64 %913, 5
  store i64 %914, i64* %3, align 8
  store i64 2, i64* %RAX.i825.pre-phi, align 8
  br i1 %912, label %block_478eb6, label %block_.L_478ed4

block_478eb6:                                     ; preds = %routine_idivl__ecx.exit547
  %915 = add i64 %882, -8
  %916 = add i64 %913, 8
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = add i32 %918, 16
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RCX.i822, align 8
  %921 = icmp ugt i32 %918, -17
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1
  %923 = and i32 %919, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i32 %918, 16
  %929 = xor i32 %928, %919
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %27, align 1
  %933 = icmp eq i32 %919, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %30, align 1
  %935 = lshr i32 %919, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %33, align 1
  %937 = lshr i32 %918, 31
  %938 = xor i32 %935, %937
  %939 = add nuw nsw i32 %938, %935
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %39, align 1
  %942 = add i64 %882, -56
  %943 = add i64 %913, 14
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  store i32 2, i32* %944, align 4
  %945 = load i32, i32* %ECX.i818, align 4
  %946 = zext i32 %945 to i64
  %947 = load i64, i64* %3, align 8
  store i64 %946, i64* %RAX.i825.pre-phi, align 8
  %948 = sext i32 %945 to i64
  %949 = lshr i64 %948, 32
  store i64 %949, i64* %.pre-phi82, align 8
  %950 = load i64, i64* %RBP.i, align 8
  %951 = add i64 %950, -56
  %952 = add i64 %947, 6
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RCX.i822, align 8
  %956 = add i64 %947, 8
  store i64 %956, i64* %3, align 8
  %957 = sext i32 %954 to i64
  %958 = shl nuw i64 %949, 32
  %959 = or i64 %958, %946
  %960 = sdiv i64 %959, %957
  %961 = shl i64 %960, 32
  %962 = ashr exact i64 %961, 32
  %963 = icmp eq i64 %960, %962
  br i1 %963, label %966, label %964

; <label>:964:                                    ; preds = %block_478eb6
  %965 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %956, %struct.Memory* %886)
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit522

; <label>:966:                                    ; preds = %block_478eb6
  %967 = srem i64 %959, %957
  %968 = and i64 %960, 4294967295
  store i64 %968, i64* %RAX.i825.pre-phi, align 8
  %969 = and i64 %967, 4294967295
  store i64 %969, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %970 = trunc i64 %960 to i32
  br label %routine_idivl__ecx.exit522

routine_idivl__ecx.exit522:                       ; preds = %966, %964
  %971 = phi i64 [ %.pre73, %964 ], [ %956, %966 ]
  %972 = phi i32 [ %.pre72, %964 ], [ %970, %966 ]
  %973 = phi i64 [ %.pre71, %964 ], [ %950, %966 ]
  %974 = phi %struct.Memory* [ %965, %964 ], [ %886, %966 ]
  %975 = add i64 %973, -60
  %976 = add i64 %971, 3
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i32*
  store i32 %972, i32* %977, align 4
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, 18
  br label %block_.L_478ee1

block_.L_478ed4:                                  ; preds = %routine_idivl__ecx.exit547
  %980 = add i64 %882, -60
  %981 = add i64 %913, 8
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  store i32 2, i32* %982, align 4
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 5
  store i64 %984, i64* %3, align 8
  br label %block_.L_478ee1

block_.L_478ee1:                                  ; preds = %block_.L_478ed4, %routine_idivl__ecx.exit522
  %storemerge43 = phi i64 [ %979, %routine_idivl__ecx.exit522 ], [ %984, %block_.L_478ed4 ]
  %MEMORY.9 = phi %struct.Memory* [ %974, %routine_idivl__ecx.exit522 ], [ %886, %block_.L_478ed4 ]
  %985 = load i64, i64* %RBP.i, align 8
  %986 = add i64 %985, -60
  %987 = add i64 %storemerge43, 3
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RAX.i825.pre-phi, align 8
  store i64 5, i64* %RCX.i822, align 8
  store i64 2, i64* %RDX.i628, align 8
  store i32 %989, i32* bitcast (%G_0xb6e910_type* @G_0xb6e910 to i32*), align 8
  %991 = add i64 %985, -8
  %992 = add i64 %storemerge43, 23
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = add i32 %994, 40
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX.i825.pre-phi, align 8
  %997 = icmp ugt i32 %994, -41
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %14, align 1
  %999 = and i32 %995, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %21, align 1
  %1004 = xor i32 %995, %994
  %1005 = lshr i32 %1004, 4
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  store i8 %1007, i8* %27, align 1
  %1008 = icmp eq i32 %995, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %30, align 1
  %1010 = lshr i32 %995, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %33, align 1
  %1012 = lshr i32 %994, 31
  %1013 = xor i32 %1010, %1012
  %1014 = add nuw nsw i32 %1013, %1010
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %39, align 1
  %1017 = add i64 %985, -64
  %1018 = add i64 %storemerge43, 29
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  store i32 2, i32* %1019, align 4
  %1020 = load i64, i64* %3, align 8
  %1021 = load i32, i32* %EAX.i817.pre-phi, align 8
  %1022 = sext i32 %1021 to i64
  %1023 = lshr i64 %1022, 32
  store i64 %1023, i64* %.pre-phi82, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %1024 = load i64, i64* %RBP.i, align 8
  %1025 = add i64 %1024, -64
  %1026 = add i64 %1020, 4
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RSI.i, align 8
  %1030 = add i64 %1020, 6
  store i64 %1030, i64* %3, align 8
  %1031 = zext i32 %1021 to i64
  %1032 = sext i32 %1028 to i64
  %1033 = shl nuw i64 %1023, 32
  %1034 = or i64 %1033, %1031
  %1035 = sdiv i64 %1034, %1032
  %1036 = shl i64 %1035, 32
  %1037 = ashr exact i64 %1036, 32
  %1038 = icmp eq i64 %1035, %1037
  br i1 %1038, label %1041, label %1039

; <label>:1039:                                   ; preds = %block_.L_478ee1
  %1040 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1030, %struct.Memory* %MEMORY.9)
  %.pre74 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:1041:                                   ; preds = %block_.L_478ee1
  %1042 = srem i64 %1034, %1032
  %1043 = and i64 %1035, 4294967295
  store i64 %1043, i64* %RAX.i825.pre-phi, align 8
  %1044 = and i64 %1042, 4294967295
  store i64 %1044, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1045 = trunc i64 %1035 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1041, %1039
  %1046 = phi i64 [ %.pre75, %1039 ], [ %1030, %1041 ]
  %1047 = phi i32 [ %.pre74, %1039 ], [ %1045, %1041 ]
  %1048 = phi %struct.Memory* [ %1040, %1039 ], [ %MEMORY.9, %1041 ]
  %1049 = load i32, i32* %ECX.i818, align 4
  %1050 = sub i32 %1049, %1047
  %1051 = icmp ult i32 %1049, %1047
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %14, align 1
  %1053 = and i32 %1050, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %21, align 1
  %1058 = xor i32 %1047, %1049
  %1059 = xor i32 %1058, %1050
  %1060 = lshr i32 %1059, 4
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  store i8 %1062, i8* %27, align 1
  %1063 = icmp eq i32 %1050, 0
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %30, align 1
  %1065 = lshr i32 %1050, 31
  %1066 = trunc i32 %1065 to i8
  store i8 %1066, i8* %33, align 1
  %1067 = lshr i32 %1049, 31
  %1068 = lshr i32 %1047, 31
  %1069 = xor i32 %1068, %1067
  %1070 = xor i32 %1065, %1067
  %1071 = add nuw nsw i32 %1070, %1069
  %1072 = icmp eq i32 %1071, 2
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %39, align 1
  %1074 = icmp ne i8 %1066, 0
  %1075 = xor i1 %1074, %1072
  %.v93 = select i1 %1075, i64 8, i64 38
  %1076 = add i64 %1046, %.v93
  %1077 = add i64 %1076, 5
  store i64 %1077, i64* %3, align 8
  br i1 %1075, label %block_478f0c, label %block_.L_478f2a

block_478f0c:                                     ; preds = %routine_idivl__esi.exit
  store i64 2, i64* %RAX.i825.pre-phi, align 8
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -8
  %1080 = add i64 %1076, 8
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = add i32 %1082, 40
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RCX.i822, align 8
  %1085 = icmp ugt i32 %1082, -41
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %14, align 1
  %1087 = and i32 %1083, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %21, align 1
  %1092 = xor i32 %1083, %1082
  %1093 = lshr i32 %1092, 4
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %27, align 1
  %1096 = icmp eq i32 %1083, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %30, align 1
  %1098 = lshr i32 %1083, 31
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* %33, align 1
  %1100 = lshr i32 %1082, 31
  %1101 = xor i32 %1098, %1100
  %1102 = add nuw nsw i32 %1101, %1098
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %39, align 1
  %1105 = add i64 %1078, -68
  %1106 = add i64 %1076, 14
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  store i32 2, i32* %1107, align 4
  %1108 = load i32, i32* %ECX.i818, align 4
  %1109 = zext i32 %1108 to i64
  %1110 = load i64, i64* %3, align 8
  store i64 %1109, i64* %RAX.i825.pre-phi, align 8
  %1111 = sext i32 %1108 to i64
  %1112 = lshr i64 %1111, 32
  store i64 %1112, i64* %.pre-phi82, align 8
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -68
  %1115 = add i64 %1110, 6
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i822, align 8
  %1119 = add i64 %1110, 8
  store i64 %1119, i64* %3, align 8
  %1120 = sext i32 %1117 to i64
  %1121 = shl nuw i64 %1112, 32
  %1122 = or i64 %1121, %1109
  %1123 = sdiv i64 %1122, %1120
  %1124 = shl i64 %1123, 32
  %1125 = ashr exact i64 %1124, 32
  %1126 = icmp eq i64 %1123, %1125
  br i1 %1126, label %1129, label %1127

; <label>:1127:                                   ; preds = %block_478f0c
  %1128 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1119, %struct.Memory* %1048)
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1129:                                   ; preds = %block_478f0c
  %1130 = srem i64 %1122, %1120
  %1131 = and i64 %1123, 4294967295
  store i64 %1131, i64* %RAX.i825.pre-phi, align 8
  %1132 = and i64 %1130, 4294967295
  store i64 %1132, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1133 = trunc i64 %1123 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1129, %1127
  %1134 = phi i64 [ %.pre78, %1127 ], [ %1119, %1129 ]
  %1135 = phi i32 [ %.pre77, %1127 ], [ %1133, %1129 ]
  %1136 = phi i64 [ %.pre76, %1127 ], [ %1113, %1129 ]
  %1137 = phi %struct.Memory* [ %1128, %1127 ], [ %1048, %1129 ]
  %1138 = add i64 %1136, -72
  %1139 = add i64 %1134, 3
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  store i32 %1135, i32* %1140, align 4
  %1141 = load i64, i64* %3, align 8
  %1142 = add i64 %1141, 18
  br label %block_.L_478f37

block_.L_478f2a:                                  ; preds = %routine_idivl__esi.exit
  store i64 5, i64* %RAX.i825.pre-phi, align 8
  %1143 = load i64, i64* %RBP.i, align 8
  %1144 = add i64 %1143, -72
  %1145 = add i64 %1076, 8
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  store i32 5, i32* %1146, align 4
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, 5
  store i64 %1148, i64* %3, align 8
  br label %block_.L_478f37

block_.L_478f37:                                  ; preds = %block_.L_478f2a, %routine_idivl__ecx.exit
  %storemerge44 = phi i64 [ %1142, %routine_idivl__ecx.exit ], [ %1148, %block_.L_478f2a ]
  %MEMORY.10 = phi %struct.Memory* [ %1137, %routine_idivl__ecx.exit ], [ %1048, %block_.L_478f2a ]
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -72
  %1151 = add i64 %storemerge44, 3
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX.i825.pre-phi, align 8
  store i32 %1153, i32* bitcast (%G_0xb8af1c_type* @G_0xb8af1c to i32*), align 8
  store i32 0, i32* bitcast (%G_0xab0f20_type* @G_0xab0f20 to i32*), align 8
  %1155 = add i64 %1149, -4
  %1156 = add i64 %storemerge44, 25
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = add i32 %1158, -8
  %1160 = lshr i32 %1159, 31
  %1161 = lshr i32 %1158, 31
  %1162 = xor i32 %1160, %1161
  %1163 = add nuw nsw i32 %1162, %1161
  %1164 = icmp eq i32 %1163, 2
  %1165 = icmp ne i32 %1160, 0
  %1166 = xor i1 %1165, %1164
  %.v = select i1 %1166, i64 92, i64 31
  %1167 = add i64 %storemerge44, %.v
  store i64 0, i64* %RAX.i825.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1168 = add i64 %1167, 5
  store i64 %1168, i64* %3, align 8
  %1169 = load i32, i32* %1157, align 4
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RCX.i822, align 8
  %1171 = add i64 %1167, 8
  store i64 %1171, i64* %3, align 8
  br i1 %1166, label %block_.L_478f93, label %block_478f56

block_478f56:                                     ; preds = %block_.L_478f37
  %1172 = add i32 %1169, -4
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RCX.i822, align 8
  %1174 = lshr i32 %1172, 31
  %1175 = sub i32 4, %1169
  %1176 = icmp ne i32 %1172, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %14, align 1
  %1178 = and i32 %1175, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %21, align 1
  %1183 = xor i32 %1172, %1175
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %27, align 1
  %1187 = icmp eq i32 %1175, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %30, align 1
  %1189 = lshr i32 %1175, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %33, align 1
  %1191 = add nuw nsw i32 %1189, %1174
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %39, align 1
  %1194 = icmp ne i8 %1190, 0
  %1195 = xor i1 %1194, %1192
  %.v94 = select i1 %1195, i64 19, i64 36
  %1196 = add i64 %1167, %.v94
  store i64 %1196, i64* %3, align 8
  br i1 %1195, label %block_478f69, label %block_.L_478f7a

block_478f69:                                     ; preds = %block_478f56
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -4
  %1199 = add i64 %1196, 3
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = add i32 %1201, -10
  %1203 = lshr i32 %1202, 31
  %1204 = add i32 %1201, -4
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RAX.i825.pre-phi, align 8
  %1206 = icmp ugt i32 %1202, -7
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %14, align 1
  %1208 = and i32 %1204, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %21, align 1
  %1213 = xor i32 %1204, %1202
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %27, align 1
  %1217 = icmp eq i32 %1204, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %30, align 1
  %1219 = lshr i32 %1204, 31
  %1220 = trunc i32 %1219 to i8
  store i8 %1220, i8* %33, align 1
  %1221 = xor i32 %1219, %1203
  %1222 = add nuw nsw i32 %1221, %1219
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %39, align 1
  %1225 = add i64 %1197, -76
  %1226 = add i64 %1196, 12
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  store i32 %1204, i32* %1227, align 4
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, 15
  br label %block_.L_478f84

block_.L_478f7a:                                  ; preds = %block_478f56
  store i64 0, i64* %RAX.i825.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -76
  %1232 = add i64 %1196, 5
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  store i32 0, i32* %1233, align 4
  %1234 = load i64, i64* %3, align 8
  %1235 = add i64 %1234, 5
  store i64 %1235, i64* %3, align 8
  br label %block_.L_478f84

block_.L_478f84:                                  ; preds = %block_.L_478f7a, %block_478f69
  %storemerge45 = phi i64 [ %1229, %block_478f69 ], [ %1235, %block_.L_478f7a ]
  %1236 = load i64, i64* %RBP.i, align 8
  %1237 = add i64 %1236, -76
  %1238 = add i64 %storemerge45, 3
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i825.pre-phi, align 8
  store i32 %1240, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*), align 8
  %1242 = add i64 %storemerge45, 71
  store i64 %1242, i64* %3, align 8
  br label %block_.L_478fcb

block_.L_478f93:                                  ; preds = %block_.L_478f37
  %1243 = add i32 %1169, -3
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i822, align 8
  %1245 = lshr i32 %1243, 31
  %1246 = sub i32 3, %1169
  %1247 = icmp ne i32 %1243, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1246, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i32 %1243, %1246
  %1255 = lshr i32 %1254, 4
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %27, align 1
  %1258 = icmp eq i32 %1246, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %30, align 1
  %1260 = lshr i32 %1246, 31
  %1261 = trunc i32 %1260 to i8
  store i8 %1261, i8* %33, align 1
  %1262 = add nuw nsw i32 %1260, %1245
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %39, align 1
  %1265 = icmp ne i8 %1261, 0
  %1266 = xor i1 %1265, %1263
  %.v119 = select i1 %1266, i64 19, i64 36
  %1267 = add i64 %1167, %.v119
  store i64 %1267, i64* %3, align 8
  br i1 %1266, label %block_478fa6, label %block_.L_478fb7

block_478fa6:                                     ; preds = %block_.L_478f93
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -4
  %1270 = add i64 %1267, 3
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = add i32 %1272, -9
  %1274 = lshr i32 %1273, 31
  %1275 = add i32 %1272, -3
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RAX.i825.pre-phi, align 8
  %1277 = icmp ugt i32 %1273, -7
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %14, align 1
  %1279 = and i32 %1275, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %21, align 1
  %1284 = xor i32 %1275, %1273
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %27, align 1
  %1288 = icmp eq i32 %1275, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1275, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  %1292 = xor i32 %1290, %1274
  %1293 = add nuw nsw i32 %1292, %1290
  %1294 = icmp eq i32 %1293, 2
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %39, align 1
  %1296 = add i64 %1268, -80
  %1297 = add i64 %1267, 12
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  store i32 %1275, i32* %1298, align 4
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, 15
  br label %block_.L_478fc1

block_.L_478fb7:                                  ; preds = %block_.L_478f93
  store i64 0, i64* %RAX.i825.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1301 = load i64, i64* %RBP.i, align 8
  %1302 = add i64 %1301, -80
  %1303 = add i64 %1267, 5
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  store i32 0, i32* %1304, align 4
  %1305 = load i64, i64* %3, align 8
  %1306 = add i64 %1305, 5
  store i64 %1306, i64* %3, align 8
  br label %block_.L_478fc1

block_.L_478fc1:                                  ; preds = %block_.L_478fb7, %block_478fa6
  %storemerge55 = phi i64 [ %1300, %block_478fa6 ], [ %1306, %block_.L_478fb7 ]
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -80
  %1309 = add i64 %storemerge55, 3
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i825.pre-phi, align 8
  %1313 = add i64 %storemerge55, 10
  store i64 %1313, i64* %3, align 8
  store i32 %1311, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*), align 8
  br label %block_.L_478fcb

block_.L_478fcb:                                  ; preds = %block_.L_478fc1, %block_.L_478f84
  %1314 = phi i64 [ %1313, %block_.L_478fc1 ], [ %1242, %block_.L_478f84 ]
  %1315 = phi i64 [ %1307, %block_.L_478fc1 ], [ %1236, %block_.L_478f84 ]
  %1316 = add i64 %1315, -4
  %1317 = add i64 %1314, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = add i32 %1319, -10
  %1321 = icmp ult i32 %1319, 10
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %14, align 1
  %1323 = and i32 %1320, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %21, align 1
  %1328 = xor i32 %1320, %1319
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %27, align 1
  %1332 = icmp eq i32 %1320, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %30, align 1
  %1334 = lshr i32 %1320, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %33, align 1
  %1336 = lshr i32 %1319, 31
  %1337 = xor i32 %1334, %1336
  %1338 = add nuw nsw i32 %1337, %1336
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %39, align 1
  %1341 = icmp ne i8 %1335, 0
  %1342 = xor i1 %1341, %1339
  %.v95 = select i1 %1342, i64 77, i64 10
  %1343 = add i64 %1314, %.v95
  store i64 %1343, i64* %3, align 8
  br i1 %1342, label %block_.L_479018, label %block_478fd5

block_478fd5:                                     ; preds = %block_.L_478fcb
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1344 = add i64 %1343, 8
  store i64 %1344, i64* %3, align 8
  %1345 = load i32, i32* %1318, align 4
  %1346 = add i32 %1345, -2
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RCX.i822, align 8
  %1348 = lshr i32 %1346, 31
  %1349 = sub i32 3, %1345
  %1350 = icmp ugt i32 %1346, 1
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %14, align 1
  %1352 = and i32 %1349, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %21, align 1
  %1357 = xor i32 %1346, %1349
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %27, align 1
  %1361 = icmp eq i32 %1349, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %30, align 1
  %1363 = lshr i32 %1349, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %33, align 1
  %1365 = add nuw nsw i32 %1363, %1348
  %1366 = icmp eq i32 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %39, align 1
  %1368 = icmp ne i8 %1364, 0
  %1369 = xor i1 %1368, %1366
  %.v96 = select i1 %1369, i64 22, i64 39
  %1370 = add i64 %1343, %.v96
  store i64 %1370, i64* %3, align 8
  br i1 %1369, label %block_478feb, label %block_.L_478ffc

block_478feb:                                     ; preds = %block_478fd5
  %1371 = load i64, i64* %RBP.i, align 8
  %1372 = add i64 %1371, -4
  %1373 = add i64 %1370, 3
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = add i32 %1375, -10
  %1377 = lshr i32 %1376, 31
  %1378 = add i32 %1375, -2
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RAX.i825.pre-phi, align 8
  %1380 = icmp ugt i32 %1376, -9
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %14, align 1
  %1382 = and i32 %1378, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  %1387 = xor i32 %1378, %1376
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  store i8 %1390, i8* %27, align 1
  %1391 = icmp eq i32 %1378, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %30, align 1
  %1393 = lshr i32 %1378, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %33, align 1
  %1395 = xor i32 %1393, %1377
  %1396 = add nuw nsw i32 %1395, %1393
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %39, align 1
  %1399 = add i64 %1371, -84
  %1400 = add i64 %1370, 12
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  store i32 %1378, i32* %1401, align 4
  %1402 = load i64, i64* %3, align 8
  %1403 = add i64 %1402, 18
  br label %block_.L_479009

block_.L_478ffc:                                  ; preds = %block_478fd5
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -84
  %1406 = add i64 %1370, 8
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  store i32 1, i32* %1407, align 4
  %1408 = load i64, i64* %3, align 8
  %1409 = add i64 %1408, 5
  store i64 %1409, i64* %3, align 8
  br label %block_.L_479009

block_.L_479009:                                  ; preds = %block_.L_478ffc, %block_478feb
  %storemerge46 = phi i64 [ %1403, %block_478feb ], [ %1409, %block_.L_478ffc ]
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -84
  %1412 = add i64 %storemerge46, 3
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RAX.i825.pre-phi, align 8
  %1416 = add i64 %storemerge46, 10
  store i64 %1416, i64* %3, align 8
  store i32 %1414, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %1417 = add i64 %storemerge46, 159
  br label %block_.L_4790a8

block_.L_479018:                                  ; preds = %block_.L_478fcb
  %1418 = add i64 %1343, 4
  store i64 %1418, i64* %3, align 8
  %1419 = load i32, i32* %1318, align 4
  %1420 = add i32 %1419, -7
  %1421 = icmp ult i32 %1419, 7
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %14, align 1
  %1423 = and i32 %1420, 255
  %1424 = tail call i32 @llvm.ctpop.i32(i32 %1423)
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = xor i8 %1426, 1
  store i8 %1427, i8* %21, align 1
  %1428 = xor i32 %1420, %1419
  %1429 = lshr i32 %1428, 4
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  store i8 %1431, i8* %27, align 1
  %1432 = icmp eq i32 %1420, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %30, align 1
  %1434 = lshr i32 %1420, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %33, align 1
  %1436 = lshr i32 %1419, 31
  %1437 = xor i32 %1434, %1436
  %1438 = add nuw nsw i32 %1437, %1436
  %1439 = icmp eq i32 %1438, 2
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %39, align 1
  %.v116 = select i1 %1432, i64 77, i64 10
  %1441 = add i64 %1343, %.v116
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1442 = add i64 %1441, 8
  store i64 %1442, i64* %3, align 8
  %1443 = load i32, i32* %1318, align 4
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RCX.i822, align 8
  %1445 = add i64 %1441, 11
  store i64 %1445, i64* %3, align 8
  br i1 %1432, label %block_.L_479065, label %block_479022

block_479022:                                     ; preds = %block_.L_479018
  %1446 = add i32 %1443, -1
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RCX.i822, align 8
  %1448 = lshr i32 %1446, 31
  %1449 = sub i32 2, %1443
  %1450 = icmp ugt i32 %1446, 1
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %14, align 1
  %1452 = and i32 %1449, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %21, align 1
  %1457 = xor i32 %1446, %1449
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  store i8 %1460, i8* %27, align 1
  %1461 = icmp eq i32 %1449, 0
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %30, align 1
  %1463 = lshr i32 %1449, 31
  %1464 = trunc i32 %1463 to i8
  store i8 %1464, i8* %33, align 1
  %1465 = add nuw nsw i32 %1463, %1448
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %39, align 1
  %1468 = icmp ne i8 %1464, 0
  %1469 = xor i1 %1468, %1466
  %.v117 = select i1 %1469, i64 22, i64 39
  %1470 = add i64 %1441, %.v117
  store i64 %1470, i64* %3, align 8
  br i1 %1469, label %block_479038, label %block_.L_479049

block_479038:                                     ; preds = %block_479022
  %1471 = add i64 %1470, 3
  store i64 %1471, i64* %3, align 8
  %1472 = load i32, i32* %1318, align 4
  %1473 = add i32 %1472, -9
  %1474 = lshr i32 %1473, 31
  %1475 = add i32 %1472, -1
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RAX.i825.pre-phi, align 8
  %1477 = icmp ugt i32 %1473, -9
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %14, align 1
  %1479 = and i32 %1475, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %21, align 1
  %1484 = xor i32 %1475, %1473
  %1485 = lshr i32 %1484, 4
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %27, align 1
  %1488 = icmp eq i32 %1475, 0
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %30, align 1
  %1490 = lshr i32 %1475, 31
  %1491 = trunc i32 %1490 to i8
  store i8 %1491, i8* %33, align 1
  %1492 = xor i32 %1490, %1474
  %1493 = add nuw nsw i32 %1492, %1490
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %39, align 1
  %1496 = add i64 %1315, -88
  %1497 = add i64 %1470, 12
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  store i32 %1475, i32* %1498, align 4
  %1499 = load i64, i64* %3, align 8
  %1500 = add i64 %1499, 18
  br label %block_.L_479056

block_.L_479049:                                  ; preds = %block_479022
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1501 = add i64 %1315, -88
  %1502 = add i64 %1470, 8
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  store i32 1, i32* %1503, align 4
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %3, align 8
  br label %block_.L_479056

block_.L_479056:                                  ; preds = %block_.L_479049, %block_479038
  %storemerge53 = phi i64 [ %1500, %block_479038 ], [ %1505, %block_.L_479049 ]
  %1506 = load i64, i64* %RBP.i, align 8
  %1507 = add i64 %1506, -88
  %1508 = add i64 %storemerge53, 3
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i825.pre-phi, align 8
  store i32 %1510, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %1512 = add i64 %storemerge53, 77
  store i64 %1512, i64* %3, align 8
  br label %block_.L_4790a3

block_.L_479065:                                  ; preds = %block_.L_479018
  %1513 = lshr i32 %1443, 31
  store i64 %1444, i64* %RCX.i822, align 8
  %1514 = sub i32 1, %1443
  %1515 = icmp ugt i32 %1443, 1
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %14, align 1
  %1517 = and i32 %1514, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %21, align 1
  %1522 = xor i32 %1443, %1514
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %27, align 1
  %1526 = icmp eq i32 %1514, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %30, align 1
  %1528 = lshr i32 %1514, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %33, align 1
  %1530 = add nuw nsw i32 %1528, %1513
  %1531 = icmp eq i32 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %39, align 1
  %1533 = icmp ne i8 %1529, 0
  %1534 = xor i1 %1533, %1531
  %.v118 = select i1 %1534, i64 22, i64 39
  %1535 = add i64 %1441, %.v118
  store i64 %1535, i64* %3, align 8
  br i1 %1534, label %block_47907b, label %block_.L_47908c

block_47907b:                                     ; preds = %block_.L_479065
  %1536 = add i64 %1535, 3
  store i64 %1536, i64* %3, align 8
  %1537 = load i32, i32* %1318, align 4
  %1538 = zext i32 %1537 to i64
  %1539 = add i32 %1537, -8
  %1540 = xor i32 %1539, %1537
  %1541 = lshr i32 %1540, 4
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = lshr i32 %1539, 31
  %1545 = lshr i32 %1537, 31
  %1546 = xor i32 %1544, %1545
  %1547 = add nuw nsw i32 %1546, %1545
  %1548 = icmp eq i32 %1547, 2
  %1549 = zext i1 %1548 to i8
  store i64 %1538, i64* %RAX.i825.pre-phi, align 8
  %1550 = icmp ult i32 %1537, 8
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %14, align 1
  %1552 = and i32 %1537, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %21, align 1
  store i8 %1543, i8* %27, align 1
  %1557 = icmp eq i32 %1537, 0
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %30, align 1
  %1559 = trunc i32 %1545 to i8
  store i8 %1559, i8* %33, align 1
  store i8 %1549, i8* %39, align 1
  %1560 = add i64 %1315, -92
  %1561 = add i64 %1535, 12
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i32*
  store i32 %1537, i32* %1562, align 4
  %1563 = load i64, i64* %3, align 8
  %1564 = add i64 %1563, 18
  br label %block_.L_479099

block_.L_47908c:                                  ; preds = %block_.L_479065
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1565 = add i64 %1315, -92
  %1566 = add i64 %1535, 8
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  store i32 1, i32* %1567, align 4
  %1568 = load i64, i64* %3, align 8
  %1569 = add i64 %1568, 5
  store i64 %1569, i64* %3, align 8
  br label %block_.L_479099

block_.L_479099:                                  ; preds = %block_.L_47908c, %block_47907b
  %storemerge54 = phi i64 [ %1564, %block_47907b ], [ %1569, %block_.L_47908c ]
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -92
  %1572 = add i64 %storemerge54, 3
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = zext i32 %1574 to i64
  store i64 %1575, i64* %RAX.i825.pre-phi, align 8
  %1576 = add i64 %storemerge54, 10
  store i64 %1576, i64* %3, align 8
  store i32 %1574, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  br label %block_.L_4790a3

block_.L_4790a3:                                  ; preds = %block_.L_479099, %block_.L_479056
  %1577 = phi i64 [ %1570, %block_.L_479099 ], [ %1506, %block_.L_479056 ]
  %1578 = phi i64 [ %1576, %block_.L_479099 ], [ %1512, %block_.L_479056 ]
  %1579 = add i64 %1578, 5
  store i64 %1579, i64* %3, align 8
  br label %block_.L_4790a8

block_.L_4790a8:                                  ; preds = %block_.L_4790a3, %block_.L_479009
  %1580 = phi i64 [ %1410, %block_.L_479009 ], [ %1577, %block_.L_4790a3 ]
  %storemerge47 = phi i64 [ %1417, %block_.L_479009 ], [ %1579, %block_.L_4790a3 ]
  %1581 = add i64 %1580, -4
  %1582 = add i64 %storemerge47, 4
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = add i32 %1584, -10
  %1586 = icmp ult i32 %1584, 10
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %14, align 1
  %1588 = and i32 %1585, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %21, align 1
  %1593 = xor i32 %1585, %1584
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i32 %1585, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i32 %1585, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i32 %1584, 31
  %1602 = xor i32 %1599, %1601
  %1603 = add nuw nsw i32 %1602, %1601
  %1604 = icmp eq i32 %1603, 2
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %39, align 1
  %1606 = icmp ne i8 %1600, 0
  %1607 = xor i1 %1606, %1604
  %.v97 = select i1 %1607, i64 77, i64 10
  %1608 = add i64 %storemerge47, %.v97
  store i64 %1608, i64* %3, align 8
  br i1 %1607, label %block_.L_4790f5, label %block_4790b2

block_4790b2:                                     ; preds = %block_.L_4790a8
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1609 = add i64 %1608, 8
  store i64 %1609, i64* %3, align 8
  %1610 = load i32, i32* %1583, align 4
  %1611 = add i32 %1610, -3
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %RCX.i822, align 8
  %1613 = lshr i32 %1611, 31
  %1614 = sub i32 4, %1610
  %1615 = icmp ugt i32 %1611, 1
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %14, align 1
  %1617 = and i32 %1614, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %21, align 1
  %1622 = xor i32 %1611, %1614
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %27, align 1
  %1626 = icmp eq i32 %1614, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %30, align 1
  %1628 = lshr i32 %1614, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %33, align 1
  %1630 = add nuw nsw i32 %1628, %1613
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %39, align 1
  %1633 = icmp ne i8 %1629, 0
  %1634 = xor i1 %1633, %1631
  %.v98 = select i1 %1634, i64 22, i64 39
  %1635 = add i64 %1608, %.v98
  store i64 %1635, i64* %3, align 8
  br i1 %1634, label %block_4790c8, label %block_.L_4790d9

block_4790c8:                                     ; preds = %block_4790b2
  %1636 = load i64, i64* %RBP.i, align 8
  %1637 = add i64 %1636, -4
  %1638 = add i64 %1635, 3
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = add i32 %1640, -10
  %1642 = lshr i32 %1641, 31
  %1643 = add i32 %1640, -3
  %1644 = zext i32 %1643 to i64
  store i64 %1644, i64* %RAX.i825.pre-phi, align 8
  %1645 = icmp ugt i32 %1641, -8
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %14, align 1
  %1647 = and i32 %1643, 255
  %1648 = tail call i32 @llvm.ctpop.i32(i32 %1647)
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  store i8 %1651, i8* %21, align 1
  %1652 = xor i32 %1643, %1641
  %1653 = lshr i32 %1652, 4
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  store i8 %1655, i8* %27, align 1
  %1656 = icmp eq i32 %1643, 0
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %30, align 1
  %1658 = lshr i32 %1643, 31
  %1659 = trunc i32 %1658 to i8
  store i8 %1659, i8* %33, align 1
  %1660 = xor i32 %1658, %1642
  %1661 = add nuw nsw i32 %1660, %1658
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %39, align 1
  %1664 = add i64 %1636, -96
  %1665 = add i64 %1635, 12
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  store i32 %1643, i32* %1666, align 4
  %1667 = load i64, i64* %3, align 8
  %1668 = add i64 %1667, 18
  br label %block_.L_4790e6

block_.L_4790d9:                                  ; preds = %block_4790b2
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -96
  %1671 = add i64 %1635, 8
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  store i32 1, i32* %1672, align 4
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 5
  store i64 %1674, i64* %3, align 8
  br label %block_.L_4790e6

block_.L_4790e6:                                  ; preds = %block_.L_4790d9, %block_4790c8
  %storemerge48 = phi i64 [ %1668, %block_4790c8 ], [ %1674, %block_.L_4790d9 ]
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -96
  %1677 = add i64 %storemerge48, 3
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = zext i32 %1679 to i64
  store i64 %1680, i64* %RAX.i825.pre-phi, align 8
  %1681 = add i64 %storemerge48, 10
  store i64 %1681, i64* %3, align 8
  store i32 %1679, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  %1682 = add i64 %storemerge48, 108
  br label %block_.L_479152

block_.L_4790f5:                                  ; preds = %block_.L_4790a8
  %1683 = add i64 %1608, 4
  store i64 %1683, i64* %3, align 8
  %1684 = load i32, i32* %1583, align 4
  %1685 = add i32 %1684, -7
  %1686 = icmp ult i32 %1684, 7
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %14, align 1
  %1688 = and i32 %1685, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %21, align 1
  %1693 = xor i32 %1685, %1684
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %27, align 1
  %1697 = icmp eq i32 %1685, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %30, align 1
  %1699 = lshr i32 %1685, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %33, align 1
  %1701 = lshr i32 %1684, 31
  %1702 = xor i32 %1699, %1701
  %1703 = add nuw nsw i32 %1702, %1701
  %1704 = icmp eq i32 %1703, 2
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %39, align 1
  %1706 = icmp ne i8 %1700, 0
  %1707 = xor i1 %1706, %1704
  %.v114 = select i1 %1707, i64 26, i64 10
  %1708 = add i64 %1608, %.v114
  store i64 %1708, i64* %3, align 8
  br i1 %1707, label %block_.L_47910f, label %block_4790ff

block_4790ff:                                     ; preds = %block_.L_4790f5
  store i32 7, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  %1709 = add i64 %1708, 78
  store i64 %1709, i64* %3, align 8
  br label %block_.L_47914d

block_.L_47910f:                                  ; preds = %block_.L_4790f5
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1710 = add i64 %1708, 8
  store i64 %1710, i64* %3, align 8
  %1711 = load i32, i32* %1583, align 4
  %1712 = zext i32 %1711 to i64
  %1713 = lshr i32 %1711, 31
  store i64 %1712, i64* %RCX.i822, align 8
  %1714 = sub i32 1, %1711
  %1715 = icmp ugt i32 %1711, 1
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %14, align 1
  %1717 = and i32 %1714, 255
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %21, align 1
  %1722 = xor i32 %1711, %1714
  %1723 = lshr i32 %1722, 4
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  store i8 %1725, i8* %27, align 1
  %1726 = icmp eq i32 %1714, 0
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %30, align 1
  %1728 = lshr i32 %1714, 31
  %1729 = trunc i32 %1728 to i8
  store i8 %1729, i8* %33, align 1
  %1730 = add nuw nsw i32 %1728, %1713
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %39, align 1
  %1733 = icmp ne i8 %1729, 0
  %1734 = xor i1 %1733, %1731
  %.v115 = select i1 %1734, i64 22, i64 39
  %1735 = add i64 %1708, %.v115
  store i64 %1735, i64* %3, align 8
  br i1 %1734, label %block_479125, label %block_.L_479136

block_479125:                                     ; preds = %block_.L_47910f
  %1736 = add i64 %1735, 3
  store i64 %1736, i64* %3, align 8
  %1737 = load i32, i32* %1583, align 4
  %1738 = zext i32 %1737 to i64
  %1739 = add i32 %1737, -7
  %1740 = xor i32 %1739, %1737
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = lshr i32 %1739, 31
  %1745 = lshr i32 %1737, 31
  %1746 = xor i32 %1744, %1745
  %1747 = add nuw nsw i32 %1746, %1745
  %1748 = icmp eq i32 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i64 %1738, i64* %RAX.i825.pre-phi, align 8
  %1750 = icmp ult i32 %1737, 7
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %14, align 1
  %1752 = and i32 %1737, 255
  %1753 = tail call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  store i8 %1756, i8* %21, align 1
  store i8 %1743, i8* %27, align 1
  %1757 = icmp eq i32 %1737, 0
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %30, align 1
  %1759 = trunc i32 %1745 to i8
  store i8 %1759, i8* %33, align 1
  store i8 %1749, i8* %39, align 1
  %1760 = add i64 %1580, -100
  %1761 = add i64 %1735, 12
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  store i32 %1737, i32* %1762, align 4
  %1763 = load i64, i64* %3, align 8
  %1764 = add i64 %1763, 18
  br label %block_.L_479143

block_.L_479136:                                  ; preds = %block_.L_47910f
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1765 = add i64 %1580, -100
  %1766 = add i64 %1735, 8
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  store i32 1, i32* %1767, align 4
  %1768 = load i64, i64* %3, align 8
  %1769 = add i64 %1768, 5
  store i64 %1769, i64* %3, align 8
  br label %block_.L_479143

block_.L_479143:                                  ; preds = %block_.L_479136, %block_479125
  %storemerge52 = phi i64 [ %1764, %block_479125 ], [ %1769, %block_.L_479136 ]
  %1770 = load i64, i64* %RBP.i, align 8
  %1771 = add i64 %1770, -100
  %1772 = add i64 %storemerge52, 3
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RAX.i825.pre-phi, align 8
  %1776 = add i64 %storemerge52, 10
  store i64 %1776, i64* %3, align 8
  store i32 %1774, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  br label %block_.L_47914d

block_.L_47914d:                                  ; preds = %block_.L_479143, %block_4790ff
  %1777 = phi i64 [ %1770, %block_.L_479143 ], [ %1580, %block_4790ff ]
  %1778 = phi i64 [ %1776, %block_.L_479143 ], [ %1709, %block_4790ff ]
  %1779 = add i64 %1778, 5
  store i64 %1779, i64* %3, align 8
  br label %block_.L_479152

block_.L_479152:                                  ; preds = %block_.L_47914d, %block_.L_4790e6
  %1780 = phi i64 [ %1675, %block_.L_4790e6 ], [ %1777, %block_.L_47914d ]
  %storemerge49 = phi i64 [ %1682, %block_.L_4790e6 ], [ %1779, %block_.L_47914d ]
  %1781 = add i64 %1780, -4
  %1782 = add i64 %storemerge49, 4
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = add i32 %1784, -10
  %1786 = icmp ult i32 %1784, 10
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %14, align 1
  %1788 = and i32 %1785, 255
  %1789 = tail call i32 @llvm.ctpop.i32(i32 %1788)
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  store i8 %1792, i8* %21, align 1
  %1793 = xor i32 %1785, %1784
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  store i8 %1796, i8* %27, align 1
  %1797 = icmp eq i32 %1785, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %30, align 1
  %1799 = lshr i32 %1785, 31
  %1800 = trunc i32 %1799 to i8
  store i8 %1800, i8* %33, align 1
  %1801 = lshr i32 %1784, 31
  %1802 = xor i32 %1799, %1801
  %1803 = add nuw nsw i32 %1802, %1801
  %1804 = icmp eq i32 %1803, 2
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %39, align 1
  %1806 = icmp ne i8 %1800, 0
  %1807 = xor i1 %1806, %1804
  %.v99 = select i1 %1807, i64 118, i64 10
  %1808 = add i64 %storemerge49, %.v99
  %1809 = add i64 %1808, 5
  store i64 %1809, i64* %3, align 8
  br i1 %1807, label %block_.L_4791c8, label %block_47915c

block_47915c:                                     ; preds = %block_.L_479152
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1810 = add i64 %1808, 8
  store i64 %1810, i64* %3, align 8
  %1811 = load i32, i32* %1783, align 4
  %1812 = add i32 %1811, -3
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RCX.i822, align 8
  %1814 = lshr i32 %1812, 31
  %1815 = sub i32 4, %1811
  %1816 = icmp ugt i32 %1812, 1
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %14, align 1
  %1818 = and i32 %1815, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %21, align 1
  %1823 = xor i32 %1812, %1815
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %27, align 1
  %1827 = icmp eq i32 %1815, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %30, align 1
  %1829 = lshr i32 %1815, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %33, align 1
  %1831 = add nuw nsw i32 %1829, %1814
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %39, align 1
  %1834 = icmp ne i8 %1830, 0
  %1835 = xor i1 %1834, %1832
  %.v100 = select i1 %1835, i64 22, i64 39
  %1836 = add i64 %1808, %.v100
  store i64 %1836, i64* %3, align 8
  br i1 %1835, label %block_479172, label %block_.L_479183

block_479172:                                     ; preds = %block_47915c
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -4
  %1839 = add i64 %1836, 3
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = add i32 %1841, -10
  %1843 = lshr i32 %1842, 31
  %1844 = add i32 %1841, -3
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RAX.i825.pre-phi, align 8
  %1846 = icmp ugt i32 %1842, -8
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %14, align 1
  %1848 = and i32 %1844, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  %1853 = xor i32 %1844, %1842
  %1854 = lshr i32 %1853, 4
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  store i8 %1856, i8* %27, align 1
  %1857 = icmp eq i32 %1844, 0
  %1858 = zext i1 %1857 to i8
  store i8 %1858, i8* %30, align 1
  %1859 = lshr i32 %1844, 31
  %1860 = trunc i32 %1859 to i8
  store i8 %1860, i8* %33, align 1
  %1861 = xor i32 %1859, %1843
  %1862 = add nuw nsw i32 %1861, %1859
  %1863 = icmp eq i32 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %39, align 1
  %1865 = add i64 %1837, -104
  %1866 = add i64 %1836, 12
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  store i32 %1844, i32* %1867, align 4
  %1868 = load i64, i64* %3, align 8
  %1869 = add i64 %1868, 18
  br label %block_.L_479190

block_.L_479183:                                  ; preds = %block_47915c
  store i64 1, i64* %RAX.i825.pre-phi, align 8
  %1870 = load i64, i64* %RBP.i, align 8
  %1871 = add i64 %1870, -104
  %1872 = add i64 %1836, 8
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i32*
  store i32 1, i32* %1873, align 4
  %1874 = load i64, i64* %3, align 8
  %1875 = add i64 %1874, 5
  store i64 %1875, i64* %3, align 8
  br label %block_.L_479190

block_.L_479190:                                  ; preds = %block_.L_479183, %block_479172
  %storemerge50 = phi i64 [ %1869, %block_479172 ], [ %1875, %block_.L_479183 ]
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -104
  %1878 = add i64 %storemerge50, 3
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RAX.i825.pre-phi, align 8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1883 = add i64 %storemerge50, add (i64 ptrtoint (%G_0x69dbd__rip__type* @G_0x69dbd__rip_ to i64), i64 3)
  %1884 = add i64 %storemerge50, 11
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i64*
  %1886 = load i64, i64* %1885, align 8
  %1887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1882, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1886, i64* %1887, align 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1889 = bitcast i64* %1888 to double*
  store double 0.000000e+00, double* %1889, align 1
  store i32 %1880, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1891 = add i64 %1876, -8
  %1892 = add i64 %storemerge50, 23
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to i32*
  %1894 = load i32, i32* %1893, align 4
  %1895 = sitofp i32 %1894 to double
  %1896 = bitcast %union.VectorReg* %1890 to double*
  store double %1895, double* %1896, align 1
  %1897 = add i64 %storemerge50, -491792
  %1898 = add i64 %storemerge50, 28
  %1899 = load i64, i64* %6, align 8
  %1900 = add i64 %1899, -8
  %1901 = inttoptr i64 %1900 to i64*
  store i64 %1898, i64* %1901, align 8
  store i64 %1900, i64* %6, align 8
  store i64 %1897, i64* %3, align 8
  %1902 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %MEMORY.10)
  %1903 = load i64, i64* %3, align 8
  %1904 = add i64 %1903, ptrtoint (%G_0x69d84__rip__type* @G_0x69d84__rip_ to i64)
  %1905 = add i64 %1903, 8
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to double*
  %1907 = load double, double* %1906, align 8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1909 = bitcast [32 x %union.VectorReg]* %1882 to double*
  %1910 = load double, double* %1909, align 1
  %1911 = fmul double %1907, %1910
  store double %1911, double* %1896, align 1
  store i64 0, i64* %1908, align 1
  %1912 = tail call double @llvm.trunc.f64(double %1911)
  %1913 = tail call double @llvm.fabs.f64(double %1912)
  %1914 = fcmp ogt double %1913, 0x41DFFFFFFFC00000
  %1915 = fptosi double %1912 to i32
  %1916 = zext i32 %1915 to i64
  %1917 = select i1 %1914, i64 2147483648, i64 %1916
  store i64 %1917, i64* %RAX.i825.pre-phi, align 8
  %1918 = trunc i64 %1917 to i32
  store i32 %1918, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
  %1919 = add i64 %1903, 140
  store i64 %1919, i64* %3, align 8
  br label %block_.L_479238

block_.L_4791c8:                                  ; preds = %block_.L_479152
  store i64 20, i64* %RAX.i825.pre-phi, align 8
  store i64 10, i64* %RCX.i822, align 8
  store i32 0, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  %1920 = add i64 %1808, 24
  store i64 %1920, i64* %3, align 8
  %1921 = load i32, i32* %1783, align 4
  %1922 = sub i32 10, %1921
  %1923 = zext i32 %1922 to i64
  store i64 %1923, i64* %RCX.i822, align 8
  %1924 = icmp ugt i32 %1921, 10
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %14, align 1
  %1926 = and i32 %1922, 255
  %1927 = tail call i32 @llvm.ctpop.i32(i32 %1926)
  %1928 = trunc i32 %1927 to i8
  %1929 = and i8 %1928, 1
  %1930 = xor i8 %1929, 1
  store i8 %1930, i8* %21, align 1
  %1931 = xor i32 %1922, %1921
  %1932 = lshr i32 %1931, 4
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  store i8 %1934, i8* %27, align 1
  %1935 = icmp eq i32 %1922, 0
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %30, align 1
  %1937 = lshr i32 %1922, 31
  %1938 = trunc i32 %1937 to i8
  store i8 %1938, i8* %33, align 1
  %1939 = lshr i32 %1921, 31
  %1940 = add nuw nsw i32 %1937, %1939
  %1941 = icmp eq i32 %1940, 2
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %39, align 1
  %1943 = sext i32 %1922 to i64
  store i64 %1943, i64* %RDX.i628, align 8
  %1944 = shl nsw i64 %1943, 2
  %1945 = add nsw i64 %1944, 8060384
  %1946 = add i64 %1808, 38
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sext i32 %1948 to i64
  %1950 = mul nsw i64 %1949, 1000
  %1951 = trunc i64 %1950 to i32
  %1952 = and i64 %1950, 4294967288
  store i64 %1952, i64* %RCX.i822, align 8
  %1953 = mul i64 %1949, 4294967296000
  %1954 = ashr exact i64 %1953, 32
  %1955 = icmp ne i64 %1954, %1950
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %14, align 1
  %1957 = and i32 %1951, 248
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1962 = lshr i32 %1951, 31
  %1963 = trunc i32 %1962 to i8
  store i8 %1963, i8* %33, align 1
  store i8 %1956, i8* %39, align 1
  %1964 = add i64 %1780, -108
  %1965 = add i64 %1808, 41
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i32*
  store i32 20, i32* %1966, align 4
  %1967 = load i32, i32* %ECX.i818, align 4
  %1968 = zext i32 %1967 to i64
  %1969 = load i64, i64* %3, align 8
  store i64 %1968, i64* %RAX.i825.pre-phi, align 8
  %1970 = sext i32 %1967 to i64
  %1971 = lshr i64 %1970, 32
  store i64 %1971, i64* %.pre-phi82, align 8
  %1972 = add i64 %1969, 10
  store i64 %1972, i64* %3, align 8
  %1973 = load i32, i32* bitcast (%G_0x7afde0_type* @G_0x7afde0 to i32*), align 8
  %1974 = sext i32 %1973 to i64
  %1975 = shl nuw i64 %1971, 32
  %1976 = or i64 %1975, %1968
  %1977 = sdiv i64 %1976, %1974
  %1978 = shl i64 %1977, 32
  %1979 = ashr exact i64 %1978, 32
  %1980 = icmp eq i64 %1977, %1979
  br i1 %1980, label %1983, label %1981

; <label>:1981:                                   ; preds = %block_.L_4791c8
  %1982 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1972, %struct.Memory* %MEMORY.10)
  %.pre79 = load i32, i32* %EAX.i817.pre-phi, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %routine_idivl_0x7afde0.exit

; <label>:1983:                                   ; preds = %block_.L_4791c8
  %1984 = srem i64 %1976, %1974
  %1985 = and i64 %1977, 4294967295
  store i64 %1985, i64* %RAX.i825.pre-phi, align 8
  %1986 = and i64 %1984, 4294967295
  store i64 %1986, i64* %RDX.i628, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1987 = trunc i64 %1977 to i32
  br label %routine_idivl_0x7afde0.exit

routine_idivl_0x7afde0.exit:                      ; preds = %1983, %1981
  %1988 = phi i64 [ %.pre80, %1981 ], [ %1972, %1983 ]
  %1989 = phi i32 [ %.pre79, %1981 ], [ %1987, %1983 ]
  %1990 = phi %struct.Memory* [ %1982, %1981 ], [ %MEMORY.10, %1983 ]
  store i32 %1989, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -108
  %1993 = add i64 %1988, 10
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = zext i32 %1995 to i64
  store i64 %1996, i64* %RAX.i825.pre-phi, align 8
  %1997 = sub i32 %1995, %1989
  %1998 = icmp ult i32 %1995, %1989
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %14, align 1
  %2000 = and i32 %1997, 255
  %2001 = tail call i32 @llvm.ctpop.i32(i32 %2000)
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = xor i8 %2003, 1
  store i8 %2004, i8* %21, align 1
  %2005 = xor i32 %1989, %1995
  %2006 = xor i32 %2005, %1997
  %2007 = lshr i32 %2006, 4
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  store i8 %2009, i8* %27, align 1
  %2010 = icmp eq i32 %1997, 0
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %30, align 1
  %2012 = lshr i32 %1997, 31
  %2013 = trunc i32 %2012 to i8
  store i8 %2013, i8* %33, align 1
  %2014 = lshr i32 %1995, 31
  %2015 = lshr i32 %1989, 31
  %2016 = xor i32 %2015, %2014
  %2017 = xor i32 %2012, %2014
  %2018 = add nuw nsw i32 %2017, %2016
  %2019 = icmp eq i32 %2018, 2
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %39, align 1
  %2021 = icmp ne i8 %2013, 0
  %2022 = xor i1 %2021, %2019
  %.v113 = select i1 %2022, i64 23, i64 38
  %2023 = add i64 %1988, %.v113
  store i64 %2023, i64* %3, align 8
  br i1 %2022, label %block_479212, label %block_.L_479221

block_479212:                                     ; preds = %routine_idivl_0x7afde0.exit
  %2024 = zext i32 %1989 to i64
  store i64 %2024, i64* %RAX.i825.pre-phi, align 8
  %2025 = add i64 %1991, -112
  %2026 = add i64 %2023, 10
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  store i32 %1989, i32* %2027, align 4
  %2028 = load i64, i64* %3, align 8
  %2029 = add i64 %2028, 18
  br label %block_.L_47922e

block_.L_479221:                                  ; preds = %routine_idivl_0x7afde0.exit
  store i64 20, i64* %RAX.i825.pre-phi, align 8
  %2030 = add i64 %1991, -112
  %2031 = add i64 %2023, 8
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  store i32 20, i32* %2032, align 4
  %2033 = load i64, i64* %3, align 8
  %2034 = add i64 %2033, 5
  store i64 %2034, i64* %3, align 8
  br label %block_.L_47922e

block_.L_47922e:                                  ; preds = %block_.L_479221, %block_479212
  %storemerge51 = phi i64 [ %2029, %block_479212 ], [ %2034, %block_.L_479221 ]
  %2035 = load i64, i64* %RBP.i, align 8
  %2036 = add i64 %2035, -112
  %2037 = add i64 %storemerge51, 3
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RAX.i825.pre-phi, align 8
  %2041 = add i64 %storemerge51, 10
  store i64 %2041, i64* %3, align 8
  store i32 %2039, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
  br label %block_.L_479238

block_.L_479238:                                  ; preds = %block_.L_47922e, %block_.L_479190
  %2042 = phi i64 [ %2041, %block_.L_47922e ], [ %1919, %block_.L_479190 ]
  %MEMORY.25 = phi %struct.Memory* [ %1990, %block_.L_47922e ], [ %1902, %block_.L_479190 ]
  %2043 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*), align 8
  %2044 = add i32 %2043, 1
  %2045 = icmp ne i32 %2043, -1
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %14, align 1
  %2047 = and i32 %2044, 255
  %2048 = tail call i32 @llvm.ctpop.i32(i32 %2047)
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = xor i8 %2050, 1
  store i8 %2051, i8* %21, align 1
  %2052 = xor i32 %2043, 16
  %2053 = xor i32 %2052, %2044
  %2054 = lshr i32 %2053, 4
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  store i8 %2056, i8* %27, align 1
  %2057 = icmp eq i32 %2044, 0
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %30, align 1
  %2059 = lshr i32 %2044, 31
  %2060 = trunc i32 %2059 to i8
  store i8 %2060, i8* %33, align 1
  %2061 = lshr i32 %2043, 31
  %2062 = xor i32 %2061, 1
  %2063 = xor i32 %2059, %2061
  %2064 = add nuw nsw i32 %2063, %2062
  %2065 = icmp eq i32 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %39, align 1
  %.v101 = select i1 %2057, i64 28, i64 14
  %2067 = add i64 %2042, %.v101
  store i64 %2067, i64* %3, align 8
  br i1 %2057, label %block_.L_479254, label %block_479246

block_479246:                                     ; preds = %block_.L_479238
  %2068 = zext i32 %2043 to i64
  store i64 %2068, i64* %RAX.i825.pre-phi, align 8
  %2069 = add i64 %2067, 14
  store i64 %2069, i64* %3, align 8
  store i32 %2043, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  br label %block_.L_479254

block_.L_479254:                                  ; preds = %block_479246, %block_.L_479238
  %2070 = phi i64 [ %2069, %block_479246 ], [ %2067, %block_.L_479238 ]
  %2071 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*), align 8
  %2072 = add i32 %2071, 1
  %2073 = icmp ne i32 %2071, -1
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %14, align 1
  %2075 = and i32 %2072, 255
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  %2080 = xor i32 %2071, 16
  %2081 = xor i32 %2080, %2072
  %2082 = lshr i32 %2081, 4
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  store i8 %2084, i8* %27, align 1
  %2085 = icmp eq i32 %2072, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %30, align 1
  %2087 = lshr i32 %2072, 31
  %2088 = trunc i32 %2087 to i8
  store i8 %2088, i8* %33, align 1
  %2089 = lshr i32 %2071, 31
  %2090 = xor i32 %2089, 1
  %2091 = xor i32 %2087, %2089
  %2092 = add nuw nsw i32 %2091, %2090
  %2093 = icmp eq i32 %2092, 2
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %39, align 1
  %.v102 = select i1 %2085, i64 28, i64 14
  %2095 = add i64 %2070, %.v102
  store i64 %2095, i64* %3, align 8
  br i1 %2085, label %block_.L_479270, label %block_479262

block_479262:                                     ; preds = %block_.L_479254
  %2096 = zext i32 %2071 to i64
  store i64 %2096, i64* %RAX.i825.pre-phi, align 8
  %2097 = add i64 %2095, 14
  store i64 %2097, i64* %3, align 8
  store i32 %2071, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  br label %block_.L_479270

block_.L_479270:                                  ; preds = %block_479262, %block_.L_479254
  %2098 = phi i64 [ %2097, %block_479262 ], [ %2095, %block_.L_479254 ]
  %2099 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*), align 8
  %2100 = add i32 %2099, 1
  %2101 = icmp ne i32 %2099, -1
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %14, align 1
  %2103 = and i32 %2100, 255
  %2104 = tail call i32 @llvm.ctpop.i32(i32 %2103)
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = xor i8 %2106, 1
  store i8 %2107, i8* %21, align 1
  %2108 = xor i32 %2099, 16
  %2109 = xor i32 %2108, %2100
  %2110 = lshr i32 %2109, 4
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  store i8 %2112, i8* %27, align 1
  %2113 = icmp eq i32 %2100, 0
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %30, align 1
  %2115 = lshr i32 %2100, 31
  %2116 = trunc i32 %2115 to i8
  store i8 %2116, i8* %33, align 1
  %2117 = lshr i32 %2099, 31
  %2118 = xor i32 %2117, 1
  %2119 = xor i32 %2115, %2117
  %2120 = add nuw nsw i32 %2119, %2118
  %2121 = icmp eq i32 %2120, 2
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %39, align 1
  %.v103 = select i1 %2113, i64 28, i64 14
  %2123 = add i64 %2098, %.v103
  store i64 %2123, i64* %3, align 8
  br i1 %2113, label %block_.L_47928c, label %block_47927e

block_47927e:                                     ; preds = %block_.L_479270
  %2124 = zext i32 %2099 to i64
  store i64 %2124, i64* %RAX.i825.pre-phi, align 8
  %2125 = add i64 %2123, 14
  store i64 %2125, i64* %3, align 8
  store i32 %2099, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  br label %block_.L_47928c

block_.L_47928c:                                  ; preds = %block_47927e, %block_.L_479270
  %2126 = phi i64 [ %2125, %block_47927e ], [ %2123, %block_.L_479270 ]
  %2127 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*), align 8
  %2128 = add i32 %2127, 1
  %2129 = icmp ne i32 %2127, -1
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %14, align 1
  %2131 = and i32 %2128, 255
  %2132 = tail call i32 @llvm.ctpop.i32(i32 %2131)
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = xor i8 %2134, 1
  store i8 %2135, i8* %21, align 1
  %2136 = xor i32 %2127, 16
  %2137 = xor i32 %2136, %2128
  %2138 = lshr i32 %2137, 4
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  store i8 %2140, i8* %27, align 1
  %2141 = icmp eq i32 %2128, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %30, align 1
  %2143 = lshr i32 %2128, 31
  %2144 = trunc i32 %2143 to i8
  store i8 %2144, i8* %33, align 1
  %2145 = lshr i32 %2127, 31
  %2146 = xor i32 %2145, 1
  %2147 = xor i32 %2143, %2145
  %2148 = add nuw nsw i32 %2147, %2146
  %2149 = icmp eq i32 %2148, 2
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %39, align 1
  %.v104 = select i1 %2141, i64 28, i64 14
  %2151 = add i64 %2126, %.v104
  store i64 %2151, i64* %3, align 8
  br i1 %2141, label %block_.L_4792a8, label %block_47929a

block_47929a:                                     ; preds = %block_.L_47928c
  %2152 = zext i32 %2127 to i64
  store i64 %2152, i64* %RAX.i825.pre-phi, align 8
  %2153 = add i64 %2151, 14
  store i64 %2153, i64* %3, align 8
  store i32 %2127, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  br label %block_.L_4792a8

block_.L_4792a8:                                  ; preds = %block_47929a, %block_.L_47928c
  %2154 = phi i64 [ %2153, %block_47929a ], [ %2151, %block_.L_47928c ]
  %2155 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*), align 8
  %2156 = add i32 %2155, 1
  %2157 = icmp ne i32 %2155, -1
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %14, align 1
  %2159 = and i32 %2156, 255
  %2160 = tail call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %21, align 1
  %2164 = xor i32 %2155, 16
  %2165 = xor i32 %2164, %2156
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  store i8 %2168, i8* %27, align 1
  %2169 = icmp eq i32 %2156, 0
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %30, align 1
  %2171 = lshr i32 %2156, 31
  %2172 = trunc i32 %2171 to i8
  store i8 %2172, i8* %33, align 1
  %2173 = lshr i32 %2155, 31
  %2174 = xor i32 %2173, 1
  %2175 = xor i32 %2171, %2173
  %2176 = add nuw nsw i32 %2175, %2174
  %2177 = icmp eq i32 %2176, 2
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %39, align 1
  %.v105 = select i1 %2169, i64 28, i64 14
  %2179 = add i64 %2154, %.v105
  store i64 %2179, i64* %3, align 8
  br i1 %2169, label %block_.L_4792c4, label %block_4792b6

block_4792b6:                                     ; preds = %block_.L_4792a8
  %2180 = zext i32 %2155 to i64
  store i64 %2180, i64* %RAX.i825.pre-phi, align 8
  %2181 = add i64 %2179, 14
  store i64 %2181, i64* %3, align 8
  store i32 %2155, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  br label %block_.L_4792c4

block_.L_4792c4:                                  ; preds = %block_4792b6, %block_.L_4792a8
  %2182 = phi i64 [ %2181, %block_4792b6 ], [ %2179, %block_.L_4792a8 ]
  %2183 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*), align 8
  %2184 = add i32 %2183, 1
  %2185 = icmp ne i32 %2183, -1
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %14, align 1
  %2187 = and i32 %2184, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %21, align 1
  %2192 = xor i32 %2183, 16
  %2193 = xor i32 %2192, %2184
  %2194 = lshr i32 %2193, 4
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  store i8 %2196, i8* %27, align 1
  %2197 = icmp eq i32 %2184, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %30, align 1
  %2199 = lshr i32 %2184, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %33, align 1
  %2201 = lshr i32 %2183, 31
  %2202 = xor i32 %2201, 1
  %2203 = xor i32 %2199, %2201
  %2204 = add nuw nsw i32 %2203, %2202
  %2205 = icmp eq i32 %2204, 2
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %39, align 1
  %.v106 = select i1 %2197, i64 28, i64 14
  %2207 = add i64 %2182, %.v106
  store i64 %2207, i64* %3, align 8
  br i1 %2197, label %block_.L_4792e0, label %block_4792d2

block_4792d2:                                     ; preds = %block_.L_4792c4
  %2208 = zext i32 %2183 to i64
  store i64 %2208, i64* %RAX.i825.pre-phi, align 8
  %2209 = add i64 %2207, 14
  store i64 %2209, i64* %3, align 8
  store i32 %2183, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  br label %block_.L_4792e0

block_.L_4792e0:                                  ; preds = %block_4792d2, %block_.L_4792c4
  %2210 = phi i64 [ %2209, %block_4792d2 ], [ %2207, %block_.L_4792c4 ]
  %2211 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*), align 8
  %2212 = add i32 %2211, 1
  %2213 = icmp ne i32 %2211, -1
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %14, align 1
  %2215 = and i32 %2212, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %21, align 1
  %2220 = xor i32 %2211, 16
  %2221 = xor i32 %2220, %2212
  %2222 = lshr i32 %2221, 4
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  store i8 %2224, i8* %27, align 1
  %2225 = icmp eq i32 %2212, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %30, align 1
  %2227 = lshr i32 %2212, 31
  %2228 = trunc i32 %2227 to i8
  store i8 %2228, i8* %33, align 1
  %2229 = lshr i32 %2211, 31
  %2230 = xor i32 %2229, 1
  %2231 = xor i32 %2227, %2229
  %2232 = add nuw nsw i32 %2231, %2230
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %39, align 1
  %.v107 = select i1 %2225, i64 28, i64 14
  %2235 = add i64 %2210, %.v107
  store i64 %2235, i64* %3, align 8
  br i1 %2225, label %block_.L_4792fc, label %block_4792ee

block_4792ee:                                     ; preds = %block_.L_4792e0
  %2236 = zext i32 %2211 to i64
  store i64 %2236, i64* %RAX.i825.pre-phi, align 8
  %2237 = add i64 %2235, 14
  store i64 %2237, i64* %3, align 8
  store i32 %2211, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  br label %block_.L_4792fc

block_.L_4792fc:                                  ; preds = %block_4792ee, %block_.L_4792e0
  %2238 = phi i64 [ %2237, %block_4792ee ], [ %2235, %block_.L_4792e0 ]
  %2239 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*), align 8
  %2240 = add i32 %2239, 1
  %2241 = icmp ne i32 %2239, -1
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %14, align 1
  %2243 = and i32 %2240, 255
  %2244 = tail call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  store i8 %2247, i8* %21, align 1
  %2248 = xor i32 %2239, 16
  %2249 = xor i32 %2248, %2240
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %27, align 1
  %2253 = icmp eq i32 %2240, 0
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %30, align 1
  %2255 = lshr i32 %2240, 31
  %2256 = trunc i32 %2255 to i8
  store i8 %2256, i8* %33, align 1
  %2257 = lshr i32 %2239, 31
  %2258 = xor i32 %2257, 1
  %2259 = xor i32 %2255, %2257
  %2260 = add nuw nsw i32 %2259, %2258
  %2261 = icmp eq i32 %2260, 2
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %39, align 1
  %.v108 = select i1 %2253, i64 28, i64 14
  %2263 = add i64 %2238, %.v108
  store i64 %2263, i64* %3, align 8
  br i1 %2253, label %block_.L_479318, label %block_47930a

block_47930a:                                     ; preds = %block_.L_4792fc
  %2264 = zext i32 %2239 to i64
  store i64 %2264, i64* %RAX.i825.pre-phi, align 8
  %2265 = add i64 %2263, 14
  store i64 %2265, i64* %3, align 8
  store i32 %2239, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*), align 8
  br label %block_.L_479318

block_.L_479318:                                  ; preds = %block_47930a, %block_.L_4792fc
  %2266 = phi i64 [ %2265, %block_47930a ], [ %2263, %block_.L_4792fc ]
  %2267 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*), align 8
  %2268 = add i32 %2267, 1
  %2269 = icmp ne i32 %2267, -1
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %14, align 1
  %2271 = and i32 %2268, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %21, align 1
  %2276 = xor i32 %2267, 16
  %2277 = xor i32 %2276, %2268
  %2278 = lshr i32 %2277, 4
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  store i8 %2280, i8* %27, align 1
  %2281 = icmp eq i32 %2268, 0
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %30, align 1
  %2283 = lshr i32 %2268, 31
  %2284 = trunc i32 %2283 to i8
  store i8 %2284, i8* %33, align 1
  %2285 = lshr i32 %2267, 31
  %2286 = xor i32 %2285, 1
  %2287 = xor i32 %2283, %2285
  %2288 = add nuw nsw i32 %2287, %2286
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %39, align 1
  %.v109 = select i1 %2281, i64 28, i64 14
  %2291 = add i64 %2266, %.v109
  store i64 %2291, i64* %3, align 8
  br i1 %2281, label %block_.L_479334, label %block_479326

block_479326:                                     ; preds = %block_.L_479318
  %2292 = zext i32 %2267 to i64
  store i64 %2292, i64* %RAX.i825.pre-phi, align 8
  %2293 = add i64 %2291, 14
  store i64 %2293, i64* %3, align 8
  store i32 %2267, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  br label %block_.L_479334

block_.L_479334:                                  ; preds = %block_479326, %block_.L_479318
  %2294 = phi i64 [ %2293, %block_479326 ], [ %2291, %block_.L_479318 ]
  %2295 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*), align 8
  %2296 = add i32 %2295, 1
  %2297 = icmp ne i32 %2295, -1
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %14, align 1
  %2299 = and i32 %2296, 255
  %2300 = tail call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  store i8 %2303, i8* %21, align 1
  %2304 = xor i32 %2295, 16
  %2305 = xor i32 %2304, %2296
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  store i8 %2308, i8* %27, align 1
  %2309 = icmp eq i32 %2296, 0
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %30, align 1
  %2311 = lshr i32 %2296, 31
  %2312 = trunc i32 %2311 to i8
  store i8 %2312, i8* %33, align 1
  %2313 = lshr i32 %2295, 31
  %2314 = xor i32 %2313, 1
  %2315 = xor i32 %2311, %2313
  %2316 = add nuw nsw i32 %2315, %2314
  %2317 = icmp eq i32 %2316, 2
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %39, align 1
  %.v110 = select i1 %2309, i64 28, i64 14
  %2319 = add i64 %2294, %.v110
  store i64 %2319, i64* %3, align 8
  br i1 %2309, label %block_.L_479350, label %block_479342

block_479342:                                     ; preds = %block_.L_479334
  %2320 = zext i32 %2295 to i64
  store i64 %2320, i64* %RAX.i825.pre-phi, align 8
  %2321 = add i64 %2319, 14
  store i64 %2321, i64* %3, align 8
  store i32 %2295, i32* bitcast (%G_0xb6e910_type* @G_0xb6e910 to i32*), align 8
  br label %block_.L_479350

block_.L_479350:                                  ; preds = %block_479342, %block_.L_479334
  %2322 = phi i64 [ %2321, %block_479342 ], [ %2319, %block_.L_479334 ]
  %2323 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*), align 8
  %2324 = add i32 %2323, 1
  %2325 = icmp ne i32 %2323, -1
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %14, align 1
  %2327 = and i32 %2324, 255
  %2328 = tail call i32 @llvm.ctpop.i32(i32 %2327)
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  store i8 %2331, i8* %21, align 1
  %2332 = xor i32 %2323, 16
  %2333 = xor i32 %2332, %2324
  %2334 = lshr i32 %2333, 4
  %2335 = trunc i32 %2334 to i8
  %2336 = and i8 %2335, 1
  store i8 %2336, i8* %27, align 1
  %2337 = icmp eq i32 %2324, 0
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %30, align 1
  %2339 = lshr i32 %2324, 31
  %2340 = trunc i32 %2339 to i8
  store i8 %2340, i8* %33, align 1
  %2341 = lshr i32 %2323, 31
  %2342 = xor i32 %2341, 1
  %2343 = xor i32 %2339, %2341
  %2344 = add nuw nsw i32 %2343, %2342
  %2345 = icmp eq i32 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %39, align 1
  %.v111 = select i1 %2337, i64 28, i64 14
  %2347 = add i64 %2322, %.v111
  store i64 %2347, i64* %3, align 8
  br i1 %2337, label %block_.L_47936c, label %block_47935e

block_47935e:                                     ; preds = %block_.L_479350
  %2348 = zext i32 %2323 to i64
  store i64 %2348, i64* %RAX.i825.pre-phi, align 8
  %2349 = add i64 %2347, 14
  store i64 %2349, i64* %3, align 8
  store i32 %2323, i32* bitcast (%G_0xb8af1c_type* @G_0xb8af1c to i32*), align 8
  br label %block_.L_47936c

block_.L_47936c:                                  ; preds = %block_47935e, %block_.L_479350
  %2350 = phi i64 [ %2349, %block_47935e ], [ %2347, %block_.L_479350 ]
  %2351 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*), align 8
  %2352 = add i32 %2351, 1
  %2353 = icmp ne i32 %2351, -1
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %14, align 1
  %2355 = and i32 %2352, 255
  %2356 = tail call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  store i8 %2359, i8* %21, align 1
  %2360 = xor i32 %2351, 16
  %2361 = xor i32 %2360, %2352
  %2362 = lshr i32 %2361, 4
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  store i8 %2364, i8* %27, align 1
  %2365 = icmp eq i32 %2352, 0
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %30, align 1
  %2367 = lshr i32 %2352, 31
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %33, align 1
  %2369 = lshr i32 %2351, 31
  %2370 = xor i32 %2369, 1
  %2371 = xor i32 %2367, %2369
  %2372 = add nuw nsw i32 %2371, %2370
  %2373 = icmp eq i32 %2372, 2
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %39, align 1
  %.v112 = select i1 %2365, i64 28, i64 14
  %2375 = add i64 %2350, %.v112
  store i64 %2375, i64* %3, align 8
  br i1 %2365, label %block_.L_479388, label %block_47937a

block_47937a:                                     ; preds = %block_.L_47936c
  %2376 = zext i32 %2351 to i64
  store i64 %2376, i64* %RAX.i825.pre-phi, align 8
  %2377 = add i64 %2375, 14
  store i64 %2377, i64* %3, align 8
  store i32 %2351, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
  br label %block_.L_479388

block_.L_479388:                                  ; preds = %block_47937a, %block_.L_47936c
  %2378 = phi i64 [ %2377, %block_47937a ], [ %2375, %block_.L_47936c ]
  %2379 = load i64, i64* %6, align 8
  %2380 = add i64 %2379, 112
  store i64 %2380, i64* %6, align 8
  %2381 = icmp ugt i64 %2379, -113
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %14, align 1
  %2383 = trunc i64 %2380 to i32
  %2384 = and i32 %2383, 255
  %2385 = tail call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %21, align 1
  %2389 = xor i64 %2379, 16
  %2390 = xor i64 %2389, %2380
  %2391 = lshr i64 %2390, 4
  %2392 = trunc i64 %2391 to i8
  %2393 = and i8 %2392, 1
  store i8 %2393, i8* %27, align 1
  %2394 = icmp eq i64 %2380, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %30, align 1
  %2396 = lshr i64 %2380, 63
  %2397 = trunc i64 %2396 to i8
  store i8 %2397, i8* %33, align 1
  %2398 = lshr i64 %2379, 63
  %2399 = xor i64 %2396, %2398
  %2400 = add nuw nsw i64 %2399, %2396
  %2401 = icmp eq i64 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %39, align 1
  %2403 = add i64 %2378, 5
  store i64 %2403, i64* %3, align 8
  %2404 = add i64 %2379, 120
  %2405 = inttoptr i64 %2380 to i64*
  %2406 = load i64, i64* %2405, align 8
  store i64 %2406, i64* %RBP.i, align 8
  store i64 %2404, i64* %6, align 8
  %2407 = add i64 %2378, 6
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2404 to i64*
  %2409 = load i64, i64* %2408, align 8
  store i64 %2409, i64* %3, align 8
  %2410 = add i64 %2379, 128
  store i64 %2410, i64* %6, align 8
  ret %struct.Memory* %MEMORY.25
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jl_.L_478cd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_subl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 10
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478cf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jl_.L_478ceb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x9___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -9
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 9
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
define %struct.Memory* @routine_jmpq_.L_478cf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_movl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_jge_.L_478d1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478d27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xb8b854(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -13
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_478d52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478d5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xb060b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -6
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
define %struct.Memory* @routine_jge_.L_478d8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_478d97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xb8af28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -14
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
define %struct.Memory* @routine_jge_.L_478dc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_478dcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0xb6308c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_478e40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0xc___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -13
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

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_478e24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -13
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
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478e31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xb4bd18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478e98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xb___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_478e81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xb___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -12
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_478e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_478ed4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478ee1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xb6e910(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb6e910_type* @G_0xb6e910 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 40
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -41
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
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jge_.L_478f2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x28___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 40
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -41
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jmpq_.L_478f37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__0xb8af1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb8af1c_type* @G_0xb8af1c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xab0f20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0f20_type* @G_0xab0f20 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_478f93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_subl__0xa___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 10
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -7
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
define %struct.Memory* @routine_jge_.L_478f7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478f84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__0xb54ce8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478fcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x9___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -9
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 9
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
define %struct.Memory* @routine_jge_.L_478fb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_478fc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jl_.L_479018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -9
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
define %struct.Memory* @routine_jge_.L_478ffc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -9
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479009(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__eax__0xb8b850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4790a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_je_.L_479065(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_479049(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_479056(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jmpq_.L_4790a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_jge_.L_47908c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_479099(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jl_.L_4790f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -8
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
define %struct.Memory* @routine_jge_.L_4790d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4790e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__0xb54ce0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479152(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_47910f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7__0xb54ce0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47914d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 7
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
define %struct.Memory* @routine_jge_.L_479136(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 7
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
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479143(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_jl_.L_4791c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_479183(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479190(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movsd_0x69dbd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x69dbd__rip__type* @G_0x69dbd__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax__0xafd960(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.pow_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x69d84__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x69d84__rip__type* @G_0x69d84__rip_ to i64)
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
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xb6eecc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xafd960(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3e8__0x7afde0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060384
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 1000
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967288
  store i64 %13, i64* %RCX, align 8
  %14 = mul i64 %10, 4294967296000
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 248
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x7afde0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6 = bitcast %union.anon* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* bitcast (%G_0x7afde0_type* @G_0x7afde0 to i32*), align 8
  %14 = sext i32 %13 to i64
  %15 = shl nuw i64 %12, 32
  %16 = or i64 %15, %8
  %17 = sdiv i64 %16, %14
  %18 = shl i64 %17, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400488
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = srem i64 %16, %14
  %25 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %26 = and i64 %17, 4294967295
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %union.anon, %union.anon* %9, i64 0, i32 0
  %28 = and i64 %24, 4294967295
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %35 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %35
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_cmpl_0xb6eecc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_479221(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb6eecc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47922e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_cmpl__0xffffffff__0xb9a090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_479254(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb9a090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb63088(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_479270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb63088___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb8a008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47928c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb8a008___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb8a00c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4792a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb8a00c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb01170(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4792c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb01170___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb72710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4792e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb72710___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb6eec8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4792fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb6eec8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xafdfb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_479318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xafdfb4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb9d8e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_479334(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb9d8e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb4bd1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_479350(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb4bd1c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb8af24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47936c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb8af24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0xb4a018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_479388(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb4a018___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
