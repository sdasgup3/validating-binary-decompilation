; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6d4520_type = type <{ [2 x i8] }>
%G_0x6d4522_type = type <{ [2 x i8] }>
%G_0x6d4524_type = type <{ [2 x i8] }>
%G_0x6d4526_type = type <{ [2 x i8] }>
%G_0x6d4528_type = type <{ [2 x i8] }>
%G_0x6d452a_type = type <{ [2 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4b2750_type = type <{ [8 x i8] }>
%G__0x4b28d0_type = type <{ [8 x i8] }>
%G__0x6d09f0_type = type <{ [8 x i8] }>
%G__0x6f73a0_type = type <{ [8 x i8] }>
%G__0x70d010_type = type <{ [8 x i8] }>
%G__0x70d1b0_type = type <{ [8 x i8] }>
%G__0x70e8f0_type = type <{ [8 x i8] }>
%G__0x70fe80_type = type <{ [8 x i8] }>
%G__0x722cd0_type = type <{ [8 x i8] }>
%G__0x723b20_type = type <{ [8 x i8] }>
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
@G_0x6d4520 = local_unnamed_addr global %G_0x6d4520_type zeroinitializer
@G_0x6d4522 = local_unnamed_addr global %G_0x6d4522_type zeroinitializer
@G_0x6d4524 = local_unnamed_addr global %G_0x6d4524_type zeroinitializer
@G_0x6d4526 = local_unnamed_addr global %G_0x6d4526_type zeroinitializer
@G_0x6d4528 = local_unnamed_addr global %G_0x6d4528_type zeroinitializer
@G_0x6d452a = local_unnamed_addr global %G_0x6d452a_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G__0x4b2750 = global %G__0x4b2750_type zeroinitializer
@G__0x4b28d0 = global %G__0x4b28d0_type zeroinitializer
@G__0x6d09f0 = global %G__0x6d09f0_type zeroinitializer
@G__0x6f73a0 = global %G__0x6f73a0_type zeroinitializer
@G__0x70d010 = global %G__0x70d010_type zeroinitializer
@G__0x70d1b0 = global %G__0x70d1b0_type zeroinitializer
@G__0x70e8f0 = global %G__0x70e8f0_type zeroinitializer
@G__0x70fe80 = global %G__0x70fe80_type zeroinitializer
@G__0x722cd0 = global %G__0x722cd0_type zeroinitializer
@G__0x723b20 = global %G__0x723b20_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @CalculateQuantParam(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i447, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i715, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i854, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i1028, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i1332, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %7, -312
  store i64 %36, i64* %6, align 8
  %37 = icmp ult i64 %33, 264
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1
  %47 = xor i64 %33, %36
  %48 = lshr i64 %47, 4
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %50, i8* %51, align 1
  %52 = icmp eq i64 %36, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1
  %55 = lshr i64 %36, 63
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %33, 63
  %59 = xor i64 %55, %58
  %60 = add nuw nsw i64 %59, %58
  %61 = icmp eq i64 %60, 2
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %62, i8* %63, align 1
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -84
  %66 = add i64 %35, 14
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2624 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %70, i64* %RAX.i2624, align 8
  %71 = add i64 %70, 36
  %72 = add i64 %69, 12
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  store i8 0, i8* %39, align 1
  %75 = and i32 %74, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %80 = icmp eq i32 %74, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %54, align 1
  %82 = lshr i32 %74, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v242 = select i1 %80, i64 18, i64 48
  %84 = add i64 %69, %.v242
  store i64 %84, i64* %3, align 8
  br i1 %80, label %block_4797dd, label %block_.L_4797fb

block_4797dd:                                     ; preds = %entry
  %85 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %85, i64* %RAX.i2624, align 8
  %86 = add i64 %85, 20
  %87 = add i64 %84, 12
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  store i8 0, i8* %39, align 1
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %95 = icmp eq i32 %89, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %54, align 1
  %97 = lshr i32 %89, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v259 = select i1 %95, i64 18, i64 30
  %99 = add i64 %84, %.v259
  store i64 %99, i64* %3, align 8
  br i1 %95, label %block_4797ef, label %block_.L_4797fb

block_4797ef:                                     ; preds = %block_4797dd
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -84
  %102 = add i64 %99, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 1, i32* %103, align 4
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 245
  br label %block_.L_4798eb

block_.L_4797fb:                                  ; preds = %block_4797dd, %entry
  %106 = phi i64 [ %99, %block_4797dd ], [ %84, %entry ]
  %RSI.i2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 0, i64* %RSI.i2639, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  store i64 24, i64* %RAX.i2624, align 8
  %RDX.i2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 24, i64* %RDX.i2634, align 8
  %RCX.i2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -80
  store i64 %108, i64* %RCX.i2630, align 8
  %RDI.i2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 %108, i64* %RDI.i2628, align 8
  %109 = add i64 %106, -493451
  %110 = add i64 %106, 21
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, -8
  %113 = inttoptr i64 %112 to i64*
  store i64 %110, i64* %113, align 8
  store i64 %112, i64* %6, align 8
  store i64 %109, i64* %3, align 8
  %114 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %116, i64* %RCX.i2630, align 8
  %117 = add i64 %116, 36
  %118 = add i64 %115, 12
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  store i8 0, i8* %39, align 1
  %121 = and i32 %120, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %126 = icmp eq i32 %120, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %54, align 1
  %128 = lshr i32 %120, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v243 = select i1 %126, i64 78, i64 18
  %130 = add i64 %115, %.v243
  store i64 %130, i64* %3, align 8
  br i1 %126, label %block_.L_47985e, label %block_479822

block_479822:                                     ; preds = %block_.L_4797fb
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -44
  %133 = add i64 %130, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  store i32 0, i32* %134, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_479829

block_.L_479829:                                  ; preds = %block_479833, %block_479822
  %135 = phi i64 [ %215, %block_479833 ], [ %.pre, %block_479822 ]
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -44
  %138 = add i64 %135, 4
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, -6
  %142 = icmp ult i32 %140, 6
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %39, align 1
  %144 = and i32 %141, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %46, align 1
  %149 = xor i32 %141, %140
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %51, align 1
  %153 = icmp eq i32 %141, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %54, align 1
  %155 = lshr i32 %141, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %57, align 1
  %157 = lshr i32 %140, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %63, align 1
  %162 = icmp ne i8 %156, 0
  %163 = xor i1 %162, %160
  %.v244 = select i1 %163, i64 10, i64 48
  %164 = add i64 %135, %.v244
  store i64 %164, i64* %3, align 8
  br i1 %163, label %block_479833, label %block_.L_479859

block_479833:                                     ; preds = %block_.L_479829
  %165 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %165, i64* %RAX.i2624, align 8
  %166 = add i64 %164, 12
  store i64 %166, i64* %3, align 8
  %167 = load i32, i32* %139, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i2630, align 8
  %169 = shl nsw i64 %168, 2
  %170 = add i64 %165, 40
  %171 = add i64 %170, %169
  %172 = add i64 %164, 16
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RDX.i2634, align 8
  %176 = add i64 %164, 20
  store i64 %176, i64* %3, align 8
  %177 = load i32, i32* %139, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RAX.i2624, align 8
  %179 = shl nsw i64 %178, 2
  %180 = add i64 %136, -80
  %181 = add i64 %180, %179
  %182 = add i64 %164, 24
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  store i32 %174, i32* %183, align 4
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -44
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 3
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, 1
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX.i2624, align 8
  %192 = icmp eq i32 %189, -1
  %193 = icmp eq i32 %190, 0
  %194 = or i1 %192, %193
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %39, align 1
  %196 = and i32 %190, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %46, align 1
  %201 = xor i32 %190, %189
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %51, align 1
  %205 = zext i1 %193 to i8
  store i8 %205, i8* %54, align 1
  %206 = lshr i32 %190, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %57, align 1
  %208 = lshr i32 %189, 31
  %209 = xor i32 %206, %208
  %210 = add nuw nsw i32 %209, %206
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %63, align 1
  %213 = add i64 %186, 9
  store i64 %213, i64* %3, align 8
  store i32 %190, i32* %188, align 4
  %214 = load i64, i64* %3, align 8
  %215 = add i64 %214, -43
  store i64 %215, i64* %3, align 8
  br label %block_.L_479829

block_.L_479859:                                  ; preds = %block_.L_479829
  %216 = add i64 %164, 5
  store i64 %216, i64* %3, align 8
  br label %block_.L_47985e

block_.L_47985e:                                  ; preds = %block_.L_479859, %block_.L_4797fb
  %217 = phi i64 [ %216, %block_.L_479859 ], [ %130, %block_.L_4797fb ]
  %218 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %218, i64* %RAX.i2624, align 8
  %219 = add i64 %218, 20
  %220 = add i64 %217, 12
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  store i8 0, i8* %39, align 1
  %223 = and i32 %222, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %228 = icmp eq i32 %222, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %54, align 1
  %230 = lshr i32 %222, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v245 = select i1 %228, i64 136, i64 18
  %232 = add i64 %217, %.v245
  store i64 %232, i64* %3, align 8
  br i1 %228, label %block_.L_4798e6, label %block_479870

block_479870:                                     ; preds = %block_.L_47985e
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -44
  %235 = add i64 %232, 7
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 0, i32* %236, align 4
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_479877

block_.L_479877:                                  ; preds = %block_.L_4798ce, %block_479870
  %237 = phi i64 [ %391, %block_.L_4798ce ], [ %.pre204, %block_479870 ]
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -44
  %240 = add i64 %237, 4
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, -6
  %244 = icmp ult i32 %242, 6
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %39, align 1
  %246 = and i32 %243, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %46, align 1
  %251 = xor i32 %243, %242
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %51, align 1
  %255 = icmp eq i32 %243, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %54, align 1
  %257 = lshr i32 %243, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %57, align 1
  %259 = lshr i32 %242, 31
  %260 = xor i32 %257, %259
  %261 = add nuw nsw i32 %260, %259
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %63, align 1
  %264 = icmp ne i8 %258, 0
  %265 = xor i1 %264, %262
  %.v246 = select i1 %265, i64 10, i64 106
  %266 = add i64 %237, %.v246
  store i64 %266, i64* %3, align 8
  br i1 %265, label %block_479881, label %block_.L_4798e1

block_479881:                                     ; preds = %block_.L_479877
  %267 = add i64 %266, 4
  store i64 %267, i64* %3, align 8
  %268 = load i32, i32* %241, align 4
  store i8 0, i8* %39, align 1
  %269 = and i32 %268, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %274 = icmp eq i32 %268, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %54, align 1
  %276 = lshr i32 %268, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v257 = select i1 %274, i64 20, i64 10
  %278 = add i64 %266, %.v257
  store i64 %278, i64* %3, align 8
  br i1 %274, label %block_.L_479895, label %block_47988b

block_47988b:                                     ; preds = %block_479881
  %279 = add i64 %278, 4
  store i64 %279, i64* %3, align 8
  %280 = load i32, i32* %241, align 4
  %281 = add i32 %280, -3
  %282 = icmp ult i32 %280, 3
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %39, align 1
  %284 = and i32 %281, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %46, align 1
  %289 = xor i32 %281, %280
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %51, align 1
  %293 = icmp eq i32 %281, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %54, align 1
  %295 = lshr i32 %281, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %57, align 1
  %297 = lshr i32 %280, 31
  %298 = xor i32 %295, %297
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %63, align 1
  %.v258 = select i1 %293, i64 10, i64 43
  %302 = add i64 %278, %.v258
  store i64 %302, i64* %3, align 8
  br i1 %293, label %block_.L_479895, label %block_.L_4798b6

block_.L_479895:                                  ; preds = %block_47988b, %block_479881
  %303 = phi i64 [ %302, %block_47988b ], [ %278, %block_479881 ]
  %304 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %304, i64* %RAX.i2624, align 8
  %305 = add i64 %303, 12
  store i64 %305, i64* %3, align 8
  %306 = load i32, i32* %241, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RCX.i2630, align 8
  %308 = shl nsw i64 %307, 2
  %309 = add i64 %304, 24
  %310 = add i64 %309, %308
  %311 = add i64 %303, 16
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDX.i2634, align 8
  %315 = add i64 %303, 20
  store i64 %315, i64* %3, align 8
  %316 = load i32, i32* %241, align 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RAX.i2624, align 8
  %318 = shl nsw i64 %317, 2
  %319 = add nsw i64 %318, -80
  %320 = add i64 %319, %238
  %321 = add i64 %303, 24
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %313
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RDX.i2634, align 8
  store i8 0, i8* %39, align 1
  %326 = and i32 %324, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %46, align 1
  %331 = icmp eq i32 %324, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %54, align 1
  %333 = lshr i32 %324, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  %335 = add i64 %238, -80
  %336 = add i64 %335, %318
  %337 = add i64 %303, 28
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 %324, i32* %338, align 4
  %339 = load i64, i64* %3, align 8
  %340 = add i64 %339, 29
  store i64 %340, i64* %3, align 8
  br label %block_.L_4798ce

block_.L_4798b6:                                  ; preds = %block_47988b
  %341 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %341, i64* %RAX.i2624, align 8
  %342 = add i64 %302, 12
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %241, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %RCX.i2630, align 8
  %345 = shl nsw i64 %344, 2
  %346 = add i64 %341, 24
  %347 = add i64 %346, %345
  %348 = add i64 %302, 16
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RDX.i2634, align 8
  %352 = add i64 %302, 20
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %241, align 4
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %RAX.i2624, align 8
  %355 = shl nsw i64 %354, 2
  %356 = add i64 %238, -80
  %357 = add i64 %356, %355
  %358 = add i64 %302, 24
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  store i32 %350, i32* %359, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_4798ce

block_.L_4798ce:                                  ; preds = %block_.L_4798b6, %block_.L_479895
  %360 = phi i64 [ %.pre205, %block_.L_4798b6 ], [ %340, %block_.L_479895 ]
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -44
  %363 = add i64 %360, 8
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, 1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i2624, align 8
  %368 = icmp eq i32 %365, -1
  %369 = icmp eq i32 %366, 0
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %39, align 1
  %372 = and i32 %366, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %46, align 1
  %377 = xor i32 %366, %365
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %51, align 1
  %381 = zext i1 %369 to i8
  store i8 %381, i8* %54, align 1
  %382 = lshr i32 %366, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %57, align 1
  %384 = lshr i32 %365, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %382
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %63, align 1
  %389 = add i64 %360, 14
  store i64 %389, i64* %3, align 8
  store i32 %366, i32* %364, align 4
  %390 = load i64, i64* %3, align 8
  %391 = add i64 %390, -101
  store i64 %391, i64* %3, align 8
  br label %block_.L_479877

block_.L_4798e1:                                  ; preds = %block_.L_479877
  %392 = add i64 %266, 5
  store i64 %392, i64* %3, align 8
  br label %block_.L_4798e6

block_.L_4798e6:                                  ; preds = %block_.L_4798e1, %block_.L_47985e
  %393 = phi i64 [ %392, %block_.L_4798e1 ], [ %232, %block_.L_47985e ]
  %394 = add i64 %393, 5
  store i64 %394, i64* %3, align 8
  br label %block_.L_4798eb

block_.L_4798eb:                                  ; preds = %block_.L_4798e6, %block_4797ef
  %storemerge = phi i64 [ %105, %block_4797ef ], [ %394, %block_.L_4798e6 ]
  %MEMORY.7 = phi %struct.Memory* [ %2, %block_4797ef ], [ %114, %block_.L_4798e6 ]
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -84
  %397 = add i64 %storemerge, 4
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %399, -1
  %401 = icmp eq i32 %399, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %39, align 1
  %403 = and i32 %400, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %46, align 1
  %408 = xor i32 %400, %399
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %51, align 1
  %412 = icmp eq i32 %400, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %54, align 1
  %414 = lshr i32 %400, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %57, align 1
  %416 = lshr i32 %399, 31
  %417 = xor i32 %414, %416
  %418 = add nuw nsw i32 %417, %416
  %419 = icmp eq i32 %418, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %63, align 1
  %.v = select i1 %412, i64 10, i64 1044
  %421 = add i64 %storemerge, %.v
  %422 = add i64 %395, -52
  %423 = add i64 %421, 7
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 0, i32* %424, align 4
  br i1 %412, label %block_.L_4798fc.preheader, label %block_.L_479d06.preheader

block_.L_4798fc.preheader:                        ; preds = %block_.L_4798eb
  %RCX.i2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8.i2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10.i2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11.i2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %425 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384) to i32), i32 255))
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  %EAX.i2405 = bitcast %union.anon* %68 to i32*
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_4798fc

block_.L_479d06.preheader:                        ; preds = %block_.L_4798eb
  %EAX.i1800 = bitcast %union.anon* %68 to i32*
  %RCX.i1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1761 = bitcast %union.anon* %429 to i32*
  %430 = getelementptr inbounds %union.anon, %union.anon* %429, i64 0, i32 0
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1753 = bitcast %union.anon* %431 to i32*
  %432 = getelementptr inbounds %union.anon, %union.anon* %431, i64 0, i32 0
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %434 = bitcast %union.anon* %433 to i32*
  %435 = getelementptr inbounds %union.anon, %union.anon* %433, i64 0, i32 0
  %RCX.i1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1382 = getelementptr inbounds %union.anon, %union.anon* %436, i64 0, i32 0
  %ESI.i1380 = bitcast %union.anon* %436 to i32*
  %RDI.i1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8.i1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %438 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384) to i32), i32 255))
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  %442 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384) to i32), i32 255))
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  %446 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384) to i32), i32 255))
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  %450 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384) to i32), i32 255))
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_479d06

block_.L_4798fc:                                  ; preds = %block_.L_4798fc.preheader, %block_.L_479ce7
  %454 = phi i64 [ %.pre206, %block_.L_4798fc.preheader ], [ %2694, %block_.L_479ce7 ]
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -52
  %457 = add i64 %454, 4
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, -6
  %461 = icmp ult i32 %459, 6
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %39, align 1
  %463 = and i32 %460, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %46, align 1
  %468 = xor i32 %460, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %51, align 1
  %472 = icmp eq i32 %460, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %54, align 1
  %474 = lshr i32 %460, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %57, align 1
  %476 = lshr i32 %459, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %63, align 1
  %481 = icmp ne i8 %475, 0
  %482 = xor i1 %481, %479
  %.v256 = select i1 %482, i64 10, i64 1022
  %483 = add i64 %454, %.v256
  store i64 %483, i64* %3, align 8
  br i1 %482, label %block_479906, label %block_.L_479cfa

block_479906:                                     ; preds = %block_.L_4798fc
  %484 = add i64 %455, -48
  %485 = add i64 %483, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  store i32 0, i32* %486, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_47990d

block_.L_47990d:                                  ; preds = %block_.L_479cd4, %block_479906
  %487 = phi i64 [ %2664, %block_.L_479cd4 ], [ %.pre207, %block_479906 ]
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -48
  %490 = add i64 %487, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, -4
  %494 = icmp ult i32 %492, 4
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %39, align 1
  %496 = and i32 %493, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %46, align 1
  %501 = xor i32 %493, %492
  %502 = lshr i32 %501, 4
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %51, align 1
  %505 = icmp eq i32 %493, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %54, align 1
  %507 = lshr i32 %493, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %57, align 1
  %509 = lshr i32 %492, 31
  %510 = xor i32 %507, %509
  %511 = add nuw nsw i32 %510, %509
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %63, align 1
  %514 = icmp ne i8 %508, 0
  %515 = xor i1 %514, %512
  %.v238 = select i1 %515, i64 10, i64 986
  %516 = add i64 %487, %.v238
  store i64 %516, i64* %3, align 8
  br i1 %515, label %block_479917, label %block_.L_479ce7

block_479917:                                     ; preds = %block_.L_47990d
  %517 = add i64 %488, -44
  %518 = add i64 %516, 7
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  store i32 0, i32* %519, align 4
  %.pre208 = load i64, i64* %3, align 8
  br label %block_.L_47991e

block_.L_47991e:                                  ; preds = %block_479928, %block_479917
  %520 = phi i64 [ %2634, %block_479928 ], [ %.pre208, %block_479917 ]
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -44
  %523 = add i64 %520, 4
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = add i32 %525, -4
  %527 = icmp ult i32 %525, 4
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %529 = and i32 %526, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %46, align 1
  %534 = xor i32 %526, %525
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %51, align 1
  %538 = icmp eq i32 %526, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %54, align 1
  %540 = lshr i32 %526, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %57, align 1
  %542 = lshr i32 %525, 31
  %543 = xor i32 %540, %542
  %544 = add nuw nsw i32 %543, %542
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %63, align 1
  %547 = icmp ne i8 %541, 0
  %548 = xor i1 %547, %545
  %.v239 = select i1 %548, i64 10, i64 950
  %549 = add i64 %520, %.v239
  store i64 %549, i64* %3, align 8
  br i1 %548, label %block_479928, label %block_.L_479cd4

block_479928:                                     ; preds = %block_.L_47991e
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX.i2624, align 8
  store i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64* %RCX.i2501, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RDX.i2496, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RSI.i2494, align 8
  store i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64* %RDI.i2492, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %R8.i2487, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %R9.i2485, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %R10.i2483, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %R11.i2481, align 8
  store i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64* %RBX.i1332, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %R14.i715, align 8
  store i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64* %R15.i447, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %428, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %R12.i1028, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %R13.i854, align 8
  %550 = add i64 %521, -96
  %551 = add i64 %549, 144
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i64*
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %552, align 8
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -52
  %555 = load i64, i64* %3, align 8
  %556 = add i64 %555, 4
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %554 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = sext i32 %558 to i64
  %560 = shl nsw i64 %559, 6
  %.lobit = lshr i32 %558, 31
  %561 = trunc i32 %.lobit to i8
  store i8 %561, i8* %39, align 1
  %562 = trunc i64 %560 to i32
  %563 = and i32 %562, 192
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %568 = icmp eq i32 %558, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %54, align 1
  %570 = lshr i64 %559, 57
  %571 = trunc i64 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %573 = add i64 %553, -104
  %574 = add i64 %555, 12
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  store i64 %560, i64* %575, align 8
  %576 = load i64, i64* %R8.i2487, align 8
  %577 = load i64, i64* %3, align 8
  store i64 %576, i64* %RAX.i2624, align 8
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -112
  %580 = load i64, i64* %RCX.i2501, align 8
  %581 = add i64 %577, 7
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %579 to i64*
  store i64 %580, i64* %582, align 8
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -104
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 4
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587, align 8
  store i64 %588, i64* %RCX.i2501, align 8
  %589 = load i64, i64* %RAX.i2624, align 8
  %590 = add i64 %589, %588
  store i64 %590, i64* %RAX.i2624, align 8
  %591 = icmp ult i64 %590, %589
  %592 = icmp ult i64 %590, %588
  %593 = or i1 %591, %592
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %39, align 1
  %595 = trunc i64 %590 to i32
  %596 = and i32 %595, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %46, align 1
  %601 = xor i64 %589, %588
  %602 = xor i64 %601, %590
  %603 = lshr i64 %602, 4
  %604 = trunc i64 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %51, align 1
  %606 = icmp eq i64 %590, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %54, align 1
  %608 = lshr i64 %590, 63
  %609 = trunc i64 %608 to i8
  store i8 %609, i8* %57, align 1
  %610 = lshr i64 %589, 63
  %611 = lshr i64 %588, 63
  %612 = xor i64 %608, %610
  %613 = xor i64 %608, %611
  %614 = add nuw nsw i64 %612, %613
  %615 = icmp eq i64 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %63, align 1
  %617 = add i64 %583, -48
  %618 = add i64 %585, 11
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = sext i32 %620 to i64
  %622 = shl nsw i64 %621, 4
  store i64 %622, i64* %RCX.i2501, align 8
  %623 = add i64 %622, %590
  store i64 %623, i64* %RAX.i2624, align 8
  %624 = icmp ult i64 %623, %590
  %625 = icmp ult i64 %623, %622
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %39, align 1
  %628 = trunc i64 %623 to i32
  %629 = and i32 %628, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %46, align 1
  %634 = xor i64 %622, %590
  %635 = xor i64 %634, %623
  %636 = lshr i64 %635, 4
  %637 = trunc i64 %636 to i8
  %638 = and i8 %637, 1
  store i8 %638, i8* %51, align 1
  %639 = icmp eq i64 %623, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %54, align 1
  %641 = lshr i64 %623, 63
  %642 = trunc i64 %641 to i8
  store i8 %642, i8* %57, align 1
  %643 = lshr i64 %621, 59
  %644 = and i64 %643, 1
  %645 = xor i64 %641, %608
  %646 = xor i64 %641, %644
  %647 = add nuw nsw i64 %645, %646
  %648 = icmp eq i64 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %63, align 1
  %650 = load i64, i64* %RBP.i, align 8
  %651 = add i64 %650, -44
  %652 = add i64 %585, 22
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RCX.i2501, align 8
  %656 = shl nsw i64 %655, 2
  %657 = add i64 %656, %623
  %658 = add i64 %585, 25
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RAX.i2624, align 8
  %662 = add i64 %650, -52
  %663 = add i64 %585, 29
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  %667 = shl nsw i64 %666, 6
  store i64 %667, i64* %RCX.i2501, align 8
  %668 = load i64, i64* %R13.i854, align 8
  %669 = add i64 %667, %668
  store i64 %669, i64* %R13.i854, align 8
  %670 = icmp ult i64 %669, %668
  %671 = icmp ult i64 %669, %667
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %39, align 1
  %674 = trunc i64 %669 to i32
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %46, align 1
  %680 = xor i64 %668, %669
  %681 = lshr i64 %680, 4
  %682 = trunc i64 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %51, align 1
  %684 = icmp eq i64 %669, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %54, align 1
  %686 = lshr i64 %669, 63
  %687 = trunc i64 %686 to i8
  store i8 %687, i8* %57, align 1
  %688 = lshr i64 %668, 63
  %689 = lshr i64 %666, 57
  %690 = and i64 %689, 1
  %691 = xor i64 %686, %688
  %692 = xor i64 %686, %690
  %693 = add nuw nsw i64 %691, %692
  %694 = icmp eq i64 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %63, align 1
  %696 = add i64 %650, -48
  %697 = add i64 %585, 40
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  %701 = shl nsw i64 %700, 4
  store i64 %701, i64* %RCX.i2501, align 8
  %702 = add i64 %701, %669
  store i64 %702, i64* %R13.i854, align 8
  %703 = icmp ult i64 %702, %669
  %704 = icmp ult i64 %702, %701
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %39, align 1
  %707 = trunc i64 %702 to i32
  %708 = and i32 %707, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %46, align 1
  %713 = xor i64 %701, %669
  %714 = xor i64 %713, %702
  %715 = lshr i64 %714, 4
  %716 = trunc i64 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %51, align 1
  %718 = icmp eq i64 %702, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %54, align 1
  %720 = lshr i64 %702, 63
  %721 = trunc i64 %720 to i8
  store i8 %721, i8* %57, align 1
  %722 = lshr i64 %700, 59
  %723 = and i64 %722, 1
  %724 = xor i64 %720, %686
  %725 = xor i64 %720, %723
  %726 = add nuw nsw i64 %724, %725
  %727 = icmp eq i64 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %63, align 1
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -44
  %731 = add i64 %585, 51
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RCX.i2501, align 8
  %735 = shl nsw i64 %734, 2
  %736 = add i64 %735, %702
  %737 = load i32, i32* %EAX.i2405, align 4
  %738 = add i64 %585, 56
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %736 to i32*
  store i32 %737, i32* %739, align 4
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -52
  %742 = load i64, i64* %3, align 8
  %743 = add i64 %742, 4
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %741 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = sext i32 %745 to i64
  %747 = shl nsw i64 %746, 6
  store i64 %747, i64* %RCX.i2501, align 8
  %748 = load i64, i64* %RDX.i2496, align 8
  %749 = add i64 %747, %748
  store i64 %749, i64* %R13.i854, align 8
  %750 = icmp ult i64 %749, %748
  %751 = icmp ult i64 %749, %747
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %39, align 1
  %754 = trunc i64 %749 to i32
  %755 = and i32 %754, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %46, align 1
  %760 = xor i64 %748, %749
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %51, align 1
  %764 = icmp eq i64 %749, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %54, align 1
  %766 = lshr i64 %749, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %57, align 1
  %768 = lshr i64 %748, 63
  %769 = lshr i64 %746, 57
  %770 = and i64 %769, 1
  %771 = xor i64 %766, %768
  %772 = xor i64 %766, %770
  %773 = add nuw nsw i64 %771, %772
  %774 = icmp eq i64 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %63, align 1
  %776 = add i64 %740, -48
  %777 = add i64 %742, 18
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = sext i32 %779 to i64
  %781 = shl nsw i64 %780, 4
  store i64 %781, i64* %RCX.i2501, align 8
  %782 = add i64 %781, %749
  store i64 %782, i64* %R13.i854, align 8
  %783 = icmp ult i64 %782, %749
  %784 = icmp ult i64 %782, %781
  %785 = or i1 %783, %784
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %39, align 1
  %787 = trunc i64 %782 to i32
  %788 = and i32 %787, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788)
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %46, align 1
  %793 = xor i64 %781, %749
  %794 = xor i64 %793, %782
  %795 = lshr i64 %794, 4
  %796 = trunc i64 %795 to i8
  %797 = and i8 %796, 1
  store i8 %797, i8* %51, align 1
  %798 = icmp eq i64 %782, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %54, align 1
  %800 = lshr i64 %782, 63
  %801 = trunc i64 %800 to i8
  store i8 %801, i8* %57, align 1
  %802 = lshr i64 %780, 59
  %803 = and i64 %802, 1
  %804 = xor i64 %800, %766
  %805 = xor i64 %800, %803
  %806 = add nuw nsw i64 %804, %805
  %807 = icmp eq i64 %806, 2
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %63, align 1
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -44
  %811 = add i64 %742, 29
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = sext i32 %813 to i64
  store i64 %814, i64* %RCX.i2501, align 8
  %815 = shl nsw i64 %814, 2
  %816 = add i64 %815, %782
  %817 = add i64 %742, 34
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = shl i32 %819, 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RAX.i2624, align 8
  %822 = lshr i32 %819, 28
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %39, align 1
  %825 = and i32 %820, 240
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %830 = icmp eq i32 %820, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %54, align 1
  %832 = lshr i32 %819, 27
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %835 = add i64 %809, -52
  %836 = add i64 %742, 41
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  %840 = shl nsw i64 %839, 6
  store i64 %840, i64* %RCX.i2501, align 8
  %841 = load i64, i64* %R12.i1028, align 8
  %842 = add i64 %840, %841
  store i64 %842, i64* %R12.i1028, align 8
  %843 = icmp ult i64 %842, %841
  %844 = icmp ult i64 %842, %840
  %845 = or i1 %843, %844
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %39, align 1
  %847 = trunc i64 %842 to i32
  %848 = and i32 %847, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %46, align 1
  %853 = xor i64 %841, %842
  %854 = lshr i64 %853, 4
  %855 = trunc i64 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %51, align 1
  %857 = icmp eq i64 %842, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %54, align 1
  %859 = lshr i64 %842, 63
  %860 = trunc i64 %859 to i8
  store i8 %860, i8* %57, align 1
  %861 = lshr i64 %841, 63
  %862 = lshr i64 %839, 57
  %863 = and i64 %862, 1
  %864 = xor i64 %859, %861
  %865 = xor i64 %859, %863
  %866 = add nuw nsw i64 %864, %865
  %867 = icmp eq i64 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %63, align 1
  %869 = load i64, i64* %RBP.i, align 8
  %870 = add i64 %869, -48
  %871 = add i64 %742, 52
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = sext i32 %873 to i64
  %875 = shl nsw i64 %874, 4
  store i64 %875, i64* %RCX.i2501, align 8
  %876 = add i64 %875, %842
  store i64 %876, i64* %R12.i1028, align 8
  %877 = icmp ult i64 %876, %842
  %878 = icmp ult i64 %876, %875
  %879 = or i1 %877, %878
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %39, align 1
  %881 = trunc i64 %876 to i32
  %882 = and i32 %881, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %46, align 1
  %887 = xor i64 %875, %842
  %888 = xor i64 %887, %876
  %889 = lshr i64 %888, 4
  %890 = trunc i64 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %51, align 1
  %892 = icmp eq i64 %876, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %54, align 1
  %894 = lshr i64 %876, 63
  %895 = trunc i64 %894 to i8
  store i8 %895, i8* %57, align 1
  %896 = lshr i64 %874, 59
  %897 = and i64 %896, 1
  %898 = xor i64 %894, %859
  %899 = xor i64 %894, %897
  %900 = add nuw nsw i64 %898, %899
  %901 = icmp eq i64 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %63, align 1
  %903 = add i64 %869, -44
  %904 = add i64 %742, 63
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = sext i32 %906 to i64
  store i64 %907, i64* %RCX.i2501, align 8
  %908 = shl nsw i64 %907, 2
  %909 = add i64 %908, %876
  %910 = load i32, i32* %EAX.i2405, align 4
  %911 = add i64 %742, 67
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %909 to i32*
  store i32 %910, i32* %912, align 4
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -52
  %915 = load i64, i64* %3, align 8
  %916 = add i64 %915, 4
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = sext i32 %918 to i64
  %920 = shl nsw i64 %919, 6
  store i64 %920, i64* %RCX.i2501, align 8
  %921 = load i64, i64* %R8.i2487, align 8
  %922 = add i64 %920, %921
  store i64 %922, i64* %R12.i1028, align 8
  %923 = icmp ult i64 %922, %921
  %924 = icmp ult i64 %922, %920
  %925 = or i1 %923, %924
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %39, align 1
  %927 = trunc i64 %922 to i32
  %928 = and i32 %927, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %46, align 1
  %933 = xor i64 %921, %922
  %934 = lshr i64 %933, 4
  %935 = trunc i64 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %51, align 1
  %937 = icmp eq i64 %922, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %54, align 1
  %939 = lshr i64 %922, 63
  %940 = trunc i64 %939 to i8
  store i8 %940, i8* %57, align 1
  %941 = lshr i64 %921, 63
  %942 = lshr i64 %919, 57
  %943 = and i64 %942, 1
  %944 = xor i64 %939, %941
  %945 = xor i64 %939, %943
  %946 = add nuw nsw i64 %944, %945
  %947 = icmp eq i64 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %63, align 1
  %949 = add i64 %913, -48
  %950 = add i64 %915, 18
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  %954 = shl nsw i64 %953, 4
  store i64 %954, i64* %RCX.i2501, align 8
  %955 = add i64 %954, %922
  store i64 %955, i64* %R12.i1028, align 8
  %956 = icmp ult i64 %955, %922
  %957 = icmp ult i64 %955, %954
  %958 = or i1 %956, %957
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %39, align 1
  %960 = trunc i64 %955 to i32
  %961 = and i32 %960, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %46, align 1
  %966 = xor i64 %954, %922
  %967 = xor i64 %966, %955
  %968 = lshr i64 %967, 4
  %969 = trunc i64 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %51, align 1
  %971 = icmp eq i64 %955, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %54, align 1
  %973 = lshr i64 %955, 63
  %974 = trunc i64 %973 to i8
  store i8 %974, i8* %57, align 1
  %975 = lshr i64 %953, 59
  %976 = and i64 %975, 1
  %977 = xor i64 %973, %939
  %978 = xor i64 %973, %976
  %979 = add nuw nsw i64 %977, %978
  %980 = icmp eq i64 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %63, align 1
  %982 = load i64, i64* %RBP.i, align 8
  %983 = add i64 %982, -44
  %984 = add i64 %915, 29
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = sext i32 %986 to i64
  store i64 %987, i64* %RCX.i2501, align 8
  %988 = shl nsw i64 %987, 2
  %989 = add i64 %988, %955
  %990 = add i64 %915, 33
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX.i2624, align 8
  %994 = add i64 %982, -52
  %995 = add i64 %915, 37
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  %999 = shl nsw i64 %998, 6
  store i64 %999, i64* %RCX.i2501, align 8
  %1000 = load i64, i64* %R14.i715, align 8
  %1001 = add i64 %999, %1000
  store i64 %1001, i64* %R14.i715, align 8
  %1002 = icmp ult i64 %1001, %1000
  %1003 = icmp ult i64 %1001, %999
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %39, align 1
  %1006 = trunc i64 %1001 to i32
  %1007 = and i32 %1006, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %46, align 1
  %1012 = xor i64 %1000, %1001
  %1013 = lshr i64 %1012, 4
  %1014 = trunc i64 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %51, align 1
  %1016 = icmp eq i64 %1001, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %54, align 1
  %1018 = lshr i64 %1001, 63
  %1019 = trunc i64 %1018 to i8
  store i8 %1019, i8* %57, align 1
  %1020 = lshr i64 %1000, 63
  %1021 = lshr i64 %998, 57
  %1022 = and i64 %1021, 1
  %1023 = xor i64 %1018, %1020
  %1024 = xor i64 %1018, %1022
  %1025 = add nuw nsw i64 %1023, %1024
  %1026 = icmp eq i64 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %63, align 1
  %1028 = add i64 %982, -48
  %1029 = add i64 %915, 48
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = shl nsw i64 %1032, 4
  store i64 %1033, i64* %RCX.i2501, align 8
  %1034 = add i64 %1033, %1001
  store i64 %1034, i64* %R14.i715, align 8
  %1035 = icmp ult i64 %1034, %1001
  %1036 = icmp ult i64 %1034, %1033
  %1037 = or i1 %1035, %1036
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %39, align 1
  %1039 = trunc i64 %1034 to i32
  %1040 = and i32 %1039, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %46, align 1
  %1045 = xor i64 %1033, %1001
  %1046 = xor i64 %1045, %1034
  %1047 = lshr i64 %1046, 4
  %1048 = trunc i64 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %51, align 1
  %1050 = icmp eq i64 %1034, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %54, align 1
  %1052 = lshr i64 %1034, 63
  %1053 = trunc i64 %1052 to i8
  store i8 %1053, i8* %57, align 1
  %1054 = lshr i64 %1032, 59
  %1055 = and i64 %1054, 1
  %1056 = xor i64 %1052, %1018
  %1057 = xor i64 %1052, %1055
  %1058 = add nuw nsw i64 %1056, %1057
  %1059 = icmp eq i64 %1058, 2
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %63, align 1
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -44
  %1063 = add i64 %915, 59
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i2501, align 8
  %1067 = shl nsw i64 %1066, 2
  %1068 = add i64 %1067, %1034
  %1069 = load i32, i32* %EAX.i2405, align 4
  %1070 = add i64 %915, 63
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1068 to i32*
  store i32 %1069, i32* %1071, align 4
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -52
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = sext i32 %1077 to i64
  %1079 = shl nsw i64 %1078, 6
  store i64 %1079, i64* %RCX.i2501, align 8
  %1080 = load i64, i64* %RDX.i2496, align 8
  %1081 = add i64 %1079, %1080
  store i64 %1081, i64* %R14.i715, align 8
  %1082 = icmp ult i64 %1081, %1080
  %1083 = icmp ult i64 %1081, %1079
  %1084 = or i1 %1082, %1083
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %39, align 1
  %1086 = trunc i64 %1081 to i32
  %1087 = and i32 %1086, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %46, align 1
  %1092 = xor i64 %1080, %1081
  %1093 = lshr i64 %1092, 4
  %1094 = trunc i64 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %51, align 1
  %1096 = icmp eq i64 %1081, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %54, align 1
  %1098 = lshr i64 %1081, 63
  %1099 = trunc i64 %1098 to i8
  store i8 %1099, i8* %57, align 1
  %1100 = lshr i64 %1080, 63
  %1101 = lshr i64 %1078, 57
  %1102 = and i64 %1101, 1
  %1103 = xor i64 %1098, %1100
  %1104 = xor i64 %1098, %1102
  %1105 = add nuw nsw i64 %1103, %1104
  %1106 = icmp eq i64 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %63, align 1
  %1108 = add i64 %1072, -48
  %1109 = add i64 %1074, 18
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = shl nsw i64 %1112, 4
  store i64 %1113, i64* %RCX.i2501, align 8
  %1114 = add i64 %1113, %1081
  store i64 %1114, i64* %R14.i715, align 8
  %1115 = icmp ult i64 %1114, %1081
  %1116 = icmp ult i64 %1114, %1113
  %1117 = or i1 %1115, %1116
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %39, align 1
  %1119 = trunc i64 %1114 to i32
  %1120 = and i32 %1119, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %46, align 1
  %1125 = xor i64 %1113, %1081
  %1126 = xor i64 %1125, %1114
  %1127 = lshr i64 %1126, 4
  %1128 = trunc i64 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %51, align 1
  %1130 = icmp eq i64 %1114, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %54, align 1
  %1132 = lshr i64 %1114, 63
  %1133 = trunc i64 %1132 to i8
  store i8 %1133, i8* %57, align 1
  %1134 = lshr i64 %1112, 59
  %1135 = and i64 %1134, 1
  %1136 = xor i64 %1132, %1098
  %1137 = xor i64 %1132, %1135
  %1138 = add nuw nsw i64 %1136, %1137
  %1139 = icmp eq i64 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %63, align 1
  %1141 = load i64, i64* %RBP.i, align 8
  %1142 = add i64 %1141, -44
  %1143 = add i64 %1074, 29
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RCX.i2501, align 8
  %1147 = shl nsw i64 %1146, 2
  %1148 = add i64 %1147, %1114
  %1149 = add i64 %1074, 33
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = shl i32 %1151, 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RAX.i2624, align 8
  %1154 = lshr i32 %1151, 28
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  store i8 %1156, i8* %39, align 1
  %1157 = and i32 %1152, 240
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1162 = icmp eq i32 %1152, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %54, align 1
  %1164 = lshr i32 %1151, 27
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %1167 = add i64 %1141, -52
  %1168 = add i64 %1074, 40
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = sext i32 %1170 to i64
  %1172 = shl nsw i64 %1171, 6
  store i64 %1172, i64* %RCX.i2501, align 8
  %1173 = load i64, i64* %R11.i2481, align 8
  %1174 = add i64 %1172, %1173
  store i64 %1174, i64* %R11.i2481, align 8
  %1175 = icmp ult i64 %1174, %1173
  %1176 = icmp ult i64 %1174, %1172
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %39, align 1
  %1179 = trunc i64 %1174 to i32
  %1180 = and i32 %1179, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %46, align 1
  %1185 = xor i64 %1173, %1174
  %1186 = lshr i64 %1185, 4
  %1187 = trunc i64 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %51, align 1
  %1189 = icmp eq i64 %1174, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %54, align 1
  %1191 = lshr i64 %1174, 63
  %1192 = trunc i64 %1191 to i8
  store i8 %1192, i8* %57, align 1
  %1193 = lshr i64 %1173, 63
  %1194 = lshr i64 %1171, 57
  %1195 = and i64 %1194, 1
  %1196 = xor i64 %1191, %1193
  %1197 = xor i64 %1191, %1195
  %1198 = add nuw nsw i64 %1196, %1197
  %1199 = icmp eq i64 %1198, 2
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %63, align 1
  %1201 = load i64, i64* %RBP.i, align 8
  %1202 = add i64 %1201, -48
  %1203 = add i64 %1074, 51
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = shl nsw i64 %1206, 4
  store i64 %1207, i64* %RCX.i2501, align 8
  %1208 = add i64 %1207, %1174
  store i64 %1208, i64* %R11.i2481, align 8
  %1209 = icmp ult i64 %1208, %1174
  %1210 = icmp ult i64 %1208, %1207
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %39, align 1
  %1213 = trunc i64 %1208 to i32
  %1214 = and i32 %1213, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %46, align 1
  %1219 = xor i64 %1207, %1174
  %1220 = xor i64 %1219, %1208
  %1221 = lshr i64 %1220, 4
  %1222 = trunc i64 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %51, align 1
  %1224 = icmp eq i64 %1208, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %54, align 1
  %1226 = lshr i64 %1208, 63
  %1227 = trunc i64 %1226 to i8
  store i8 %1227, i8* %57, align 1
  %1228 = lshr i64 %1206, 59
  %1229 = and i64 %1228, 1
  %1230 = xor i64 %1226, %1191
  %1231 = xor i64 %1226, %1229
  %1232 = add nuw nsw i64 %1230, %1231
  %1233 = icmp eq i64 %1232, 2
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %63, align 1
  %1235 = add i64 %1201, -44
  %1236 = add i64 %1074, 62
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = sext i32 %1238 to i64
  store i64 %1239, i64* %RCX.i2501, align 8
  %1240 = shl nsw i64 %1239, 2
  %1241 = add i64 %1240, %1208
  %1242 = load i32, i32* %EAX.i2405, align 4
  %1243 = add i64 %1074, 66
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1241 to i32*
  store i32 %1242, i32* %1244, align 4
  %1245 = load i64, i64* %RBP.i, align 8
  %1246 = add i64 %1245, -52
  %1247 = load i64, i64* %3, align 8
  %1248 = add i64 %1247, 4
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1246 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = sext i32 %1250 to i64
  %1252 = shl nsw i64 %1251, 6
  store i64 %1252, i64* %RCX.i2501, align 8
  %1253 = load i64, i64* %R8.i2487, align 8
  %1254 = add i64 %1252, %1253
  store i64 %1254, i64* %R11.i2481, align 8
  %1255 = icmp ult i64 %1254, %1253
  %1256 = icmp ult i64 %1254, %1252
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %39, align 1
  %1259 = trunc i64 %1254 to i32
  %1260 = and i32 %1259, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %46, align 1
  %1265 = xor i64 %1253, %1254
  %1266 = lshr i64 %1265, 4
  %1267 = trunc i64 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %51, align 1
  %1269 = icmp eq i64 %1254, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %54, align 1
  %1271 = lshr i64 %1254, 63
  %1272 = trunc i64 %1271 to i8
  store i8 %1272, i8* %57, align 1
  %1273 = lshr i64 %1253, 63
  %1274 = lshr i64 %1251, 57
  %1275 = and i64 %1274, 1
  %1276 = xor i64 %1271, %1273
  %1277 = xor i64 %1271, %1275
  %1278 = add nuw nsw i64 %1276, %1277
  %1279 = icmp eq i64 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %63, align 1
  %1281 = add i64 %1245, -48
  %1282 = add i64 %1247, 18
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = shl nsw i64 %1285, 4
  store i64 %1286, i64* %RCX.i2501, align 8
  %1287 = add i64 %1286, %1254
  store i64 %1287, i64* %R11.i2481, align 8
  %1288 = icmp ult i64 %1287, %1254
  %1289 = icmp ult i64 %1287, %1286
  %1290 = or i1 %1288, %1289
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %39, align 1
  %1292 = trunc i64 %1287 to i32
  %1293 = and i32 %1292, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %46, align 1
  %1298 = xor i64 %1286, %1254
  %1299 = xor i64 %1298, %1287
  %1300 = lshr i64 %1299, 4
  %1301 = trunc i64 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %51, align 1
  %1303 = icmp eq i64 %1287, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %54, align 1
  %1305 = lshr i64 %1287, 63
  %1306 = trunc i64 %1305 to i8
  store i8 %1306, i8* %57, align 1
  %1307 = lshr i64 %1285, 59
  %1308 = and i64 %1307, 1
  %1309 = xor i64 %1305, %1271
  %1310 = xor i64 %1305, %1308
  %1311 = add nuw nsw i64 %1309, %1310
  %1312 = icmp eq i64 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %63, align 1
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -44
  %1316 = add i64 %1247, 29
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = sext i32 %1318 to i64
  store i64 %1319, i64* %RCX.i2501, align 8
  %1320 = shl nsw i64 %1319, 2
  %1321 = add i64 %1320, %1287
  %1322 = add i64 %1247, 33
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RAX.i2624, align 8
  %1326 = add i64 %1314, -52
  %1327 = add i64 %1247, 37
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = sext i32 %1329 to i64
  %1331 = shl nsw i64 %1330, 6
  store i64 %1331, i64* %RCX.i2501, align 8
  %1332 = load i64, i64* %R15.i447, align 8
  %1333 = add i64 %1331, %1332
  store i64 %1333, i64* %R15.i447, align 8
  %1334 = icmp ult i64 %1333, %1332
  %1335 = icmp ult i64 %1333, %1331
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %39, align 1
  %1338 = trunc i64 %1333 to i32
  %1339 = and i32 %1338, 255
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %46, align 1
  %1344 = xor i64 %1332, %1333
  %1345 = lshr i64 %1344, 4
  %1346 = trunc i64 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %51, align 1
  %1348 = icmp eq i64 %1333, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %54, align 1
  %1350 = lshr i64 %1333, 63
  %1351 = trunc i64 %1350 to i8
  store i8 %1351, i8* %57, align 1
  %1352 = lshr i64 %1332, 63
  %1353 = lshr i64 %1330, 57
  %1354 = and i64 %1353, 1
  %1355 = xor i64 %1350, %1352
  %1356 = xor i64 %1350, %1354
  %1357 = add nuw nsw i64 %1355, %1356
  %1358 = icmp eq i64 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %63, align 1
  %1360 = add i64 %1314, -48
  %1361 = add i64 %1247, 48
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = shl nsw i64 %1364, 4
  store i64 %1365, i64* %RCX.i2501, align 8
  %1366 = add i64 %1365, %1333
  store i64 %1366, i64* %R15.i447, align 8
  %1367 = icmp ult i64 %1366, %1333
  %1368 = icmp ult i64 %1366, %1365
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %39, align 1
  %1371 = trunc i64 %1366 to i32
  %1372 = and i32 %1371, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %46, align 1
  %1377 = xor i64 %1365, %1333
  %1378 = xor i64 %1377, %1366
  %1379 = lshr i64 %1378, 4
  %1380 = trunc i64 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %51, align 1
  %1382 = icmp eq i64 %1366, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %54, align 1
  %1384 = lshr i64 %1366, 63
  %1385 = trunc i64 %1384 to i8
  store i8 %1385, i8* %57, align 1
  %1386 = lshr i64 %1364, 59
  %1387 = and i64 %1386, 1
  %1388 = xor i64 %1384, %1350
  %1389 = xor i64 %1384, %1387
  %1390 = add nuw nsw i64 %1388, %1389
  %1391 = icmp eq i64 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %63, align 1
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -44
  %1395 = add i64 %1247, 59
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = sext i32 %1397 to i64
  store i64 %1398, i64* %RCX.i2501, align 8
  %1399 = shl nsw i64 %1398, 2
  %1400 = add i64 %1399, %1366
  %1401 = load i32, i32* %EAX.i2405, align 4
  %1402 = add i64 %1247, 63
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1400 to i32*
  store i32 %1401, i32* %1403, align 4
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -52
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1405 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = sext i32 %1409 to i64
  %1411 = shl nsw i64 %1410, 6
  store i64 %1411, i64* %RCX.i2501, align 8
  %1412 = load i64, i64* %RDX.i2496, align 8
  %1413 = add i64 %1411, %1412
  store i64 %1413, i64* %R11.i2481, align 8
  %1414 = icmp ult i64 %1413, %1412
  %1415 = icmp ult i64 %1413, %1411
  %1416 = or i1 %1414, %1415
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %39, align 1
  %1418 = trunc i64 %1413 to i32
  %1419 = and i32 %1418, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %46, align 1
  %1424 = xor i64 %1412, %1413
  %1425 = lshr i64 %1424, 4
  %1426 = trunc i64 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %51, align 1
  %1428 = icmp eq i64 %1413, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %54, align 1
  %1430 = lshr i64 %1413, 63
  %1431 = trunc i64 %1430 to i8
  store i8 %1431, i8* %57, align 1
  %1432 = lshr i64 %1412, 63
  %1433 = lshr i64 %1410, 57
  %1434 = and i64 %1433, 1
  %1435 = xor i64 %1430, %1432
  %1436 = xor i64 %1430, %1434
  %1437 = add nuw nsw i64 %1435, %1436
  %1438 = icmp eq i64 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %63, align 1
  %1440 = add i64 %1404, -48
  %1441 = add i64 %1406, 18
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = shl nsw i64 %1444, 4
  store i64 %1445, i64* %RCX.i2501, align 8
  %1446 = add i64 %1445, %1413
  store i64 %1446, i64* %R11.i2481, align 8
  %1447 = icmp ult i64 %1446, %1413
  %1448 = icmp ult i64 %1446, %1445
  %1449 = or i1 %1447, %1448
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %39, align 1
  %1451 = trunc i64 %1446 to i32
  %1452 = and i32 %1451, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %46, align 1
  %1457 = xor i64 %1445, %1413
  %1458 = xor i64 %1457, %1446
  %1459 = lshr i64 %1458, 4
  %1460 = trunc i64 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %51, align 1
  %1462 = icmp eq i64 %1446, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %54, align 1
  %1464 = lshr i64 %1446, 63
  %1465 = trunc i64 %1464 to i8
  store i8 %1465, i8* %57, align 1
  %1466 = lshr i64 %1444, 59
  %1467 = and i64 %1466, 1
  %1468 = xor i64 %1464, %1430
  %1469 = xor i64 %1464, %1467
  %1470 = add nuw nsw i64 %1468, %1469
  %1471 = icmp eq i64 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %63, align 1
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -44
  %1475 = add i64 %1406, 29
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = sext i32 %1477 to i64
  store i64 %1478, i64* %RCX.i2501, align 8
  %1479 = shl nsw i64 %1478, 2
  %1480 = add i64 %1479, %1446
  %1481 = add i64 %1406, 33
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i32*
  %1483 = load i32, i32* %1482, align 4
  %1484 = shl i32 %1483, 4
  %1485 = zext i32 %1484 to i64
  store i64 %1485, i64* %RAX.i2624, align 8
  %1486 = lshr i32 %1483, 28
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  store i8 %1488, i8* %39, align 1
  %1489 = and i32 %1484, 240
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1494 = icmp eq i32 %1484, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %54, align 1
  %1496 = lshr i32 %1483, 27
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  store i8 %1498, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %1499 = add i64 %1473, -52
  %1500 = add i64 %1406, 40
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = shl nsw i64 %1503, 6
  store i64 %1504, i64* %RCX.i2501, align 8
  %1505 = load i64, i64* %RBX.i1332, align 8
  %1506 = add i64 %1504, %1505
  store i64 %1506, i64* %RBX.i1332, align 8
  %1507 = icmp ult i64 %1506, %1505
  %1508 = icmp ult i64 %1506, %1504
  %1509 = or i1 %1507, %1508
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %39, align 1
  %1511 = trunc i64 %1506 to i32
  %1512 = and i32 %1511, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %46, align 1
  %1517 = xor i64 %1505, %1506
  %1518 = lshr i64 %1517, 4
  %1519 = trunc i64 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %51, align 1
  %1521 = icmp eq i64 %1506, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %54, align 1
  %1523 = lshr i64 %1506, 63
  %1524 = trunc i64 %1523 to i8
  store i8 %1524, i8* %57, align 1
  %1525 = lshr i64 %1505, 63
  %1526 = lshr i64 %1503, 57
  %1527 = and i64 %1526, 1
  %1528 = xor i64 %1523, %1525
  %1529 = xor i64 %1523, %1527
  %1530 = add nuw nsw i64 %1528, %1529
  %1531 = icmp eq i64 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %63, align 1
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -48
  %1535 = add i64 %1406, 51
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = sext i32 %1537 to i64
  %1539 = shl nsw i64 %1538, 4
  store i64 %1539, i64* %RCX.i2501, align 8
  %1540 = add i64 %1539, %1506
  store i64 %1540, i64* %RBX.i1332, align 8
  %1541 = icmp ult i64 %1540, %1506
  %1542 = icmp ult i64 %1540, %1539
  %1543 = or i1 %1541, %1542
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %39, align 1
  %1545 = trunc i64 %1540 to i32
  %1546 = and i32 %1545, 255
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %46, align 1
  %1551 = xor i64 %1539, %1506
  %1552 = xor i64 %1551, %1540
  %1553 = lshr i64 %1552, 4
  %1554 = trunc i64 %1553 to i8
  %1555 = and i8 %1554, 1
  store i8 %1555, i8* %51, align 1
  %1556 = icmp eq i64 %1540, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %54, align 1
  %1558 = lshr i64 %1540, 63
  %1559 = trunc i64 %1558 to i8
  store i8 %1559, i8* %57, align 1
  %1560 = lshr i64 %1538, 59
  %1561 = and i64 %1560, 1
  %1562 = xor i64 %1558, %1523
  %1563 = xor i64 %1558, %1561
  %1564 = add nuw nsw i64 %1562, %1563
  %1565 = icmp eq i64 %1564, 2
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %63, align 1
  %1567 = add i64 %1533, -44
  %1568 = add i64 %1406, 62
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = sext i32 %1570 to i64
  store i64 %1571, i64* %RCX.i2501, align 8
  %1572 = shl nsw i64 %1571, 2
  %1573 = add i64 %1572, %1540
  %1574 = load i32, i32* %EAX.i2405, align 4
  %1575 = add i64 %1406, 65
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1573 to i32*
  store i32 %1574, i32* %1576, align 4
  %1577 = load i64, i64* %RBP.i, align 8
  %1578 = add i64 %1577, -52
  %1579 = load i64, i64* %3, align 8
  %1580 = add i64 %1579, 4
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1578 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  %1584 = shl nsw i64 %1583, 6
  store i64 %1584, i64* %RCX.i2501, align 8
  %1585 = load i64, i64* %R8.i2487, align 8
  %1586 = add i64 %1584, %1585
  store i64 %1586, i64* %R11.i2481, align 8
  %1587 = icmp ult i64 %1586, %1585
  %1588 = icmp ult i64 %1586, %1584
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %39, align 1
  %1591 = trunc i64 %1586 to i32
  %1592 = and i32 %1591, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %46, align 1
  %1597 = xor i64 %1585, %1586
  %1598 = lshr i64 %1597, 4
  %1599 = trunc i64 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %51, align 1
  %1601 = icmp eq i64 %1586, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %54, align 1
  %1603 = lshr i64 %1586, 63
  %1604 = trunc i64 %1603 to i8
  store i8 %1604, i8* %57, align 1
  %1605 = lshr i64 %1585, 63
  %1606 = lshr i64 %1583, 57
  %1607 = and i64 %1606, 1
  %1608 = xor i64 %1603, %1605
  %1609 = xor i64 %1603, %1607
  %1610 = add nuw nsw i64 %1608, %1609
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %63, align 1
  %1613 = add i64 %1577, -48
  %1614 = add i64 %1579, 18
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i32*
  %1616 = load i32, i32* %1615, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = shl nsw i64 %1617, 4
  store i64 %1618, i64* %RCX.i2501, align 8
  %1619 = add i64 %1618, %1586
  store i64 %1619, i64* %R11.i2481, align 8
  %1620 = icmp ult i64 %1619, %1586
  %1621 = icmp ult i64 %1619, %1618
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %39, align 1
  %1624 = trunc i64 %1619 to i32
  %1625 = and i32 %1624, 255
  %1626 = tail call i32 @llvm.ctpop.i32(i32 %1625)
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  store i8 %1629, i8* %46, align 1
  %1630 = xor i64 %1618, %1586
  %1631 = xor i64 %1630, %1619
  %1632 = lshr i64 %1631, 4
  %1633 = trunc i64 %1632 to i8
  %1634 = and i8 %1633, 1
  store i8 %1634, i8* %51, align 1
  %1635 = icmp eq i64 %1619, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %54, align 1
  %1637 = lshr i64 %1619, 63
  %1638 = trunc i64 %1637 to i8
  store i8 %1638, i8* %57, align 1
  %1639 = lshr i64 %1617, 59
  %1640 = and i64 %1639, 1
  %1641 = xor i64 %1637, %1603
  %1642 = xor i64 %1637, %1640
  %1643 = add nuw nsw i64 %1641, %1642
  %1644 = icmp eq i64 %1643, 2
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %63, align 1
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -44
  %1648 = add i64 %1579, 29
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = sext i32 %1650 to i64
  store i64 %1651, i64* %RCX.i2501, align 8
  %1652 = shl nsw i64 %1651, 2
  %1653 = add i64 %1652, %1619
  %1654 = add i64 %1579, 33
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  %1656 = load i32, i32* %1655, align 4
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RAX.i2624, align 8
  %1658 = add i64 %1646, -52
  %1659 = add i64 %1579, 37
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = sext i32 %1661 to i64
  %1663 = shl nsw i64 %1662, 6
  store i64 %1663, i64* %RCX.i2501, align 8
  %1664 = load i64, i64* %R10.i2483, align 8
  %1665 = add i64 %1663, %1664
  store i64 %1665, i64* %R10.i2483, align 8
  %1666 = icmp ult i64 %1665, %1664
  %1667 = icmp ult i64 %1665, %1663
  %1668 = or i1 %1666, %1667
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %39, align 1
  %1670 = trunc i64 %1665 to i32
  %1671 = and i32 %1670, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %46, align 1
  %1676 = xor i64 %1664, %1665
  %1677 = lshr i64 %1676, 4
  %1678 = trunc i64 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %51, align 1
  %1680 = icmp eq i64 %1665, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %54, align 1
  %1682 = lshr i64 %1665, 63
  %1683 = trunc i64 %1682 to i8
  store i8 %1683, i8* %57, align 1
  %1684 = lshr i64 %1664, 63
  %1685 = lshr i64 %1662, 57
  %1686 = and i64 %1685, 1
  %1687 = xor i64 %1682, %1684
  %1688 = xor i64 %1682, %1686
  %1689 = add nuw nsw i64 %1687, %1688
  %1690 = icmp eq i64 %1689, 2
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %63, align 1
  %1692 = add i64 %1646, -48
  %1693 = add i64 %1579, 48
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = sext i32 %1695 to i64
  %1697 = shl nsw i64 %1696, 4
  store i64 %1697, i64* %RCX.i2501, align 8
  %1698 = add i64 %1697, %1665
  store i64 %1698, i64* %R10.i2483, align 8
  %1699 = icmp ult i64 %1698, %1665
  %1700 = icmp ult i64 %1698, %1697
  %1701 = or i1 %1699, %1700
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %39, align 1
  %1703 = trunc i64 %1698 to i32
  %1704 = and i32 %1703, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %46, align 1
  %1709 = xor i64 %1697, %1665
  %1710 = xor i64 %1709, %1698
  %1711 = lshr i64 %1710, 4
  %1712 = trunc i64 %1711 to i8
  %1713 = and i8 %1712, 1
  store i8 %1713, i8* %51, align 1
  %1714 = icmp eq i64 %1698, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %54, align 1
  %1716 = lshr i64 %1698, 63
  %1717 = trunc i64 %1716 to i8
  store i8 %1717, i8* %57, align 1
  %1718 = lshr i64 %1696, 59
  %1719 = and i64 %1718, 1
  %1720 = xor i64 %1716, %1682
  %1721 = xor i64 %1716, %1719
  %1722 = add nuw nsw i64 %1720, %1721
  %1723 = icmp eq i64 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %63, align 1
  %1725 = load i64, i64* %RBP.i, align 8
  %1726 = add i64 %1725, -44
  %1727 = add i64 %1579, 59
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = sext i32 %1729 to i64
  store i64 %1730, i64* %RCX.i2501, align 8
  %1731 = shl nsw i64 %1730, 2
  %1732 = add i64 %1731, %1698
  %1733 = load i32, i32* %EAX.i2405, align 4
  %1734 = add i64 %1579, 63
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1732 to i32*
  store i32 %1733, i32* %1735, align 4
  %1736 = load i64, i64* %RBP.i, align 8
  %1737 = add i64 %1736, -52
  %1738 = load i64, i64* %3, align 8
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1737 to i32*
  %1741 = load i32, i32* %1740, align 4
  %1742 = sext i32 %1741 to i64
  %1743 = shl nsw i64 %1742, 6
  store i64 %1743, i64* %RCX.i2501, align 8
  %1744 = load i64, i64* %RDX.i2496, align 8
  %1745 = add i64 %1743, %1744
  store i64 %1745, i64* %R10.i2483, align 8
  %1746 = icmp ult i64 %1745, %1744
  %1747 = icmp ult i64 %1745, %1743
  %1748 = or i1 %1746, %1747
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %39, align 1
  %1750 = trunc i64 %1745 to i32
  %1751 = and i32 %1750, 255
  %1752 = tail call i32 @llvm.ctpop.i32(i32 %1751)
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = xor i8 %1754, 1
  store i8 %1755, i8* %46, align 1
  %1756 = xor i64 %1744, %1745
  %1757 = lshr i64 %1756, 4
  %1758 = trunc i64 %1757 to i8
  %1759 = and i8 %1758, 1
  store i8 %1759, i8* %51, align 1
  %1760 = icmp eq i64 %1745, 0
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %54, align 1
  %1762 = lshr i64 %1745, 63
  %1763 = trunc i64 %1762 to i8
  store i8 %1763, i8* %57, align 1
  %1764 = lshr i64 %1744, 63
  %1765 = lshr i64 %1742, 57
  %1766 = and i64 %1765, 1
  %1767 = xor i64 %1762, %1764
  %1768 = xor i64 %1762, %1766
  %1769 = add nuw nsw i64 %1767, %1768
  %1770 = icmp eq i64 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %63, align 1
  %1772 = add i64 %1736, -48
  %1773 = add i64 %1738, 18
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = sext i32 %1775 to i64
  %1777 = shl nsw i64 %1776, 4
  store i64 %1777, i64* %RCX.i2501, align 8
  %1778 = add i64 %1777, %1745
  store i64 %1778, i64* %R10.i2483, align 8
  %1779 = icmp ult i64 %1778, %1745
  %1780 = icmp ult i64 %1778, %1777
  %1781 = or i1 %1779, %1780
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %39, align 1
  %1783 = trunc i64 %1778 to i32
  %1784 = and i32 %1783, 255
  %1785 = tail call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  store i8 %1788, i8* %46, align 1
  %1789 = xor i64 %1777, %1745
  %1790 = xor i64 %1789, %1778
  %1791 = lshr i64 %1790, 4
  %1792 = trunc i64 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %51, align 1
  %1794 = icmp eq i64 %1778, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %54, align 1
  %1796 = lshr i64 %1778, 63
  %1797 = trunc i64 %1796 to i8
  store i8 %1797, i8* %57, align 1
  %1798 = lshr i64 %1776, 59
  %1799 = and i64 %1798, 1
  %1800 = xor i64 %1796, %1762
  %1801 = xor i64 %1796, %1799
  %1802 = add nuw nsw i64 %1800, %1801
  %1803 = icmp eq i64 %1802, 2
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %63, align 1
  %1805 = load i64, i64* %RBP.i, align 8
  %1806 = add i64 %1805, -44
  %1807 = add i64 %1738, 29
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = sext i32 %1809 to i64
  store i64 %1810, i64* %RCX.i2501, align 8
  %1811 = shl nsw i64 %1810, 2
  %1812 = add i64 %1811, %1778
  %1813 = add i64 %1738, 33
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = shl i32 %1815, 4
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RAX.i2624, align 8
  %1818 = lshr i32 %1815, 28
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  store i8 %1820, i8* %39, align 1
  %1821 = and i32 %1816, 240
  %1822 = tail call i32 @llvm.ctpop.i32(i32 %1821)
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = xor i8 %1824, 1
  store i8 %1825, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1826 = icmp eq i32 %1816, 0
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %54, align 1
  %1828 = lshr i32 %1815, 27
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  store i8 %1830, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %1831 = add i64 %1805, -52
  %1832 = add i64 %1738, 40
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = sext i32 %1834 to i64
  %1836 = shl nsw i64 %1835, 6
  store i64 %1836, i64* %RCX.i2501, align 8
  %1837 = load i64, i64* %R9.i2485, align 8
  %1838 = add i64 %1836, %1837
  store i64 %1838, i64* %R9.i2485, align 8
  %1839 = icmp ult i64 %1838, %1837
  %1840 = icmp ult i64 %1838, %1836
  %1841 = or i1 %1839, %1840
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %39, align 1
  %1843 = trunc i64 %1838 to i32
  %1844 = and i32 %1843, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %46, align 1
  %1849 = xor i64 %1837, %1838
  %1850 = lshr i64 %1849, 4
  %1851 = trunc i64 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %51, align 1
  %1853 = icmp eq i64 %1838, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %54, align 1
  %1855 = lshr i64 %1838, 63
  %1856 = trunc i64 %1855 to i8
  store i8 %1856, i8* %57, align 1
  %1857 = lshr i64 %1837, 63
  %1858 = lshr i64 %1835, 57
  %1859 = and i64 %1858, 1
  %1860 = xor i64 %1855, %1857
  %1861 = xor i64 %1855, %1859
  %1862 = add nuw nsw i64 %1860, %1861
  %1863 = icmp eq i64 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %63, align 1
  %1865 = load i64, i64* %RBP.i, align 8
  %1866 = add i64 %1865, -48
  %1867 = add i64 %1738, 51
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = sext i32 %1869 to i64
  %1871 = shl nsw i64 %1870, 4
  store i64 %1871, i64* %RCX.i2501, align 8
  %1872 = add i64 %1871, %1838
  store i64 %1872, i64* %R9.i2485, align 8
  %1873 = icmp ult i64 %1872, %1838
  %1874 = icmp ult i64 %1872, %1871
  %1875 = or i1 %1873, %1874
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %39, align 1
  %1877 = trunc i64 %1872 to i32
  %1878 = and i32 %1877, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %46, align 1
  %1883 = xor i64 %1871, %1838
  %1884 = xor i64 %1883, %1872
  %1885 = lshr i64 %1884, 4
  %1886 = trunc i64 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %51, align 1
  %1888 = icmp eq i64 %1872, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %54, align 1
  %1890 = lshr i64 %1872, 63
  %1891 = trunc i64 %1890 to i8
  store i8 %1891, i8* %57, align 1
  %1892 = lshr i64 %1870, 59
  %1893 = and i64 %1892, 1
  %1894 = xor i64 %1890, %1855
  %1895 = xor i64 %1890, %1893
  %1896 = add nuw nsw i64 %1894, %1895
  %1897 = icmp eq i64 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %63, align 1
  %1899 = add i64 %1865, -44
  %1900 = add i64 %1738, 62
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RCX.i2501, align 8
  %1904 = shl nsw i64 %1903, 2
  %1905 = add i64 %1904, %1872
  %1906 = load i32, i32* %EAX.i2405, align 4
  %1907 = add i64 %1738, 66
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1905 to i32*
  store i32 %1906, i32* %1908, align 4
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -52
  %1911 = load i64, i64* %3, align 8
  %1912 = add i64 %1911, 4
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1910 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = sext i32 %1914 to i64
  %1916 = shl nsw i64 %1915, 6
  store i64 %1916, i64* %RCX.i2501, align 8
  %1917 = load i64, i64* %R8.i2487, align 8
  %1918 = add i64 %1916, %1917
  store i64 %1918, i64* %R9.i2485, align 8
  %1919 = icmp ult i64 %1918, %1917
  %1920 = icmp ult i64 %1918, %1916
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %39, align 1
  %1923 = trunc i64 %1918 to i32
  %1924 = and i32 %1923, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %46, align 1
  %1929 = xor i64 %1917, %1918
  %1930 = lshr i64 %1929, 4
  %1931 = trunc i64 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %51, align 1
  %1933 = icmp eq i64 %1918, 0
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %54, align 1
  %1935 = lshr i64 %1918, 63
  %1936 = trunc i64 %1935 to i8
  store i8 %1936, i8* %57, align 1
  %1937 = lshr i64 %1917, 63
  %1938 = lshr i64 %1915, 57
  %1939 = and i64 %1938, 1
  %1940 = xor i64 %1935, %1937
  %1941 = xor i64 %1935, %1939
  %1942 = add nuw nsw i64 %1940, %1941
  %1943 = icmp eq i64 %1942, 2
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %63, align 1
  %1945 = add i64 %1909, -48
  %1946 = add i64 %1911, 18
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sext i32 %1948 to i64
  %1950 = shl nsw i64 %1949, 4
  store i64 %1950, i64* %RCX.i2501, align 8
  %1951 = add i64 %1950, %1918
  store i64 %1951, i64* %R9.i2485, align 8
  %1952 = icmp ult i64 %1951, %1918
  %1953 = icmp ult i64 %1951, %1950
  %1954 = or i1 %1952, %1953
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %39, align 1
  %1956 = trunc i64 %1951 to i32
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %46, align 1
  %1962 = xor i64 %1950, %1918
  %1963 = xor i64 %1962, %1951
  %1964 = lshr i64 %1963, 4
  %1965 = trunc i64 %1964 to i8
  %1966 = and i8 %1965, 1
  store i8 %1966, i8* %51, align 1
  %1967 = icmp eq i64 %1951, 0
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %54, align 1
  %1969 = lshr i64 %1951, 63
  %1970 = trunc i64 %1969 to i8
  store i8 %1970, i8* %57, align 1
  %1971 = lshr i64 %1949, 59
  %1972 = and i64 %1971, 1
  %1973 = xor i64 %1969, %1935
  %1974 = xor i64 %1969, %1972
  %1975 = add nuw nsw i64 %1973, %1974
  %1976 = icmp eq i64 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %63, align 1
  %1978 = load i64, i64* %RBP.i, align 8
  %1979 = add i64 %1978, -44
  %1980 = add i64 %1911, 29
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = sext i32 %1982 to i64
  store i64 %1983, i64* %RCX.i2501, align 8
  %1984 = shl nsw i64 %1983, 2
  %1985 = add i64 %1984, %1951
  %1986 = add i64 %1911, 33
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RAX.i2624, align 8
  %1990 = add i64 %1978, -52
  %1991 = add i64 %1911, 37
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = sext i32 %1993 to i64
  %1995 = shl nsw i64 %1994, 6
  store i64 %1995, i64* %RCX.i2501, align 8
  %1996 = load i64, i64* %RSI.i2494, align 8
  %1997 = add i64 %1995, %1996
  store i64 %1997, i64* %RSI.i2494, align 8
  %1998 = icmp ult i64 %1997, %1996
  %1999 = icmp ult i64 %1997, %1995
  %2000 = or i1 %1998, %1999
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %39, align 1
  %2002 = trunc i64 %1997 to i32
  %2003 = and i32 %2002, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %46, align 1
  %2008 = xor i64 %1996, %1997
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  store i8 %2011, i8* %51, align 1
  %2012 = icmp eq i64 %1997, 0
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %54, align 1
  %2014 = lshr i64 %1997, 63
  %2015 = trunc i64 %2014 to i8
  store i8 %2015, i8* %57, align 1
  %2016 = lshr i64 %1996, 63
  %2017 = lshr i64 %1994, 57
  %2018 = and i64 %2017, 1
  %2019 = xor i64 %2014, %2016
  %2020 = xor i64 %2014, %2018
  %2021 = add nuw nsw i64 %2019, %2020
  %2022 = icmp eq i64 %2021, 2
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %63, align 1
  %2024 = add i64 %1978, -48
  %2025 = add i64 %1911, 48
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  %2029 = shl nsw i64 %2028, 4
  store i64 %2029, i64* %RCX.i2501, align 8
  %2030 = add i64 %2029, %1997
  store i64 %2030, i64* %RSI.i2494, align 8
  %2031 = icmp ult i64 %2030, %1997
  %2032 = icmp ult i64 %2030, %2029
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %39, align 1
  %2035 = trunc i64 %2030 to i32
  %2036 = and i32 %2035, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %46, align 1
  %2041 = xor i64 %2029, %1997
  %2042 = xor i64 %2041, %2030
  %2043 = lshr i64 %2042, 4
  %2044 = trunc i64 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %51, align 1
  %2046 = icmp eq i64 %2030, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %54, align 1
  %2048 = lshr i64 %2030, 63
  %2049 = trunc i64 %2048 to i8
  store i8 %2049, i8* %57, align 1
  %2050 = lshr i64 %2028, 59
  %2051 = and i64 %2050, 1
  %2052 = xor i64 %2048, %2014
  %2053 = xor i64 %2048, %2051
  %2054 = add nuw nsw i64 %2052, %2053
  %2055 = icmp eq i64 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %63, align 1
  %2057 = load i64, i64* %RBP.i, align 8
  %2058 = add i64 %2057, -44
  %2059 = add i64 %1911, 59
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i32*
  %2061 = load i32, i32* %2060, align 4
  %2062 = sext i32 %2061 to i64
  store i64 %2062, i64* %RCX.i2501, align 8
  %2063 = shl nsw i64 %2062, 2
  %2064 = add i64 %2063, %2030
  %2065 = load i32, i32* %EAX.i2405, align 4
  %2066 = add i64 %1911, 62
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2064 to i32*
  store i32 %2065, i32* %2067, align 4
  %2068 = load i64, i64* %RBP.i, align 8
  %2069 = add i64 %2068, -52
  %2070 = load i64, i64* %3, align 8
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2069 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = sext i32 %2073 to i64
  %2075 = shl nsw i64 %2074, 6
  store i64 %2075, i64* %RCX.i2501, align 8
  %2076 = load i64, i64* %RDX.i2496, align 8
  %2077 = add i64 %2075, %2076
  store i64 %2077, i64* %RSI.i2494, align 8
  %2078 = icmp ult i64 %2077, %2076
  %2079 = icmp ult i64 %2077, %2075
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %39, align 1
  %2082 = trunc i64 %2077 to i32
  %2083 = and i32 %2082, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %46, align 1
  %2088 = xor i64 %2076, %2077
  %2089 = lshr i64 %2088, 4
  %2090 = trunc i64 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %51, align 1
  %2092 = icmp eq i64 %2077, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %54, align 1
  %2094 = lshr i64 %2077, 63
  %2095 = trunc i64 %2094 to i8
  store i8 %2095, i8* %57, align 1
  %2096 = lshr i64 %2076, 63
  %2097 = lshr i64 %2074, 57
  %2098 = and i64 %2097, 1
  %2099 = xor i64 %2094, %2096
  %2100 = xor i64 %2094, %2098
  %2101 = add nuw nsw i64 %2099, %2100
  %2102 = icmp eq i64 %2101, 2
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %63, align 1
  %2104 = add i64 %2068, -48
  %2105 = add i64 %2070, 18
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = sext i32 %2107 to i64
  %2109 = shl nsw i64 %2108, 4
  store i64 %2109, i64* %RCX.i2501, align 8
  %2110 = add i64 %2109, %2077
  store i64 %2110, i64* %RSI.i2494, align 8
  %2111 = icmp ult i64 %2110, %2077
  %2112 = icmp ult i64 %2110, %2109
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %39, align 1
  %2115 = trunc i64 %2110 to i32
  %2116 = and i32 %2115, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %46, align 1
  %2121 = xor i64 %2109, %2077
  %2122 = xor i64 %2121, %2110
  %2123 = lshr i64 %2122, 4
  %2124 = trunc i64 %2123 to i8
  %2125 = and i8 %2124, 1
  store i8 %2125, i8* %51, align 1
  %2126 = icmp eq i64 %2110, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %54, align 1
  %2128 = lshr i64 %2110, 63
  %2129 = trunc i64 %2128 to i8
  store i8 %2129, i8* %57, align 1
  %2130 = lshr i64 %2108, 59
  %2131 = and i64 %2130, 1
  %2132 = xor i64 %2128, %2094
  %2133 = xor i64 %2128, %2131
  %2134 = add nuw nsw i64 %2132, %2133
  %2135 = icmp eq i64 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %63, align 1
  %2137 = load i64, i64* %RBP.i, align 8
  %2138 = add i64 %2137, -44
  %2139 = add i64 %2070, 29
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = sext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i2501, align 8
  %2143 = shl nsw i64 %2142, 2
  %2144 = add i64 %2143, %2110
  %2145 = add i64 %2070, 32
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = shl i32 %2147, 4
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RAX.i2624, align 8
  %2150 = lshr i32 %2147, 28
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  store i8 %2152, i8* %39, align 1
  %2153 = and i32 %2148, 240
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2158 = icmp eq i32 %2148, 0
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %54, align 1
  %2160 = lshr i32 %2147, 27
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  store i8 %2162, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2163 = add i64 %2137, -52
  %2164 = add i64 %2070, 39
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i32*
  %2166 = load i32, i32* %2165, align 4
  %2167 = sext i32 %2166 to i64
  %2168 = shl nsw i64 %2167, 6
  store i64 %2168, i64* %RCX.i2501, align 8
  %.lobit73 = lshr i32 %2166, 31
  %2169 = trunc i32 %.lobit73 to i8
  store i8 %2169, i8* %39, align 1
  %2170 = trunc i64 %2168 to i32
  %2171 = and i32 %2170, 192
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2176 = icmp eq i32 %2166, 0
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %54, align 1
  %2178 = lshr i64 %2167, 57
  %2179 = trunc i64 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2181 = add i64 %2137, -96
  %2182 = add i64 %2070, 47
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183, align 8
  %2185 = add i64 %2168, %2184
  store i64 %2185, i64* %RSI.i2494, align 8
  %2186 = icmp ult i64 %2185, %2184
  %2187 = icmp ult i64 %2185, %2168
  %2188 = or i1 %2186, %2187
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %39, align 1
  %2190 = trunc i64 %2185 to i32
  %2191 = and i32 %2190, 255
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %46, align 1
  %2196 = xor i64 %2184, %2185
  %2197 = lshr i64 %2196, 4
  %2198 = trunc i64 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %51, align 1
  %2200 = icmp eq i64 %2185, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %54, align 1
  %2202 = lshr i64 %2185, 63
  %2203 = trunc i64 %2202 to i8
  store i8 %2203, i8* %57, align 1
  %2204 = lshr i64 %2184, 63
  %2205 = lshr i64 %2167, 57
  %2206 = and i64 %2205, 1
  %2207 = xor i64 %2202, %2204
  %2208 = xor i64 %2202, %2206
  %2209 = add nuw nsw i64 %2207, %2208
  %2210 = icmp eq i64 %2209, 2
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %63, align 1
  %2212 = load i64, i64* %RBP.i, align 8
  %2213 = add i64 %2212, -48
  %2214 = add i64 %2070, 54
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = sext i32 %2216 to i64
  %2218 = shl nsw i64 %2217, 4
  store i64 %2218, i64* %RCX.i2501, align 8
  %2219 = add i64 %2218, %2185
  store i64 %2219, i64* %RSI.i2494, align 8
  %2220 = icmp ult i64 %2219, %2185
  %2221 = icmp ult i64 %2219, %2218
  %2222 = or i1 %2220, %2221
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %39, align 1
  %2224 = trunc i64 %2219 to i32
  %2225 = and i32 %2224, 255
  %2226 = tail call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  store i8 %2229, i8* %46, align 1
  %2230 = xor i64 %2218, %2185
  %2231 = xor i64 %2230, %2219
  %2232 = lshr i64 %2231, 4
  %2233 = trunc i64 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %51, align 1
  %2235 = icmp eq i64 %2219, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %54, align 1
  %2237 = lshr i64 %2219, 63
  %2238 = trunc i64 %2237 to i8
  store i8 %2238, i8* %57, align 1
  %2239 = lshr i64 %2217, 59
  %2240 = and i64 %2239, 1
  %2241 = xor i64 %2237, %2202
  %2242 = xor i64 %2237, %2240
  %2243 = add nuw nsw i64 %2241, %2242
  %2244 = icmp eq i64 %2243, 2
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %63, align 1
  %2246 = add i64 %2212, -44
  %2247 = add i64 %2070, 65
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = sext i32 %2249 to i64
  store i64 %2250, i64* %RCX.i2501, align 8
  %2251 = shl nsw i64 %2250, 2
  %2252 = add i64 %2251, %2219
  %2253 = load i32, i32* %EAX.i2405, align 4
  %2254 = add i64 %2070, 68
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2252 to i32*
  store i32 %2253, i32* %2255, align 4
  %2256 = load i64, i64* %RBP.i, align 8
  %2257 = add i64 %2256, -52
  %2258 = load i64, i64* %3, align 8
  %2259 = add i64 %2258, 4
  store i64 %2259, i64* %3, align 8
  %2260 = inttoptr i64 %2257 to i32*
  %2261 = load i32, i32* %2260, align 4
  %2262 = sext i32 %2261 to i64
  %2263 = shl nsw i64 %2262, 6
  store i64 %2263, i64* %RCX.i2501, align 8
  %2264 = load i64, i64* %R8.i2487, align 8
  %2265 = add i64 %2263, %2264
  store i64 %2265, i64* %R8.i2487, align 8
  %2266 = icmp ult i64 %2265, %2264
  %2267 = icmp ult i64 %2265, %2263
  %2268 = or i1 %2266, %2267
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %39, align 1
  %2270 = trunc i64 %2265 to i32
  %2271 = and i32 %2270, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %46, align 1
  %2276 = xor i64 %2264, %2265
  %2277 = lshr i64 %2276, 4
  %2278 = trunc i64 %2277 to i8
  %2279 = and i8 %2278, 1
  store i8 %2279, i8* %51, align 1
  %2280 = icmp eq i64 %2265, 0
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %54, align 1
  %2282 = lshr i64 %2265, 63
  %2283 = trunc i64 %2282 to i8
  store i8 %2283, i8* %57, align 1
  %2284 = lshr i64 %2264, 63
  %2285 = lshr i64 %2262, 57
  %2286 = and i64 %2285, 1
  %2287 = xor i64 %2282, %2284
  %2288 = xor i64 %2282, %2286
  %2289 = add nuw nsw i64 %2287, %2288
  %2290 = icmp eq i64 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %63, align 1
  %2292 = add i64 %2256, -48
  %2293 = add i64 %2258, 15
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = sext i32 %2295 to i64
  %2297 = shl nsw i64 %2296, 4
  store i64 %2297, i64* %RCX.i2501, align 8
  %2298 = add i64 %2297, %2265
  store i64 %2298, i64* %R8.i2487, align 8
  %2299 = icmp ult i64 %2298, %2265
  %2300 = icmp ult i64 %2298, %2297
  %2301 = or i1 %2299, %2300
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %39, align 1
  %2303 = trunc i64 %2298 to i32
  %2304 = and i32 %2303, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %46, align 1
  %2309 = xor i64 %2297, %2265
  %2310 = xor i64 %2309, %2298
  %2311 = lshr i64 %2310, 4
  %2312 = trunc i64 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %51, align 1
  %2314 = icmp eq i64 %2298, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %54, align 1
  %2316 = lshr i64 %2298, 63
  %2317 = trunc i64 %2316 to i8
  store i8 %2317, i8* %57, align 1
  %2318 = lshr i64 %2296, 59
  %2319 = and i64 %2318, 1
  %2320 = xor i64 %2316, %2282
  %2321 = xor i64 %2316, %2319
  %2322 = add nuw nsw i64 %2320, %2321
  %2323 = icmp eq i64 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %63, align 1
  %2325 = load i64, i64* %RBP.i, align 8
  %2326 = add i64 %2325, -44
  %2327 = add i64 %2258, 26
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = sext i32 %2329 to i64
  store i64 %2330, i64* %RCX.i2501, align 8
  %2331 = shl nsw i64 %2330, 2
  %2332 = add i64 %2331, %2298
  %2333 = add i64 %2258, 30
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i32*
  %2335 = load i32, i32* %2334, align 4
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RAX.i2624, align 8
  %2337 = add i64 %2325, -52
  %2338 = add i64 %2258, 34
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i32*
  %2340 = load i32, i32* %2339, align 4
  %2341 = sext i32 %2340 to i64
  %2342 = shl nsw i64 %2341, 6
  store i64 %2342, i64* %RCX.i2501, align 8
  %2343 = load i64, i64* %RDI.i2492, align 8
  %2344 = add i64 %2342, %2343
  store i64 %2344, i64* %RDI.i2492, align 8
  %2345 = icmp ult i64 %2344, %2343
  %2346 = icmp ult i64 %2344, %2342
  %2347 = or i1 %2345, %2346
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %39, align 1
  %2349 = trunc i64 %2344 to i32
  %2350 = and i32 %2349, 255
  %2351 = tail call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  store i8 %2354, i8* %46, align 1
  %2355 = xor i64 %2343, %2344
  %2356 = lshr i64 %2355, 4
  %2357 = trunc i64 %2356 to i8
  %2358 = and i8 %2357, 1
  store i8 %2358, i8* %51, align 1
  %2359 = icmp eq i64 %2344, 0
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %54, align 1
  %2361 = lshr i64 %2344, 63
  %2362 = trunc i64 %2361 to i8
  store i8 %2362, i8* %57, align 1
  %2363 = lshr i64 %2343, 63
  %2364 = lshr i64 %2341, 57
  %2365 = and i64 %2364, 1
  %2366 = xor i64 %2361, %2363
  %2367 = xor i64 %2361, %2365
  %2368 = add nuw nsw i64 %2366, %2367
  %2369 = icmp eq i64 %2368, 2
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %63, align 1
  %2371 = add i64 %2325, -48
  %2372 = add i64 %2258, 45
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = sext i32 %2374 to i64
  %2376 = shl nsw i64 %2375, 4
  store i64 %2376, i64* %RCX.i2501, align 8
  %2377 = add i64 %2376, %2344
  store i64 %2377, i64* %RDI.i2492, align 8
  %2378 = icmp ult i64 %2377, %2344
  %2379 = icmp ult i64 %2377, %2376
  %2380 = or i1 %2378, %2379
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %39, align 1
  %2382 = trunc i64 %2377 to i32
  %2383 = and i32 %2382, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %46, align 1
  %2388 = xor i64 %2376, %2344
  %2389 = xor i64 %2388, %2377
  %2390 = lshr i64 %2389, 4
  %2391 = trunc i64 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %51, align 1
  %2393 = icmp eq i64 %2377, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %54, align 1
  %2395 = lshr i64 %2377, 63
  %2396 = trunc i64 %2395 to i8
  store i8 %2396, i8* %57, align 1
  %2397 = lshr i64 %2375, 59
  %2398 = and i64 %2397, 1
  %2399 = xor i64 %2395, %2361
  %2400 = xor i64 %2395, %2398
  %2401 = add nuw nsw i64 %2399, %2400
  %2402 = icmp eq i64 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %63, align 1
  %2404 = load i64, i64* %RBP.i, align 8
  %2405 = add i64 %2404, -44
  %2406 = add i64 %2258, 56
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  %2408 = load i32, i32* %2407, align 4
  %2409 = sext i32 %2408 to i64
  store i64 %2409, i64* %RCX.i2501, align 8
  %2410 = shl nsw i64 %2409, 2
  %2411 = add i64 %2410, %2377
  %2412 = load i32, i32* %EAX.i2405, align 4
  %2413 = add i64 %2258, 59
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2411 to i32*
  store i32 %2412, i32* %2414, align 4
  %2415 = load i64, i64* %RBP.i, align 8
  %2416 = add i64 %2415, -52
  %2417 = load i64, i64* %3, align 8
  %2418 = add i64 %2417, 4
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2416 to i32*
  %2420 = load i32, i32* %2419, align 4
  %2421 = sext i32 %2420 to i64
  %2422 = shl nsw i64 %2421, 6
  store i64 %2422, i64* %RCX.i2501, align 8
  %2423 = load i64, i64* %RDX.i2496, align 8
  %2424 = add i64 %2422, %2423
  store i64 %2424, i64* %RDX.i2496, align 8
  %2425 = icmp ult i64 %2424, %2423
  %2426 = icmp ult i64 %2424, %2422
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %39, align 1
  %2429 = trunc i64 %2424 to i32
  %2430 = and i32 %2429, 255
  %2431 = tail call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  store i8 %2434, i8* %46, align 1
  %2435 = xor i64 %2423, %2424
  %2436 = lshr i64 %2435, 4
  %2437 = trunc i64 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %51, align 1
  %2439 = icmp eq i64 %2424, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %54, align 1
  %2441 = lshr i64 %2424, 63
  %2442 = trunc i64 %2441 to i8
  store i8 %2442, i8* %57, align 1
  %2443 = lshr i64 %2423, 63
  %2444 = lshr i64 %2421, 57
  %2445 = and i64 %2444, 1
  %2446 = xor i64 %2441, %2443
  %2447 = xor i64 %2441, %2445
  %2448 = add nuw nsw i64 %2446, %2447
  %2449 = icmp eq i64 %2448, 2
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %63, align 1
  %2451 = add i64 %2415, -48
  %2452 = add i64 %2417, 15
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = sext i32 %2454 to i64
  %2456 = shl nsw i64 %2455, 4
  store i64 %2456, i64* %RCX.i2501, align 8
  %2457 = add i64 %2456, %2424
  store i64 %2457, i64* %RDX.i2496, align 8
  %2458 = icmp ult i64 %2457, %2424
  %2459 = icmp ult i64 %2457, %2456
  %2460 = or i1 %2458, %2459
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %39, align 1
  %2462 = trunc i64 %2457 to i32
  %2463 = and i32 %2462, 255
  %2464 = tail call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %46, align 1
  %2468 = xor i64 %2456, %2424
  %2469 = xor i64 %2468, %2457
  %2470 = lshr i64 %2469, 4
  %2471 = trunc i64 %2470 to i8
  %2472 = and i8 %2471, 1
  store i8 %2472, i8* %51, align 1
  %2473 = icmp eq i64 %2457, 0
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %54, align 1
  %2475 = lshr i64 %2457, 63
  %2476 = trunc i64 %2475 to i8
  store i8 %2476, i8* %57, align 1
  %2477 = lshr i64 %2455, 59
  %2478 = and i64 %2477, 1
  %2479 = xor i64 %2475, %2441
  %2480 = xor i64 %2475, %2478
  %2481 = add nuw nsw i64 %2479, %2480
  %2482 = icmp eq i64 %2481, 2
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %63, align 1
  %2484 = load i64, i64* %RBP.i, align 8
  %2485 = add i64 %2484, -44
  %2486 = add i64 %2417, 26
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = sext i32 %2488 to i64
  store i64 %2489, i64* %RCX.i2501, align 8
  %2490 = shl nsw i64 %2489, 2
  %2491 = add i64 %2490, %2457
  %2492 = add i64 %2417, 29
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = shl i32 %2494, 4
  %2496 = zext i32 %2495 to i64
  store i64 %2496, i64* %RAX.i2624, align 8
  %2497 = lshr i32 %2494, 28
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  store i8 %2499, i8* %39, align 1
  %2500 = and i32 %2495, 240
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2505 = icmp eq i32 %2495, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %54, align 1
  %2507 = lshr i32 %2494, 27
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  store i8 %2509, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2510 = add i64 %2484, -52
  %2511 = add i64 %2417, 36
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = sext i32 %2513 to i64
  %2515 = shl nsw i64 %2514, 6
  store i64 %2515, i64* %RCX.i2501, align 8
  %.lobit82 = lshr i32 %2513, 31
  %2516 = trunc i32 %.lobit82 to i8
  store i8 %2516, i8* %39, align 1
  %2517 = trunc i64 %2515 to i32
  %2518 = and i32 %2517, 192
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2523 = icmp eq i32 %2513, 0
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %54, align 1
  %2525 = lshr i64 %2514, 57
  %2526 = trunc i64 %2525 to i8
  %2527 = and i8 %2526, 1
  store i8 %2527, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2528 = add i64 %2484, -112
  %2529 = add i64 %2417, 44
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  %2532 = add i64 %2515, %2531
  store i64 %2532, i64* %RDX.i2496, align 8
  %2533 = icmp ult i64 %2532, %2531
  %2534 = icmp ult i64 %2532, %2515
  %2535 = or i1 %2533, %2534
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %39, align 1
  %2537 = trunc i64 %2532 to i32
  %2538 = and i32 %2537, 255
  %2539 = tail call i32 @llvm.ctpop.i32(i32 %2538)
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  %2542 = xor i8 %2541, 1
  store i8 %2542, i8* %46, align 1
  %2543 = xor i64 %2531, %2532
  %2544 = lshr i64 %2543, 4
  %2545 = trunc i64 %2544 to i8
  %2546 = and i8 %2545, 1
  store i8 %2546, i8* %51, align 1
  %2547 = icmp eq i64 %2532, 0
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %54, align 1
  %2549 = lshr i64 %2532, 63
  %2550 = trunc i64 %2549 to i8
  store i8 %2550, i8* %57, align 1
  %2551 = lshr i64 %2531, 63
  %2552 = lshr i64 %2514, 57
  %2553 = and i64 %2552, 1
  %2554 = xor i64 %2549, %2551
  %2555 = xor i64 %2549, %2553
  %2556 = add nuw nsw i64 %2554, %2555
  %2557 = icmp eq i64 %2556, 2
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %63, align 1
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -48
  %2561 = add i64 %2417, 51
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  %2563 = load i32, i32* %2562, align 4
  %2564 = sext i32 %2563 to i64
  %2565 = shl nsw i64 %2564, 4
  store i64 %2565, i64* %RCX.i2501, align 8
  %2566 = add i64 %2565, %2532
  store i64 %2566, i64* %RDX.i2496, align 8
  %2567 = icmp ult i64 %2566, %2532
  %2568 = icmp ult i64 %2566, %2565
  %2569 = or i1 %2567, %2568
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %39, align 1
  %2571 = trunc i64 %2566 to i32
  %2572 = and i32 %2571, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %46, align 1
  %2577 = xor i64 %2565, %2532
  %2578 = xor i64 %2577, %2566
  %2579 = lshr i64 %2578, 4
  %2580 = trunc i64 %2579 to i8
  %2581 = and i8 %2580, 1
  store i8 %2581, i8* %51, align 1
  %2582 = icmp eq i64 %2566, 0
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %54, align 1
  %2584 = lshr i64 %2566, 63
  %2585 = trunc i64 %2584 to i8
  store i8 %2585, i8* %57, align 1
  %2586 = lshr i64 %2564, 59
  %2587 = and i64 %2586, 1
  %2588 = xor i64 %2584, %2549
  %2589 = xor i64 %2584, %2587
  %2590 = add nuw nsw i64 %2588, %2589
  %2591 = icmp eq i64 %2590, 2
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %63, align 1
  %2593 = add i64 %2559, -44
  %2594 = add i64 %2417, 62
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i32*
  %2596 = load i32, i32* %2595, align 4
  %2597 = sext i32 %2596 to i64
  store i64 %2597, i64* %RCX.i2501, align 8
  %2598 = shl nsw i64 %2597, 2
  %2599 = add i64 %2598, %2566
  %2600 = load i32, i32* %EAX.i2405, align 4
  %2601 = add i64 %2417, 65
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2599 to i32*
  store i32 %2600, i32* %2602, align 4
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -44
  %2605 = load i64, i64* %3, align 8
  %2606 = add i64 %2605, 3
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2604 to i32*
  %2608 = load i32, i32* %2607, align 4
  %2609 = add i32 %2608, 1
  %2610 = zext i32 %2609 to i64
  store i64 %2610, i64* %RAX.i2624, align 8
  %2611 = icmp eq i32 %2608, -1
  %2612 = icmp eq i32 %2609, 0
  %2613 = or i1 %2611, %2612
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %39, align 1
  %2615 = and i32 %2609, 255
  %2616 = tail call i32 @llvm.ctpop.i32(i32 %2615)
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  %2619 = xor i8 %2618, 1
  store i8 %2619, i8* %46, align 1
  %2620 = xor i32 %2609, %2608
  %2621 = lshr i32 %2620, 4
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  store i8 %2623, i8* %51, align 1
  %2624 = zext i1 %2612 to i8
  store i8 %2624, i8* %54, align 1
  %2625 = lshr i32 %2609, 31
  %2626 = trunc i32 %2625 to i8
  store i8 %2626, i8* %57, align 1
  %2627 = lshr i32 %2608, 31
  %2628 = xor i32 %2625, %2627
  %2629 = add nuw nsw i32 %2628, %2625
  %2630 = icmp eq i32 %2629, 2
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %63, align 1
  %2632 = add i64 %2605, 9
  store i64 %2632, i64* %3, align 8
  store i32 %2609, i32* %2607, align 4
  %2633 = load i64, i64* %3, align 8
  %2634 = add i64 %2633, -945
  store i64 %2634, i64* %3, align 8
  br label %block_.L_47991e

block_.L_479cd4:                                  ; preds = %block_.L_47991e
  %2635 = add i64 %521, -48
  %2636 = add i64 %549, 8
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = add i32 %2638, 1
  %2640 = zext i32 %2639 to i64
  store i64 %2640, i64* %RAX.i2624, align 8
  %2641 = icmp eq i32 %2638, -1
  %2642 = icmp eq i32 %2639, 0
  %2643 = or i1 %2641, %2642
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %39, align 1
  %2645 = and i32 %2639, 255
  %2646 = tail call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  store i8 %2649, i8* %46, align 1
  %2650 = xor i32 %2639, %2638
  %2651 = lshr i32 %2650, 4
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  store i8 %2653, i8* %51, align 1
  %2654 = zext i1 %2642 to i8
  store i8 %2654, i8* %54, align 1
  %2655 = lshr i32 %2639, 31
  %2656 = trunc i32 %2655 to i8
  store i8 %2656, i8* %57, align 1
  %2657 = lshr i32 %2638, 31
  %2658 = xor i32 %2655, %2657
  %2659 = add nuw nsw i32 %2658, %2655
  %2660 = icmp eq i32 %2659, 2
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %63, align 1
  %2662 = add i64 %549, 14
  store i64 %2662, i64* %3, align 8
  store i32 %2639, i32* %2637, align 4
  %2663 = load i64, i64* %3, align 8
  %2664 = add i64 %2663, -981
  store i64 %2664, i64* %3, align 8
  br label %block_.L_47990d

block_.L_479ce7:                                  ; preds = %block_.L_47990d
  %2665 = add i64 %488, -52
  %2666 = add i64 %516, 8
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i32*
  %2668 = load i32, i32* %2667, align 4
  %2669 = add i32 %2668, 1
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RAX.i2624, align 8
  %2671 = icmp eq i32 %2668, -1
  %2672 = icmp eq i32 %2669, 0
  %2673 = or i1 %2671, %2672
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %39, align 1
  %2675 = and i32 %2669, 255
  %2676 = tail call i32 @llvm.ctpop.i32(i32 %2675)
  %2677 = trunc i32 %2676 to i8
  %2678 = and i8 %2677, 1
  %2679 = xor i8 %2678, 1
  store i8 %2679, i8* %46, align 1
  %2680 = xor i32 %2669, %2668
  %2681 = lshr i32 %2680, 4
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %51, align 1
  %2684 = zext i1 %2672 to i8
  store i8 %2684, i8* %54, align 1
  %2685 = lshr i32 %2669, 31
  %2686 = trunc i32 %2685 to i8
  store i8 %2686, i8* %57, align 1
  %2687 = lshr i32 %2668, 31
  %2688 = xor i32 %2685, %2687
  %2689 = add nuw nsw i32 %2688, %2685
  %2690 = icmp eq i32 %2689, 2
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %63, align 1
  %2692 = add i64 %516, 14
  store i64 %2692, i64* %3, align 8
  store i32 %2669, i32* %2667, align 4
  %2693 = load i64, i64* %3, align 8
  %2694 = add i64 %2693, -1017
  store i64 %2694, i64* %3, align 8
  br label %block_.L_4798fc

block_.L_479cfa:                                  ; preds = %block_.L_4798fc
  %2695 = add i64 %483, 3210
  br label %block_.L_47a984

block_.L_479d06:                                  ; preds = %block_.L_479d06.preheader, %block_.L_47a96c
  %2696 = phi i64 [ %8081, %block_.L_47a96c ], [ %.pre209, %block_.L_479d06.preheader ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.12, %block_.L_47a96c ], [ %MEMORY.7, %block_.L_479d06.preheader ]
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -52
  %2699 = add i64 %2696, 4
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = add i32 %2701, -6
  %2703 = icmp ult i32 %2701, 6
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %39, align 1
  %2705 = and i32 %2702, 255
  %2706 = tail call i32 @llvm.ctpop.i32(i32 %2705)
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  store i8 %2709, i8* %46, align 1
  %2710 = xor i32 %2702, %2701
  %2711 = lshr i32 %2710, 4
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  store i8 %2713, i8* %51, align 1
  %2714 = icmp eq i32 %2702, 0
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %54, align 1
  %2716 = lshr i32 %2702, 31
  %2717 = trunc i32 %2716 to i8
  store i8 %2717, i8* %57, align 1
  %2718 = lshr i32 %2701, 31
  %2719 = xor i32 %2716, %2718
  %2720 = add nuw nsw i32 %2719, %2718
  %2721 = icmp eq i32 %2720, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %63, align 1
  %2723 = icmp ne i8 %2717, 0
  %2724 = xor i1 %2723, %2721
  %.v247 = select i1 %2724, i64 10, i64 3193
  %2725 = add i64 %2696, %.v247
  store i64 %2725, i64* %3, align 8
  br i1 %2724, label %block_479d10, label %block_.L_47a97f

block_479d10:                                     ; preds = %block_.L_479d06
  %2726 = add i64 %2697, -48
  %2727 = add i64 %2725, 7
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  store i32 0, i32* %2728, align 4
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_479d17

block_.L_479d17:                                  ; preds = %block_.L_47a959, %block_479d10
  %2729 = phi i64 [ %.pre210, %block_479d10 ], [ %8051, %block_.L_47a959 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_479d10 ], [ %MEMORY.13, %block_.L_47a959 ]
  %2730 = load i64, i64* %RBP.i, align 8
  %2731 = add i64 %2730, -48
  %2732 = add i64 %2729, 4
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2731 to i32*
  %2734 = load i32, i32* %2733, align 4
  %2735 = add i32 %2734, -4
  %2736 = icmp ult i32 %2734, 4
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %39, align 1
  %2738 = and i32 %2735, 255
  %2739 = tail call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  store i8 %2742, i8* %46, align 1
  %2743 = xor i32 %2735, %2734
  %2744 = lshr i32 %2743, 4
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  store i8 %2746, i8* %51, align 1
  %2747 = icmp eq i32 %2735, 0
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %54, align 1
  %2749 = lshr i32 %2735, 31
  %2750 = trunc i32 %2749 to i8
  store i8 %2750, i8* %57, align 1
  %2751 = lshr i32 %2734, 31
  %2752 = xor i32 %2749, %2751
  %2753 = add nuw nsw i32 %2752, %2751
  %2754 = icmp eq i32 %2753, 2
  %2755 = zext i1 %2754 to i8
  store i8 %2755, i8* %63, align 1
  %2756 = icmp ne i8 %2750, 0
  %2757 = xor i1 %2756, %2754
  %.v240 = select i1 %2757, i64 10, i64 3157
  %2758 = add i64 %2729, %.v240
  store i64 %2758, i64* %3, align 8
  br i1 %2757, label %block_479d21, label %block_.L_47a96c

block_479d21:                                     ; preds = %block_.L_479d17
  %2759 = add i64 %2730, -44
  %2760 = add i64 %2758, 7
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  store i32 0, i32* %2761, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_479d28

block_.L_479d28:                                  ; preds = %block_.L_47a946, %block_479d21
  %2762 = phi i64 [ %.pre211, %block_479d21 ], [ %8021, %block_.L_47a946 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_479d21 ], [ %MEMORY.29, %block_.L_47a946 ]
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -44
  %2765 = add i64 %2762, 4
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = add i32 %2767, -4
  %2769 = icmp ult i32 %2767, 4
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %39, align 1
  %2771 = and i32 %2768, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %46, align 1
  %2776 = xor i32 %2768, %2767
  %2777 = lshr i32 %2776, 4
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  store i8 %2779, i8* %51, align 1
  %2780 = icmp eq i32 %2768, 0
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %54, align 1
  %2782 = lshr i32 %2768, 31
  %2783 = trunc i32 %2782 to i8
  store i8 %2783, i8* %57, align 1
  %2784 = lshr i32 %2767, 31
  %2785 = xor i32 %2782, %2784
  %2786 = add nuw nsw i32 %2785, %2784
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %63, align 1
  %2789 = icmp ne i8 %2783, 0
  %2790 = xor i1 %2789, %2787
  %.v241 = select i1 %2790, i64 10, i64 3121
  %2791 = add i64 %2762, %.v241
  store i64 %2791, i64* %3, align 8
  br i1 %2790, label %block_479d32, label %block_.L_47a959

block_479d32:                                     ; preds = %block_.L_479d28
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %3, align 8
  %2793 = load i32, i32* %2766, align 4
  %2794 = shl i32 %2793, 2
  %2795 = zext i32 %2794 to i64
  store i64 %2795, i64* %RAX.i2624, align 8
  %2796 = lshr i32 %2793, 30
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  store i8 %2798, i8* %39, align 1
  %2799 = and i32 %2794, 252
  %2800 = tail call i32 @llvm.ctpop.i32(i32 %2799)
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = xor i8 %2802, 1
  store i8 %2803, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2804 = icmp eq i32 %2794, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %54, align 1
  %2806 = lshr i32 %2793, 29
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  store i8 %2808, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2809 = add i64 %2763, -48
  %2810 = add i64 %2791, 9
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to i32*
  %2812 = load i32, i32* %2811, align 4
  %2813 = add i32 %2812, %2794
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RAX.i2624, align 8
  %2815 = icmp ult i32 %2813, %2794
  %2816 = icmp ult i32 %2813, %2812
  %2817 = or i1 %2815, %2816
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %39, align 1
  %2819 = and i32 %2813, 255
  %2820 = tail call i32 @llvm.ctpop.i32(i32 %2819)
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  %2823 = xor i8 %2822, 1
  store i8 %2823, i8* %46, align 1
  %2824 = xor i32 %2812, %2794
  %2825 = xor i32 %2824, %2813
  %2826 = lshr i32 %2825, 4
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  store i8 %2828, i8* %51, align 1
  %2829 = icmp eq i32 %2813, 0
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %54, align 1
  %2831 = lshr i32 %2813, 31
  %2832 = trunc i32 %2831 to i8
  store i8 %2832, i8* %57, align 1
  %2833 = lshr i32 %2793, 29
  %2834 = and i32 %2833, 1
  %2835 = lshr i32 %2812, 31
  %2836 = xor i32 %2831, %2834
  %2837 = xor i32 %2831, %2835
  %2838 = add nuw nsw i32 %2836, %2837
  %2839 = icmp eq i32 %2838, 2
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %63, align 1
  %2841 = add i64 %2763, -56
  %2842 = add i64 %2791, 12
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i32*
  store i32 %2813, i32* %2843, align 4
  %2844 = load i64, i64* %RBP.i, align 8
  %2845 = add i64 %2844, -80
  %2846 = load i64, i64* %3, align 8
  %2847 = add i64 %2846, 4
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2845 to i32*
  %2849 = load i32, i32* %2848, align 4
  store i8 0, i8* %39, align 1
  %2850 = and i32 %2849, 255
  %2851 = tail call i32 @llvm.ctpop.i32(i32 %2850)
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = xor i8 %2853, 1
  store i8 %2854, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2855 = icmp eq i32 %2849, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %54, align 1
  %2857 = lshr i32 %2849, 31
  %2858 = trunc i32 %2857 to i8
  store i8 %2858, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v248 = select i1 %2855, i64 27, i64 10
  %2859 = add i64 %2846, %.v248
  store i64 %2859, i64* %3, align 8
  br i1 %2855, label %block_.L_479d59, label %block_479d48

block_479d48:                                     ; preds = %block_479d32
  %2860 = load i16, i16* bitcast (%G_0x6d4520_type* @G_0x6d4520 to i16*), align 8
  %2861 = sext i16 %2860 to i64
  %2862 = and i64 %2861, 4294967295
  store i64 %2862, i64* %RAX.i2624, align 8
  %2863 = sext i16 %2860 to i32
  store i8 0, i8* %39, align 1
  %2864 = and i32 %2863, 255
  %2865 = tail call i32 @llvm.ctpop.i32(i32 %2864)
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2869 = icmp eq i16 %2860, 0
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %54, align 1
  %2871 = lshr i32 %2863, 31
  %2872 = trunc i32 %2871 to i8
  store i8 %2872, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v249 = select i1 %2869, i64 236, i64 17
  %2873 = add i64 %2859, %.v249
  store i64 %2873, i64* %3, align 8
  br i1 %2869, label %block_.L_479e34, label %block_.L_479d59

block_.L_479d59:                                  ; preds = %block_479d48, %block_479d32
  %2874 = phi i64 [ %2873, %block_479d48 ], [ %2859, %block_479d32 ]
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RDX.i1786, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RSI.i1784, align 8
  %2875 = add i64 %2844, -52
  %2876 = add i64 %2874, 44
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to i32*
  %2878 = load i32, i32* %2877, align 4
  %2879 = sext i32 %2878 to i64
  %2880 = shl nsw i64 %2879, 6
  store i64 %2880, i64* %RDI.i1781, align 8
  %2881 = add i64 %2880, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %2881, i64* %RSI.i1784, align 8
  %2882 = icmp ult i64 %2881, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %2883 = icmp ult i64 %2881, %2880
  %2884 = or i1 %2882, %2883
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %39, align 1
  %2886 = trunc i64 %2881 to i32
  %2887 = and i32 %2886, 248
  %2888 = tail call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %46, align 1
  %2892 = xor i64 %2881, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %2893 = lshr i64 %2892, 4
  %2894 = trunc i64 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %51, align 1
  %2896 = icmp eq i64 %2881, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %54, align 1
  %2898 = lshr i64 %2881, 63
  %2899 = trunc i64 %2898 to i8
  store i8 %2899, i8* %57, align 1
  %2900 = lshr i64 %2879, 57
  %2901 = and i64 %2900, 1
  %2902 = xor i64 %2898, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %2903 = xor i64 %2898, %2901
  %2904 = add nuw nsw i64 %2902, %2903
  %2905 = icmp eq i64 %2904, 2
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %63, align 1
  %2907 = add i64 %2844, -48
  %2908 = add i64 %2874, 55
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i32*
  %2910 = load i32, i32* %2909, align 4
  %2911 = sext i32 %2910 to i64
  %2912 = shl nsw i64 %2911, 4
  store i64 %2912, i64* %RDI.i1781, align 8
  %2913 = add i64 %2912, %2881
  store i64 %2913, i64* %RSI.i1784, align 8
  %2914 = icmp ult i64 %2913, %2881
  %2915 = icmp ult i64 %2913, %2912
  %2916 = or i1 %2914, %2915
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %39, align 1
  %2918 = trunc i64 %2913 to i32
  %2919 = and i32 %2918, 248
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %46, align 1
  %2924 = xor i64 %2912, %2881
  %2925 = xor i64 %2924, %2913
  %2926 = lshr i64 %2925, 4
  %2927 = trunc i64 %2926 to i8
  %2928 = and i8 %2927, 1
  store i8 %2928, i8* %51, align 1
  %2929 = icmp eq i64 %2913, 0
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %54, align 1
  %2931 = lshr i64 %2913, 63
  %2932 = trunc i64 %2931 to i8
  store i8 %2932, i8* %57, align 1
  %2933 = lshr i64 %2911, 59
  %2934 = and i64 %2933, 1
  %2935 = xor i64 %2931, %2898
  %2936 = xor i64 %2931, %2934
  %2937 = add nuw nsw i64 %2935, %2936
  %2938 = icmp eq i64 %2937, 2
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %63, align 1
  %2940 = load i64, i64* %RBP.i, align 8
  %2941 = add i64 %2940, -44
  %2942 = add i64 %2874, 66
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = sext i32 %2944 to i64
  store i64 %2945, i64* %RDI.i1781, align 8
  %2946 = shl nsw i64 %2945, 2
  %2947 = add i64 %2946, %2913
  %2948 = add i64 %2874, 70
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i32*
  %2950 = load i32, i32* %2949, align 4
  %2951 = shl i32 %2950, 4
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %430, align 8
  %2953 = lshr i32 %2950, 28
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  store i8 %2955, i8* %39, align 1
  %2956 = and i32 %2951, 240
  %2957 = tail call i32 @llvm.ctpop.i32(i32 %2956)
  %2958 = trunc i32 %2957 to i8
  %2959 = and i8 %2958, 1
  %2960 = xor i8 %2959, 1
  store i8 %2960, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2961 = icmp eq i32 %2951, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %54, align 1
  %2963 = lshr i32 %2950, 27
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  store i8 %2965, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2966 = add i64 %2940, -56
  %2967 = add i64 %2874, 78
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2966 to i32*
  %2969 = load i32, i32* %2968, align 4
  %2970 = sext i32 %2969 to i64
  store i64 %2970, i64* %RSI.i1784, align 8
  %2971 = shl nsw i64 %2970, 1
  %2972 = add nsw i64 %2971, 4952672
  %2973 = add i64 %2874, 87
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i16*
  %2975 = load i16, i16* %2974, align 2
  %2976 = sext i16 %2975 to i64
  %2977 = and i64 %2976, 4294967295
  store i64 %2977, i64* %432, align 8
  %2978 = add i64 %2940, -120
  %2979 = load i64, i64* %RAX.i2624, align 8
  %2980 = add i64 %2874, 91
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2978 to i64*
  store i64 %2979, i64* %2981, align 8
  %2982 = load i32, i32* %R8D.i1761, align 4
  %2983 = zext i32 %2982 to i64
  %2984 = load i64, i64* %3, align 8
  store i64 %2983, i64* %RAX.i2624, align 8
  %2985 = load i64, i64* %RBP.i, align 8
  %2986 = add i64 %2985, -128
  %2987 = load i64, i64* %RDX.i1786, align 8
  %2988 = add i64 %2984, 7
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2986 to i64*
  store i64 %2987, i64* %2989, align 8
  %2990 = load i64, i64* %3, align 8
  %2991 = load i32, i32* %EAX.i1800, align 8
  %2992 = sext i32 %2991 to i64
  %2993 = lshr i64 %2992, 32
  store i64 %2993, i64* %RDX.i1786, align 8
  %2994 = load i32, i32* %R9D.i1753, align 4
  %2995 = add i64 %2990, 4
  store i64 %2995, i64* %3, align 8
  %2996 = zext i32 %2991 to i64
  %2997 = sext i32 %2994 to i64
  %2998 = shl nuw i64 %2993, 32
  %2999 = or i64 %2998, %2996
  %3000 = sdiv i64 %2999, %2997
  %3001 = shl i64 %3000, 32
  %3002 = ashr exact i64 %3001, 32
  %3003 = icmp eq i64 %3000, %3002
  br i1 %3003, label %3006, label %3004

; <label>:3004:                                   ; preds = %block_.L_479d59
  %3005 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2995, %struct.Memory* %MEMORY.13)
  %.pre213 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit1739

; <label>:3006:                                   ; preds = %block_.L_479d59
  %3007 = srem i64 %2999, %2997
  %3008 = and i64 %3000, 4294967295
  store i64 %3008, i64* %RAX.i2624, align 8
  %3009 = and i64 %3007, 4294967295
  store i64 %3009, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__r9d.exit1739

routine_idivl__r9d.exit1739:                      ; preds = %3006, %3004
  %3010 = phi i64 [ %.pre213, %3004 ], [ %2995, %3006 ]
  %3011 = phi %struct.Memory* [ %3005, %3004 ], [ %MEMORY.13, %3006 ]
  %3012 = load i64, i64* %RBP.i, align 8
  %3013 = add i64 %3012, -52
  %3014 = add i64 %3010, 4
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i32*
  %3016 = load i32, i32* %3015, align 4
  %3017 = sext i32 %3016 to i64
  %3018 = shl nsw i64 %3017, 6
  store i64 %3018, i64* %RSI.i1784, align 8
  %.lobit89 = lshr i32 %3016, 31
  %3019 = trunc i32 %.lobit89 to i8
  store i8 %3019, i8* %39, align 1
  %3020 = trunc i64 %3018 to i32
  %3021 = and i32 %3020, 192
  %3022 = tail call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  store i8 %3025, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3026 = icmp eq i32 %3016, 0
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %54, align 1
  %3028 = lshr i64 %3017, 57
  %3029 = trunc i64 %3028 to i8
  %3030 = and i8 %3029, 1
  store i8 %3030, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %3031 = add i64 %3012, -128
  %3032 = add i64 %3010, 12
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i64*
  %3034 = load i64, i64* %3033, align 8
  %3035 = add i64 %3018, %3034
  store i64 %3035, i64* %RDI.i1781, align 8
  %3036 = icmp ult i64 %3035, %3034
  %3037 = icmp ult i64 %3035, %3018
  %3038 = or i1 %3036, %3037
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %39, align 1
  %3040 = trunc i64 %3035 to i32
  %3041 = and i32 %3040, 255
  %3042 = tail call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  store i8 %3045, i8* %46, align 1
  %3046 = xor i64 %3034, %3035
  %3047 = lshr i64 %3046, 4
  %3048 = trunc i64 %3047 to i8
  %3049 = and i8 %3048, 1
  store i8 %3049, i8* %51, align 1
  %3050 = icmp eq i64 %3035, 0
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %54, align 1
  %3052 = lshr i64 %3035, 63
  %3053 = trunc i64 %3052 to i8
  store i8 %3053, i8* %57, align 1
  %3054 = lshr i64 %3034, 63
  %3055 = lshr i64 %3017, 57
  %3056 = and i64 %3055, 1
  %3057 = xor i64 %3052, %3054
  %3058 = xor i64 %3052, %3056
  %3059 = add nuw nsw i64 %3057, %3058
  %3060 = icmp eq i64 %3059, 2
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %63, align 1
  %3062 = add i64 %3012, -48
  %3063 = add i64 %3010, 19
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i32*
  %3065 = load i32, i32* %3064, align 4
  %3066 = sext i32 %3065 to i64
  %3067 = shl nsw i64 %3066, 4
  store i64 %3067, i64* %RSI.i1784, align 8
  %3068 = add i64 %3067, %3035
  store i64 %3068, i64* %RDI.i1781, align 8
  %3069 = icmp ult i64 %3068, %3035
  %3070 = icmp ult i64 %3068, %3067
  %3071 = or i1 %3069, %3070
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %39, align 1
  %3073 = trunc i64 %3068 to i32
  %3074 = and i32 %3073, 255
  %3075 = tail call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  store i8 %3078, i8* %46, align 1
  %3079 = xor i64 %3067, %3035
  %3080 = xor i64 %3079, %3068
  %3081 = lshr i64 %3080, 4
  %3082 = trunc i64 %3081 to i8
  %3083 = and i8 %3082, 1
  store i8 %3083, i8* %51, align 1
  %3084 = icmp eq i64 %3068, 0
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %54, align 1
  %3086 = lshr i64 %3068, 63
  %3087 = trunc i64 %3086 to i8
  store i8 %3087, i8* %57, align 1
  %3088 = lshr i64 %3066, 59
  %3089 = and i64 %3088, 1
  %3090 = xor i64 %3086, %3052
  %3091 = xor i64 %3086, %3089
  %3092 = add nuw nsw i64 %3090, %3091
  %3093 = icmp eq i64 %3092, 2
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %63, align 1
  %3095 = load i64, i64* %RBP.i, align 8
  %3096 = add i64 %3095, -44
  %3097 = add i64 %3010, 30
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = sext i32 %3099 to i64
  store i64 %3100, i64* %RSI.i1784, align 8
  %3101 = shl nsw i64 %3100, 2
  %3102 = add i64 %3101, %3068
  %3103 = load i32, i32* %EAX.i1800, align 4
  %3104 = add i64 %3010, 33
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3102 to i32*
  store i32 %3103, i32* %3105, align 4
  %3106 = load i64, i64* %RBP.i, align 8
  %3107 = add i64 %3106, -52
  %3108 = load i64, i64* %3, align 8
  %3109 = add i64 %3108, 4
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3107 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = sext i32 %3111 to i64
  %3113 = shl nsw i64 %3112, 6
  store i64 %3113, i64* %RSI.i1784, align 8
  %3114 = load i64, i64* %RCX.i1788, align 8
  %3115 = add i64 %3113, %3114
  store i64 %3115, i64* %RCX.i1788, align 8
  %3116 = icmp ult i64 %3115, %3114
  %3117 = icmp ult i64 %3115, %3113
  %3118 = or i1 %3116, %3117
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %39, align 1
  %3120 = trunc i64 %3115 to i32
  %3121 = and i32 %3120, 255
  %3122 = tail call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  store i8 %3125, i8* %46, align 1
  %3126 = xor i64 %3114, %3115
  %3127 = lshr i64 %3126, 4
  %3128 = trunc i64 %3127 to i8
  %3129 = and i8 %3128, 1
  store i8 %3129, i8* %51, align 1
  %3130 = icmp eq i64 %3115, 0
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %54, align 1
  %3132 = lshr i64 %3115, 63
  %3133 = trunc i64 %3132 to i8
  store i8 %3133, i8* %57, align 1
  %3134 = lshr i64 %3114, 63
  %3135 = lshr i64 %3112, 57
  %3136 = and i64 %3135, 1
  %3137 = xor i64 %3132, %3134
  %3138 = xor i64 %3132, %3136
  %3139 = add nuw nsw i64 %3137, %3138
  %3140 = icmp eq i64 %3139, 2
  %3141 = zext i1 %3140 to i8
  store i8 %3141, i8* %63, align 1
  %3142 = add i64 %3106, -48
  %3143 = add i64 %3108, 15
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  %3145 = load i32, i32* %3144, align 4
  %3146 = sext i32 %3145 to i64
  %3147 = shl nsw i64 %3146, 4
  store i64 %3147, i64* %RSI.i1784, align 8
  %3148 = add i64 %3147, %3115
  store i64 %3148, i64* %RCX.i1788, align 8
  %3149 = icmp ult i64 %3148, %3115
  %3150 = icmp ult i64 %3148, %3147
  %3151 = or i1 %3149, %3150
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %39, align 1
  %3153 = trunc i64 %3148 to i32
  %3154 = and i32 %3153, 255
  %3155 = tail call i32 @llvm.ctpop.i32(i32 %3154)
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  %3158 = xor i8 %3157, 1
  store i8 %3158, i8* %46, align 1
  %3159 = xor i64 %3147, %3115
  %3160 = xor i64 %3159, %3148
  %3161 = lshr i64 %3160, 4
  %3162 = trunc i64 %3161 to i8
  %3163 = and i8 %3162, 1
  store i8 %3163, i8* %51, align 1
  %3164 = icmp eq i64 %3148, 0
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %54, align 1
  %3166 = lshr i64 %3148, 63
  %3167 = trunc i64 %3166 to i8
  store i8 %3167, i8* %57, align 1
  %3168 = lshr i64 %3146, 59
  %3169 = and i64 %3168, 1
  %3170 = xor i64 %3166, %3132
  %3171 = xor i64 %3166, %3169
  %3172 = add nuw nsw i64 %3170, %3171
  %3173 = icmp eq i64 %3172, 2
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %63, align 1
  %3175 = load i64, i64* %RBP.i, align 8
  %3176 = add i64 %3175, -44
  %3177 = add i64 %3108, 26
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i32*
  %3179 = load i32, i32* %3178, align 4
  %3180 = sext i32 %3179 to i64
  store i64 %3180, i64* %RSI.i1784, align 8
  %3181 = shl nsw i64 %3180, 2
  %3182 = add i64 %3181, %3148
  %3183 = add i64 %3108, 29
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RAX.i2624, align 8
  %3187 = add i64 %3175, -56
  %3188 = add i64 %3108, 33
  store i64 %3188, i64* %3, align 8
  %3189 = inttoptr i64 %3187 to i32*
  %3190 = load i32, i32* %3189, align 4
  %3191 = sext i32 %3190 to i64
  store i64 %3191, i64* %RCX.i1788, align 8
  %3192 = shl nsw i64 %3191, 1
  %3193 = add nsw i64 %3192, 4952672
  %3194 = add i64 %3108, 42
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to i16*
  %3196 = load i16, i16* %3195, align 2
  %3197 = sext i16 %3196 to i64
  %3198 = and i64 %3197, 4294967295
  store i64 %3198, i64* %430, align 8
  %3199 = sext i32 %3185 to i64
  %3200 = sext i16 %3196 to i64
  %3201 = mul nsw i64 %3200, %3199
  %3202 = trunc i64 %3201 to i32
  %3203 = and i64 %3201, 4294967295
  store i64 %3203, i64* %RAX.i2624, align 8
  %3204 = shl i64 %3201, 32
  %3205 = ashr exact i64 %3204, 32
  %3206 = icmp ne i64 %3205, %3201
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %39, align 1
  %3208 = and i32 %3202, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %3213 = lshr i32 %3202, 31
  %3214 = trunc i32 %3213 to i8
  store i8 %3214, i8* %57, align 1
  store i8 %3207, i8* %63, align 1
  %3215 = add i64 %3175, -52
  %3216 = add i64 %3108, 50
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i32*
  %3218 = load i32, i32* %3217, align 4
  %3219 = sext i32 %3218 to i64
  %3220 = shl nsw i64 %3219, 6
  store i64 %3220, i64* %RCX.i1788, align 8
  %.lobit93 = lshr i32 %3218, 31
  %3221 = trunc i32 %.lobit93 to i8
  store i8 %3221, i8* %39, align 1
  %3222 = trunc i64 %3220 to i32
  %3223 = and i32 %3222, 192
  %3224 = tail call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  store i8 %3227, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3228 = icmp eq i32 %3218, 0
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %54, align 1
  %3230 = lshr i64 %3219, 57
  %3231 = trunc i64 %3230 to i8
  %3232 = and i8 %3231, 1
  store i8 %3232, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %3233 = add i64 %3175, -120
  %3234 = add i64 %3108, 58
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i64*
  %3236 = load i64, i64* %3235, align 8
  %3237 = add i64 %3220, %3236
  store i64 %3237, i64* %RSI.i1784, align 8
  %3238 = icmp ult i64 %3237, %3236
  %3239 = icmp ult i64 %3237, %3220
  %3240 = or i1 %3238, %3239
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %39, align 1
  %3242 = trunc i64 %3237 to i32
  %3243 = and i32 %3242, 255
  %3244 = tail call i32 @llvm.ctpop.i32(i32 %3243)
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = xor i8 %3246, 1
  store i8 %3247, i8* %46, align 1
  %3248 = xor i64 %3236, %3237
  %3249 = lshr i64 %3248, 4
  %3250 = trunc i64 %3249 to i8
  %3251 = and i8 %3250, 1
  store i8 %3251, i8* %51, align 1
  %3252 = icmp eq i64 %3237, 0
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %54, align 1
  %3254 = lshr i64 %3237, 63
  %3255 = trunc i64 %3254 to i8
  store i8 %3255, i8* %57, align 1
  %3256 = lshr i64 %3236, 63
  %3257 = lshr i64 %3219, 57
  %3258 = and i64 %3257, 1
  %3259 = xor i64 %3254, %3256
  %3260 = xor i64 %3254, %3258
  %3261 = add nuw nsw i64 %3259, %3260
  %3262 = icmp eq i64 %3261, 2
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %63, align 1
  %3264 = load i64, i64* %RBP.i, align 8
  %3265 = add i64 %3264, -48
  %3266 = add i64 %3108, 65
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i32*
  %3268 = load i32, i32* %3267, align 4
  %3269 = sext i32 %3268 to i64
  %3270 = shl nsw i64 %3269, 4
  store i64 %3270, i64* %RCX.i1788, align 8
  %3271 = add i64 %3270, %3237
  store i64 %3271, i64* %RSI.i1784, align 8
  %3272 = icmp ult i64 %3271, %3237
  %3273 = icmp ult i64 %3271, %3270
  %3274 = or i1 %3272, %3273
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %39, align 1
  %3276 = trunc i64 %3271 to i32
  %3277 = and i32 %3276, 255
  %3278 = tail call i32 @llvm.ctpop.i32(i32 %3277)
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  %3281 = xor i8 %3280, 1
  store i8 %3281, i8* %46, align 1
  %3282 = xor i64 %3270, %3237
  %3283 = xor i64 %3282, %3271
  %3284 = lshr i64 %3283, 4
  %3285 = trunc i64 %3284 to i8
  %3286 = and i8 %3285, 1
  store i8 %3286, i8* %51, align 1
  %3287 = icmp eq i64 %3271, 0
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %54, align 1
  %3289 = lshr i64 %3271, 63
  %3290 = trunc i64 %3289 to i8
  store i8 %3290, i8* %57, align 1
  %3291 = lshr i64 %3269, 59
  %3292 = and i64 %3291, 1
  %3293 = xor i64 %3289, %3254
  %3294 = xor i64 %3289, %3292
  %3295 = add nuw nsw i64 %3293, %3294
  %3296 = icmp eq i64 %3295, 2
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %63, align 1
  %3298 = add i64 %3264, -44
  %3299 = add i64 %3108, 76
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3298 to i32*
  %3301 = load i32, i32* %3300, align 4
  %3302 = sext i32 %3301 to i64
  store i64 %3302, i64* %RCX.i1788, align 8
  %3303 = shl nsw i64 %3302, 2
  %3304 = add i64 %3303, %3271
  %3305 = load i32, i32* %EAX.i1800, align 4
  %3306 = add i64 %3108, 79
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3304 to i32*
  store i32 %3305, i32* %3307, align 4
  %3308 = load i64, i64* %3, align 8
  %3309 = add i64 %3308, 231
  store i64 %3309, i64* %3, align 8
  br label %block_.L_479f16

block_.L_479e34:                                  ; preds = %block_479d48
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RDX.i1786, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RSI.i1784, align 8
  %3310 = add i64 %2844, -52
  %3311 = add i64 %2873, 44
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3310 to i32*
  %3313 = load i32, i32* %3312, align 4
  %3314 = sext i32 %3313 to i64
  %3315 = shl nsw i64 %3314, 6
  store i64 %3315, i64* %RDI.i1781, align 8
  %3316 = add i64 %3315, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %3316, i64* %RSI.i1784, align 8
  %3317 = icmp ult i64 %3316, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %3318 = icmp ult i64 %3316, %3315
  %3319 = or i1 %3317, %3318
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %39, align 1
  %3321 = trunc i64 %3316 to i32
  %3322 = and i32 %3321, 248
  %3323 = tail call i32 @llvm.ctpop.i32(i32 %3322)
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  %3326 = xor i8 %3325, 1
  store i8 %3326, i8* %46, align 1
  %3327 = xor i64 %3316, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %3328 = lshr i64 %3327, 4
  %3329 = trunc i64 %3328 to i8
  %3330 = and i8 %3329, 1
  store i8 %3330, i8* %51, align 1
  %3331 = icmp eq i64 %3316, 0
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %54, align 1
  %3333 = lshr i64 %3316, 63
  %3334 = trunc i64 %3333 to i8
  store i8 %3334, i8* %57, align 1
  %3335 = lshr i64 %3314, 57
  %3336 = and i64 %3335, 1
  %3337 = xor i64 %3333, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %3338 = xor i64 %3333, %3336
  %3339 = add nuw nsw i64 %3337, %3338
  %3340 = icmp eq i64 %3339, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %63, align 1
  %3342 = add i64 %2844, -48
  %3343 = add i64 %2873, 55
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = sext i32 %3345 to i64
  %3347 = shl nsw i64 %3346, 4
  store i64 %3347, i64* %RDI.i1781, align 8
  %3348 = add i64 %3347, %3316
  store i64 %3348, i64* %RSI.i1784, align 8
  %3349 = icmp ult i64 %3348, %3316
  %3350 = icmp ult i64 %3348, %3347
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %39, align 1
  %3353 = trunc i64 %3348 to i32
  %3354 = and i32 %3353, 248
  %3355 = tail call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  store i8 %3358, i8* %46, align 1
  %3359 = xor i64 %3347, %3316
  %3360 = xor i64 %3359, %3348
  %3361 = lshr i64 %3360, 4
  %3362 = trunc i64 %3361 to i8
  %3363 = and i8 %3362, 1
  store i8 %3363, i8* %51, align 1
  %3364 = icmp eq i64 %3348, 0
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %54, align 1
  %3366 = lshr i64 %3348, 63
  %3367 = trunc i64 %3366 to i8
  store i8 %3367, i8* %57, align 1
  %3368 = lshr i64 %3346, 59
  %3369 = and i64 %3368, 1
  %3370 = xor i64 %3366, %3333
  %3371 = xor i64 %3366, %3369
  %3372 = add nuw nsw i64 %3370, %3371
  %3373 = icmp eq i64 %3372, 2
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %63, align 1
  %3375 = load i64, i64* %RBP.i, align 8
  %3376 = add i64 %3375, -44
  %3377 = add i64 %2873, 66
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = sext i32 %3379 to i64
  store i64 %3380, i64* %RDI.i1781, align 8
  %3381 = shl nsw i64 %3380, 2
  %3382 = add i64 %3381, %3348
  %3383 = add i64 %2873, 70
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  %3385 = load i32, i32* %3384, align 4
  %3386 = shl i32 %3385, 4
  %3387 = zext i32 %3386 to i64
  store i64 %3387, i64* %430, align 8
  %3388 = lshr i32 %3385, 28
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %39, align 1
  %3391 = and i32 %3386, 240
  %3392 = tail call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  store i8 %3395, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3396 = icmp eq i32 %3386, 0
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %54, align 1
  %3398 = lshr i32 %3385, 27
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  store i8 %3400, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %3401 = add i64 %3375, -56
  %3402 = add i64 %2873, 78
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i32*
  %3404 = load i32, i32* %3403, align 4
  %3405 = sext i32 %3404 to i64
  store i64 %3405, i64* %RSI.i1784, align 8
  %3406 = shl nsw i64 %3405, 1
  %3407 = add nsw i64 %3406, 7151552
  %3408 = add i64 %2873, 87
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i16*
  %3410 = load i16, i16* %3409, align 2
  %3411 = sext i16 %3410 to i64
  %3412 = and i64 %3411, 4294967295
  store i64 %3412, i64* %432, align 8
  %3413 = add i64 %3375, -136
  %3414 = load i64, i64* %RAX.i2624, align 8
  %3415 = add i64 %2873, 94
  store i64 %3415, i64* %3, align 8
  %3416 = inttoptr i64 %3413 to i64*
  store i64 %3414, i64* %3416, align 8
  %3417 = load i32, i32* %R8D.i1761, align 4
  %3418 = zext i32 %3417 to i64
  %3419 = load i64, i64* %3, align 8
  store i64 %3418, i64* %RAX.i2624, align 8
  %3420 = load i64, i64* %RBP.i, align 8
  %3421 = add i64 %3420, -144
  %3422 = load i64, i64* %RDX.i1786, align 8
  %3423 = add i64 %3419, 10
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3421 to i64*
  store i64 %3422, i64* %3424, align 8
  %3425 = load i64, i64* %3, align 8
  %3426 = load i32, i32* %EAX.i1800, align 8
  %3427 = sext i32 %3426 to i64
  %3428 = lshr i64 %3427, 32
  store i64 %3428, i64* %RDX.i1786, align 8
  %3429 = load i32, i32* %R9D.i1753, align 4
  %3430 = add i64 %3425, 4
  store i64 %3430, i64* %3, align 8
  %3431 = zext i32 %3426 to i64
  %3432 = sext i32 %3429 to i64
  %3433 = shl nuw i64 %3428, 32
  %3434 = or i64 %3433, %3431
  %3435 = sdiv i64 %3434, %3432
  %3436 = shl i64 %3435, 32
  %3437 = ashr exact i64 %3436, 32
  %3438 = icmp eq i64 %3435, %3437
  br i1 %3438, label %3441, label %3439

; <label>:3439:                                   ; preds = %block_.L_479e34
  %3440 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3430, %struct.Memory* %MEMORY.13)
  %.pre212 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit1600

; <label>:3441:                                   ; preds = %block_.L_479e34
  %3442 = srem i64 %3434, %3432
  %3443 = and i64 %3435, 4294967295
  store i64 %3443, i64* %RAX.i2624, align 8
  %3444 = and i64 %3442, 4294967295
  store i64 %3444, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__r9d.exit1600

routine_idivl__r9d.exit1600:                      ; preds = %3441, %3439
  %3445 = phi i64 [ %.pre212, %3439 ], [ %3430, %3441 ]
  %3446 = phi %struct.Memory* [ %3440, %3439 ], [ %MEMORY.13, %3441 ]
  %3447 = load i64, i64* %RBP.i, align 8
  %3448 = add i64 %3447, -52
  %3449 = add i64 %3445, 4
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  %3452 = sext i32 %3451 to i64
  %3453 = shl nsw i64 %3452, 6
  store i64 %3453, i64* %RSI.i1784, align 8
  %.lobit184 = lshr i32 %3451, 31
  %3454 = trunc i32 %.lobit184 to i8
  store i8 %3454, i8* %39, align 1
  %3455 = trunc i64 %3453 to i32
  %3456 = and i32 %3455, 192
  %3457 = tail call i32 @llvm.ctpop.i32(i32 %3456)
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  %3460 = xor i8 %3459, 1
  store i8 %3460, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3461 = icmp eq i32 %3451, 0
  %3462 = zext i1 %3461 to i8
  store i8 %3462, i8* %54, align 1
  %3463 = lshr i64 %3452, 57
  %3464 = trunc i64 %3463 to i8
  %3465 = and i8 %3464, 1
  store i8 %3465, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %3466 = add i64 %3447, -144
  %3467 = add i64 %3445, 15
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i64*
  %3469 = load i64, i64* %3468, align 8
  %3470 = add i64 %3453, %3469
  store i64 %3470, i64* %RDI.i1781, align 8
  %3471 = icmp ult i64 %3470, %3469
  %3472 = icmp ult i64 %3470, %3453
  %3473 = or i1 %3471, %3472
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %39, align 1
  %3475 = trunc i64 %3470 to i32
  %3476 = and i32 %3475, 255
  %3477 = tail call i32 @llvm.ctpop.i32(i32 %3476)
  %3478 = trunc i32 %3477 to i8
  %3479 = and i8 %3478, 1
  %3480 = xor i8 %3479, 1
  store i8 %3480, i8* %46, align 1
  %3481 = xor i64 %3469, %3470
  %3482 = lshr i64 %3481, 4
  %3483 = trunc i64 %3482 to i8
  %3484 = and i8 %3483, 1
  store i8 %3484, i8* %51, align 1
  %3485 = icmp eq i64 %3470, 0
  %3486 = zext i1 %3485 to i8
  store i8 %3486, i8* %54, align 1
  %3487 = lshr i64 %3470, 63
  %3488 = trunc i64 %3487 to i8
  store i8 %3488, i8* %57, align 1
  %3489 = lshr i64 %3469, 63
  %3490 = lshr i64 %3452, 57
  %3491 = and i64 %3490, 1
  %3492 = xor i64 %3487, %3489
  %3493 = xor i64 %3487, %3491
  %3494 = add nuw nsw i64 %3492, %3493
  %3495 = icmp eq i64 %3494, 2
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %63, align 1
  %3497 = add i64 %3447, -48
  %3498 = add i64 %3445, 22
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = sext i32 %3500 to i64
  %3502 = shl nsw i64 %3501, 4
  store i64 %3502, i64* %RSI.i1784, align 8
  %3503 = add i64 %3502, %3470
  store i64 %3503, i64* %RDI.i1781, align 8
  %3504 = icmp ult i64 %3503, %3470
  %3505 = icmp ult i64 %3503, %3502
  %3506 = or i1 %3504, %3505
  %3507 = zext i1 %3506 to i8
  store i8 %3507, i8* %39, align 1
  %3508 = trunc i64 %3503 to i32
  %3509 = and i32 %3508, 255
  %3510 = tail call i32 @llvm.ctpop.i32(i32 %3509)
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = xor i8 %3512, 1
  store i8 %3513, i8* %46, align 1
  %3514 = xor i64 %3502, %3470
  %3515 = xor i64 %3514, %3503
  %3516 = lshr i64 %3515, 4
  %3517 = trunc i64 %3516 to i8
  %3518 = and i8 %3517, 1
  store i8 %3518, i8* %51, align 1
  %3519 = icmp eq i64 %3503, 0
  %3520 = zext i1 %3519 to i8
  store i8 %3520, i8* %54, align 1
  %3521 = lshr i64 %3503, 63
  %3522 = trunc i64 %3521 to i8
  store i8 %3522, i8* %57, align 1
  %3523 = lshr i64 %3501, 59
  %3524 = and i64 %3523, 1
  %3525 = xor i64 %3521, %3487
  %3526 = xor i64 %3521, %3524
  %3527 = add nuw nsw i64 %3525, %3526
  %3528 = icmp eq i64 %3527, 2
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %63, align 1
  %3530 = load i64, i64* %RBP.i, align 8
  %3531 = add i64 %3530, -44
  %3532 = add i64 %3445, 33
  store i64 %3532, i64* %3, align 8
  %3533 = inttoptr i64 %3531 to i32*
  %3534 = load i32, i32* %3533, align 4
  %3535 = sext i32 %3534 to i64
  store i64 %3535, i64* %RSI.i1784, align 8
  %3536 = shl nsw i64 %3535, 2
  %3537 = add i64 %3536, %3503
  %3538 = load i32, i32* %EAX.i1800, align 4
  %3539 = add i64 %3445, 36
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3537 to i32*
  store i32 %3538, i32* %3540, align 4
  %3541 = load i64, i64* %RBP.i, align 8
  %3542 = add i64 %3541, -52
  %3543 = load i64, i64* %3, align 8
  %3544 = add i64 %3543, 4
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3542 to i32*
  %3546 = load i32, i32* %3545, align 4
  %3547 = sext i32 %3546 to i64
  %3548 = shl nsw i64 %3547, 6
  store i64 %3548, i64* %RSI.i1784, align 8
  %3549 = load i64, i64* %RCX.i1788, align 8
  %3550 = add i64 %3548, %3549
  store i64 %3550, i64* %RCX.i1788, align 8
  %3551 = icmp ult i64 %3550, %3549
  %3552 = icmp ult i64 %3550, %3548
  %3553 = or i1 %3551, %3552
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %39, align 1
  %3555 = trunc i64 %3550 to i32
  %3556 = and i32 %3555, 255
  %3557 = tail call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  store i8 %3560, i8* %46, align 1
  %3561 = xor i64 %3549, %3550
  %3562 = lshr i64 %3561, 4
  %3563 = trunc i64 %3562 to i8
  %3564 = and i8 %3563, 1
  store i8 %3564, i8* %51, align 1
  %3565 = icmp eq i64 %3550, 0
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %54, align 1
  %3567 = lshr i64 %3550, 63
  %3568 = trunc i64 %3567 to i8
  store i8 %3568, i8* %57, align 1
  %3569 = lshr i64 %3549, 63
  %3570 = lshr i64 %3547, 57
  %3571 = and i64 %3570, 1
  %3572 = xor i64 %3567, %3569
  %3573 = xor i64 %3567, %3571
  %3574 = add nuw nsw i64 %3572, %3573
  %3575 = icmp eq i64 %3574, 2
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %63, align 1
  %3577 = add i64 %3541, -48
  %3578 = add i64 %3543, 15
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i32*
  %3580 = load i32, i32* %3579, align 4
  %3581 = sext i32 %3580 to i64
  %3582 = shl nsw i64 %3581, 4
  store i64 %3582, i64* %RSI.i1784, align 8
  %3583 = add i64 %3582, %3550
  store i64 %3583, i64* %RCX.i1788, align 8
  %3584 = icmp ult i64 %3583, %3550
  %3585 = icmp ult i64 %3583, %3582
  %3586 = or i1 %3584, %3585
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %39, align 1
  %3588 = trunc i64 %3583 to i32
  %3589 = and i32 %3588, 255
  %3590 = tail call i32 @llvm.ctpop.i32(i32 %3589)
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  %3593 = xor i8 %3592, 1
  store i8 %3593, i8* %46, align 1
  %3594 = xor i64 %3582, %3550
  %3595 = xor i64 %3594, %3583
  %3596 = lshr i64 %3595, 4
  %3597 = trunc i64 %3596 to i8
  %3598 = and i8 %3597, 1
  store i8 %3598, i8* %51, align 1
  %3599 = icmp eq i64 %3583, 0
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %54, align 1
  %3601 = lshr i64 %3583, 63
  %3602 = trunc i64 %3601 to i8
  store i8 %3602, i8* %57, align 1
  %3603 = lshr i64 %3581, 59
  %3604 = and i64 %3603, 1
  %3605 = xor i64 %3601, %3567
  %3606 = xor i64 %3601, %3604
  %3607 = add nuw nsw i64 %3605, %3606
  %3608 = icmp eq i64 %3607, 2
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %63, align 1
  %3610 = load i64, i64* %RBP.i, align 8
  %3611 = add i64 %3610, -44
  %3612 = add i64 %3543, 26
  store i64 %3612, i64* %3, align 8
  %3613 = inttoptr i64 %3611 to i32*
  %3614 = load i32, i32* %3613, align 4
  %3615 = sext i32 %3614 to i64
  store i64 %3615, i64* %RSI.i1784, align 8
  %3616 = shl nsw i64 %3615, 2
  %3617 = add i64 %3616, %3583
  %3618 = add i64 %3543, 29
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = zext i32 %3620 to i64
  store i64 %3621, i64* %RAX.i2624, align 8
  %3622 = add i64 %3610, -56
  %3623 = add i64 %3543, 33
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3622 to i32*
  %3625 = load i32, i32* %3624, align 4
  %3626 = sext i32 %3625 to i64
  store i64 %3626, i64* %RCX.i1788, align 8
  %3627 = shl nsw i64 %3626, 1
  %3628 = add nsw i64 %3627, 7151552
  %3629 = add i64 %3543, 42
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3628 to i16*
  %3631 = load i16, i16* %3630, align 2
  %3632 = sext i16 %3631 to i64
  %3633 = and i64 %3632, 4294967295
  store i64 %3633, i64* %430, align 8
  %3634 = sext i32 %3620 to i64
  %3635 = sext i16 %3631 to i64
  %3636 = mul nsw i64 %3635, %3634
  %3637 = trunc i64 %3636 to i32
  %3638 = and i64 %3636, 4294967295
  store i64 %3638, i64* %RAX.i2624, align 8
  %3639 = shl i64 %3636, 32
  %3640 = ashr exact i64 %3639, 32
  %3641 = icmp ne i64 %3640, %3636
  %3642 = zext i1 %3641 to i8
  store i8 %3642, i8* %39, align 1
  %3643 = and i32 %3637, 255
  %3644 = tail call i32 @llvm.ctpop.i32(i32 %3643)
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = xor i8 %3646, 1
  store i8 %3647, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %3648 = lshr i32 %3637, 31
  %3649 = trunc i32 %3648 to i8
  store i8 %3649, i8* %57, align 1
  store i8 %3642, i8* %63, align 1
  %3650 = add i64 %3610, -52
  %3651 = add i64 %3543, 50
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = sext i32 %3653 to i64
  %3655 = shl nsw i64 %3654, 6
  store i64 %3655, i64* %RCX.i1788, align 8
  %.lobit188 = lshr i32 %3653, 31
  %3656 = trunc i32 %.lobit188 to i8
  store i8 %3656, i8* %39, align 1
  %3657 = trunc i64 %3655 to i32
  %3658 = and i32 %3657, 192
  %3659 = tail call i32 @llvm.ctpop.i32(i32 %3658)
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  store i8 %3662, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3663 = icmp eq i32 %3653, 0
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %54, align 1
  %3665 = lshr i64 %3654, 57
  %3666 = trunc i64 %3665 to i8
  %3667 = and i8 %3666, 1
  store i8 %3667, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %3668 = add i64 %3610, -136
  %3669 = add i64 %3543, 61
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3668 to i64*
  %3671 = load i64, i64* %3670, align 8
  %3672 = add i64 %3655, %3671
  store i64 %3672, i64* %RSI.i1784, align 8
  %3673 = icmp ult i64 %3672, %3671
  %3674 = icmp ult i64 %3672, %3655
  %3675 = or i1 %3673, %3674
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %39, align 1
  %3677 = trunc i64 %3672 to i32
  %3678 = and i32 %3677, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %46, align 1
  %3683 = xor i64 %3671, %3672
  %3684 = lshr i64 %3683, 4
  %3685 = trunc i64 %3684 to i8
  %3686 = and i8 %3685, 1
  store i8 %3686, i8* %51, align 1
  %3687 = icmp eq i64 %3672, 0
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %54, align 1
  %3689 = lshr i64 %3672, 63
  %3690 = trunc i64 %3689 to i8
  store i8 %3690, i8* %57, align 1
  %3691 = lshr i64 %3671, 63
  %3692 = lshr i64 %3654, 57
  %3693 = and i64 %3692, 1
  %3694 = xor i64 %3689, %3691
  %3695 = xor i64 %3689, %3693
  %3696 = add nuw nsw i64 %3694, %3695
  %3697 = icmp eq i64 %3696, 2
  %3698 = zext i1 %3697 to i8
  store i8 %3698, i8* %63, align 1
  %3699 = load i64, i64* %RBP.i, align 8
  %3700 = add i64 %3699, -48
  %3701 = add i64 %3543, 68
  store i64 %3701, i64* %3, align 8
  %3702 = inttoptr i64 %3700 to i32*
  %3703 = load i32, i32* %3702, align 4
  %3704 = sext i32 %3703 to i64
  %3705 = shl nsw i64 %3704, 4
  store i64 %3705, i64* %RCX.i1788, align 8
  %3706 = add i64 %3705, %3672
  store i64 %3706, i64* %RSI.i1784, align 8
  %3707 = icmp ult i64 %3706, %3672
  %3708 = icmp ult i64 %3706, %3705
  %3709 = or i1 %3707, %3708
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %39, align 1
  %3711 = trunc i64 %3706 to i32
  %3712 = and i32 %3711, 255
  %3713 = tail call i32 @llvm.ctpop.i32(i32 %3712)
  %3714 = trunc i32 %3713 to i8
  %3715 = and i8 %3714, 1
  %3716 = xor i8 %3715, 1
  store i8 %3716, i8* %46, align 1
  %3717 = xor i64 %3705, %3672
  %3718 = xor i64 %3717, %3706
  %3719 = lshr i64 %3718, 4
  %3720 = trunc i64 %3719 to i8
  %3721 = and i8 %3720, 1
  store i8 %3721, i8* %51, align 1
  %3722 = icmp eq i64 %3706, 0
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %54, align 1
  %3724 = lshr i64 %3706, 63
  %3725 = trunc i64 %3724 to i8
  store i8 %3725, i8* %57, align 1
  %3726 = lshr i64 %3704, 59
  %3727 = and i64 %3726, 1
  %3728 = xor i64 %3724, %3689
  %3729 = xor i64 %3724, %3727
  %3730 = add nuw nsw i64 %3728, %3729
  %3731 = icmp eq i64 %3730, 2
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %63, align 1
  %3733 = add i64 %3699, -44
  %3734 = add i64 %3543, 79
  store i64 %3734, i64* %3, align 8
  %3735 = inttoptr i64 %3733 to i32*
  %3736 = load i32, i32* %3735, align 4
  %3737 = sext i32 %3736 to i64
  store i64 %3737, i64* %RCX.i1788, align 8
  %3738 = shl nsw i64 %3737, 2
  %3739 = add i64 %3738, %3706
  %3740 = load i32, i32* %EAX.i1800, align 4
  %3741 = add i64 %3543, 82
  store i64 %3741, i64* %3, align 8
  %3742 = inttoptr i64 %3739 to i32*
  store i32 %3740, i32* %3742, align 4
  %.pre214 = load i64, i64* %3, align 8
  br label %block_.L_479f16

block_.L_479f16:                                  ; preds = %routine_idivl__r9d.exit1600, %routine_idivl__r9d.exit1739
  %3743 = phi i64 [ %3309, %routine_idivl__r9d.exit1739 ], [ %.pre214, %routine_idivl__r9d.exit1600 ]
  %MEMORY.15 = phi %struct.Memory* [ %3011, %routine_idivl__r9d.exit1739 ], [ %3446, %routine_idivl__r9d.exit1600 ]
  %3744 = load i64, i64* %RBP.i, align 8
  %3745 = add i64 %3744, -76
  %3746 = add i64 %3743, 4
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3745 to i32*
  %3748 = load i32, i32* %3747, align 4
  store i8 0, i8* %39, align 1
  %3749 = and i32 %3748, 255
  %3750 = tail call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  store i8 %3753, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3754 = icmp eq i32 %3748, 0
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %54, align 1
  %3756 = lshr i32 %3748, 31
  %3757 = trunc i32 %3756 to i8
  store i8 %3757, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v250 = select i1 %3754, i64 10, i64 175
  %3758 = add i64 %3743, %.v250
  %3759 = add i64 %3758, 10
  store i64 %3759, i64* %3, align 8
  br i1 %3754, label %block_479f20, label %block_.L_479fc5

block_479f20:                                     ; preds = %block_.L_479f16
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %RDX.i1786, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RSI.i1784, align 8
  %3760 = add i64 %3744, -52
  %3761 = add i64 %3758, 44
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3760 to i32*
  %3763 = load i32, i32* %3762, align 4
  %3764 = sext i32 %3763 to i64
  %3765 = shl nsw i64 %3764, 6
  store i64 %3765, i64* %RDI.i1781, align 8
  %3766 = add i64 %3765, ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64)
  store i64 %3766, i64* %RSI.i1784, align 8
  %3767 = icmp ult i64 %3766, ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64)
  %3768 = icmp ult i64 %3766, %3765
  %3769 = or i1 %3767, %3768
  %3770 = zext i1 %3769 to i8
  store i8 %3770, i8* %39, align 1
  %3771 = trunc i64 %3766 to i32
  %3772 = and i32 %3771, 248
  %3773 = tail call i32 @llvm.ctpop.i32(i32 %3772)
  %3774 = trunc i32 %3773 to i8
  %3775 = and i8 %3774, 1
  %3776 = xor i8 %3775, 1
  store i8 %3776, i8* %46, align 1
  %3777 = xor i64 %3766, ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64)
  %3778 = lshr i64 %3777, 4
  %3779 = trunc i64 %3778 to i8
  %3780 = and i8 %3779, 1
  store i8 %3780, i8* %51, align 1
  %3781 = icmp eq i64 %3766, 0
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %54, align 1
  %3783 = lshr i64 %3766, 63
  %3784 = trunc i64 %3783 to i8
  store i8 %3784, i8* %57, align 1
  %3785 = lshr i64 %3764, 57
  %3786 = and i64 %3785, 1
  %3787 = xor i64 %3783, lshr (i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64 63)
  %3788 = xor i64 %3783, %3786
  %3789 = add nuw nsw i64 %3787, %3788
  %3790 = icmp eq i64 %3789, 2
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %63, align 1
  %3792 = add i64 %3744, -48
  %3793 = add i64 %3758, 55
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3792 to i32*
  %3795 = load i32, i32* %3794, align 4
  %3796 = sext i32 %3795 to i64
  %3797 = shl nsw i64 %3796, 4
  store i64 %3797, i64* %RDI.i1781, align 8
  %3798 = add i64 %3797, %3766
  store i64 %3798, i64* %RSI.i1784, align 8
  %3799 = icmp ult i64 %3798, %3766
  %3800 = icmp ult i64 %3798, %3797
  %3801 = or i1 %3799, %3800
  %3802 = zext i1 %3801 to i8
  store i8 %3802, i8* %39, align 1
  %3803 = trunc i64 %3798 to i32
  %3804 = and i32 %3803, 248
  %3805 = tail call i32 @llvm.ctpop.i32(i32 %3804)
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = xor i8 %3807, 1
  store i8 %3808, i8* %46, align 1
  %3809 = xor i64 %3797, %3766
  %3810 = xor i64 %3809, %3798
  %3811 = lshr i64 %3810, 4
  %3812 = trunc i64 %3811 to i8
  %3813 = and i8 %3812, 1
  store i8 %3813, i8* %51, align 1
  %3814 = icmp eq i64 %3798, 0
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %54, align 1
  %3816 = lshr i64 %3798, 63
  %3817 = trunc i64 %3816 to i8
  store i8 %3817, i8* %57, align 1
  %3818 = lshr i64 %3796, 59
  %3819 = and i64 %3818, 1
  %3820 = xor i64 %3816, %3783
  %3821 = xor i64 %3816, %3819
  %3822 = add nuw nsw i64 %3820, %3821
  %3823 = icmp eq i64 %3822, 2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %63, align 1
  %3825 = load i64, i64* %RBP.i, align 8
  %3826 = add i64 %3825, -44
  %3827 = add i64 %3758, 66
  store i64 %3827, i64* %3, align 8
  %3828 = inttoptr i64 %3826 to i32*
  %3829 = load i32, i32* %3828, align 4
  %3830 = sext i32 %3829 to i64
  store i64 %3830, i64* %RDI.i1781, align 8
  %3831 = shl nsw i64 %3830, 2
  %3832 = add i64 %3831, %3798
  %3833 = add i64 %3758, 70
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %430, align 8
  %3837 = add i64 %3825, -52
  %3838 = add i64 %3758, 74
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i32*
  %3840 = load i32, i32* %3839, align 4
  %3841 = sext i32 %3840 to i64
  %3842 = shl nsw i64 %3841, 6
  store i64 %3842, i64* %RSI.i1784, align 8
  %3843 = load i64, i64* %RDX.i1786, align 8
  %3844 = add i64 %3842, %3843
  store i64 %3844, i64* %RDX.i1786, align 8
  %3845 = icmp ult i64 %3844, %3843
  %3846 = icmp ult i64 %3844, %3842
  %3847 = or i1 %3845, %3846
  %3848 = zext i1 %3847 to i8
  store i8 %3848, i8* %39, align 1
  %3849 = trunc i64 %3844 to i32
  %3850 = and i32 %3849, 255
  %3851 = tail call i32 @llvm.ctpop.i32(i32 %3850)
  %3852 = trunc i32 %3851 to i8
  %3853 = and i8 %3852, 1
  %3854 = xor i8 %3853, 1
  store i8 %3854, i8* %46, align 1
  %3855 = xor i64 %3843, %3844
  %3856 = lshr i64 %3855, 4
  %3857 = trunc i64 %3856 to i8
  %3858 = and i8 %3857, 1
  store i8 %3858, i8* %51, align 1
  %3859 = icmp eq i64 %3844, 0
  %3860 = zext i1 %3859 to i8
  store i8 %3860, i8* %54, align 1
  %3861 = lshr i64 %3844, 63
  %3862 = trunc i64 %3861 to i8
  store i8 %3862, i8* %57, align 1
  %3863 = lshr i64 %3843, 63
  %3864 = lshr i64 %3841, 57
  %3865 = and i64 %3864, 1
  %3866 = xor i64 %3861, %3863
  %3867 = xor i64 %3861, %3865
  %3868 = add nuw nsw i64 %3866, %3867
  %3869 = icmp eq i64 %3868, 2
  %3870 = zext i1 %3869 to i8
  store i8 %3870, i8* %63, align 1
  %3871 = add i64 %3825, -48
  %3872 = add i64 %3758, 85
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to i32*
  %3874 = load i32, i32* %3873, align 4
  %3875 = sext i32 %3874 to i64
  %3876 = shl nsw i64 %3875, 4
  store i64 %3876, i64* %RSI.i1784, align 8
  %3877 = add i64 %3876, %3844
  store i64 %3877, i64* %RDX.i1786, align 8
  %3878 = icmp ult i64 %3877, %3844
  %3879 = icmp ult i64 %3877, %3876
  %3880 = or i1 %3878, %3879
  %3881 = zext i1 %3880 to i8
  store i8 %3881, i8* %39, align 1
  %3882 = trunc i64 %3877 to i32
  %3883 = and i32 %3882, 255
  %3884 = tail call i32 @llvm.ctpop.i32(i32 %3883)
  %3885 = trunc i32 %3884 to i8
  %3886 = and i8 %3885, 1
  %3887 = xor i8 %3886, 1
  store i8 %3887, i8* %46, align 1
  %3888 = xor i64 %3876, %3844
  %3889 = xor i64 %3888, %3877
  %3890 = lshr i64 %3889, 4
  %3891 = trunc i64 %3890 to i8
  %3892 = and i8 %3891, 1
  store i8 %3892, i8* %51, align 1
  %3893 = icmp eq i64 %3877, 0
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %54, align 1
  %3895 = lshr i64 %3877, 63
  %3896 = trunc i64 %3895 to i8
  store i8 %3896, i8* %57, align 1
  %3897 = lshr i64 %3875, 59
  %3898 = and i64 %3897, 1
  %3899 = xor i64 %3895, %3861
  %3900 = xor i64 %3895, %3898
  %3901 = add nuw nsw i64 %3899, %3900
  %3902 = icmp eq i64 %3901, 2
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %63, align 1
  %3904 = load i64, i64* %RBP.i, align 8
  %3905 = add i64 %3904, -44
  %3906 = add i64 %3758, 96
  store i64 %3906, i64* %3, align 8
  %3907 = inttoptr i64 %3905 to i32*
  %3908 = load i32, i32* %3907, align 4
  %3909 = sext i32 %3908 to i64
  store i64 %3909, i64* %RSI.i1784, align 8
  %3910 = shl nsw i64 %3909, 2
  %3911 = add i64 %3910, %3877
  %3912 = load i32, i32* %R8D.i1761, align 4
  %3913 = add i64 %3758, 100
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3911 to i32*
  store i32 %3912, i32* %3914, align 4
  %3915 = load i64, i64* %RBP.i, align 8
  %3916 = add i64 %3915, -52
  %3917 = load i64, i64* %3, align 8
  %3918 = add i64 %3917, 4
  store i64 %3918, i64* %3, align 8
  %3919 = inttoptr i64 %3916 to i32*
  %3920 = load i32, i32* %3919, align 4
  %3921 = sext i32 %3920 to i64
  %3922 = shl nsw i64 %3921, 6
  store i64 %3922, i64* %RDX.i1786, align 8
  %3923 = load i64, i64* %RCX.i1788, align 8
  %3924 = add i64 %3922, %3923
  store i64 %3924, i64* %RCX.i1788, align 8
  %3925 = icmp ult i64 %3924, %3923
  %3926 = icmp ult i64 %3924, %3922
  %3927 = or i1 %3925, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %39, align 1
  %3929 = trunc i64 %3924 to i32
  %3930 = and i32 %3929, 255
  %3931 = tail call i32 @llvm.ctpop.i32(i32 %3930)
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = xor i8 %3933, 1
  store i8 %3934, i8* %46, align 1
  %3935 = xor i64 %3923, %3924
  %3936 = lshr i64 %3935, 4
  %3937 = trunc i64 %3936 to i8
  %3938 = and i8 %3937, 1
  store i8 %3938, i8* %51, align 1
  %3939 = icmp eq i64 %3924, 0
  %3940 = zext i1 %3939 to i8
  store i8 %3940, i8* %54, align 1
  %3941 = lshr i64 %3924, 63
  %3942 = trunc i64 %3941 to i8
  store i8 %3942, i8* %57, align 1
  %3943 = lshr i64 %3923, 63
  %3944 = lshr i64 %3921, 57
  %3945 = and i64 %3944, 1
  %3946 = xor i64 %3941, %3943
  %3947 = xor i64 %3941, %3945
  %3948 = add nuw nsw i64 %3946, %3947
  %3949 = icmp eq i64 %3948, 2
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %63, align 1
  %3951 = add i64 %3915, -48
  %3952 = add i64 %3917, 15
  store i64 %3952, i64* %3, align 8
  %3953 = inttoptr i64 %3951 to i32*
  %3954 = load i32, i32* %3953, align 4
  %3955 = sext i32 %3954 to i64
  %3956 = shl nsw i64 %3955, 4
  store i64 %3956, i64* %RDX.i1786, align 8
  %3957 = add i64 %3956, %3924
  store i64 %3957, i64* %RCX.i1788, align 8
  %3958 = icmp ult i64 %3957, %3924
  %3959 = icmp ult i64 %3957, %3956
  %3960 = or i1 %3958, %3959
  %3961 = zext i1 %3960 to i8
  store i8 %3961, i8* %39, align 1
  %3962 = trunc i64 %3957 to i32
  %3963 = and i32 %3962, 255
  %3964 = tail call i32 @llvm.ctpop.i32(i32 %3963)
  %3965 = trunc i32 %3964 to i8
  %3966 = and i8 %3965, 1
  %3967 = xor i8 %3966, 1
  store i8 %3967, i8* %46, align 1
  %3968 = xor i64 %3956, %3924
  %3969 = xor i64 %3968, %3957
  %3970 = lshr i64 %3969, 4
  %3971 = trunc i64 %3970 to i8
  %3972 = and i8 %3971, 1
  store i8 %3972, i8* %51, align 1
  %3973 = icmp eq i64 %3957, 0
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %54, align 1
  %3975 = lshr i64 %3957, 63
  %3976 = trunc i64 %3975 to i8
  store i8 %3976, i8* %57, align 1
  %3977 = lshr i64 %3955, 59
  %3978 = and i64 %3977, 1
  %3979 = xor i64 %3975, %3941
  %3980 = xor i64 %3975, %3978
  %3981 = add nuw nsw i64 %3979, %3980
  %3982 = icmp eq i64 %3981, 2
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %63, align 1
  %3984 = load i64, i64* %RBP.i, align 8
  %3985 = add i64 %3984, -44
  %3986 = add i64 %3917, 26
  store i64 %3986, i64* %3, align 8
  %3987 = inttoptr i64 %3985 to i32*
  %3988 = load i32, i32* %3987, align 4
  %3989 = sext i32 %3988 to i64
  store i64 %3989, i64* %RDX.i1786, align 8
  %3990 = shl nsw i64 %3989, 2
  %3991 = add i64 %3990, %3957
  %3992 = add i64 %3917, 30
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %430, align 8
  %3996 = add i64 %3984, -52
  %3997 = add i64 %3917, 34
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  %3999 = load i32, i32* %3998, align 4
  %4000 = sext i32 %3999 to i64
  %4001 = shl nsw i64 %4000, 6
  store i64 %4001, i64* %RCX.i1788, align 8
  %4002 = load i64, i64* %RAX.i2624, align 8
  %4003 = add i64 %4001, %4002
  store i64 %4003, i64* %RAX.i2624, align 8
  %4004 = icmp ult i64 %4003, %4002
  %4005 = icmp ult i64 %4003, %4001
  %4006 = or i1 %4004, %4005
  %4007 = zext i1 %4006 to i8
  store i8 %4007, i8* %39, align 1
  %4008 = trunc i64 %4003 to i32
  %4009 = and i32 %4008, 255
  %4010 = tail call i32 @llvm.ctpop.i32(i32 %4009)
  %4011 = trunc i32 %4010 to i8
  %4012 = and i8 %4011, 1
  %4013 = xor i8 %4012, 1
  store i8 %4013, i8* %46, align 1
  %4014 = xor i64 %4002, %4003
  %4015 = lshr i64 %4014, 4
  %4016 = trunc i64 %4015 to i8
  %4017 = and i8 %4016, 1
  store i8 %4017, i8* %51, align 1
  %4018 = icmp eq i64 %4003, 0
  %4019 = zext i1 %4018 to i8
  store i8 %4019, i8* %54, align 1
  %4020 = lshr i64 %4003, 63
  %4021 = trunc i64 %4020 to i8
  store i8 %4021, i8* %57, align 1
  %4022 = lshr i64 %4002, 63
  %4023 = lshr i64 %4000, 57
  %4024 = and i64 %4023, 1
  %4025 = xor i64 %4020, %4022
  %4026 = xor i64 %4020, %4024
  %4027 = add nuw nsw i64 %4025, %4026
  %4028 = icmp eq i64 %4027, 2
  %4029 = zext i1 %4028 to i8
  store i8 %4029, i8* %63, align 1
  %4030 = add i64 %3984, -48
  %4031 = add i64 %3917, 45
  store i64 %4031, i64* %3, align 8
  %4032 = inttoptr i64 %4030 to i32*
  %4033 = load i32, i32* %4032, align 4
  %4034 = sext i32 %4033 to i64
  %4035 = shl nsw i64 %4034, 4
  store i64 %4035, i64* %RCX.i1788, align 8
  %4036 = add i64 %4035, %4003
  store i64 %4036, i64* %RAX.i2624, align 8
  %4037 = icmp ult i64 %4036, %4003
  %4038 = icmp ult i64 %4036, %4035
  %4039 = or i1 %4037, %4038
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %39, align 1
  %4041 = trunc i64 %4036 to i32
  %4042 = and i32 %4041, 255
  %4043 = tail call i32 @llvm.ctpop.i32(i32 %4042)
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = xor i8 %4045, 1
  store i8 %4046, i8* %46, align 1
  %4047 = xor i64 %4035, %4003
  %4048 = xor i64 %4047, %4036
  %4049 = lshr i64 %4048, 4
  %4050 = trunc i64 %4049 to i8
  %4051 = and i8 %4050, 1
  store i8 %4051, i8* %51, align 1
  %4052 = icmp eq i64 %4036, 0
  %4053 = zext i1 %4052 to i8
  store i8 %4053, i8* %54, align 1
  %4054 = lshr i64 %4036, 63
  %4055 = trunc i64 %4054 to i8
  store i8 %4055, i8* %57, align 1
  %4056 = lshr i64 %4034, 59
  %4057 = and i64 %4056, 1
  %4058 = xor i64 %4054, %4020
  %4059 = xor i64 %4054, %4057
  %4060 = add nuw nsw i64 %4058, %4059
  %4061 = icmp eq i64 %4060, 2
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %63, align 1
  %4063 = load i64, i64* %RBP.i, align 8
  %4064 = add i64 %4063, -44
  %4065 = add i64 %3917, 56
  store i64 %4065, i64* %3, align 8
  %4066 = inttoptr i64 %4064 to i32*
  %4067 = load i32, i32* %4066, align 4
  %4068 = sext i32 %4067 to i64
  store i64 %4068, i64* %RCX.i1788, align 8
  %4069 = shl nsw i64 %4068, 2
  %4070 = add i64 %4069, %4036
  %4071 = load i32, i32* %R8D.i1761, align 4
  %4072 = add i64 %3917, 60
  store i64 %4072, i64* %3, align 8
  %4073 = inttoptr i64 %4070 to i32*
  store i32 %4071, i32* %4073, align 4
  %4074 = load i64, i64* %3, align 8
  %4075 = add i64 %4074, 354
  store i64 %4075, i64* %3, align 8
  br label %block_.L_47a122

block_.L_479fc5:                                  ; preds = %block_.L_479f16
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RAX.i2624, align 8
  %4076 = add i64 %3744, -52
  %4077 = add i64 %3758, 14
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i32*
  %4079 = load i32, i32* %4078, align 4
  %4080 = sext i32 %4079 to i64
  %4081 = shl nsw i64 %4080, 6
  store i64 %4081, i64* %RCX.i1406, align 8
  %4082 = add i64 %4081, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %4082, i64* %RAX.i2624, align 8
  %4083 = icmp ult i64 %4082, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %4084 = icmp ult i64 %4082, %4081
  %4085 = or i1 %4083, %4084
  %4086 = zext i1 %4085 to i8
  store i8 %4086, i8* %39, align 1
  %4087 = trunc i64 %4082 to i32
  %4088 = and i32 %4087, 248
  %4089 = tail call i32 @llvm.ctpop.i32(i32 %4088)
  %4090 = trunc i32 %4089 to i8
  %4091 = and i8 %4090, 1
  %4092 = xor i8 %4091, 1
  store i8 %4092, i8* %46, align 1
  %4093 = xor i64 %4082, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %4094 = lshr i64 %4093, 4
  %4095 = trunc i64 %4094 to i8
  %4096 = and i8 %4095, 1
  store i8 %4096, i8* %51, align 1
  %4097 = icmp eq i64 %4082, 0
  %4098 = zext i1 %4097 to i8
  store i8 %4098, i8* %54, align 1
  %4099 = lshr i64 %4082, 63
  %4100 = trunc i64 %4099 to i8
  store i8 %4100, i8* %57, align 1
  %4101 = lshr i64 %4080, 57
  %4102 = and i64 %4101, 1
  %4103 = xor i64 %4099, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %4104 = xor i64 %4099, %4102
  %4105 = add nuw nsw i64 %4103, %4104
  %4106 = icmp eq i64 %4105, 2
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %63, align 1
  %4108 = add i64 %3744, -48
  %4109 = add i64 %3758, 25
  store i64 %4109, i64* %3, align 8
  %4110 = inttoptr i64 %4108 to i32*
  %4111 = load i32, i32* %4110, align 4
  %4112 = sext i32 %4111 to i64
  %4113 = shl nsw i64 %4112, 4
  store i64 %4113, i64* %RCX.i1406, align 8
  %4114 = add i64 %4113, %4082
  store i64 %4114, i64* %RAX.i2624, align 8
  %4115 = icmp ult i64 %4114, %4082
  %4116 = icmp ult i64 %4114, %4113
  %4117 = or i1 %4115, %4116
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %39, align 1
  %4119 = trunc i64 %4114 to i32
  %4120 = and i32 %4119, 248
  %4121 = tail call i32 @llvm.ctpop.i32(i32 %4120)
  %4122 = trunc i32 %4121 to i8
  %4123 = and i8 %4122, 1
  %4124 = xor i8 %4123, 1
  store i8 %4124, i8* %46, align 1
  %4125 = xor i64 %4113, %4082
  %4126 = xor i64 %4125, %4114
  %4127 = lshr i64 %4126, 4
  %4128 = trunc i64 %4127 to i8
  %4129 = and i8 %4128, 1
  store i8 %4129, i8* %51, align 1
  %4130 = icmp eq i64 %4114, 0
  %4131 = zext i1 %4130 to i8
  store i8 %4131, i8* %54, align 1
  %4132 = lshr i64 %4114, 63
  %4133 = trunc i64 %4132 to i8
  store i8 %4133, i8* %57, align 1
  %4134 = lshr i64 %4112, 59
  %4135 = and i64 %4134, 1
  %4136 = xor i64 %4132, %4099
  %4137 = xor i64 %4132, %4135
  %4138 = add nuw nsw i64 %4136, %4137
  %4139 = icmp eq i64 %4138, 2
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %63, align 1
  %4141 = load i64, i64* %RBP.i, align 8
  %4142 = add i64 %4141, -44
  %4143 = add i64 %3758, 36
  store i64 %4143, i64* %3, align 8
  %4144 = inttoptr i64 %4142 to i32*
  %4145 = load i32, i32* %4144, align 4
  %4146 = sext i32 %4145 to i64
  store i64 %4146, i64* %RCX.i1406, align 8
  %4147 = shl nsw i64 %4146, 2
  %4148 = add i64 %4147, %4114
  %4149 = add i64 %3758, 39
  store i64 %4149, i64* %3, align 8
  %4150 = inttoptr i64 %4148 to i32*
  %4151 = load i32, i32* %4150, align 4
  %4152 = shl i32 %4151, 4
  %4153 = zext i32 %4152 to i64
  store i64 %4153, i64* %435, align 8
  %4154 = load i16, i16* bitcast (%G_0x6d4522_type* @G_0x6d4522 to i16*), align 8
  %4155 = sext i16 %4154 to i64
  %4156 = and i64 %4155, 4294967295
  store i64 %4156, i64* %RSI.i1382, align 8
  %4157 = sext i16 %4154 to i32
  store i8 0, i8* %39, align 1
  %4158 = and i32 %4157, 255
  %4159 = tail call i32 @llvm.ctpop.i32(i32 %4158)
  %4160 = trunc i32 %4159 to i8
  %4161 = and i8 %4160, 1
  %4162 = xor i8 %4161, 1
  store i8 %4162, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %4163 = icmp eq i16 %4154, 0
  %4164 = zext i1 %4163 to i8
  store i8 %4164, i8* %54, align 1
  %4165 = lshr i32 %4157, 31
  %4166 = trunc i32 %4165 to i8
  store i8 %4166, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %4167 = add i64 %4141, -148
  %4168 = add i64 %3758, 59
  store i64 %4168, i64* %3, align 8
  %4169 = inttoptr i64 %4167 to i32*
  store i32 %4152, i32* %4169, align 4
  %4170 = load i64, i64* %3, align 8
  %4171 = load i8, i8* %54, align 1
  %4172 = icmp ne i8 %4171, 0
  %.v271 = select i1 %4172, i64 29, i64 6
  %4173 = add i64 %4170, %.v271
  %cmpBr_47a000 = icmp eq i8 %4171, 1
  %4174 = load i64, i64* %RBP.i, align 8
  %4175 = add i64 %4174, -56
  %4176 = add i64 %4173, 4
  store i64 %4176, i64* %3, align 8
  %4177 = inttoptr i64 %4175 to i32*
  %4178 = load i32, i32* %4177, align 4
  %4179 = sext i32 %4178 to i64
  store i64 %4179, i64* %RAX.i2624, align 8
  %4180 = shl nsw i64 %4179, 1
  br i1 %cmpBr_47a000, label %block_.L_47a01d, label %block_47a006

block_47a006:                                     ; preds = %block_.L_479fc5
  %4181 = add nsw i64 %4180, 4952672
  %4182 = add i64 %4173, 12
  store i64 %4182, i64* %3, align 8
  %4183 = inttoptr i64 %4181 to i16*
  %4184 = load i16, i16* %4183, align 2
  %4185 = sext i16 %4184 to i64
  %4186 = and i64 %4185, 4294967295
  store i64 %4186, i64* %RCX.i1406, align 8
  %4187 = add i64 %4174, -152
  %4188 = sext i16 %4184 to i32
  %4189 = add i64 %4173, 18
  store i64 %4189, i64* %3, align 8
  %4190 = inttoptr i64 %4187 to i32*
  store i32 %4188, i32* %4190, align 4
  %4191 = load i64, i64* %3, align 8
  %4192 = add i64 %4191, 23
  store i64 %4192, i64* %3, align 8
  br label %block_.L_47a02f

block_.L_47a01d:                                  ; preds = %block_.L_479fc5
  %4193 = add nsw i64 %4180, 7151584
  %4194 = add i64 %4173, 12
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i16*
  %4196 = load i16, i16* %4195, align 2
  %4197 = sext i16 %4196 to i64
  %4198 = and i64 %4197, 4294967295
  store i64 %4198, i64* %RCX.i1406, align 8
  %4199 = add i64 %4174, -152
  %4200 = sext i16 %4196 to i32
  %4201 = add i64 %4173, 18
  store i64 %4201, i64* %3, align 8
  %4202 = inttoptr i64 %4199 to i32*
  store i32 %4200, i32* %4202, align 4
  %.pre215 = load i64, i64* %3, align 8
  br label %block_.L_47a02f

block_.L_47a02f:                                  ; preds = %block_.L_47a01d, %block_47a006
  %4203 = phi i64 [ %.pre215, %block_.L_47a01d ], [ %4192, %block_47a006 ]
  %4204 = load i64, i64* %RBP.i, align 8
  %4205 = add i64 %4204, -152
  %4206 = add i64 %4203, 6
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4205 to i32*
  %4208 = load i32, i32* %4207, align 4
  %4209 = zext i32 %4208 to i64
  store i64 %4209, i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1406, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %435, align 8
  %4210 = add i64 %4204, -148
  %4211 = add i64 %4203, 32
  store i64 %4211, i64* %3, align 8
  %4212 = inttoptr i64 %4210 to i32*
  %4213 = load i32, i32* %4212, align 4
  %4214 = zext i32 %4213 to i64
  store i64 %4214, i64* %RSI.i1382, align 8
  %4215 = add i64 %4204, -156
  %4216 = add i64 %4203, 38
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4215 to i32*
  store i32 %4208, i32* %4217, align 4
  %4218 = load i32, i32* %ESI.i1380, align 4
  %4219 = zext i32 %4218 to i64
  %4220 = load i64, i64* %3, align 8
  store i64 %4219, i64* %RAX.i2624, align 8
  %4221 = load i64, i64* %RBP.i, align 8
  %4222 = add i64 %4221, -168
  %4223 = load i64, i64* %435, align 8
  %4224 = add i64 %4220, 9
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4222 to i64*
  store i64 %4223, i64* %4225, align 8
  %4226 = load i64, i64* %3, align 8
  %4227 = load i32, i32* %EAX.i1800, align 8
  %4228 = sext i32 %4227 to i64
  %4229 = lshr i64 %4228, 32
  store i64 %4229, i64* %RDX.i1786, align 8
  %4230 = load i64, i64* %RBP.i, align 8
  %4231 = add i64 %4230, -156
  %4232 = add i64 %4226, 7
  store i64 %4232, i64* %3, align 8
  %4233 = inttoptr i64 %4231 to i32*
  %4234 = load i32, i32* %4233, align 4
  %4235 = zext i32 %4234 to i64
  store i64 %4235, i64* %RDI.i1334, align 8
  %4236 = add i64 %4226, 9
  store i64 %4236, i64* %3, align 8
  %4237 = zext i32 %4227 to i64
  %4238 = sext i32 %4234 to i64
  %4239 = shl nuw i64 %4229, 32
  %4240 = or i64 %4239, %4237
  %4241 = sdiv i64 %4240, %4238
  %4242 = shl i64 %4241, 32
  %4243 = ashr exact i64 %4242, 32
  %4244 = icmp eq i64 %4241, %4243
  br i1 %4244, label %4247, label %4245

; <label>:4245:                                   ; preds = %block_.L_47a02f
  %4246 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4236, %struct.Memory* %MEMORY.15)
  %.pre216 = load i64, i64* %RBP.i, align 8
  %.pre217 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit1330

; <label>:4247:                                   ; preds = %block_.L_47a02f
  %4248 = srem i64 %4240, %4238
  %4249 = and i64 %4241, 4294967295
  store i64 %4249, i64* %RAX.i2624, align 8
  %4250 = and i64 %4248, 4294967295
  store i64 %4250, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__edi.exit1330

routine_idivl__edi.exit1330:                      ; preds = %4247, %4245
  %4251 = phi i64 [ %.pre217, %4245 ], [ %4236, %4247 ]
  %4252 = phi i64 [ %.pre216, %4245 ], [ %4230, %4247 ]
  %4253 = phi %struct.Memory* [ %4246, %4245 ], [ %MEMORY.15, %4247 ]
  %4254 = add i64 %4252, -52
  %4255 = add i64 %4251, 4
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  %4257 = load i32, i32* %4256, align 4
  %4258 = sext i32 %4257 to i64
  %4259 = shl nsw i64 %4258, 6
  store i64 %4259, i64* %R8.i1327, align 8
  %.lobit175 = lshr i32 %4257, 31
  %4260 = trunc i32 %.lobit175 to i8
  store i8 %4260, i8* %39, align 1
  %4261 = trunc i64 %4259 to i32
  %4262 = and i32 %4261, 192
  %4263 = tail call i32 @llvm.ctpop.i32(i32 %4262)
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = xor i8 %4265, 1
  store i8 %4266, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %4267 = icmp eq i32 %4257, 0
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %54, align 1
  %4269 = lshr i64 %4258, 57
  %4270 = trunc i64 %4269 to i8
  %4271 = and i8 %4270, 1
  store i8 %4271, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %4272 = add i64 %4252, -168
  %4273 = add i64 %4251, 15
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i64*
  %4275 = load i64, i64* %4274, align 8
  %4276 = add i64 %4259, %4275
  store i64 %4276, i64* %R9.i1322, align 8
  %4277 = icmp ult i64 %4276, %4275
  %4278 = icmp ult i64 %4276, %4259
  %4279 = or i1 %4277, %4278
  %4280 = zext i1 %4279 to i8
  store i8 %4280, i8* %39, align 1
  %4281 = trunc i64 %4276 to i32
  %4282 = and i32 %4281, 255
  %4283 = tail call i32 @llvm.ctpop.i32(i32 %4282)
  %4284 = trunc i32 %4283 to i8
  %4285 = and i8 %4284, 1
  %4286 = xor i8 %4285, 1
  store i8 %4286, i8* %46, align 1
  %4287 = xor i64 %4275, %4276
  %4288 = lshr i64 %4287, 4
  %4289 = trunc i64 %4288 to i8
  %4290 = and i8 %4289, 1
  store i8 %4290, i8* %51, align 1
  %4291 = icmp eq i64 %4276, 0
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %54, align 1
  %4293 = lshr i64 %4276, 63
  %4294 = trunc i64 %4293 to i8
  store i8 %4294, i8* %57, align 1
  %4295 = lshr i64 %4275, 63
  %4296 = lshr i64 %4258, 57
  %4297 = and i64 %4296, 1
  %4298 = xor i64 %4293, %4295
  %4299 = xor i64 %4293, %4297
  %4300 = add nuw nsw i64 %4298, %4299
  %4301 = icmp eq i64 %4300, 2
  %4302 = zext i1 %4301 to i8
  store i8 %4302, i8* %63, align 1
  %4303 = add i64 %4252, -48
  %4304 = add i64 %4251, 22
  store i64 %4304, i64* %3, align 8
  %4305 = inttoptr i64 %4303 to i32*
  %4306 = load i32, i32* %4305, align 4
  %4307 = sext i32 %4306 to i64
  %4308 = shl nsw i64 %4307, 4
  store i64 %4308, i64* %R8.i1327, align 8
  %4309 = add i64 %4308, %4276
  store i64 %4309, i64* %R9.i1322, align 8
  %4310 = icmp ult i64 %4309, %4276
  %4311 = icmp ult i64 %4309, %4308
  %4312 = or i1 %4310, %4311
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %39, align 1
  %4314 = trunc i64 %4309 to i32
  %4315 = and i32 %4314, 255
  %4316 = tail call i32 @llvm.ctpop.i32(i32 %4315)
  %4317 = trunc i32 %4316 to i8
  %4318 = and i8 %4317, 1
  %4319 = xor i8 %4318, 1
  store i8 %4319, i8* %46, align 1
  %4320 = xor i64 %4308, %4276
  %4321 = xor i64 %4320, %4309
  %4322 = lshr i64 %4321, 4
  %4323 = trunc i64 %4322 to i8
  %4324 = and i8 %4323, 1
  store i8 %4324, i8* %51, align 1
  %4325 = icmp eq i64 %4309, 0
  %4326 = zext i1 %4325 to i8
  store i8 %4326, i8* %54, align 1
  %4327 = lshr i64 %4309, 63
  %4328 = trunc i64 %4327 to i8
  store i8 %4328, i8* %57, align 1
  %4329 = lshr i64 %4307, 59
  %4330 = and i64 %4329, 1
  %4331 = xor i64 %4327, %4293
  %4332 = xor i64 %4327, %4330
  %4333 = add nuw nsw i64 %4331, %4332
  %4334 = icmp eq i64 %4333, 2
  %4335 = zext i1 %4334 to i8
  store i8 %4335, i8* %63, align 1
  %4336 = load i64, i64* %RBP.i, align 8
  %4337 = add i64 %4336, -44
  %4338 = add i64 %4251, 33
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = sext i32 %4340 to i64
  store i64 %4341, i64* %R8.i1327, align 8
  %4342 = shl nsw i64 %4341, 2
  %4343 = add i64 %4342, %4309
  %4344 = load i32, i32* %EAX.i1800, align 4
  %4345 = add i64 %4251, 37
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4343 to i32*
  store i32 %4344, i32* %4346, align 4
  %4347 = load i64, i64* %RBP.i, align 8
  %4348 = add i64 %4347, -52
  %4349 = load i64, i64* %3, align 8
  %4350 = add i64 %4349, 4
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4348 to i32*
  %4352 = load i32, i32* %4351, align 4
  %4353 = sext i32 %4352 to i64
  %4354 = shl nsw i64 %4353, 6
  store i64 %4354, i64* %R8.i1327, align 8
  %4355 = load i64, i64* %RCX.i1406, align 8
  %4356 = add i64 %4354, %4355
  store i64 %4356, i64* %RCX.i1406, align 8
  %4357 = icmp ult i64 %4356, %4355
  %4358 = icmp ult i64 %4356, %4354
  %4359 = or i1 %4357, %4358
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %39, align 1
  %4361 = trunc i64 %4356 to i32
  %4362 = and i32 %4361, 255
  %4363 = tail call i32 @llvm.ctpop.i32(i32 %4362)
  %4364 = trunc i32 %4363 to i8
  %4365 = and i8 %4364, 1
  %4366 = xor i8 %4365, 1
  store i8 %4366, i8* %46, align 1
  %4367 = xor i64 %4355, %4356
  %4368 = lshr i64 %4367, 4
  %4369 = trunc i64 %4368 to i8
  %4370 = and i8 %4369, 1
  store i8 %4370, i8* %51, align 1
  %4371 = icmp eq i64 %4356, 0
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %54, align 1
  %4373 = lshr i64 %4356, 63
  %4374 = trunc i64 %4373 to i8
  store i8 %4374, i8* %57, align 1
  %4375 = lshr i64 %4355, 63
  %4376 = lshr i64 %4353, 57
  %4377 = and i64 %4376, 1
  %4378 = xor i64 %4373, %4375
  %4379 = xor i64 %4373, %4377
  %4380 = add nuw nsw i64 %4378, %4379
  %4381 = icmp eq i64 %4380, 2
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %63, align 1
  %4383 = add i64 %4347, -48
  %4384 = add i64 %4349, 15
  store i64 %4384, i64* %3, align 8
  %4385 = inttoptr i64 %4383 to i32*
  %4386 = load i32, i32* %4385, align 4
  %4387 = sext i32 %4386 to i64
  %4388 = shl nsw i64 %4387, 4
  store i64 %4388, i64* %R8.i1327, align 8
  %4389 = add i64 %4388, %4356
  store i64 %4389, i64* %RCX.i1406, align 8
  %4390 = icmp ult i64 %4389, %4356
  %4391 = icmp ult i64 %4389, %4388
  %4392 = or i1 %4390, %4391
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %39, align 1
  %4394 = trunc i64 %4389 to i32
  %4395 = and i32 %4394, 255
  %4396 = tail call i32 @llvm.ctpop.i32(i32 %4395)
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = xor i8 %4398, 1
  store i8 %4399, i8* %46, align 1
  %4400 = xor i64 %4388, %4356
  %4401 = xor i64 %4400, %4389
  %4402 = lshr i64 %4401, 4
  %4403 = trunc i64 %4402 to i8
  %4404 = and i8 %4403, 1
  store i8 %4404, i8* %51, align 1
  %4405 = icmp eq i64 %4389, 0
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %54, align 1
  %4407 = lshr i64 %4389, 63
  %4408 = trunc i64 %4407 to i8
  store i8 %4408, i8* %57, align 1
  %4409 = lshr i64 %4387, 59
  %4410 = and i64 %4409, 1
  %4411 = xor i64 %4407, %4373
  %4412 = xor i64 %4407, %4410
  %4413 = add nuw nsw i64 %4411, %4412
  %4414 = icmp eq i64 %4413, 2
  %4415 = zext i1 %4414 to i8
  store i8 %4415, i8* %63, align 1
  %4416 = load i64, i64* %RBP.i, align 8
  %4417 = add i64 %4416, -44
  %4418 = add i64 %4349, 26
  store i64 %4418, i64* %3, align 8
  %4419 = inttoptr i64 %4417 to i32*
  %4420 = load i32, i32* %4419, align 4
  %4421 = sext i32 %4420 to i64
  store i64 %4421, i64* %R8.i1327, align 8
  %4422 = shl nsw i64 %4421, 2
  %4423 = add i64 %4422, %4389
  %4424 = add i64 %4349, 30
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = zext i32 %4426 to i64
  store i64 %4427, i64* %RAX.i2624, align 8
  %4428 = load i16, i16* bitcast (%G_0x6d4522_type* @G_0x6d4522 to i16*), align 8
  %4429 = sext i16 %4428 to i64
  %4430 = and i64 %4429, 4294967295
  store i64 %4430, i64* %437, align 8
  %4431 = sext i16 %4428 to i32
  store i8 0, i8* %39, align 1
  %4432 = and i32 %4431, 255
  %4433 = tail call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  store i8 %4436, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %4437 = icmp eq i16 %4428, 0
  %4438 = zext i1 %4437 to i8
  store i8 %4438, i8* %54, align 1
  %4439 = lshr i32 %4431, 31
  %4440 = trunc i32 %4439 to i8
  store i8 %4440, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %4441 = add i64 %4416, -172
  %4442 = add i64 %4349, 49
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to i32*
  store i32 %4426, i32* %4443, align 4
  %4444 = load i64, i64* %3, align 8
  %4445 = load i8, i8* %54, align 1
  %4446 = icmp ne i8 %4445, 0
  %.v272 = select i1 %4446, i64 29, i64 6
  %4447 = add i64 %4444, %.v272
  %cmpBr_47a0bd = icmp eq i8 %4445, 1
  %4448 = load i64, i64* %RBP.i, align 8
  %4449 = add i64 %4448, -56
  %4450 = add i64 %4447, 4
  store i64 %4450, i64* %3, align 8
  %4451 = inttoptr i64 %4449 to i32*
  %4452 = load i32, i32* %4451, align 4
  %4453 = sext i32 %4452 to i64
  store i64 %4453, i64* %RAX.i2624, align 8
  %4454 = shl nsw i64 %4453, 1
  br i1 %cmpBr_47a0bd, label %block_.L_47a0da, label %block_47a0c3

block_47a0c3:                                     ; preds = %routine_idivl__edi.exit1330
  %4455 = add nsw i64 %4454, 4952672
  %4456 = add i64 %4447, 12
  store i64 %4456, i64* %3, align 8
  %4457 = inttoptr i64 %4455 to i16*
  %4458 = load i16, i16* %4457, align 2
  %4459 = sext i16 %4458 to i64
  %4460 = and i64 %4459, 4294967295
  store i64 %4460, i64* %RCX.i1406, align 8
  %4461 = add i64 %4448, -176
  %4462 = sext i16 %4458 to i32
  %4463 = add i64 %4447, 18
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4461 to i32*
  store i32 %4462, i32* %4464, align 4
  %4465 = load i64, i64* %3, align 8
  %4466 = add i64 %4465, 23
  store i64 %4466, i64* %3, align 8
  br label %block_.L_47a0ec

block_.L_47a0da:                                  ; preds = %routine_idivl__edi.exit1330
  %4467 = add nsw i64 %4454, 7151584
  %4468 = add i64 %4447, 12
  store i64 %4468, i64* %3, align 8
  %4469 = inttoptr i64 %4467 to i16*
  %4470 = load i16, i16* %4469, align 2
  %4471 = sext i16 %4470 to i64
  %4472 = and i64 %4471, 4294967295
  store i64 %4472, i64* %RCX.i1406, align 8
  %4473 = add i64 %4448, -176
  %4474 = sext i16 %4470 to i32
  %4475 = add i64 %4447, 18
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4473 to i32*
  store i32 %4474, i32* %4476, align 4
  %.pre218 = load i64, i64* %3, align 8
  br label %block_.L_47a0ec

block_.L_47a0ec:                                  ; preds = %block_.L_47a0da, %block_47a0c3
  %4477 = phi i64 [ %.pre218, %block_.L_47a0da ], [ %4466, %block_47a0c3 ]
  %4478 = load i64, i64* %RBP.i, align 8
  %4479 = add i64 %4478, -176
  %4480 = add i64 %4477, 6
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = zext i32 %4482 to i64
  store i64 %4483, i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RCX.i1406, align 8
  %4484 = add i64 %4478, -172
  %4485 = add i64 %4477, 22
  store i64 %4485, i64* %3, align 8
  %4486 = inttoptr i64 %4484 to i32*
  %4487 = load i32, i32* %4486, align 4
  %4488 = sext i32 %4487 to i64
  %4489 = sext i32 %4482 to i64
  %4490 = mul nsw i64 %4489, %4488
  %4491 = trunc i64 %4490 to i32
  %4492 = and i64 %4490, 4294967295
  store i64 %4492, i64* %435, align 8
  %4493 = shl i64 %4490, 32
  %4494 = ashr exact i64 %4493, 32
  %4495 = icmp ne i64 %4494, %4490
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %39, align 1
  %4497 = and i32 %4491, 255
  %4498 = tail call i32 @llvm.ctpop.i32(i32 %4497)
  %4499 = trunc i32 %4498 to i8
  %4500 = and i8 %4499, 1
  %4501 = xor i8 %4500, 1
  store i8 %4501, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %4502 = lshr i32 %4491, 31
  %4503 = trunc i32 %4502 to i8
  store i8 %4503, i8* %57, align 1
  store i8 %4496, i8* %63, align 1
  %4504 = add i64 %4478, -52
  %4505 = add i64 %4477, 29
  store i64 %4505, i64* %3, align 8
  %4506 = inttoptr i64 %4504 to i32*
  %4507 = load i32, i32* %4506, align 4
  %4508 = sext i32 %4507 to i64
  %4509 = shl nsw i64 %4508, 6
  store i64 %4509, i64* %RSI.i1382, align 8
  %4510 = add i64 %4509, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  store i64 %4510, i64* %RCX.i1406, align 8
  %4511 = icmp ult i64 %4510, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %4512 = icmp ult i64 %4510, %4509
  %4513 = or i1 %4511, %4512
  %4514 = zext i1 %4513 to i8
  store i8 %4514, i8* %39, align 1
  %4515 = trunc i64 %4510 to i32
  %4516 = and i32 %4515, 248
  %4517 = tail call i32 @llvm.ctpop.i32(i32 %4516)
  %4518 = trunc i32 %4517 to i8
  %4519 = and i8 %4518, 1
  %4520 = xor i8 %4519, 1
  store i8 %4520, i8* %46, align 1
  %4521 = xor i64 %4510, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %4522 = lshr i64 %4521, 4
  %4523 = trunc i64 %4522 to i8
  %4524 = and i8 %4523, 1
  store i8 %4524, i8* %51, align 1
  %4525 = icmp eq i64 %4510, 0
  %4526 = zext i1 %4525 to i8
  store i8 %4526, i8* %54, align 1
  %4527 = lshr i64 %4510, 63
  %4528 = trunc i64 %4527 to i8
  store i8 %4528, i8* %57, align 1
  %4529 = lshr i64 %4508, 57
  %4530 = and i64 %4529, 1
  %4531 = xor i64 %4527, lshr (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 63)
  %4532 = xor i64 %4527, %4530
  %4533 = add nuw nsw i64 %4531, %4532
  %4534 = icmp eq i64 %4533, 2
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %63, align 1
  %4536 = load i64, i64* %RBP.i, align 8
  %4537 = add i64 %4536, -48
  %4538 = add i64 %4477, 40
  store i64 %4538, i64* %3, align 8
  %4539 = inttoptr i64 %4537 to i32*
  %4540 = load i32, i32* %4539, align 4
  %4541 = sext i32 %4540 to i64
  %4542 = shl nsw i64 %4541, 4
  store i64 %4542, i64* %RSI.i1382, align 8
  %4543 = add i64 %4542, %4510
  store i64 %4543, i64* %RCX.i1406, align 8
  %4544 = icmp ult i64 %4543, %4510
  %4545 = icmp ult i64 %4543, %4542
  %4546 = or i1 %4544, %4545
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %39, align 1
  %4548 = trunc i64 %4543 to i32
  %4549 = and i32 %4548, 248
  %4550 = tail call i32 @llvm.ctpop.i32(i32 %4549)
  %4551 = trunc i32 %4550 to i8
  %4552 = and i8 %4551, 1
  %4553 = xor i8 %4552, 1
  store i8 %4553, i8* %46, align 1
  %4554 = xor i64 %4542, %4510
  %4555 = xor i64 %4554, %4543
  %4556 = lshr i64 %4555, 4
  %4557 = trunc i64 %4556 to i8
  %4558 = and i8 %4557, 1
  store i8 %4558, i8* %51, align 1
  %4559 = icmp eq i64 %4543, 0
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %54, align 1
  %4561 = lshr i64 %4543, 63
  %4562 = trunc i64 %4561 to i8
  store i8 %4562, i8* %57, align 1
  %4563 = lshr i64 %4541, 59
  %4564 = and i64 %4563, 1
  %4565 = xor i64 %4561, %4527
  %4566 = xor i64 %4561, %4564
  %4567 = add nuw nsw i64 %4565, %4566
  %4568 = icmp eq i64 %4567, 2
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %63, align 1
  %4570 = add i64 %4536, -44
  %4571 = add i64 %4477, 51
  store i64 %4571, i64* %3, align 8
  %4572 = inttoptr i64 %4570 to i32*
  %4573 = load i32, i32* %4572, align 4
  %4574 = sext i32 %4573 to i64
  store i64 %4574, i64* %RSI.i1382, align 8
  %4575 = shl nsw i64 %4574, 2
  %4576 = add i64 %4575, %4543
  %4577 = load i32, i32* %434, align 4
  %4578 = add i64 %4477, 54
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4576 to i32*
  store i32 %4577, i32* %4579, align 4
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_47a122

block_.L_47a122:                                  ; preds = %block_.L_47a0ec, %block_479f20
  %4580 = phi i64 [ %.pre219, %block_.L_47a0ec ], [ %4075, %block_479f20 ]
  %MEMORY.18 = phi %struct.Memory* [ %4253, %block_.L_47a0ec ], [ %MEMORY.15, %block_479f20 ]
  %4581 = load i64, i64* %RBP.i, align 8
  %4582 = add i64 %4581, -72
  %4583 = add i64 %4580, 4
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4582 to i32*
  %4585 = load i32, i32* %4584, align 4
  store i8 0, i8* %39, align 1
  %4586 = and i32 %4585, 255
  %4587 = tail call i32 @llvm.ctpop.i32(i32 %4586)
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  store i8 %4590, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %4591 = icmp eq i32 %4585, 0
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %54, align 1
  %4593 = lshr i32 %4585, 31
  %4594 = trunc i32 %4593 to i8
  store i8 %4594, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v251 = select i1 %4591, i64 10, i64 175
  %4595 = add i64 %4580, %.v251
  %4596 = add i64 %4595, 10
  store i64 %4596, i64* %3, align 8
  br i1 %4591, label %block_47a12c, label %block_.L_47a1d1

block_47a12c:                                     ; preds = %block_.L_47a122
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RAX.i2624, align 8
  store i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %RDX.i1786, align 8
  store i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64* %RSI.i1784, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %441, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  %4597 = add i64 %4581, -52
  %4598 = add i64 %4595, 44
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i32*
  %4600 = load i32, i32* %4599, align 4
  %4601 = sext i32 %4600 to i64
  %4602 = shl nsw i64 %4601, 6
  store i64 %4602, i64* %RDI.i1781, align 8
  %4603 = add i64 %4602, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  store i64 %4603, i64* %RDX.i1786, align 8
  %4604 = icmp ult i64 %4603, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  %4605 = icmp ult i64 %4603, %4602
  %4606 = or i1 %4604, %4605
  %4607 = zext i1 %4606 to i8
  store i8 %4607, i8* %39, align 1
  %4608 = trunc i64 %4603 to i32
  %4609 = and i32 %4608, 248
  %4610 = tail call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  store i8 %4613, i8* %46, align 1
  %4614 = xor i64 %4603, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  %4615 = lshr i64 %4614, 4
  %4616 = trunc i64 %4615 to i8
  %4617 = and i8 %4616, 1
  store i8 %4617, i8* %51, align 1
  %4618 = icmp eq i64 %4603, 0
  %4619 = zext i1 %4618 to i8
  store i8 %4619, i8* %54, align 1
  %4620 = lshr i64 %4603, 63
  %4621 = trunc i64 %4620 to i8
  store i8 %4621, i8* %57, align 1
  %4622 = lshr i64 %4601, 57
  %4623 = and i64 %4622, 1
  %4624 = xor i64 %4620, lshr (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 63)
  %4625 = xor i64 %4620, %4623
  %4626 = add nuw nsw i64 %4624, %4625
  %4627 = icmp eq i64 %4626, 2
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %63, align 1
  %4629 = add i64 %4581, -48
  %4630 = add i64 %4595, 55
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4629 to i32*
  %4632 = load i32, i32* %4631, align 4
  %4633 = sext i32 %4632 to i64
  %4634 = shl nsw i64 %4633, 4
  store i64 %4634, i64* %RDI.i1781, align 8
  %4635 = add i64 %4634, %4603
  store i64 %4635, i64* %RDX.i1786, align 8
  %4636 = icmp ult i64 %4635, %4603
  %4637 = icmp ult i64 %4635, %4634
  %4638 = or i1 %4636, %4637
  %4639 = zext i1 %4638 to i8
  store i8 %4639, i8* %39, align 1
  %4640 = trunc i64 %4635 to i32
  %4641 = and i32 %4640, 248
  %4642 = tail call i32 @llvm.ctpop.i32(i32 %4641)
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  %4645 = xor i8 %4644, 1
  store i8 %4645, i8* %46, align 1
  %4646 = xor i64 %4634, %4603
  %4647 = xor i64 %4646, %4635
  %4648 = lshr i64 %4647, 4
  %4649 = trunc i64 %4648 to i8
  %4650 = and i8 %4649, 1
  store i8 %4650, i8* %51, align 1
  %4651 = icmp eq i64 %4635, 0
  %4652 = zext i1 %4651 to i8
  store i8 %4652, i8* %54, align 1
  %4653 = lshr i64 %4635, 63
  %4654 = trunc i64 %4653 to i8
  store i8 %4654, i8* %57, align 1
  %4655 = lshr i64 %4633, 59
  %4656 = and i64 %4655, 1
  %4657 = xor i64 %4653, %4620
  %4658 = xor i64 %4653, %4656
  %4659 = add nuw nsw i64 %4657, %4658
  %4660 = icmp eq i64 %4659, 2
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %63, align 1
  %4662 = load i64, i64* %RBP.i, align 8
  %4663 = add i64 %4662, -44
  %4664 = add i64 %4595, 66
  store i64 %4664, i64* %3, align 8
  %4665 = inttoptr i64 %4663 to i32*
  %4666 = load i32, i32* %4665, align 4
  %4667 = sext i32 %4666 to i64
  store i64 %4667, i64* %RDI.i1781, align 8
  %4668 = shl nsw i64 %4667, 2
  %4669 = add i64 %4668, %4635
  %4670 = add i64 %4595, 70
  store i64 %4670, i64* %3, align 8
  %4671 = inttoptr i64 %4669 to i32*
  %4672 = load i32, i32* %4671, align 4
  %4673 = zext i32 %4672 to i64
  store i64 %4673, i64* %430, align 8
  %4674 = add i64 %4662, -52
  %4675 = add i64 %4595, 74
  store i64 %4675, i64* %3, align 8
  %4676 = inttoptr i64 %4674 to i32*
  %4677 = load i32, i32* %4676, align 4
  %4678 = sext i32 %4677 to i64
  %4679 = shl nsw i64 %4678, 6
  store i64 %4679, i64* %RDX.i1786, align 8
  %4680 = load i64, i64* %RSI.i1784, align 8
  %4681 = add i64 %4679, %4680
  store i64 %4681, i64* %RSI.i1784, align 8
  %4682 = icmp ult i64 %4681, %4680
  %4683 = icmp ult i64 %4681, %4679
  %4684 = or i1 %4682, %4683
  %4685 = zext i1 %4684 to i8
  store i8 %4685, i8* %39, align 1
  %4686 = trunc i64 %4681 to i32
  %4687 = and i32 %4686, 255
  %4688 = tail call i32 @llvm.ctpop.i32(i32 %4687)
  %4689 = trunc i32 %4688 to i8
  %4690 = and i8 %4689, 1
  %4691 = xor i8 %4690, 1
  store i8 %4691, i8* %46, align 1
  %4692 = xor i64 %4680, %4681
  %4693 = lshr i64 %4692, 4
  %4694 = trunc i64 %4693 to i8
  %4695 = and i8 %4694, 1
  store i8 %4695, i8* %51, align 1
  %4696 = icmp eq i64 %4681, 0
  %4697 = zext i1 %4696 to i8
  store i8 %4697, i8* %54, align 1
  %4698 = lshr i64 %4681, 63
  %4699 = trunc i64 %4698 to i8
  store i8 %4699, i8* %57, align 1
  %4700 = lshr i64 %4680, 63
  %4701 = lshr i64 %4678, 57
  %4702 = and i64 %4701, 1
  %4703 = xor i64 %4698, %4700
  %4704 = xor i64 %4698, %4702
  %4705 = add nuw nsw i64 %4703, %4704
  %4706 = icmp eq i64 %4705, 2
  %4707 = zext i1 %4706 to i8
  store i8 %4707, i8* %63, align 1
  %4708 = add i64 %4662, -48
  %4709 = add i64 %4595, 85
  store i64 %4709, i64* %3, align 8
  %4710 = inttoptr i64 %4708 to i32*
  %4711 = load i32, i32* %4710, align 4
  %4712 = sext i32 %4711 to i64
  %4713 = shl nsw i64 %4712, 4
  store i64 %4713, i64* %RDX.i1786, align 8
  %4714 = add i64 %4713, %4681
  store i64 %4714, i64* %RSI.i1784, align 8
  %4715 = icmp ult i64 %4714, %4681
  %4716 = icmp ult i64 %4714, %4713
  %4717 = or i1 %4715, %4716
  %4718 = zext i1 %4717 to i8
  store i8 %4718, i8* %39, align 1
  %4719 = trunc i64 %4714 to i32
  %4720 = and i32 %4719, 255
  %4721 = tail call i32 @llvm.ctpop.i32(i32 %4720)
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  %4724 = xor i8 %4723, 1
  store i8 %4724, i8* %46, align 1
  %4725 = xor i64 %4713, %4681
  %4726 = xor i64 %4725, %4714
  %4727 = lshr i64 %4726, 4
  %4728 = trunc i64 %4727 to i8
  %4729 = and i8 %4728, 1
  store i8 %4729, i8* %51, align 1
  %4730 = icmp eq i64 %4714, 0
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %54, align 1
  %4732 = lshr i64 %4714, 63
  %4733 = trunc i64 %4732 to i8
  store i8 %4733, i8* %57, align 1
  %4734 = lshr i64 %4712, 59
  %4735 = and i64 %4734, 1
  %4736 = xor i64 %4732, %4698
  %4737 = xor i64 %4732, %4735
  %4738 = add nuw nsw i64 %4736, %4737
  %4739 = icmp eq i64 %4738, 2
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %63, align 1
  %4741 = load i64, i64* %RBP.i, align 8
  %4742 = add i64 %4741, -44
  %4743 = add i64 %4595, 96
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = sext i32 %4745 to i64
  store i64 %4746, i64* %RDX.i1786, align 8
  %4747 = shl nsw i64 %4746, 2
  %4748 = add i64 %4747, %4714
  %4749 = load i32, i32* %R8D.i1761, align 4
  %4750 = add i64 %4595, 100
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4748 to i32*
  store i32 %4749, i32* %4751, align 4
  %4752 = load i64, i64* %RBP.i, align 8
  %4753 = add i64 %4752, -52
  %4754 = load i64, i64* %3, align 8
  %4755 = add i64 %4754, 4
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4753 to i32*
  %4757 = load i32, i32* %4756, align 4
  %4758 = sext i32 %4757 to i64
  %4759 = shl nsw i64 %4758, 6
  store i64 %4759, i64* %RDX.i1786, align 8
  %4760 = load i64, i64* %RAX.i2624, align 8
  %4761 = add i64 %4759, %4760
  store i64 %4761, i64* %RAX.i2624, align 8
  %4762 = icmp ult i64 %4761, %4760
  %4763 = icmp ult i64 %4761, %4759
  %4764 = or i1 %4762, %4763
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %39, align 1
  %4766 = trunc i64 %4761 to i32
  %4767 = and i32 %4766, 255
  %4768 = tail call i32 @llvm.ctpop.i32(i32 %4767)
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = xor i8 %4770, 1
  store i8 %4771, i8* %46, align 1
  %4772 = xor i64 %4760, %4761
  %4773 = lshr i64 %4772, 4
  %4774 = trunc i64 %4773 to i8
  %4775 = and i8 %4774, 1
  store i8 %4775, i8* %51, align 1
  %4776 = icmp eq i64 %4761, 0
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %54, align 1
  %4778 = lshr i64 %4761, 63
  %4779 = trunc i64 %4778 to i8
  store i8 %4779, i8* %57, align 1
  %4780 = lshr i64 %4760, 63
  %4781 = lshr i64 %4758, 57
  %4782 = and i64 %4781, 1
  %4783 = xor i64 %4778, %4780
  %4784 = xor i64 %4778, %4782
  %4785 = add nuw nsw i64 %4783, %4784
  %4786 = icmp eq i64 %4785, 2
  %4787 = zext i1 %4786 to i8
  store i8 %4787, i8* %63, align 1
  %4788 = add i64 %4752, -48
  %4789 = add i64 %4754, 15
  store i64 %4789, i64* %3, align 8
  %4790 = inttoptr i64 %4788 to i32*
  %4791 = load i32, i32* %4790, align 4
  %4792 = sext i32 %4791 to i64
  %4793 = shl nsw i64 %4792, 4
  store i64 %4793, i64* %RDX.i1786, align 8
  %4794 = add i64 %4793, %4761
  store i64 %4794, i64* %RAX.i2624, align 8
  %4795 = icmp ult i64 %4794, %4761
  %4796 = icmp ult i64 %4794, %4793
  %4797 = or i1 %4795, %4796
  %4798 = zext i1 %4797 to i8
  store i8 %4798, i8* %39, align 1
  %4799 = trunc i64 %4794 to i32
  %4800 = and i32 %4799, 255
  %4801 = tail call i32 @llvm.ctpop.i32(i32 %4800)
  %4802 = trunc i32 %4801 to i8
  %4803 = and i8 %4802, 1
  %4804 = xor i8 %4803, 1
  store i8 %4804, i8* %46, align 1
  %4805 = xor i64 %4793, %4761
  %4806 = xor i64 %4805, %4794
  %4807 = lshr i64 %4806, 4
  %4808 = trunc i64 %4807 to i8
  %4809 = and i8 %4808, 1
  store i8 %4809, i8* %51, align 1
  %4810 = icmp eq i64 %4794, 0
  %4811 = zext i1 %4810 to i8
  store i8 %4811, i8* %54, align 1
  %4812 = lshr i64 %4794, 63
  %4813 = trunc i64 %4812 to i8
  store i8 %4813, i8* %57, align 1
  %4814 = lshr i64 %4792, 59
  %4815 = and i64 %4814, 1
  %4816 = xor i64 %4812, %4778
  %4817 = xor i64 %4812, %4815
  %4818 = add nuw nsw i64 %4816, %4817
  %4819 = icmp eq i64 %4818, 2
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %63, align 1
  %4821 = load i64, i64* %RBP.i, align 8
  %4822 = add i64 %4821, -44
  %4823 = add i64 %4754, 26
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4822 to i32*
  %4825 = load i32, i32* %4824, align 4
  %4826 = sext i32 %4825 to i64
  store i64 %4826, i64* %RDX.i1786, align 8
  %4827 = shl nsw i64 %4826, 2
  %4828 = add i64 %4827, %4794
  %4829 = add i64 %4754, 30
  store i64 %4829, i64* %3, align 8
  %4830 = inttoptr i64 %4828 to i32*
  %4831 = load i32, i32* %4830, align 4
  %4832 = zext i32 %4831 to i64
  store i64 %4832, i64* %430, align 8
  %4833 = add i64 %4821, -52
  %4834 = add i64 %4754, 34
  store i64 %4834, i64* %3, align 8
  %4835 = inttoptr i64 %4833 to i32*
  %4836 = load i32, i32* %4835, align 4
  %4837 = sext i32 %4836 to i64
  %4838 = shl nsw i64 %4837, 6
  store i64 %4838, i64* %RAX.i2624, align 8
  %4839 = load i64, i64* %RCX.i1788, align 8
  %4840 = add i64 %4838, %4839
  store i64 %4840, i64* %RCX.i1788, align 8
  %4841 = icmp ult i64 %4840, %4839
  %4842 = icmp ult i64 %4840, %4838
  %4843 = or i1 %4841, %4842
  %4844 = zext i1 %4843 to i8
  store i8 %4844, i8* %39, align 1
  %4845 = trunc i64 %4840 to i32
  %4846 = and i32 %4845, 255
  %4847 = tail call i32 @llvm.ctpop.i32(i32 %4846)
  %4848 = trunc i32 %4847 to i8
  %4849 = and i8 %4848, 1
  %4850 = xor i8 %4849, 1
  store i8 %4850, i8* %46, align 1
  %4851 = xor i64 %4839, %4840
  %4852 = lshr i64 %4851, 4
  %4853 = trunc i64 %4852 to i8
  %4854 = and i8 %4853, 1
  store i8 %4854, i8* %51, align 1
  %4855 = icmp eq i64 %4840, 0
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %54, align 1
  %4857 = lshr i64 %4840, 63
  %4858 = trunc i64 %4857 to i8
  store i8 %4858, i8* %57, align 1
  %4859 = lshr i64 %4839, 63
  %4860 = lshr i64 %4837, 57
  %4861 = and i64 %4860, 1
  %4862 = xor i64 %4857, %4859
  %4863 = xor i64 %4857, %4861
  %4864 = add nuw nsw i64 %4862, %4863
  %4865 = icmp eq i64 %4864, 2
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %63, align 1
  %4867 = add i64 %4821, -48
  %4868 = add i64 %4754, 45
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4867 to i32*
  %4870 = load i32, i32* %4869, align 4
  %4871 = sext i32 %4870 to i64
  %4872 = shl nsw i64 %4871, 4
  store i64 %4872, i64* %RAX.i2624, align 8
  %4873 = add i64 %4872, %4840
  store i64 %4873, i64* %RCX.i1788, align 8
  %4874 = icmp ult i64 %4873, %4840
  %4875 = icmp ult i64 %4873, %4872
  %4876 = or i1 %4874, %4875
  %4877 = zext i1 %4876 to i8
  store i8 %4877, i8* %39, align 1
  %4878 = trunc i64 %4873 to i32
  %4879 = and i32 %4878, 255
  %4880 = tail call i32 @llvm.ctpop.i32(i32 %4879)
  %4881 = trunc i32 %4880 to i8
  %4882 = and i8 %4881, 1
  %4883 = xor i8 %4882, 1
  store i8 %4883, i8* %46, align 1
  %4884 = xor i64 %4872, %4840
  %4885 = xor i64 %4884, %4873
  %4886 = lshr i64 %4885, 4
  %4887 = trunc i64 %4886 to i8
  %4888 = and i8 %4887, 1
  store i8 %4888, i8* %51, align 1
  %4889 = icmp eq i64 %4873, 0
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %54, align 1
  %4891 = lshr i64 %4873, 63
  %4892 = trunc i64 %4891 to i8
  store i8 %4892, i8* %57, align 1
  %4893 = lshr i64 %4871, 59
  %4894 = and i64 %4893, 1
  %4895 = xor i64 %4891, %4857
  %4896 = xor i64 %4891, %4894
  %4897 = add nuw nsw i64 %4895, %4896
  %4898 = icmp eq i64 %4897, 2
  %4899 = zext i1 %4898 to i8
  store i8 %4899, i8* %63, align 1
  %4900 = load i64, i64* %RBP.i, align 8
  %4901 = add i64 %4900, -44
  %4902 = add i64 %4754, 56
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4901 to i32*
  %4904 = load i32, i32* %4903, align 4
  %4905 = sext i32 %4904 to i64
  store i64 %4905, i64* %RAX.i2624, align 8
  %4906 = shl nsw i64 %4905, 2
  %4907 = add i64 %4906, %4873
  %4908 = load i32, i32* %R8D.i1761, align 4
  %4909 = add i64 %4754, 60
  store i64 %4909, i64* %3, align 8
  %4910 = inttoptr i64 %4907 to i32*
  store i32 %4908, i32* %4910, align 4
  %4911 = load i64, i64* %3, align 8
  %4912 = add i64 %4911, 368
  store i64 %4912, i64* %3, align 8
  br label %block_.L_47a33c

block_.L_47a1d1:                                  ; preds = %block_.L_47a122
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RAX.i2624, align 8
  %4913 = add i64 %4581, -52
  %4914 = add i64 %4595, 14
  store i64 %4914, i64* %3, align 8
  %4915 = inttoptr i64 %4913 to i32*
  %4916 = load i32, i32* %4915, align 4
  %4917 = sext i32 %4916 to i64
  %4918 = shl nsw i64 %4917, 6
  store i64 %4918, i64* %RCX.i1406, align 8
  %4919 = add i64 %4918, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %4919, i64* %RAX.i2624, align 8
  %4920 = icmp ult i64 %4919, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %4921 = icmp ult i64 %4919, %4918
  %4922 = or i1 %4920, %4921
  %4923 = zext i1 %4922 to i8
  store i8 %4923, i8* %39, align 1
  %4924 = trunc i64 %4919 to i32
  %4925 = and i32 %4924, 248
  %4926 = tail call i32 @llvm.ctpop.i32(i32 %4925)
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  %4929 = xor i8 %4928, 1
  store i8 %4929, i8* %46, align 1
  %4930 = xor i64 %4919, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %4931 = lshr i64 %4930, 4
  %4932 = trunc i64 %4931 to i8
  %4933 = and i8 %4932, 1
  store i8 %4933, i8* %51, align 1
  %4934 = icmp eq i64 %4919, 0
  %4935 = zext i1 %4934 to i8
  store i8 %4935, i8* %54, align 1
  %4936 = lshr i64 %4919, 63
  %4937 = trunc i64 %4936 to i8
  store i8 %4937, i8* %57, align 1
  %4938 = lshr i64 %4917, 57
  %4939 = and i64 %4938, 1
  %4940 = xor i64 %4936, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %4941 = xor i64 %4936, %4939
  %4942 = add nuw nsw i64 %4940, %4941
  %4943 = icmp eq i64 %4942, 2
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %63, align 1
  %4945 = add i64 %4581, -48
  %4946 = add i64 %4595, 25
  store i64 %4946, i64* %3, align 8
  %4947 = inttoptr i64 %4945 to i32*
  %4948 = load i32, i32* %4947, align 4
  %4949 = sext i32 %4948 to i64
  %4950 = shl nsw i64 %4949, 4
  store i64 %4950, i64* %RCX.i1406, align 8
  %4951 = add i64 %4950, %4919
  store i64 %4951, i64* %RAX.i2624, align 8
  %4952 = icmp ult i64 %4951, %4919
  %4953 = icmp ult i64 %4951, %4950
  %4954 = or i1 %4952, %4953
  %4955 = zext i1 %4954 to i8
  store i8 %4955, i8* %39, align 1
  %4956 = trunc i64 %4951 to i32
  %4957 = and i32 %4956, 248
  %4958 = tail call i32 @llvm.ctpop.i32(i32 %4957)
  %4959 = trunc i32 %4958 to i8
  %4960 = and i8 %4959, 1
  %4961 = xor i8 %4960, 1
  store i8 %4961, i8* %46, align 1
  %4962 = xor i64 %4950, %4919
  %4963 = xor i64 %4962, %4951
  %4964 = lshr i64 %4963, 4
  %4965 = trunc i64 %4964 to i8
  %4966 = and i8 %4965, 1
  store i8 %4966, i8* %51, align 1
  %4967 = icmp eq i64 %4951, 0
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %54, align 1
  %4969 = lshr i64 %4951, 63
  %4970 = trunc i64 %4969 to i8
  store i8 %4970, i8* %57, align 1
  %4971 = lshr i64 %4949, 59
  %4972 = and i64 %4971, 1
  %4973 = xor i64 %4969, %4936
  %4974 = xor i64 %4969, %4972
  %4975 = add nuw nsw i64 %4973, %4974
  %4976 = icmp eq i64 %4975, 2
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %63, align 1
  %4978 = load i64, i64* %RBP.i, align 8
  %4979 = add i64 %4978, -44
  %4980 = add i64 %4595, 36
  store i64 %4980, i64* %3, align 8
  %4981 = inttoptr i64 %4979 to i32*
  %4982 = load i32, i32* %4981, align 4
  %4983 = sext i32 %4982 to i64
  store i64 %4983, i64* %RCX.i1406, align 8
  %4984 = shl nsw i64 %4983, 2
  %4985 = add i64 %4984, %4951
  %4986 = add i64 %4595, 39
  store i64 %4986, i64* %3, align 8
  %4987 = inttoptr i64 %4985 to i32*
  %4988 = load i32, i32* %4987, align 4
  %4989 = shl i32 %4988, 4
  %4990 = zext i32 %4989 to i64
  store i64 %4990, i64* %435, align 8
  %4991 = load i16, i16* bitcast (%G_0x6d4524_type* @G_0x6d4524 to i16*), align 8
  %4992 = sext i16 %4991 to i64
  %4993 = and i64 %4992, 4294967295
  store i64 %4993, i64* %RSI.i1382, align 8
  %4994 = sext i16 %4991 to i32
  store i8 0, i8* %39, align 1
  %4995 = and i32 %4994, 255
  %4996 = tail call i32 @llvm.ctpop.i32(i32 %4995)
  %4997 = trunc i32 %4996 to i8
  %4998 = and i8 %4997, 1
  %4999 = xor i8 %4998, 1
  store i8 %4999, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5000 = icmp eq i16 %4991, 0
  %5001 = zext i1 %5000 to i8
  store i8 %5001, i8* %54, align 1
  %5002 = lshr i32 %4994, 31
  %5003 = trunc i32 %5002 to i8
  store i8 %5003, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5004 = add i64 %4978, -180
  %5005 = add i64 %4595, 59
  store i64 %5005, i64* %3, align 8
  %5006 = inttoptr i64 %5004 to i32*
  store i32 %4989, i32* %5006, align 4
  %5007 = load i64, i64* %3, align 8
  %5008 = load i8, i8* %54, align 1
  %5009 = icmp ne i8 %5008, 0
  %.v273 = select i1 %5009, i64 29, i64 6
  %5010 = add i64 %5007, %.v273
  %cmpBr_47a20c = icmp eq i8 %5008, 1
  %5011 = load i64, i64* %RBP.i, align 8
  %5012 = add i64 %5011, -56
  %5013 = add i64 %5010, 4
  store i64 %5013, i64* %3, align 8
  %5014 = inttoptr i64 %5012 to i32*
  %5015 = load i32, i32* %5014, align 4
  %5016 = sext i32 %5015 to i64
  store i64 %5016, i64* %RAX.i2624, align 8
  %5017 = shl nsw i64 %5016, 1
  br i1 %cmpBr_47a20c, label %block_.L_47a229, label %block_47a212

block_47a212:                                     ; preds = %block_.L_47a1d1
  %5018 = add nsw i64 %5017, 4952672
  %5019 = add i64 %5010, 12
  store i64 %5019, i64* %3, align 8
  %5020 = inttoptr i64 %5018 to i16*
  %5021 = load i16, i16* %5020, align 2
  %5022 = sext i16 %5021 to i64
  %5023 = and i64 %5022, 4294967295
  store i64 %5023, i64* %RCX.i1406, align 8
  %5024 = add i64 %5011, -184
  %5025 = sext i16 %5021 to i32
  %5026 = add i64 %5010, 18
  store i64 %5026, i64* %3, align 8
  %5027 = inttoptr i64 %5024 to i32*
  store i32 %5025, i32* %5027, align 4
  %5028 = load i64, i64* %3, align 8
  %5029 = add i64 %5028, 23
  store i64 %5029, i64* %3, align 8
  br label %block_.L_47a23b

block_.L_47a229:                                  ; preds = %block_.L_47a1d1
  %5030 = add nsw i64 %5017, 7151616
  %5031 = add i64 %5010, 12
  store i64 %5031, i64* %3, align 8
  %5032 = inttoptr i64 %5030 to i16*
  %5033 = load i16, i16* %5032, align 2
  %5034 = sext i16 %5033 to i64
  %5035 = and i64 %5034, 4294967295
  store i64 %5035, i64* %RCX.i1406, align 8
  %5036 = add i64 %5011, -184
  %5037 = sext i16 %5033 to i32
  %5038 = add i64 %5010, 18
  store i64 %5038, i64* %3, align 8
  %5039 = inttoptr i64 %5036 to i32*
  store i32 %5037, i32* %5039, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_47a23b

block_.L_47a23b:                                  ; preds = %block_.L_47a229, %block_47a212
  %5040 = phi i64 [ %.pre220, %block_.L_47a229 ], [ %5029, %block_47a212 ]
  %5041 = load i64, i64* %RBP.i, align 8
  %5042 = add i64 %5041, -184
  %5043 = add i64 %5040, 6
  store i64 %5043, i64* %3, align 8
  %5044 = inttoptr i64 %5042 to i32*
  %5045 = load i32, i32* %5044, align 4
  %5046 = zext i32 %5045 to i64
  store i64 %5046, i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1406, align 8
  store i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64* %435, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %441, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  %5047 = add i64 %5041, -180
  %5048 = add i64 %5040, 39
  store i64 %5048, i64* %3, align 8
  %5049 = inttoptr i64 %5047 to i32*
  %5050 = load i32, i32* %5049, align 4
  %5051 = zext i32 %5050 to i64
  store i64 %5051, i64* %RSI.i1382, align 8
  %5052 = add i64 %5041, -188
  %5053 = add i64 %5040, 45
  store i64 %5053, i64* %3, align 8
  %5054 = inttoptr i64 %5052 to i32*
  store i32 %5045, i32* %5054, align 4
  %5055 = load i32, i32* %ESI.i1380, align 4
  %5056 = zext i32 %5055 to i64
  %5057 = load i64, i64* %3, align 8
  store i64 %5056, i64* %RAX.i2624, align 8
  %5058 = load i64, i64* %RBP.i, align 8
  %5059 = add i64 %5058, -200
  %5060 = load i64, i64* %435, align 8
  %5061 = add i64 %5057, 9
  store i64 %5061, i64* %3, align 8
  %5062 = inttoptr i64 %5059 to i64*
  store i64 %5060, i64* %5062, align 8
  %5063 = load i64, i64* %3, align 8
  %5064 = load i32, i32* %EAX.i1800, align 8
  %5065 = sext i32 %5064 to i64
  %5066 = lshr i64 %5065, 32
  store i64 %5066, i64* %RDX.i1786, align 8
  %5067 = load i64, i64* %RBP.i, align 8
  %5068 = add i64 %5067, -188
  %5069 = add i64 %5063, 7
  store i64 %5069, i64* %3, align 8
  %5070 = inttoptr i64 %5068 to i32*
  %5071 = load i32, i32* %5070, align 4
  %5072 = zext i32 %5071 to i64
  store i64 %5072, i64* %RDI.i1334, align 8
  %5073 = add i64 %5063, 9
  store i64 %5073, i64* %3, align 8
  %5074 = zext i32 %5064 to i64
  %5075 = sext i32 %5071 to i64
  %5076 = shl nuw i64 %5066, 32
  %5077 = or i64 %5076, %5074
  %5078 = sdiv i64 %5077, %5075
  %5079 = shl i64 %5078, 32
  %5080 = ashr exact i64 %5079, 32
  %5081 = icmp eq i64 %5078, %5080
  br i1 %5081, label %5084, label %5082

; <label>:5082:                                   ; preds = %block_.L_47a23b
  %5083 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5073, %struct.Memory* %MEMORY.18)
  %.pre221 = load i64, i64* %RBP.i, align 8
  %.pre222 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit1026

; <label>:5084:                                   ; preds = %block_.L_47a23b
  %5085 = srem i64 %5077, %5075
  %5086 = and i64 %5078, 4294967295
  store i64 %5086, i64* %RAX.i2624, align 8
  %5087 = and i64 %5085, 4294967295
  store i64 %5087, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__edi.exit1026

routine_idivl__edi.exit1026:                      ; preds = %5084, %5082
  %5088 = phi i64 [ %.pre222, %5082 ], [ %5073, %5084 ]
  %5089 = phi i64 [ %.pre221, %5082 ], [ %5067, %5084 ]
  %5090 = phi %struct.Memory* [ %5083, %5082 ], [ %MEMORY.18, %5084 ]
  %5091 = add i64 %5089, -52
  %5092 = add i64 %5088, 4
  store i64 %5092, i64* %3, align 8
  %5093 = inttoptr i64 %5091 to i32*
  %5094 = load i32, i32* %5093, align 4
  %5095 = sext i32 %5094 to i64
  %5096 = shl nsw i64 %5095, 6
  store i64 %5096, i64* %R8.i1327, align 8
  %.lobit166 = lshr i32 %5094, 31
  %5097 = trunc i32 %.lobit166 to i8
  store i8 %5097, i8* %39, align 1
  %5098 = trunc i64 %5096 to i32
  %5099 = and i32 %5098, 192
  %5100 = tail call i32 @llvm.ctpop.i32(i32 %5099)
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  %5103 = xor i8 %5102, 1
  store i8 %5103, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5104 = icmp eq i32 %5094, 0
  %5105 = zext i1 %5104 to i8
  store i8 %5105, i8* %54, align 1
  %5106 = lshr i64 %5095, 57
  %5107 = trunc i64 %5106 to i8
  %5108 = and i8 %5107, 1
  store i8 %5108, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5109 = add i64 %5089, -200
  %5110 = add i64 %5088, 15
  store i64 %5110, i64* %3, align 8
  %5111 = inttoptr i64 %5109 to i64*
  %5112 = load i64, i64* %5111, align 8
  %5113 = add i64 %5096, %5112
  store i64 %5113, i64* %R9.i1322, align 8
  %5114 = icmp ult i64 %5113, %5112
  %5115 = icmp ult i64 %5113, %5096
  %5116 = or i1 %5114, %5115
  %5117 = zext i1 %5116 to i8
  store i8 %5117, i8* %39, align 1
  %5118 = trunc i64 %5113 to i32
  %5119 = and i32 %5118, 255
  %5120 = tail call i32 @llvm.ctpop.i32(i32 %5119)
  %5121 = trunc i32 %5120 to i8
  %5122 = and i8 %5121, 1
  %5123 = xor i8 %5122, 1
  store i8 %5123, i8* %46, align 1
  %5124 = xor i64 %5112, %5113
  %5125 = lshr i64 %5124, 4
  %5126 = trunc i64 %5125 to i8
  %5127 = and i8 %5126, 1
  store i8 %5127, i8* %51, align 1
  %5128 = icmp eq i64 %5113, 0
  %5129 = zext i1 %5128 to i8
  store i8 %5129, i8* %54, align 1
  %5130 = lshr i64 %5113, 63
  %5131 = trunc i64 %5130 to i8
  store i8 %5131, i8* %57, align 1
  %5132 = lshr i64 %5112, 63
  %5133 = lshr i64 %5095, 57
  %5134 = and i64 %5133, 1
  %5135 = xor i64 %5130, %5132
  %5136 = xor i64 %5130, %5134
  %5137 = add nuw nsw i64 %5135, %5136
  %5138 = icmp eq i64 %5137, 2
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %63, align 1
  %5140 = add i64 %5089, -48
  %5141 = add i64 %5088, 22
  store i64 %5141, i64* %3, align 8
  %5142 = inttoptr i64 %5140 to i32*
  %5143 = load i32, i32* %5142, align 4
  %5144 = sext i32 %5143 to i64
  %5145 = shl nsw i64 %5144, 4
  store i64 %5145, i64* %R8.i1327, align 8
  %5146 = add i64 %5145, %5113
  store i64 %5146, i64* %R9.i1322, align 8
  %5147 = icmp ult i64 %5146, %5113
  %5148 = icmp ult i64 %5146, %5145
  %5149 = or i1 %5147, %5148
  %5150 = zext i1 %5149 to i8
  store i8 %5150, i8* %39, align 1
  %5151 = trunc i64 %5146 to i32
  %5152 = and i32 %5151, 255
  %5153 = tail call i32 @llvm.ctpop.i32(i32 %5152)
  %5154 = trunc i32 %5153 to i8
  %5155 = and i8 %5154, 1
  %5156 = xor i8 %5155, 1
  store i8 %5156, i8* %46, align 1
  %5157 = xor i64 %5145, %5113
  %5158 = xor i64 %5157, %5146
  %5159 = lshr i64 %5158, 4
  %5160 = trunc i64 %5159 to i8
  %5161 = and i8 %5160, 1
  store i8 %5161, i8* %51, align 1
  %5162 = icmp eq i64 %5146, 0
  %5163 = zext i1 %5162 to i8
  store i8 %5163, i8* %54, align 1
  %5164 = lshr i64 %5146, 63
  %5165 = trunc i64 %5164 to i8
  store i8 %5165, i8* %57, align 1
  %5166 = lshr i64 %5144, 59
  %5167 = and i64 %5166, 1
  %5168 = xor i64 %5164, %5130
  %5169 = xor i64 %5164, %5167
  %5170 = add nuw nsw i64 %5168, %5169
  %5171 = icmp eq i64 %5170, 2
  %5172 = zext i1 %5171 to i8
  store i8 %5172, i8* %63, align 1
  %5173 = load i64, i64* %RBP.i, align 8
  %5174 = add i64 %5173, -44
  %5175 = add i64 %5088, 33
  store i64 %5175, i64* %3, align 8
  %5176 = inttoptr i64 %5174 to i32*
  %5177 = load i32, i32* %5176, align 4
  %5178 = sext i32 %5177 to i64
  store i64 %5178, i64* %R8.i1327, align 8
  %5179 = shl nsw i64 %5178, 2
  %5180 = add i64 %5179, %5146
  %5181 = load i32, i32* %EAX.i1800, align 4
  %5182 = add i64 %5088, 37
  store i64 %5182, i64* %3, align 8
  %5183 = inttoptr i64 %5180 to i32*
  store i32 %5181, i32* %5183, align 4
  %5184 = load i64, i64* %RBP.i, align 8
  %5185 = add i64 %5184, -52
  %5186 = load i64, i64* %3, align 8
  %5187 = add i64 %5186, 4
  store i64 %5187, i64* %3, align 8
  %5188 = inttoptr i64 %5185 to i32*
  %5189 = load i32, i32* %5188, align 4
  %5190 = sext i32 %5189 to i64
  %5191 = shl nsw i64 %5190, 6
  store i64 %5191, i64* %R8.i1327, align 8
  %5192 = load i64, i64* %RCX.i1406, align 8
  %5193 = add i64 %5191, %5192
  store i64 %5193, i64* %RCX.i1406, align 8
  %5194 = icmp ult i64 %5193, %5192
  %5195 = icmp ult i64 %5193, %5191
  %5196 = or i1 %5194, %5195
  %5197 = zext i1 %5196 to i8
  store i8 %5197, i8* %39, align 1
  %5198 = trunc i64 %5193 to i32
  %5199 = and i32 %5198, 255
  %5200 = tail call i32 @llvm.ctpop.i32(i32 %5199)
  %5201 = trunc i32 %5200 to i8
  %5202 = and i8 %5201, 1
  %5203 = xor i8 %5202, 1
  store i8 %5203, i8* %46, align 1
  %5204 = xor i64 %5192, %5193
  %5205 = lshr i64 %5204, 4
  %5206 = trunc i64 %5205 to i8
  %5207 = and i8 %5206, 1
  store i8 %5207, i8* %51, align 1
  %5208 = icmp eq i64 %5193, 0
  %5209 = zext i1 %5208 to i8
  store i8 %5209, i8* %54, align 1
  %5210 = lshr i64 %5193, 63
  %5211 = trunc i64 %5210 to i8
  store i8 %5211, i8* %57, align 1
  %5212 = lshr i64 %5192, 63
  %5213 = lshr i64 %5190, 57
  %5214 = and i64 %5213, 1
  %5215 = xor i64 %5210, %5212
  %5216 = xor i64 %5210, %5214
  %5217 = add nuw nsw i64 %5215, %5216
  %5218 = icmp eq i64 %5217, 2
  %5219 = zext i1 %5218 to i8
  store i8 %5219, i8* %63, align 1
  %5220 = add i64 %5184, -48
  %5221 = add i64 %5186, 15
  store i64 %5221, i64* %3, align 8
  %5222 = inttoptr i64 %5220 to i32*
  %5223 = load i32, i32* %5222, align 4
  %5224 = sext i32 %5223 to i64
  %5225 = shl nsw i64 %5224, 4
  store i64 %5225, i64* %R8.i1327, align 8
  %5226 = add i64 %5225, %5193
  store i64 %5226, i64* %RCX.i1406, align 8
  %5227 = icmp ult i64 %5226, %5193
  %5228 = icmp ult i64 %5226, %5225
  %5229 = or i1 %5227, %5228
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %39, align 1
  %5231 = trunc i64 %5226 to i32
  %5232 = and i32 %5231, 255
  %5233 = tail call i32 @llvm.ctpop.i32(i32 %5232)
  %5234 = trunc i32 %5233 to i8
  %5235 = and i8 %5234, 1
  %5236 = xor i8 %5235, 1
  store i8 %5236, i8* %46, align 1
  %5237 = xor i64 %5225, %5193
  %5238 = xor i64 %5237, %5226
  %5239 = lshr i64 %5238, 4
  %5240 = trunc i64 %5239 to i8
  %5241 = and i8 %5240, 1
  store i8 %5241, i8* %51, align 1
  %5242 = icmp eq i64 %5226, 0
  %5243 = zext i1 %5242 to i8
  store i8 %5243, i8* %54, align 1
  %5244 = lshr i64 %5226, 63
  %5245 = trunc i64 %5244 to i8
  store i8 %5245, i8* %57, align 1
  %5246 = lshr i64 %5224, 59
  %5247 = and i64 %5246, 1
  %5248 = xor i64 %5244, %5210
  %5249 = xor i64 %5244, %5247
  %5250 = add nuw nsw i64 %5248, %5249
  %5251 = icmp eq i64 %5250, 2
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %63, align 1
  %5253 = load i64, i64* %RBP.i, align 8
  %5254 = add i64 %5253, -44
  %5255 = add i64 %5186, 26
  store i64 %5255, i64* %3, align 8
  %5256 = inttoptr i64 %5254 to i32*
  %5257 = load i32, i32* %5256, align 4
  %5258 = sext i32 %5257 to i64
  store i64 %5258, i64* %R8.i1327, align 8
  %5259 = shl nsw i64 %5258, 2
  %5260 = add i64 %5259, %5226
  %5261 = add i64 %5186, 30
  store i64 %5261, i64* %3, align 8
  %5262 = inttoptr i64 %5260 to i32*
  %5263 = load i32, i32* %5262, align 4
  %5264 = zext i32 %5263 to i64
  store i64 %5264, i64* %RAX.i2624, align 8
  %5265 = load i16, i16* bitcast (%G_0x6d4524_type* @G_0x6d4524 to i16*), align 8
  %5266 = sext i16 %5265 to i64
  %5267 = and i64 %5266, 4294967295
  store i64 %5267, i64* %437, align 8
  %5268 = sext i16 %5265 to i32
  store i8 0, i8* %39, align 1
  %5269 = and i32 %5268, 255
  %5270 = tail call i32 @llvm.ctpop.i32(i32 %5269)
  %5271 = trunc i32 %5270 to i8
  %5272 = and i8 %5271, 1
  %5273 = xor i8 %5272, 1
  store i8 %5273, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5274 = icmp eq i16 %5265, 0
  %5275 = zext i1 %5274 to i8
  store i8 %5275, i8* %54, align 1
  %5276 = lshr i32 %5268, 31
  %5277 = trunc i32 %5276 to i8
  store i8 %5277, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5278 = add i64 %5253, -204
  %5279 = add i64 %5186, 49
  store i64 %5279, i64* %3, align 8
  %5280 = inttoptr i64 %5278 to i32*
  store i32 %5263, i32* %5280, align 4
  %5281 = load i64, i64* %3, align 8
  %5282 = load i8, i8* %54, align 1
  %5283 = icmp ne i8 %5282, 0
  %.v274 = select i1 %5283, i64 29, i64 6
  %5284 = add i64 %5281, %.v274
  %cmpBr_47a2d0 = icmp eq i8 %5282, 1
  %5285 = load i64, i64* %RBP.i, align 8
  %5286 = add i64 %5285, -56
  %5287 = add i64 %5284, 4
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5286 to i32*
  %5289 = load i32, i32* %5288, align 4
  %5290 = sext i32 %5289 to i64
  store i64 %5290, i64* %RAX.i2624, align 8
  %5291 = shl nsw i64 %5290, 1
  br i1 %cmpBr_47a2d0, label %block_.L_47a2ed, label %block_47a2d6

block_47a2d6:                                     ; preds = %routine_idivl__edi.exit1026
  %5292 = add nsw i64 %5291, 4952672
  %5293 = add i64 %5284, 12
  store i64 %5293, i64* %3, align 8
  %5294 = inttoptr i64 %5292 to i16*
  %5295 = load i16, i16* %5294, align 2
  %5296 = sext i16 %5295 to i64
  %5297 = and i64 %5296, 4294967295
  store i64 %5297, i64* %RCX.i1406, align 8
  %5298 = add i64 %5285, -208
  %5299 = sext i16 %5295 to i32
  %5300 = add i64 %5284, 18
  store i64 %5300, i64* %3, align 8
  %5301 = inttoptr i64 %5298 to i32*
  store i32 %5299, i32* %5301, align 4
  %5302 = load i64, i64* %3, align 8
  %5303 = add i64 %5302, 23
  store i64 %5303, i64* %3, align 8
  br label %block_.L_47a2ff

block_.L_47a2ed:                                  ; preds = %routine_idivl__edi.exit1026
  %5304 = add nsw i64 %5291, 7151616
  %5305 = add i64 %5284, 12
  store i64 %5305, i64* %3, align 8
  %5306 = inttoptr i64 %5304 to i16*
  %5307 = load i16, i16* %5306, align 2
  %5308 = sext i16 %5307 to i64
  %5309 = and i64 %5308, 4294967295
  store i64 %5309, i64* %RCX.i1406, align 8
  %5310 = add i64 %5285, -208
  %5311 = sext i16 %5307 to i32
  %5312 = add i64 %5284, 18
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5310 to i32*
  store i32 %5311, i32* %5313, align 4
  %.pre223 = load i64, i64* %3, align 8
  br label %block_.L_47a2ff

block_.L_47a2ff:                                  ; preds = %block_.L_47a2ed, %block_47a2d6
  %5314 = phi i64 [ %.pre223, %block_.L_47a2ed ], [ %5303, %block_47a2d6 ]
  %5315 = load i64, i64* %RBP.i, align 8
  %5316 = add i64 %5315, -208
  %5317 = add i64 %5314, 6
  store i64 %5317, i64* %3, align 8
  %5318 = inttoptr i64 %5316 to i32*
  %5319 = load i32, i32* %5318, align 4
  %5320 = zext i32 %5319 to i64
  store i64 %5320, i64* %RAX.i2624, align 8
  store i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64* %RCX.i1406, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %445, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  %5321 = add i64 %5315, -204
  %5322 = add i64 %5314, 29
  store i64 %5322, i64* %3, align 8
  %5323 = inttoptr i64 %5321 to i32*
  %5324 = load i32, i32* %5323, align 4
  %5325 = sext i32 %5324 to i64
  %5326 = sext i32 %5319 to i64
  %5327 = mul nsw i64 %5326, %5325
  %5328 = trunc i64 %5327 to i32
  %5329 = and i64 %5327, 4294967295
  store i64 %5329, i64* %435, align 8
  %5330 = shl i64 %5327, 32
  %5331 = ashr exact i64 %5330, 32
  %5332 = icmp ne i64 %5331, %5327
  %5333 = zext i1 %5332 to i8
  store i8 %5333, i8* %39, align 1
  %5334 = and i32 %5328, 255
  %5335 = tail call i32 @llvm.ctpop.i32(i32 %5334)
  %5336 = trunc i32 %5335 to i8
  %5337 = and i8 %5336, 1
  %5338 = xor i8 %5337, 1
  store i8 %5338, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %5339 = lshr i32 %5328, 31
  %5340 = trunc i32 %5339 to i8
  store i8 %5340, i8* %57, align 1
  store i8 %5333, i8* %63, align 1
  %5341 = add i64 %5315, -52
  %5342 = add i64 %5314, 36
  store i64 %5342, i64* %3, align 8
  %5343 = inttoptr i64 %5341 to i32*
  %5344 = load i32, i32* %5343, align 4
  %5345 = sext i32 %5344 to i64
  %5346 = shl nsw i64 %5345, 6
  store i64 %5346, i64* %RSI.i1382, align 8
  %5347 = add i64 %5346, add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384)
  store i64 %5347, i64* %RCX.i1406, align 8
  %5348 = icmp ult i64 %5347, add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384)
  %5349 = icmp ult i64 %5347, %5346
  %5350 = or i1 %5348, %5349
  %5351 = zext i1 %5350 to i8
  store i8 %5351, i8* %39, align 1
  %5352 = trunc i64 %5347 to i32
  %5353 = and i32 %5352, 248
  %5354 = tail call i32 @llvm.ctpop.i32(i32 %5353)
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  store i8 %5357, i8* %46, align 1
  %5358 = xor i64 %5347, add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384)
  %5359 = lshr i64 %5358, 4
  %5360 = trunc i64 %5359 to i8
  %5361 = and i8 %5360, 1
  store i8 %5361, i8* %51, align 1
  %5362 = icmp eq i64 %5347, 0
  %5363 = zext i1 %5362 to i8
  store i8 %5363, i8* %54, align 1
  %5364 = lshr i64 %5347, 63
  %5365 = trunc i64 %5364 to i8
  store i8 %5365, i8* %57, align 1
  %5366 = lshr i64 %5345, 57
  %5367 = and i64 %5366, 1
  %5368 = xor i64 %5364, lshr (i64 add (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 384), i64 63)
  %5369 = xor i64 %5364, %5367
  %5370 = add nuw nsw i64 %5368, %5369
  %5371 = icmp eq i64 %5370, 2
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %63, align 1
  %5373 = load i64, i64* %RBP.i, align 8
  %5374 = add i64 %5373, -48
  %5375 = add i64 %5314, 47
  store i64 %5375, i64* %3, align 8
  %5376 = inttoptr i64 %5374 to i32*
  %5377 = load i32, i32* %5376, align 4
  %5378 = sext i32 %5377 to i64
  %5379 = shl nsw i64 %5378, 4
  store i64 %5379, i64* %RSI.i1382, align 8
  %5380 = add i64 %5379, %5347
  store i64 %5380, i64* %RCX.i1406, align 8
  %5381 = icmp ult i64 %5380, %5347
  %5382 = icmp ult i64 %5380, %5379
  %5383 = or i1 %5381, %5382
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %39, align 1
  %5385 = trunc i64 %5380 to i32
  %5386 = and i32 %5385, 255
  %5387 = tail call i32 @llvm.ctpop.i32(i32 %5386)
  %5388 = trunc i32 %5387 to i8
  %5389 = and i8 %5388, 1
  %5390 = xor i8 %5389, 1
  store i8 %5390, i8* %46, align 1
  %5391 = xor i64 %5379, %5347
  %5392 = xor i64 %5391, %5380
  %5393 = lshr i64 %5392, 4
  %5394 = trunc i64 %5393 to i8
  %5395 = and i8 %5394, 1
  store i8 %5395, i8* %51, align 1
  %5396 = icmp eq i64 %5380, 0
  %5397 = zext i1 %5396 to i8
  store i8 %5397, i8* %54, align 1
  %5398 = lshr i64 %5380, 63
  %5399 = trunc i64 %5398 to i8
  store i8 %5399, i8* %57, align 1
  %5400 = lshr i64 %5378, 59
  %5401 = and i64 %5400, 1
  %5402 = xor i64 %5398, %5364
  %5403 = xor i64 %5398, %5401
  %5404 = add nuw nsw i64 %5402, %5403
  %5405 = icmp eq i64 %5404, 2
  %5406 = zext i1 %5405 to i8
  store i8 %5406, i8* %63, align 1
  %5407 = add i64 %5373, -44
  %5408 = add i64 %5314, 58
  store i64 %5408, i64* %3, align 8
  %5409 = inttoptr i64 %5407 to i32*
  %5410 = load i32, i32* %5409, align 4
  %5411 = sext i32 %5410 to i64
  store i64 %5411, i64* %RSI.i1382, align 8
  %5412 = shl nsw i64 %5411, 2
  %5413 = add i64 %5412, %5380
  %5414 = load i32, i32* %434, align 4
  %5415 = add i64 %5314, 61
  store i64 %5415, i64* %3, align 8
  %5416 = inttoptr i64 %5413 to i32*
  store i32 %5414, i32* %5416, align 4
  %.pre224 = load i64, i64* %3, align 8
  br label %block_.L_47a33c

block_.L_47a33c:                                  ; preds = %block_.L_47a2ff, %block_47a12c
  %5417 = phi i64 [ %.pre224, %block_.L_47a2ff ], [ %4912, %block_47a12c ]
  %MEMORY.21 = phi %struct.Memory* [ %5090, %block_.L_47a2ff ], [ %MEMORY.18, %block_47a12c ]
  %5418 = load i64, i64* %RBP.i, align 8
  %5419 = add i64 %5418, -68
  %5420 = add i64 %5417, 4
  store i64 %5420, i64* %3, align 8
  %5421 = inttoptr i64 %5419 to i32*
  %5422 = load i32, i32* %5421, align 4
  store i8 0, i8* %39, align 1
  %5423 = and i32 %5422, 255
  %5424 = tail call i32 @llvm.ctpop.i32(i32 %5423)
  %5425 = trunc i32 %5424 to i8
  %5426 = and i8 %5425, 1
  %5427 = xor i8 %5426, 1
  store i8 %5427, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5428 = icmp eq i32 %5422, 0
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %54, align 1
  %5430 = lshr i32 %5422, 31
  %5431 = trunc i32 %5430 to i8
  store i8 %5431, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v252 = select i1 %5428, i64 27, i64 10
  %5432 = add i64 %5417, %.v252
  store i64 %5432, i64* %3, align 8
  br i1 %5428, label %block_.L_47a357, label %block_47a346

block_47a346:                                     ; preds = %block_.L_47a33c
  %5433 = load i16, i16* bitcast (%G_0x6d4526_type* @G_0x6d4526 to i16*), align 8
  %5434 = sext i16 %5433 to i64
  %5435 = and i64 %5434, 4294967295
  store i64 %5435, i64* %RAX.i2624, align 8
  %5436 = sext i16 %5433 to i32
  store i8 0, i8* %39, align 1
  %5437 = and i32 %5436, 255
  %5438 = tail call i32 @llvm.ctpop.i32(i32 %5437)
  %5439 = trunc i32 %5438 to i8
  %5440 = and i8 %5439, 1
  %5441 = xor i8 %5440, 1
  store i8 %5441, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5442 = icmp eq i16 %5433, 0
  %5443 = zext i1 %5442 to i8
  store i8 %5443, i8* %54, align 1
  %5444 = lshr i32 %5436, 31
  %5445 = trunc i32 %5444 to i8
  store i8 %5445, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v253 = select i1 %5442, i64 248, i64 17
  %5446 = add i64 %5432, %.v253
  store i64 %5446, i64* %3, align 8
  br i1 %5442, label %block_.L_47a43e, label %block_.L_47a357

block_.L_47a357:                                  ; preds = %block_47a346, %block_.L_47a33c
  %5447 = phi i64 [ %5446, %block_47a346 ], [ %5432, %block_.L_47a33c ]
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RDX.i1786, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RSI.i1784, align 8
  %5448 = add i64 %5418, -52
  %5449 = add i64 %5447, 44
  store i64 %5449, i64* %3, align 8
  %5450 = inttoptr i64 %5448 to i32*
  %5451 = load i32, i32* %5450, align 4
  %5452 = sext i32 %5451 to i64
  %5453 = shl nsw i64 %5452, 6
  store i64 %5453, i64* %RDI.i1781, align 8
  %5454 = add i64 %5453, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %5454, i64* %RSI.i1784, align 8
  %5455 = icmp ult i64 %5454, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %5456 = icmp ult i64 %5454, %5453
  %5457 = or i1 %5455, %5456
  %5458 = zext i1 %5457 to i8
  store i8 %5458, i8* %39, align 1
  %5459 = trunc i64 %5454 to i32
  %5460 = and i32 %5459, 248
  %5461 = tail call i32 @llvm.ctpop.i32(i32 %5460)
  %5462 = trunc i32 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = xor i8 %5463, 1
  store i8 %5464, i8* %46, align 1
  %5465 = xor i64 %5454, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %5466 = lshr i64 %5465, 4
  %5467 = trunc i64 %5466 to i8
  %5468 = and i8 %5467, 1
  store i8 %5468, i8* %51, align 1
  %5469 = icmp eq i64 %5454, 0
  %5470 = zext i1 %5469 to i8
  store i8 %5470, i8* %54, align 1
  %5471 = lshr i64 %5454, 63
  %5472 = trunc i64 %5471 to i8
  store i8 %5472, i8* %57, align 1
  %5473 = lshr i64 %5452, 57
  %5474 = and i64 %5473, 1
  %5475 = xor i64 %5471, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %5476 = xor i64 %5471, %5474
  %5477 = add nuw nsw i64 %5475, %5476
  %5478 = icmp eq i64 %5477, 2
  %5479 = zext i1 %5478 to i8
  store i8 %5479, i8* %63, align 1
  %5480 = add i64 %5418, -48
  %5481 = add i64 %5447, 55
  store i64 %5481, i64* %3, align 8
  %5482 = inttoptr i64 %5480 to i32*
  %5483 = load i32, i32* %5482, align 4
  %5484 = sext i32 %5483 to i64
  %5485 = shl nsw i64 %5484, 4
  store i64 %5485, i64* %RDI.i1781, align 8
  %5486 = add i64 %5485, %5454
  store i64 %5486, i64* %RSI.i1784, align 8
  %5487 = icmp ult i64 %5486, %5454
  %5488 = icmp ult i64 %5486, %5485
  %5489 = or i1 %5487, %5488
  %5490 = zext i1 %5489 to i8
  store i8 %5490, i8* %39, align 1
  %5491 = trunc i64 %5486 to i32
  %5492 = and i32 %5491, 248
  %5493 = tail call i32 @llvm.ctpop.i32(i32 %5492)
  %5494 = trunc i32 %5493 to i8
  %5495 = and i8 %5494, 1
  %5496 = xor i8 %5495, 1
  store i8 %5496, i8* %46, align 1
  %5497 = xor i64 %5485, %5454
  %5498 = xor i64 %5497, %5486
  %5499 = lshr i64 %5498, 4
  %5500 = trunc i64 %5499 to i8
  %5501 = and i8 %5500, 1
  store i8 %5501, i8* %51, align 1
  %5502 = icmp eq i64 %5486, 0
  %5503 = zext i1 %5502 to i8
  store i8 %5503, i8* %54, align 1
  %5504 = lshr i64 %5486, 63
  %5505 = trunc i64 %5504 to i8
  store i8 %5505, i8* %57, align 1
  %5506 = lshr i64 %5484, 59
  %5507 = and i64 %5506, 1
  %5508 = xor i64 %5504, %5471
  %5509 = xor i64 %5504, %5507
  %5510 = add nuw nsw i64 %5508, %5509
  %5511 = icmp eq i64 %5510, 2
  %5512 = zext i1 %5511 to i8
  store i8 %5512, i8* %63, align 1
  %5513 = load i64, i64* %RBP.i, align 8
  %5514 = add i64 %5513, -44
  %5515 = add i64 %5447, 66
  store i64 %5515, i64* %3, align 8
  %5516 = inttoptr i64 %5514 to i32*
  %5517 = load i32, i32* %5516, align 4
  %5518 = sext i32 %5517 to i64
  store i64 %5518, i64* %RDI.i1781, align 8
  %5519 = shl nsw i64 %5518, 2
  %5520 = add i64 %5519, %5486
  %5521 = add i64 %5447, 70
  store i64 %5521, i64* %3, align 8
  %5522 = inttoptr i64 %5520 to i32*
  %5523 = load i32, i32* %5522, align 4
  %5524 = shl i32 %5523, 4
  %5525 = zext i32 %5524 to i64
  store i64 %5525, i64* %430, align 8
  %5526 = lshr i32 %5523, 28
  %5527 = trunc i32 %5526 to i8
  %5528 = and i8 %5527, 1
  store i8 %5528, i8* %39, align 1
  %5529 = and i32 %5524, 240
  %5530 = tail call i32 @llvm.ctpop.i32(i32 %5529)
  %5531 = trunc i32 %5530 to i8
  %5532 = and i8 %5531, 1
  %5533 = xor i8 %5532, 1
  store i8 %5533, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5534 = icmp eq i32 %5524, 0
  %5535 = zext i1 %5534 to i8
  store i8 %5535, i8* %54, align 1
  %5536 = lshr i32 %5523, 27
  %5537 = trunc i32 %5536 to i8
  %5538 = and i8 %5537, 1
  store i8 %5538, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5539 = add i64 %5513, -56
  %5540 = add i64 %5447, 78
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5539 to i32*
  %5542 = load i32, i32* %5541, align 4
  %5543 = sext i32 %5542 to i64
  store i64 %5543, i64* %RSI.i1784, align 8
  %5544 = shl nsw i64 %5543, 1
  %5545 = add nsw i64 %5544, 4952640
  %5546 = add i64 %5447, 87
  store i64 %5546, i64* %3, align 8
  %5547 = inttoptr i64 %5545 to i16*
  %5548 = load i16, i16* %5547, align 2
  %5549 = sext i16 %5548 to i64
  %5550 = and i64 %5549, 4294967295
  store i64 %5550, i64* %432, align 8
  %5551 = add i64 %5513, -216
  %5552 = load i64, i64* %RAX.i2624, align 8
  %5553 = add i64 %5447, 94
  store i64 %5553, i64* %3, align 8
  %5554 = inttoptr i64 %5551 to i64*
  store i64 %5552, i64* %5554, align 8
  %5555 = load i32, i32* %R8D.i1761, align 4
  %5556 = zext i32 %5555 to i64
  %5557 = load i64, i64* %3, align 8
  store i64 %5556, i64* %RAX.i2624, align 8
  %5558 = load i64, i64* %RBP.i, align 8
  %5559 = add i64 %5558, -224
  %5560 = load i64, i64* %RDX.i1786, align 8
  %5561 = add i64 %5557, 10
  store i64 %5561, i64* %3, align 8
  %5562 = inttoptr i64 %5559 to i64*
  store i64 %5560, i64* %5562, align 8
  %5563 = load i64, i64* %3, align 8
  %5564 = load i32, i32* %EAX.i1800, align 8
  %5565 = sext i32 %5564 to i64
  %5566 = lshr i64 %5565, 32
  store i64 %5566, i64* %RDX.i1786, align 8
  %5567 = load i32, i32* %R9D.i1753, align 4
  %5568 = add i64 %5563, 4
  store i64 %5568, i64* %3, align 8
  %5569 = zext i32 %5564 to i64
  %5570 = sext i32 %5567 to i64
  %5571 = shl nuw i64 %5566, 32
  %5572 = or i64 %5571, %5569
  %5573 = sdiv i64 %5572, %5570
  %5574 = shl i64 %5573, 32
  %5575 = ashr exact i64 %5574, 32
  %5576 = icmp eq i64 %5573, %5575
  br i1 %5576, label %5579, label %5577

; <label>:5577:                                   ; preds = %block_.L_47a357
  %5578 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5568, %struct.Memory* %MEMORY.21)
  %.pre226 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit852

; <label>:5579:                                   ; preds = %block_.L_47a357
  %5580 = srem i64 %5572, %5570
  %5581 = and i64 %5573, 4294967295
  store i64 %5581, i64* %RAX.i2624, align 8
  %5582 = and i64 %5580, 4294967295
  store i64 %5582, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__r9d.exit852

routine_idivl__r9d.exit852:                       ; preds = %5579, %5577
  %5583 = phi i64 [ %.pre226, %5577 ], [ %5568, %5579 ]
  %5584 = phi %struct.Memory* [ %5578, %5577 ], [ %MEMORY.21, %5579 ]
  %5585 = load i64, i64* %RBP.i, align 8
  %5586 = add i64 %5585, -52
  %5587 = add i64 %5583, 4
  store i64 %5587, i64* %3, align 8
  %5588 = inttoptr i64 %5586 to i32*
  %5589 = load i32, i32* %5588, align 4
  %5590 = sext i32 %5589 to i64
  %5591 = shl nsw i64 %5590, 6
  store i64 %5591, i64* %RSI.i1784, align 8
  %.lobit114 = lshr i32 %5589, 31
  %5592 = trunc i32 %.lobit114 to i8
  store i8 %5592, i8* %39, align 1
  %5593 = trunc i64 %5591 to i32
  %5594 = and i32 %5593, 192
  %5595 = tail call i32 @llvm.ctpop.i32(i32 %5594)
  %5596 = trunc i32 %5595 to i8
  %5597 = and i8 %5596, 1
  %5598 = xor i8 %5597, 1
  store i8 %5598, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5599 = icmp eq i32 %5589, 0
  %5600 = zext i1 %5599 to i8
  store i8 %5600, i8* %54, align 1
  %5601 = lshr i64 %5590, 57
  %5602 = trunc i64 %5601 to i8
  %5603 = and i8 %5602, 1
  store i8 %5603, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5604 = add i64 %5585, -224
  %5605 = add i64 %5583, 15
  store i64 %5605, i64* %3, align 8
  %5606 = inttoptr i64 %5604 to i64*
  %5607 = load i64, i64* %5606, align 8
  %5608 = add i64 %5591, %5607
  store i64 %5608, i64* %RDI.i1781, align 8
  %5609 = icmp ult i64 %5608, %5607
  %5610 = icmp ult i64 %5608, %5591
  %5611 = or i1 %5609, %5610
  %5612 = zext i1 %5611 to i8
  store i8 %5612, i8* %39, align 1
  %5613 = trunc i64 %5608 to i32
  %5614 = and i32 %5613, 255
  %5615 = tail call i32 @llvm.ctpop.i32(i32 %5614)
  %5616 = trunc i32 %5615 to i8
  %5617 = and i8 %5616, 1
  %5618 = xor i8 %5617, 1
  store i8 %5618, i8* %46, align 1
  %5619 = xor i64 %5607, %5608
  %5620 = lshr i64 %5619, 4
  %5621 = trunc i64 %5620 to i8
  %5622 = and i8 %5621, 1
  store i8 %5622, i8* %51, align 1
  %5623 = icmp eq i64 %5608, 0
  %5624 = zext i1 %5623 to i8
  store i8 %5624, i8* %54, align 1
  %5625 = lshr i64 %5608, 63
  %5626 = trunc i64 %5625 to i8
  store i8 %5626, i8* %57, align 1
  %5627 = lshr i64 %5607, 63
  %5628 = lshr i64 %5590, 57
  %5629 = and i64 %5628, 1
  %5630 = xor i64 %5625, %5627
  %5631 = xor i64 %5625, %5629
  %5632 = add nuw nsw i64 %5630, %5631
  %5633 = icmp eq i64 %5632, 2
  %5634 = zext i1 %5633 to i8
  store i8 %5634, i8* %63, align 1
  %5635 = add i64 %5585, -48
  %5636 = add i64 %5583, 22
  store i64 %5636, i64* %3, align 8
  %5637 = inttoptr i64 %5635 to i32*
  %5638 = load i32, i32* %5637, align 4
  %5639 = sext i32 %5638 to i64
  %5640 = shl nsw i64 %5639, 4
  store i64 %5640, i64* %RSI.i1784, align 8
  %5641 = add i64 %5640, %5608
  store i64 %5641, i64* %RDI.i1781, align 8
  %5642 = icmp ult i64 %5641, %5608
  %5643 = icmp ult i64 %5641, %5640
  %5644 = or i1 %5642, %5643
  %5645 = zext i1 %5644 to i8
  store i8 %5645, i8* %39, align 1
  %5646 = trunc i64 %5641 to i32
  %5647 = and i32 %5646, 255
  %5648 = tail call i32 @llvm.ctpop.i32(i32 %5647)
  %5649 = trunc i32 %5648 to i8
  %5650 = and i8 %5649, 1
  %5651 = xor i8 %5650, 1
  store i8 %5651, i8* %46, align 1
  %5652 = xor i64 %5640, %5608
  %5653 = xor i64 %5652, %5641
  %5654 = lshr i64 %5653, 4
  %5655 = trunc i64 %5654 to i8
  %5656 = and i8 %5655, 1
  store i8 %5656, i8* %51, align 1
  %5657 = icmp eq i64 %5641, 0
  %5658 = zext i1 %5657 to i8
  store i8 %5658, i8* %54, align 1
  %5659 = lshr i64 %5641, 63
  %5660 = trunc i64 %5659 to i8
  store i8 %5660, i8* %57, align 1
  %5661 = lshr i64 %5639, 59
  %5662 = and i64 %5661, 1
  %5663 = xor i64 %5659, %5625
  %5664 = xor i64 %5659, %5662
  %5665 = add nuw nsw i64 %5663, %5664
  %5666 = icmp eq i64 %5665, 2
  %5667 = zext i1 %5666 to i8
  store i8 %5667, i8* %63, align 1
  %5668 = load i64, i64* %RBP.i, align 8
  %5669 = add i64 %5668, -44
  %5670 = add i64 %5583, 33
  store i64 %5670, i64* %3, align 8
  %5671 = inttoptr i64 %5669 to i32*
  %5672 = load i32, i32* %5671, align 4
  %5673 = sext i32 %5672 to i64
  store i64 %5673, i64* %RSI.i1784, align 8
  %5674 = shl nsw i64 %5673, 2
  %5675 = add i64 %5674, %5641
  %5676 = load i32, i32* %EAX.i1800, align 4
  %5677 = add i64 %5583, 36
  store i64 %5677, i64* %3, align 8
  %5678 = inttoptr i64 %5675 to i32*
  store i32 %5676, i32* %5678, align 4
  %5679 = load i64, i64* %RBP.i, align 8
  %5680 = add i64 %5679, -52
  %5681 = load i64, i64* %3, align 8
  %5682 = add i64 %5681, 4
  store i64 %5682, i64* %3, align 8
  %5683 = inttoptr i64 %5680 to i32*
  %5684 = load i32, i32* %5683, align 4
  %5685 = sext i32 %5684 to i64
  %5686 = shl nsw i64 %5685, 6
  store i64 %5686, i64* %RSI.i1784, align 8
  %5687 = load i64, i64* %RCX.i1788, align 8
  %5688 = add i64 %5686, %5687
  store i64 %5688, i64* %RCX.i1788, align 8
  %5689 = icmp ult i64 %5688, %5687
  %5690 = icmp ult i64 %5688, %5686
  %5691 = or i1 %5689, %5690
  %5692 = zext i1 %5691 to i8
  store i8 %5692, i8* %39, align 1
  %5693 = trunc i64 %5688 to i32
  %5694 = and i32 %5693, 255
  %5695 = tail call i32 @llvm.ctpop.i32(i32 %5694)
  %5696 = trunc i32 %5695 to i8
  %5697 = and i8 %5696, 1
  %5698 = xor i8 %5697, 1
  store i8 %5698, i8* %46, align 1
  %5699 = xor i64 %5687, %5688
  %5700 = lshr i64 %5699, 4
  %5701 = trunc i64 %5700 to i8
  %5702 = and i8 %5701, 1
  store i8 %5702, i8* %51, align 1
  %5703 = icmp eq i64 %5688, 0
  %5704 = zext i1 %5703 to i8
  store i8 %5704, i8* %54, align 1
  %5705 = lshr i64 %5688, 63
  %5706 = trunc i64 %5705 to i8
  store i8 %5706, i8* %57, align 1
  %5707 = lshr i64 %5687, 63
  %5708 = lshr i64 %5685, 57
  %5709 = and i64 %5708, 1
  %5710 = xor i64 %5705, %5707
  %5711 = xor i64 %5705, %5709
  %5712 = add nuw nsw i64 %5710, %5711
  %5713 = icmp eq i64 %5712, 2
  %5714 = zext i1 %5713 to i8
  store i8 %5714, i8* %63, align 1
  %5715 = add i64 %5679, -48
  %5716 = add i64 %5681, 15
  store i64 %5716, i64* %3, align 8
  %5717 = inttoptr i64 %5715 to i32*
  %5718 = load i32, i32* %5717, align 4
  %5719 = sext i32 %5718 to i64
  %5720 = shl nsw i64 %5719, 4
  store i64 %5720, i64* %RSI.i1784, align 8
  %5721 = add i64 %5720, %5688
  store i64 %5721, i64* %RCX.i1788, align 8
  %5722 = icmp ult i64 %5721, %5688
  %5723 = icmp ult i64 %5721, %5720
  %5724 = or i1 %5722, %5723
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %39, align 1
  %5726 = trunc i64 %5721 to i32
  %5727 = and i32 %5726, 255
  %5728 = tail call i32 @llvm.ctpop.i32(i32 %5727)
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  %5731 = xor i8 %5730, 1
  store i8 %5731, i8* %46, align 1
  %5732 = xor i64 %5720, %5688
  %5733 = xor i64 %5732, %5721
  %5734 = lshr i64 %5733, 4
  %5735 = trunc i64 %5734 to i8
  %5736 = and i8 %5735, 1
  store i8 %5736, i8* %51, align 1
  %5737 = icmp eq i64 %5721, 0
  %5738 = zext i1 %5737 to i8
  store i8 %5738, i8* %54, align 1
  %5739 = lshr i64 %5721, 63
  %5740 = trunc i64 %5739 to i8
  store i8 %5740, i8* %57, align 1
  %5741 = lshr i64 %5719, 59
  %5742 = and i64 %5741, 1
  %5743 = xor i64 %5739, %5705
  %5744 = xor i64 %5739, %5742
  %5745 = add nuw nsw i64 %5743, %5744
  %5746 = icmp eq i64 %5745, 2
  %5747 = zext i1 %5746 to i8
  store i8 %5747, i8* %63, align 1
  %5748 = load i64, i64* %RBP.i, align 8
  %5749 = add i64 %5748, -44
  %5750 = add i64 %5681, 26
  store i64 %5750, i64* %3, align 8
  %5751 = inttoptr i64 %5749 to i32*
  %5752 = load i32, i32* %5751, align 4
  %5753 = sext i32 %5752 to i64
  store i64 %5753, i64* %RSI.i1784, align 8
  %5754 = shl nsw i64 %5753, 2
  %5755 = add i64 %5754, %5721
  %5756 = add i64 %5681, 29
  store i64 %5756, i64* %3, align 8
  %5757 = inttoptr i64 %5755 to i32*
  %5758 = load i32, i32* %5757, align 4
  %5759 = zext i32 %5758 to i64
  store i64 %5759, i64* %RAX.i2624, align 8
  %5760 = add i64 %5748, -56
  %5761 = add i64 %5681, 33
  store i64 %5761, i64* %3, align 8
  %5762 = inttoptr i64 %5760 to i32*
  %5763 = load i32, i32* %5762, align 4
  %5764 = sext i32 %5763 to i64
  store i64 %5764, i64* %RCX.i1788, align 8
  %5765 = shl nsw i64 %5764, 1
  %5766 = add nsw i64 %5765, 4952640
  %5767 = add i64 %5681, 42
  store i64 %5767, i64* %3, align 8
  %5768 = inttoptr i64 %5766 to i16*
  %5769 = load i16, i16* %5768, align 2
  %5770 = sext i16 %5769 to i64
  %5771 = and i64 %5770, 4294967295
  store i64 %5771, i64* %430, align 8
  %5772 = sext i32 %5758 to i64
  %5773 = sext i16 %5769 to i64
  %5774 = mul nsw i64 %5773, %5772
  %5775 = trunc i64 %5774 to i32
  %5776 = and i64 %5774, 4294967295
  store i64 %5776, i64* %RAX.i2624, align 8
  %5777 = shl i64 %5774, 32
  %5778 = ashr exact i64 %5777, 32
  %5779 = icmp ne i64 %5778, %5774
  %5780 = zext i1 %5779 to i8
  store i8 %5780, i8* %39, align 1
  %5781 = and i32 %5775, 255
  %5782 = tail call i32 @llvm.ctpop.i32(i32 %5781)
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = xor i8 %5784, 1
  store i8 %5785, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %5786 = lshr i32 %5775, 31
  %5787 = trunc i32 %5786 to i8
  store i8 %5787, i8* %57, align 1
  store i8 %5780, i8* %63, align 1
  %5788 = add i64 %5748, -52
  %5789 = add i64 %5681, 50
  store i64 %5789, i64* %3, align 8
  %5790 = inttoptr i64 %5788 to i32*
  %5791 = load i32, i32* %5790, align 4
  %5792 = sext i32 %5791 to i64
  %5793 = shl nsw i64 %5792, 6
  store i64 %5793, i64* %RCX.i1788, align 8
  %.lobit118 = lshr i32 %5791, 31
  %5794 = trunc i32 %.lobit118 to i8
  store i8 %5794, i8* %39, align 1
  %5795 = trunc i64 %5793 to i32
  %5796 = and i32 %5795, 192
  %5797 = tail call i32 @llvm.ctpop.i32(i32 %5796)
  %5798 = trunc i32 %5797 to i8
  %5799 = and i8 %5798, 1
  %5800 = xor i8 %5799, 1
  store i8 %5800, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5801 = icmp eq i32 %5791, 0
  %5802 = zext i1 %5801 to i8
  store i8 %5802, i8* %54, align 1
  %5803 = lshr i64 %5792, 57
  %5804 = trunc i64 %5803 to i8
  %5805 = and i8 %5804, 1
  store i8 %5805, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5806 = add i64 %5748, -216
  %5807 = add i64 %5681, 61
  store i64 %5807, i64* %3, align 8
  %5808 = inttoptr i64 %5806 to i64*
  %5809 = load i64, i64* %5808, align 8
  %5810 = add i64 %5793, %5809
  store i64 %5810, i64* %RSI.i1784, align 8
  %5811 = icmp ult i64 %5810, %5809
  %5812 = icmp ult i64 %5810, %5793
  %5813 = or i1 %5811, %5812
  %5814 = zext i1 %5813 to i8
  store i8 %5814, i8* %39, align 1
  %5815 = trunc i64 %5810 to i32
  %5816 = and i32 %5815, 255
  %5817 = tail call i32 @llvm.ctpop.i32(i32 %5816)
  %5818 = trunc i32 %5817 to i8
  %5819 = and i8 %5818, 1
  %5820 = xor i8 %5819, 1
  store i8 %5820, i8* %46, align 1
  %5821 = xor i64 %5809, %5810
  %5822 = lshr i64 %5821, 4
  %5823 = trunc i64 %5822 to i8
  %5824 = and i8 %5823, 1
  store i8 %5824, i8* %51, align 1
  %5825 = icmp eq i64 %5810, 0
  %5826 = zext i1 %5825 to i8
  store i8 %5826, i8* %54, align 1
  %5827 = lshr i64 %5810, 63
  %5828 = trunc i64 %5827 to i8
  store i8 %5828, i8* %57, align 1
  %5829 = lshr i64 %5809, 63
  %5830 = lshr i64 %5792, 57
  %5831 = and i64 %5830, 1
  %5832 = xor i64 %5827, %5829
  %5833 = xor i64 %5827, %5831
  %5834 = add nuw nsw i64 %5832, %5833
  %5835 = icmp eq i64 %5834, 2
  %5836 = zext i1 %5835 to i8
  store i8 %5836, i8* %63, align 1
  %5837 = load i64, i64* %RBP.i, align 8
  %5838 = add i64 %5837, -48
  %5839 = add i64 %5681, 68
  store i64 %5839, i64* %3, align 8
  %5840 = inttoptr i64 %5838 to i32*
  %5841 = load i32, i32* %5840, align 4
  %5842 = sext i32 %5841 to i64
  %5843 = shl nsw i64 %5842, 4
  store i64 %5843, i64* %RCX.i1788, align 8
  %5844 = add i64 %5843, %5810
  store i64 %5844, i64* %RSI.i1784, align 8
  %5845 = icmp ult i64 %5844, %5810
  %5846 = icmp ult i64 %5844, %5843
  %5847 = or i1 %5845, %5846
  %5848 = zext i1 %5847 to i8
  store i8 %5848, i8* %39, align 1
  %5849 = trunc i64 %5844 to i32
  %5850 = and i32 %5849, 255
  %5851 = tail call i32 @llvm.ctpop.i32(i32 %5850)
  %5852 = trunc i32 %5851 to i8
  %5853 = and i8 %5852, 1
  %5854 = xor i8 %5853, 1
  store i8 %5854, i8* %46, align 1
  %5855 = xor i64 %5843, %5810
  %5856 = xor i64 %5855, %5844
  %5857 = lshr i64 %5856, 4
  %5858 = trunc i64 %5857 to i8
  %5859 = and i8 %5858, 1
  store i8 %5859, i8* %51, align 1
  %5860 = icmp eq i64 %5844, 0
  %5861 = zext i1 %5860 to i8
  store i8 %5861, i8* %54, align 1
  %5862 = lshr i64 %5844, 63
  %5863 = trunc i64 %5862 to i8
  store i8 %5863, i8* %57, align 1
  %5864 = lshr i64 %5842, 59
  %5865 = and i64 %5864, 1
  %5866 = xor i64 %5862, %5827
  %5867 = xor i64 %5862, %5865
  %5868 = add nuw nsw i64 %5866, %5867
  %5869 = icmp eq i64 %5868, 2
  %5870 = zext i1 %5869 to i8
  store i8 %5870, i8* %63, align 1
  %5871 = add i64 %5837, -44
  %5872 = add i64 %5681, 79
  store i64 %5872, i64* %3, align 8
  %5873 = inttoptr i64 %5871 to i32*
  %5874 = load i32, i32* %5873, align 4
  %5875 = sext i32 %5874 to i64
  store i64 %5875, i64* %RCX.i1788, align 8
  %5876 = shl nsw i64 %5875, 2
  %5877 = add i64 %5876, %5844
  %5878 = load i32, i32* %EAX.i1800, align 4
  %5879 = add i64 %5681, 82
  store i64 %5879, i64* %3, align 8
  %5880 = inttoptr i64 %5877 to i32*
  store i32 %5878, i32* %5880, align 4
  %5881 = load i64, i64* %3, align 8
  %5882 = add i64 %5881, 231
  store i64 %5882, i64* %3, align 8
  br label %block_.L_47a520

block_.L_47a43e:                                  ; preds = %block_47a346
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RDX.i1786, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RSI.i1784, align 8
  %5883 = add i64 %5418, -52
  %5884 = add i64 %5446, 44
  store i64 %5884, i64* %3, align 8
  %5885 = inttoptr i64 %5883 to i32*
  %5886 = load i32, i32* %5885, align 4
  %5887 = sext i32 %5886 to i64
  %5888 = shl nsw i64 %5887, 6
  store i64 %5888, i64* %RDI.i1781, align 8
  %5889 = add i64 %5888, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %5889, i64* %RSI.i1784, align 8
  %5890 = icmp ult i64 %5889, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %5891 = icmp ult i64 %5889, %5888
  %5892 = or i1 %5890, %5891
  %5893 = zext i1 %5892 to i8
  store i8 %5893, i8* %39, align 1
  %5894 = trunc i64 %5889 to i32
  %5895 = and i32 %5894, 248
  %5896 = tail call i32 @llvm.ctpop.i32(i32 %5895)
  %5897 = trunc i32 %5896 to i8
  %5898 = and i8 %5897, 1
  %5899 = xor i8 %5898, 1
  store i8 %5899, i8* %46, align 1
  %5900 = xor i64 %5889, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %5901 = lshr i64 %5900, 4
  %5902 = trunc i64 %5901 to i8
  %5903 = and i8 %5902, 1
  store i8 %5903, i8* %51, align 1
  %5904 = icmp eq i64 %5889, 0
  %5905 = zext i1 %5904 to i8
  store i8 %5905, i8* %54, align 1
  %5906 = lshr i64 %5889, 63
  %5907 = trunc i64 %5906 to i8
  store i8 %5907, i8* %57, align 1
  %5908 = lshr i64 %5887, 57
  %5909 = and i64 %5908, 1
  %5910 = xor i64 %5906, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %5911 = xor i64 %5906, %5909
  %5912 = add nuw nsw i64 %5910, %5911
  %5913 = icmp eq i64 %5912, 2
  %5914 = zext i1 %5913 to i8
  store i8 %5914, i8* %63, align 1
  %5915 = add i64 %5418, -48
  %5916 = add i64 %5446, 55
  store i64 %5916, i64* %3, align 8
  %5917 = inttoptr i64 %5915 to i32*
  %5918 = load i32, i32* %5917, align 4
  %5919 = sext i32 %5918 to i64
  %5920 = shl nsw i64 %5919, 4
  store i64 %5920, i64* %RDI.i1781, align 8
  %5921 = add i64 %5920, %5889
  store i64 %5921, i64* %RSI.i1784, align 8
  %5922 = icmp ult i64 %5921, %5889
  %5923 = icmp ult i64 %5921, %5920
  %5924 = or i1 %5922, %5923
  %5925 = zext i1 %5924 to i8
  store i8 %5925, i8* %39, align 1
  %5926 = trunc i64 %5921 to i32
  %5927 = and i32 %5926, 248
  %5928 = tail call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  store i8 %5931, i8* %46, align 1
  %5932 = xor i64 %5920, %5889
  %5933 = xor i64 %5932, %5921
  %5934 = lshr i64 %5933, 4
  %5935 = trunc i64 %5934 to i8
  %5936 = and i8 %5935, 1
  store i8 %5936, i8* %51, align 1
  %5937 = icmp eq i64 %5921, 0
  %5938 = zext i1 %5937 to i8
  store i8 %5938, i8* %54, align 1
  %5939 = lshr i64 %5921, 63
  %5940 = trunc i64 %5939 to i8
  store i8 %5940, i8* %57, align 1
  %5941 = lshr i64 %5919, 59
  %5942 = and i64 %5941, 1
  %5943 = xor i64 %5939, %5906
  %5944 = xor i64 %5939, %5942
  %5945 = add nuw nsw i64 %5943, %5944
  %5946 = icmp eq i64 %5945, 2
  %5947 = zext i1 %5946 to i8
  store i8 %5947, i8* %63, align 1
  %5948 = load i64, i64* %RBP.i, align 8
  %5949 = add i64 %5948, -44
  %5950 = add i64 %5446, 66
  store i64 %5950, i64* %3, align 8
  %5951 = inttoptr i64 %5949 to i32*
  %5952 = load i32, i32* %5951, align 4
  %5953 = sext i32 %5952 to i64
  store i64 %5953, i64* %RDI.i1781, align 8
  %5954 = shl nsw i64 %5953, 2
  %5955 = add i64 %5954, %5921
  %5956 = add i64 %5446, 70
  store i64 %5956, i64* %3, align 8
  %5957 = inttoptr i64 %5955 to i32*
  %5958 = load i32, i32* %5957, align 4
  %5959 = shl i32 %5958, 4
  %5960 = zext i32 %5959 to i64
  store i64 %5960, i64* %430, align 8
  %5961 = lshr i32 %5958, 28
  %5962 = trunc i32 %5961 to i8
  %5963 = and i8 %5962, 1
  store i8 %5963, i8* %39, align 1
  %5964 = and i32 %5959, 240
  %5965 = tail call i32 @llvm.ctpop.i32(i32 %5964)
  %5966 = trunc i32 %5965 to i8
  %5967 = and i8 %5966, 1
  %5968 = xor i8 %5967, 1
  store i8 %5968, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %5969 = icmp eq i32 %5959, 0
  %5970 = zext i1 %5969 to i8
  store i8 %5970, i8* %54, align 1
  %5971 = lshr i32 %5958, 27
  %5972 = trunc i32 %5971 to i8
  %5973 = and i8 %5972, 1
  store i8 %5973, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %5974 = add i64 %5948, -56
  %5975 = add i64 %5446, 78
  store i64 %5975, i64* %3, align 8
  %5976 = inttoptr i64 %5974 to i32*
  %5977 = load i32, i32* %5976, align 4
  %5978 = sext i32 %5977 to i64
  store i64 %5978, i64* %RSI.i1784, align 8
  %5979 = shl nsw i64 %5978, 1
  %5980 = add nsw i64 %5979, 7151648
  %5981 = add i64 %5446, 87
  store i64 %5981, i64* %3, align 8
  %5982 = inttoptr i64 %5980 to i16*
  %5983 = load i16, i16* %5982, align 2
  %5984 = sext i16 %5983 to i64
  %5985 = and i64 %5984, 4294967295
  store i64 %5985, i64* %432, align 8
  %5986 = add i64 %5948, -232
  %5987 = load i64, i64* %RAX.i2624, align 8
  %5988 = add i64 %5446, 94
  store i64 %5988, i64* %3, align 8
  %5989 = inttoptr i64 %5986 to i64*
  store i64 %5987, i64* %5989, align 8
  %5990 = load i32, i32* %R8D.i1761, align 4
  %5991 = zext i32 %5990 to i64
  %5992 = load i64, i64* %3, align 8
  store i64 %5991, i64* %RAX.i2624, align 8
  %5993 = load i64, i64* %RBP.i, align 8
  %5994 = add i64 %5993, -240
  %5995 = load i64, i64* %RDX.i1786, align 8
  %5996 = add i64 %5992, 10
  store i64 %5996, i64* %3, align 8
  %5997 = inttoptr i64 %5994 to i64*
  store i64 %5995, i64* %5997, align 8
  %5998 = load i64, i64* %3, align 8
  %5999 = load i32, i32* %EAX.i1800, align 8
  %6000 = sext i32 %5999 to i64
  %6001 = lshr i64 %6000, 32
  store i64 %6001, i64* %RDX.i1786, align 8
  %6002 = load i32, i32* %R9D.i1753, align 4
  %6003 = add i64 %5998, 4
  store i64 %6003, i64* %3, align 8
  %6004 = zext i32 %5999 to i64
  %6005 = sext i32 %6002 to i64
  %6006 = shl nuw i64 %6001, 32
  %6007 = or i64 %6006, %6004
  %6008 = sdiv i64 %6007, %6005
  %6009 = shl i64 %6008, 32
  %6010 = ashr exact i64 %6009, 32
  %6011 = icmp eq i64 %6008, %6010
  br i1 %6011, label %6014, label %6012

; <label>:6012:                                   ; preds = %block_.L_47a43e
  %6013 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6003, %struct.Memory* %MEMORY.21)
  %.pre225 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit

; <label>:6014:                                   ; preds = %block_.L_47a43e
  %6015 = srem i64 %6007, %6005
  %6016 = and i64 %6008, 4294967295
  store i64 %6016, i64* %RAX.i2624, align 8
  %6017 = and i64 %6015, 4294967295
  store i64 %6017, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %6014, %6012
  %6018 = phi i64 [ %.pre225, %6012 ], [ %6003, %6014 ]
  %6019 = phi %struct.Memory* [ %6013, %6012 ], [ %MEMORY.21, %6014 ]
  %6020 = load i64, i64* %RBP.i, align 8
  %6021 = add i64 %6020, -52
  %6022 = add i64 %6018, 4
  store i64 %6022, i64* %3, align 8
  %6023 = inttoptr i64 %6021 to i32*
  %6024 = load i32, i32* %6023, align 4
  %6025 = sext i32 %6024 to i64
  %6026 = shl nsw i64 %6025, 6
  store i64 %6026, i64* %RSI.i1784, align 8
  %.lobit157 = lshr i32 %6024, 31
  %6027 = trunc i32 %.lobit157 to i8
  store i8 %6027, i8* %39, align 1
  %6028 = trunc i64 %6026 to i32
  %6029 = and i32 %6028, 192
  %6030 = tail call i32 @llvm.ctpop.i32(i32 %6029)
  %6031 = trunc i32 %6030 to i8
  %6032 = and i8 %6031, 1
  %6033 = xor i8 %6032, 1
  store i8 %6033, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %6034 = icmp eq i32 %6024, 0
  %6035 = zext i1 %6034 to i8
  store i8 %6035, i8* %54, align 1
  %6036 = lshr i64 %6025, 57
  %6037 = trunc i64 %6036 to i8
  %6038 = and i8 %6037, 1
  store i8 %6038, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %6039 = add i64 %6020, -240
  %6040 = add i64 %6018, 15
  store i64 %6040, i64* %3, align 8
  %6041 = inttoptr i64 %6039 to i64*
  %6042 = load i64, i64* %6041, align 8
  %6043 = add i64 %6026, %6042
  store i64 %6043, i64* %RDI.i1781, align 8
  %6044 = icmp ult i64 %6043, %6042
  %6045 = icmp ult i64 %6043, %6026
  %6046 = or i1 %6044, %6045
  %6047 = zext i1 %6046 to i8
  store i8 %6047, i8* %39, align 1
  %6048 = trunc i64 %6043 to i32
  %6049 = and i32 %6048, 255
  %6050 = tail call i32 @llvm.ctpop.i32(i32 %6049)
  %6051 = trunc i32 %6050 to i8
  %6052 = and i8 %6051, 1
  %6053 = xor i8 %6052, 1
  store i8 %6053, i8* %46, align 1
  %6054 = xor i64 %6042, %6043
  %6055 = lshr i64 %6054, 4
  %6056 = trunc i64 %6055 to i8
  %6057 = and i8 %6056, 1
  store i8 %6057, i8* %51, align 1
  %6058 = icmp eq i64 %6043, 0
  %6059 = zext i1 %6058 to i8
  store i8 %6059, i8* %54, align 1
  %6060 = lshr i64 %6043, 63
  %6061 = trunc i64 %6060 to i8
  store i8 %6061, i8* %57, align 1
  %6062 = lshr i64 %6042, 63
  %6063 = lshr i64 %6025, 57
  %6064 = and i64 %6063, 1
  %6065 = xor i64 %6060, %6062
  %6066 = xor i64 %6060, %6064
  %6067 = add nuw nsw i64 %6065, %6066
  %6068 = icmp eq i64 %6067, 2
  %6069 = zext i1 %6068 to i8
  store i8 %6069, i8* %63, align 1
  %6070 = add i64 %6020, -48
  %6071 = add i64 %6018, 22
  store i64 %6071, i64* %3, align 8
  %6072 = inttoptr i64 %6070 to i32*
  %6073 = load i32, i32* %6072, align 4
  %6074 = sext i32 %6073 to i64
  %6075 = shl nsw i64 %6074, 4
  store i64 %6075, i64* %RSI.i1784, align 8
  %6076 = add i64 %6075, %6043
  store i64 %6076, i64* %RDI.i1781, align 8
  %6077 = icmp ult i64 %6076, %6043
  %6078 = icmp ult i64 %6076, %6075
  %6079 = or i1 %6077, %6078
  %6080 = zext i1 %6079 to i8
  store i8 %6080, i8* %39, align 1
  %6081 = trunc i64 %6076 to i32
  %6082 = and i32 %6081, 255
  %6083 = tail call i32 @llvm.ctpop.i32(i32 %6082)
  %6084 = trunc i32 %6083 to i8
  %6085 = and i8 %6084, 1
  %6086 = xor i8 %6085, 1
  store i8 %6086, i8* %46, align 1
  %6087 = xor i64 %6075, %6043
  %6088 = xor i64 %6087, %6076
  %6089 = lshr i64 %6088, 4
  %6090 = trunc i64 %6089 to i8
  %6091 = and i8 %6090, 1
  store i8 %6091, i8* %51, align 1
  %6092 = icmp eq i64 %6076, 0
  %6093 = zext i1 %6092 to i8
  store i8 %6093, i8* %54, align 1
  %6094 = lshr i64 %6076, 63
  %6095 = trunc i64 %6094 to i8
  store i8 %6095, i8* %57, align 1
  %6096 = lshr i64 %6074, 59
  %6097 = and i64 %6096, 1
  %6098 = xor i64 %6094, %6060
  %6099 = xor i64 %6094, %6097
  %6100 = add nuw nsw i64 %6098, %6099
  %6101 = icmp eq i64 %6100, 2
  %6102 = zext i1 %6101 to i8
  store i8 %6102, i8* %63, align 1
  %6103 = load i64, i64* %RBP.i, align 8
  %6104 = add i64 %6103, -44
  %6105 = add i64 %6018, 33
  store i64 %6105, i64* %3, align 8
  %6106 = inttoptr i64 %6104 to i32*
  %6107 = load i32, i32* %6106, align 4
  %6108 = sext i32 %6107 to i64
  store i64 %6108, i64* %RSI.i1784, align 8
  %6109 = shl nsw i64 %6108, 2
  %6110 = add i64 %6109, %6076
  %6111 = load i32, i32* %EAX.i1800, align 4
  %6112 = add i64 %6018, 36
  store i64 %6112, i64* %3, align 8
  %6113 = inttoptr i64 %6110 to i32*
  store i32 %6111, i32* %6113, align 4
  %6114 = load i64, i64* %RBP.i, align 8
  %6115 = add i64 %6114, -52
  %6116 = load i64, i64* %3, align 8
  %6117 = add i64 %6116, 4
  store i64 %6117, i64* %3, align 8
  %6118 = inttoptr i64 %6115 to i32*
  %6119 = load i32, i32* %6118, align 4
  %6120 = sext i32 %6119 to i64
  %6121 = shl nsw i64 %6120, 6
  store i64 %6121, i64* %RSI.i1784, align 8
  %6122 = load i64, i64* %RCX.i1788, align 8
  %6123 = add i64 %6121, %6122
  store i64 %6123, i64* %RCX.i1788, align 8
  %6124 = icmp ult i64 %6123, %6122
  %6125 = icmp ult i64 %6123, %6121
  %6126 = or i1 %6124, %6125
  %6127 = zext i1 %6126 to i8
  store i8 %6127, i8* %39, align 1
  %6128 = trunc i64 %6123 to i32
  %6129 = and i32 %6128, 255
  %6130 = tail call i32 @llvm.ctpop.i32(i32 %6129)
  %6131 = trunc i32 %6130 to i8
  %6132 = and i8 %6131, 1
  %6133 = xor i8 %6132, 1
  store i8 %6133, i8* %46, align 1
  %6134 = xor i64 %6122, %6123
  %6135 = lshr i64 %6134, 4
  %6136 = trunc i64 %6135 to i8
  %6137 = and i8 %6136, 1
  store i8 %6137, i8* %51, align 1
  %6138 = icmp eq i64 %6123, 0
  %6139 = zext i1 %6138 to i8
  store i8 %6139, i8* %54, align 1
  %6140 = lshr i64 %6123, 63
  %6141 = trunc i64 %6140 to i8
  store i8 %6141, i8* %57, align 1
  %6142 = lshr i64 %6122, 63
  %6143 = lshr i64 %6120, 57
  %6144 = and i64 %6143, 1
  %6145 = xor i64 %6140, %6142
  %6146 = xor i64 %6140, %6144
  %6147 = add nuw nsw i64 %6145, %6146
  %6148 = icmp eq i64 %6147, 2
  %6149 = zext i1 %6148 to i8
  store i8 %6149, i8* %63, align 1
  %6150 = add i64 %6114, -48
  %6151 = add i64 %6116, 15
  store i64 %6151, i64* %3, align 8
  %6152 = inttoptr i64 %6150 to i32*
  %6153 = load i32, i32* %6152, align 4
  %6154 = sext i32 %6153 to i64
  %6155 = shl nsw i64 %6154, 4
  store i64 %6155, i64* %RSI.i1784, align 8
  %6156 = add i64 %6155, %6123
  store i64 %6156, i64* %RCX.i1788, align 8
  %6157 = icmp ult i64 %6156, %6123
  %6158 = icmp ult i64 %6156, %6155
  %6159 = or i1 %6157, %6158
  %6160 = zext i1 %6159 to i8
  store i8 %6160, i8* %39, align 1
  %6161 = trunc i64 %6156 to i32
  %6162 = and i32 %6161, 255
  %6163 = tail call i32 @llvm.ctpop.i32(i32 %6162)
  %6164 = trunc i32 %6163 to i8
  %6165 = and i8 %6164, 1
  %6166 = xor i8 %6165, 1
  store i8 %6166, i8* %46, align 1
  %6167 = xor i64 %6155, %6123
  %6168 = xor i64 %6167, %6156
  %6169 = lshr i64 %6168, 4
  %6170 = trunc i64 %6169 to i8
  %6171 = and i8 %6170, 1
  store i8 %6171, i8* %51, align 1
  %6172 = icmp eq i64 %6156, 0
  %6173 = zext i1 %6172 to i8
  store i8 %6173, i8* %54, align 1
  %6174 = lshr i64 %6156, 63
  %6175 = trunc i64 %6174 to i8
  store i8 %6175, i8* %57, align 1
  %6176 = lshr i64 %6154, 59
  %6177 = and i64 %6176, 1
  %6178 = xor i64 %6174, %6140
  %6179 = xor i64 %6174, %6177
  %6180 = add nuw nsw i64 %6178, %6179
  %6181 = icmp eq i64 %6180, 2
  %6182 = zext i1 %6181 to i8
  store i8 %6182, i8* %63, align 1
  %6183 = load i64, i64* %RBP.i, align 8
  %6184 = add i64 %6183, -44
  %6185 = add i64 %6116, 26
  store i64 %6185, i64* %3, align 8
  %6186 = inttoptr i64 %6184 to i32*
  %6187 = load i32, i32* %6186, align 4
  %6188 = sext i32 %6187 to i64
  store i64 %6188, i64* %RSI.i1784, align 8
  %6189 = shl nsw i64 %6188, 2
  %6190 = add i64 %6189, %6156
  %6191 = add i64 %6116, 29
  store i64 %6191, i64* %3, align 8
  %6192 = inttoptr i64 %6190 to i32*
  %6193 = load i32, i32* %6192, align 4
  %6194 = zext i32 %6193 to i64
  store i64 %6194, i64* %RAX.i2624, align 8
  %6195 = add i64 %6183, -56
  %6196 = add i64 %6116, 33
  store i64 %6196, i64* %3, align 8
  %6197 = inttoptr i64 %6195 to i32*
  %6198 = load i32, i32* %6197, align 4
  %6199 = sext i32 %6198 to i64
  store i64 %6199, i64* %RCX.i1788, align 8
  %6200 = shl nsw i64 %6199, 1
  %6201 = add nsw i64 %6200, 7151648
  %6202 = add i64 %6116, 42
  store i64 %6202, i64* %3, align 8
  %6203 = inttoptr i64 %6201 to i16*
  %6204 = load i16, i16* %6203, align 2
  %6205 = sext i16 %6204 to i64
  %6206 = and i64 %6205, 4294967295
  store i64 %6206, i64* %430, align 8
  %6207 = sext i32 %6193 to i64
  %6208 = sext i16 %6204 to i64
  %6209 = mul nsw i64 %6208, %6207
  %6210 = trunc i64 %6209 to i32
  %6211 = and i64 %6209, 4294967295
  store i64 %6211, i64* %RAX.i2624, align 8
  %6212 = shl i64 %6209, 32
  %6213 = ashr exact i64 %6212, 32
  %6214 = icmp ne i64 %6213, %6209
  %6215 = zext i1 %6214 to i8
  store i8 %6215, i8* %39, align 1
  %6216 = and i32 %6210, 255
  %6217 = tail call i32 @llvm.ctpop.i32(i32 %6216)
  %6218 = trunc i32 %6217 to i8
  %6219 = and i8 %6218, 1
  %6220 = xor i8 %6219, 1
  store i8 %6220, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %6221 = lshr i32 %6210, 31
  %6222 = trunc i32 %6221 to i8
  store i8 %6222, i8* %57, align 1
  store i8 %6215, i8* %63, align 1
  %6223 = add i64 %6183, -52
  %6224 = add i64 %6116, 50
  store i64 %6224, i64* %3, align 8
  %6225 = inttoptr i64 %6223 to i32*
  %6226 = load i32, i32* %6225, align 4
  %6227 = sext i32 %6226 to i64
  %6228 = shl nsw i64 %6227, 6
  store i64 %6228, i64* %RCX.i1788, align 8
  %.lobit161 = lshr i32 %6226, 31
  %6229 = trunc i32 %.lobit161 to i8
  store i8 %6229, i8* %39, align 1
  %6230 = trunc i64 %6228 to i32
  %6231 = and i32 %6230, 192
  %6232 = tail call i32 @llvm.ctpop.i32(i32 %6231)
  %6233 = trunc i32 %6232 to i8
  %6234 = and i8 %6233, 1
  %6235 = xor i8 %6234, 1
  store i8 %6235, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %6236 = icmp eq i32 %6226, 0
  %6237 = zext i1 %6236 to i8
  store i8 %6237, i8* %54, align 1
  %6238 = lshr i64 %6227, 57
  %6239 = trunc i64 %6238 to i8
  %6240 = and i8 %6239, 1
  store i8 %6240, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %6241 = add i64 %6183, -232
  %6242 = add i64 %6116, 61
  store i64 %6242, i64* %3, align 8
  %6243 = inttoptr i64 %6241 to i64*
  %6244 = load i64, i64* %6243, align 8
  %6245 = add i64 %6228, %6244
  store i64 %6245, i64* %RSI.i1784, align 8
  %6246 = icmp ult i64 %6245, %6244
  %6247 = icmp ult i64 %6245, %6228
  %6248 = or i1 %6246, %6247
  %6249 = zext i1 %6248 to i8
  store i8 %6249, i8* %39, align 1
  %6250 = trunc i64 %6245 to i32
  %6251 = and i32 %6250, 255
  %6252 = tail call i32 @llvm.ctpop.i32(i32 %6251)
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  store i8 %6255, i8* %46, align 1
  %6256 = xor i64 %6244, %6245
  %6257 = lshr i64 %6256, 4
  %6258 = trunc i64 %6257 to i8
  %6259 = and i8 %6258, 1
  store i8 %6259, i8* %51, align 1
  %6260 = icmp eq i64 %6245, 0
  %6261 = zext i1 %6260 to i8
  store i8 %6261, i8* %54, align 1
  %6262 = lshr i64 %6245, 63
  %6263 = trunc i64 %6262 to i8
  store i8 %6263, i8* %57, align 1
  %6264 = lshr i64 %6244, 63
  %6265 = lshr i64 %6227, 57
  %6266 = and i64 %6265, 1
  %6267 = xor i64 %6262, %6264
  %6268 = xor i64 %6262, %6266
  %6269 = add nuw nsw i64 %6267, %6268
  %6270 = icmp eq i64 %6269, 2
  %6271 = zext i1 %6270 to i8
  store i8 %6271, i8* %63, align 1
  %6272 = load i64, i64* %RBP.i, align 8
  %6273 = add i64 %6272, -48
  %6274 = add i64 %6116, 68
  store i64 %6274, i64* %3, align 8
  %6275 = inttoptr i64 %6273 to i32*
  %6276 = load i32, i32* %6275, align 4
  %6277 = sext i32 %6276 to i64
  %6278 = shl nsw i64 %6277, 4
  store i64 %6278, i64* %RCX.i1788, align 8
  %6279 = add i64 %6278, %6245
  store i64 %6279, i64* %RSI.i1784, align 8
  %6280 = icmp ult i64 %6279, %6245
  %6281 = icmp ult i64 %6279, %6278
  %6282 = or i1 %6280, %6281
  %6283 = zext i1 %6282 to i8
  store i8 %6283, i8* %39, align 1
  %6284 = trunc i64 %6279 to i32
  %6285 = and i32 %6284, 255
  %6286 = tail call i32 @llvm.ctpop.i32(i32 %6285)
  %6287 = trunc i32 %6286 to i8
  %6288 = and i8 %6287, 1
  %6289 = xor i8 %6288, 1
  store i8 %6289, i8* %46, align 1
  %6290 = xor i64 %6278, %6245
  %6291 = xor i64 %6290, %6279
  %6292 = lshr i64 %6291, 4
  %6293 = trunc i64 %6292 to i8
  %6294 = and i8 %6293, 1
  store i8 %6294, i8* %51, align 1
  %6295 = icmp eq i64 %6279, 0
  %6296 = zext i1 %6295 to i8
  store i8 %6296, i8* %54, align 1
  %6297 = lshr i64 %6279, 63
  %6298 = trunc i64 %6297 to i8
  store i8 %6298, i8* %57, align 1
  %6299 = lshr i64 %6277, 59
  %6300 = and i64 %6299, 1
  %6301 = xor i64 %6297, %6262
  %6302 = xor i64 %6297, %6300
  %6303 = add nuw nsw i64 %6301, %6302
  %6304 = icmp eq i64 %6303, 2
  %6305 = zext i1 %6304 to i8
  store i8 %6305, i8* %63, align 1
  %6306 = add i64 %6272, -44
  %6307 = add i64 %6116, 79
  store i64 %6307, i64* %3, align 8
  %6308 = inttoptr i64 %6306 to i32*
  %6309 = load i32, i32* %6308, align 4
  %6310 = sext i32 %6309 to i64
  store i64 %6310, i64* %RCX.i1788, align 8
  %6311 = shl nsw i64 %6310, 2
  %6312 = add i64 %6311, %6279
  %6313 = load i32, i32* %EAX.i1800, align 4
  %6314 = add i64 %6116, 82
  store i64 %6314, i64* %3, align 8
  %6315 = inttoptr i64 %6312 to i32*
  store i32 %6313, i32* %6315, align 4
  %.pre227 = load i64, i64* %3, align 8
  br label %block_.L_47a520

block_.L_47a520:                                  ; preds = %routine_idivl__r9d.exit, %routine_idivl__r9d.exit852
  %6316 = phi i64 [ %5882, %routine_idivl__r9d.exit852 ], [ %.pre227, %routine_idivl__r9d.exit ]
  %MEMORY.23 = phi %struct.Memory* [ %5584, %routine_idivl__r9d.exit852 ], [ %6019, %routine_idivl__r9d.exit ]
  %6317 = load i64, i64* %RBP.i, align 8
  %6318 = add i64 %6317, -64
  %6319 = add i64 %6316, 4
  store i64 %6319, i64* %3, align 8
  %6320 = inttoptr i64 %6318 to i32*
  %6321 = load i32, i32* %6320, align 4
  store i8 0, i8* %39, align 1
  %6322 = and i32 %6321, 255
  %6323 = tail call i32 @llvm.ctpop.i32(i32 %6322)
  %6324 = trunc i32 %6323 to i8
  %6325 = and i8 %6324, 1
  %6326 = xor i8 %6325, 1
  store i8 %6326, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %6327 = icmp eq i32 %6321, 0
  %6328 = zext i1 %6327 to i8
  store i8 %6328, i8* %54, align 1
  %6329 = lshr i32 %6321, 31
  %6330 = trunc i32 %6329 to i8
  store i8 %6330, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v254 = select i1 %6327, i64 10, i64 175
  %6331 = add i64 %6316, %.v254
  %6332 = add i64 %6331, 10
  store i64 %6332, i64* %3, align 8
  br i1 %6327, label %block_47a52a, label %block_.L_47a5cf

block_47a52a:                                     ; preds = %block_.L_47a520
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RDX.i1786, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RSI.i1784, align 8
  %6333 = add i64 %6317, -52
  %6334 = add i64 %6331, 44
  store i64 %6334, i64* %3, align 8
  %6335 = inttoptr i64 %6333 to i32*
  %6336 = load i32, i32* %6335, align 4
  %6337 = sext i32 %6336 to i64
  %6338 = shl nsw i64 %6337, 6
  store i64 %6338, i64* %RDI.i1781, align 8
  %6339 = add i64 %6338, ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64)
  store i64 %6339, i64* %RSI.i1784, align 8
  %6340 = icmp ult i64 %6339, ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64)
  %6341 = icmp ult i64 %6339, %6338
  %6342 = or i1 %6340, %6341
  %6343 = zext i1 %6342 to i8
  store i8 %6343, i8* %39, align 1
  %6344 = trunc i64 %6339 to i32
  %6345 = and i32 %6344, 248
  %6346 = tail call i32 @llvm.ctpop.i32(i32 %6345)
  %6347 = trunc i32 %6346 to i8
  %6348 = and i8 %6347, 1
  %6349 = xor i8 %6348, 1
  store i8 %6349, i8* %46, align 1
  %6350 = xor i64 %6339, ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64)
  %6351 = lshr i64 %6350, 4
  %6352 = trunc i64 %6351 to i8
  %6353 = and i8 %6352, 1
  store i8 %6353, i8* %51, align 1
  %6354 = icmp eq i64 %6339, 0
  %6355 = zext i1 %6354 to i8
  store i8 %6355, i8* %54, align 1
  %6356 = lshr i64 %6339, 63
  %6357 = trunc i64 %6356 to i8
  store i8 %6357, i8* %57, align 1
  %6358 = lshr i64 %6337, 57
  %6359 = and i64 %6358, 1
  %6360 = xor i64 %6356, lshr (i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64 63)
  %6361 = xor i64 %6356, %6359
  %6362 = add nuw nsw i64 %6360, %6361
  %6363 = icmp eq i64 %6362, 2
  %6364 = zext i1 %6363 to i8
  store i8 %6364, i8* %63, align 1
  %6365 = add i64 %6317, -48
  %6366 = add i64 %6331, 55
  store i64 %6366, i64* %3, align 8
  %6367 = inttoptr i64 %6365 to i32*
  %6368 = load i32, i32* %6367, align 4
  %6369 = sext i32 %6368 to i64
  %6370 = shl nsw i64 %6369, 4
  store i64 %6370, i64* %RDI.i1781, align 8
  %6371 = add i64 %6370, %6339
  store i64 %6371, i64* %RSI.i1784, align 8
  %6372 = icmp ult i64 %6371, %6339
  %6373 = icmp ult i64 %6371, %6370
  %6374 = or i1 %6372, %6373
  %6375 = zext i1 %6374 to i8
  store i8 %6375, i8* %39, align 1
  %6376 = trunc i64 %6371 to i32
  %6377 = and i32 %6376, 248
  %6378 = tail call i32 @llvm.ctpop.i32(i32 %6377)
  %6379 = trunc i32 %6378 to i8
  %6380 = and i8 %6379, 1
  %6381 = xor i8 %6380, 1
  store i8 %6381, i8* %46, align 1
  %6382 = xor i64 %6370, %6339
  %6383 = xor i64 %6382, %6371
  %6384 = lshr i64 %6383, 4
  %6385 = trunc i64 %6384 to i8
  %6386 = and i8 %6385, 1
  store i8 %6386, i8* %51, align 1
  %6387 = icmp eq i64 %6371, 0
  %6388 = zext i1 %6387 to i8
  store i8 %6388, i8* %54, align 1
  %6389 = lshr i64 %6371, 63
  %6390 = trunc i64 %6389 to i8
  store i8 %6390, i8* %57, align 1
  %6391 = lshr i64 %6369, 59
  %6392 = and i64 %6391, 1
  %6393 = xor i64 %6389, %6356
  %6394 = xor i64 %6389, %6392
  %6395 = add nuw nsw i64 %6393, %6394
  %6396 = icmp eq i64 %6395, 2
  %6397 = zext i1 %6396 to i8
  store i8 %6397, i8* %63, align 1
  %6398 = load i64, i64* %RBP.i, align 8
  %6399 = add i64 %6398, -44
  %6400 = add i64 %6331, 66
  store i64 %6400, i64* %3, align 8
  %6401 = inttoptr i64 %6399 to i32*
  %6402 = load i32, i32* %6401, align 4
  %6403 = sext i32 %6402 to i64
  store i64 %6403, i64* %RDI.i1781, align 8
  %6404 = shl nsw i64 %6403, 2
  %6405 = add i64 %6404, %6371
  %6406 = add i64 %6331, 70
  store i64 %6406, i64* %3, align 8
  %6407 = inttoptr i64 %6405 to i32*
  %6408 = load i32, i32* %6407, align 4
  %6409 = zext i32 %6408 to i64
  store i64 %6409, i64* %430, align 8
  %6410 = add i64 %6398, -52
  %6411 = add i64 %6331, 74
  store i64 %6411, i64* %3, align 8
  %6412 = inttoptr i64 %6410 to i32*
  %6413 = load i32, i32* %6412, align 4
  %6414 = sext i32 %6413 to i64
  %6415 = shl nsw i64 %6414, 6
  store i64 %6415, i64* %RSI.i1784, align 8
  %6416 = load i64, i64* %RDX.i1786, align 8
  %6417 = add i64 %6415, %6416
  store i64 %6417, i64* %RDX.i1786, align 8
  %6418 = icmp ult i64 %6417, %6416
  %6419 = icmp ult i64 %6417, %6415
  %6420 = or i1 %6418, %6419
  %6421 = zext i1 %6420 to i8
  store i8 %6421, i8* %39, align 1
  %6422 = trunc i64 %6417 to i32
  %6423 = and i32 %6422, 255
  %6424 = tail call i32 @llvm.ctpop.i32(i32 %6423)
  %6425 = trunc i32 %6424 to i8
  %6426 = and i8 %6425, 1
  %6427 = xor i8 %6426, 1
  store i8 %6427, i8* %46, align 1
  %6428 = xor i64 %6416, %6417
  %6429 = lshr i64 %6428, 4
  %6430 = trunc i64 %6429 to i8
  %6431 = and i8 %6430, 1
  store i8 %6431, i8* %51, align 1
  %6432 = icmp eq i64 %6417, 0
  %6433 = zext i1 %6432 to i8
  store i8 %6433, i8* %54, align 1
  %6434 = lshr i64 %6417, 63
  %6435 = trunc i64 %6434 to i8
  store i8 %6435, i8* %57, align 1
  %6436 = lshr i64 %6416, 63
  %6437 = lshr i64 %6414, 57
  %6438 = and i64 %6437, 1
  %6439 = xor i64 %6434, %6436
  %6440 = xor i64 %6434, %6438
  %6441 = add nuw nsw i64 %6439, %6440
  %6442 = icmp eq i64 %6441, 2
  %6443 = zext i1 %6442 to i8
  store i8 %6443, i8* %63, align 1
  %6444 = add i64 %6398, -48
  %6445 = add i64 %6331, 85
  store i64 %6445, i64* %3, align 8
  %6446 = inttoptr i64 %6444 to i32*
  %6447 = load i32, i32* %6446, align 4
  %6448 = sext i32 %6447 to i64
  %6449 = shl nsw i64 %6448, 4
  store i64 %6449, i64* %RSI.i1784, align 8
  %6450 = add i64 %6449, %6417
  store i64 %6450, i64* %RDX.i1786, align 8
  %6451 = icmp ult i64 %6450, %6417
  %6452 = icmp ult i64 %6450, %6449
  %6453 = or i1 %6451, %6452
  %6454 = zext i1 %6453 to i8
  store i8 %6454, i8* %39, align 1
  %6455 = trunc i64 %6450 to i32
  %6456 = and i32 %6455, 255
  %6457 = tail call i32 @llvm.ctpop.i32(i32 %6456)
  %6458 = trunc i32 %6457 to i8
  %6459 = and i8 %6458, 1
  %6460 = xor i8 %6459, 1
  store i8 %6460, i8* %46, align 1
  %6461 = xor i64 %6449, %6417
  %6462 = xor i64 %6461, %6450
  %6463 = lshr i64 %6462, 4
  %6464 = trunc i64 %6463 to i8
  %6465 = and i8 %6464, 1
  store i8 %6465, i8* %51, align 1
  %6466 = icmp eq i64 %6450, 0
  %6467 = zext i1 %6466 to i8
  store i8 %6467, i8* %54, align 1
  %6468 = lshr i64 %6450, 63
  %6469 = trunc i64 %6468 to i8
  store i8 %6469, i8* %57, align 1
  %6470 = lshr i64 %6448, 59
  %6471 = and i64 %6470, 1
  %6472 = xor i64 %6468, %6434
  %6473 = xor i64 %6468, %6471
  %6474 = add nuw nsw i64 %6472, %6473
  %6475 = icmp eq i64 %6474, 2
  %6476 = zext i1 %6475 to i8
  store i8 %6476, i8* %63, align 1
  %6477 = load i64, i64* %RBP.i, align 8
  %6478 = add i64 %6477, -44
  %6479 = add i64 %6331, 96
  store i64 %6479, i64* %3, align 8
  %6480 = inttoptr i64 %6478 to i32*
  %6481 = load i32, i32* %6480, align 4
  %6482 = sext i32 %6481 to i64
  store i64 %6482, i64* %RSI.i1784, align 8
  %6483 = shl nsw i64 %6482, 2
  %6484 = add i64 %6483, %6450
  %6485 = load i32, i32* %R8D.i1761, align 4
  %6486 = add i64 %6331, 100
  store i64 %6486, i64* %3, align 8
  %6487 = inttoptr i64 %6484 to i32*
  store i32 %6485, i32* %6487, align 4
  %6488 = load i64, i64* %RBP.i, align 8
  %6489 = add i64 %6488, -52
  %6490 = load i64, i64* %3, align 8
  %6491 = add i64 %6490, 4
  store i64 %6491, i64* %3, align 8
  %6492 = inttoptr i64 %6489 to i32*
  %6493 = load i32, i32* %6492, align 4
  %6494 = sext i32 %6493 to i64
  %6495 = shl nsw i64 %6494, 6
  store i64 %6495, i64* %RDX.i1786, align 8
  %6496 = load i64, i64* %RCX.i1788, align 8
  %6497 = add i64 %6495, %6496
  store i64 %6497, i64* %RCX.i1788, align 8
  %6498 = icmp ult i64 %6497, %6496
  %6499 = icmp ult i64 %6497, %6495
  %6500 = or i1 %6498, %6499
  %6501 = zext i1 %6500 to i8
  store i8 %6501, i8* %39, align 1
  %6502 = trunc i64 %6497 to i32
  %6503 = and i32 %6502, 255
  %6504 = tail call i32 @llvm.ctpop.i32(i32 %6503)
  %6505 = trunc i32 %6504 to i8
  %6506 = and i8 %6505, 1
  %6507 = xor i8 %6506, 1
  store i8 %6507, i8* %46, align 1
  %6508 = xor i64 %6496, %6497
  %6509 = lshr i64 %6508, 4
  %6510 = trunc i64 %6509 to i8
  %6511 = and i8 %6510, 1
  store i8 %6511, i8* %51, align 1
  %6512 = icmp eq i64 %6497, 0
  %6513 = zext i1 %6512 to i8
  store i8 %6513, i8* %54, align 1
  %6514 = lshr i64 %6497, 63
  %6515 = trunc i64 %6514 to i8
  store i8 %6515, i8* %57, align 1
  %6516 = lshr i64 %6496, 63
  %6517 = lshr i64 %6494, 57
  %6518 = and i64 %6517, 1
  %6519 = xor i64 %6514, %6516
  %6520 = xor i64 %6514, %6518
  %6521 = add nuw nsw i64 %6519, %6520
  %6522 = icmp eq i64 %6521, 2
  %6523 = zext i1 %6522 to i8
  store i8 %6523, i8* %63, align 1
  %6524 = add i64 %6488, -48
  %6525 = add i64 %6490, 15
  store i64 %6525, i64* %3, align 8
  %6526 = inttoptr i64 %6524 to i32*
  %6527 = load i32, i32* %6526, align 4
  %6528 = sext i32 %6527 to i64
  %6529 = shl nsw i64 %6528, 4
  store i64 %6529, i64* %RDX.i1786, align 8
  %6530 = add i64 %6529, %6497
  store i64 %6530, i64* %RCX.i1788, align 8
  %6531 = icmp ult i64 %6530, %6497
  %6532 = icmp ult i64 %6530, %6529
  %6533 = or i1 %6531, %6532
  %6534 = zext i1 %6533 to i8
  store i8 %6534, i8* %39, align 1
  %6535 = trunc i64 %6530 to i32
  %6536 = and i32 %6535, 255
  %6537 = tail call i32 @llvm.ctpop.i32(i32 %6536)
  %6538 = trunc i32 %6537 to i8
  %6539 = and i8 %6538, 1
  %6540 = xor i8 %6539, 1
  store i8 %6540, i8* %46, align 1
  %6541 = xor i64 %6529, %6497
  %6542 = xor i64 %6541, %6530
  %6543 = lshr i64 %6542, 4
  %6544 = trunc i64 %6543 to i8
  %6545 = and i8 %6544, 1
  store i8 %6545, i8* %51, align 1
  %6546 = icmp eq i64 %6530, 0
  %6547 = zext i1 %6546 to i8
  store i8 %6547, i8* %54, align 1
  %6548 = lshr i64 %6530, 63
  %6549 = trunc i64 %6548 to i8
  store i8 %6549, i8* %57, align 1
  %6550 = lshr i64 %6528, 59
  %6551 = and i64 %6550, 1
  %6552 = xor i64 %6548, %6514
  %6553 = xor i64 %6548, %6551
  %6554 = add nuw nsw i64 %6552, %6553
  %6555 = icmp eq i64 %6554, 2
  %6556 = zext i1 %6555 to i8
  store i8 %6556, i8* %63, align 1
  %6557 = load i64, i64* %RBP.i, align 8
  %6558 = add i64 %6557, -44
  %6559 = add i64 %6490, 26
  store i64 %6559, i64* %3, align 8
  %6560 = inttoptr i64 %6558 to i32*
  %6561 = load i32, i32* %6560, align 4
  %6562 = sext i32 %6561 to i64
  store i64 %6562, i64* %RDX.i1786, align 8
  %6563 = shl nsw i64 %6562, 2
  %6564 = add i64 %6563, %6530
  %6565 = add i64 %6490, 30
  store i64 %6565, i64* %3, align 8
  %6566 = inttoptr i64 %6564 to i32*
  %6567 = load i32, i32* %6566, align 4
  %6568 = zext i32 %6567 to i64
  store i64 %6568, i64* %430, align 8
  %6569 = add i64 %6557, -52
  %6570 = add i64 %6490, 34
  store i64 %6570, i64* %3, align 8
  %6571 = inttoptr i64 %6569 to i32*
  %6572 = load i32, i32* %6571, align 4
  %6573 = sext i32 %6572 to i64
  %6574 = shl nsw i64 %6573, 6
  store i64 %6574, i64* %RCX.i1788, align 8
  %6575 = load i64, i64* %RAX.i2624, align 8
  %6576 = add i64 %6574, %6575
  store i64 %6576, i64* %RAX.i2624, align 8
  %6577 = icmp ult i64 %6576, %6575
  %6578 = icmp ult i64 %6576, %6574
  %6579 = or i1 %6577, %6578
  %6580 = zext i1 %6579 to i8
  store i8 %6580, i8* %39, align 1
  %6581 = trunc i64 %6576 to i32
  %6582 = and i32 %6581, 255
  %6583 = tail call i32 @llvm.ctpop.i32(i32 %6582)
  %6584 = trunc i32 %6583 to i8
  %6585 = and i8 %6584, 1
  %6586 = xor i8 %6585, 1
  store i8 %6586, i8* %46, align 1
  %6587 = xor i64 %6575, %6576
  %6588 = lshr i64 %6587, 4
  %6589 = trunc i64 %6588 to i8
  %6590 = and i8 %6589, 1
  store i8 %6590, i8* %51, align 1
  %6591 = icmp eq i64 %6576, 0
  %6592 = zext i1 %6591 to i8
  store i8 %6592, i8* %54, align 1
  %6593 = lshr i64 %6576, 63
  %6594 = trunc i64 %6593 to i8
  store i8 %6594, i8* %57, align 1
  %6595 = lshr i64 %6575, 63
  %6596 = lshr i64 %6573, 57
  %6597 = and i64 %6596, 1
  %6598 = xor i64 %6593, %6595
  %6599 = xor i64 %6593, %6597
  %6600 = add nuw nsw i64 %6598, %6599
  %6601 = icmp eq i64 %6600, 2
  %6602 = zext i1 %6601 to i8
  store i8 %6602, i8* %63, align 1
  %6603 = add i64 %6557, -48
  %6604 = add i64 %6490, 45
  store i64 %6604, i64* %3, align 8
  %6605 = inttoptr i64 %6603 to i32*
  %6606 = load i32, i32* %6605, align 4
  %6607 = sext i32 %6606 to i64
  %6608 = shl nsw i64 %6607, 4
  store i64 %6608, i64* %RCX.i1788, align 8
  %6609 = add i64 %6608, %6576
  store i64 %6609, i64* %RAX.i2624, align 8
  %6610 = icmp ult i64 %6609, %6576
  %6611 = icmp ult i64 %6609, %6608
  %6612 = or i1 %6610, %6611
  %6613 = zext i1 %6612 to i8
  store i8 %6613, i8* %39, align 1
  %6614 = trunc i64 %6609 to i32
  %6615 = and i32 %6614, 255
  %6616 = tail call i32 @llvm.ctpop.i32(i32 %6615)
  %6617 = trunc i32 %6616 to i8
  %6618 = and i8 %6617, 1
  %6619 = xor i8 %6618, 1
  store i8 %6619, i8* %46, align 1
  %6620 = xor i64 %6608, %6576
  %6621 = xor i64 %6620, %6609
  %6622 = lshr i64 %6621, 4
  %6623 = trunc i64 %6622 to i8
  %6624 = and i8 %6623, 1
  store i8 %6624, i8* %51, align 1
  %6625 = icmp eq i64 %6609, 0
  %6626 = zext i1 %6625 to i8
  store i8 %6626, i8* %54, align 1
  %6627 = lshr i64 %6609, 63
  %6628 = trunc i64 %6627 to i8
  store i8 %6628, i8* %57, align 1
  %6629 = lshr i64 %6607, 59
  %6630 = and i64 %6629, 1
  %6631 = xor i64 %6627, %6593
  %6632 = xor i64 %6627, %6630
  %6633 = add nuw nsw i64 %6631, %6632
  %6634 = icmp eq i64 %6633, 2
  %6635 = zext i1 %6634 to i8
  store i8 %6635, i8* %63, align 1
  %6636 = load i64, i64* %RBP.i, align 8
  %6637 = add i64 %6636, -44
  %6638 = add i64 %6490, 56
  store i64 %6638, i64* %3, align 8
  %6639 = inttoptr i64 %6637 to i32*
  %6640 = load i32, i32* %6639, align 4
  %6641 = sext i32 %6640 to i64
  store i64 %6641, i64* %RCX.i1788, align 8
  %6642 = shl nsw i64 %6641, 2
  %6643 = add i64 %6642, %6609
  %6644 = load i32, i32* %R8D.i1761, align 4
  %6645 = add i64 %6490, 60
  store i64 %6645, i64* %3, align 8
  %6646 = inttoptr i64 %6643 to i32*
  store i32 %6644, i32* %6646, align 4
  %6647 = load i64, i64* %3, align 8
  %6648 = add i64 %6647, 354
  store i64 %6648, i64* %3, align 8
  br label %block_.L_47a72c

block_.L_47a5cf:                                  ; preds = %block_.L_47a520
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RAX.i2624, align 8
  %6649 = add i64 %6317, -52
  %6650 = add i64 %6331, 14
  store i64 %6650, i64* %3, align 8
  %6651 = inttoptr i64 %6649 to i32*
  %6652 = load i32, i32* %6651, align 4
  %6653 = sext i32 %6652 to i64
  %6654 = shl nsw i64 %6653, 6
  store i64 %6654, i64* %RCX.i1406, align 8
  %6655 = add i64 %6654, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %6655, i64* %RAX.i2624, align 8
  %6656 = icmp ult i64 %6655, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %6657 = icmp ult i64 %6655, %6654
  %6658 = or i1 %6656, %6657
  %6659 = zext i1 %6658 to i8
  store i8 %6659, i8* %39, align 1
  %6660 = trunc i64 %6655 to i32
  %6661 = and i32 %6660, 248
  %6662 = tail call i32 @llvm.ctpop.i32(i32 %6661)
  %6663 = trunc i32 %6662 to i8
  %6664 = and i8 %6663, 1
  %6665 = xor i8 %6664, 1
  store i8 %6665, i8* %46, align 1
  %6666 = xor i64 %6655, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %6667 = lshr i64 %6666, 4
  %6668 = trunc i64 %6667 to i8
  %6669 = and i8 %6668, 1
  store i8 %6669, i8* %51, align 1
  %6670 = icmp eq i64 %6655, 0
  %6671 = zext i1 %6670 to i8
  store i8 %6671, i8* %54, align 1
  %6672 = lshr i64 %6655, 63
  %6673 = trunc i64 %6672 to i8
  store i8 %6673, i8* %57, align 1
  %6674 = lshr i64 %6653, 57
  %6675 = and i64 %6674, 1
  %6676 = xor i64 %6672, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %6677 = xor i64 %6672, %6675
  %6678 = add nuw nsw i64 %6676, %6677
  %6679 = icmp eq i64 %6678, 2
  %6680 = zext i1 %6679 to i8
  store i8 %6680, i8* %63, align 1
  %6681 = add i64 %6317, -48
  %6682 = add i64 %6331, 25
  store i64 %6682, i64* %3, align 8
  %6683 = inttoptr i64 %6681 to i32*
  %6684 = load i32, i32* %6683, align 4
  %6685 = sext i32 %6684 to i64
  %6686 = shl nsw i64 %6685, 4
  store i64 %6686, i64* %RCX.i1406, align 8
  %6687 = add i64 %6686, %6655
  store i64 %6687, i64* %RAX.i2624, align 8
  %6688 = icmp ult i64 %6687, %6655
  %6689 = icmp ult i64 %6687, %6686
  %6690 = or i1 %6688, %6689
  %6691 = zext i1 %6690 to i8
  store i8 %6691, i8* %39, align 1
  %6692 = trunc i64 %6687 to i32
  %6693 = and i32 %6692, 248
  %6694 = tail call i32 @llvm.ctpop.i32(i32 %6693)
  %6695 = trunc i32 %6694 to i8
  %6696 = and i8 %6695, 1
  %6697 = xor i8 %6696, 1
  store i8 %6697, i8* %46, align 1
  %6698 = xor i64 %6686, %6655
  %6699 = xor i64 %6698, %6687
  %6700 = lshr i64 %6699, 4
  %6701 = trunc i64 %6700 to i8
  %6702 = and i8 %6701, 1
  store i8 %6702, i8* %51, align 1
  %6703 = icmp eq i64 %6687, 0
  %6704 = zext i1 %6703 to i8
  store i8 %6704, i8* %54, align 1
  %6705 = lshr i64 %6687, 63
  %6706 = trunc i64 %6705 to i8
  store i8 %6706, i8* %57, align 1
  %6707 = lshr i64 %6685, 59
  %6708 = and i64 %6707, 1
  %6709 = xor i64 %6705, %6672
  %6710 = xor i64 %6705, %6708
  %6711 = add nuw nsw i64 %6709, %6710
  %6712 = icmp eq i64 %6711, 2
  %6713 = zext i1 %6712 to i8
  store i8 %6713, i8* %63, align 1
  %6714 = load i64, i64* %RBP.i, align 8
  %6715 = add i64 %6714, -44
  %6716 = add i64 %6331, 36
  store i64 %6716, i64* %3, align 8
  %6717 = inttoptr i64 %6715 to i32*
  %6718 = load i32, i32* %6717, align 4
  %6719 = sext i32 %6718 to i64
  store i64 %6719, i64* %RCX.i1406, align 8
  %6720 = shl nsw i64 %6719, 2
  %6721 = add i64 %6720, %6687
  %6722 = add i64 %6331, 39
  store i64 %6722, i64* %3, align 8
  %6723 = inttoptr i64 %6721 to i32*
  %6724 = load i32, i32* %6723, align 4
  %6725 = shl i32 %6724, 4
  %6726 = zext i32 %6725 to i64
  store i64 %6726, i64* %435, align 8
  %6727 = load i16, i16* bitcast (%G_0x6d4528_type* @G_0x6d4528 to i16*), align 8
  %6728 = sext i16 %6727 to i64
  %6729 = and i64 %6728, 4294967295
  store i64 %6729, i64* %RSI.i1382, align 8
  %6730 = sext i16 %6727 to i32
  store i8 0, i8* %39, align 1
  %6731 = and i32 %6730, 255
  %6732 = tail call i32 @llvm.ctpop.i32(i32 %6731)
  %6733 = trunc i32 %6732 to i8
  %6734 = and i8 %6733, 1
  %6735 = xor i8 %6734, 1
  store i8 %6735, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %6736 = icmp eq i16 %6727, 0
  %6737 = zext i1 %6736 to i8
  store i8 %6737, i8* %54, align 1
  %6738 = lshr i32 %6730, 31
  %6739 = trunc i32 %6738 to i8
  store i8 %6739, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %6740 = add i64 %6714, -244
  %6741 = add i64 %6331, 59
  store i64 %6741, i64* %3, align 8
  %6742 = inttoptr i64 %6740 to i32*
  store i32 %6725, i32* %6742, align 4
  %6743 = load i64, i64* %3, align 8
  %6744 = load i8, i8* %54, align 1
  %6745 = icmp ne i8 %6744, 0
  %.v275 = select i1 %6745, i64 29, i64 6
  %6746 = add i64 %6743, %.v275
  %cmpBr_47a60a = icmp eq i8 %6744, 1
  %6747 = load i64, i64* %RBP.i, align 8
  %6748 = add i64 %6747, -56
  %6749 = add i64 %6746, 4
  store i64 %6749, i64* %3, align 8
  %6750 = inttoptr i64 %6748 to i32*
  %6751 = load i32, i32* %6750, align 4
  %6752 = sext i32 %6751 to i64
  store i64 %6752, i64* %RAX.i2624, align 8
  %6753 = shl nsw i64 %6752, 1
  br i1 %cmpBr_47a60a, label %block_.L_47a627, label %block_47a610

block_47a610:                                     ; preds = %block_.L_47a5cf
  %6754 = add nsw i64 %6753, 4952640
  %6755 = add i64 %6746, 12
  store i64 %6755, i64* %3, align 8
  %6756 = inttoptr i64 %6754 to i16*
  %6757 = load i16, i16* %6756, align 2
  %6758 = sext i16 %6757 to i64
  %6759 = and i64 %6758, 4294967295
  store i64 %6759, i64* %RCX.i1406, align 8
  %6760 = add i64 %6747, -248
  %6761 = sext i16 %6757 to i32
  %6762 = add i64 %6746, 18
  store i64 %6762, i64* %3, align 8
  %6763 = inttoptr i64 %6760 to i32*
  store i32 %6761, i32* %6763, align 4
  %6764 = load i64, i64* %3, align 8
  %6765 = add i64 %6764, 23
  store i64 %6765, i64* %3, align 8
  br label %block_.L_47a639

block_.L_47a627:                                  ; preds = %block_.L_47a5cf
  %6766 = add nsw i64 %6753, 7151680
  %6767 = add i64 %6746, 12
  store i64 %6767, i64* %3, align 8
  %6768 = inttoptr i64 %6766 to i16*
  %6769 = load i16, i16* %6768, align 2
  %6770 = sext i16 %6769 to i64
  %6771 = and i64 %6770, 4294967295
  store i64 %6771, i64* %RCX.i1406, align 8
  %6772 = add i64 %6747, -248
  %6773 = sext i16 %6769 to i32
  %6774 = add i64 %6746, 18
  store i64 %6774, i64* %3, align 8
  %6775 = inttoptr i64 %6772 to i32*
  store i32 %6773, i32* %6775, align 4
  %.pre228 = load i64, i64* %3, align 8
  br label %block_.L_47a639

block_.L_47a639:                                  ; preds = %block_.L_47a627, %block_47a610
  %6776 = phi i64 [ %.pre228, %block_.L_47a627 ], [ %6765, %block_47a610 ]
  %6777 = load i64, i64* %RBP.i, align 8
  %6778 = add i64 %6777, -248
  %6779 = add i64 %6776, 6
  store i64 %6779, i64* %3, align 8
  %6780 = inttoptr i64 %6778 to i32*
  %6781 = load i32, i32* %6780, align 4
  %6782 = zext i32 %6781 to i64
  store i64 %6782, i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1406, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %435, align 8
  %6783 = add i64 %6777, -244
  %6784 = add i64 %6776, 32
  store i64 %6784, i64* %3, align 8
  %6785 = inttoptr i64 %6783 to i32*
  %6786 = load i32, i32* %6785, align 4
  %6787 = zext i32 %6786 to i64
  store i64 %6787, i64* %RSI.i1382, align 8
  %6788 = add i64 %6777, -252
  %6789 = add i64 %6776, 38
  store i64 %6789, i64* %3, align 8
  %6790 = inttoptr i64 %6788 to i32*
  store i32 %6781, i32* %6790, align 4
  %6791 = load i32, i32* %ESI.i1380, align 4
  %6792 = zext i32 %6791 to i64
  %6793 = load i64, i64* %3, align 8
  store i64 %6792, i64* %RAX.i2624, align 8
  %6794 = load i64, i64* %RBP.i, align 8
  %6795 = add i64 %6794, -264
  %6796 = load i64, i64* %435, align 8
  %6797 = add i64 %6793, 9
  store i64 %6797, i64* %3, align 8
  %6798 = inttoptr i64 %6795 to i64*
  store i64 %6796, i64* %6798, align 8
  %6799 = load i64, i64* %3, align 8
  %6800 = load i32, i32* %EAX.i1800, align 8
  %6801 = sext i32 %6800 to i64
  %6802 = lshr i64 %6801, 32
  store i64 %6802, i64* %RDX.i1786, align 8
  %6803 = load i64, i64* %RBP.i, align 8
  %6804 = add i64 %6803, -252
  %6805 = add i64 %6799, 7
  store i64 %6805, i64* %3, align 8
  %6806 = inttoptr i64 %6804 to i32*
  %6807 = load i32, i32* %6806, align 4
  %6808 = zext i32 %6807 to i64
  store i64 %6808, i64* %RDI.i1334, align 8
  %6809 = add i64 %6799, 9
  store i64 %6809, i64* %3, align 8
  %6810 = zext i32 %6800 to i64
  %6811 = sext i32 %6807 to i64
  %6812 = shl nuw i64 %6802, 32
  %6813 = or i64 %6812, %6810
  %6814 = sdiv i64 %6813, %6811
  %6815 = shl i64 %6814, 32
  %6816 = ashr exact i64 %6815, 32
  %6817 = icmp eq i64 %6814, %6816
  br i1 %6817, label %6820, label %6818

; <label>:6818:                                   ; preds = %block_.L_47a639
  %6819 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6809, %struct.Memory* %MEMORY.23)
  %.pre229 = load i64, i64* %RBP.i, align 8
  %.pre230 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit445

; <label>:6820:                                   ; preds = %block_.L_47a639
  %6821 = srem i64 %6813, %6811
  %6822 = and i64 %6814, 4294967295
  store i64 %6822, i64* %RAX.i2624, align 8
  %6823 = and i64 %6821, 4294967295
  store i64 %6823, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__edi.exit445

routine_idivl__edi.exit445:                       ; preds = %6820, %6818
  %6824 = phi i64 [ %.pre230, %6818 ], [ %6809, %6820 ]
  %6825 = phi i64 [ %.pre229, %6818 ], [ %6803, %6820 ]
  %6826 = phi %struct.Memory* [ %6819, %6818 ], [ %MEMORY.23, %6820 ]
  %6827 = add i64 %6825, -52
  %6828 = add i64 %6824, 4
  store i64 %6828, i64* %3, align 8
  %6829 = inttoptr i64 %6827 to i32*
  %6830 = load i32, i32* %6829, align 4
  %6831 = sext i32 %6830 to i64
  %6832 = shl nsw i64 %6831, 6
  store i64 %6832, i64* %R8.i1327, align 8
  %.lobit148 = lshr i32 %6830, 31
  %6833 = trunc i32 %.lobit148 to i8
  store i8 %6833, i8* %39, align 1
  %6834 = trunc i64 %6832 to i32
  %6835 = and i32 %6834, 192
  %6836 = tail call i32 @llvm.ctpop.i32(i32 %6835)
  %6837 = trunc i32 %6836 to i8
  %6838 = and i8 %6837, 1
  %6839 = xor i8 %6838, 1
  store i8 %6839, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %6840 = icmp eq i32 %6830, 0
  %6841 = zext i1 %6840 to i8
  store i8 %6841, i8* %54, align 1
  %6842 = lshr i64 %6831, 57
  %6843 = trunc i64 %6842 to i8
  %6844 = and i8 %6843, 1
  store i8 %6844, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %6845 = add i64 %6825, -264
  %6846 = add i64 %6824, 15
  store i64 %6846, i64* %3, align 8
  %6847 = inttoptr i64 %6845 to i64*
  %6848 = load i64, i64* %6847, align 8
  %6849 = add i64 %6832, %6848
  store i64 %6849, i64* %R9.i1322, align 8
  %6850 = icmp ult i64 %6849, %6848
  %6851 = icmp ult i64 %6849, %6832
  %6852 = or i1 %6850, %6851
  %6853 = zext i1 %6852 to i8
  store i8 %6853, i8* %39, align 1
  %6854 = trunc i64 %6849 to i32
  %6855 = and i32 %6854, 255
  %6856 = tail call i32 @llvm.ctpop.i32(i32 %6855)
  %6857 = trunc i32 %6856 to i8
  %6858 = and i8 %6857, 1
  %6859 = xor i8 %6858, 1
  store i8 %6859, i8* %46, align 1
  %6860 = xor i64 %6848, %6849
  %6861 = lshr i64 %6860, 4
  %6862 = trunc i64 %6861 to i8
  %6863 = and i8 %6862, 1
  store i8 %6863, i8* %51, align 1
  %6864 = icmp eq i64 %6849, 0
  %6865 = zext i1 %6864 to i8
  store i8 %6865, i8* %54, align 1
  %6866 = lshr i64 %6849, 63
  %6867 = trunc i64 %6866 to i8
  store i8 %6867, i8* %57, align 1
  %6868 = lshr i64 %6848, 63
  %6869 = lshr i64 %6831, 57
  %6870 = and i64 %6869, 1
  %6871 = xor i64 %6866, %6868
  %6872 = xor i64 %6866, %6870
  %6873 = add nuw nsw i64 %6871, %6872
  %6874 = icmp eq i64 %6873, 2
  %6875 = zext i1 %6874 to i8
  store i8 %6875, i8* %63, align 1
  %6876 = add i64 %6825, -48
  %6877 = add i64 %6824, 22
  store i64 %6877, i64* %3, align 8
  %6878 = inttoptr i64 %6876 to i32*
  %6879 = load i32, i32* %6878, align 4
  %6880 = sext i32 %6879 to i64
  %6881 = shl nsw i64 %6880, 4
  store i64 %6881, i64* %R8.i1327, align 8
  %6882 = add i64 %6881, %6849
  store i64 %6882, i64* %R9.i1322, align 8
  %6883 = icmp ult i64 %6882, %6849
  %6884 = icmp ult i64 %6882, %6881
  %6885 = or i1 %6883, %6884
  %6886 = zext i1 %6885 to i8
  store i8 %6886, i8* %39, align 1
  %6887 = trunc i64 %6882 to i32
  %6888 = and i32 %6887, 255
  %6889 = tail call i32 @llvm.ctpop.i32(i32 %6888)
  %6890 = trunc i32 %6889 to i8
  %6891 = and i8 %6890, 1
  %6892 = xor i8 %6891, 1
  store i8 %6892, i8* %46, align 1
  %6893 = xor i64 %6881, %6849
  %6894 = xor i64 %6893, %6882
  %6895 = lshr i64 %6894, 4
  %6896 = trunc i64 %6895 to i8
  %6897 = and i8 %6896, 1
  store i8 %6897, i8* %51, align 1
  %6898 = icmp eq i64 %6882, 0
  %6899 = zext i1 %6898 to i8
  store i8 %6899, i8* %54, align 1
  %6900 = lshr i64 %6882, 63
  %6901 = trunc i64 %6900 to i8
  store i8 %6901, i8* %57, align 1
  %6902 = lshr i64 %6880, 59
  %6903 = and i64 %6902, 1
  %6904 = xor i64 %6900, %6866
  %6905 = xor i64 %6900, %6903
  %6906 = add nuw nsw i64 %6904, %6905
  %6907 = icmp eq i64 %6906, 2
  %6908 = zext i1 %6907 to i8
  store i8 %6908, i8* %63, align 1
  %6909 = load i64, i64* %RBP.i, align 8
  %6910 = add i64 %6909, -44
  %6911 = add i64 %6824, 33
  store i64 %6911, i64* %3, align 8
  %6912 = inttoptr i64 %6910 to i32*
  %6913 = load i32, i32* %6912, align 4
  %6914 = sext i32 %6913 to i64
  store i64 %6914, i64* %R8.i1327, align 8
  %6915 = shl nsw i64 %6914, 2
  %6916 = add i64 %6915, %6882
  %6917 = load i32, i32* %EAX.i1800, align 4
  %6918 = add i64 %6824, 37
  store i64 %6918, i64* %3, align 8
  %6919 = inttoptr i64 %6916 to i32*
  store i32 %6917, i32* %6919, align 4
  %6920 = load i64, i64* %RBP.i, align 8
  %6921 = add i64 %6920, -52
  %6922 = load i64, i64* %3, align 8
  %6923 = add i64 %6922, 4
  store i64 %6923, i64* %3, align 8
  %6924 = inttoptr i64 %6921 to i32*
  %6925 = load i32, i32* %6924, align 4
  %6926 = sext i32 %6925 to i64
  %6927 = shl nsw i64 %6926, 6
  store i64 %6927, i64* %R8.i1327, align 8
  %6928 = load i64, i64* %RCX.i1406, align 8
  %6929 = add i64 %6927, %6928
  store i64 %6929, i64* %RCX.i1406, align 8
  %6930 = icmp ult i64 %6929, %6928
  %6931 = icmp ult i64 %6929, %6927
  %6932 = or i1 %6930, %6931
  %6933 = zext i1 %6932 to i8
  store i8 %6933, i8* %39, align 1
  %6934 = trunc i64 %6929 to i32
  %6935 = and i32 %6934, 255
  %6936 = tail call i32 @llvm.ctpop.i32(i32 %6935)
  %6937 = trunc i32 %6936 to i8
  %6938 = and i8 %6937, 1
  %6939 = xor i8 %6938, 1
  store i8 %6939, i8* %46, align 1
  %6940 = xor i64 %6928, %6929
  %6941 = lshr i64 %6940, 4
  %6942 = trunc i64 %6941 to i8
  %6943 = and i8 %6942, 1
  store i8 %6943, i8* %51, align 1
  %6944 = icmp eq i64 %6929, 0
  %6945 = zext i1 %6944 to i8
  store i8 %6945, i8* %54, align 1
  %6946 = lshr i64 %6929, 63
  %6947 = trunc i64 %6946 to i8
  store i8 %6947, i8* %57, align 1
  %6948 = lshr i64 %6928, 63
  %6949 = lshr i64 %6926, 57
  %6950 = and i64 %6949, 1
  %6951 = xor i64 %6946, %6948
  %6952 = xor i64 %6946, %6950
  %6953 = add nuw nsw i64 %6951, %6952
  %6954 = icmp eq i64 %6953, 2
  %6955 = zext i1 %6954 to i8
  store i8 %6955, i8* %63, align 1
  %6956 = add i64 %6920, -48
  %6957 = add i64 %6922, 15
  store i64 %6957, i64* %3, align 8
  %6958 = inttoptr i64 %6956 to i32*
  %6959 = load i32, i32* %6958, align 4
  %6960 = sext i32 %6959 to i64
  %6961 = shl nsw i64 %6960, 4
  store i64 %6961, i64* %R8.i1327, align 8
  %6962 = add i64 %6961, %6929
  store i64 %6962, i64* %RCX.i1406, align 8
  %6963 = icmp ult i64 %6962, %6929
  %6964 = icmp ult i64 %6962, %6961
  %6965 = or i1 %6963, %6964
  %6966 = zext i1 %6965 to i8
  store i8 %6966, i8* %39, align 1
  %6967 = trunc i64 %6962 to i32
  %6968 = and i32 %6967, 255
  %6969 = tail call i32 @llvm.ctpop.i32(i32 %6968)
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = xor i8 %6971, 1
  store i8 %6972, i8* %46, align 1
  %6973 = xor i64 %6961, %6929
  %6974 = xor i64 %6973, %6962
  %6975 = lshr i64 %6974, 4
  %6976 = trunc i64 %6975 to i8
  %6977 = and i8 %6976, 1
  store i8 %6977, i8* %51, align 1
  %6978 = icmp eq i64 %6962, 0
  %6979 = zext i1 %6978 to i8
  store i8 %6979, i8* %54, align 1
  %6980 = lshr i64 %6962, 63
  %6981 = trunc i64 %6980 to i8
  store i8 %6981, i8* %57, align 1
  %6982 = lshr i64 %6960, 59
  %6983 = and i64 %6982, 1
  %6984 = xor i64 %6980, %6946
  %6985 = xor i64 %6980, %6983
  %6986 = add nuw nsw i64 %6984, %6985
  %6987 = icmp eq i64 %6986, 2
  %6988 = zext i1 %6987 to i8
  store i8 %6988, i8* %63, align 1
  %6989 = load i64, i64* %RBP.i, align 8
  %6990 = add i64 %6989, -44
  %6991 = add i64 %6922, 26
  store i64 %6991, i64* %3, align 8
  %6992 = inttoptr i64 %6990 to i32*
  %6993 = load i32, i32* %6992, align 4
  %6994 = sext i32 %6993 to i64
  store i64 %6994, i64* %R8.i1327, align 8
  %6995 = shl nsw i64 %6994, 2
  %6996 = add i64 %6995, %6962
  %6997 = add i64 %6922, 30
  store i64 %6997, i64* %3, align 8
  %6998 = inttoptr i64 %6996 to i32*
  %6999 = load i32, i32* %6998, align 4
  %7000 = zext i32 %6999 to i64
  store i64 %7000, i64* %RAX.i2624, align 8
  %7001 = load i16, i16* bitcast (%G_0x6d4528_type* @G_0x6d4528 to i16*), align 8
  %7002 = sext i16 %7001 to i64
  %7003 = and i64 %7002, 4294967295
  store i64 %7003, i64* %437, align 8
  %7004 = sext i16 %7001 to i32
  store i8 0, i8* %39, align 1
  %7005 = and i32 %7004, 255
  %7006 = tail call i32 @llvm.ctpop.i32(i32 %7005)
  %7007 = trunc i32 %7006 to i8
  %7008 = and i8 %7007, 1
  %7009 = xor i8 %7008, 1
  store i8 %7009, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %7010 = icmp eq i16 %7001, 0
  %7011 = zext i1 %7010 to i8
  store i8 %7011, i8* %54, align 1
  %7012 = lshr i32 %7004, 31
  %7013 = trunc i32 %7012 to i8
  store i8 %7013, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %7014 = add i64 %6989, -268
  %7015 = add i64 %6922, 49
  store i64 %7015, i64* %3, align 8
  %7016 = inttoptr i64 %7014 to i32*
  store i32 %6999, i32* %7016, align 4
  %7017 = load i64, i64* %3, align 8
  %7018 = load i8, i8* %54, align 1
  %7019 = icmp ne i8 %7018, 0
  %.v276 = select i1 %7019, i64 29, i64 6
  %7020 = add i64 %7017, %.v276
  %cmpBr_47a6c7 = icmp eq i8 %7018, 1
  %7021 = load i64, i64* %RBP.i, align 8
  %7022 = add i64 %7021, -56
  %7023 = add i64 %7020, 4
  store i64 %7023, i64* %3, align 8
  %7024 = inttoptr i64 %7022 to i32*
  %7025 = load i32, i32* %7024, align 4
  %7026 = sext i32 %7025 to i64
  store i64 %7026, i64* %RAX.i2624, align 8
  %7027 = shl nsw i64 %7026, 1
  br i1 %cmpBr_47a6c7, label %block_.L_47a6e4, label %block_47a6cd

block_47a6cd:                                     ; preds = %routine_idivl__edi.exit445
  %7028 = add nsw i64 %7027, 4952640
  %7029 = add i64 %7020, 12
  store i64 %7029, i64* %3, align 8
  %7030 = inttoptr i64 %7028 to i16*
  %7031 = load i16, i16* %7030, align 2
  %7032 = sext i16 %7031 to i64
  %7033 = and i64 %7032, 4294967295
  store i64 %7033, i64* %RCX.i1406, align 8
  %7034 = add i64 %7021, -272
  %7035 = sext i16 %7031 to i32
  %7036 = add i64 %7020, 18
  store i64 %7036, i64* %3, align 8
  %7037 = inttoptr i64 %7034 to i32*
  store i32 %7035, i32* %7037, align 4
  %7038 = load i64, i64* %3, align 8
  %7039 = add i64 %7038, 23
  store i64 %7039, i64* %3, align 8
  br label %block_.L_47a6f6

block_.L_47a6e4:                                  ; preds = %routine_idivl__edi.exit445
  %7040 = add nsw i64 %7027, 7151680
  %7041 = add i64 %7020, 12
  store i64 %7041, i64* %3, align 8
  %7042 = inttoptr i64 %7040 to i16*
  %7043 = load i16, i16* %7042, align 2
  %7044 = sext i16 %7043 to i64
  %7045 = and i64 %7044, 4294967295
  store i64 %7045, i64* %RCX.i1406, align 8
  %7046 = add i64 %7021, -272
  %7047 = sext i16 %7043 to i32
  %7048 = add i64 %7020, 18
  store i64 %7048, i64* %3, align 8
  %7049 = inttoptr i64 %7046 to i32*
  store i32 %7047, i32* %7049, align 4
  %.pre231 = load i64, i64* %3, align 8
  br label %block_.L_47a6f6

block_.L_47a6f6:                                  ; preds = %block_.L_47a6e4, %block_47a6cd
  %7050 = phi i64 [ %.pre231, %block_.L_47a6e4 ], [ %7039, %block_47a6cd ]
  %7051 = load i64, i64* %RBP.i, align 8
  %7052 = add i64 %7051, -272
  %7053 = add i64 %7050, 6
  store i64 %7053, i64* %3, align 8
  %7054 = inttoptr i64 %7052 to i32*
  %7055 = load i32, i32* %7054, align 4
  %7056 = zext i32 %7055 to i64
  store i64 %7056, i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RCX.i1406, align 8
  %7057 = add i64 %7051, -268
  %7058 = add i64 %7050, 22
  store i64 %7058, i64* %3, align 8
  %7059 = inttoptr i64 %7057 to i32*
  %7060 = load i32, i32* %7059, align 4
  %7061 = sext i32 %7060 to i64
  %7062 = sext i32 %7055 to i64
  %7063 = mul nsw i64 %7062, %7061
  %7064 = trunc i64 %7063 to i32
  %7065 = and i64 %7063, 4294967295
  store i64 %7065, i64* %435, align 8
  %7066 = shl i64 %7063, 32
  %7067 = ashr exact i64 %7066, 32
  %7068 = icmp ne i64 %7067, %7063
  %7069 = zext i1 %7068 to i8
  store i8 %7069, i8* %39, align 1
  %7070 = and i32 %7064, 255
  %7071 = tail call i32 @llvm.ctpop.i32(i32 %7070)
  %7072 = trunc i32 %7071 to i8
  %7073 = and i8 %7072, 1
  %7074 = xor i8 %7073, 1
  store i8 %7074, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %7075 = lshr i32 %7064, 31
  %7076 = trunc i32 %7075 to i8
  store i8 %7076, i8* %57, align 1
  store i8 %7069, i8* %63, align 1
  %7077 = add i64 %7051, -52
  %7078 = add i64 %7050, 29
  store i64 %7078, i64* %3, align 8
  %7079 = inttoptr i64 %7077 to i32*
  %7080 = load i32, i32* %7079, align 4
  %7081 = sext i32 %7080 to i64
  %7082 = shl nsw i64 %7081, 6
  store i64 %7082, i64* %RSI.i1382, align 8
  %7083 = add i64 %7082, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  store i64 %7083, i64* %RCX.i1406, align 8
  %7084 = icmp ult i64 %7083, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %7085 = icmp ult i64 %7083, %7082
  %7086 = or i1 %7084, %7085
  %7087 = zext i1 %7086 to i8
  store i8 %7087, i8* %39, align 1
  %7088 = trunc i64 %7083 to i32
  %7089 = and i32 %7088, 248
  %7090 = tail call i32 @llvm.ctpop.i32(i32 %7089)
  %7091 = trunc i32 %7090 to i8
  %7092 = and i8 %7091, 1
  %7093 = xor i8 %7092, 1
  store i8 %7093, i8* %46, align 1
  %7094 = xor i64 %7083, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %7095 = lshr i64 %7094, 4
  %7096 = trunc i64 %7095 to i8
  %7097 = and i8 %7096, 1
  store i8 %7097, i8* %51, align 1
  %7098 = icmp eq i64 %7083, 0
  %7099 = zext i1 %7098 to i8
  store i8 %7099, i8* %54, align 1
  %7100 = lshr i64 %7083, 63
  %7101 = trunc i64 %7100 to i8
  store i8 %7101, i8* %57, align 1
  %7102 = lshr i64 %7081, 57
  %7103 = and i64 %7102, 1
  %7104 = xor i64 %7100, lshr (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 63)
  %7105 = xor i64 %7100, %7103
  %7106 = add nuw nsw i64 %7104, %7105
  %7107 = icmp eq i64 %7106, 2
  %7108 = zext i1 %7107 to i8
  store i8 %7108, i8* %63, align 1
  %7109 = load i64, i64* %RBP.i, align 8
  %7110 = add i64 %7109, -48
  %7111 = add i64 %7050, 40
  store i64 %7111, i64* %3, align 8
  %7112 = inttoptr i64 %7110 to i32*
  %7113 = load i32, i32* %7112, align 4
  %7114 = sext i32 %7113 to i64
  %7115 = shl nsw i64 %7114, 4
  store i64 %7115, i64* %RSI.i1382, align 8
  %7116 = add i64 %7115, %7083
  store i64 %7116, i64* %RCX.i1406, align 8
  %7117 = icmp ult i64 %7116, %7083
  %7118 = icmp ult i64 %7116, %7115
  %7119 = or i1 %7117, %7118
  %7120 = zext i1 %7119 to i8
  store i8 %7120, i8* %39, align 1
  %7121 = trunc i64 %7116 to i32
  %7122 = and i32 %7121, 248
  %7123 = tail call i32 @llvm.ctpop.i32(i32 %7122)
  %7124 = trunc i32 %7123 to i8
  %7125 = and i8 %7124, 1
  %7126 = xor i8 %7125, 1
  store i8 %7126, i8* %46, align 1
  %7127 = xor i64 %7115, %7083
  %7128 = xor i64 %7127, %7116
  %7129 = lshr i64 %7128, 4
  %7130 = trunc i64 %7129 to i8
  %7131 = and i8 %7130, 1
  store i8 %7131, i8* %51, align 1
  %7132 = icmp eq i64 %7116, 0
  %7133 = zext i1 %7132 to i8
  store i8 %7133, i8* %54, align 1
  %7134 = lshr i64 %7116, 63
  %7135 = trunc i64 %7134 to i8
  store i8 %7135, i8* %57, align 1
  %7136 = lshr i64 %7114, 59
  %7137 = and i64 %7136, 1
  %7138 = xor i64 %7134, %7100
  %7139 = xor i64 %7134, %7137
  %7140 = add nuw nsw i64 %7138, %7139
  %7141 = icmp eq i64 %7140, 2
  %7142 = zext i1 %7141 to i8
  store i8 %7142, i8* %63, align 1
  %7143 = add i64 %7109, -44
  %7144 = add i64 %7050, 51
  store i64 %7144, i64* %3, align 8
  %7145 = inttoptr i64 %7143 to i32*
  %7146 = load i32, i32* %7145, align 4
  %7147 = sext i32 %7146 to i64
  store i64 %7147, i64* %RSI.i1382, align 8
  %7148 = shl nsw i64 %7147, 2
  %7149 = add i64 %7148, %7116
  %7150 = load i32, i32* %434, align 4
  %7151 = add i64 %7050, 54
  store i64 %7151, i64* %3, align 8
  %7152 = inttoptr i64 %7149 to i32*
  store i32 %7150, i32* %7152, align 4
  %.pre232 = load i64, i64* %3, align 8
  br label %block_.L_47a72c

block_.L_47a72c:                                  ; preds = %block_.L_47a6f6, %block_47a52a
  %7153 = phi i64 [ %.pre232, %block_.L_47a6f6 ], [ %6648, %block_47a52a ]
  %MEMORY.26 = phi %struct.Memory* [ %6826, %block_.L_47a6f6 ], [ %MEMORY.23, %block_47a52a ]
  %7154 = load i64, i64* %RBP.i, align 8
  %7155 = add i64 %7154, -60
  %7156 = add i64 %7153, 4
  store i64 %7156, i64* %3, align 8
  %7157 = inttoptr i64 %7155 to i32*
  %7158 = load i32, i32* %7157, align 4
  store i8 0, i8* %39, align 1
  %7159 = and i32 %7158, 255
  %7160 = tail call i32 @llvm.ctpop.i32(i32 %7159)
  %7161 = trunc i32 %7160 to i8
  %7162 = and i8 %7161, 1
  %7163 = xor i8 %7162, 1
  store i8 %7163, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %7164 = icmp eq i32 %7158, 0
  %7165 = zext i1 %7164 to i8
  store i8 %7165, i8* %54, align 1
  %7166 = lshr i32 %7158, 31
  %7167 = trunc i32 %7166 to i8
  store i8 %7167, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v255 = select i1 %7164, i64 10, i64 175
  %7168 = add i64 %7153, %.v255
  %7169 = add i64 %7168, 10
  store i64 %7169, i64* %3, align 8
  br i1 %7164, label %block_47a736, label %block_.L_47a7db

block_47a736:                                     ; preds = %block_.L_47a72c
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX.i2624, align 8
  store i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64* %RCX.i1788, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RDX.i1786, align 8
  store i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64* %RSI.i1784, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %449, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  %7170 = add i64 %7154, -52
  %7171 = add i64 %7168, 44
  store i64 %7171, i64* %3, align 8
  %7172 = inttoptr i64 %7170 to i32*
  %7173 = load i32, i32* %7172, align 4
  %7174 = sext i32 %7173 to i64
  %7175 = shl nsw i64 %7174, 6
  store i64 %7175, i64* %RDI.i1781, align 8
  %7176 = add i64 %7175, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  store i64 %7176, i64* %RDX.i1786, align 8
  %7177 = icmp ult i64 %7176, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  %7178 = icmp ult i64 %7176, %7175
  %7179 = or i1 %7177, %7178
  %7180 = zext i1 %7179 to i8
  store i8 %7180, i8* %39, align 1
  %7181 = trunc i64 %7176 to i32
  %7182 = and i32 %7181, 248
  %7183 = tail call i32 @llvm.ctpop.i32(i32 %7182)
  %7184 = trunc i32 %7183 to i8
  %7185 = and i8 %7184, 1
  %7186 = xor i8 %7185, 1
  store i8 %7186, i8* %46, align 1
  %7187 = xor i64 %7176, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  %7188 = lshr i64 %7187, 4
  %7189 = trunc i64 %7188 to i8
  %7190 = and i8 %7189, 1
  store i8 %7190, i8* %51, align 1
  %7191 = icmp eq i64 %7176, 0
  %7192 = zext i1 %7191 to i8
  store i8 %7192, i8* %54, align 1
  %7193 = lshr i64 %7176, 63
  %7194 = trunc i64 %7193 to i8
  store i8 %7194, i8* %57, align 1
  %7195 = lshr i64 %7174, 57
  %7196 = and i64 %7195, 1
  %7197 = xor i64 %7193, lshr (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 63)
  %7198 = xor i64 %7193, %7196
  %7199 = add nuw nsw i64 %7197, %7198
  %7200 = icmp eq i64 %7199, 2
  %7201 = zext i1 %7200 to i8
  store i8 %7201, i8* %63, align 1
  %7202 = add i64 %7154, -48
  %7203 = add i64 %7168, 55
  store i64 %7203, i64* %3, align 8
  %7204 = inttoptr i64 %7202 to i32*
  %7205 = load i32, i32* %7204, align 4
  %7206 = sext i32 %7205 to i64
  %7207 = shl nsw i64 %7206, 4
  store i64 %7207, i64* %RDI.i1781, align 8
  %7208 = add i64 %7207, %7176
  store i64 %7208, i64* %RDX.i1786, align 8
  %7209 = icmp ult i64 %7208, %7176
  %7210 = icmp ult i64 %7208, %7207
  %7211 = or i1 %7209, %7210
  %7212 = zext i1 %7211 to i8
  store i8 %7212, i8* %39, align 1
  %7213 = trunc i64 %7208 to i32
  %7214 = and i32 %7213, 248
  %7215 = tail call i32 @llvm.ctpop.i32(i32 %7214)
  %7216 = trunc i32 %7215 to i8
  %7217 = and i8 %7216, 1
  %7218 = xor i8 %7217, 1
  store i8 %7218, i8* %46, align 1
  %7219 = xor i64 %7207, %7176
  %7220 = xor i64 %7219, %7208
  %7221 = lshr i64 %7220, 4
  %7222 = trunc i64 %7221 to i8
  %7223 = and i8 %7222, 1
  store i8 %7223, i8* %51, align 1
  %7224 = icmp eq i64 %7208, 0
  %7225 = zext i1 %7224 to i8
  store i8 %7225, i8* %54, align 1
  %7226 = lshr i64 %7208, 63
  %7227 = trunc i64 %7226 to i8
  store i8 %7227, i8* %57, align 1
  %7228 = lshr i64 %7206, 59
  %7229 = and i64 %7228, 1
  %7230 = xor i64 %7226, %7193
  %7231 = xor i64 %7226, %7229
  %7232 = add nuw nsw i64 %7230, %7231
  %7233 = icmp eq i64 %7232, 2
  %7234 = zext i1 %7233 to i8
  store i8 %7234, i8* %63, align 1
  %7235 = load i64, i64* %RBP.i, align 8
  %7236 = add i64 %7235, -44
  %7237 = add i64 %7168, 66
  store i64 %7237, i64* %3, align 8
  %7238 = inttoptr i64 %7236 to i32*
  %7239 = load i32, i32* %7238, align 4
  %7240 = sext i32 %7239 to i64
  store i64 %7240, i64* %RDI.i1781, align 8
  %7241 = shl nsw i64 %7240, 2
  %7242 = add i64 %7241, %7208
  %7243 = add i64 %7168, 70
  store i64 %7243, i64* %3, align 8
  %7244 = inttoptr i64 %7242 to i32*
  %7245 = load i32, i32* %7244, align 4
  %7246 = zext i32 %7245 to i64
  store i64 %7246, i64* %430, align 8
  %7247 = add i64 %7235, -52
  %7248 = add i64 %7168, 74
  store i64 %7248, i64* %3, align 8
  %7249 = inttoptr i64 %7247 to i32*
  %7250 = load i32, i32* %7249, align 4
  %7251 = sext i32 %7250 to i64
  %7252 = shl nsw i64 %7251, 6
  store i64 %7252, i64* %RDX.i1786, align 8
  %7253 = load i64, i64* %RSI.i1784, align 8
  %7254 = add i64 %7252, %7253
  store i64 %7254, i64* %RSI.i1784, align 8
  %7255 = icmp ult i64 %7254, %7253
  %7256 = icmp ult i64 %7254, %7252
  %7257 = or i1 %7255, %7256
  %7258 = zext i1 %7257 to i8
  store i8 %7258, i8* %39, align 1
  %7259 = trunc i64 %7254 to i32
  %7260 = and i32 %7259, 255
  %7261 = tail call i32 @llvm.ctpop.i32(i32 %7260)
  %7262 = trunc i32 %7261 to i8
  %7263 = and i8 %7262, 1
  %7264 = xor i8 %7263, 1
  store i8 %7264, i8* %46, align 1
  %7265 = xor i64 %7253, %7254
  %7266 = lshr i64 %7265, 4
  %7267 = trunc i64 %7266 to i8
  %7268 = and i8 %7267, 1
  store i8 %7268, i8* %51, align 1
  %7269 = icmp eq i64 %7254, 0
  %7270 = zext i1 %7269 to i8
  store i8 %7270, i8* %54, align 1
  %7271 = lshr i64 %7254, 63
  %7272 = trunc i64 %7271 to i8
  store i8 %7272, i8* %57, align 1
  %7273 = lshr i64 %7253, 63
  %7274 = lshr i64 %7251, 57
  %7275 = and i64 %7274, 1
  %7276 = xor i64 %7271, %7273
  %7277 = xor i64 %7271, %7275
  %7278 = add nuw nsw i64 %7276, %7277
  %7279 = icmp eq i64 %7278, 2
  %7280 = zext i1 %7279 to i8
  store i8 %7280, i8* %63, align 1
  %7281 = add i64 %7235, -48
  %7282 = add i64 %7168, 85
  store i64 %7282, i64* %3, align 8
  %7283 = inttoptr i64 %7281 to i32*
  %7284 = load i32, i32* %7283, align 4
  %7285 = sext i32 %7284 to i64
  %7286 = shl nsw i64 %7285, 4
  store i64 %7286, i64* %RDX.i1786, align 8
  %7287 = add i64 %7286, %7254
  store i64 %7287, i64* %RSI.i1784, align 8
  %7288 = icmp ult i64 %7287, %7254
  %7289 = icmp ult i64 %7287, %7286
  %7290 = or i1 %7288, %7289
  %7291 = zext i1 %7290 to i8
  store i8 %7291, i8* %39, align 1
  %7292 = trunc i64 %7287 to i32
  %7293 = and i32 %7292, 255
  %7294 = tail call i32 @llvm.ctpop.i32(i32 %7293)
  %7295 = trunc i32 %7294 to i8
  %7296 = and i8 %7295, 1
  %7297 = xor i8 %7296, 1
  store i8 %7297, i8* %46, align 1
  %7298 = xor i64 %7286, %7254
  %7299 = xor i64 %7298, %7287
  %7300 = lshr i64 %7299, 4
  %7301 = trunc i64 %7300 to i8
  %7302 = and i8 %7301, 1
  store i8 %7302, i8* %51, align 1
  %7303 = icmp eq i64 %7287, 0
  %7304 = zext i1 %7303 to i8
  store i8 %7304, i8* %54, align 1
  %7305 = lshr i64 %7287, 63
  %7306 = trunc i64 %7305 to i8
  store i8 %7306, i8* %57, align 1
  %7307 = lshr i64 %7285, 59
  %7308 = and i64 %7307, 1
  %7309 = xor i64 %7305, %7271
  %7310 = xor i64 %7305, %7308
  %7311 = add nuw nsw i64 %7309, %7310
  %7312 = icmp eq i64 %7311, 2
  %7313 = zext i1 %7312 to i8
  store i8 %7313, i8* %63, align 1
  %7314 = load i64, i64* %RBP.i, align 8
  %7315 = add i64 %7314, -44
  %7316 = add i64 %7168, 96
  store i64 %7316, i64* %3, align 8
  %7317 = inttoptr i64 %7315 to i32*
  %7318 = load i32, i32* %7317, align 4
  %7319 = sext i32 %7318 to i64
  store i64 %7319, i64* %RDX.i1786, align 8
  %7320 = shl nsw i64 %7319, 2
  %7321 = add i64 %7320, %7287
  %7322 = load i32, i32* %R8D.i1761, align 4
  %7323 = add i64 %7168, 100
  store i64 %7323, i64* %3, align 8
  %7324 = inttoptr i64 %7321 to i32*
  store i32 %7322, i32* %7324, align 4
  %7325 = load i64, i64* %RBP.i, align 8
  %7326 = add i64 %7325, -52
  %7327 = load i64, i64* %3, align 8
  %7328 = add i64 %7327, 4
  store i64 %7328, i64* %3, align 8
  %7329 = inttoptr i64 %7326 to i32*
  %7330 = load i32, i32* %7329, align 4
  %7331 = sext i32 %7330 to i64
  %7332 = shl nsw i64 %7331, 6
  store i64 %7332, i64* %RDX.i1786, align 8
  %7333 = load i64, i64* %RAX.i2624, align 8
  %7334 = add i64 %7332, %7333
  store i64 %7334, i64* %RAX.i2624, align 8
  %7335 = icmp ult i64 %7334, %7333
  %7336 = icmp ult i64 %7334, %7332
  %7337 = or i1 %7335, %7336
  %7338 = zext i1 %7337 to i8
  store i8 %7338, i8* %39, align 1
  %7339 = trunc i64 %7334 to i32
  %7340 = and i32 %7339, 255
  %7341 = tail call i32 @llvm.ctpop.i32(i32 %7340)
  %7342 = trunc i32 %7341 to i8
  %7343 = and i8 %7342, 1
  %7344 = xor i8 %7343, 1
  store i8 %7344, i8* %46, align 1
  %7345 = xor i64 %7333, %7334
  %7346 = lshr i64 %7345, 4
  %7347 = trunc i64 %7346 to i8
  %7348 = and i8 %7347, 1
  store i8 %7348, i8* %51, align 1
  %7349 = icmp eq i64 %7334, 0
  %7350 = zext i1 %7349 to i8
  store i8 %7350, i8* %54, align 1
  %7351 = lshr i64 %7334, 63
  %7352 = trunc i64 %7351 to i8
  store i8 %7352, i8* %57, align 1
  %7353 = lshr i64 %7333, 63
  %7354 = lshr i64 %7331, 57
  %7355 = and i64 %7354, 1
  %7356 = xor i64 %7351, %7353
  %7357 = xor i64 %7351, %7355
  %7358 = add nuw nsw i64 %7356, %7357
  %7359 = icmp eq i64 %7358, 2
  %7360 = zext i1 %7359 to i8
  store i8 %7360, i8* %63, align 1
  %7361 = add i64 %7325, -48
  %7362 = add i64 %7327, 15
  store i64 %7362, i64* %3, align 8
  %7363 = inttoptr i64 %7361 to i32*
  %7364 = load i32, i32* %7363, align 4
  %7365 = sext i32 %7364 to i64
  %7366 = shl nsw i64 %7365, 4
  store i64 %7366, i64* %RDX.i1786, align 8
  %7367 = add i64 %7366, %7334
  store i64 %7367, i64* %RAX.i2624, align 8
  %7368 = icmp ult i64 %7367, %7334
  %7369 = icmp ult i64 %7367, %7366
  %7370 = or i1 %7368, %7369
  %7371 = zext i1 %7370 to i8
  store i8 %7371, i8* %39, align 1
  %7372 = trunc i64 %7367 to i32
  %7373 = and i32 %7372, 255
  %7374 = tail call i32 @llvm.ctpop.i32(i32 %7373)
  %7375 = trunc i32 %7374 to i8
  %7376 = and i8 %7375, 1
  %7377 = xor i8 %7376, 1
  store i8 %7377, i8* %46, align 1
  %7378 = xor i64 %7366, %7334
  %7379 = xor i64 %7378, %7367
  %7380 = lshr i64 %7379, 4
  %7381 = trunc i64 %7380 to i8
  %7382 = and i8 %7381, 1
  store i8 %7382, i8* %51, align 1
  %7383 = icmp eq i64 %7367, 0
  %7384 = zext i1 %7383 to i8
  store i8 %7384, i8* %54, align 1
  %7385 = lshr i64 %7367, 63
  %7386 = trunc i64 %7385 to i8
  store i8 %7386, i8* %57, align 1
  %7387 = lshr i64 %7365, 59
  %7388 = and i64 %7387, 1
  %7389 = xor i64 %7385, %7351
  %7390 = xor i64 %7385, %7388
  %7391 = add nuw nsw i64 %7389, %7390
  %7392 = icmp eq i64 %7391, 2
  %7393 = zext i1 %7392 to i8
  store i8 %7393, i8* %63, align 1
  %7394 = load i64, i64* %RBP.i, align 8
  %7395 = add i64 %7394, -44
  %7396 = add i64 %7327, 26
  store i64 %7396, i64* %3, align 8
  %7397 = inttoptr i64 %7395 to i32*
  %7398 = load i32, i32* %7397, align 4
  %7399 = sext i32 %7398 to i64
  store i64 %7399, i64* %RDX.i1786, align 8
  %7400 = shl nsw i64 %7399, 2
  %7401 = add i64 %7400, %7367
  %7402 = add i64 %7327, 30
  store i64 %7402, i64* %3, align 8
  %7403 = inttoptr i64 %7401 to i32*
  %7404 = load i32, i32* %7403, align 4
  %7405 = zext i32 %7404 to i64
  store i64 %7405, i64* %430, align 8
  %7406 = add i64 %7394, -52
  %7407 = add i64 %7327, 34
  store i64 %7407, i64* %3, align 8
  %7408 = inttoptr i64 %7406 to i32*
  %7409 = load i32, i32* %7408, align 4
  %7410 = sext i32 %7409 to i64
  %7411 = shl nsw i64 %7410, 6
  store i64 %7411, i64* %RAX.i2624, align 8
  %7412 = load i64, i64* %RCX.i1788, align 8
  %7413 = add i64 %7411, %7412
  store i64 %7413, i64* %RCX.i1788, align 8
  %7414 = icmp ult i64 %7413, %7412
  %7415 = icmp ult i64 %7413, %7411
  %7416 = or i1 %7414, %7415
  %7417 = zext i1 %7416 to i8
  store i8 %7417, i8* %39, align 1
  %7418 = trunc i64 %7413 to i32
  %7419 = and i32 %7418, 255
  %7420 = tail call i32 @llvm.ctpop.i32(i32 %7419)
  %7421 = trunc i32 %7420 to i8
  %7422 = and i8 %7421, 1
  %7423 = xor i8 %7422, 1
  store i8 %7423, i8* %46, align 1
  %7424 = xor i64 %7412, %7413
  %7425 = lshr i64 %7424, 4
  %7426 = trunc i64 %7425 to i8
  %7427 = and i8 %7426, 1
  store i8 %7427, i8* %51, align 1
  %7428 = icmp eq i64 %7413, 0
  %7429 = zext i1 %7428 to i8
  store i8 %7429, i8* %54, align 1
  %7430 = lshr i64 %7413, 63
  %7431 = trunc i64 %7430 to i8
  store i8 %7431, i8* %57, align 1
  %7432 = lshr i64 %7412, 63
  %7433 = lshr i64 %7410, 57
  %7434 = and i64 %7433, 1
  %7435 = xor i64 %7430, %7432
  %7436 = xor i64 %7430, %7434
  %7437 = add nuw nsw i64 %7435, %7436
  %7438 = icmp eq i64 %7437, 2
  %7439 = zext i1 %7438 to i8
  store i8 %7439, i8* %63, align 1
  %7440 = add i64 %7394, -48
  %7441 = add i64 %7327, 45
  store i64 %7441, i64* %3, align 8
  %7442 = inttoptr i64 %7440 to i32*
  %7443 = load i32, i32* %7442, align 4
  %7444 = sext i32 %7443 to i64
  %7445 = shl nsw i64 %7444, 4
  store i64 %7445, i64* %RAX.i2624, align 8
  %7446 = add i64 %7445, %7413
  store i64 %7446, i64* %RCX.i1788, align 8
  %7447 = icmp ult i64 %7446, %7413
  %7448 = icmp ult i64 %7446, %7445
  %7449 = or i1 %7447, %7448
  %7450 = zext i1 %7449 to i8
  store i8 %7450, i8* %39, align 1
  %7451 = trunc i64 %7446 to i32
  %7452 = and i32 %7451, 255
  %7453 = tail call i32 @llvm.ctpop.i32(i32 %7452)
  %7454 = trunc i32 %7453 to i8
  %7455 = and i8 %7454, 1
  %7456 = xor i8 %7455, 1
  store i8 %7456, i8* %46, align 1
  %7457 = xor i64 %7445, %7413
  %7458 = xor i64 %7457, %7446
  %7459 = lshr i64 %7458, 4
  %7460 = trunc i64 %7459 to i8
  %7461 = and i8 %7460, 1
  store i8 %7461, i8* %51, align 1
  %7462 = icmp eq i64 %7446, 0
  %7463 = zext i1 %7462 to i8
  store i8 %7463, i8* %54, align 1
  %7464 = lshr i64 %7446, 63
  %7465 = trunc i64 %7464 to i8
  store i8 %7465, i8* %57, align 1
  %7466 = lshr i64 %7444, 59
  %7467 = and i64 %7466, 1
  %7468 = xor i64 %7464, %7430
  %7469 = xor i64 %7464, %7467
  %7470 = add nuw nsw i64 %7468, %7469
  %7471 = icmp eq i64 %7470, 2
  %7472 = zext i1 %7471 to i8
  store i8 %7472, i8* %63, align 1
  %7473 = load i64, i64* %RBP.i, align 8
  %7474 = add i64 %7473, -44
  %7475 = add i64 %7327, 56
  store i64 %7475, i64* %3, align 8
  %7476 = inttoptr i64 %7474 to i32*
  %7477 = load i32, i32* %7476, align 4
  %7478 = sext i32 %7477 to i64
  store i64 %7478, i64* %RAX.i2624, align 8
  %7479 = shl nsw i64 %7478, 2
  %7480 = add i64 %7479, %7446
  %7481 = load i32, i32* %R8D.i1761, align 4
  %7482 = add i64 %7327, 60
  store i64 %7482, i64* %3, align 8
  %7483 = inttoptr i64 %7480 to i32*
  store i32 %7481, i32* %7483, align 4
  %7484 = load i64, i64* %3, align 8
  %7485 = add i64 %7484, 368
  store i64 %7485, i64* %3, align 8
  br label %block_.L_47a946

block_.L_47a7db:                                  ; preds = %block_.L_47a72c
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RAX.i2624, align 8
  %7486 = add i64 %7154, -52
  %7487 = add i64 %7168, 14
  store i64 %7487, i64* %3, align 8
  %7488 = inttoptr i64 %7486 to i32*
  %7489 = load i32, i32* %7488, align 4
  %7490 = sext i32 %7489 to i64
  %7491 = shl nsw i64 %7490, 6
  store i64 %7491, i64* %RCX.i1406, align 8
  %7492 = add i64 %7491, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %7492, i64* %RAX.i2624, align 8
  %7493 = icmp ult i64 %7492, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %7494 = icmp ult i64 %7492, %7491
  %7495 = or i1 %7493, %7494
  %7496 = zext i1 %7495 to i8
  store i8 %7496, i8* %39, align 1
  %7497 = trunc i64 %7492 to i32
  %7498 = and i32 %7497, 248
  %7499 = tail call i32 @llvm.ctpop.i32(i32 %7498)
  %7500 = trunc i32 %7499 to i8
  %7501 = and i8 %7500, 1
  %7502 = xor i8 %7501, 1
  store i8 %7502, i8* %46, align 1
  %7503 = xor i64 %7492, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %7504 = lshr i64 %7503, 4
  %7505 = trunc i64 %7504 to i8
  %7506 = and i8 %7505, 1
  store i8 %7506, i8* %51, align 1
  %7507 = icmp eq i64 %7492, 0
  %7508 = zext i1 %7507 to i8
  store i8 %7508, i8* %54, align 1
  %7509 = lshr i64 %7492, 63
  %7510 = trunc i64 %7509 to i8
  store i8 %7510, i8* %57, align 1
  %7511 = lshr i64 %7490, 57
  %7512 = and i64 %7511, 1
  %7513 = xor i64 %7509, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %7514 = xor i64 %7509, %7512
  %7515 = add nuw nsw i64 %7513, %7514
  %7516 = icmp eq i64 %7515, 2
  %7517 = zext i1 %7516 to i8
  store i8 %7517, i8* %63, align 1
  %7518 = add i64 %7154, -48
  %7519 = add i64 %7168, 25
  store i64 %7519, i64* %3, align 8
  %7520 = inttoptr i64 %7518 to i32*
  %7521 = load i32, i32* %7520, align 4
  %7522 = sext i32 %7521 to i64
  %7523 = shl nsw i64 %7522, 4
  store i64 %7523, i64* %RCX.i1406, align 8
  %7524 = add i64 %7523, %7492
  store i64 %7524, i64* %RAX.i2624, align 8
  %7525 = icmp ult i64 %7524, %7492
  %7526 = icmp ult i64 %7524, %7523
  %7527 = or i1 %7525, %7526
  %7528 = zext i1 %7527 to i8
  store i8 %7528, i8* %39, align 1
  %7529 = trunc i64 %7524 to i32
  %7530 = and i32 %7529, 248
  %7531 = tail call i32 @llvm.ctpop.i32(i32 %7530)
  %7532 = trunc i32 %7531 to i8
  %7533 = and i8 %7532, 1
  %7534 = xor i8 %7533, 1
  store i8 %7534, i8* %46, align 1
  %7535 = xor i64 %7523, %7492
  %7536 = xor i64 %7535, %7524
  %7537 = lshr i64 %7536, 4
  %7538 = trunc i64 %7537 to i8
  %7539 = and i8 %7538, 1
  store i8 %7539, i8* %51, align 1
  %7540 = icmp eq i64 %7524, 0
  %7541 = zext i1 %7540 to i8
  store i8 %7541, i8* %54, align 1
  %7542 = lshr i64 %7524, 63
  %7543 = trunc i64 %7542 to i8
  store i8 %7543, i8* %57, align 1
  %7544 = lshr i64 %7522, 59
  %7545 = and i64 %7544, 1
  %7546 = xor i64 %7542, %7509
  %7547 = xor i64 %7542, %7545
  %7548 = add nuw nsw i64 %7546, %7547
  %7549 = icmp eq i64 %7548, 2
  %7550 = zext i1 %7549 to i8
  store i8 %7550, i8* %63, align 1
  %7551 = load i64, i64* %RBP.i, align 8
  %7552 = add i64 %7551, -44
  %7553 = add i64 %7168, 36
  store i64 %7553, i64* %3, align 8
  %7554 = inttoptr i64 %7552 to i32*
  %7555 = load i32, i32* %7554, align 4
  %7556 = sext i32 %7555 to i64
  store i64 %7556, i64* %RCX.i1406, align 8
  %7557 = shl nsw i64 %7556, 2
  %7558 = add i64 %7557, %7524
  %7559 = add i64 %7168, 39
  store i64 %7559, i64* %3, align 8
  %7560 = inttoptr i64 %7558 to i32*
  %7561 = load i32, i32* %7560, align 4
  %7562 = shl i32 %7561, 4
  %7563 = zext i32 %7562 to i64
  store i64 %7563, i64* %435, align 8
  %7564 = load i16, i16* bitcast (%G_0x6d452a_type* @G_0x6d452a to i16*), align 8
  %7565 = sext i16 %7564 to i64
  %7566 = and i64 %7565, 4294967295
  store i64 %7566, i64* %RSI.i1382, align 8
  %7567 = sext i16 %7564 to i32
  store i8 0, i8* %39, align 1
  %7568 = and i32 %7567, 255
  %7569 = tail call i32 @llvm.ctpop.i32(i32 %7568)
  %7570 = trunc i32 %7569 to i8
  %7571 = and i8 %7570, 1
  %7572 = xor i8 %7571, 1
  store i8 %7572, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %7573 = icmp eq i16 %7564, 0
  %7574 = zext i1 %7573 to i8
  store i8 %7574, i8* %54, align 1
  %7575 = lshr i32 %7567, 31
  %7576 = trunc i32 %7575 to i8
  store i8 %7576, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %7577 = add i64 %7551, -276
  %7578 = add i64 %7168, 59
  store i64 %7578, i64* %3, align 8
  %7579 = inttoptr i64 %7577 to i32*
  store i32 %7562, i32* %7579, align 4
  %7580 = load i64, i64* %3, align 8
  %7581 = load i8, i8* %54, align 1
  %7582 = icmp ne i8 %7581, 0
  %.v277 = select i1 %7582, i64 29, i64 6
  %7583 = add i64 %7580, %.v277
  %cmpBr_47a816 = icmp eq i8 %7581, 1
  %7584 = load i64, i64* %RBP.i, align 8
  %7585 = add i64 %7584, -56
  %7586 = add i64 %7583, 4
  store i64 %7586, i64* %3, align 8
  %7587 = inttoptr i64 %7585 to i32*
  %7588 = load i32, i32* %7587, align 4
  %7589 = sext i32 %7588 to i64
  store i64 %7589, i64* %RAX.i2624, align 8
  %7590 = shl nsw i64 %7589, 1
  br i1 %cmpBr_47a816, label %block_.L_47a833, label %block_47a81c

block_47a81c:                                     ; preds = %block_.L_47a7db
  %7591 = add nsw i64 %7590, 4952640
  %7592 = add i64 %7583, 12
  store i64 %7592, i64* %3, align 8
  %7593 = inttoptr i64 %7591 to i16*
  %7594 = load i16, i16* %7593, align 2
  %7595 = sext i16 %7594 to i64
  %7596 = and i64 %7595, 4294967295
  store i64 %7596, i64* %RCX.i1406, align 8
  %7597 = add i64 %7584, -280
  %7598 = sext i16 %7594 to i32
  %7599 = add i64 %7583, 18
  store i64 %7599, i64* %3, align 8
  %7600 = inttoptr i64 %7597 to i32*
  store i32 %7598, i32* %7600, align 4
  %7601 = load i64, i64* %3, align 8
  %7602 = add i64 %7601, 23
  store i64 %7602, i64* %3, align 8
  br label %block_.L_47a845

block_.L_47a833:                                  ; preds = %block_.L_47a7db
  %7603 = add nsw i64 %7590, 7151712
  %7604 = add i64 %7583, 12
  store i64 %7604, i64* %3, align 8
  %7605 = inttoptr i64 %7603 to i16*
  %7606 = load i16, i16* %7605, align 2
  %7607 = sext i16 %7606 to i64
  %7608 = and i64 %7607, 4294967295
  store i64 %7608, i64* %RCX.i1406, align 8
  %7609 = add i64 %7584, -280
  %7610 = sext i16 %7606 to i32
  %7611 = add i64 %7583, 18
  store i64 %7611, i64* %3, align 8
  %7612 = inttoptr i64 %7609 to i32*
  store i32 %7610, i32* %7612, align 4
  %.pre233 = load i64, i64* %3, align 8
  br label %block_.L_47a845

block_.L_47a845:                                  ; preds = %block_.L_47a833, %block_47a81c
  %7613 = phi i64 [ %.pre233, %block_.L_47a833 ], [ %7602, %block_47a81c ]
  %7614 = load i64, i64* %RBP.i, align 8
  %7615 = add i64 %7614, -280
  %7616 = add i64 %7613, 6
  store i64 %7616, i64* %3, align 8
  %7617 = inttoptr i64 %7615 to i32*
  %7618 = load i32, i32* %7617, align 4
  %7619 = zext i32 %7618 to i64
  store i64 %7619, i64* %RAX.i2624, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX.i1406, align 8
  store i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64* %435, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %449, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  %7620 = add i64 %7614, -276
  %7621 = add i64 %7613, 39
  store i64 %7621, i64* %3, align 8
  %7622 = inttoptr i64 %7620 to i32*
  %7623 = load i32, i32* %7622, align 4
  %7624 = zext i32 %7623 to i64
  store i64 %7624, i64* %RSI.i1382, align 8
  %7625 = add i64 %7614, -284
  %7626 = add i64 %7613, 45
  store i64 %7626, i64* %3, align 8
  %7627 = inttoptr i64 %7625 to i32*
  store i32 %7618, i32* %7627, align 4
  %7628 = load i32, i32* %ESI.i1380, align 4
  %7629 = zext i32 %7628 to i64
  %7630 = load i64, i64* %3, align 8
  store i64 %7629, i64* %RAX.i2624, align 8
  %7631 = load i64, i64* %RBP.i, align 8
  %7632 = add i64 %7631, -296
  %7633 = load i64, i64* %435, align 8
  %7634 = add i64 %7630, 9
  store i64 %7634, i64* %3, align 8
  %7635 = inttoptr i64 %7632 to i64*
  store i64 %7633, i64* %7635, align 8
  %7636 = load i64, i64* %3, align 8
  %7637 = load i32, i32* %EAX.i1800, align 8
  %7638 = sext i32 %7637 to i64
  %7639 = lshr i64 %7638, 32
  store i64 %7639, i64* %RDX.i1786, align 8
  %7640 = load i64, i64* %RBP.i, align 8
  %7641 = add i64 %7640, -284
  %7642 = add i64 %7636, 7
  store i64 %7642, i64* %3, align 8
  %7643 = inttoptr i64 %7641 to i32*
  %7644 = load i32, i32* %7643, align 4
  %7645 = zext i32 %7644 to i64
  store i64 %7645, i64* %RDI.i1334, align 8
  %7646 = add i64 %7636, 9
  store i64 %7646, i64* %3, align 8
  %7647 = zext i32 %7637 to i64
  %7648 = sext i32 %7644 to i64
  %7649 = shl nuw i64 %7639, 32
  %7650 = or i64 %7649, %7647
  %7651 = sdiv i64 %7650, %7648
  %7652 = shl i64 %7651, 32
  %7653 = ashr exact i64 %7652, 32
  %7654 = icmp eq i64 %7651, %7653
  br i1 %7654, label %7657, label %7655

; <label>:7655:                                   ; preds = %block_.L_47a845
  %7656 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7646, %struct.Memory* %MEMORY.26)
  %.pre234 = load i64, i64* %RBP.i, align 8
  %.pre235 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit

; <label>:7657:                                   ; preds = %block_.L_47a845
  %7658 = srem i64 %7650, %7648
  %7659 = and i64 %7651, 4294967295
  store i64 %7659, i64* %RAX.i2624, align 8
  %7660 = and i64 %7658, 4294967295
  store i64 %7660, i64* %435, align 8
  store i8 0, i8* %39, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %7657, %7655
  %7661 = phi i64 [ %.pre235, %7655 ], [ %7646, %7657 ]
  %7662 = phi i64 [ %.pre234, %7655 ], [ %7640, %7657 ]
  %7663 = phi %struct.Memory* [ %7656, %7655 ], [ %MEMORY.26, %7657 ]
  %7664 = add i64 %7662, -52
  %7665 = add i64 %7661, 4
  store i64 %7665, i64* %3, align 8
  %7666 = inttoptr i64 %7664 to i32*
  %7667 = load i32, i32* %7666, align 4
  %7668 = sext i32 %7667 to i64
  %7669 = shl nsw i64 %7668, 6
  store i64 %7669, i64* %R8.i1327, align 8
  %.lobit139 = lshr i32 %7667, 31
  %7670 = trunc i32 %.lobit139 to i8
  store i8 %7670, i8* %39, align 1
  %7671 = trunc i64 %7669 to i32
  %7672 = and i32 %7671, 192
  %7673 = tail call i32 @llvm.ctpop.i32(i32 %7672)
  %7674 = trunc i32 %7673 to i8
  %7675 = and i8 %7674, 1
  %7676 = xor i8 %7675, 1
  store i8 %7676, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %7677 = icmp eq i32 %7667, 0
  %7678 = zext i1 %7677 to i8
  store i8 %7678, i8* %54, align 1
  %7679 = lshr i64 %7668, 57
  %7680 = trunc i64 %7679 to i8
  %7681 = and i8 %7680, 1
  store i8 %7681, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %7682 = add i64 %7662, -296
  %7683 = add i64 %7661, 15
  store i64 %7683, i64* %3, align 8
  %7684 = inttoptr i64 %7682 to i64*
  %7685 = load i64, i64* %7684, align 8
  %7686 = add i64 %7669, %7685
  store i64 %7686, i64* %R9.i1322, align 8
  %7687 = icmp ult i64 %7686, %7685
  %7688 = icmp ult i64 %7686, %7669
  %7689 = or i1 %7687, %7688
  %7690 = zext i1 %7689 to i8
  store i8 %7690, i8* %39, align 1
  %7691 = trunc i64 %7686 to i32
  %7692 = and i32 %7691, 255
  %7693 = tail call i32 @llvm.ctpop.i32(i32 %7692)
  %7694 = trunc i32 %7693 to i8
  %7695 = and i8 %7694, 1
  %7696 = xor i8 %7695, 1
  store i8 %7696, i8* %46, align 1
  %7697 = xor i64 %7685, %7686
  %7698 = lshr i64 %7697, 4
  %7699 = trunc i64 %7698 to i8
  %7700 = and i8 %7699, 1
  store i8 %7700, i8* %51, align 1
  %7701 = icmp eq i64 %7686, 0
  %7702 = zext i1 %7701 to i8
  store i8 %7702, i8* %54, align 1
  %7703 = lshr i64 %7686, 63
  %7704 = trunc i64 %7703 to i8
  store i8 %7704, i8* %57, align 1
  %7705 = lshr i64 %7685, 63
  %7706 = lshr i64 %7668, 57
  %7707 = and i64 %7706, 1
  %7708 = xor i64 %7703, %7705
  %7709 = xor i64 %7703, %7707
  %7710 = add nuw nsw i64 %7708, %7709
  %7711 = icmp eq i64 %7710, 2
  %7712 = zext i1 %7711 to i8
  store i8 %7712, i8* %63, align 1
  %7713 = add i64 %7662, -48
  %7714 = add i64 %7661, 22
  store i64 %7714, i64* %3, align 8
  %7715 = inttoptr i64 %7713 to i32*
  %7716 = load i32, i32* %7715, align 4
  %7717 = sext i32 %7716 to i64
  %7718 = shl nsw i64 %7717, 4
  store i64 %7718, i64* %R8.i1327, align 8
  %7719 = add i64 %7718, %7686
  store i64 %7719, i64* %R9.i1322, align 8
  %7720 = icmp ult i64 %7719, %7686
  %7721 = icmp ult i64 %7719, %7718
  %7722 = or i1 %7720, %7721
  %7723 = zext i1 %7722 to i8
  store i8 %7723, i8* %39, align 1
  %7724 = trunc i64 %7719 to i32
  %7725 = and i32 %7724, 255
  %7726 = tail call i32 @llvm.ctpop.i32(i32 %7725)
  %7727 = trunc i32 %7726 to i8
  %7728 = and i8 %7727, 1
  %7729 = xor i8 %7728, 1
  store i8 %7729, i8* %46, align 1
  %7730 = xor i64 %7718, %7686
  %7731 = xor i64 %7730, %7719
  %7732 = lshr i64 %7731, 4
  %7733 = trunc i64 %7732 to i8
  %7734 = and i8 %7733, 1
  store i8 %7734, i8* %51, align 1
  %7735 = icmp eq i64 %7719, 0
  %7736 = zext i1 %7735 to i8
  store i8 %7736, i8* %54, align 1
  %7737 = lshr i64 %7719, 63
  %7738 = trunc i64 %7737 to i8
  store i8 %7738, i8* %57, align 1
  %7739 = lshr i64 %7717, 59
  %7740 = and i64 %7739, 1
  %7741 = xor i64 %7737, %7703
  %7742 = xor i64 %7737, %7740
  %7743 = add nuw nsw i64 %7741, %7742
  %7744 = icmp eq i64 %7743, 2
  %7745 = zext i1 %7744 to i8
  store i8 %7745, i8* %63, align 1
  %7746 = load i64, i64* %RBP.i, align 8
  %7747 = add i64 %7746, -44
  %7748 = add i64 %7661, 33
  store i64 %7748, i64* %3, align 8
  %7749 = inttoptr i64 %7747 to i32*
  %7750 = load i32, i32* %7749, align 4
  %7751 = sext i32 %7750 to i64
  store i64 %7751, i64* %R8.i1327, align 8
  %7752 = shl nsw i64 %7751, 2
  %7753 = add i64 %7752, %7719
  %7754 = load i32, i32* %EAX.i1800, align 4
  %7755 = add i64 %7661, 37
  store i64 %7755, i64* %3, align 8
  %7756 = inttoptr i64 %7753 to i32*
  store i32 %7754, i32* %7756, align 4
  %7757 = load i64, i64* %RBP.i, align 8
  %7758 = add i64 %7757, -52
  %7759 = load i64, i64* %3, align 8
  %7760 = add i64 %7759, 4
  store i64 %7760, i64* %3, align 8
  %7761 = inttoptr i64 %7758 to i32*
  %7762 = load i32, i32* %7761, align 4
  %7763 = sext i32 %7762 to i64
  %7764 = shl nsw i64 %7763, 6
  store i64 %7764, i64* %R8.i1327, align 8
  %7765 = load i64, i64* %RCX.i1406, align 8
  %7766 = add i64 %7764, %7765
  store i64 %7766, i64* %RCX.i1406, align 8
  %7767 = icmp ult i64 %7766, %7765
  %7768 = icmp ult i64 %7766, %7764
  %7769 = or i1 %7767, %7768
  %7770 = zext i1 %7769 to i8
  store i8 %7770, i8* %39, align 1
  %7771 = trunc i64 %7766 to i32
  %7772 = and i32 %7771, 255
  %7773 = tail call i32 @llvm.ctpop.i32(i32 %7772)
  %7774 = trunc i32 %7773 to i8
  %7775 = and i8 %7774, 1
  %7776 = xor i8 %7775, 1
  store i8 %7776, i8* %46, align 1
  %7777 = xor i64 %7765, %7766
  %7778 = lshr i64 %7777, 4
  %7779 = trunc i64 %7778 to i8
  %7780 = and i8 %7779, 1
  store i8 %7780, i8* %51, align 1
  %7781 = icmp eq i64 %7766, 0
  %7782 = zext i1 %7781 to i8
  store i8 %7782, i8* %54, align 1
  %7783 = lshr i64 %7766, 63
  %7784 = trunc i64 %7783 to i8
  store i8 %7784, i8* %57, align 1
  %7785 = lshr i64 %7765, 63
  %7786 = lshr i64 %7763, 57
  %7787 = and i64 %7786, 1
  %7788 = xor i64 %7783, %7785
  %7789 = xor i64 %7783, %7787
  %7790 = add nuw nsw i64 %7788, %7789
  %7791 = icmp eq i64 %7790, 2
  %7792 = zext i1 %7791 to i8
  store i8 %7792, i8* %63, align 1
  %7793 = add i64 %7757, -48
  %7794 = add i64 %7759, 15
  store i64 %7794, i64* %3, align 8
  %7795 = inttoptr i64 %7793 to i32*
  %7796 = load i32, i32* %7795, align 4
  %7797 = sext i32 %7796 to i64
  %7798 = shl nsw i64 %7797, 4
  store i64 %7798, i64* %R8.i1327, align 8
  %7799 = add i64 %7798, %7766
  store i64 %7799, i64* %RCX.i1406, align 8
  %7800 = icmp ult i64 %7799, %7766
  %7801 = icmp ult i64 %7799, %7798
  %7802 = or i1 %7800, %7801
  %7803 = zext i1 %7802 to i8
  store i8 %7803, i8* %39, align 1
  %7804 = trunc i64 %7799 to i32
  %7805 = and i32 %7804, 255
  %7806 = tail call i32 @llvm.ctpop.i32(i32 %7805)
  %7807 = trunc i32 %7806 to i8
  %7808 = and i8 %7807, 1
  %7809 = xor i8 %7808, 1
  store i8 %7809, i8* %46, align 1
  %7810 = xor i64 %7798, %7766
  %7811 = xor i64 %7810, %7799
  %7812 = lshr i64 %7811, 4
  %7813 = trunc i64 %7812 to i8
  %7814 = and i8 %7813, 1
  store i8 %7814, i8* %51, align 1
  %7815 = icmp eq i64 %7799, 0
  %7816 = zext i1 %7815 to i8
  store i8 %7816, i8* %54, align 1
  %7817 = lshr i64 %7799, 63
  %7818 = trunc i64 %7817 to i8
  store i8 %7818, i8* %57, align 1
  %7819 = lshr i64 %7797, 59
  %7820 = and i64 %7819, 1
  %7821 = xor i64 %7817, %7783
  %7822 = xor i64 %7817, %7820
  %7823 = add nuw nsw i64 %7821, %7822
  %7824 = icmp eq i64 %7823, 2
  %7825 = zext i1 %7824 to i8
  store i8 %7825, i8* %63, align 1
  %7826 = load i64, i64* %RBP.i, align 8
  %7827 = add i64 %7826, -44
  %7828 = add i64 %7759, 26
  store i64 %7828, i64* %3, align 8
  %7829 = inttoptr i64 %7827 to i32*
  %7830 = load i32, i32* %7829, align 4
  %7831 = sext i32 %7830 to i64
  store i64 %7831, i64* %R8.i1327, align 8
  %7832 = shl nsw i64 %7831, 2
  %7833 = add i64 %7832, %7799
  %7834 = add i64 %7759, 30
  store i64 %7834, i64* %3, align 8
  %7835 = inttoptr i64 %7833 to i32*
  %7836 = load i32, i32* %7835, align 4
  %7837 = zext i32 %7836 to i64
  store i64 %7837, i64* %RAX.i2624, align 8
  %7838 = load i16, i16* bitcast (%G_0x6d452a_type* @G_0x6d452a to i16*), align 8
  %7839 = sext i16 %7838 to i64
  %7840 = and i64 %7839, 4294967295
  store i64 %7840, i64* %437, align 8
  %7841 = sext i16 %7838 to i32
  store i8 0, i8* %39, align 1
  %7842 = and i32 %7841, 255
  %7843 = tail call i32 @llvm.ctpop.i32(i32 %7842)
  %7844 = trunc i32 %7843 to i8
  %7845 = and i8 %7844, 1
  %7846 = xor i8 %7845, 1
  store i8 %7846, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %7847 = icmp eq i16 %7838, 0
  %7848 = zext i1 %7847 to i8
  store i8 %7848, i8* %54, align 1
  %7849 = lshr i32 %7841, 31
  %7850 = trunc i32 %7849 to i8
  store i8 %7850, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %7851 = add i64 %7826, -300
  %7852 = add i64 %7759, 49
  store i64 %7852, i64* %3, align 8
  %7853 = inttoptr i64 %7851 to i32*
  store i32 %7836, i32* %7853, align 4
  %7854 = load i64, i64* %3, align 8
  %7855 = load i8, i8* %54, align 1
  %7856 = icmp ne i8 %7855, 0
  %.v278 = select i1 %7856, i64 29, i64 6
  %7857 = add i64 %7854, %.v278
  %cmpBr_47a8da = icmp eq i8 %7855, 1
  %7858 = load i64, i64* %RBP.i, align 8
  %7859 = add i64 %7858, -56
  %7860 = add i64 %7857, 4
  store i64 %7860, i64* %3, align 8
  %7861 = inttoptr i64 %7859 to i32*
  %7862 = load i32, i32* %7861, align 4
  %7863 = sext i32 %7862 to i64
  store i64 %7863, i64* %RAX.i2624, align 8
  %7864 = shl nsw i64 %7863, 1
  br i1 %cmpBr_47a8da, label %block_.L_47a8f7, label %block_47a8e0

block_47a8e0:                                     ; preds = %routine_idivl__edi.exit
  %7865 = add nsw i64 %7864, 4952640
  %7866 = add i64 %7857, 12
  store i64 %7866, i64* %3, align 8
  %7867 = inttoptr i64 %7865 to i16*
  %7868 = load i16, i16* %7867, align 2
  %7869 = sext i16 %7868 to i64
  %7870 = and i64 %7869, 4294967295
  store i64 %7870, i64* %RCX.i1406, align 8
  %7871 = add i64 %7858, -304
  %7872 = sext i16 %7868 to i32
  %7873 = add i64 %7857, 18
  store i64 %7873, i64* %3, align 8
  %7874 = inttoptr i64 %7871 to i32*
  store i32 %7872, i32* %7874, align 4
  %7875 = load i64, i64* %3, align 8
  %7876 = add i64 %7875, 23
  store i64 %7876, i64* %3, align 8
  br label %block_.L_47a909

block_.L_47a8f7:                                  ; preds = %routine_idivl__edi.exit
  %7877 = add nsw i64 %7864, 7151712
  %7878 = add i64 %7857, 12
  store i64 %7878, i64* %3, align 8
  %7879 = inttoptr i64 %7877 to i16*
  %7880 = load i16, i16* %7879, align 2
  %7881 = sext i16 %7880 to i64
  %7882 = and i64 %7881, 4294967295
  store i64 %7882, i64* %RCX.i1406, align 8
  %7883 = add i64 %7858, -304
  %7884 = sext i16 %7880 to i32
  %7885 = add i64 %7857, 18
  store i64 %7885, i64* %3, align 8
  %7886 = inttoptr i64 %7883 to i32*
  store i32 %7884, i32* %7886, align 4
  %.pre236 = load i64, i64* %3, align 8
  br label %block_.L_47a909

block_.L_47a909:                                  ; preds = %block_.L_47a8f7, %block_47a8e0
  %7887 = phi i64 [ %.pre236, %block_.L_47a8f7 ], [ %7876, %block_47a8e0 ]
  %7888 = load i64, i64* %RBP.i, align 8
  %7889 = add i64 %7888, -304
  %7890 = add i64 %7887, 6
  store i64 %7890, i64* %3, align 8
  %7891 = inttoptr i64 %7889 to i32*
  %7892 = load i32, i32* %7891, align 4
  %7893 = zext i32 %7892 to i64
  store i64 %7893, i64* %RAX.i2624, align 8
  store i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64* %RCX.i1406, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 384)) to i8), i8* %39, align 1
  store i8 %453, i8* %46, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384)), i64 4) to i8), i8 1), i8* %51, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 0) to i8), i8* %54, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 63) to i8), i8* %57, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 63), i64 lshr (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 63)), i64 2) to i8), i8* %63, align 1
  %7894 = add i64 %7888, -300
  %7895 = add i64 %7887, 29
  store i64 %7895, i64* %3, align 8
  %7896 = inttoptr i64 %7894 to i32*
  %7897 = load i32, i32* %7896, align 4
  %7898 = sext i32 %7897 to i64
  %7899 = sext i32 %7892 to i64
  %7900 = mul nsw i64 %7899, %7898
  %7901 = trunc i64 %7900 to i32
  %7902 = and i64 %7900, 4294967295
  store i64 %7902, i64* %435, align 8
  %7903 = shl i64 %7900, 32
  %7904 = ashr exact i64 %7903, 32
  %7905 = icmp ne i64 %7904, %7900
  %7906 = zext i1 %7905 to i8
  store i8 %7906, i8* %39, align 1
  %7907 = and i32 %7901, 255
  %7908 = tail call i32 @llvm.ctpop.i32(i32 %7907)
  %7909 = trunc i32 %7908 to i8
  %7910 = and i8 %7909, 1
  %7911 = xor i8 %7910, 1
  store i8 %7911, i8* %46, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %54, align 1
  %7912 = lshr i32 %7901, 31
  %7913 = trunc i32 %7912 to i8
  store i8 %7913, i8* %57, align 1
  store i8 %7906, i8* %63, align 1
  %7914 = add i64 %7888, -52
  %7915 = add i64 %7887, 36
  store i64 %7915, i64* %3, align 8
  %7916 = inttoptr i64 %7914 to i32*
  %7917 = load i32, i32* %7916, align 4
  %7918 = sext i32 %7917 to i64
  %7919 = shl nsw i64 %7918, 6
  store i64 %7919, i64* %RSI.i1382, align 8
  %7920 = add i64 %7919, add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384)
  store i64 %7920, i64* %RCX.i1406, align 8
  %7921 = icmp ult i64 %7920, add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384)
  %7922 = icmp ult i64 %7920, %7919
  %7923 = or i1 %7921, %7922
  %7924 = zext i1 %7923 to i8
  store i8 %7924, i8* %39, align 1
  %7925 = trunc i64 %7920 to i32
  %7926 = and i32 %7925, 248
  %7927 = tail call i32 @llvm.ctpop.i32(i32 %7926)
  %7928 = trunc i32 %7927 to i8
  %7929 = and i8 %7928, 1
  %7930 = xor i8 %7929, 1
  store i8 %7930, i8* %46, align 1
  %7931 = xor i64 %7920, add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384)
  %7932 = lshr i64 %7931, 4
  %7933 = trunc i64 %7932 to i8
  %7934 = and i8 %7933, 1
  store i8 %7934, i8* %51, align 1
  %7935 = icmp eq i64 %7920, 0
  %7936 = zext i1 %7935 to i8
  store i8 %7936, i8* %54, align 1
  %7937 = lshr i64 %7920, 63
  %7938 = trunc i64 %7937 to i8
  store i8 %7938, i8* %57, align 1
  %7939 = lshr i64 %7918, 57
  %7940 = and i64 %7939, 1
  %7941 = xor i64 %7937, lshr (i64 add (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 384), i64 63)
  %7942 = xor i64 %7937, %7940
  %7943 = add nuw nsw i64 %7941, %7942
  %7944 = icmp eq i64 %7943, 2
  %7945 = zext i1 %7944 to i8
  store i8 %7945, i8* %63, align 1
  %7946 = load i64, i64* %RBP.i, align 8
  %7947 = add i64 %7946, -48
  %7948 = add i64 %7887, 47
  store i64 %7948, i64* %3, align 8
  %7949 = inttoptr i64 %7947 to i32*
  %7950 = load i32, i32* %7949, align 4
  %7951 = sext i32 %7950 to i64
  %7952 = shl nsw i64 %7951, 4
  store i64 %7952, i64* %RSI.i1382, align 8
  %7953 = add i64 %7952, %7920
  store i64 %7953, i64* %RCX.i1406, align 8
  %7954 = icmp ult i64 %7953, %7920
  %7955 = icmp ult i64 %7953, %7952
  %7956 = or i1 %7954, %7955
  %7957 = zext i1 %7956 to i8
  store i8 %7957, i8* %39, align 1
  %7958 = trunc i64 %7953 to i32
  %7959 = and i32 %7958, 255
  %7960 = tail call i32 @llvm.ctpop.i32(i32 %7959)
  %7961 = trunc i32 %7960 to i8
  %7962 = and i8 %7961, 1
  %7963 = xor i8 %7962, 1
  store i8 %7963, i8* %46, align 1
  %7964 = xor i64 %7952, %7920
  %7965 = xor i64 %7964, %7953
  %7966 = lshr i64 %7965, 4
  %7967 = trunc i64 %7966 to i8
  %7968 = and i8 %7967, 1
  store i8 %7968, i8* %51, align 1
  %7969 = icmp eq i64 %7953, 0
  %7970 = zext i1 %7969 to i8
  store i8 %7970, i8* %54, align 1
  %7971 = lshr i64 %7953, 63
  %7972 = trunc i64 %7971 to i8
  store i8 %7972, i8* %57, align 1
  %7973 = lshr i64 %7951, 59
  %7974 = and i64 %7973, 1
  %7975 = xor i64 %7971, %7937
  %7976 = xor i64 %7971, %7974
  %7977 = add nuw nsw i64 %7975, %7976
  %7978 = icmp eq i64 %7977, 2
  %7979 = zext i1 %7978 to i8
  store i8 %7979, i8* %63, align 1
  %7980 = add i64 %7946, -44
  %7981 = add i64 %7887, 58
  store i64 %7981, i64* %3, align 8
  %7982 = inttoptr i64 %7980 to i32*
  %7983 = load i32, i32* %7982, align 4
  %7984 = sext i32 %7983 to i64
  store i64 %7984, i64* %RSI.i1382, align 8
  %7985 = shl nsw i64 %7984, 2
  %7986 = add i64 %7985, %7953
  %7987 = load i32, i32* %434, align 4
  %7988 = add i64 %7887, 61
  store i64 %7988, i64* %3, align 8
  %7989 = inttoptr i64 %7986 to i32*
  store i32 %7987, i32* %7989, align 4
  %.pre237 = load i64, i64* %3, align 8
  br label %block_.L_47a946

block_.L_47a946:                                  ; preds = %block_.L_47a909, %block_47a736
  %7990 = phi i64 [ %.pre237, %block_.L_47a909 ], [ %7485, %block_47a736 ]
  %MEMORY.29 = phi %struct.Memory* [ %7663, %block_.L_47a909 ], [ %MEMORY.26, %block_47a736 ]
  %7991 = load i64, i64* %RBP.i, align 8
  %7992 = add i64 %7991, -44
  %7993 = add i64 %7990, 8
  store i64 %7993, i64* %3, align 8
  %7994 = inttoptr i64 %7992 to i32*
  %7995 = load i32, i32* %7994, align 4
  %7996 = add i32 %7995, 1
  %7997 = zext i32 %7996 to i64
  store i64 %7997, i64* %RAX.i2624, align 8
  %7998 = icmp eq i32 %7995, -1
  %7999 = icmp eq i32 %7996, 0
  %8000 = or i1 %7998, %7999
  %8001 = zext i1 %8000 to i8
  store i8 %8001, i8* %39, align 1
  %8002 = and i32 %7996, 255
  %8003 = tail call i32 @llvm.ctpop.i32(i32 %8002)
  %8004 = trunc i32 %8003 to i8
  %8005 = and i8 %8004, 1
  %8006 = xor i8 %8005, 1
  store i8 %8006, i8* %46, align 1
  %8007 = xor i32 %7996, %7995
  %8008 = lshr i32 %8007, 4
  %8009 = trunc i32 %8008 to i8
  %8010 = and i8 %8009, 1
  store i8 %8010, i8* %51, align 1
  %8011 = zext i1 %7999 to i8
  store i8 %8011, i8* %54, align 1
  %8012 = lshr i32 %7996, 31
  %8013 = trunc i32 %8012 to i8
  store i8 %8013, i8* %57, align 1
  %8014 = lshr i32 %7995, 31
  %8015 = xor i32 %8012, %8014
  %8016 = add nuw nsw i32 %8015, %8012
  %8017 = icmp eq i32 %8016, 2
  %8018 = zext i1 %8017 to i8
  store i8 %8018, i8* %63, align 1
  %8019 = add i64 %7990, 14
  store i64 %8019, i64* %3, align 8
  store i32 %7996, i32* %7994, align 4
  %8020 = load i64, i64* %3, align 8
  %8021 = add i64 %8020, -3116
  store i64 %8021, i64* %3, align 8
  br label %block_.L_479d28

block_.L_47a959:                                  ; preds = %block_.L_479d28
  %8022 = add i64 %2763, -48
  %8023 = add i64 %2791, 8
  store i64 %8023, i64* %3, align 8
  %8024 = inttoptr i64 %8022 to i32*
  %8025 = load i32, i32* %8024, align 4
  %8026 = add i32 %8025, 1
  %8027 = zext i32 %8026 to i64
  store i64 %8027, i64* %RAX.i2624, align 8
  %8028 = icmp eq i32 %8025, -1
  %8029 = icmp eq i32 %8026, 0
  %8030 = or i1 %8028, %8029
  %8031 = zext i1 %8030 to i8
  store i8 %8031, i8* %39, align 1
  %8032 = and i32 %8026, 255
  %8033 = tail call i32 @llvm.ctpop.i32(i32 %8032)
  %8034 = trunc i32 %8033 to i8
  %8035 = and i8 %8034, 1
  %8036 = xor i8 %8035, 1
  store i8 %8036, i8* %46, align 1
  %8037 = xor i32 %8026, %8025
  %8038 = lshr i32 %8037, 4
  %8039 = trunc i32 %8038 to i8
  %8040 = and i8 %8039, 1
  store i8 %8040, i8* %51, align 1
  %8041 = zext i1 %8029 to i8
  store i8 %8041, i8* %54, align 1
  %8042 = lshr i32 %8026, 31
  %8043 = trunc i32 %8042 to i8
  store i8 %8043, i8* %57, align 1
  %8044 = lshr i32 %8025, 31
  %8045 = xor i32 %8042, %8044
  %8046 = add nuw nsw i32 %8045, %8042
  %8047 = icmp eq i32 %8046, 2
  %8048 = zext i1 %8047 to i8
  store i8 %8048, i8* %63, align 1
  %8049 = add i64 %2791, 14
  store i64 %8049, i64* %3, align 8
  store i32 %8026, i32* %8024, align 4
  %8050 = load i64, i64* %3, align 8
  %8051 = add i64 %8050, -3152
  store i64 %8051, i64* %3, align 8
  br label %block_.L_479d17

block_.L_47a96c:                                  ; preds = %block_.L_479d17
  %8052 = add i64 %2730, -52
  %8053 = add i64 %2758, 8
  store i64 %8053, i64* %3, align 8
  %8054 = inttoptr i64 %8052 to i32*
  %8055 = load i32, i32* %8054, align 4
  %8056 = add i32 %8055, 1
  %8057 = zext i32 %8056 to i64
  store i64 %8057, i64* %RAX.i2624, align 8
  %8058 = icmp eq i32 %8055, -1
  %8059 = icmp eq i32 %8056, 0
  %8060 = or i1 %8058, %8059
  %8061 = zext i1 %8060 to i8
  store i8 %8061, i8* %39, align 1
  %8062 = and i32 %8056, 255
  %8063 = tail call i32 @llvm.ctpop.i32(i32 %8062)
  %8064 = trunc i32 %8063 to i8
  %8065 = and i8 %8064, 1
  %8066 = xor i8 %8065, 1
  store i8 %8066, i8* %46, align 1
  %8067 = xor i32 %8056, %8055
  %8068 = lshr i32 %8067, 4
  %8069 = trunc i32 %8068 to i8
  %8070 = and i8 %8069, 1
  store i8 %8070, i8* %51, align 1
  %8071 = zext i1 %8059 to i8
  store i8 %8071, i8* %54, align 1
  %8072 = lshr i32 %8056, 31
  %8073 = trunc i32 %8072 to i8
  store i8 %8073, i8* %57, align 1
  %8074 = lshr i32 %8055, 31
  %8075 = xor i32 %8072, %8074
  %8076 = add nuw nsw i32 %8075, %8072
  %8077 = icmp eq i32 %8076, 2
  %8078 = zext i1 %8077 to i8
  store i8 %8078, i8* %63, align 1
  %8079 = add i64 %2758, 14
  store i64 %8079, i64* %3, align 8
  store i32 %8056, i32* %8054, align 4
  %8080 = load i64, i64* %3, align 8
  %8081 = add i64 %8080, -3188
  store i64 %8081, i64* %3, align 8
  br label %block_.L_479d06

block_.L_47a97f:                                  ; preds = %block_.L_479d06
  %8082 = add i64 %2725, 5
  store i64 %8082, i64* %3, align 8
  br label %block_.L_47a984

block_.L_47a984:                                  ; preds = %block_.L_47a97f, %block_.L_479cfa
  %storemerge84 = phi i64 [ %2695, %block_.L_479cfa ], [ %8082, %block_.L_47a97f ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.7, %block_.L_479cfa ], [ %MEMORY.11, %block_.L_47a97f ]
  %8083 = load i64, i64* %6, align 8
  %8084 = add i64 %8083, 264
  store i64 %8084, i64* %6, align 8
  %8085 = icmp ugt i64 %8083, -265
  %8086 = zext i1 %8085 to i8
  store i8 %8086, i8* %39, align 1
  %8087 = trunc i64 %8084 to i32
  %8088 = and i32 %8087, 255
  %8089 = tail call i32 @llvm.ctpop.i32(i32 %8088)
  %8090 = trunc i32 %8089 to i8
  %8091 = and i8 %8090, 1
  %8092 = xor i8 %8091, 1
  store i8 %8092, i8* %46, align 1
  %8093 = xor i64 %8084, %8083
  %8094 = lshr i64 %8093, 4
  %8095 = trunc i64 %8094 to i8
  %8096 = and i8 %8095, 1
  store i8 %8096, i8* %51, align 1
  %8097 = icmp eq i64 %8084, 0
  %8098 = zext i1 %8097 to i8
  store i8 %8098, i8* %54, align 1
  %8099 = lshr i64 %8084, 63
  %8100 = trunc i64 %8099 to i8
  store i8 %8100, i8* %57, align 1
  %8101 = lshr i64 %8083, 63
  %8102 = xor i64 %8099, %8101
  %8103 = add nuw nsw i64 %8102, %8099
  %8104 = icmp eq i64 %8103, 2
  %8105 = zext i1 %8104 to i8
  store i8 %8105, i8* %63, align 1
  %8106 = add i64 %storemerge84, 8
  store i64 %8106, i64* %3, align 8
  %8107 = add i64 %8083, 272
  %8108 = inttoptr i64 %8084 to i64*
  %8109 = load i64, i64* %8108, align 8
  store i64 %8109, i64* %RBX.i1332, align 8
  store i64 %8107, i64* %6, align 8
  %8110 = add i64 %storemerge84, 10
  store i64 %8110, i64* %3, align 8
  %8111 = add i64 %8083, 280
  %8112 = inttoptr i64 %8107 to i64*
  %8113 = load i64, i64* %8112, align 8
  store i64 %8113, i64* %R12.i1028, align 8
  store i64 %8111, i64* %6, align 8
  %8114 = add i64 %storemerge84, 12
  store i64 %8114, i64* %3, align 8
  %8115 = add i64 %8083, 288
  %8116 = inttoptr i64 %8111 to i64*
  %8117 = load i64, i64* %8116, align 8
  store i64 %8117, i64* %R13.i854, align 8
  store i64 %8115, i64* %6, align 8
  %8118 = add i64 %storemerge84, 14
  store i64 %8118, i64* %3, align 8
  %8119 = add i64 %8083, 296
  %8120 = inttoptr i64 %8115 to i64*
  %8121 = load i64, i64* %8120, align 8
  store i64 %8121, i64* %R14.i715, align 8
  store i64 %8119, i64* %6, align 8
  %8122 = add i64 %storemerge84, 16
  store i64 %8122, i64* %3, align 8
  %8123 = add i64 %8083, 304
  %8124 = inttoptr i64 %8119 to i64*
  %8125 = load i64, i64* %8124, align 8
  store i64 %8125, i64* %R15.i447, align 8
  store i64 %8123, i64* %6, align 8
  %8126 = add i64 %storemerge84, 17
  store i64 %8126, i64* %3, align 8
  %8127 = add i64 %8083, 312
  %8128 = inttoptr i64 %8123 to i64*
  %8129 = load i64, i64* %8128, align 8
  store i64 %8129, i64* %RBP.i, align 8
  store i64 %8127, i64* %6, align 8
  %8130 = add i64 %storemerge84, 18
  store i64 %8130, i64* %3, align 8
  %8131 = inttoptr i64 %8127 to i64*
  %8132 = load i64, i64* %8131, align 8
  store i64 %8132, i64* %3, align 8
  %8133 = add i64 %8083, 320
  store i64 %8133, i64* %6, align 8
  ret %struct.Memory* %MEMORY.30
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x108___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -264
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 264
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
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_jne_.L_4797fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__0x1__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4798eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x18___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 24, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x24__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_je_.L_47985e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_479859(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 40
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_479829(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47985e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4798e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4798e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_479895(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jne_.L_4798b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x18__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_MINUS0x50__rbp__rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -80
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4798ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4798d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479877(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4798e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jne_.L_479cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_479cfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_479ce7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_479cd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x723b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x180___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -385
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
define %struct.Memory* @routine_movq__0x4b28d0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722cd0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x180___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -385
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
define %struct.Memory* @routine_movq__0x4b2750___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d09f0___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70fe80___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70d1b0___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x180___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %RBX, align 8
  %7 = icmp ugt i64 %3, -385
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
define %struct.Memory* @routine_movq__0x6f73a0___r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14___r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x180___r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %R15, align 8
  %7 = icmp ugt i64 %3, -385
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
define %struct.Memory* @routine_movq__0x70d010___r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70e8f0___r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %R13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R13, align 8
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
define %struct.Memory* @routine_movl__eax____r13__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %R13, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r13__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 4
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 28
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 27
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R12, align 8
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
define %struct.Memory* @routine_movl__eax____r12__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %4 = load i64, i64* %R12, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r12__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R14, align 8
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
define %struct.Memory* @routine_movl__eax____r14__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %R14, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r14__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R11, align 8
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
define %struct.Memory* @routine_movl__eax____r11__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r11__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R15, align 8
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
define %struct.Memory* @routine_movl__eax____r15__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %R15, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RBX, align 8
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
define %struct.Memory* @routine_movl__eax____rbx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RBX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R10, align 8
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
define %struct.Memory* @routine_movl__eax____r10__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %R10, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r10__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movl__eax____r9__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r9__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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
define %struct.Memory* @routine_movl___r8__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax____rdi__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl___rdx__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47991e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479cd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47990d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479cec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4798fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a984(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47a97f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47a96c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47a959(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_je_.L_479d59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x6d4520___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d4520_type* @G_0x6d4520 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_479e34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x70d010___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b2750___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %11 = lshr i32 %5, 28
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %8, 240
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %8, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %5, 27
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movswl_0x4b9260___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952672
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movswl_0x4b9260___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952672
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479f16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d1fc0___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7151552
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d1fc0___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7151552
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jne_.L_479fc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x70d1b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70d010___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d010_type* @G__0x70d010 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70e8f0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70e8f0_type* @G__0x70e8f0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl___rcx__rdx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a122(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b2750___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_shll__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 4
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 28
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 27
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d4522___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d4522_type* @G_0x6d4522 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_je_.L_47a01d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movswl_0x4b9260___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4952672
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a02f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d1fe0___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7151584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_shlq__0x6___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d4522___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i16, i16* bitcast (%G_0x6d4522_type* @G_0x6d4522 to i16*), align 8
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a0da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a0ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_movq__0x70d1b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
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
define %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jne_.L_47a1d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x180___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -385
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl___rdx__rdi_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__r8d____rsi__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl___rax__rdx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d____rcx__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a33c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d4524___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d4524_type* @G_0x6d4524 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a229(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a23b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d2000___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7151616
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_addq__0x180___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 384
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -385
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
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d4524___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i16, i16* bitcast (%G_0x6d4524_type* @G_0x6d4524 to i16*), align 8
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %3, align 8
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
define %struct.Memory* @routine_je_.L_47a2ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a2ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_je_.L_47a357(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x6d4526___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d4526_type* @G_0x6d4526 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a43e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b9240___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952640
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b9240___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4952640
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d2020___rsi_2____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7151648
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d2020___rcx_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 7151648
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jne_.L_47a5cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d09f0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d09f0_type* @G__0x6d09f0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70fe80___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70fe80_type* @G__0x70fe80 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a72c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d4528___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d4528_type* @G_0x6d4528 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a627(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x4b9240___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4952640
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a639(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d2040___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7151680
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
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
define %struct.Memory* @routine_movq__rdx__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xfc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x108__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d4528___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i16, i16* bitcast (%G_0x6d4528_type* @G_0x6d4528 to i16*), align 8
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %3, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a6e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a6f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x110__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
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
define %struct.Memory* @routine_movq__0x723b20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jne_.L_47a7db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47a946(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d452a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6d452a_type* @G_0x6d452a to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a833(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a845(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d2060___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7151712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x118__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
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
define %struct.Memory* @routine_movl_MINUS0x114__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
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
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x128__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6d452a___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i16, i16* bitcast (%G_0x6d452a_type* @G_0x6d452a to i16*), align 8
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47a8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a909(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x130__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a94b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479d28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a95e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479d17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47a971(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_479d06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x108___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 264
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -265
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
