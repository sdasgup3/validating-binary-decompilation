; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x24eb12__rip__type = type <{ [8 x i8] }>
%G_0x33cb1__rip__type = type <{ [8 x i8] }>
%G_0x33e6d__rip__type = type <{ [8 x i8] }>
%G_0x33ed2__rip__type = type <{ [8 x i8] }>
%G_0x33f02__rip__type = type <{ [8 x i8] }>
%G_0x33ff2__rip__type = type <{ [8 x i8] }>
%G_0x34045__rip__type = type <{ [8 x i8] }>
%G_0x34075__rip__type = type <{ [8 x i8] }>
%G_0x34169__rip__type = type <{ [8 x i8] }>
%G_0x341cf__rip__type = type <{ [8 x i8] }>
%G_0x341ff__rip__type = type <{ [8 x i8] }>
%G_0x342ef__rip__type = type <{ [8 x i8] }>
%G_0x343ba__rip__type = type <{ [8 x i8] }>
%G_0x34422__rip__type = type <{ [8 x i8] }>
%G_0x344bb__rip__type = type <{ [8 x i8] }>
%G_0x345fa__rip__type = type <{ [8 x i8] }>
%G_0x34662__rip__type = type <{ [8 x i8] }>
%G_0x34a48__rip__type = type <{ [8 x i8] }>
%G_0x34ba7__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cc5d8_type = type <{ [4 x i8] }>
%G_0x6cc5dc_type = type <{ [4 x i8] }>
%G_0x6cc5e0_type = type <{ [4 x i8] }>
%G_0x6cc5e4_type = type <{ [4 x i8] }>
%G_0x6cc5e8_type = type <{ [4 x i8] }>
%G_0x6ccaf0_type = type <{ [16 x i8] }>
%G_0x6ccf88_type = type <{ [16 x i8] }>
%G_0x6cd478_type = type <{ [8 x i8] }>
%G_0x6cea28_type = type <{ [8 x i8] }>
%G_0x6cea38_type = type <{ [8 x i8] }>
%G_0x6cea40_type = type <{ [8 x i8] }>
%G_0x6d0270_type = type <{ [8 x i8] }>
%G_0x6d1fb0_type = type <{ [8 x i8] }>
%G_0x6d45f0_type = type <{ [8 x i8] }>
%G_0x6d4680_type = type <{ [16 x i8] }>
%G_0x6f6f80_type = type <{ [16 x i8] }>
%G_0x6f80a0_type = type <{ [4 x i8] }>
%G_0x6f9350_type = type <{ [8 x i8] }>
%G_0x6f9688_type = type <{ [4 x i8] }>
%G_0x6f9690_type = type <{ [16 x i8] }>
%G_0x70f6d8_type = type <{ [8 x i8] }>
%G_0x710368_type = type <{ [8 x i8] }>
%G_0x710a48_type = type <{ [8 x i8] }>
%G_0x722b78_type = type <{ [4 x i8] }>
%G_0x722fd8_type = type <{ [4 x i8] }>
%G_0x722fe0_type = type <{ [8 x i8] }>
%G_0x723630_type = type <{ [8 x i8] }>
%G_0x724bd8_type = type <{ [8 x i8] }>
%G_0x725570_type = type <{ [8 x i8] }>
%G_0x726838_type = type <{ [16 x i8] }>
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
@G_0x24eb12__rip_ = global %G_0x24eb12__rip__type zeroinitializer
@G_0x33cb1__rip_ = global %G_0x33cb1__rip__type zeroinitializer
@G_0x33e6d__rip_ = global %G_0x33e6d__rip__type zeroinitializer
@G_0x33ed2__rip_ = global %G_0x33ed2__rip__type zeroinitializer
@G_0x33f02__rip_ = global %G_0x33f02__rip__type zeroinitializer
@G_0x33ff2__rip_ = global %G_0x33ff2__rip__type zeroinitializer
@G_0x34045__rip_ = global %G_0x34045__rip__type zeroinitializer
@G_0x34075__rip_ = global %G_0x34075__rip__type zeroinitializer
@G_0x34169__rip_ = global %G_0x34169__rip__type zeroinitializer
@G_0x341cf__rip_ = global %G_0x341cf__rip__type zeroinitializer
@G_0x341ff__rip_ = global %G_0x341ff__rip__type zeroinitializer
@G_0x342ef__rip_ = global %G_0x342ef__rip__type zeroinitializer
@G_0x343ba__rip_ = global %G_0x343ba__rip__type zeroinitializer
@G_0x34422__rip_ = global %G_0x34422__rip__type zeroinitializer
@G_0x344bb__rip_ = global %G_0x344bb__rip__type zeroinitializer
@G_0x345fa__rip_ = global %G_0x345fa__rip__type zeroinitializer
@G_0x34662__rip_ = global %G_0x34662__rip__type zeroinitializer
@G_0x34a48__rip_ = global %G_0x34a48__rip__type zeroinitializer
@G_0x34ba7__rip_ = global %G_0x34ba7__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cc5d8 = local_unnamed_addr global %G_0x6cc5d8_type zeroinitializer
@G_0x6cc5dc = local_unnamed_addr global %G_0x6cc5dc_type zeroinitializer
@G_0x6cc5e0 = local_unnamed_addr global %G_0x6cc5e0_type zeroinitializer
@G_0x6cc5e4 = local_unnamed_addr global %G_0x6cc5e4_type zeroinitializer
@G_0x6cc5e8 = local_unnamed_addr global %G_0x6cc5e8_type zeroinitializer
@G_0x6ccaf0 = local_unnamed_addr global %G_0x6ccaf0_type zeroinitializer
@G_0x6ccf88 = local_unnamed_addr global %G_0x6ccf88_type zeroinitializer
@G_0x6cd478 = local_unnamed_addr global %G_0x6cd478_type zeroinitializer
@G_0x6cea28 = local_unnamed_addr global %G_0x6cea28_type zeroinitializer
@G_0x6cea38 = local_unnamed_addr global %G_0x6cea38_type zeroinitializer
@G_0x6cea40 = local_unnamed_addr global %G_0x6cea40_type zeroinitializer
@G_0x6d0270 = local_unnamed_addr global %G_0x6d0270_type zeroinitializer
@G_0x6d1fb0 = local_unnamed_addr global %G_0x6d1fb0_type zeroinitializer
@G_0x6d45f0 = local_unnamed_addr global %G_0x6d45f0_type zeroinitializer
@G_0x6d4680 = local_unnamed_addr global %G_0x6d4680_type zeroinitializer
@G_0x6f6f80 = local_unnamed_addr global %G_0x6f6f80_type zeroinitializer
@G_0x6f80a0 = local_unnamed_addr global %G_0x6f80a0_type zeroinitializer
@G_0x6f9350 = local_unnamed_addr global %G_0x6f9350_type zeroinitializer
@G_0x6f9688 = local_unnamed_addr global %G_0x6f9688_type zeroinitializer
@G_0x6f9690 = local_unnamed_addr global %G_0x6f9690_type zeroinitializer
@G_0x70f6d8 = local_unnamed_addr global %G_0x70f6d8_type zeroinitializer
@G_0x710368 = local_unnamed_addr global %G_0x710368_type zeroinitializer
@G_0x710a48 = local_unnamed_addr global %G_0x710a48_type zeroinitializer
@G_0x722b78 = local_unnamed_addr global %G_0x722b78_type zeroinitializer
@G_0x722fd8 = local_unnamed_addr global %G_0x722fd8_type zeroinitializer
@G_0x722fe0 = local_unnamed_addr global %G_0x722fe0_type zeroinitializer
@G_0x723630 = local_unnamed_addr global %G_0x723630_type zeroinitializer
@G_0x724bd8 = local_unnamed_addr global %G_0x724bd8_type zeroinitializer
@G_0x725570 = local_unnamed_addr global %G_0x725570_type zeroinitializer
@G_0x726838 = local_unnamed_addr global %G_0x726838_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @rc_init_pict(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -12
  %54 = load i32, i32* %EDX.i, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i403 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %60, i64* %RAX.i403, align 8
  %61 = add i64 %60, 2884
  %62 = add i64 %59, 15
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  store i8 0, i8* %14, align 1
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %70 = icmp eq i32 %64, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %29, align 1
  %72 = lshr i32 %64, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %70, i64 57, i64 21
  %74 = add i64 %59, %.v
  store i64 %74, i64* %3, align 8
  br i1 %70, label %block_.L_47cd3d, label %block_47cd19

block_47cd19:                                     ; preds = %entry
  %75 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %75, i64* %RAX.i403, align 8
  %76 = add i64 %75, 72608
  %77 = add i64 %74, 14
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX.i403, align 8
  %RCX.i652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 %75, i64* %RCX.i652, align 8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %82 = sext i32 %79 to i64
  %83 = lshr i64 %82, 32
  store i64 %83, i64* %81, align 8
  %84 = add i64 %75, 72620
  %85 = add i64 %74, 29
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = shl nuw i64 %83, 32
  %90 = or i64 %89, %80
  %91 = sdiv i64 %90, %88
  %92 = shl i64 %91, 32
  %93 = ashr exact i64 %92, 32
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %98, label %95

; <label>:95:                                     ; preds = %block_47cd19
  %96 = bitcast %union.anon* %58 to i32*
  %97 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %85, %struct.Memory* %2)
  %.pre = load i32, i32* %96, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %routine_idivl_0x11bac__rcx_.exit

; <label>:98:                                     ; preds = %block_47cd19
  %99 = srem i64 %90, %88
  %100 = and i64 %91, 4294967295
  store i64 %100, i64* %RAX.i403, align 8
  %101 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %102 = and i64 %99, 4294967295
  store i64 %102, i64* %101, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %103 = trunc i64 %91 to i32
  br label %routine_idivl_0x11bac__rcx_.exit

routine_idivl_0x11bac__rcx_.exit:                 ; preds = %98, %95
  %104 = phi i64 [ %.pre114, %95 ], [ %85, %98 ]
  %105 = phi i32 [ %.pre, %95 ], [ %103, %98 ]
  %106 = phi %struct.Memory* [ %97, %95 ], [ %2, %98 ]
  %107 = add i64 %104, 7
  store i64 %107, i64* %3, align 8
  store i32 %105, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  br label %block_.L_47cd3d

block_.L_47cd3d:                                  ; preds = %routine_idivl_0x11bac__rcx_.exit, %entry
  %108 = phi i64 [ %74, %entry ], [ %107, %routine_idivl_0x11bac__rcx_.exit ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %106, %routine_idivl_0x11bac__rcx_.exit ]
  %109 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %110 = add i64 %109, 72616
  %111 = add i64 %108, 18
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  store i32 0, i32* %112, align 4
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %114, i64* %RAX.i403, align 8
  %115 = add i64 %114, 3252
  %116 = add i64 %113, 15
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, -1
  %120 = icmp eq i32 %118, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %14, align 1
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %21, align 1
  %127 = xor i32 %119, %118
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1
  %131 = icmp eq i32 %119, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %29, align 1
  %133 = lshr i32 %119, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %32, align 1
  %135 = lshr i32 %118, 31
  %136 = xor i32 %133, %135
  %137 = add nuw nsw i32 %136, %135
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %38, align 1
  %.v135 = select i1 %131, i64 21, i64 122
  %140 = add i64 %113, %.v135
  store i64 %140, i64* %3, align 8
  br i1 %131, label %block_47cd64, label %block_.L_47cdc9

block_47cd64:                                     ; preds = %block_.L_47cd3d
  %141 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %141, i64* %RAX.i403, align 8
  %142 = add i64 %141, 72564
  %143 = add i64 %140, 15
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, -58
  %147 = icmp ult i32 %145, 58
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %14, align 1
  %149 = and i32 %146, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %21, align 1
  %154 = xor i32 %145, 16
  %155 = xor i32 %154, %146
  %156 = lshr i32 %155, 4
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  store i8 %158, i8* %26, align 1
  %159 = icmp eq i32 %146, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %29, align 1
  %161 = lshr i32 %146, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %32, align 1
  %163 = lshr i32 %145, 31
  %164 = xor i32 %161, %163
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %38, align 1
  %.v188 = select i1 %159, i64 21, i64 52
  %168 = add i64 %140, %.v188
  store i64 %168, i64* %3, align 8
  br i1 %159, label %block_47cd79, label %block_.L_47cd98

block_47cd79:                                     ; preds = %block_47cd64
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %170 = add i64 %168, ptrtoint (%G_0x34ba7__rip__type* @G_0x34ba7__rip_ to i64)
  %171 = add i64 %168, 8
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to double*
  %173 = load double, double* %172, align 8
  %174 = bitcast %union.VectorReg* %169 to double*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %176 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %177 = fmul double %173, %176
  store double %177, double* %174, align 1
  store i64 0, i64* %175, align 1
  %178 = add i64 %168, 26
  store i64 %178, i64* %3, align 8
  store double %177, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %179 = add i64 %168, 75
  br label %block_.L_47cdc4

block_.L_47cd98:                                  ; preds = %block_47cd64
  store i64 %141, i64* %RAX.i403, align 8
  %180 = add i64 %168, 15
  store i64 %180, i64* %3, align 8
  %181 = load i32, i32* %144, align 4
  %182 = add i32 %181, -59
  %183 = icmp ult i32 %181, 59
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %14, align 1
  %185 = and i32 %182, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  %190 = xor i32 %181, 16
  %191 = xor i32 %190, %182
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %26, align 1
  %195 = icmp eq i32 %182, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %29, align 1
  %197 = lshr i32 %182, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %32, align 1
  %199 = lshr i32 %181, 31
  %200 = xor i32 %197, %199
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1
  %.v189 = select i1 %195, i64 21, i64 39
  %204 = add i64 %168, %.v189
  store i64 %204, i64* %3, align 8
  br i1 %195, label %block_47cdad, label %block_.L_47cdbf

block_47cdad:                                     ; preds = %block_.L_47cd98
  %205 = load i64, i64* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to i64*), align 8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %205, i64* %206, align 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %208 = bitcast i64* %207 to double*
  store double 0.000000e+00, double* %208, align 1
  %209 = add i64 %204, 18
  store i64 %209, i64* %3, align 8
  store i64 %205, i64* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to i64*), align 8
  br label %block_.L_47cdbf

block_.L_47cdbf:                                  ; preds = %block_.L_47cd98, %block_47cdad
  %210 = phi i64 [ %209, %block_47cdad ], [ %204, %block_.L_47cd98 ]
  %211 = add i64 %210, 5
  store i64 %211, i64* %3, align 8
  br label %block_.L_47cdc4

block_.L_47cdc4:                                  ; preds = %block_.L_47cdbf, %block_47cd79
  %storemerge = phi i64 [ %179, %block_47cd79 ], [ %211, %block_.L_47cdbf ]
  %212 = add i64 %storemerge, 5
  store i64 %212, i64* %3, align 8
  br label %block_.L_47cdc9

block_.L_47cdc9:                                  ; preds = %block_.L_47cd3d, %block_.L_47cdc4
  %213 = phi i64 [ %212, %block_.L_47cdc4 ], [ %140, %block_.L_47cd3d ]
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -4
  %216 = add i64 %213, 4
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  store i8 0, i8* %14, align 1
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %224 = icmp eq i32 %218, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %29, align 1
  %226 = lshr i32 %218, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %224, i64 10, i64 20
  %228 = add i64 %213, %.v136
  store i64 %228, i64* %3, align 8
  br i1 %224, label %block_47cdd3, label %block_.L_47cddd

block_47cdd3:                                     ; preds = %block_.L_47cdc9
  %229 = add i64 %214, -8
  %230 = add i64 %228, 4
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  store i8 0, i8* %14, align 1
  %233 = and i32 %232, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %238 = icmp eq i32 %232, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %29, align 1
  %240 = lshr i32 %232, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v187 = select i1 %238, i64 3373, i64 10
  %242 = add i64 %228, %.v187
  store i64 %242, i64* %3, align 8
  br i1 %238, label %block_.L_47db00, label %block_.L_47cddd

block_.L_47cddd:                                  ; preds = %block_.L_47cdc9, %block_47cdd3
  %243 = phi i64 [ %242, %block_47cdd3 ], [ %228, %block_.L_47cdc9 ]
  %244 = add i64 %214, -12
  %245 = add i64 %243, 4
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  store i8 0, i8* %14, align 1
  %248 = and i32 %247, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %253 = icmp eq i32 %247, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %29, align 1
  %255 = lshr i32 %247, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v137 = select i1 %253, i64 3363, i64 10
  %257 = add i64 %243, %.v137
  store i64 %257, i64* %3, align 8
  br i1 %253, label %block_.L_47db00, label %block_47cde7

block_47cde7:                                     ; preds = %block_.L_47cddd
  %258 = add i64 %257, ptrtoint (%G_0x24eb12__rip__type* @G_0x24eb12__rip_ to i64)
  %259 = add i64 %257, 7
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX.i403, align 8
  %RCX.i1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %262 = add i64 %261, 24
  %263 = add i64 %257, 10
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RCX.i1315, align 8
  store i8 0, i8* %14, align 1
  %267 = and i32 %265, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %21, align 1
  %272 = icmp eq i32 %265, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %29, align 1
  %274 = lshr i32 %265, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %276 = add i64 %214, -20
  %277 = add i64 %257, 15
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  store i32 %265, i32* %278, align 4
  %279 = load i64, i64* %3, align 8
  %280 = load i8, i8* %29, align 1
  %281 = icmp ne i8 %280, 0
  %.v191 = select i1 %281, i64 31, i64 6
  %282 = add i64 %279, %.v191
  store i64 %282, i64* %3, align 8
  %cmpBr_47cdf6 = icmp eq i8 %280, 1
  br i1 %cmpBr_47cdf6, label %block_.L_47ce15, label %block_47cdfc

block_47cdfc:                                     ; preds = %block_47cde7
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -20
  %285 = add i64 %282, 8
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, -1
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX.i403, align 8
  %290 = icmp eq i32 %287, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %14, align 1
  %292 = and i32 %288, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %21, align 1
  %297 = xor i32 %288, %287
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %26, align 1
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %29, align 1
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %32, align 1
  %305 = lshr i32 %287, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %305
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %38, align 1
  %310 = add i64 %283, -24
  %311 = add i64 %282, 14
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  store i32 %288, i32* %312, align 4
  %313 = load i64, i64* %3, align 8
  %314 = load i8, i8* %29, align 1
  %315 = icmp ne i8 %314, 0
  %.v192 = select i1 %315, i64 1432, i64 6
  %316 = add i64 %313, %.v192
  store i64 %316, i64* %3, align 8
  %cmpBr_47ce0a = icmp eq i8 %314, 1
  br i1 %cmpBr_47ce0a, label %block_.L_47d3a2, label %block_47ce10

block_47ce10:                                     ; preds = %block_47cdfc
  %317 = add i64 %316, 1844
  br label %block_.L_47d544

block_.L_47ce15:                                  ; preds = %block_47cde7
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %319 = bitcast [32 x %union.VectorReg]* %318 to i8*
  %320 = load i64, i64* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to i64*), align 8
  %321 = bitcast [32 x %union.VectorReg]* %318 to double*
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %320, i64* %322, align 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %324 = bitcast i64* %323 to double*
  store double 0.000000e+00, double* %324, align 1
  %325 = add i64 %282, 18
  store i64 %325, i64* %3, align 8
  %326 = bitcast i64 %320 to double
  %327 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %328 = fcmp uno double %326, %327
  br i1 %328, label %329, label %339

; <label>:329:                                    ; preds = %block_.L_47ce15
  %330 = fadd double %326, %327
  %331 = bitcast double %330 to i64
  %332 = and i64 %331, 9221120237041090560
  %333 = icmp eq i64 %332, 9218868437227405312
  %334 = and i64 %331, 2251799813685247
  %335 = icmp ne i64 %334, 0
  %336 = and i1 %333, %335
  br i1 %336, label %337, label %345

; <label>:337:                                    ; preds = %329
  %338 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %325, %struct.Memory* %MEMORY.0)
  %.pre117 = load i64, i64* %3, align 8
  %.pre118 = load i8, i8* %29, align 1
  br label %routine_ucomisd_0x6ccf88___xmm0.exit1291

; <label>:339:                                    ; preds = %block_.L_47ce15
  %340 = fcmp ogt double %326, %327
  br i1 %340, label %345, label %341

; <label>:341:                                    ; preds = %339
  %342 = fcmp olt double %326, %327
  br i1 %342, label %345, label %343

; <label>:343:                                    ; preds = %341
  %344 = fcmp oeq double %326, %327
  br i1 %344, label %345, label %349

; <label>:345:                                    ; preds = %343, %341, %339, %329
  %346 = phi i8 [ 0, %339 ], [ 0, %341 ], [ 1, %343 ], [ 1, %329 ]
  %347 = phi i8 [ 0, %339 ], [ 0, %341 ], [ 0, %343 ], [ 1, %329 ]
  %348 = phi i8 [ 0, %339 ], [ 1, %341 ], [ 0, %343 ], [ 1, %329 ]
  store i8 %346, i8* %29, align 1
  store i8 %347, i8* %21, align 1
  store i8 %348, i8* %14, align 1
  br label %349

; <label>:349:                                    ; preds = %345, %343
  %350 = phi i8 [ %346, %345 ], [ 1, %343 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd_0x6ccf88___xmm0.exit1291

routine_ucomisd_0x6ccf88___xmm0.exit1291:         ; preds = %349, %337
  %351 = phi i8 [ %.pre118, %337 ], [ %350, %349 ]
  %352 = phi i64 [ %.pre117, %337 ], [ %325, %349 ]
  %353 = phi %struct.Memory* [ %338, %337 ], [ %MEMORY.0, %349 ]
  %354 = icmp eq i8 %351, 0
  %.v166 = select i1 %354, i64 17, i64 6
  %355 = add i64 %352, %.v166
  store i64 %355, i64* %3, align 8
  br i1 %354, label %block_.L_47ce38, label %block_47ce2d

block_47ce2d:                                     ; preds = %routine_ucomisd_0x6ccf88___xmm0.exit1291
  %356 = load i8, i8* %21, align 1
  %357 = icmp ne i8 %356, 0
  %.v194 = select i1 %357, i64 11, i64 6
  %358 = add i64 %355, %.v194
  store i64 %358, i64* %3, align 8
  %cmpBr_47ce2d = icmp eq i8 %356, 1
  br i1 %cmpBr_47ce2d, label %block_.L_47ce38, label %block_47ce33

block_47ce33:                                     ; preds = %block_47ce2d
  %359 = add i64 %358, 92
  store i64 %359, i64* %3, align 8
  br label %block_.L_47ce8f

block_.L_47ce38:                                  ; preds = %block_47ce2d, %routine_ucomisd_0x6ccf88___xmm0.exit1291
  %360 = phi i64 [ %358, %block_47ce2d ], [ %355, %routine_ucomisd_0x6ccf88___xmm0.exit1291 ]
  %361 = add i64 %360, ptrtoint (%G_0x34a48__rip__type* @G_0x34a48__rip_ to i64)
  %362 = add i64 %360, 8
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to double*
  %364 = load double, double* %363, align 8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %366 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %367 = bitcast %union.VectorReg* %365 to double*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %369 = load double, double* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to double*), align 8
  %370 = fsub double %366, %369
  %371 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %372 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %373 = add i32 %372, %371
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i403, align 8
  %375 = icmp ult i32 %373, %371
  %376 = icmp ult i32 %373, %372
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %14, align 1
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %21, align 1
  %384 = xor i32 %372, %371
  %385 = xor i32 %384, %373
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %26, align 1
  %389 = icmp eq i32 %373, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %29, align 1
  %391 = lshr i32 %373, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %32, align 1
  %393 = lshr i32 %371, 31
  %394 = lshr i32 %372, 31
  %395 = xor i32 %391, %393
  %396 = xor i32 %391, %394
  %397 = add nuw nsw i32 %395, %396
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %38, align 1
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %401 = sitofp i32 %373 to double
  %402 = bitcast %union.VectorReg* %400 to double*
  store double %401, double* %402, align 1
  %403 = fmul double %401, %370
  %404 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %405 = fdiv double %403, %404
  %406 = fadd double %405, %364
  store double %406, double* %367, align 1
  store i64 0, i64* %368, align 1
  %.cast110 = bitcast double %406 to <2 x i32>
  %407 = extractelement <2 x i32> %.cast110, i32 0
  %408 = bitcast [32 x %union.VectorReg]* %318 to i32*
  store i32 %407, i32* %408, align 1
  %409 = extractelement <2 x i32> %.cast110, i32 1
  %410 = getelementptr inbounds i8, i8* %319, i64 4
  %411 = bitcast i8* %410 to i32*
  store i32 %409, i32* %411, align 1
  %412 = bitcast i64* %323 to i32*
  store i32 0, i32* %412, align 1
  %413 = getelementptr inbounds i8, i8* %319, i64 12
  %414 = bitcast i8* %413 to i32*
  store i32 0, i32* %414, align 1
  %415 = add i64 %360, -507016
  %416 = add i64 %360, 69
  %417 = load i64, i64* %6, align 8
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %6, align 8
  store i64 %415, i64* %3, align 8
  %420 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %353)
  %421 = load i64, i64* %3, align 8
  %422 = load double, double* %321, align 1
  %423 = tail call double @llvm.trunc.f64(double %422)
  %424 = tail call double @llvm.fabs.f64(double %423)
  %425 = fcmp ogt double %424, 0x41DFFFFFFFC00000
  %426 = fptosi double %423 to i32
  %427 = select i1 %425, i32 -2147483648, i32 %426
  %428 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %429 = add i32 %427, %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX.i403, align 8
  %431 = icmp ult i32 %429, %427
  %432 = icmp ult i32 %429, %428
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %14, align 1
  %435 = and i32 %429, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %21, align 1
  %440 = xor i32 %427, %428
  %441 = xor i32 %440, %429
  %442 = lshr i32 %441, 4
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %26, align 1
  %445 = icmp eq i32 %429, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %29, align 1
  %447 = lshr i32 %429, 31
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %32, align 1
  %449 = lshr i32 %427, 31
  %450 = lshr i32 %428, 31
  %451 = xor i32 %447, %449
  %452 = xor i32 %447, %450
  %453 = add nuw nsw i32 %451, %452
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %38, align 1
  %456 = add i64 %421, 18
  store i64 %456, i64* %3, align 8
  store i32 %429, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  br label %block_.L_47ce8f

block_.L_47ce8f:                                  ; preds = %block_.L_47ce38, %block_47ce33
  %457 = phi i64 [ %456, %block_.L_47ce38 ], [ %359, %block_47ce33 ]
  %MEMORY.6 = phi %struct.Memory* [ %420, %block_.L_47ce38 ], [ %353, %block_47ce33 ]
  %458 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %458, i64* %RAX.i403, align 8
  %459 = add i64 %458, 72620
  %460 = add i64 %457, 14
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX.i1315, align 8
  store i64 %458, i64* %RAX.i403, align 8
  %464 = add i64 %458, 72608
  %465 = add i64 %457, 28
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sub i32 %462, %467
  %469 = icmp ult i32 %462, %467
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %14, align 1
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i32 %467, %462
  %477 = xor i32 %476, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %26, align 1
  %481 = icmp eq i32 %468, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %29, align 1
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %32, align 1
  %485 = lshr i32 %462, 31
  %486 = lshr i32 %467, 31
  %487 = xor i32 %486, %485
  %488 = xor i32 %483, %485
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %38, align 1
  %.v167 = select i1 %481, i64 34, i64 216
  %492 = add i64 %457, %.v167
  %493 = add i64 %492, 8
  store i64 %493, i64* %3, align 8
  store i64 %458, i64* %RAX.i403, align 8
  br i1 %481, label %block_47ceb1, label %block_.L_47cf67

block_47ceb1:                                     ; preds = %block_.L_47ce8f
  %494 = add i64 %458, 72576
  %495 = add i64 %492, 15
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, -1
  %499 = icmp eq i32 %497, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %14, align 1
  %501 = and i32 %498, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %21, align 1
  %506 = xor i32 %498, %497
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %26, align 1
  %510 = icmp eq i32 %498, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %29, align 1
  %512 = lshr i32 %498, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %32, align 1
  %514 = lshr i32 %497, 31
  %515 = xor i32 %512, %514
  %516 = add nuw nsw i32 %515, %514
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %38, align 1
  %.v185 = select i1 %510, i64 21, i64 120
  %519 = add i64 %492, %.v185
  store i64 %519, i64* %3, align 8
  br i1 %510, label %block_47cec6, label %block_.L_47cf29

block_47cec6:                                     ; preds = %block_47ceb1
  %520 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*), align 8
  %521 = load double, double* bitcast (%G_0x722fe0_type* @G_0x722fe0 to double*), align 8
  %522 = fsub double %520, %521
  %523 = load i32, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  %524 = add i32 %523, -1
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX.i403, align 8
  %526 = icmp eq i32 %523, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %14, align 1
  %528 = and i32 %524, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %21, align 1
  %533 = xor i32 %524, %523
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %26, align 1
  %537 = icmp eq i32 %524, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %29, align 1
  %539 = lshr i32 %524, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %32, align 1
  %541 = lshr i32 %523, 31
  %542 = xor i32 %539, %541
  %543 = add nuw nsw i32 %542, %541
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %38, align 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %547 = sitofp i32 %524 to double
  %548 = bitcast %union.VectorReg* %546 to double*
  %549 = fdiv double %522, %547
  store double %549, double* bitcast (%G_0x6f9690_type* @G_0x6f9690 to double*), align 8
  store double %549, double* %321, align 1
  store double 0.000000e+00, double* %324, align 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %551 = fsub double %520, %549
  store double %551, double* %548, align 1
  store i64 0, i64* %550, align 1
  %552 = add i64 %519, 94
  store i64 %552, i64* %3, align 8
  store double %551, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %553 = add i64 %519, 156
  br label %block_.L_47cf62

block_.L_47cf29:                                  ; preds = %block_47ceb1
  store i64 %458, i64* %RAX.i403, align 8
  %554 = add i64 %519, 15
  store i64 %554, i64* %3, align 8
  %555 = load i32, i32* %496, align 4
  %556 = add i32 %555, -1
  %557 = icmp eq i32 %555, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %14, align 1
  %559 = and i32 %556, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %21, align 1
  %564 = xor i32 %556, %555
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %26, align 1
  %568 = icmp eq i32 %556, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %29, align 1
  %570 = lshr i32 %556, 31
  %571 = trunc i32 %570 to i8
  store i8 %571, i8* %32, align 1
  %572 = lshr i32 %555, 31
  %573 = xor i32 %570, %572
  %574 = add nuw nsw i32 %573, %572
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %38, align 1
  %577 = icmp ne i8 %571, 0
  %578 = xor i1 %577, %575
  %579 = or i1 %568, %578
  %.v186 = select i1 %579, i64 52, i64 21
  %580 = add i64 %519, %.v186
  store i64 %580, i64* %3, align 8
  br i1 %579, label %block_.L_47cf5d, label %block_47cf3e

block_47cf3e:                                     ; preds = %block_.L_47cf29
  %581 = load i64, i64* bitcast (%G_0x6f9690_type* @G_0x6f9690 to i64*), align 8
  store i64 %581, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %583 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %584 = bitcast %union.VectorReg* %582 to double*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %586 = bitcast i64 %581 to double
  %587 = fsub double %583, %586
  store double %587, double* %584, align 1
  store i64 0, i64* %585, align 1
  %588 = add i64 %580, 31
  store i64 %588, i64* %3, align 8
  store double %587, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  br label %block_.L_47cf5d

block_.L_47cf5d:                                  ; preds = %block_47cf3e, %block_.L_47cf29
  %589 = phi i64 [ %588, %block_47cf3e ], [ %580, %block_.L_47cf29 ]
  %590 = add i64 %589, 5
  store i64 %590, i64* %3, align 8
  br label %block_.L_47cf62

block_.L_47cf62:                                  ; preds = %block_.L_47cf5d, %block_47cec6
  %storemerge88 = phi i64 [ %553, %block_47cec6 ], [ %590, %block_.L_47cf5d ]
  %591 = add i64 %storemerge88, 657
  br label %block_.L_47d1f3

block_.L_47cf67:                                  ; preds = %block_.L_47ce8f
  %592 = add i64 %458, 72564
  %593 = add i64 %492, 15
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  store i8 0, i8* %14, align 1
  %596 = and i32 %595, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %601 = icmp eq i32 %595, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %29, align 1
  %603 = lshr i32 %595, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %605 = icmp ne i8 %604, 0
  %606 = or i1 %601, %605
  %.v168 = select i1 %606, i64 241, i64 21
  %607 = add i64 %492, %.v168
  store i64 %607, i64* %3, align 8
  br i1 %606, label %block_.L_47d058, label %block_47cf7c

block_47cf7c:                                     ; preds = %block_.L_47cf67
  %608 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %608, i64* %RAX.i403, align 8
  %609 = add i64 %608, 2880
  %610 = add i64 %607, 15
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = add i32 %612, -2
  %614 = icmp ult i32 %612, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %14, align 1
  %616 = and i32 %613, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %21, align 1
  %621 = xor i32 %613, %612
  %622 = lshr i32 %621, 4
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %26, align 1
  %625 = icmp eq i32 %613, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %29, align 1
  %627 = lshr i32 %613, 31
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %32, align 1
  %629 = lshr i32 %612, 31
  %630 = xor i32 %627, %629
  %631 = add nuw nsw i32 %630, %629
  %632 = icmp eq i32 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %38, align 1
  %.v169 = select i1 %625, i64 42, i64 21
  %634 = add i64 %607, %.v169
  store i64 %634, i64* %3, align 8
  br i1 %625, label %block_.L_47cfa6, label %block_47cf91

block_47cf91:                                     ; preds = %block_47cf7c
  store i64 %608, i64* %RAX.i403, align 8
  %635 = add i64 %608, 2884
  %636 = add i64 %634, 15
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  store i8 0, i8* %14, align 1
  %639 = and i32 %638, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %644 = icmp eq i32 %638, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %29, align 1
  %646 = lshr i32 %638, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v170 = select i1 %644, i64 118, i64 21
  %648 = add i64 %634, %.v170
  store i64 %648, i64* %3, align 8
  br i1 %644, label %block_.L_47d007, label %block_.L_47cfa6

block_.L_47cfa6:                                  ; preds = %block_47cf91, %block_47cf7c
  %649 = phi i64 [ %648, %block_47cf91 ], [ %634, %block_47cf7c ]
  store i64 %458, i64* %RAX.i403, align 8
  %650 = add i64 %458, 72600
  %651 = add i64 %649, 15
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = add i32 %653, -1
  %655 = icmp eq i32 %653, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %14, align 1
  %657 = and i32 %654, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %21, align 1
  %662 = xor i32 %654, %653
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %26, align 1
  %666 = icmp eq i32 %654, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  %668 = lshr i32 %654, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %32, align 1
  %670 = lshr i32 %653, 31
  %671 = xor i32 %668, %670
  %672 = add nuw nsw i32 %671, %670
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %38, align 1
  %.v171 = select i1 %666, i64 21, i64 97
  %675 = add i64 %649, %.v171
  store i64 %675, i64* %3, align 8
  br i1 %666, label %block_47cfbb, label %block_.L_47d007

block_47cfbb:                                     ; preds = %block_.L_47cfa6
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -16
  %678 = add i64 %675, 7
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  store i32 0, i32* %679, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_47cfc2

block_.L_47cfc2:                                  ; preds = %block_47cfd2, %block_47cfbb
  %680 = phi i64 [ %763, %block_47cfd2 ], [ %.pre119, %block_47cfbb ]
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -16
  %683 = add i64 %680, 3
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RAX.i403, align 8
  %687 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  %688 = sub i32 %685, %687
  %689 = icmp ult i32 %685, %687
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %14, align 1
  %691 = and i32 %688, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %21, align 1
  %696 = xor i32 %687, %685
  %697 = xor i32 %696, %688
  %698 = lshr i32 %697, 4
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  store i8 %700, i8* %26, align 1
  %701 = icmp eq i32 %688, 0
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %29, align 1
  %703 = lshr i32 %688, 31
  %704 = trunc i32 %703 to i8
  store i8 %704, i8* %32, align 1
  %705 = lshr i32 %685, 31
  %706 = lshr i32 %687, 31
  %707 = xor i32 %706, %705
  %708 = xor i32 %703, %705
  %709 = add nuw nsw i32 %708, %707
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %38, align 1
  %712 = icmp ne i8 %704, 0
  %713 = xor i1 %712, %710
  %.v184 = select i1 %713, i64 16, i64 64
  %714 = add i64 %680, %.v184
  store i64 %714, i64* %3, align 8
  br i1 %713, label %block_47cfd2, label %block_.L_47d002

block_47cfd2:                                     ; preds = %block_.L_47cfc2
  %715 = load i64, i64* bitcast (%G_0x723630_type* @G_0x723630 to i64*), align 8
  store i64 %715, i64* %RAX.i403, align 8
  %716 = add i64 %714, 12
  store i64 %716, i64* %3, align 8
  %717 = load i32, i32* %684, align 4
  %718 = sext i32 %717 to i64
  store i64 %718, i64* %RCX.i1315, align 8
  %719 = shl nsw i64 %718, 3
  %720 = add i64 %719, %715
  %721 = add i64 %714, 17
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %724 = load i64, i64* bitcast (%G_0x6cea38_type* @G_0x6cea38 to i64*), align 8
  store i64 %724, i64* %RAX.i403, align 8
  %725 = add i64 %714, 29
  store i64 %725, i64* %3, align 8
  %726 = load i32, i32* %684, align 4
  %727 = sext i32 %726 to i64
  store i64 %727, i64* %RCX.i1315, align 8
  %728 = shl nsw i64 %727, 3
  %729 = add i64 %728, %724
  %730 = add i64 %714, 34
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i64*
  store i64 %723, i64* %731, align 8
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -16
  %734 = load i64, i64* %3, align 8
  %735 = add i64 %734, 3
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = add i32 %737, 1
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RAX.i403, align 8
  %740 = icmp eq i32 %737, -1
  %741 = icmp eq i32 %738, 0
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %14, align 1
  %744 = and i32 %738, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %21, align 1
  %749 = xor i32 %738, %737
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %26, align 1
  %753 = zext i1 %741 to i8
  store i8 %753, i8* %29, align 1
  %754 = lshr i32 %738, 31
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %32, align 1
  %756 = lshr i32 %737, 31
  %757 = xor i32 %754, %756
  %758 = add nuw nsw i32 %757, %754
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %38, align 1
  %761 = add i64 %734, 9
  store i64 %761, i64* %3, align 8
  store i32 %738, i32* %736, align 4
  %762 = load i64, i64* %3, align 8
  %763 = add i64 %762, -59
  store i64 %763, i64* %3, align 8
  br label %block_.L_47cfc2

block_.L_47d002:                                  ; preds = %block_.L_47cfc2
  %764 = add i64 %714, 81
  br label %block_.L_47d053

block_.L_47d007:                                  ; preds = %block_.L_47cfa6, %block_47cf91
  %765 = phi i64 [ %675, %block_.L_47cfa6 ], [ %648, %block_47cf91 ]
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -16
  %768 = add i64 %765, 7
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  store i32 0, i32* %769, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_47d00e

block_.L_47d00e:                                  ; preds = %block_47d01e, %block_.L_47d007
  %770 = phi i64 [ %853, %block_47d01e ], [ %.pre120, %block_.L_47d007 ]
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -16
  %773 = add i64 %770, 3
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i403, align 8
  %777 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  %778 = sub i32 %775, %777
  %779 = icmp ult i32 %775, %777
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %14, align 1
  %781 = and i32 %778, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  %786 = xor i32 %777, %775
  %787 = xor i32 %786, %778
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %26, align 1
  %791 = icmp eq i32 %778, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %29, align 1
  %793 = lshr i32 %778, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %32, align 1
  %795 = lshr i32 %775, 31
  %796 = lshr i32 %777, 31
  %797 = xor i32 %796, %795
  %798 = xor i32 %793, %795
  %799 = add nuw nsw i32 %798, %797
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %38, align 1
  %802 = icmp ne i8 %794, 0
  %803 = xor i1 %802, %800
  %.v172 = select i1 %803, i64 16, i64 64
  %804 = add i64 %770, %.v172
  store i64 %804, i64* %3, align 8
  br i1 %803, label %block_47d01e, label %block_.L_47d04e

block_47d01e:                                     ; preds = %block_.L_47d00e
  %805 = load i64, i64* bitcast (%G_0x724bd8_type* @G_0x724bd8 to i64*), align 8
  store i64 %805, i64* %RAX.i403, align 8
  %806 = add i64 %804, 12
  store i64 %806, i64* %3, align 8
  %807 = load i32, i32* %774, align 4
  %808 = sext i32 %807 to i64
  store i64 %808, i64* %RCX.i1315, align 8
  %809 = shl nsw i64 %808, 3
  %810 = add i64 %809, %805
  %811 = add i64 %804, 17
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %814 = load i64, i64* bitcast (%G_0x6f9350_type* @G_0x6f9350 to i64*), align 8
  store i64 %814, i64* %RAX.i403, align 8
  %815 = add i64 %804, 29
  store i64 %815, i64* %3, align 8
  %816 = load i32, i32* %774, align 4
  %817 = sext i32 %816 to i64
  store i64 %817, i64* %RCX.i1315, align 8
  %818 = shl nsw i64 %817, 3
  %819 = add i64 %818, %814
  %820 = add i64 %804, 34
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i64*
  store i64 %813, i64* %821, align 8
  %822 = load i64, i64* %RBP.i, align 8
  %823 = add i64 %822, -16
  %824 = load i64, i64* %3, align 8
  %825 = add i64 %824, 3
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %823 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = add i32 %827, 1
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RAX.i403, align 8
  %830 = icmp eq i32 %827, -1
  %831 = icmp eq i32 %828, 0
  %832 = or i1 %830, %831
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %14, align 1
  %834 = and i32 %828, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %21, align 1
  %839 = xor i32 %828, %827
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %26, align 1
  %843 = zext i1 %831 to i8
  store i8 %843, i8* %29, align 1
  %844 = lshr i32 %828, 31
  %845 = trunc i32 %844 to i8
  store i8 %845, i8* %32, align 1
  %846 = lshr i32 %827, 31
  %847 = xor i32 %844, %846
  %848 = add nuw nsw i32 %847, %844
  %849 = icmp eq i32 %848, 2
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %38, align 1
  %851 = add i64 %824, 9
  store i64 %851, i64* %3, align 8
  store i32 %828, i32* %826, align 4
  %852 = load i64, i64* %3, align 8
  %853 = add i64 %852, -59
  store i64 %853, i64* %3, align 8
  br label %block_.L_47d00e

block_.L_47d04e:                                  ; preds = %block_.L_47d00e
  %854 = add i64 %804, 5
  store i64 %854, i64* %3, align 8
  br label %block_.L_47d053

block_.L_47d053:                                  ; preds = %block_.L_47d04e, %block_.L_47d002
  %storemerge96 = phi i64 [ %764, %block_.L_47d002 ], [ %854, %block_.L_47d04e ]
  %855 = add i64 %storemerge96, 5
  store i64 %855, i64* %3, align 8
  %.pre121 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_47d058

block_.L_47d058:                                  ; preds = %block_.L_47d053, %block_.L_47cf67
  %856 = phi i64 [ %.pre121, %block_.L_47d053 ], [ %458, %block_.L_47cf67 ]
  %857 = phi i64 [ %855, %block_.L_47d053 ], [ %607, %block_.L_47cf67 ]
  store i64 %856, i64* %RAX.i403, align 8
  %858 = add i64 %856, 72568
  %859 = add i64 %857, 15
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = add i32 %861, -1
  %863 = icmp eq i32 %861, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %14, align 1
  %865 = and i32 %862, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %21, align 1
  %870 = xor i32 %862, %861
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %26, align 1
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %29, align 1
  %876 = lshr i32 %862, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %32, align 1
  %878 = lshr i32 %861, 31
  %879 = xor i32 %876, %878
  %880 = add nuw nsw i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %38, align 1
  %.v173 = select i1 %874, i64 21, i64 203
  %883 = add i64 %857, %.v173
  %884 = add i64 %883, 8
  store i64 %884, i64* %3, align 8
  store i64 %856, i64* %RAX.i403, align 8
  br i1 %874, label %block_47d06d, label %block_.L_47d123

block_47d06d:                                     ; preds = %block_.L_47d058
  %885 = add i64 %856, 72576
  %886 = add i64 %883, 15
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = add i32 %888, -1
  %890 = icmp eq i32 %888, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %14, align 1
  %892 = and i32 %889, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %21, align 1
  %897 = xor i32 %889, %888
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %26, align 1
  %901 = icmp eq i32 %889, 0
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %29, align 1
  %903 = lshr i32 %889, 31
  %904 = trunc i32 %903 to i8
  store i8 %904, i8* %32, align 1
  %905 = lshr i32 %888, 31
  %906 = xor i32 %903, %905
  %907 = add nuw nsw i32 %906, %905
  %908 = icmp eq i32 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %38, align 1
  %.v182 = select i1 %901, i64 21, i64 120
  %910 = add i64 %883, %.v182
  store i64 %910, i64* %3, align 8
  br i1 %901, label %block_47d082, label %block_.L_47d0e5

block_47d082:                                     ; preds = %block_47d06d
  %911 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*), align 8
  %912 = load double, double* bitcast (%G_0x722fe0_type* @G_0x722fe0 to double*), align 8
  %913 = fsub double %911, %912
  %914 = load i32, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  %915 = add i32 %914, -1
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i403, align 8
  %917 = icmp eq i32 %914, 0
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %14, align 1
  %919 = and i32 %915, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  %924 = xor i32 %915, %914
  %925 = lshr i32 %924, 4
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %26, align 1
  %928 = icmp eq i32 %915, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %29, align 1
  %930 = lshr i32 %915, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %32, align 1
  %932 = lshr i32 %914, 31
  %933 = xor i32 %930, %932
  %934 = add nuw nsw i32 %933, %932
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %38, align 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %938 = sitofp i32 %915 to double
  %939 = bitcast %union.VectorReg* %937 to double*
  %940 = fdiv double %913, %938
  store double %940, double* bitcast (%G_0x6f9690_type* @G_0x6f9690 to double*), align 8
  store double %940, double* %321, align 1
  store double 0.000000e+00, double* %324, align 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %942 = fsub double %911, %940
  store double %942, double* %939, align 1
  store i64 0, i64* %941, align 1
  %943 = add i64 %910, 94
  store i64 %943, i64* %3, align 8
  store double %942, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %944 = add i64 %910, 156
  br label %block_.L_47d11e

block_.L_47d0e5:                                  ; preds = %block_47d06d
  store i64 %856, i64* %RAX.i403, align 8
  %945 = add i64 %910, 15
  store i64 %945, i64* %3, align 8
  %946 = load i32, i32* %887, align 4
  %947 = add i32 %946, -1
  %948 = icmp eq i32 %946, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %14, align 1
  %950 = and i32 %947, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %21, align 1
  %955 = xor i32 %947, %946
  %956 = lshr i32 %955, 4
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  store i8 %958, i8* %26, align 1
  %959 = icmp eq i32 %947, 0
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %29, align 1
  %961 = lshr i32 %947, 31
  %962 = trunc i32 %961 to i8
  store i8 %962, i8* %32, align 1
  %963 = lshr i32 %946, 31
  %964 = xor i32 %961, %963
  %965 = add nuw nsw i32 %964, %963
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %38, align 1
  %968 = icmp ne i8 %962, 0
  %969 = xor i1 %968, %966
  %970 = or i1 %959, %969
  %.v183 = select i1 %970, i64 52, i64 21
  %971 = add i64 %910, %.v183
  store i64 %971, i64* %3, align 8
  br i1 %970, label %block_.L_47d119, label %block_47d0fa

block_47d0fa:                                     ; preds = %block_.L_47d0e5
  %972 = load i64, i64* bitcast (%G_0x6f9690_type* @G_0x6f9690 to i64*), align 8
  store i64 %972, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %974 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %975 = bitcast %union.VectorReg* %973 to double*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %977 = bitcast i64 %972 to double
  %978 = fsub double %974, %977
  store double %978, double* %975, align 1
  store i64 0, i64* %976, align 1
  %979 = add i64 %971, 31
  store i64 %979, i64* %3, align 8
  store double %978, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  br label %block_.L_47d119

block_.L_47d119:                                  ; preds = %block_47d0fa, %block_.L_47d0e5
  %980 = phi i64 [ %979, %block_47d0fa ], [ %971, %block_.L_47d0e5 ]
  %981 = add i64 %980, 5
  store i64 %981, i64* %3, align 8
  br label %block_.L_47d11e

block_.L_47d11e:                                  ; preds = %block_.L_47d119, %block_47d082
  %storemerge101 = phi i64 [ %944, %block_47d082 ], [ %981, %block_.L_47d119 ]
  %982 = add i64 %storemerge101, 208
  br label %block_.L_47d1ee

block_.L_47d123:                                  ; preds = %block_.L_47d058
  %983 = add i64 %883, 15
  store i64 %983, i64* %3, align 8
  %984 = load i32, i32* %860, align 4
  %985 = add i32 %984, -1
  %986 = icmp eq i32 %984, 0
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1
  %988 = and i32 %985, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i32 %985, %984
  %994 = lshr i32 %993, 4
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  store i8 %996, i8* %26, align 1
  %997 = icmp eq i32 %985, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %29, align 1
  %999 = lshr i32 %985, 31
  %1000 = trunc i32 %999 to i8
  store i8 %1000, i8* %32, align 1
  %1001 = lshr i32 %984, 31
  %1002 = xor i32 %999, %1001
  %1003 = add nuw nsw i32 %1002, %1001
  %1004 = icmp eq i32 %1003, 2
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %38, align 1
  %1006 = icmp ne i8 %1000, 0
  %1007 = xor i1 %1006, %1004
  %1008 = or i1 %997, %1007
  %.v174 = select i1 %1008, i64 198, i64 21
  %1009 = add i64 %883, %.v174
  store i64 %1009, i64* %3, align 8
  br i1 %1008, label %block_.L_47d1e9, label %block_47d138

block_47d138:                                     ; preds = %block_.L_47d123
  store i64 %856, i64* %RAX.i403, align 8
  %1010 = add i64 %856, 72576
  %1011 = add i64 %1009, 15
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  store i8 0, i8* %14, align 1
  %1014 = and i32 %1013, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1019 = icmp eq i32 %1013, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %29, align 1
  %1021 = lshr i32 %1013, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v175 = select i1 %1019, i64 21, i64 115
  %1023 = add i64 %1009, %.v175
  store i64 %1023, i64* %3, align 8
  br i1 %1019, label %block_47d14d, label %block_.L_47d1ab

block_47d14d:                                     ; preds = %block_47d138
  %1024 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*), align 8
  %1025 = load double, double* bitcast (%G_0x722fe0_type* @G_0x722fe0 to double*), align 8
  %1026 = fsub double %1024, %1025
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1028 = load i32, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  %1029 = sitofp i32 %1028 to double
  %1030 = bitcast %union.VectorReg* %1027 to double*
  %1031 = fdiv double %1026, %1029
  store double %1031, double* bitcast (%G_0x6f9690_type* @G_0x6f9690 to double*), align 8
  store double %1031, double* %321, align 1
  store double 0.000000e+00, double* %324, align 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1033 = fsub double %1024, %1031
  store double %1033, double* %1030, align 1
  store i64 0, i64* %1032, align 1
  %1034 = add i64 %1023, 89
  store i64 %1034, i64* %3, align 8
  store double %1033, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %1035 = add i64 %1023, 151
  br label %block_.L_47d1e4

block_.L_47d1ab:                                  ; preds = %block_47d138
  store i64 %856, i64* %RAX.i403, align 8
  %1036 = add i64 %1023, 15
  store i64 %1036, i64* %3, align 8
  %1037 = load i32, i32* %1012, align 4
  store i8 0, i8* %14, align 1
  %1038 = and i32 %1037, 255
  %1039 = tail call i32 @llvm.ctpop.i32(i32 %1038)
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = xor i8 %1041, 1
  store i8 %1042, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1043 = icmp eq i32 %1037, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %29, align 1
  %1045 = lshr i32 %1037, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1047 = icmp ne i8 %1046, 0
  %1048 = or i1 %1043, %1047
  %.v176 = select i1 %1048, i64 52, i64 21
  %1049 = add i64 %1023, %.v176
  store i64 %1049, i64* %3, align 8
  br i1 %1048, label %block_.L_47d1df, label %block_47d1c0

block_47d1c0:                                     ; preds = %block_.L_47d1ab
  %1050 = load i64, i64* bitcast (%G_0x6f9690_type* @G_0x6f9690 to i64*), align 8
  store i64 %1050, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1052 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %1053 = bitcast %union.VectorReg* %1051 to double*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1055 = bitcast i64 %1050 to double
  %1056 = fsub double %1052, %1055
  store double %1056, double* %1053, align 1
  store i64 0, i64* %1054, align 1
  %1057 = add i64 %1049, 31
  store i64 %1057, i64* %3, align 8
  store double %1056, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  br label %block_.L_47d1df

block_.L_47d1df:                                  ; preds = %block_47d1c0, %block_.L_47d1ab
  %1058 = phi i64 [ %1057, %block_47d1c0 ], [ %1049, %block_.L_47d1ab ]
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %3, align 8
  br label %block_.L_47d1e4

block_.L_47d1e4:                                  ; preds = %block_.L_47d1df, %block_47d14d
  %storemerge108 = phi i64 [ %1035, %block_47d14d ], [ %1059, %block_.L_47d1df ]
  %1060 = add i64 %storemerge108, 5
  store i64 %1060, i64* %3, align 8
  br label %block_.L_47d1e9

block_.L_47d1e9:                                  ; preds = %block_.L_47d1e4, %block_.L_47d123
  %1061 = phi i64 [ %1060, %block_.L_47d1e4 ], [ %1009, %block_.L_47d123 ]
  %1062 = add i64 %1061, 5
  store i64 %1062, i64* %3, align 8
  br label %block_.L_47d1ee

block_.L_47d1ee:                                  ; preds = %block_.L_47d1e9, %block_.L_47d11e
  %storemerge102 = phi i64 [ %982, %block_.L_47d11e ], [ %1062, %block_.L_47d1e9 ]
  %1063 = add i64 %storemerge102, 5
  store i64 %1063, i64* %3, align 8
  br label %block_.L_47d1f3

block_.L_47d1f3:                                  ; preds = %block_.L_47d1ee, %block_.L_47cf62
  %1064 = phi i64 [ %458, %block_.L_47cf62 ], [ %856, %block_.L_47d1ee ]
  %storemerge89 = phi i64 [ %591, %block_.L_47cf62 ], [ %1063, %block_.L_47d1ee ]
  store i64 %1064, i64* %RAX.i403, align 8
  %1065 = add i64 %1064, 72564
  %1066 = add i64 %storemerge89, 15
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = add i32 %1068, -1
  %1070 = icmp eq i32 %1068, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %14, align 1
  %1072 = and i32 %1069, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %21, align 1
  %1077 = xor i32 %1069, %1068
  %1078 = lshr i32 %1077, 4
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %26, align 1
  %1081 = icmp eq i32 %1069, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %29, align 1
  %1083 = lshr i32 %1069, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %32, align 1
  %1085 = lshr i32 %1068, 31
  %1086 = xor i32 %1083, %1085
  %1087 = add nuw nsw i32 %1086, %1085
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %38, align 1
  %.v177 = select i1 %1081, i64 21, i64 39
  %1090 = add i64 %storemerge89, %.v177
  store i64 %1090, i64* %3, align 8
  br i1 %1081, label %block_47d208, label %block_.L_47d21a

block_47d208:                                     ; preds = %block_.L_47d1f3
  %1091 = load i64, i64* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to i64*), align 8
  store i64 %1091, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %1092 = add i64 %1090, 18
  store i64 %1092, i64* %3, align 8
  store i64 %1091, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  br label %block_.L_47d21a

block_.L_47d21a:                                  ; preds = %block_.L_47d1f3, %block_47d208
  %1093 = phi i64 [ %1092, %block_47d208 ], [ %1090, %block_.L_47d1f3 ]
  store i64 %1064, i64* %RAX.i403, align 8
  %1094 = add i64 %1093, 15
  store i64 %1094, i64* %3, align 8
  %1095 = load i32, i32* %1067, align 4
  %1096 = add i32 %1095, -8
  %1097 = icmp ult i32 %1095, 8
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %14, align 1
  %1099 = and i32 %1096, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  %1104 = xor i32 %1096, %1095
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %26, align 1
  %1108 = icmp eq i32 %1096, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %29, align 1
  %1110 = lshr i32 %1096, 31
  %1111 = trunc i32 %1110 to i8
  store i8 %1111, i8* %32, align 1
  %1112 = lshr i32 %1095, 31
  %1113 = xor i32 %1110, %1112
  %1114 = add nuw nsw i32 %1113, %1112
  %1115 = icmp eq i32 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %38, align 1
  %1117 = icmp ne i8 %1111, 0
  %1118 = xor i1 %1117, %1115
  %.v178 = select i1 %1118, i64 21, i64 143
  %1119 = add i64 %1093, %.v178
  store i64 %1119, i64* %3, align 8
  br i1 %1118, label %block_47d22f, label %block_.L_47d2a9

block_47d22f:                                     ; preds = %block_.L_47d21a
  store i64 %1064, i64* %RAX.i403, align 8
  %1120 = add i64 %1119, 15
  store i64 %1120, i64* %3, align 8
  %1121 = load i32, i32* %1067, align 4
  %1122 = add i32 %1121, -1
  %1123 = icmp eq i32 %1121, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %14, align 1
  %1125 = and i32 %1122, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  %1130 = xor i32 %1122, %1121
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %26, align 1
  %1134 = icmp eq i32 %1122, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %29, align 1
  %1136 = lshr i32 %1122, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %32, align 1
  %1138 = lshr i32 %1121, 31
  %1139 = xor i32 %1136, %1138
  %1140 = add nuw nsw i32 %1139, %1138
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %38, align 1
  %1143 = icmp ne i8 %1137, 0
  %1144 = xor i1 %1143, %1141
  %1145 = or i1 %1134, %1144
  %.v181 = select i1 %1145, i64 122, i64 21
  %1146 = add i64 %1119, %.v181
  store i64 %1146, i64* %3, align 8
  br i1 %1145, label %block_.L_47d2a9, label %block_47d244

block_47d244:                                     ; preds = %block_47d22f
  %1147 = load i64, i64* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to i64*), align 8
  store i64 %1147, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  store i64 %1064, i64* %RAX.i403, align 8
  %1148 = add i64 %1146, 23
  store i64 %1148, i64* %3, align 8
  %1149 = load i32, i32* %1067, align 4
  %1150 = add i32 %1149, -1
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RCX.i1315, align 8
  %1152 = icmp eq i32 %1149, 0
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1150, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1150, %1149
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %26, align 1
  %1163 = icmp eq i32 %1150, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %29, align 1
  %1165 = lshr i32 %1150, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %32, align 1
  %1167 = lshr i32 %1149, 31
  %1168 = xor i32 %1165, %1167
  %1169 = add nuw nsw i32 %1168, %1167
  %1170 = icmp eq i32 %1169, 2
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %38, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1173 = sitofp i32 %1150 to double
  %1174 = bitcast %union.VectorReg* %1172 to double*
  store double %1173, double* %1174, align 1
  %1175 = bitcast i64 %1147 to double
  %1176 = fmul double %1173, %1175
  store double %1176, double* %321, align 1
  store i64 0, i64* %323, align 1
  store i64 %1064, i64* %RAX.i403, align 8
  %1177 = add i64 %1146, 50
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %1067, align 4
  %1179 = sitofp i32 %1178 to double
  %1180 = fdiv double %1176, %1179
  store double %1180, double* %321, align 1
  store i64 0, i64* %323, align 1
  %1181 = load i64, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  %1182 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1172, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1181, i64* %1182, align 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1184 = bitcast i64* %1183 to double*
  store double 0.000000e+00, double* %1184, align 1
  store i64 %1064, i64* %RAX.i403, align 8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1186 = add i64 %1146, 79
  store i64 %1186, i64* %3, align 8
  %1187 = load i32, i32* %1067, align 4
  %1188 = sitofp i32 %1187 to double
  %1189 = bitcast %union.VectorReg* %1185 to double*
  store double %1188, double* %1189, align 1
  %1190 = bitcast i64 %1181 to double
  %1191 = fdiv double %1190, %1188
  store double %1191, double* %1174, align 1
  store i64 0, i64* %1183, align 1
  %1192 = fadd double %1191, %1180
  store double %1192, double* %321, align 1
  store i64 0, i64* %323, align 1
  %1193 = add i64 %1146, 96
  store i64 %1193, i64* %3, align 8
  store double %1192, double* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to double*), align 8
  %1194 = add i64 %1146, 182
  br label %block_.L_47d2fa

block_.L_47d2a9:                                  ; preds = %block_.L_47d21a, %block_47d22f
  %1195 = phi i64 [ %1119, %block_.L_47d21a ], [ %1146, %block_47d22f ]
  store i64 %1064, i64* %RAX.i403, align 8
  %1196 = add i64 %1195, 15
  store i64 %1196, i64* %3, align 8
  %1197 = load i32, i32* %1067, align 4
  %1198 = add i32 %1197, -1
  %1199 = icmp eq i32 %1197, 0
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %14, align 1
  %1201 = and i32 %1198, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %21, align 1
  %1206 = xor i32 %1198, %1197
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %26, align 1
  %1210 = icmp eq i32 %1198, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %29, align 1
  %1212 = lshr i32 %1198, 31
  %1213 = trunc i32 %1212 to i8
  store i8 %1213, i8* %32, align 1
  %1214 = lshr i32 %1197, 31
  %1215 = xor i32 %1212, %1214
  %1216 = add nuw nsw i32 %1215, %1214
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %38, align 1
  %1219 = icmp ne i8 %1213, 0
  %1220 = xor i1 %1219, %1217
  %1221 = or i1 %1210, %1220
  %.v179 = select i1 %1221, i64 76, i64 21
  %1222 = add i64 %1195, %.v179
  store i64 %1222, i64* %3, align 8
  br i1 %1221, label %block_.L_47d2f5, label %block_47d2be

block_47d2be:                                     ; preds = %block_.L_47d2a9
  %1223 = add i64 %1222, ptrtoint (%G_0x345fa__rip__type* @G_0x345fa__rip_ to i64)
  %1224 = add i64 %1222, 8
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1228 = add i64 %1222, add (i64 ptrtoint (%G_0x34662__rip__type* @G_0x34662__rip_ to i64), i64 8)
  %1229 = add i64 %1222, 16
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to double*
  %1231 = load double, double* %1230, align 8
  %1232 = bitcast %union.VectorReg* %1227 to double*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1235 = load double, double* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to double*), align 8
  %1236 = bitcast %union.VectorReg* %1234 to double*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1238 = bitcast i64 %1226 to double
  %1239 = fdiv double %1235, %1238
  %1240 = load double, double* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to double*), align 8
  %1241 = fmul double %1231, %1240
  %1242 = fdiv double %1241, %1238
  store double %1242, double* %1232, align 1
  store i64 0, i64* %1233, align 1
  %1243 = fadd double %1242, %1239
  store double %1243, double* %1236, align 1
  store i64 0, i64* %1237, align 1
  %1244 = add i64 %1222, 55
  store i64 %1244, i64* %3, align 8
  store double %1243, double* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to double*), align 8
  br label %block_.L_47d2f5

block_.L_47d2f5:                                  ; preds = %block_47d2be, %block_.L_47d2a9
  %1245 = phi i64 [ %1244, %block_47d2be ], [ %1222, %block_.L_47d2a9 ]
  %1246 = add i64 %1245, 5
  store i64 %1246, i64* %3, align 8
  br label %block_.L_47d2fa

block_.L_47d2fa:                                  ; preds = %block_.L_47d2f5, %block_47d244
  %storemerge91 = phi i64 [ %1194, %block_47d244 ], [ %1246, %block_.L_47d2f5 ]
  %1247 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1247, i64* %RAX.i403, align 8
  %1248 = add i64 %1247, 1236
  %1249 = add i64 %storemerge91, 15
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  store i8 0, i8* %14, align 1
  %1252 = and i32 %1251, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1257 = icmp eq i32 %1251, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %29, align 1
  %1259 = lshr i32 %1251, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1261 = icmp ne i8 %1260, 0
  %1262 = or i1 %1257, %1261
  %.v180 = select i1 %1262, i64 163, i64 21
  %1263 = add i64 %storemerge91, %.v180
  store i64 %1263, i64* %3, align 8
  br i1 %1262, label %block_.L_47d39d, label %block_47d30f

block_47d30f:                                     ; preds = %block_.L_47d2fa
  %1264 = load i64, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  store i64 %1264, i64* %322, align 1
  store double 0.000000e+00, double* %324, align 1
  store i64 %1247, i64* %RAX.i403, align 8
  %1265 = add i64 %1263, 23
  store i64 %1265, i64* %3, align 8
  %1266 = load i32, i32* %1250, align 4
  %1267 = add i32 %1266, 1
  %1268 = zext i32 %1267 to i64
  store i64 %1268, i64* %RCX.i1315, align 8
  %1269 = icmp eq i32 %1266, -1
  %1270 = icmp eq i32 %1267, 0
  %1271 = or i1 %1269, %1270
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %14, align 1
  %1273 = and i32 %1267, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  %1278 = xor i32 %1267, %1266
  %1279 = lshr i32 %1278, 4
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  store i8 %1281, i8* %26, align 1
  %1282 = zext i1 %1270 to i8
  store i8 %1282, i8* %29, align 1
  %1283 = lshr i32 %1267, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %32, align 1
  %1285 = lshr i32 %1266, 31
  %1286 = xor i32 %1283, %1285
  %1287 = add nuw nsw i32 %1286, %1283
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %38, align 1
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1291 = sitofp i32 %1267 to double
  %1292 = bitcast %union.VectorReg* %1290 to double*
  %1293 = bitcast i64 %1264 to double
  %1294 = fmul double %1291, %1293
  %1295 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %1296 = fmul double %1294, %1295
  store double %1296, double* %321, align 1
  store i64 0, i64* %323, align 1
  %1297 = load i64, i64* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to i64*), align 8
  %1298 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1290, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1297, i64* %1298, align 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1300 = bitcast i64* %1299 to double*
  store double 0.000000e+00, double* %1300, align 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1302 = bitcast %union.VectorReg* %1301 to double*
  %1303 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1301, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1264, i64* %1303, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1305 = bitcast i64* %1304 to double*
  store double 0.000000e+00, double* %1305, align 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1307 = load i64, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  %1308 = bitcast %union.VectorReg* %1306 to double*
  %1309 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1306, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1307, i64* %1309, align 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %1311 = bitcast i64* %1310 to double*
  store double 0.000000e+00, double* %1311, align 1
  store i64 %1247, i64* %RAX.i403, align 8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1313 = add i64 %1263, 86
  store i64 %1313, i64* %3, align 8
  %1314 = load i32, i32* %1250, align 4
  %1315 = sitofp i32 %1314 to double
  %1316 = bitcast %union.VectorReg* %1312 to double*
  store double %1315, double* %1316, align 1
  %1317 = bitcast i64 %1307 to double
  %1318 = fmul double %1315, %1317
  store double %1318, double* %1308, align 1
  store i64 0, i64* %1310, align 1
  %1319 = fadd double %1318, %1293
  store double %1319, double* %1302, align 1
  store i64 0, i64* %1304, align 1
  %1320 = bitcast i64 %1297 to double
  %1321 = fmul double %1319, %1320
  %1322 = fdiv double %1296, %1321
  %1323 = fdiv double %1295, %1320
  store double %1323, double* %1292, align 1
  store i64 0, i64* %1299, align 1
  %1324 = fsub double %1322, %1323
  %1325 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %1326 = fadd double %1324, %1325
  store double %1326, double* %321, align 1
  store i64 0, i64* %323, align 1
  %1327 = add i64 %1263, 142
  store i64 %1327, i64* %3, align 8
  store double %1326, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  br label %block_.L_47d39d

block_.L_47d39d:                                  ; preds = %block_47d30f, %block_.L_47d2fa
  %1328 = phi i64 [ %1327, %block_47d30f ], [ %1263, %block_.L_47d2fa ]
  %1329 = add i64 %1328, 423
  br label %block_.L_47d544

block_.L_47d3a2:                                  ; preds = %block_47cdfc
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1331 = bitcast [32 x %union.VectorReg]* %1330 to i8*
  %1332 = load i64, i64* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to i64*), align 8
  %1333 = bitcast [32 x %union.VectorReg]* %1330 to double*
  %1334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1330, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1332, i64* %1334, align 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1336 = bitcast i64* %1335 to double*
  store double 0.000000e+00, double* %1336, align 1
  %1337 = add i64 %316, 18
  store i64 %1337, i64* %3, align 8
  %1338 = bitcast i64 %1332 to double
  %1339 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %1340 = fcmp uno double %1338, %1339
  br i1 %1340, label %1341, label %1351

; <label>:1341:                                   ; preds = %block_.L_47d3a2
  %1342 = fadd double %1338, %1339
  %1343 = bitcast double %1342 to i64
  %1344 = and i64 %1343, 9221120237041090560
  %1345 = icmp eq i64 %1344, 9218868437227405312
  %1346 = and i64 %1343, 2251799813685247
  %1347 = icmp ne i64 %1346, 0
  %1348 = and i1 %1345, %1347
  br i1 %1348, label %1349, label %1357

; <label>:1349:                                   ; preds = %1341
  %1350 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1337, %struct.Memory* %MEMORY.0)
  %.pre115 = load i64, i64* %3, align 8
  %.pre116 = load i8, i8* %29, align 1
  br label %routine_ucomisd_0x6ccf88___xmm0.exit

; <label>:1351:                                   ; preds = %block_.L_47d3a2
  %1352 = fcmp ogt double %1338, %1339
  br i1 %1352, label %1357, label %1353

; <label>:1353:                                   ; preds = %1351
  %1354 = fcmp olt double %1338, %1339
  br i1 %1354, label %1357, label %1355

; <label>:1355:                                   ; preds = %1353
  %1356 = fcmp oeq double %1338, %1339
  br i1 %1356, label %1357, label %1361

; <label>:1357:                                   ; preds = %1355, %1353, %1351, %1341
  %1358 = phi i8 [ 0, %1351 ], [ 0, %1353 ], [ 1, %1355 ], [ 1, %1341 ]
  %1359 = phi i8 [ 0, %1351 ], [ 0, %1353 ], [ 0, %1355 ], [ 1, %1341 ]
  %1360 = phi i8 [ 0, %1351 ], [ 1, %1353 ], [ 0, %1355 ], [ 1, %1341 ]
  store i8 %1358, i8* %29, align 1
  store i8 %1359, i8* %21, align 1
  store i8 %1360, i8* %14, align 1
  br label %1361

; <label>:1361:                                   ; preds = %1357, %1355
  %1362 = phi i8 [ %1358, %1357 ], [ 1, %1355 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd_0x6ccf88___xmm0.exit

routine_ucomisd_0x6ccf88___xmm0.exit:             ; preds = %1361, %1349
  %1363 = phi i8 [ %.pre116, %1349 ], [ %1362, %1361 ]
  %1364 = phi i64 [ %.pre115, %1349 ], [ %1337, %1361 ]
  %1365 = phi %struct.Memory* [ %1350, %1349 ], [ %MEMORY.0, %1361 ]
  %1366 = icmp eq i8 %1363, 0
  %.v161 = select i1 %1366, i64 17, i64 6
  %1367 = add i64 %1364, %.v161
  store i64 %1367, i64* %3, align 8
  br i1 %1366, label %block_.L_47d3c5, label %block_47d3ba

block_47d3ba:                                     ; preds = %routine_ucomisd_0x6ccf88___xmm0.exit
  %1368 = load i8, i8* %21, align 1
  %1369 = icmp ne i8 %1368, 0
  %.v193 = select i1 %1369, i64 11, i64 6
  %1370 = add i64 %1367, %.v193
  store i64 %1370, i64* %3, align 8
  %cmpBr_47d3ba = icmp eq i8 %1368, 1
  br i1 %cmpBr_47d3ba, label %block_.L_47d3c5, label %block_47d3c0

block_47d3c0:                                     ; preds = %block_47d3ba
  %1371 = add i64 %1370, 92
  store i64 %1371, i64* %3, align 8
  br label %block_.L_47d41c

block_.L_47d3c5:                                  ; preds = %block_47d3ba, %routine_ucomisd_0x6ccf88___xmm0.exit
  %1372 = phi i64 [ %1370, %block_47d3ba ], [ %1367, %routine_ucomisd_0x6ccf88___xmm0.exit ]
  %1373 = add i64 %1372, ptrtoint (%G_0x344bb__rip__type* @G_0x344bb__rip_ to i64)
  %1374 = add i64 %1372, 8
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to double*
  %1376 = load double, double* %1375, align 8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1378 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %1379 = bitcast %union.VectorReg* %1377 to double*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1381 = load double, double* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to double*), align 8
  %1382 = fsub double %1378, %1381
  %1383 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %1384 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %1385 = add i32 %1384, %1383
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RAX.i403, align 8
  %1387 = icmp ult i32 %1385, %1383
  %1388 = icmp ult i32 %1385, %1384
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %14, align 1
  %1391 = and i32 %1385, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %21, align 1
  %1396 = xor i32 %1384, %1383
  %1397 = xor i32 %1396, %1385
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  store i8 %1400, i8* %26, align 1
  %1401 = icmp eq i32 %1385, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = lshr i32 %1385, 31
  %1404 = trunc i32 %1403 to i8
  store i8 %1404, i8* %32, align 1
  %1405 = lshr i32 %1383, 31
  %1406 = lshr i32 %1384, 31
  %1407 = xor i32 %1403, %1405
  %1408 = xor i32 %1403, %1406
  %1409 = add nuw nsw i32 %1407, %1408
  %1410 = icmp eq i32 %1409, 2
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %38, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1413 = sitofp i32 %1385 to double
  %1414 = bitcast %union.VectorReg* %1412 to double*
  store double %1413, double* %1414, align 1
  %1415 = fmul double %1413, %1382
  %1416 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %1417 = fdiv double %1415, %1416
  %1418 = fadd double %1417, %1376
  store double %1418, double* %1379, align 1
  store i64 0, i64* %1380, align 1
  %.cast82 = bitcast double %1418 to <2 x i32>
  %1419 = extractelement <2 x i32> %.cast82, i32 0
  %1420 = bitcast [32 x %union.VectorReg]* %1330 to i32*
  store i32 %1419, i32* %1420, align 1
  %1421 = extractelement <2 x i32> %.cast82, i32 1
  %1422 = getelementptr inbounds i8, i8* %1331, i64 4
  %1423 = bitcast i8* %1422 to i32*
  store i32 %1421, i32* %1423, align 1
  %1424 = bitcast i64* %1335 to i32*
  store i32 0, i32* %1424, align 1
  %1425 = getelementptr inbounds i8, i8* %1331, i64 12
  %1426 = bitcast i8* %1425 to i32*
  store i32 0, i32* %1426, align 1
  %1427 = add i64 %1372, -508437
  %1428 = add i64 %1372, 69
  %1429 = load i64, i64* %6, align 8
  %1430 = add i64 %1429, -8
  %1431 = inttoptr i64 %1430 to i64*
  store i64 %1428, i64* %1431, align 8
  store i64 %1430, i64* %6, align 8
  store i64 %1427, i64* %3, align 8
  %1432 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %1365)
  %1433 = load i64, i64* %3, align 8
  %1434 = load double, double* %1333, align 1
  %1435 = tail call double @llvm.trunc.f64(double %1434)
  %1436 = tail call double @llvm.fabs.f64(double %1435)
  %1437 = fcmp ogt double %1436, 0x41DFFFFFFFC00000
  %1438 = fptosi double %1435 to i32
  %1439 = select i1 %1437, i32 -2147483648, i32 %1438
  %1440 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %1441 = add i32 %1439, %1440
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RAX.i403, align 8
  %1443 = icmp ult i32 %1441, %1439
  %1444 = icmp ult i32 %1441, %1440
  %1445 = or i1 %1443, %1444
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %14, align 1
  %1447 = and i32 %1441, 255
  %1448 = tail call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  store i8 %1451, i8* %21, align 1
  %1452 = xor i32 %1439, %1440
  %1453 = xor i32 %1452, %1441
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %26, align 1
  %1457 = icmp eq i32 %1441, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %29, align 1
  %1459 = lshr i32 %1441, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %32, align 1
  %1461 = lshr i32 %1439, 31
  %1462 = lshr i32 %1440, 31
  %1463 = xor i32 %1459, %1461
  %1464 = xor i32 %1459, %1462
  %1465 = add nuw nsw i32 %1463, %1464
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %38, align 1
  %1468 = add i64 %1433, 18
  store i64 %1468, i64* %3, align 8
  store i32 %1441, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  br label %block_.L_47d41c

block_.L_47d41c:                                  ; preds = %block_.L_47d3c5, %block_47d3c0
  %1469 = phi i64 [ %1468, %block_.L_47d3c5 ], [ %1371, %block_47d3c0 ]
  %MEMORY.28 = phi %struct.Memory* [ %1432, %block_.L_47d3c5 ], [ %1365, %block_47d3c0 ]
  %1470 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1470, i64* %RAX.i403, align 8
  %1471 = add i64 %1470, 72564
  %1472 = add i64 %1469, 15
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = add i32 %1474, -1
  %1476 = icmp eq i32 %1474, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %14, align 1
  %1478 = and i32 %1475, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478)
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %21, align 1
  %1483 = xor i32 %1475, %1474
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  store i8 %1486, i8* %26, align 1
  %1487 = icmp eq i32 %1475, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %29, align 1
  %1489 = lshr i32 %1475, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %32, align 1
  %1491 = lshr i32 %1474, 31
  %1492 = xor i32 %1489, %1491
  %1493 = add nuw nsw i32 %1492, %1491
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %38, align 1
  %.v162 = select i1 %1487, i64 21, i64 83
  %1496 = add i64 %1469, %.v162
  store i64 %1496, i64* %3, align 8
  br i1 %1487, label %block_47d431, label %block_.L_47d41c.block_.L_47d46f_crit_edge

block_.L_47d41c.block_.L_47d46f_crit_edge:        ; preds = %block_.L_47d41c
  %.pre130 = add i64 %1470, 72560
  %.pre131 = inttoptr i64 %.pre130 to i32*
  br label %block_.L_47d46f

block_47d431:                                     ; preds = %block_.L_47d41c
  store i64 %1470, i64* %RAX.i403, align 8
  %1497 = add i64 %1470, 72560
  %1498 = add i64 %1496, 15
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = add i32 %1500, -1
  %1502 = icmp eq i32 %1500, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %14, align 1
  %1504 = and i32 %1501, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %21, align 1
  %1509 = xor i32 %1501, %1500
  %1510 = lshr i32 %1509, 4
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %26, align 1
  %1513 = icmp eq i32 %1501, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %29, align 1
  %1515 = lshr i32 %1501, 31
  %1516 = trunc i32 %1515 to i8
  store i8 %1516, i8* %32, align 1
  %1517 = lshr i32 %1500, 31
  %1518 = xor i32 %1515, %1517
  %1519 = add nuw nsw i32 %1518, %1517
  %1520 = icmp eq i32 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %38, align 1
  %.v165 = select i1 %1513, i64 21, i64 62
  %1522 = add i64 %1496, %.v165
  store i64 %1522, i64* %3, align 8
  br i1 %1513, label %block_47d446, label %block_.L_47d46f

block_47d446:                                     ; preds = %block_47d431
  %1523 = load i64, i64* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to i64*), align 8
  store i64 %1523, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  %1524 = load i64, i64* bitcast (%G_0x710368_type* @G_0x710368 to i64*), align 8
  store i64 %1524, i64* %1334, align 1
  store double 0.000000e+00, double* %1336, align 1
  %1525 = add i64 %1522, 36
  store i64 %1525, i64* %3, align 8
  store i64 %1524, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  %1526 = add i64 %1522, 249
  br label %block_.L_47d53f

block_.L_47d46f:                                  ; preds = %block_47d431, %block_.L_47d41c.block_.L_47d46f_crit_edge
  %.pre-phi132 = phi i32* [ %.pre131, %block_.L_47d41c.block_.L_47d46f_crit_edge ], [ %1499, %block_47d431 ]
  %1527 = phi i64 [ %1496, %block_.L_47d41c.block_.L_47d46f_crit_edge ], [ %1522, %block_47d431 ]
  store i64 %1470, i64* %RAX.i403, align 8
  %1528 = add i64 %1527, 15
  store i64 %1528, i64* %3, align 8
  %1529 = load i32, i32* %.pre-phi132, align 4
  %1530 = add i32 %1529, -1
  %1531 = icmp eq i32 %1529, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %14, align 1
  %1533 = and i32 %1530, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %21, align 1
  %1538 = xor i32 %1530, %1529
  %1539 = lshr i32 %1538, 4
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  store i8 %1541, i8* %26, align 1
  %1542 = icmp eq i32 %1530, 0
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %29, align 1
  %1544 = lshr i32 %1530, 31
  %1545 = trunc i32 %1544 to i8
  store i8 %1545, i8* %32, align 1
  %1546 = lshr i32 %1529, 31
  %1547 = xor i32 %1544, %1546
  %1548 = add nuw nsw i32 %1547, %1546
  %1549 = icmp eq i32 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %38, align 1
  %1551 = icmp ne i8 %1545, 0
  %1552 = xor i1 %1551, %1549
  %1553 = or i1 %1542, %1552
  %.v163 = select i1 %1553, i64 203, i64 21
  %1554 = add i64 %1527, %.v163
  store i64 %1554, i64* %3, align 8
  br i1 %1553, label %block_.L_47d53a, label %block_47d484

block_47d484:                                     ; preds = %block_.L_47d46f
  store i64 %1470, i64* %RAX.i403, align 8
  %1555 = add i64 %1554, 15
  store i64 %1555, i64* %3, align 8
  %1556 = load i32, i32* %.pre-phi132, align 4
  %1557 = add i32 %1556, -8
  %1558 = icmp ult i32 %1556, 8
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %14, align 1
  %1560 = and i32 %1557, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %21, align 1
  %1565 = xor i32 %1557, %1556
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %26, align 1
  %1569 = icmp eq i32 %1557, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %29, align 1
  %1571 = lshr i32 %1557, 31
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, i8* %32, align 1
  %1573 = lshr i32 %1556, 31
  %1574 = xor i32 %1571, %1573
  %1575 = add nuw nsw i32 %1574, %1573
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %38, align 1
  %1578 = icmp ne i8 %1572, 0
  %1579 = xor i1 %1578, %1576
  %.v164 = select i1 %1579, i64 21, i64 122
  %1580 = add i64 %1554, %.v164
  store i64 %1580, i64* %3, align 8
  br i1 %1579, label %block_47d499, label %block_.L_47d4fe

block_47d499:                                     ; preds = %block_47d484
  %1581 = load i64, i64* bitcast (%G_0x710368_type* @G_0x710368 to i64*), align 8
  store i64 %1581, i64* %1334, align 1
  store double 0.000000e+00, double* %1336, align 1
  store i64 %1470, i64* %RAX.i403, align 8
  %1582 = add i64 %1580, 23
  store i64 %1582, i64* %3, align 8
  %1583 = load i32, i32* %.pre-phi132, align 4
  %1584 = add i32 %1583, -1
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RCX.i1315, align 8
  %1586 = icmp eq i32 %1583, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %14, align 1
  %1588 = and i32 %1584, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %21, align 1
  %1593 = xor i32 %1584, %1583
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %26, align 1
  %1597 = icmp eq i32 %1584, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %29, align 1
  %1599 = lshr i32 %1584, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %32, align 1
  %1601 = lshr i32 %1583, 31
  %1602 = xor i32 %1599, %1601
  %1603 = add nuw nsw i32 %1602, %1601
  %1604 = icmp eq i32 %1603, 2
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %38, align 1
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1607 = sitofp i32 %1584 to double
  %1608 = bitcast %union.VectorReg* %1606 to double*
  store double %1607, double* %1608, align 1
  %1609 = bitcast i64 %1581 to double
  %1610 = fmul double %1607, %1609
  store double %1610, double* %1333, align 1
  store i64 0, i64* %1335, align 1
  store i64 %1470, i64* %RAX.i403, align 8
  %1611 = add i64 %1580, 50
  store i64 %1611, i64* %3, align 8
  %1612 = load i32, i32* %.pre-phi132, align 4
  %1613 = sitofp i32 %1612 to double
  %1614 = fdiv double %1610, %1613
  store double %1614, double* %1333, align 1
  store i64 0, i64* %1335, align 1
  %1615 = load i64, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  %1616 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1606, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1615, i64* %1616, align 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1618 = bitcast i64* %1617 to double*
  store double 0.000000e+00, double* %1618, align 1
  store i64 %1470, i64* %RAX.i403, align 8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1620 = add i64 %1580, 79
  store i64 %1620, i64* %3, align 8
  %1621 = load i32, i32* %.pre-phi132, align 4
  %1622 = sitofp i32 %1621 to double
  %1623 = bitcast %union.VectorReg* %1619 to double*
  store double %1622, double* %1623, align 1
  %1624 = bitcast i64 %1615 to double
  %1625 = fdiv double %1624, %1622
  store double %1625, double* %1608, align 1
  store i64 0, i64* %1617, align 1
  %1626 = fadd double %1625, %1614
  store double %1626, double* %1333, align 1
  store i64 0, i64* %1335, align 1
  store double %1626, double* bitcast (%G_0x726838_type* @G_0x726838 to double*), align 8
  %1627 = add i64 %1580, 156
  store i64 %1627, i64* %3, align 8
  br label %block_.L_47d535

block_.L_47d4fe:                                  ; preds = %block_47d484
  %1628 = add i64 %1580, ptrtoint (%G_0x343ba__rip__type* @G_0x343ba__rip_ to i64)
  %1629 = add i64 %1580, 8
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %1334, align 1
  store double 0.000000e+00, double* %1336, align 1
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1633 = add i64 %1580, add (i64 ptrtoint (%G_0x34422__rip__type* @G_0x34422__rip_ to i64), i64 8)
  %1634 = add i64 %1580, 16
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to double*
  %1636 = load double, double* %1635, align 8
  %1637 = bitcast %union.VectorReg* %1632 to double*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1640 = load double, double* bitcast (%G_0x710368_type* @G_0x710368 to double*), align 8
  %1641 = bitcast %union.VectorReg* %1639 to double*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1643 = bitcast i64 %1631 to double
  %1644 = fdiv double %1640, %1643
  %1645 = load double, double* bitcast (%G_0x726838_type* @G_0x726838 to double*), align 8
  %1646 = fmul double %1636, %1645
  %1647 = fdiv double %1646, %1643
  store double %1647, double* %1637, align 1
  store i64 0, i64* %1638, align 1
  %1648 = fadd double %1647, %1644
  store double %1648, double* %1641, align 1
  store i64 0, i64* %1642, align 1
  %1649 = add i64 %1580, 55
  store i64 %1649, i64* %3, align 8
  store double %1648, double* bitcast (%G_0x726838_type* @G_0x726838 to double*), align 8
  br label %block_.L_47d535

block_.L_47d535:                                  ; preds = %block_.L_47d4fe, %block_47d499
  %1650 = phi i64 [ %1649, %block_.L_47d4fe ], [ %1627, %block_47d499 ]
  %1651 = add i64 %1650, 5
  store i64 %1651, i64* %3, align 8
  br label %block_.L_47d53a

block_.L_47d53a:                                  ; preds = %block_.L_47d535, %block_.L_47d46f
  %1652 = phi i64 [ %1651, %block_.L_47d535 ], [ %1554, %block_.L_47d46f ]
  %1653 = add i64 %1652, 5
  store i64 %1653, i64* %3, align 8
  br label %block_.L_47d53f

block_.L_47d53f:                                  ; preds = %block_.L_47d53a, %block_47d446
  %storemerge79 = phi i64 [ %1526, %block_47d446 ], [ %1653, %block_.L_47d53a ]
  %1654 = add i64 %storemerge79, 5
  br label %block_.L_47d544

block_.L_47d544:                                  ; preds = %block_.L_47d53f, %block_.L_47d39d, %block_47ce10
  %.sink = phi i64 [ %1654, %block_.L_47d53f ], [ %1329, %block_.L_47d39d ], [ %317, %block_47ce10 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.28, %block_.L_47d53f ], [ %MEMORY.6, %block_.L_47d39d ], [ %MEMORY.0, %block_47ce10 ]
  %1655 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1655, i64* %RAX.i403, align 8
  %1656 = add i64 %1655, 24
  %1657 = add i64 %.sink, 12
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  store i8 0, i8* %14, align 1
  %1660 = and i32 %1659, 255
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1665 = icmp eq i32 %1659, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %29, align 1
  %1667 = lshr i32 %1659, 31
  %1668 = trunc i32 %1667 to i8
  store i8 %1668, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %1665, i64 18, i64 1463
  %1669 = add i64 %.sink, %.v138
  store i64 %1669, i64* %3, align 8
  br i1 %1665, label %block_47d556, label %block_.L_47d544.block_.L_47dafb_crit_edge

block_.L_47d544.block_.L_47dafb_crit_edge:        ; preds = %block_.L_47d544
  %.pre124.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47dafb

block_47d556:                                     ; preds = %block_.L_47d544
  store i64 %1655, i64* %RAX.i403, align 8
  %1670 = add i64 %1655, 72620
  %1671 = add i64 %1669, 14
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RCX.i1315, align 8
  store i64 %1655, i64* %RAX.i403, align 8
  %1675 = add i64 %1655, 72608
  %1676 = add i64 %1669, 28
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = sub i32 %1673, %1678
  %1680 = icmp ult i32 %1673, %1678
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %14, align 1
  %1682 = and i32 %1679, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %21, align 1
  %1687 = xor i32 %1678, %1673
  %1688 = xor i32 %1687, %1679
  %1689 = lshr i32 %1688, 4
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  store i8 %1691, i8* %26, align 1
  %1692 = icmp eq i32 %1679, 0
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %29, align 1
  %1694 = lshr i32 %1679, 31
  %1695 = trunc i32 %1694 to i8
  store i8 %1695, i8* %32, align 1
  %1696 = lshr i32 %1673, 31
  %1697 = lshr i32 %1678, 31
  %1698 = xor i32 %1697, %1696
  %1699 = xor i32 %1694, %1696
  %1700 = add nuw nsw i32 %1699, %1698
  %1701 = icmp eq i32 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %38, align 1
  %.v147 = select i1 %1692, i64 34, i64 403
  %1703 = add i64 %1669, %.v147
  %1704 = add i64 %1703, 8
  store i64 %1704, i64* %3, align 8
  store i64 %1655, i64* %RAX.i403, align 8
  br i1 %1692, label %block_47d578, label %block_.L_47d6e9

block_47d578:                                     ; preds = %block_47d556
  %1705 = add i64 %1655, 72564
  %1706 = add i64 %1703, 15
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  store i8 0, i8* %14, align 1
  %1709 = and i32 %1708, 255
  %1710 = tail call i32 @llvm.ctpop.i32(i32 %1709)
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = xor i8 %1712, 1
  store i8 %1713, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1714 = icmp eq i32 %1708, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %29, align 1
  %1716 = lshr i32 %1708, 31
  %1717 = trunc i32 %1716 to i8
  store i8 %1717, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1718 = icmp ne i8 %1717, 0
  %1719 = or i1 %1714, %1718
  %.v159 = select i1 %1719, i64 364, i64 21
  %1720 = add i64 %1703, %.v159
  store i64 %1720, i64* %3, align 8
  br i1 %1719, label %block_.L_47d6e4, label %block_47d58d

block_47d58d:                                     ; preds = %block_47d578
  store i64 0, i64* %RAX.i403, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1315, align 8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1722 = bitcast [32 x %union.VectorReg]* %1721 to i8*
  %1723 = add i64 %1720, add (i64 ptrtoint (%G_0x342ef__rip__type* @G_0x342ef__rip_ to i64), i64 4)
  %1724 = add i64 %1720, 12
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  %1727 = bitcast [32 x %union.VectorReg]* %1721 to double*
  %1728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1721, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1730 = bitcast i64* %1729 to double*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1732 = load double, double* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to double*), align 8
  %1733 = bitcast %union.VectorReg* %1731 to double*
  %1734 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1731, i64 0, i32 0, i32 0, i32 0, i64 0
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1736 = bitcast i64* %1735 to double*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1738 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %1739 = sitofp i32 %1738 to double
  %1740 = bitcast %union.VectorReg* %1737 to double*
  %1741 = fmul double %1739, %1732
  %1742 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %1743 = sitofp i32 %1742 to double
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1745 = fmul double %1743, %1732
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1747 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %1748 = sitofp i32 %1747 to double
  %1749 = bitcast %union.VectorReg* %1746 to double*
  %1750 = load double, double* bitcast (%G_0x710368_type* @G_0x710368 to double*), align 8
  %1751 = fmul double %1748, %1750
  store double %1751, double* %1749, align 1
  %1752 = fadd double %1745, %1751
  store double %1752, double* %1740, align 1
  %1753 = fdiv double %1741, %1752
  %1754 = bitcast i64 %1726 to double
  %1755 = fadd double %1753, %1754
  store double %1755, double* %1733, align 1
  store i64 0, i64* %1735, align 1
  %1756 = load i64, i64* %RBP.i, align 8
  %1757 = add i64 %1756, -32
  %1758 = add i64 %1720, 87
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i64*
  store i64 %1726, i64* %1759, align 8
  %1760 = load i64, i64* %3, align 8
  %1761 = bitcast %union.VectorReg* %1731 to <2 x i32>*
  %1762 = load <2 x i32>, <2 x i32>* %1761, align 1
  %1763 = bitcast i64* %1735 to <2 x i32>*
  %1764 = load <2 x i32>, <2 x i32>* %1763, align 1
  %1765 = extractelement <2 x i32> %1762, i32 0
  %1766 = bitcast [32 x %union.VectorReg]* %1721 to i32*
  store i32 %1765, i32* %1766, align 1
  %1767 = extractelement <2 x i32> %1762, i32 1
  %1768 = getelementptr inbounds i8, i8* %1722, i64 4
  %1769 = bitcast i8* %1768 to i32*
  store i32 %1767, i32* %1769, align 1
  %1770 = extractelement <2 x i32> %1764, i32 0
  %1771 = bitcast i64* %1729 to i32*
  store i32 %1770, i32* %1771, align 1
  %1772 = extractelement <2 x i32> %1764, i32 1
  %1773 = getelementptr inbounds i8, i8* %1722, i64 12
  %1774 = bitcast i8* %1773 to i32*
  store i32 %1772, i32* %1774, align 1
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -40
  %1777 = load i64, i64* %RCX.i1315, align 8
  %1778 = add i64 %1760, 7
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1776 to i64*
  store i64 %1777, i64* %1779, align 8
  %1780 = load i64, i64* %3, align 8
  %1781 = add i64 %1780, -508987
  %1782 = add i64 %1780, 5
  %1783 = load i64, i64* %6, align 8
  %1784 = add i64 %1783, -8
  %1785 = inttoptr i64 %1784 to i64*
  store i64 %1782, i64* %1785, align 8
  store i64 %1784, i64* %6, align 8
  store i64 %1781, i64* %3, align 8
  %1786 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %MEMORY.33)
  %1787 = load i64, i64* %3, align 8
  %1788 = load double, double* %1727, align 1
  %1789 = tail call double @llvm.trunc.f64(double %1788)
  %1790 = tail call double @llvm.fabs.f64(double %1789)
  %1791 = fcmp ogt double %1790, 0x43E0000000000000
  %1792 = fptosi double %1789 to i64
  %1793 = select i1 %1791, i64 -9223372036854775808, i64 %1792
  store i64 %1793, i64* %RCX.i1315, align 8
  store i64 %1793, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %1794 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %1795 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %1796 = fdiv double %1794, %1795
  %1797 = load double, double* bitcast (%G_0x725570_type* @G_0x725570 to double*), align 8
  %1798 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*), align 8
  %1799 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %1800 = fsub double %1798, %1799
  store double %1800, double* %1740, align 1
  store i64 0, i64* %1744, align 1
  %1801 = fmul double %1800, %1797
  store double %1801, double* %1733, align 1
  store i64 0, i64* %1735, align 1
  %1802 = fsub double %1796, %1801
  store double %1802, double* %1727, align 1
  store i64 0, i64* %1729, align 1
  %1803 = load i64, i64* %RBP.i, align 8
  %1804 = add i64 %1803, -32
  %1805 = add i64 %1787, 71
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %1734, align 1
  store double 0.000000e+00, double* %1736, align 1
  %.cast61 = bitcast i64 %1807 to double
  %1808 = fadd double %.cast61, %1802
  store double %1808, double* %1727, align 1
  store i64 0, i64* %1729, align 1
  %1809 = add i64 %1787, -508992
  %1810 = add i64 %1787, 80
  %1811 = load i64, i64* %6, align 8
  %1812 = add i64 %1811, -8
  %1813 = inttoptr i64 %1812 to i64*
  store i64 %1810, i64* %1813, align 8
  store i64 %1812, i64* %6, align 8
  store i64 %1809, i64* %3, align 8
  %1814 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %1786)
  %1815 = load i64, i64* %3, align 8
  %1816 = load double, double* %1727, align 1
  %1817 = tail call double @llvm.trunc.f64(double %1816)
  %1818 = tail call double @llvm.fabs.f64(double %1817)
  %1819 = fcmp ogt double %1818, 0x43E0000000000000
  %1820 = fptosi double %1817 to i64
  %1821 = select i1 %1819, i64 -9223372036854775808, i64 %1820
  store i64 %1821, i64* %RCX.i1315, align 8
  store i64 %1821, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %1822 = load i64, i64* %RBP.i, align 8
  %1823 = add i64 %1822, -40
  %1824 = add i64 %1815, 17
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RCX.i1315, align 8
  %1827 = sub i64 %1826, %1821
  %1828 = icmp ult i64 %1826, %1821
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %14, align 1
  %1830 = trunc i64 %1827 to i32
  %1831 = and i32 %1830, 255
  %1832 = tail call i32 @llvm.ctpop.i32(i32 %1831)
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = xor i8 %1834, 1
  store i8 %1835, i8* %21, align 1
  %1836 = xor i64 %1821, %1826
  %1837 = xor i64 %1836, %1827
  %1838 = lshr i64 %1837, 4
  %1839 = trunc i64 %1838 to i8
  %1840 = and i8 %1839, 1
  store i8 %1840, i8* %26, align 1
  %1841 = icmp eq i64 %1827, 0
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %29, align 1
  %1843 = lshr i64 %1827, 63
  %1844 = trunc i64 %1843 to i8
  store i8 %1844, i8* %32, align 1
  %1845 = lshr i64 %1826, 63
  %1846 = lshr i64 %1821, 63
  %1847 = xor i64 %1846, %1845
  %1848 = xor i64 %1843, %1845
  %1849 = add nuw nsw i64 %1848, %1847
  %1850 = icmp eq i64 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %38, align 1
  %1852 = icmp ne i8 %1844, 0
  %1853 = xor i1 %1852, %1850
  %.v160 = select i1 %1853, i64 31, i64 48
  %1854 = add i64 %1815, %.v160
  store i64 %1854, i64* %3, align 8
  br i1 %1853, label %block_47d65f, label %block_.L_47d670

block_47d65f:                                     ; preds = %block_47d58d
  store i64 %1821, i64* %RAX.i403, align 8
  %1855 = add i64 %1822, -48
  %1856 = add i64 %1854, 12
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  store i64 %1821, i64* %1857, align 8
  %1858 = load i64, i64* %3, align 8
  %1859 = add i64 %1858, 18
  br label %block_.L_47d67d

block_.L_47d670:                                  ; preds = %block_47d58d
  store i64 0, i64* %RAX.i403, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1315, align 8
  %1860 = add i64 %1822, -48
  %1861 = add i64 %1854, 8
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i64*
  store i64 0, i64* %1862, align 8
  %1863 = load i64, i64* %3, align 8
  %1864 = add i64 %1863, 5
  store i64 %1864, i64* %3, align 8
  br label %block_.L_47d67d

block_.L_47d67d:                                  ; preds = %block_.L_47d670, %block_47d65f
  %storemerge62 = phi i64 [ %1859, %block_47d65f ], [ %1864, %block_.L_47d670 ]
  %1865 = load i64, i64* %RBP.i, align 8
  %1866 = add i64 %1865, -48
  %1867 = add i64 %storemerge62, 4
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i64*
  %1869 = load i64, i64* %1868, align 8
  store i64 %1869, i64* %RAX.i403, align 8
  %1870 = add i64 %storemerge62, add (i64 ptrtoint (%G_0x341ff__rip__type* @G_0x341ff__rip_ to i64), i64 4)
  %1871 = add i64 %storemerge62, 12
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i64*
  %1873 = load i64, i64* %1872, align 8
  store i64 %1873, i64* %1728, align 1
  store double 0.000000e+00, double* %1730, align 1
  %1874 = add i64 %storemerge62, add (i64 ptrtoint (%G_0x341cf__rip__type* @G_0x341cf__rip_ to i64), i64 12)
  %1875 = add i64 %storemerge62, 20
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to double*
  %1877 = load double, double* %1876, align 8
  store i64 %1869, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %1878 = load double, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*), align 8
  %1879 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %1880 = sitofp i64 %1879 to double
  %1881 = fmul double %1880, %1878
  %1882 = fsub double %1877, %1878
  %1883 = sitofp i64 %1869 to double
  store double %1883, double* %1749, align 1
  %1884 = fmul double %1883, %1882
  store double %1884, double* %1733, align 1
  store i64 0, i64* %1735, align 1
  %1885 = fadd double %1884, %1881
  %1886 = bitcast i64 %1873 to double
  %1887 = fadd double %1885, %1886
  store double %1887, double* %1740, align 1
  store i64 0, i64* %1744, align 1
  %.cast63 = bitcast double %1887 to <2 x i32>
  %1888 = extractelement <2 x i32> %.cast63, i32 0
  store i32 %1888, i32* %1766, align 1
  %1889 = extractelement <2 x i32> %.cast63, i32 1
  store i32 %1889, i32* %1769, align 1
  store i32 0, i32* %1771, align 1
  store i32 0, i32* %1774, align 1
  %1890 = add i64 %storemerge62, -509133
  %1891 = add i64 %storemerge62, 90
  %1892 = load i64, i64* %6, align 8
  %1893 = add i64 %1892, -8
  %1894 = inttoptr i64 %1893 to i64*
  store i64 %1891, i64* %1894, align 8
  store i64 %1893, i64* %6, align 8
  store i64 %1890, i64* %3, align 8
  %1895 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %1814)
  %1896 = load i64, i64* %3, align 8
  %1897 = load double, double* %1727, align 1
  %1898 = tail call double @llvm.trunc.f64(double %1897)
  %1899 = tail call double @llvm.fabs.f64(double %1898)
  %1900 = fcmp ogt double %1899, 0x43E0000000000000
  %1901 = fptosi double %1898 to i64
  %1902 = select i1 %1900, i64 -9223372036854775808, i64 %1901
  store i64 %1902, i64* %RAX.i403, align 8
  %1903 = add i64 %1896, 13
  store i64 %1903, i64* %3, align 8
  store i64 %1902, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  br label %block_.L_47d6e4

block_.L_47d6e4:                                  ; preds = %block_.L_47d67d, %block_47d578
  %1904 = phi i64 [ %1720, %block_47d578 ], [ %1903, %block_.L_47d67d ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.33, %block_47d578 ], [ %1895, %block_.L_47d67d ]
  %1905 = add i64 %1904, 775
  br label %block_.L_47d9eb

block_.L_47d6e9:                                  ; preds = %block_47d556
  %1906 = add i64 %1655, 72568
  %1907 = add i64 %1703, 15
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = add i32 %1909, -1
  %1911 = icmp eq i32 %1909, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1910, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1910, %1909
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %26, align 1
  %1922 = icmp eq i32 %1910, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %29, align 1
  %1924 = lshr i32 %1910, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %32, align 1
  %1926 = lshr i32 %1909, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %38, align 1
  %.v148 = select i1 %1922, i64 21, i64 396
  %1931 = add i64 %1703, %.v148
  store i64 %1931, i64* %3, align 8
  br i1 %1922, label %block_47d6fe, label %block_.L_47d875

block_47d6fe:                                     ; preds = %block_.L_47d6e9
  store i64 %1655, i64* %RAX.i403, align 8
  %1932 = add i64 %1655, 72564
  %1933 = add i64 %1931, 15
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  store i8 0, i8* %14, align 1
  %1936 = and i32 %1935, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1941 = icmp eq i32 %1935, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %29, align 1
  %1943 = lshr i32 %1935, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1945 = icmp ne i8 %1944, 0
  %1946 = or i1 %1941, %1945
  %.v157 = select i1 %1946, i64 375, i64 21
  %1947 = add i64 %1931, %.v157
  store i64 %1947, i64* %3, align 8
  br i1 %1946, label %block_.L_47d875, label %block_47d713

block_47d713:                                     ; preds = %block_47d6fe
  store i64 0, i64* %RAX.i403, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1315, align 8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1949 = bitcast [32 x %union.VectorReg]* %1948 to i8*
  %1950 = add i64 %1947, add (i64 ptrtoint (%G_0x34169__rip__type* @G_0x34169__rip_ to i64), i64 4)
  %1951 = add i64 %1947, 12
  store i64 %1951, i64* %3, align 8
  %1952 = inttoptr i64 %1950 to i64*
  %1953 = load i64, i64* %1952, align 8
  %1954 = bitcast [32 x %union.VectorReg]* %1948 to double*
  %1955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1948, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1957 = bitcast i64* %1956 to double*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1959 = load double, double* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to double*), align 8
  %1960 = bitcast %union.VectorReg* %1958 to double*
  %1961 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1958, i64 0, i32 0, i32 0, i32 0, i64 0
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1963 = bitcast i64* %1962 to double*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1965 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %1966 = sitofp i32 %1965 to double
  %1967 = bitcast %union.VectorReg* %1964 to double*
  %1968 = fmul double %1966, %1959
  %1969 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %1970 = sitofp i32 %1969 to double
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1972 = fmul double %1970, %1959
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1974 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %1975 = sitofp i32 %1974 to double
  %1976 = bitcast %union.VectorReg* %1973 to double*
  %1977 = load double, double* bitcast (%G_0x710368_type* @G_0x710368 to double*), align 8
  %1978 = fmul double %1975, %1977
  store double %1978, double* %1976, align 1
  %1979 = fadd double %1972, %1978
  store double %1979, double* %1967, align 1
  %1980 = fdiv double %1968, %1979
  %1981 = bitcast i64 %1953 to double
  %1982 = fadd double %1980, %1981
  store double %1982, double* %1960, align 1
  store i64 0, i64* %1962, align 1
  %1983 = load i64, i64* %RBP.i, align 8
  %1984 = add i64 %1983, -56
  %1985 = add i64 %1947, 87
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i64*
  store i64 %1953, i64* %1986, align 8
  %1987 = load i64, i64* %3, align 8
  %1988 = bitcast %union.VectorReg* %1958 to <2 x i32>*
  %1989 = load <2 x i32>, <2 x i32>* %1988, align 1
  %1990 = bitcast i64* %1962 to <2 x i32>*
  %1991 = load <2 x i32>, <2 x i32>* %1990, align 1
  %1992 = extractelement <2 x i32> %1989, i32 0
  %1993 = bitcast [32 x %union.VectorReg]* %1948 to i32*
  store i32 %1992, i32* %1993, align 1
  %1994 = extractelement <2 x i32> %1989, i32 1
  %1995 = getelementptr inbounds i8, i8* %1949, i64 4
  %1996 = bitcast i8* %1995 to i32*
  store i32 %1994, i32* %1996, align 1
  %1997 = extractelement <2 x i32> %1991, i32 0
  %1998 = bitcast i64* %1956 to i32*
  store i32 %1997, i32* %1998, align 1
  %1999 = extractelement <2 x i32> %1991, i32 1
  %2000 = getelementptr inbounds i8, i8* %1949, i64 12
  %2001 = bitcast i8* %2000 to i32*
  store i32 %1999, i32* %2001, align 1
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -64
  %2004 = load i64, i64* %RCX.i1315, align 8
  %2005 = add i64 %1987, 7
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2003 to i64*
  store i64 %2004, i64* %2006, align 8
  %2007 = load i64, i64* %3, align 8
  %2008 = add i64 %2007, -509377
  %2009 = add i64 %2007, 5
  %2010 = load i64, i64* %6, align 8
  %2011 = add i64 %2010, -8
  %2012 = inttoptr i64 %2011 to i64*
  store i64 %2009, i64* %2012, align 8
  store i64 %2011, i64* %6, align 8
  store i64 %2008, i64* %3, align 8
  %2013 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %MEMORY.33)
  %2014 = load i64, i64* %3, align 8
  %2015 = load double, double* %1954, align 1
  %2016 = tail call double @llvm.trunc.f64(double %2015)
  %2017 = tail call double @llvm.fabs.f64(double %2016)
  %2018 = fcmp ogt double %2017, 0x41DFFFFFFFC00000
  %2019 = fptosi double %2016 to i32
  %2020 = zext i32 %2019 to i64
  %2021 = select i1 %2018, i64 2147483648, i64 %2020
  store i64 %2021, i64* %RAX.i403, align 8
  %sext = shl nuw i64 %2021, 32
  %2022 = ashr exact i64 %sext, 32
  store i64 %2022, i64* %RCX.i1315, align 8
  store i64 %2022, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2023 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %2024 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %2025 = fdiv double %2023, %2024
  %2026 = load double, double* bitcast (%G_0x725570_type* @G_0x725570 to double*), align 8
  %2027 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*), align 8
  %2028 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %2029 = fsub double %2027, %2028
  store double %2029, double* %1967, align 1
  store i64 0, i64* %1971, align 1
  %2030 = fmul double %2029, %2026
  store double %2030, double* %1960, align 1
  store i64 0, i64* %1962, align 1
  %2031 = fsub double %2025, %2030
  store double %2031, double* %1954, align 1
  store i64 0, i64* %1956, align 1
  %2032 = load i64, i64* %RBP.i, align 8
  %2033 = add i64 %2032, -56
  %2034 = add i64 %2014, 73
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %1961, align 1
  store double 0.000000e+00, double* %1963, align 1
  %.cast68 = bitcast i64 %2036 to double
  %2037 = fadd double %.cast68, %2031
  store double %2037, double* %1954, align 1
  store i64 0, i64* %1956, align 1
  %2038 = add i64 %2014, -509382
  %2039 = add i64 %2014, 82
  %2040 = load i64, i64* %6, align 8
  %2041 = add i64 %2040, -8
  %2042 = inttoptr i64 %2041 to i64*
  store i64 %2039, i64* %2042, align 8
  store i64 %2041, i64* %6, align 8
  store i64 %2038, i64* %3, align 8
  %2043 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2013)
  %2044 = load i64, i64* %3, align 8
  %2045 = load double, double* %1954, align 1
  %2046 = tail call double @llvm.trunc.f64(double %2045)
  %2047 = tail call double @llvm.fabs.f64(double %2046)
  %2048 = fcmp ogt double %2047, 0x41DFFFFFFFC00000
  %2049 = fptosi double %2046 to i32
  %2050 = zext i32 %2049 to i64
  %2051 = select i1 %2048, i64 2147483648, i64 %2050
  store i64 %2051, i64* %RAX.i403, align 8
  %sext133 = shl nuw i64 %2051, 32
  %2052 = ashr exact i64 %sext133, 32
  store i64 %2052, i64* %RCX.i1315, align 8
  store i64 %2052, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %2053 = load i64, i64* %RBP.i, align 8
  %2054 = add i64 %2053, -64
  %2055 = add i64 %2044, 19
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i64*
  %2057 = load i64, i64* %2056, align 8
  store i64 %2057, i64* %RCX.i1315, align 8
  %2058 = sub i64 %2057, %2052
  %2059 = icmp ult i64 %2057, %2052
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %14, align 1
  %2061 = trunc i64 %2058 to i32
  %2062 = and i32 %2061, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %21, align 1
  %2067 = xor i64 %2052, %2057
  %2068 = xor i64 %2067, %2058
  %2069 = lshr i64 %2068, 4
  %2070 = trunc i64 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %26, align 1
  %2072 = icmp eq i64 %2058, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %29, align 1
  %2074 = lshr i64 %2058, 63
  %2075 = trunc i64 %2074 to i8
  store i8 %2075, i8* %32, align 1
  %2076 = lshr i64 %2057, 63
  %2077 = lshr i64 %2052, 63
  %2078 = xor i64 %2077, %2076
  %2079 = xor i64 %2074, %2076
  %2080 = add nuw nsw i64 %2079, %2078
  %2081 = icmp eq i64 %2080, 2
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %38, align 1
  %2083 = icmp ne i8 %2075, 0
  %2084 = xor i1 %2083, %2081
  %.v158 = select i1 %2084, i64 33, i64 50
  %2085 = add i64 %2044, %.v158
  store i64 %2085, i64* %3, align 8
  br i1 %2084, label %block_47d7e9, label %block_.L_47d7fa

block_47d7e9:                                     ; preds = %block_47d713
  store i64 %2052, i64* %RAX.i403, align 8
  %2086 = add i64 %2053, -72
  %2087 = add i64 %2085, 12
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i64*
  store i64 %2052, i64* %2088, align 8
  %2089 = load i64, i64* %3, align 8
  %2090 = add i64 %2089, 18
  br label %block_.L_47d807

block_.L_47d7fa:                                  ; preds = %block_47d713
  store i64 0, i64* %RAX.i403, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1315, align 8
  %2091 = add i64 %2053, -72
  %2092 = add i64 %2085, 8
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i64*
  store i64 0, i64* %2093, align 8
  %2094 = load i64, i64* %3, align 8
  %2095 = add i64 %2094, 5
  store i64 %2095, i64* %3, align 8
  br label %block_.L_47d807

block_.L_47d807:                                  ; preds = %block_.L_47d7fa, %block_47d7e9
  %storemerge69 = phi i64 [ %2090, %block_47d7e9 ], [ %2095, %block_.L_47d7fa ]
  %2096 = load i64, i64* %RBP.i, align 8
  %2097 = add i64 %2096, -72
  %2098 = add i64 %storemerge69, 4
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i64*
  %2100 = load i64, i64* %2099, align 8
  store i64 %2100, i64* %RAX.i403, align 8
  %2101 = add i64 %storemerge69, add (i64 ptrtoint (%G_0x34075__rip__type* @G_0x34075__rip_ to i64), i64 4)
  %2102 = add i64 %storemerge69, 12
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i64*
  %2104 = load i64, i64* %2103, align 8
  store i64 %2104, i64* %1955, align 1
  store double 0.000000e+00, double* %1957, align 1
  %2105 = add i64 %storemerge69, add (i64 ptrtoint (%G_0x34045__rip__type* @G_0x34045__rip_ to i64), i64 12)
  %2106 = add i64 %storemerge69, 20
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to double*
  %2108 = load double, double* %2107, align 8
  store i64 %2100, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %2109 = load double, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*), align 8
  %2110 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2111 = sitofp i64 %2110 to double
  %2112 = fmul double %2111, %2109
  %2113 = fsub double %2108, %2109
  %2114 = sitofp i64 %2100 to double
  store double %2114, double* %1976, align 1
  %2115 = fmul double %2114, %2113
  store double %2115, double* %1960, align 1
  store i64 0, i64* %1962, align 1
  %2116 = fadd double %2115, %2112
  %2117 = bitcast i64 %2104 to double
  %2118 = fadd double %2116, %2117
  store double %2118, double* %1967, align 1
  store i64 0, i64* %1971, align 1
  %.cast70 = bitcast double %2118 to <2 x i32>
  %2119 = extractelement <2 x i32> %.cast70, i32 0
  store i32 %2119, i32* %1993, align 1
  %2120 = extractelement <2 x i32> %.cast70, i32 1
  store i32 %2120, i32* %1996, align 1
  store i32 0, i32* %1998, align 1
  store i32 0, i32* %2001, align 1
  %2121 = add i64 %storemerge69, -509527
  %2122 = add i64 %storemerge69, 90
  %2123 = load i64, i64* %6, align 8
  %2124 = add i64 %2123, -8
  %2125 = inttoptr i64 %2124 to i64*
  store i64 %2122, i64* %2125, align 8
  store i64 %2124, i64* %6, align 8
  store i64 %2121, i64* %3, align 8
  %2126 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2043)
  %2127 = load i64, i64* %3, align 8
  %2128 = load double, double* %1954, align 1
  %2129 = tail call double @llvm.trunc.f64(double %2128)
  %2130 = tail call double @llvm.fabs.f64(double %2129)
  %2131 = fcmp ogt double %2130, 0x41DFFFFFFFC00000
  %2132 = fptosi double %2129 to i32
  %2133 = zext i32 %2132 to i64
  %2134 = select i1 %2131, i64 2147483648, i64 %2133
  store i64 %2134, i64* %RCX.i1315, align 8
  %sext134 = shl nuw i64 %2134, 32
  %2135 = ashr exact i64 %sext134, 32
  store i64 %2135, i64* %RAX.i403, align 8
  %2136 = add i64 %2127, 15
  store i64 %2136, i64* %3, align 8
  store i64 %2135, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2137 = add i64 %2127, 389
  br label %block_.L_47d9e6

block_.L_47d875:                                  ; preds = %block_.L_47d6e9, %block_47d6fe
  %2138 = phi i64 [ %1947, %block_47d6fe ], [ %1931, %block_.L_47d6e9 ]
  store i64 %1655, i64* %RAX.i403, align 8
  %2139 = add i64 %2138, 15
  store i64 %2139, i64* %3, align 8
  %2140 = load i32, i32* %1908, align 4
  %2141 = add i32 %2140, -1
  %2142 = icmp eq i32 %2140, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %14, align 1
  %2144 = and i32 %2141, 255
  %2145 = tail call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  store i8 %2148, i8* %21, align 1
  %2149 = xor i32 %2141, %2140
  %2150 = lshr i32 %2149, 4
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  store i8 %2152, i8* %26, align 1
  %2153 = icmp eq i32 %2141, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %29, align 1
  %2155 = lshr i32 %2141, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %32, align 1
  %2157 = lshr i32 %2140, 31
  %2158 = xor i32 %2155, %2157
  %2159 = add nuw nsw i32 %2158, %2157
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %38, align 1
  %2162 = icmp ne i8 %2156, 0
  %2163 = xor i1 %2162, %2160
  %2164 = or i1 %2153, %2163
  %.v149 = select i1 %2164, i64 364, i64 21
  %2165 = add i64 %2138, %.v149
  store i64 %2165, i64* %3, align 8
  br i1 %2164, label %block_.L_47d9e1, label %block_47d88a

block_47d88a:                                     ; preds = %block_.L_47d875
  store i64 0, i64* %RAX.i403, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1315, align 8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2167 = bitcast [32 x %union.VectorReg]* %2166 to i8*
  %2168 = add i64 %2165, add (i64 ptrtoint (%G_0x33ff2__rip__type* @G_0x33ff2__rip_ to i64), i64 4)
  %2169 = add i64 %2165, 12
  store i64 %2169, i64* %3, align 8
  %2170 = inttoptr i64 %2168 to i64*
  %2171 = load i64, i64* %2170, align 8
  %2172 = bitcast [32 x %union.VectorReg]* %2166 to double*
  %2173 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2166, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2175 = bitcast i64* %2174 to double*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2177 = load double, double* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to double*), align 8
  %2178 = bitcast %union.VectorReg* %2176 to double*
  %2179 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2176, i64 0, i32 0, i32 0, i32 0, i64 0
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2181 = bitcast i64* %2180 to double*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %2183 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %2184 = sitofp i32 %2183 to double
  %2185 = bitcast %union.VectorReg* %2182 to double*
  %2186 = fmul double %2184, %2177
  %2187 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %2188 = sitofp i32 %2187 to double
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %2190 = fmul double %2188, %2177
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %2192 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %2193 = sitofp i32 %2192 to double
  %2194 = bitcast %union.VectorReg* %2191 to double*
  %2195 = load double, double* bitcast (%G_0x710368_type* @G_0x710368 to double*), align 8
  %2196 = fmul double %2193, %2195
  store double %2196, double* %2194, align 1
  %2197 = fadd double %2190, %2196
  store double %2197, double* %2185, align 1
  %2198 = fdiv double %2186, %2197
  %2199 = bitcast i64 %2171 to double
  %2200 = fadd double %2198, %2199
  store double %2200, double* %2178, align 1
  store i64 0, i64* %2180, align 1
  %2201 = load i64, i64* %RBP.i, align 8
  %2202 = add i64 %2201, -80
  %2203 = add i64 %2165, 87
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i64*
  store i64 %2171, i64* %2204, align 8
  %2205 = load i64, i64* %3, align 8
  %2206 = bitcast %union.VectorReg* %2176 to <2 x i32>*
  %2207 = load <2 x i32>, <2 x i32>* %2206, align 1
  %2208 = bitcast i64* %2180 to <2 x i32>*
  %2209 = load <2 x i32>, <2 x i32>* %2208, align 1
  %2210 = extractelement <2 x i32> %2207, i32 0
  %2211 = bitcast [32 x %union.VectorReg]* %2166 to i32*
  store i32 %2210, i32* %2211, align 1
  %2212 = extractelement <2 x i32> %2207, i32 1
  %2213 = getelementptr inbounds i8, i8* %2167, i64 4
  %2214 = bitcast i8* %2213 to i32*
  store i32 %2212, i32* %2214, align 1
  %2215 = extractelement <2 x i32> %2209, i32 0
  %2216 = bitcast i64* %2174 to i32*
  store i32 %2215, i32* %2216, align 1
  %2217 = extractelement <2 x i32> %2209, i32 1
  %2218 = getelementptr inbounds i8, i8* %2167, i64 12
  %2219 = bitcast i8* %2218 to i32*
  store i32 %2217, i32* %2219, align 1
  %2220 = load i64, i64* %RBP.i, align 8
  %2221 = add i64 %2220, -88
  %2222 = load i64, i64* %RCX.i1315, align 8
  %2223 = add i64 %2205, 7
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2221 to i64*
  store i64 %2222, i64* %2224, align 8
  %2225 = load i64, i64* %3, align 8
  %2226 = add i64 %2225, -509752
  %2227 = add i64 %2225, 5
  %2228 = load i64, i64* %6, align 8
  %2229 = add i64 %2228, -8
  %2230 = inttoptr i64 %2229 to i64*
  store i64 %2227, i64* %2230, align 8
  store i64 %2229, i64* %6, align 8
  store i64 %2226, i64* %3, align 8
  %2231 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %MEMORY.33)
  %2232 = load i64, i64* %3, align 8
  %2233 = load double, double* %2172, align 1
  %2234 = tail call double @llvm.trunc.f64(double %2233)
  %2235 = tail call double @llvm.fabs.f64(double %2234)
  %2236 = fcmp ogt double %2235, 0x43E0000000000000
  %2237 = fptosi double %2234 to i64
  %2238 = select i1 %2236, i64 -9223372036854775808, i64 %2237
  store i64 %2238, i64* %RCX.i1315, align 8
  store i64 %2238, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2239 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %2240 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %2241 = fdiv double %2239, %2240
  %2242 = load double, double* bitcast (%G_0x725570_type* @G_0x725570 to double*), align 8
  %2243 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*), align 8
  %2244 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %2245 = fsub double %2243, %2244
  store double %2245, double* %2185, align 1
  store i64 0, i64* %2189, align 1
  %2246 = fmul double %2245, %2242
  store double %2246, double* %2178, align 1
  store i64 0, i64* %2180, align 1
  %2247 = fsub double %2241, %2246
  store double %2247, double* %2172, align 1
  store i64 0, i64* %2174, align 1
  %2248 = load i64, i64* %RBP.i, align 8
  %2249 = add i64 %2248, -80
  %2250 = add i64 %2232, 71
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i64*
  %2252 = load i64, i64* %2251, align 8
  store i64 %2252, i64* %2179, align 1
  store double 0.000000e+00, double* %2181, align 1
  %.cast75 = bitcast i64 %2252 to double
  %2253 = fadd double %.cast75, %2247
  store double %2253, double* %2172, align 1
  store i64 0, i64* %2174, align 1
  %2254 = add i64 %2232, -509757
  %2255 = add i64 %2232, 80
  %2256 = load i64, i64* %6, align 8
  %2257 = add i64 %2256, -8
  %2258 = inttoptr i64 %2257 to i64*
  store i64 %2255, i64* %2258, align 8
  store i64 %2257, i64* %6, align 8
  store i64 %2254, i64* %3, align 8
  %2259 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2231)
  %2260 = load i64, i64* %3, align 8
  %2261 = load double, double* %2172, align 1
  %2262 = tail call double @llvm.trunc.f64(double %2261)
  %2263 = tail call double @llvm.fabs.f64(double %2262)
  %2264 = fcmp ogt double %2263, 0x43E0000000000000
  %2265 = fptosi double %2262 to i64
  %2266 = select i1 %2264, i64 -9223372036854775808, i64 %2265
  store i64 %2266, i64* %RCX.i1315, align 8
  store i64 %2266, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %2267 = load i64, i64* %RBP.i, align 8
  %2268 = add i64 %2267, -88
  %2269 = add i64 %2260, 17
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %RCX.i1315, align 8
  %2272 = sub i64 %2271, %2266
  %2273 = icmp ult i64 %2271, %2266
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %14, align 1
  %2275 = trunc i64 %2272 to i32
  %2276 = and i32 %2275, 255
  %2277 = tail call i32 @llvm.ctpop.i32(i32 %2276)
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  store i8 %2280, i8* %21, align 1
  %2281 = xor i64 %2266, %2271
  %2282 = xor i64 %2281, %2272
  %2283 = lshr i64 %2282, 4
  %2284 = trunc i64 %2283 to i8
  %2285 = and i8 %2284, 1
  store i8 %2285, i8* %26, align 1
  %2286 = icmp eq i64 %2272, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %29, align 1
  %2288 = lshr i64 %2272, 63
  %2289 = trunc i64 %2288 to i8
  store i8 %2289, i8* %32, align 1
  %2290 = lshr i64 %2271, 63
  %2291 = lshr i64 %2266, 63
  %2292 = xor i64 %2291, %2290
  %2293 = xor i64 %2288, %2290
  %2294 = add nuw nsw i64 %2293, %2292
  %2295 = icmp eq i64 %2294, 2
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %38, align 1
  %2297 = icmp ne i8 %2289, 0
  %2298 = xor i1 %2297, %2295
  %.v150 = select i1 %2298, i64 31, i64 48
  %2299 = add i64 %2260, %.v150
  store i64 %2299, i64* %3, align 8
  br i1 %2298, label %block_47d95c, label %block_.L_47d96d

block_47d95c:                                     ; preds = %block_47d88a
  store i64 %2266, i64* %RAX.i403, align 8
  %2300 = add i64 %2267, -96
  %2301 = add i64 %2299, 12
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i64*
  store i64 %2266, i64* %2302, align 8
  %2303 = load i64, i64* %3, align 8
  %2304 = add i64 %2303, 18
  br label %block_.L_47d97a

block_.L_47d96d:                                  ; preds = %block_47d88a
  store i64 0, i64* %RAX.i403, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1315, align 8
  %2305 = add i64 %2267, -96
  %2306 = add i64 %2299, 8
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i64*
  store i64 0, i64* %2307, align 8
  %2308 = load i64, i64* %3, align 8
  %2309 = add i64 %2308, 5
  store i64 %2309, i64* %3, align 8
  br label %block_.L_47d97a

block_.L_47d97a:                                  ; preds = %block_.L_47d96d, %block_47d95c
  %storemerge76 = phi i64 [ %2304, %block_47d95c ], [ %2309, %block_.L_47d96d ]
  %2310 = load i64, i64* %RBP.i, align 8
  %2311 = add i64 %2310, -96
  %2312 = add i64 %storemerge76, 4
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i64*
  %2314 = load i64, i64* %2313, align 8
  store i64 %2314, i64* %RAX.i403, align 8
  %2315 = add i64 %storemerge76, add (i64 ptrtoint (%G_0x33f02__rip__type* @G_0x33f02__rip_ to i64), i64 4)
  %2316 = add i64 %storemerge76, 12
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i64*
  %2318 = load i64, i64* %2317, align 8
  store i64 %2318, i64* %2173, align 1
  store double 0.000000e+00, double* %2175, align 1
  %2319 = add i64 %storemerge76, add (i64 ptrtoint (%G_0x33ed2__rip__type* @G_0x33ed2__rip_ to i64), i64 12)
  %2320 = add i64 %storemerge76, 20
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to double*
  %2322 = load double, double* %2321, align 8
  store i64 %2314, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %2323 = load double, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*), align 8
  %2324 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2325 = sitofp i64 %2324 to double
  %2326 = fmul double %2325, %2323
  %2327 = fsub double %2322, %2323
  %2328 = sitofp i64 %2314 to double
  store double %2328, double* %2194, align 1
  %2329 = fmul double %2328, %2327
  store double %2329, double* %2178, align 1
  store i64 0, i64* %2180, align 1
  %2330 = fadd double %2329, %2326
  %2331 = bitcast i64 %2318 to double
  %2332 = fadd double %2330, %2331
  store double %2332, double* %2185, align 1
  store i64 0, i64* %2189, align 1
  %.cast77 = bitcast double %2332 to <2 x i32>
  %2333 = extractelement <2 x i32> %.cast77, i32 0
  store i32 %2333, i32* %2211, align 1
  %2334 = extractelement <2 x i32> %.cast77, i32 1
  store i32 %2334, i32* %2214, align 1
  store i32 0, i32* %2216, align 1
  store i32 0, i32* %2219, align 1
  %2335 = add i64 %storemerge76, -509898
  %2336 = add i64 %storemerge76, 90
  %2337 = load i64, i64* %6, align 8
  %2338 = add i64 %2337, -8
  %2339 = inttoptr i64 %2338 to i64*
  store i64 %2336, i64* %2339, align 8
  store i64 %2338, i64* %6, align 8
  store i64 %2335, i64* %3, align 8
  %2340 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2259)
  %2341 = load i64, i64* %3, align 8
  %2342 = load double, double* %2172, align 1
  %2343 = tail call double @llvm.trunc.f64(double %2342)
  %2344 = tail call double @llvm.fabs.f64(double %2343)
  %2345 = fcmp ogt double %2344, 0x43E0000000000000
  %2346 = fptosi double %2343 to i64
  %2347 = select i1 %2345, i64 -9223372036854775808, i64 %2346
  store i64 %2347, i64* %RAX.i403, align 8
  %2348 = add i64 %2341, 13
  store i64 %2348, i64* %3, align 8
  store i64 %2347, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  br label %block_.L_47d9e1

block_.L_47d9e1:                                  ; preds = %block_.L_47d97a, %block_.L_47d875
  %2349 = phi i64 [ %2165, %block_.L_47d875 ], [ %2348, %block_.L_47d97a ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.33, %block_.L_47d875 ], [ %2340, %block_.L_47d97a ]
  %2350 = add i64 %2349, 5
  store i64 %2350, i64* %3, align 8
  br label %block_.L_47d9e6

block_.L_47d9e6:                                  ; preds = %block_.L_47d9e1, %block_.L_47d807
  %storemerge72 = phi i64 [ %2137, %block_.L_47d807 ], [ %2350, %block_.L_47d9e1 ]
  %MEMORY.40 = phi %struct.Memory* [ %2126, %block_.L_47d807 ], [ %MEMORY.39, %block_.L_47d9e1 ]
  %2351 = add i64 %storemerge72, 5
  store i64 %2351, i64* %3, align 8
  br label %block_.L_47d9eb

block_.L_47d9eb:                                  ; preds = %block_.L_47d9e6, %block_.L_47d6e4
  %storemerge65 = phi i64 [ %1905, %block_.L_47d6e4 ], [ %2351, %block_.L_47d9e6 ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.35, %block_.L_47d6e4 ], [ %MEMORY.40, %block_.L_47d9e6 ]
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2353 = add i64 %storemerge65, ptrtoint (%G_0x33e6d__rip__type* @G_0x33e6d__rip_ to i64)
  %2354 = add i64 %storemerge65, 8
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i64*
  %2356 = load i64, i64* %2355, align 8
  %2357 = bitcast [32 x %union.VectorReg]* %2352 to double*
  %2358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2352, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2356, i64* %2358, align 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2360 = bitcast i64* %2359 to double*
  store double 0.000000e+00, double* %2360, align 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2362 = bitcast %union.VectorReg* %2361 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2362, align 1
  %2363 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2363, i64* %RAX.i403, align 8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %2365 = add i64 %2363, 1236
  %2366 = add i64 %storemerge65, 27
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = sitofp i32 %2368 to double
  %2370 = bitcast %union.VectorReg* %2364 to double*
  store double %2369, double* %2370, align 1
  %2371 = bitcast %union.VectorReg* %2361 to double*
  %2372 = load double, double* %2371, align 1
  %2373 = fmul double %2369, %2372
  %2374 = bitcast i64 %2356 to double
  %2375 = fsub double %2374, %2373
  %2376 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2377 = sitofp i64 %2376 to double
  store double %2377, double* %2371, align 1
  %2378 = fmul double %2377, %2375
  store double %2378, double* %2357, align 1
  store i64 0, i64* %2359, align 1
  %2379 = tail call double @llvm.trunc.f64(double %2378)
  %2380 = tail call double @llvm.fabs.f64(double %2379)
  %2381 = fcmp ogt double %2380, 0x43E0000000000000
  %2382 = fptosi double %2379 to i64
  %2383 = select i1 %2381, i64 -9223372036854775808, i64 %2382
  store i64 %2383, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  store i64 %2383, i64* %RAX.i403, align 8
  %2384 = load i64, i64* bitcast (%G_0x710a48_type* @G_0x710a48 to i64*), align 8
  %2385 = sub i64 %2383, %2384
  %2386 = icmp ult i64 %2383, %2384
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %14, align 1
  %2388 = trunc i64 %2385 to i32
  %2389 = and i32 %2388, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %21, align 1
  %2394 = xor i64 %2384, %2383
  %2395 = xor i64 %2394, %2385
  %2396 = lshr i64 %2395, 4
  %2397 = trunc i64 %2396 to i8
  %2398 = and i8 %2397, 1
  store i8 %2398, i8* %26, align 1
  %2399 = icmp eq i64 %2385, 0
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %29, align 1
  %2401 = lshr i64 %2385, 63
  %2402 = trunc i64 %2401 to i8
  store i8 %2402, i8* %32, align 1
  %2403 = lshr i64 %2383, 63
  %2404 = lshr i64 %2384, 63
  %2405 = xor i64 %2404, %2403
  %2406 = xor i64 %2401, %2403
  %2407 = add nuw nsw i64 %2406, %2405
  %2408 = icmp eq i64 %2407, 2
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %38, align 1
  %2410 = icmp ne i8 %2402, 0
  %2411 = xor i1 %2410, %2408
  %.v151 = select i1 %2411, i64 84, i64 101
  %2412 = add i64 %storemerge65, %.v151
  %2413 = add i64 %2412, 8
  store i64 %2413, i64* %3, align 8
  br i1 %2411, label %block_47da3f, label %block_.L_47da50

block_47da3f:                                     ; preds = %block_.L_47d9eb
  store i64 %2384, i64* %RAX.i403, align 8
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -104
  %2416 = add i64 %2412, 12
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i64*
  store i64 %2384, i64* %2417, align 8
  %2418 = load i64, i64* %3, align 8
  %2419 = add i64 %2418, 17
  store i64 %2419, i64* %3, align 8
  br label %block_.L_47da5c

block_.L_47da50:                                  ; preds = %block_.L_47d9eb
  store i64 %2383, i64* %RAX.i403, align 8
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -104
  %2422 = add i64 %2412, 12
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i64*
  store i64 %2383, i64* %2423, align 8
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_47da5c

block_.L_47da5c:                                  ; preds = %block_.L_47da50, %block_47da3f
  %2424 = phi i64 [ %.pre122, %block_.L_47da50 ], [ %2419, %block_47da3f ]
  %2425 = load i64, i64* %RBP.i, align 8
  %2426 = add i64 %2425, -104
  %2427 = add i64 %2424, 4
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i64*
  %2429 = load i64, i64* %2428, align 8
  store i64 %2429, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  store i64 %2429, i64* %RAX.i403, align 8
  %2430 = load i64, i64* bitcast (%G_0x6cd478_type* @G_0x6cd478 to i64*), align 8
  %2431 = sub i64 %2429, %2430
  %2432 = icmp ult i64 %2429, %2430
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %14, align 1
  %2434 = trunc i64 %2431 to i32
  %2435 = and i32 %2434, 255
  %2436 = tail call i32 @llvm.ctpop.i32(i32 %2435)
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = xor i8 %2438, 1
  store i8 %2439, i8* %21, align 1
  %2440 = xor i64 %2430, %2429
  %2441 = xor i64 %2440, %2431
  %2442 = lshr i64 %2441, 4
  %2443 = trunc i64 %2442 to i8
  %2444 = and i8 %2443, 1
  store i8 %2444, i8* %26, align 1
  %2445 = icmp eq i64 %2431, 0
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %29, align 1
  %2447 = lshr i64 %2431, 63
  %2448 = trunc i64 %2447 to i8
  store i8 %2448, i8* %32, align 1
  %2449 = lshr i64 %2429, 63
  %2450 = lshr i64 %2430, 63
  %2451 = xor i64 %2450, %2449
  %2452 = xor i64 %2447, %2449
  %2453 = add nuw nsw i64 %2452, %2451
  %2454 = icmp eq i64 %2453, 2
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %38, align 1
  %2456 = icmp ne i8 %2448, 0
  %2457 = xor i1 %2456, %2454
  %.v152 = select i1 %2457, i64 34, i64 51
  %2458 = add i64 %2424, %.v152
  %2459 = add i64 %2458, 8
  store i64 %2459, i64* %3, align 8
  br i1 %2457, label %block_47da7e, label %block_.L_47da8f

block_47da7e:                                     ; preds = %block_.L_47da5c
  store i64 %2429, i64* %RAX.i403, align 8
  %2460 = add i64 %2425, -112
  %2461 = add i64 %2458, 12
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  store i64 %2429, i64* %2462, align 8
  %2463 = load i64, i64* %3, align 8
  %2464 = add i64 %2463, 17
  store i64 %2464, i64* %3, align 8
  br label %block_.L_47da9b

block_.L_47da8f:                                  ; preds = %block_.L_47da5c
  store i64 %2430, i64* %RAX.i403, align 8
  %2465 = add i64 %2425, -112
  %2466 = add i64 %2458, 12
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i64*
  store i64 %2430, i64* %2467, align 8
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_47da9b

block_.L_47da9b:                                  ; preds = %block_.L_47da8f, %block_47da7e
  %2468 = phi i64 [ %.pre123, %block_.L_47da8f ], [ %2464, %block_47da7e ]
  %2469 = load i64, i64* %RBP.i, align 8
  %2470 = add i64 %2469, -112
  %2471 = add i64 %2468, 4
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i64*
  %2473 = load i64, i64* %2472, align 8
  store i64 %2473, i64* %RAX.i403, align 8
  store i64 %2473, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2474 = add i64 %2469, -8
  %2475 = add i64 %2468, 16
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  store i8 0, i8* %14, align 1
  %2478 = and i32 %2477, 255
  %2479 = tail call i32 @llvm.ctpop.i32(i32 %2478)
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  store i8 %2482, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2483 = icmp eq i32 %2477, 0
  %2484 = zext i1 %2483 to i8
  store i8 %2484, i8* %29, align 1
  %2485 = lshr i32 %2477, 31
  %2486 = trunc i32 %2485 to i8
  store i8 %2486, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v153 = select i1 %2483, i64 22, i64 74
  %2487 = add i64 %2468, %.v153
  store i64 %2487, i64* %3, align 8
  br i1 %2483, label %block_47dab1, label %block_.L_47dae5

block_47dab1:                                     ; preds = %block_.L_47da9b
  %2488 = add i64 %2469, -4
  %2489 = add i64 %2487, 4
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  store i8 0, i8* %14, align 1
  %2492 = and i32 %2491, 255
  %2493 = tail call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  store i8 %2496, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2497 = icmp eq i32 %2491, 0
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %29, align 1
  %2499 = lshr i32 %2491, 31
  %2500 = trunc i32 %2499 to i8
  store i8 %2500, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %2497, i64 69, i64 10
  %2501 = add i64 %2487, %.v154
  store i64 %2501, i64* %3, align 8
  br i1 %2497, label %block_.L_47daf6, label %block_47dabb

block_47dabb:                                     ; preds = %block_47dab1
  %2502 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2502, i64* %RAX.i403, align 8
  %2503 = add i64 %2502, 2880
  %2504 = add i64 %2501, 15
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = add i32 %2506, -2
  %2508 = icmp ult i32 %2506, 2
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %14, align 1
  %2510 = and i32 %2507, 255
  %2511 = tail call i32 @llvm.ctpop.i32(i32 %2510)
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = xor i8 %2513, 1
  store i8 %2514, i8* %21, align 1
  %2515 = xor i32 %2507, %2506
  %2516 = lshr i32 %2515, 4
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  store i8 %2518, i8* %26, align 1
  %2519 = icmp eq i32 %2507, 0
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %29, align 1
  %2521 = lshr i32 %2507, 31
  %2522 = trunc i32 %2521 to i8
  store i8 %2522, i8* %32, align 1
  %2523 = lshr i32 %2506, 31
  %2524 = xor i32 %2521, %2523
  %2525 = add nuw nsw i32 %2524, %2523
  %2526 = icmp eq i32 %2525, 2
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %38, align 1
  %.v155 = select i1 %2519, i64 42, i64 21
  %2528 = add i64 %2501, %.v155
  store i64 %2528, i64* %3, align 8
  br i1 %2519, label %block_.L_47dae5, label %block_47dad0

block_47dad0:                                     ; preds = %block_47dabb
  store i64 %2502, i64* %RAX.i403, align 8
  %2529 = add i64 %2502, 2884
  %2530 = add i64 %2528, 15
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  store i8 0, i8* %14, align 1
  %2533 = and i32 %2532, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2538 = icmp eq i32 %2532, 0
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %29, align 1
  %2540 = lshr i32 %2532, 31
  %2541 = trunc i32 %2540 to i8
  store i8 %2541, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %2538, i64 38, i64 21
  %2542 = add i64 %2528, %.v156
  store i64 %2542, i64* %3, align 8
  br i1 %2538, label %block_.L_47daf6, label %block_.L_47dae5

block_.L_47dae5:                                  ; preds = %block_.L_47da9b, %block_47dad0, %block_47dabb
  %2543 = phi i64 [ %2542, %block_47dad0 ], [ %2528, %block_47dabb ], [ %2487, %block_.L_47da9b ]
  store i64 %2473, i64* %RAX.i403, align 8
  %2544 = trunc i64 %2473 to i32
  %2545 = and i64 %2473, 4294967295
  store i64 %2545, i64* %RCX.i1315, align 8
  %2546 = add i64 %2543, 17
  store i64 %2546, i64* %3, align 8
  store i32 %2544, i32* bitcast (%G_0x6cc5e4_type* @G_0x6cc5e4 to i32*), align 8
  br label %block_.L_47daf6

block_.L_47daf6:                                  ; preds = %block_.L_47dae5, %block_47dad0, %block_47dab1
  %2547 = phi i64 [ %2546, %block_.L_47dae5 ], [ %2542, %block_47dad0 ], [ %2501, %block_47dab1 ]
  %2548 = add i64 %2547, 5
  store i64 %2548, i64* %3, align 8
  br label %block_.L_47dafb

block_.L_47dafb:                                  ; preds = %block_.L_47d544.block_.L_47dafb_crit_edge, %block_.L_47daf6
  %.pre124 = phi i64 [ %.pre124.pre, %block_.L_47d544.block_.L_47dafb_crit_edge ], [ %2469, %block_.L_47daf6 ]
  %2549 = phi i64 [ %1669, %block_.L_47d544.block_.L_47dafb_crit_edge ], [ %2548, %block_.L_47daf6 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.33, %block_.L_47d544.block_.L_47dafb_crit_edge ], [ %MEMORY.41, %block_.L_47daf6 ]
  %2550 = add i64 %2549, 5
  store i64 %2550, i64* %3, align 8
  br label %block_.L_47db00

block_.L_47db00:                                  ; preds = %block_.L_47dafb, %block_.L_47cddd, %block_47cdd3
  %2551 = phi i64 [ %257, %block_.L_47cddd ], [ %2550, %block_.L_47dafb ], [ %242, %block_47cdd3 ]
  %2552 = phi i64 [ %214, %block_.L_47cddd ], [ %.pre124, %block_.L_47dafb ], [ %214, %block_47cdd3 ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.0, %block_.L_47cddd ], [ %MEMORY.46, %block_.L_47dafb ], [ %MEMORY.0, %block_47cdd3 ]
  %2553 = add i64 %2552, -4
  %2554 = add i64 %2551, 4
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  store i8 0, i8* %14, align 1
  %2557 = and i32 %2556, 255
  %2558 = tail call i32 @llvm.ctpop.i32(i32 %2557)
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  store i8 %2561, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2562 = icmp eq i32 %2556, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %29, align 1
  %2564 = lshr i32 %2556, 31
  %2565 = trunc i32 %2564 to i8
  store i8 %2565, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %2562, i64 10, i64 20
  %2566 = add i64 %2551, %.v139
  store i64 %2566, i64* %3, align 8
  br i1 %2562, label %block_47db0a, label %block_.L_47db14

block_47db0a:                                     ; preds = %block_.L_47db00
  %2567 = add i64 %2552, -8
  %2568 = add i64 %2566, 4
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i32*
  %2570 = load i32, i32* %2569, align 4
  store i8 0, i8* %14, align 1
  %2571 = and i32 %2570, 255
  %2572 = tail call i32 @llvm.ctpop.i32(i32 %2571)
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  %2575 = xor i8 %2574, 1
  store i8 %2575, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2576 = icmp eq i32 %2570, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %29, align 1
  %2578 = lshr i32 %2570, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %2576, i64 226, i64 10
  %2580 = add i64 %2566, %.v146
  store i64 %2580, i64* %3, align 8
  br i1 %2576, label %block_.L_47dbec, label %block_.L_47db14

block_.L_47db14:                                  ; preds = %block_.L_47db00, %block_47db0a
  %2581 = phi i64 [ %2580, %block_47db0a ], [ %2566, %block_.L_47db00 ]
  %2582 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2583 = add i64 %2582, 72524
  %2584 = add i64 %2581, 18
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i32*
  store i32 0, i32* %2585, align 4
  %2586 = load i64, i64* %3, align 8
  %2587 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2588 = add i64 %2587, 72528
  %2589 = add i64 %2586, 18
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i32*
  store i32 0, i32* %2590, align 4
  %2591 = load i64, i64* %3, align 8
  %2592 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2592, i64* %RAX.i403, align 8
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i139 = getelementptr inbounds %union.anon, %union.anon* %2593, i64 0, i32 0
  %2594 = add i64 %2592, 72620
  %2595 = add i64 %2591, 14
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  %2597 = load i32, i32* %2596, align 4
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RCX.i139, align 8
  store i64 %2592, i64* %RAX.i403, align 8
  %ECX.i133 = bitcast %union.anon* %2593 to i32*
  %2599 = add i64 %2592, 72608
  %2600 = add i64 %2591, 28
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i32*
  %2602 = load i32, i32* %2601, align 4
  %2603 = sub i32 %2597, %2602
  %2604 = icmp ult i32 %2597, %2602
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %14, align 1
  %2606 = and i32 %2603, 255
  %2607 = tail call i32 @llvm.ctpop.i32(i32 %2606)
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  store i8 %2610, i8* %21, align 1
  %2611 = xor i32 %2602, %2597
  %2612 = xor i32 %2611, %2603
  %2613 = lshr i32 %2612, 4
  %2614 = trunc i32 %2613 to i8
  %2615 = and i8 %2614, 1
  store i8 %2615, i8* %26, align 1
  %2616 = icmp eq i32 %2603, 0
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %29, align 1
  %2618 = lshr i32 %2603, 31
  %2619 = trunc i32 %2618 to i8
  store i8 %2619, i8* %32, align 1
  %2620 = lshr i32 %2597, 31
  %2621 = lshr i32 %2602, 31
  %2622 = xor i32 %2621, %2620
  %2623 = xor i32 %2618, %2620
  %2624 = add nuw nsw i32 %2623, %2622
  %2625 = icmp eq i32 %2624, 2
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %38, align 1
  %2627 = icmp ne i8 %2619, 0
  %2628 = xor i1 %2627, %2625
  %.v140 = select i1 %2628, i64 34, i64 175
  %2629 = add i64 %2591, %.v140
  store i64 %2629, i64* %3, align 8
  br i1 %2628, label %block_47db5a, label %block_.L_47dbe7

block_47db5a:                                     ; preds = %block_.L_47db14
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2631 = bitcast %union.VectorReg* %2630 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2631, align 1
  store i32 0, i32* bitcast (%G_0x722b78_type* @G_0x722b78 to i32*), align 8
  %2632 = add i64 %2592, 72532
  %2633 = add i64 %2629, 32
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i32*
  store i32 0, i32* %2634, align 4
  %2635 = load i64, i64* %3, align 8
  %2636 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2637 = add i64 %2636, 72536
  %2638 = add i64 %2635, 18
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  store i32 0, i32* %2639, align 4
  %2640 = load i64, i64* %3, align 8
  %2641 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2642 = add i64 %2641, 72544
  %2643 = add i64 %2640, 16
  store i64 %2643, i64* %3, align 8
  %2644 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2630, i64 0, i32 0, i32 0, i32 0, i64 0
  %2645 = load i64, i64* %2644, align 1
  %2646 = inttoptr i64 %2642 to i64*
  store i64 %2645, i64* %2646, align 8
  %2647 = load i64, i64* %3, align 8
  %2648 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2648, i64* %RAX.i403, align 8
  %2649 = add i64 %2648, 72600
  %2650 = add i64 %2647, 15
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2649 to i32*
  %2652 = load i32, i32* %2651, align 4
  store i8 0, i8* %14, align 1
  %2653 = and i32 %2652, 255
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2658 = icmp eq i32 %2652, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %29, align 1
  %2660 = lshr i32 %2652, 31
  %2661 = trunc i32 %2660 to i8
  store i8 %2661, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %2658, i64 21, i64 40
  %2662 = add i64 %2647, %.v145
  store i64 %2662, i64* %3, align 8
  %2663 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  %2664 = zext i32 %2663 to i64
  br i1 %2658, label %block_47dbb1, label %block_.L_47dbc4

block_47dbb1:                                     ; preds = %block_47db5a
  store i64 %2664, i64* %RAX.i403, align 8
  store i32 %2663, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*), align 8
  %2665 = add i64 %2662, 49
  store i64 %2665, i64* %3, align 8
  br label %block_.L_47dbe2

block_.L_47dbc4:                                  ; preds = %block_47db5a
  store i64 %2664, i64* %RCX.i139, align 8
  %2666 = load i64, i64* %RBP.i, align 8
  %2667 = add i64 %2666, -116
  %2668 = add i64 %2662, 15
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i32*
  store i32 2, i32* %2669, align 4
  %2670 = load i32, i32* %ECX.i133, align 4
  %2671 = zext i32 %2670 to i64
  %2672 = load i64, i64* %3, align 8
  store i64 %2671, i64* %RAX.i403, align 8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2674 = sext i32 %2670 to i64
  %2675 = lshr i64 %2674, 32
  store i64 %2675, i64* %2673, align 8
  %2676 = load i64, i64* %RBP.i, align 8
  %2677 = add i64 %2676, -116
  %2678 = add i64 %2672, 6
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %RCX.i139, align 8
  %2682 = add i64 %2672, 8
  store i64 %2682, i64* %3, align 8
  %2683 = sext i32 %2680 to i64
  %2684 = shl nuw i64 %2675, 32
  %2685 = or i64 %2684, %2671
  %2686 = sdiv i64 %2685, %2683
  %2687 = shl i64 %2686, 32
  %2688 = ashr exact i64 %2687, 32
  %2689 = icmp eq i64 %2686, %2688
  br i1 %2689, label %2692, label %2690

; <label>:2690:                                   ; preds = %block_.L_47dbc4
  %EAX.i98 = bitcast %union.anon* %58 to i32*
  %2691 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2682, %struct.Memory* %MEMORY.47)
  %.pre125 = load i32, i32* %EAX.i98, align 4
  %.pre126 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit87

; <label>:2692:                                   ; preds = %block_.L_47dbc4
  %2693 = srem i64 %2685, %2683
  %2694 = and i64 %2686, 4294967295
  store i64 %2694, i64* %RAX.i403, align 8
  %2695 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %2696 = and i64 %2693, 4294967295
  store i64 %2696, i64* %2695, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2697 = trunc i64 %2686 to i32
  br label %routine_idivl__ecx.exit87

routine_idivl__ecx.exit87:                        ; preds = %2692, %2690
  %2698 = phi i64 [ %.pre126, %2690 ], [ %2682, %2692 ]
  %2699 = phi i32 [ %.pre125, %2690 ], [ %2697, %2692 ]
  %2700 = phi %struct.Memory* [ %2691, %2690 ], [ %MEMORY.47, %2692 ]
  %2701 = add i64 %2698, 7
  store i64 %2701, i64* %3, align 8
  store i32 %2699, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*), align 8
  br label %block_.L_47dbe2

block_.L_47dbe2:                                  ; preds = %routine_idivl__ecx.exit87, %block_47dbb1
  %2702 = phi i64 [ %2701, %routine_idivl__ecx.exit87 ], [ %2665, %block_47dbb1 ]
  %MEMORY.49 = phi %struct.Memory* [ %2700, %routine_idivl__ecx.exit87 ], [ %MEMORY.47, %block_47dbb1 ]
  %2703 = add i64 %2702, 5
  store i64 %2703, i64* %3, align 8
  br label %block_.L_47dbe7

block_.L_47dbe7:                                  ; preds = %block_.L_47db14, %block_.L_47dbe2
  %2704 = phi i64 [ %2629, %block_.L_47db14 ], [ %2703, %block_.L_47dbe2 ]
  %MEMORY.50 = phi %struct.Memory* [ %MEMORY.47, %block_.L_47db14 ], [ %MEMORY.49, %block_.L_47dbe2 ]
  %2705 = add i64 %2704, 5
  store i64 %2705, i64* %3, align 8
  br label %block_.L_47dbec

block_.L_47dbec:                                  ; preds = %block_.L_47dbe7, %block_47db0a
  %2706 = phi i64 [ %2705, %block_.L_47dbe7 ], [ %2580, %block_47db0a ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.50, %block_.L_47dbe7 ], [ %MEMORY.47, %block_47db0a ]
  %2707 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2707, i64* %RAX.i403, align 8
  %2708 = add i64 %2707, 24
  %2709 = add i64 %2706, 12
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i32*
  %2711 = load i32, i32* %2710, align 4
  store i8 0, i8* %14, align 1
  %2712 = and i32 %2711, 255
  %2713 = tail call i32 @llvm.ctpop.i32(i32 %2712)
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = xor i8 %2715, 1
  store i8 %2716, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2717 = icmp eq i32 %2711, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %29, align 1
  %2719 = lshr i32 %2711, 31
  %2720 = trunc i32 %2719 to i8
  store i8 %2720, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v141 = select i1 %2717, i64 18, i64 248
  %2721 = add i64 %2706, %.v141
  store i64 %2721, i64* %3, align 8
  br i1 %2717, label %block_47dbfe, label %block_.L_47dce4

block_47dbfe:                                     ; preds = %block_.L_47dbec
  store i64 %2707, i64* %RAX.i403, align 8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i73 = getelementptr inbounds %union.anon, %union.anon* %2722, i64 0, i32 0
  %2723 = add i64 %2707, 72620
  %2724 = add i64 %2721, 14
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RCX.i73, align 8
  store i64 %2707, i64* %RAX.i403, align 8
  %ECX.i67 = bitcast %union.anon* %2722 to i32*
  %2728 = add i64 %2707, 72608
  %2729 = add i64 %2721, 28
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = sub i32 %2726, %2731
  %2733 = icmp ult i32 %2726, %2731
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %14, align 1
  %2735 = and i32 %2732, 255
  %2736 = tail call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  store i8 %2739, i8* %21, align 1
  %2740 = xor i32 %2731, %2726
  %2741 = xor i32 %2740, %2732
  %2742 = lshr i32 %2741, 4
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  store i8 %2744, i8* %26, align 1
  %2745 = icmp eq i32 %2732, 0
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %29, align 1
  %2747 = lshr i32 %2732, 31
  %2748 = trunc i32 %2747 to i8
  store i8 %2748, i8* %32, align 1
  %2749 = lshr i32 %2726, 31
  %2750 = lshr i32 %2731, 31
  %2751 = xor i32 %2750, %2749
  %2752 = xor i32 %2747, %2749
  %2753 = add nuw nsw i32 %2752, %2751
  %2754 = icmp eq i32 %2753, 2
  %2755 = zext i1 %2754 to i8
  store i8 %2755, i8* %38, align 1
  %2756 = icmp ne i8 %2748, 0
  %2757 = xor i1 %2756, %2754
  %.v142 = select i1 %2757, i64 34, i64 230
  %2758 = add i64 %2721, %.v142
  store i64 %2758, i64* %3, align 8
  br i1 %2757, label %block_47dc20, label %block_.L_47dce4

block_47dc20:                                     ; preds = %block_47dbfe
  store i64 %2707, i64* %RAX.i403, align 8
  %2759 = add i64 %2707, 72600
  %2760 = add i64 %2758, 15
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = add i32 %2762, -1
  %2764 = icmp eq i32 %2762, 0
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %14, align 1
  %2766 = and i32 %2763, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  %2771 = xor i32 %2763, %2762
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %26, align 1
  %2775 = icmp eq i32 %2763, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %29, align 1
  %2777 = lshr i32 %2763, 31
  %2778 = trunc i32 %2777 to i8
  store i8 %2778, i8* %32, align 1
  %2779 = lshr i32 %2762, 31
  %2780 = xor i32 %2777, %2779
  %2781 = add nuw nsw i32 %2780, %2779
  %2782 = icmp eq i32 %2781, 2
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %38, align 1
  %.v143 = select i1 %2775, i64 21, i64 196
  %2784 = add i64 %2758, %.v143
  store i64 %2784, i64* %3, align 8
  br i1 %2775, label %block_47dc35, label %block_.L_47dce4

block_47dc35:                                     ; preds = %block_47dc20
  %2785 = load i64, i64* %RBP.i, align 8
  %2786 = add i64 %2785, -8
  %2787 = add i64 %2784, 4
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i32*
  %2789 = load i32, i32* %2788, align 4
  store i8 0, i8* %14, align 1
  %2790 = and i32 %2789, 255
  %2791 = tail call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  store i8 %2794, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2795 = icmp eq i32 %2789, 0
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %29, align 1
  %2797 = lshr i32 %2789, 31
  %2798 = trunc i32 %2797 to i8
  store i8 %2798, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %2795, i64 60, i64 10
  %2799 = add i64 %2784, %.v144
  store i64 %2799, i64* %3, align 8
  br i1 %2795, label %block_.L_47dc71, label %block_47dc3f

block_47dc3f:                                     ; preds = %block_47dc35
  %2800 = add i64 %2799, ptrtoint (%G_0x33cb1__rip__type* @G_0x33cb1__rip_ to i64)
  %2801 = add i64 %2799, 8
  store i64 %2801, i64* %3, align 8
  %2802 = inttoptr i64 %2800 to i64*
  %2803 = load i64, i64* %2802, align 8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2803, i64* %2804, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2806 = bitcast i64* %2805 to double*
  store double 0.000000e+00, double* %2806, align 1
  store i32 0, i32* bitcast (%G_0x6cc5e8_type* @G_0x6cc5e8 to i32*), align 8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2808 = load i32, i32* bitcast (%G_0x6cc5e4_type* @G_0x6cc5e4 to i32*), align 8
  %2809 = sitofp i32 %2808 to double
  %2810 = bitcast %union.VectorReg* %2807 to double*
  %2811 = bitcast i64 %2803 to double
  %2812 = fmul double %2809, %2811
  store double %2812, double* %2810, align 1
  %2813 = tail call double @llvm.trunc.f64(double %2812)
  %2814 = tail call double @llvm.fabs.f64(double %2813)
  %2815 = fcmp ogt double %2814, 0x43E0000000000000
  %2816 = fptosi double %2813 to i64
  %2817 = select i1 %2815, i64 -9223372036854775808, i64 %2816
  store i64 %2817, i64* %RAX.i403, align 8
  store i64 %2817, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2818 = add i64 %2799, 160
  store i64 %2818, i64* %3, align 8
  br label %block_.L_47dcdf

block_.L_47dc71:                                  ; preds = %block_47dc35
  store i64 2, i64* %RAX.i403, align 8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2820 = bitcast %union.VectorReg* %2819 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2820, align 1
  %2821 = load i32, i32* bitcast (%G_0x6cc5e4_type* @G_0x6cc5e4 to i32*), align 8
  %2822 = load i32, i32* bitcast (%G_0x6cc5e8_type* @G_0x6cc5e8 to i32*), align 8
  %2823 = sub i32 %2821, %2822
  %2824 = icmp ult i32 %2821, %2822
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %14, align 1
  %2826 = and i32 %2823, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %21, align 1
  %2831 = xor i32 %2822, %2821
  %2832 = xor i32 %2831, %2823
  %2833 = lshr i32 %2832, 4
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  store i8 %2835, i8* %26, align 1
  %2836 = icmp eq i32 %2823, 0
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %29, align 1
  %2838 = lshr i32 %2823, 31
  %2839 = trunc i32 %2838 to i8
  store i8 %2839, i8* %32, align 1
  %2840 = lshr i32 %2821, 31
  %2841 = lshr i32 %2822, 31
  %2842 = xor i32 %2841, %2840
  %2843 = xor i32 %2838, %2840
  %2844 = add nuw nsw i32 %2843, %2842
  %2845 = icmp eq i32 %2844, 2
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %38, align 1
  %2847 = sext i32 %2823 to i64
  store i64 %2847, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %2848 = add i64 %2707, 72532
  %2849 = add i64 %2799, 51
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  store i32 0, i32* %2850, align 4
  %2851 = load i64, i64* %3, align 8
  %2852 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2853 = add i64 %2852, 72536
  %2854 = add i64 %2851, 18
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i32*
  store i32 0, i32* %2855, align 4
  %2856 = load i64, i64* %3, align 8
  %2857 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2858 = add i64 %2857, 72544
  %2859 = add i64 %2856, 16
  store i64 %2859, i64* %3, align 8
  %2860 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2819, i64 0, i32 0, i32 0, i32 0, i64 0
  %2861 = load i64, i64* %2860, align 1
  %2862 = inttoptr i64 %2858 to i64*
  store i64 %2861, i64* %2862, align 8
  %2863 = load i64, i64* %3, align 8
  %2864 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RCX.i73, align 8
  %EAX.i17 = bitcast %union.anon* %58 to i32*
  %2866 = load i64, i64* %RBP.i, align 8
  %2867 = add i64 %2866, -120
  %2868 = load i32, i32* %EAX.i17, align 4
  %2869 = add i64 %2863, 10
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2867 to i32*
  store i32 %2868, i32* %2870, align 4
  %2871 = load i32, i32* %ECX.i67, align 4
  %2872 = zext i32 %2871 to i64
  %2873 = load i64, i64* %3, align 8
  store i64 %2872, i64* %RAX.i403, align 8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2875 = sext i32 %2871 to i64
  %2876 = lshr i64 %2875, 32
  store i64 %2876, i64* %2874, align 8
  %2877 = load i64, i64* %RBP.i, align 8
  %2878 = add i64 %2877, -120
  %2879 = add i64 %2873, 6
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RCX.i73, align 8
  %2883 = add i64 %2873, 8
  store i64 %2883, i64* %3, align 8
  %2884 = sext i32 %2881 to i64
  %2885 = shl nuw i64 %2876, 32
  %2886 = or i64 %2885, %2872
  %2887 = sdiv i64 %2886, %2884
  %2888 = shl i64 %2887, 32
  %2889 = ashr exact i64 %2888, 32
  %2890 = icmp eq i64 %2887, %2889
  br i1 %2890, label %2893, label %2891

; <label>:2891:                                   ; preds = %block_.L_47dc71
  %2892 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2883, %struct.Memory* %MEMORY.51)
  %.pre127 = load i32, i32* %EAX.i17, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:2893:                                   ; preds = %block_.L_47dc71
  %RDX.i36 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %2894 = srem i64 %2886, %2884
  %2895 = and i64 %2887, 4294967295
  store i64 %2895, i64* %RAX.i403, align 8
  %2896 = and i64 %2894, 4294967295
  store i64 %2896, i64* %RDX.i36, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2897 = trunc i64 %2887 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2893, %2891
  %2898 = phi i64 [ %.pre128, %2891 ], [ %2883, %2893 ]
  %2899 = phi i32 [ %.pre127, %2891 ], [ %2897, %2893 ]
  %2900 = phi %struct.Memory* [ %2892, %2891 ], [ %MEMORY.51, %2893 ]
  %2901 = add i64 %2898, 7
  store i64 %2901, i64* %3, align 8
  store i32 %2899, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*), align 8
  br label %block_.L_47dcdf

block_.L_47dcdf:                                  ; preds = %routine_idivl__ecx.exit, %block_47dc3f
  %2902 = phi i64 [ %2901, %routine_idivl__ecx.exit ], [ %2818, %block_47dc3f ]
  %MEMORY.52 = phi %struct.Memory* [ %2900, %routine_idivl__ecx.exit ], [ %MEMORY.51, %block_47dc3f ]
  %2903 = add i64 %2902, 5
  store i64 %2903, i64* %3, align 8
  br label %block_.L_47dce4

block_.L_47dce4:                                  ; preds = %block_47dc20, %block_.L_47dbec, %block_47dbfe, %block_.L_47dcdf
  %2904 = phi i64 [ %2721, %block_.L_47dbec ], [ %2758, %block_47dbfe ], [ %2784, %block_47dc20 ], [ %2903, %block_.L_47dcdf ]
  %MEMORY.53 = phi %struct.Memory* [ %MEMORY.51, %block_.L_47dbec ], [ %MEMORY.51, %block_47dbfe ], [ %MEMORY.51, %block_47dc20 ], [ %MEMORY.52, %block_.L_47dcdf ]
  %2905 = load i64, i64* %6, align 8
  %2906 = add i64 %2905, 128
  store i64 %2906, i64* %6, align 8
  %2907 = icmp ugt i64 %2905, -129
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %14, align 1
  %2909 = trunc i64 %2906 to i32
  %2910 = and i32 %2909, 255
  %2911 = tail call i32 @llvm.ctpop.i32(i32 %2910)
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = xor i8 %2913, 1
  store i8 %2914, i8* %21, align 1
  %2915 = xor i64 %2906, %2905
  %2916 = lshr i64 %2915, 4
  %2917 = trunc i64 %2916 to i8
  %2918 = and i8 %2917, 1
  store i8 %2918, i8* %26, align 1
  %2919 = icmp eq i64 %2906, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %29, align 1
  %2921 = lshr i64 %2906, 63
  %2922 = trunc i64 %2921 to i8
  store i8 %2922, i8* %32, align 1
  %2923 = lshr i64 %2905, 63
  %2924 = xor i64 %2921, %2923
  %2925 = add nuw nsw i64 %2924, %2921
  %2926 = icmp eq i64 %2925, 2
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %38, align 1
  %2928 = add i64 %2904, 8
  store i64 %2928, i64* %3, align 8
  %2929 = add i64 %2905, 136
  %2930 = inttoptr i64 %2906 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RBP.i, align 8
  store i64 %2929, i64* %6, align 8
  %2932 = add i64 %2904, 9
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2929 to i64*
  %2934 = load i64, i64* %2933, align 8
  store i64 %2934, i64* %3, align 8
  %2935 = add i64 %2905, 144
  store i64 %2935, i64* %6, align 8
  ret %struct.Memory* %MEMORY.53
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2884
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
define %struct.Memory* @routine_je_.L_47cd3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11ba0__rax____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72608
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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

define %struct.Memory* @routine_idivl_0x11bac__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6f80a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11ba8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xcb4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_47cdc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3a__0x11b74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -58
  %10 = icmp ult i32 %8, 58
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
define %struct.Memory* @routine_jne_.L_47cd98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x34ba7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34ba7__rip__type* @G_0x34ba7__rip_ to i64)
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
define %struct.Memory* @routine_mulsd_0x6ccf88___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6ccf88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47cdc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3b__0x11b74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -59
  %10 = icmp ult i32 %8, 59
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
define %struct.Memory* @routine_jne_.L_47cdbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6f6f80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47cdc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47cddd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_47db00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq_0x24eb12__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x24eb12__rip__type* @G_0x24eb12__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47ce15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ce01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47d3a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d544(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6f6f80___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_0x6ccf88___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*), align 8
  %9 = fcmp uno double %7, %8
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %block_400488
  %11 = fadd double %7, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %10
  %19 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:20:                                     ; preds = %block_400488
  %21 = fcmp ogt double %7, %8
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %20
  %23 = fcmp olt double %7, %8
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp oeq double %7, %8
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %24, %22, %20, %10
  %27 = phi i8 [ 0, %20 ], [ 0, %22 ], [ 1, %24 ], [ 1, %10 ]
  %28 = phi i8 [ 0, %20 ], [ 0, %22 ], [ 0, %24 ], [ 1, %10 ]
  %29 = phi i8 [ 0, %20 ], [ 1, %22 ], [ 0, %24 ], [ 1, %10 ]
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %26, %24
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %33, %18
  %37 = phi %struct.Memory* [ %19, %18 ], [ %2, %33 ]
  ret %struct.Memory* %37
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47ce38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_47ce38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ce8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x34a48__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34a48__rip__type* @G_0x34a48__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x6ccf88___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6f6f80___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6cc5dc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6cc5e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6d1fb0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.floor_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6cc5d8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6cc5d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72620
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
define %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72608
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
define %struct.Memory* @routine_jne_.L_47cf67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11b80__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_47cf29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6d4680(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6d4680_type* @G_0x6d4680 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x722fe0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x722fe0_type* @G_0x722fe0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x722fd8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6f9690(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6f9690_type* @G_0x6f9690 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9690_type* @G_0x6f9690 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4680_type* @G_0x6d4680 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6d4680_type* @G_0x6d4680 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47cf62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47cf5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d1f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11b74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72564
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
define %struct.Memory* @routine_jle_.L_47d058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2880
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_je_.L_47cfa6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47d007(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_47d007(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x6f80a0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_47d002(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x723630___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x723630_type* @G_0x723630 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cea38___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cea38_type* @G_0x6cea38 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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
define %struct.Memory* @routine_jmpq_.L_47cfc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47d04e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x724bd8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x724bd8_type* @G_0x724bd8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9350___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9350_type* @G_0x6f9350 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d00e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11b78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_47d123(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d0e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d11e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47d119(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d1ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47d1e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11b80__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72576
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
define %struct.Memory* @routine_jne_.L_47d1ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdl_0x722fd8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x722fd8_type* @G_0x722fd8 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d1e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47d1df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d1e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11b74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_47d21a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x70f6d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6ccaf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__0x11b74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_47d2a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_47d2a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b74__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72564
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x11b74__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72564
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6ccaf0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x11b74__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72564
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d2fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47d2f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x345fa__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x345fa__rip__type* @G_0x345fa__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x34662__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34662__rip__type* @G_0x34662__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x70f6d8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x6ccaf0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x6ccaf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_jle_.L_47d39d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6ccaf0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_movsd_0x6d1fb0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6ccaf0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccaf0_type* @G_0x6ccaf0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x726838___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1236
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6d4680___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d3c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_47d3c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d41c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x344bb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x344bb__rip__type* @G_0x344bb__rip_ to i64)
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
define %struct.Memory* @routine_jne_.L_47d46f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11b70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movsd_0x710368___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710368_type* @G_0x710368 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x726838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d53f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47d53a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__0x11b70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_47d4fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b70__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72560
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
define %struct.Memory* @routine_cvtsi2sdl_0x11b70__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72560
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x726838___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x11b70__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72560
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d535(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x343ba__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x343ba__rip__type* @G_0x343ba__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x34422__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34422__rip__type* @G_0x34422__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x710368___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710368_type* @G_0x710368 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x726838___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x726838_type* @G_0x726838 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x726838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x726838_type* @G_0x726838 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d53a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_47dafb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d6e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_47d6e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x342ef__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x342ef__rip__type* @G_0x342ef__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x70f6d8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x6cc5d8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x6cc5dc___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6cc5dc_type* @G_0x6cc5dc to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x70f6d8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x70f6d8_type* @G_0x70f6d8 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x6cc5e0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6cc5e0_type* @G_0x6cc5e0 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x710368___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x710368_type* @G_0x710368 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x6cea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6d1fb0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x725570___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x725570_type* @G_0x725570 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6d45f0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6d4680___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6d4680_type* @G_0x6d4680 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x6d0270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x6d0270___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %7 = sub i64 %3, %6
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47d670(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d0270___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d67d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x341ff__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x341ff__rip__type* @G_0x341ff__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x341cf__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x341cf__rip__type* @G_0x341cf__rip_ to i64)
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
define %struct.Memory* @routine_movq__rax__0x6d0270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6cea40___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cea40_type* @G_0x6cea40 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %7 = sitofp i64 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6cea40___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_0x6d0270___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x6d0270_type* @G_0x6d0270 to i64*), align 8
  %7 = sitofp i64 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d9eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d875(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_47d875(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x34169__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34169__rip__type* @G_0x34169__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47d7fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d807(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x34075__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34075__rip__type* @G_0x34075__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x34045__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34045__rip__type* @G_0x34045__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d9e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_47d9e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x33ff2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x33ff2__rip__type* @G_0x33ff2__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47d96d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d97a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x33f02__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x33f02__rip__type* @G_0x33f02__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x33ed2__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x33ed2__rip__type* @G_0x33ed2__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x33e6d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x33e6d__rip__type* @G_0x33e6d__rip_ to i64)
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
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1236
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  %7 = sitofp i64 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x710a48___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x710a48_type* @G_0x710a48 to i64*), align 8
  %7 = sub i64 %3, %6
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47da50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x710a48___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710a48_type* @G_0x710a48 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_47da5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x6cd478___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x6cd478_type* @G_0x6cd478 to i64*), align 8
  %7 = sub i64 %3, %6
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47da8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47da9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cd478___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cd478_type* @G_0x6cd478 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47dae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47daf6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47dae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__0x6cc5e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6cc5e4_type* @G_0x6cc5e4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47dafb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47db00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47db14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47dbec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x11b4c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72524
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47dbe7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x722b78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x722b78_type* @G_0x722b78 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b54__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x11b60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72600
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
define %struct.Memory* @routine_jne_.L_47dbc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x6f80a0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6f9688(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47dbe2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x6f80a0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_47dbe7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47dbec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47dce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47dce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47dc71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x33cb1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x33cb1__rip__type* @G_0x33cb1__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x0__0x6cc5e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6cc5e8_type* @G_0x6cc5e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x6cc5e4___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6cc5e4_type* @G_0x6cc5e4 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_cvttsd2si__xmm1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47dcdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6cc5e4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cc5e4_type* @G_0x6cc5e4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6cc5e8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cc5e8_type* @G_0x6cc5e8 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x6cea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6cea28_type* @G_0x6cea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b54__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11b58__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x11b60__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_jmpq_.L_47dce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
