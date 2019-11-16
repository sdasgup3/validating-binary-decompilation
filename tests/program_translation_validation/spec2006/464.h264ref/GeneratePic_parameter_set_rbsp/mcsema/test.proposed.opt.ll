; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4c2aef_type = type <{ [8 x i8] }>
%G__0x4c2b09_type = type <{ [8 x i8] }>
%G__0x4c2b23_type = type <{ [8 x i8] }>
%G__0x4c2b3d_type = type <{ [8 x i8] }>
%G__0x4c2b57_type = type <{ [8 x i8] }>
%G__0x4c2b75_type = type <{ [8 x i8] }>
%G__0x4c2b91_type = type <{ [8 x i8] }>
%G__0x4c2bae_type = type <{ [8 x i8] }>
%G__0x4c2bc8_type = type <{ [8 x i8] }>
%G__0x4c2be2_type = type <{ [8 x i8] }>
%G__0x4c2bf3_type = type <{ [8 x i8] }>
%G__0x4c2c08_type = type <{ [8 x i8] }>
%G__0x4c2c2f_type = type <{ [8 x i8] }>
%G__0x4c2c53_type = type <{ [8 x i8] }>
%G__0x4c2c75_type = type <{ [8 x i8] }>
%G__0x4c2c8d_type = type <{ [8 x i8] }>
%G__0x4c2caf_type = type <{ [8 x i8] }>
%G__0x4c2cd1_type = type <{ [8 x i8] }>
%G__0x4c2ce9_type = type <{ [8 x i8] }>
%G__0x4c2d02_type = type <{ [8 x i8] }>
%G__0x4c2d1b_type = type <{ [8 x i8] }>
%G__0x4c2d34_type = type <{ [8 x i8] }>
%G__0x4c2d50_type = type <{ [8 x i8] }>
%G__0x4c2d7c_type = type <{ [8 x i8] }>
%G__0x4c2d9d_type = type <{ [8 x i8] }>
%G__0x4c2dc1_type = type <{ [8 x i8] }>
%G__0x4c2dde_type = type <{ [8 x i8] }>
%G__0x4c2e03_type = type <{ [8 x i8] }>
%G__0x4c2e26_type = type <{ [8 x i8] }>
%G__0x6d1f9c_type = type <{ [8 x i8] }>
%G__0x6d1fc0_type = type <{ [8 x i8] }>
%G__0x6d4520_type = type <{ [8 x i8] }>
%G__0x6f6e20_type = type <{ [8 x i8] }>
%G__0x711780_type = type <{ [8 x i8] }>
%G__0x721ca0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G__0x4c2aef = global %G__0x4c2aef_type zeroinitializer
@G__0x4c2b09 = global %G__0x4c2b09_type zeroinitializer
@G__0x4c2b23 = global %G__0x4c2b23_type zeroinitializer
@G__0x4c2b3d = global %G__0x4c2b3d_type zeroinitializer
@G__0x4c2b57 = global %G__0x4c2b57_type zeroinitializer
@G__0x4c2b75 = global %G__0x4c2b75_type zeroinitializer
@G__0x4c2b91 = global %G__0x4c2b91_type zeroinitializer
@G__0x4c2bae = global %G__0x4c2bae_type zeroinitializer
@G__0x4c2bc8 = global %G__0x4c2bc8_type zeroinitializer
@G__0x4c2be2 = global %G__0x4c2be2_type zeroinitializer
@G__0x4c2bf3 = global %G__0x4c2bf3_type zeroinitializer
@G__0x4c2c08 = global %G__0x4c2c08_type zeroinitializer
@G__0x4c2c2f = global %G__0x4c2c2f_type zeroinitializer
@G__0x4c2c53 = global %G__0x4c2c53_type zeroinitializer
@G__0x4c2c75 = global %G__0x4c2c75_type zeroinitializer
@G__0x4c2c8d = global %G__0x4c2c8d_type zeroinitializer
@G__0x4c2caf = global %G__0x4c2caf_type zeroinitializer
@G__0x4c2cd1 = global %G__0x4c2cd1_type zeroinitializer
@G__0x4c2ce9 = global %G__0x4c2ce9_type zeroinitializer
@G__0x4c2d02 = global %G__0x4c2d02_type zeroinitializer
@G__0x4c2d1b = global %G__0x4c2d1b_type zeroinitializer
@G__0x4c2d34 = global %G__0x4c2d34_type zeroinitializer
@G__0x4c2d50 = global %G__0x4c2d50_type zeroinitializer
@G__0x4c2d7c = global %G__0x4c2d7c_type zeroinitializer
@G__0x4c2d9d = global %G__0x4c2d9d_type zeroinitializer
@G__0x4c2dc1 = global %G__0x4c2dc1_type zeroinitializer
@G__0x4c2dde = global %G__0x4c2dde_type zeroinitializer
@G__0x4c2e03 = global %G__0x4c2e03_type zeroinitializer
@G__0x4c2e26 = global %G__0x4c2e26_type zeroinitializer
@G__0x6d1f9c = global %G__0x6d1f9c_type zeroinitializer
@G__0x6d1fc0 = global %G__0x6d1fc0_type zeroinitializer
@G__0x6d4520 = global %G__0x6d4520_type zeroinitializer
@G__0x6f6e20 = global %G__0x6f6e20_type zeroinitializer
@G__0x711780 = global %G__0x711780_type zeroinitializer
@G__0x721ca0 = global %G__0x721ca0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4acbc0.u_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_477580.IdentifyProfile(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_477e20.Scaling_List(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @GeneratePic_parameter_set_rbsp(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i984 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %EAX.i1006 = bitcast %union.anon* %40 to i32*
  %RCX.i1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 1, i64* %RCX.i1007, align 8
  store i64 120, i64* %RAX.i984, align 8
  %RDX.i1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 120, i64* %RDX.i1025, align 8
  %RDI.i1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %41 = add i64 %7, -16
  %42 = load i64, i64* %RDI.i1021, align 8
  %43 = add i64 %10, 25
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %RSI.i1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i1018, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -28
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 0, i32* %55, align 4
  %56 = load i64, i64* %RCX.i1007, align 8
  %57 = load i64, i64* %3, align 8
  store i64 %56, i64* %RDI.i1021, align 8
  %58 = load i64, i64* %RDX.i1025, align 8
  store i64 %58, i64* %RSI.i1018, align 8
  %59 = add i64 %57, -487861
  %60 = add i64 %57, 11
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, -8
  %63 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %63, align 8
  store i64 %62, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  %64 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -24
  %67 = load i64, i64* %RAX.i984, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RAX.i984, align 8
  %72 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %73 = trunc i64 %71 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %79 = icmp eq i64 %71, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %30, align 1
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v62 = select i1 %79, i64 10, i64 25
  %83 = add i64 %72, %.v62
  store i64 %83, i64* %3, align 8
  br i1 %79, label %block_4782ae, label %block_.L_4782bd

block_4782ae:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x4c2aef_type* @G__0x4c2aef to i64), i64* %RDI.i1021, align 8
  %84 = add i64 %83, -126654
  %85 = add i64 %83, 15
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, -8
  %88 = inttoptr i64 %87 to i64*
  store i64 %85, i64* %88, align 8
  store i64 %87, i64* %6, align 8
  store i64 %84, i64* %3, align 8
  %call2_4782b8 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %84, %struct.Memory* %64)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4782bd

block_.L_4782bd:                                  ; preds = %entry, %block_4782ae
  %89 = phi i64 [ %83, %entry ], [ %.pre, %block_4782ae ]
  %MEMORY.0 = phi %struct.Memory* [ %64, %entry ], [ %call2_4782b8, %block_4782ae ]
  store i64 1, i64* %RDI.i1021, align 8
  store i64 48, i64* %RAX.i984, align 8
  store i64 48, i64* %RSI.i1018, align 8
  %90 = add i64 %89, -487901
  %91 = add i64 %89, 19
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %94, align 8
  store i64 %93, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  %95 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.0)
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -24
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RSI.i1018, align 8
  %102 = load i64, i64* %RAX.i984, align 8
  %103 = add i64 %98, 7
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %RAX.i984, align 8
  %106 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %107 = trunc i64 %105 to i32
  %108 = and i32 %107, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %113 = icmp eq i64 %105, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %30, align 1
  %115 = lshr i64 %105, 63
  %116 = trunc i64 %115 to i8
  store i8 %116, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v63 = select i1 %113, i64 10, i64 25
  %117 = add i64 %106, %.v63
  store i64 %117, i64* %3, align 8
  br i1 %113, label %block_4782e1, label %block_.L_4782f0

block_4782e1:                                     ; preds = %block_.L_4782bd
  store i64 ptrtoint (%G__0x4c2b09_type* @G__0x4c2b09 to i64), i64* %RDI.i1021, align 8
  %118 = add i64 %117, -126705
  %119 = add i64 %117, 15
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  %call2_4782eb = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %118, %struct.Memory* %95)
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4782f0

block_.L_4782f0:                                  ; preds = %block_.L_4782bd, %block_4782e1
  %123 = phi i64 [ %117, %block_.L_4782bd ], [ %.pre37, %block_4782e1 ]
  %MEMORY.1 = phi %struct.Memory* [ %95, %block_.L_4782bd ], [ %call2_4782eb, %block_4782e1 ]
  store i64 ptrtoint (%G__0x4c2b23_type* @G__0x4c2b23 to i64), i64* %RDI.i1021, align 8
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -16
  %126 = add i64 %123, 14
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RAX.i984, align 8
  %129 = add i64 %124, -24
  %130 = add i64 %123, 18
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RCX.i1007, align 8
  %133 = add i64 %123, 21
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RCX.i1007, align 8
  %136 = add i64 %135, 32
  %137 = add i64 %123, 25
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i64*
  store i64 %128, i64* %138, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -24
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RAX.i984, align 8
  %145 = add i64 %141, 7
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 4
  %149 = add i64 %141, 14
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  store i32 8, i32* %150, align 4
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %152, i64* %RAX.i984, align 8
  %153 = add i64 %152, 72492
  %154 = add i64 %151, 14
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RDX.i1025, align 8
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -8
  %160 = add i64 %151, 18
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX.i984, align 8
  %163 = add i64 %162, 56
  %164 = add i64 %151, 21
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 %156, i32* %165, align 4
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -8
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RAX.i984, align 8
  %172 = add i64 %171, 4
  %173 = add i64 %168, 7
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RSI.i1018, align 8
  %177 = add i64 %166, -24
  %178 = add i64 %168, 11
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RDX.i1025, align 8
  %181 = add i64 %168, 213876
  %182 = add i64 %168, 16
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %call2_478337 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %181, %struct.Memory* %MEMORY.1)
  %186 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2b3d_type* @G__0x4c2b3d to i64), i64* %RDI.i1021, align 8
  %187 = load i64, i64* %RAX.i984, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -28
  %190 = add i64 %186, 13
  store i64 %190, i64* %3, align 8
  %191 = trunc i64 %187 to i32
  %192 = inttoptr i64 %189 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, %191
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i984, align 8
  %196 = icmp ult i32 %194, %191
  %197 = icmp ult i32 %194, %193
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %14, align 1
  %200 = and i32 %194, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %21, align 1
  %205 = xor i32 %193, %191
  %206 = xor i32 %205, %194
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %27, align 1
  %210 = icmp eq i32 %194, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %30, align 1
  %212 = lshr i32 %194, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %33, align 1
  %214 = lshr i32 %191, 31
  %215 = lshr i32 %193, 31
  %216 = xor i32 %212, %214
  %217 = xor i32 %212, %215
  %218 = add nuw nsw i32 %216, %217
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %39, align 1
  %221 = add i64 %186, 16
  store i64 %221, i64* %3, align 8
  store i32 %194, i32* %192, align 4
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -8
  %224 = load i64, i64* %3, align 8
  %225 = add i64 %224, 4
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %223 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RCX.i1007, align 8
  %228 = add i64 %227, 8
  %229 = add i64 %224, 7
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RSI.i1018, align 8
  %233 = add i64 %222, -24
  %234 = add i64 %224, 11
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RDX.i1025, align 8
  %237 = add i64 %224, 213844
  %238 = add i64 %224, 16
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, -8
  %241 = inttoptr i64 %240 to i64*
  store i64 %238, i64* %241, align 8
  store i64 %240, i64* %6, align 8
  store i64 %237, i64* %3, align 8
  %call2_478357 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %237, %struct.Memory* %call2_478337)
  %242 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2b57_type* @G__0x4c2b57 to i64), i64* %RDI.i1021, align 8
  %243 = load i64, i64* %RAX.i984, align 8
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -28
  %246 = add i64 %242, 13
  store i64 %246, i64* %3, align 8
  %247 = trunc i64 %243 to i32
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = add i32 %249, %247
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX.i984, align 8
  %252 = icmp ult i32 %250, %247
  %253 = icmp ult i32 %250, %249
  %254 = or i1 %252, %253
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %14, align 1
  %256 = and i32 %250, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  %261 = xor i32 %249, %247
  %262 = xor i32 %261, %250
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %27, align 1
  %266 = icmp eq i32 %250, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %30, align 1
  %268 = lshr i32 %250, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %33, align 1
  %270 = lshr i32 %247, 31
  %271 = lshr i32 %249, 31
  %272 = xor i32 %268, %270
  %273 = xor i32 %268, %271
  %274 = add nuw nsw i32 %272, %273
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %39, align 1
  %277 = add i64 %242, 16
  store i64 %277, i64* %3, align 8
  store i32 %250, i32* %248, align 4
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -8
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 4
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %279 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RCX.i1007, align 8
  %284 = add i64 %283, 12
  %285 = add i64 %280, 7
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RSI.i1018, align 8
  %289 = add i64 %278, -24
  %290 = add i64 %280, 11
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RDX.i1025, align 8
  %293 = add i64 %280, 214932
  %294 = add i64 %280, 16
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, -8
  %297 = inttoptr i64 %296 to i64*
  store i64 %294, i64* %297, align 8
  store i64 %296, i64* %6, align 8
  store i64 %293, i64* %3, align 8
  %call2_478377 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %293, %struct.Memory* %call2_478357)
  %298 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2b75_type* @G__0x4c2b75 to i64), i64* %RDI.i1021, align 8
  %299 = load i64, i64* %RAX.i984, align 8
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -28
  %302 = add i64 %298, 13
  store i64 %302, i64* %3, align 8
  %303 = trunc i64 %299 to i32
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, %303
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RAX.i984, align 8
  %308 = icmp ult i32 %306, %303
  %309 = icmp ult i32 %306, %305
  %310 = or i1 %308, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %14, align 1
  %312 = and i32 %306, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %21, align 1
  %317 = xor i32 %305, %303
  %318 = xor i32 %317, %306
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %27, align 1
  %322 = icmp eq i32 %306, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %30, align 1
  %324 = lshr i32 %306, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %33, align 1
  %326 = lshr i32 %303, 31
  %327 = lshr i32 %305, 31
  %328 = xor i32 %324, %326
  %329 = xor i32 %324, %327
  %330 = add nuw nsw i32 %328, %329
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %39, align 1
  %333 = add i64 %298, 16
  store i64 %333, i64* %3, align 8
  store i32 %306, i32* %304, align 4
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -8
  %336 = load i64, i64* %3, align 8
  %337 = add i64 %336, 4
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %335 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RCX.i1007, align 8
  %340 = add i64 %339, 56
  %341 = add i64 %336, 7
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RSI.i1018, align 8
  %345 = add i64 %334, -24
  %346 = add i64 %336, 11
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %RDX.i1025, align 8
  %349 = add i64 %336, 214900
  %350 = add i64 %336, 16
  %351 = load i64, i64* %6, align 8
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %350, i64* %353, align 8
  store i64 %352, i64* %6, align 8
  store i64 %349, i64* %3, align 8
  %call2_478397 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %349, %struct.Memory* %call2_478377)
  %354 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2b91_type* @G__0x4c2b91 to i64), i64* %RDI.i1021, align 8
  %355 = load i64, i64* %RAX.i984, align 8
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -28
  %358 = add i64 %354, 13
  store i64 %358, i64* %3, align 8
  %359 = trunc i64 %355 to i32
  %360 = inttoptr i64 %357 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, %359
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX.i984, align 8
  %364 = icmp ult i32 %362, %359
  %365 = icmp ult i32 %362, %361
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %14, align 1
  %368 = and i32 %362, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  %373 = xor i32 %361, %359
  %374 = xor i32 %373, %362
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %27, align 1
  %378 = icmp eq i32 %362, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %30, align 1
  %380 = lshr i32 %362, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %33, align 1
  %382 = lshr i32 %359, 31
  %383 = lshr i32 %361, 31
  %384 = xor i32 %380, %382
  %385 = xor i32 %380, %383
  %386 = add nuw nsw i32 %384, %385
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %39, align 1
  %389 = add i64 %354, 16
  store i64 %389, i64* %3, align 8
  store i32 %362, i32* %360, align 4
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -8
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, 4
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RCX.i1007, align 8
  %396 = add i64 %395, 60
  %397 = add i64 %392, 7
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RSI.i1018, align 8
  %401 = add i64 %390, -24
  %402 = add i64 %392, 11
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %RDX.i1025, align 8
  %405 = add i64 %392, 213748
  %406 = add i64 %392, 16
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, -8
  %409 = inttoptr i64 %408 to i64*
  store i64 %406, i64* %409, align 8
  store i64 %408, i64* %6, align 8
  store i64 %405, i64* %3, align 8
  %call2_4783b7 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %405, %struct.Memory* %call2_478397)
  %410 = load i64, i64* %RAX.i984, align 8
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -28
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 3
  store i64 %414, i64* %3, align 8
  %415 = trunc i64 %410 to i32
  %416 = inttoptr i64 %412 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, %415
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i984, align 8
  %420 = icmp ult i32 %418, %415
  %421 = icmp ult i32 %418, %417
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = and i32 %418, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %21, align 1
  %429 = xor i32 %417, %415
  %430 = xor i32 %429, %418
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %27, align 1
  %434 = icmp eq i32 %418, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %30, align 1
  %436 = lshr i32 %418, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %33, align 1
  %438 = lshr i32 %415, 31
  %439 = lshr i32 %417, 31
  %440 = xor i32 %436, %438
  %441 = xor i32 %436, %439
  %442 = add nuw nsw i32 %440, %441
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %39, align 1
  %445 = add i64 %413, 6
  store i64 %445, i64* %3, align 8
  store i32 %418, i32* %416, align 4
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -8
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, 4
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %447 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RCX.i1007, align 8
  %452 = add i64 %451, 60
  %453 = add i64 %448, 8
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  store i8 0, i8* %14, align 1
  %456 = and i32 %455, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %461 = icmp eq i32 %455, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %30, align 1
  %463 = lshr i32 %455, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v64 = select i1 %461, i64 651, i64 14
  %465 = add i64 %448, %.v64
  store i64 %465, i64* %3, align 8
  br i1 %461, label %block_.L_47864d, label %block_4783d0

block_4783d0:                                     ; preds = %block_.L_4782f0
  store i64 ptrtoint (%G__0x4c2bae_type* @G__0x4c2bae to i64), i64* %RDI.i1021, align 8
  %466 = add i64 %465, 14
  store i64 %466, i64* %3, align 8
  %467 = load i64, i64* %450, align 8
  store i64 %467, i64* %RAX.i984, align 8
  %468 = add i64 %467, 64
  %469 = add i64 %465, 17
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI.i1018, align 8
  %473 = add i64 %446, -24
  %474 = add i64 %465, 21
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RDX.i1025, align 8
  %477 = add i64 %465, 213712
  %478 = add i64 %465, 26
  %479 = load i64, i64* %6, align 8
  %480 = add i64 %479, -8
  %481 = inttoptr i64 %480 to i64*
  store i64 %478, i64* %481, align 8
  store i64 %480, i64* %6, align 8
  store i64 %477, i64* %3, align 8
  %call2_4783e5 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %477, %struct.Memory* %call2_4783b7)
  %482 = load i64, i64* %RAX.i984, align 8
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -28
  %485 = load i64, i64* %3, align 8
  %486 = add i64 %485, 3
  store i64 %486, i64* %3, align 8
  %487 = trunc i64 %482 to i32
  %488 = inttoptr i64 %484 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = add i32 %489, %487
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i984, align 8
  %492 = icmp ult i32 %490, %487
  %493 = icmp ult i32 %490, %489
  %494 = or i1 %492, %493
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %14, align 1
  %496 = and i32 %490, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = xor i32 %489, %487
  %502 = xor i32 %501, %490
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %27, align 1
  %506 = icmp eq i32 %490, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %30, align 1
  %508 = lshr i32 %490, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %33, align 1
  %510 = lshr i32 %487, 31
  %511 = lshr i32 %489, 31
  %512 = xor i32 %508, %510
  %513 = xor i32 %508, %511
  %514 = add nuw nsw i32 %512, %513
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %39, align 1
  %517 = add i64 %485, 6
  store i64 %517, i64* %3, align 8
  store i32 %490, i32* %488, align 4
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -8
  %520 = load i64, i64* %3, align 8
  %521 = add i64 %520, 4
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %519 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %RDX.i1025, align 8
  %524 = add i64 %523, 64
  %525 = add i64 %520, 8
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  store i8 0, i8* %14, align 1
  %528 = and i32 %527, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %533 = icmp eq i32 %527, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %30, align 1
  %535 = lshr i32 %527, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v61 = select i1 %533, i64 14, i64 94
  %537 = add i64 %520, %.v61
  store i64 %537, i64* %3, align 8
  br i1 %533, label %block_4783fe, label %block_.L_47844e

block_4783fe:                                     ; preds = %block_4783d0
  %538 = add i64 %518, -36
  %539 = add i64 %537, 7
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  store i32 0, i32* %540, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_478405

block_.L_478405:                                  ; preds = %block_478415, %block_4783fe
  %541 = phi i64 [ %670, %block_478415 ], [ %.pre38, %block_4783fe ]
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -36
  %544 = add i64 %541, 3
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RAX.i984, align 8
  %548 = add i64 %542, -8
  %549 = add i64 %541, 7
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RCX.i1007, align 8
  %552 = add i64 %551, 60
  %553 = add i64 %541, 10
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sub i32 %546, %555
  %557 = icmp ult i32 %546, %555
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %14, align 1
  %559 = and i32 %556, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %21, align 1
  %564 = xor i32 %555, %546
  %565 = xor i32 %564, %556
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %27, align 1
  %569 = icmp eq i32 %556, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %30, align 1
  %571 = lshr i32 %556, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %33, align 1
  %573 = lshr i32 %546, 31
  %574 = lshr i32 %555, 31
  %575 = xor i32 %574, %573
  %576 = xor i32 %571, %573
  %577 = add nuw nsw i32 %576, %575
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %39, align 1
  %580 = or i1 %569, %557
  %.v79 = select i1 %580, i64 16, i64 68
  %581 = add i64 %541, %.v79
  store i64 %581, i64* %3, align 8
  br i1 %580, label %block_478415, label %block_.L_478449

block_478415:                                     ; preds = %block_.L_478405
  store i64 ptrtoint (%G__0x4c2bc8_type* @G__0x4c2bc8 to i64), i64* %RDI.i1021, align 8
  %582 = add i64 %581, 14
  store i64 %582, i64* %3, align 8
  %583 = load i64, i64* %550, align 8
  store i64 %583, i64* %RAX.i984, align 8
  %584 = add i64 %581, 17
  store i64 %584, i64* %3, align 8
  %585 = load i32, i32* %545, align 4
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RCX.i1007, align 8
  store i64 %586, i64* %RDX.i1025, align 8
  %587 = shl nuw nsw i64 %586, 2
  %588 = add nuw nsw i64 %587, 68
  %589 = add i64 %588, %583
  %590 = add i64 %581, 23
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RSI.i1018, align 8
  %594 = add i64 %542, -24
  %595 = add i64 %581, 27
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RDX.i1025, align 8
  %598 = add i64 %581, 213643
  %599 = add i64 %581, 32
  %600 = load i64, i64* %6, align 8
  %601 = add i64 %600, -8
  %602 = inttoptr i64 %601 to i64*
  store i64 %599, i64* %602, align 8
  store i64 %601, i64* %6, align 8
  store i64 %598, i64* %3, align 8
  %call2_478430 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %598, %struct.Memory* %call2_4783e5)
  %603 = load i64, i64* %RAX.i984, align 8
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -28
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 3
  store i64 %607, i64* %3, align 8
  %608 = trunc i64 %603 to i32
  %609 = inttoptr i64 %605 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = add i32 %610, %608
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX.i984, align 8
  %613 = icmp ult i32 %611, %608
  %614 = icmp ult i32 %611, %610
  %615 = or i1 %613, %614
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %14, align 1
  %617 = and i32 %611, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %21, align 1
  %622 = xor i32 %610, %608
  %623 = xor i32 %622, %611
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %27, align 1
  %627 = icmp eq i32 %611, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %30, align 1
  %629 = lshr i32 %611, 31
  %630 = trunc i32 %629 to i8
  store i8 %630, i8* %33, align 1
  %631 = lshr i32 %608, 31
  %632 = lshr i32 %610, 31
  %633 = xor i32 %629, %631
  %634 = xor i32 %629, %632
  %635 = add nuw nsw i32 %633, %634
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %39, align 1
  %638 = add i64 %606, 6
  store i64 %638, i64* %3, align 8
  store i32 %611, i32* %609, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -36
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, 1
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX.i984, align 8
  %647 = icmp eq i32 %644, -1
  %648 = icmp eq i32 %645, 0
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = and i32 %645, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i32 %645, %644
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %27, align 1
  %660 = zext i1 %648 to i8
  store i8 %660, i8* %30, align 1
  %661 = lshr i32 %645, 31
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* %33, align 1
  %663 = lshr i32 %644, 31
  %664 = xor i32 %661, %663
  %665 = add nuw nsw i32 %664, %661
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %39, align 1
  %668 = add i64 %641, 9
  store i64 %668, i64* %3, align 8
  store i32 %645, i32* %643, align 4
  %669 = load i64, i64* %3, align 8
  %670 = add i64 %669, -63
  store i64 %670, i64* %3, align 8
  br label %block_.L_478405

block_.L_478449:                                  ; preds = %block_.L_478405
  %671 = add i64 %581, 511
  br label %block_.L_478648

block_.L_47844e:                                  ; preds = %block_4783d0
  %672 = add i64 %537, 4
  store i64 %672, i64* %3, align 8
  %673 = load i64, i64* %522, align 8
  store i64 %673, i64* %RAX.i984, align 8
  %674 = add i64 %673, 64
  %675 = add i64 %537, 8
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = add i32 %677, -2
  %679 = icmp ult i32 %677, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %14, align 1
  %681 = and i32 %678, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %21, align 1
  %686 = xor i32 %678, %677
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %27, align 1
  %690 = icmp eq i32 %678, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %30, align 1
  %692 = lshr i32 %678, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %33, align 1
  %694 = lshr i32 %677, 31
  %695 = xor i32 %692, %694
  %696 = add nuw nsw i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %39, align 1
  %.v60 = select i1 %690, i64 14, i64 137
  %699 = add i64 %537, %.v60
  store i64 %699, i64* %3, align 8
  br i1 %690, label %block_47845c, label %block_.L_4784d7

block_47845c:                                     ; preds = %block_.L_47844e
  %700 = add i64 %518, -36
  %701 = add i64 %699, 7
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  store i32 0, i32* %702, align 4
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_478463

block_.L_478463:                                  ; preds = %block_478473, %block_47845c
  %704 = phi i64 [ %895, %block_478473 ], [ %.pre39, %block_47845c ]
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -36
  %707 = add i64 %704, 3
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX.i984, align 8
  %711 = add i64 %705, -8
  %712 = add i64 %704, 7
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  store i64 %714, i64* %RCX.i1007, align 8
  %715 = add i64 %714, 60
  %716 = add i64 %704, 10
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = sub i32 %709, %718
  %720 = icmp ult i32 %709, %718
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %14, align 1
  %722 = and i32 %719, 255
  %723 = tail call i32 @llvm.ctpop.i32(i32 %722)
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  store i8 %726, i8* %21, align 1
  %727 = xor i32 %718, %709
  %728 = xor i32 %727, %719
  %729 = lshr i32 %728, 4
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  store i8 %731, i8* %27, align 1
  %732 = icmp eq i32 %719, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %30, align 1
  %734 = lshr i32 %719, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %33, align 1
  %736 = lshr i32 %709, 31
  %737 = lshr i32 %718, 31
  %738 = xor i32 %737, %736
  %739 = xor i32 %734, %736
  %740 = add nuw nsw i32 %739, %738
  %741 = icmp eq i32 %740, 2
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %39, align 1
  %.v78 = select i1 %720, i64 16, i64 111
  %743 = add i64 %704, %.v78
  store i64 %743, i64* %3, align 8
  br i1 %720, label %block_478473, label %block_.L_4784d2

block_478473:                                     ; preds = %block_.L_478463
  store i64 ptrtoint (%G__0x4c2be2_type* @G__0x4c2be2 to i64), i64* %RDI.i1021, align 8
  %744 = add i64 %743, 14
  store i64 %744, i64* %3, align 8
  %745 = load i64, i64* %713, align 8
  store i64 %745, i64* %RAX.i984, align 8
  %746 = add i64 %743, 17
  store i64 %746, i64* %3, align 8
  %747 = load i32, i32* %708, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RCX.i1007, align 8
  store i64 %748, i64* %RDX.i1025, align 8
  %749 = shl nuw nsw i64 %748, 2
  %750 = add nuw nsw i64 %749, 100
  %751 = add i64 %750, %745
  %752 = add i64 %743, 23
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RSI.i1018, align 8
  %756 = add i64 %705, -24
  %757 = add i64 %743, 27
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i64*
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %RDX.i1025, align 8
  %760 = add i64 %743, 213549
  %761 = add i64 %743, 32
  %762 = load i64, i64* %6, align 8
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %761, i64* %764, align 8
  store i64 %763, i64* %6, align 8
  store i64 %760, i64* %3, align 8
  %call2_47848e = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %760, %struct.Memory* %call2_4783e5)
  %765 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2bf3_type* @G__0x4c2bf3 to i64), i64* %RDI.i1021, align 8
  %766 = load i64, i64* %RAX.i984, align 8
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -28
  %769 = add i64 %765, 13
  store i64 %769, i64* %3, align 8
  %770 = trunc i64 %766 to i32
  %771 = inttoptr i64 %768 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = add i32 %772, %770
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i984, align 8
  %775 = icmp ult i32 %773, %770
  %776 = icmp ult i32 %773, %772
  %777 = or i1 %775, %776
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %14, align 1
  %779 = and i32 %773, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %21, align 1
  %784 = xor i32 %772, %770
  %785 = xor i32 %784, %773
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %27, align 1
  %789 = icmp eq i32 %773, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %30, align 1
  %791 = lshr i32 %773, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %33, align 1
  %793 = lshr i32 %770, 31
  %794 = lshr i32 %772, 31
  %795 = xor i32 %791, %793
  %796 = xor i32 %791, %794
  %797 = add nuw nsw i32 %795, %796
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %39, align 1
  %800 = add i64 %765, 16
  store i64 %800, i64* %3, align 8
  store i32 %773, i32* %771, align 4
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -8
  %803 = load i64, i64* %3, align 8
  %804 = add i64 %803, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %802 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RDX.i1025, align 8
  %807 = add i64 %801, -36
  %808 = add i64 %803, 7
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX.i984, align 8
  store i64 %811, i64* %703, align 8
  %812 = shl nuw nsw i64 %811, 2
  %813 = add nuw nsw i64 %812, 132
  %814 = add i64 %813, %806
  %815 = add i64 %803, 18
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RSI.i1018, align 8
  %819 = add i64 %801, -24
  %820 = add i64 %803, 22
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i64*
  %822 = load i64, i64* %821, align 8
  store i64 %822, i64* %RDX.i1025, align 8
  %823 = add i64 %803, 213501
  %824 = add i64 %803, 27
  %825 = load i64, i64* %6, align 8
  %826 = add i64 %825, -8
  %827 = inttoptr i64 %826 to i64*
  store i64 %824, i64* %827, align 8
  store i64 %826, i64* %6, align 8
  store i64 %823, i64* %3, align 8
  %call2_4784b9 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %823, %struct.Memory* %call2_4783e5)
  %828 = load i64, i64* %RAX.i984, align 8
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -28
  %831 = load i64, i64* %3, align 8
  %832 = add i64 %831, 3
  store i64 %832, i64* %3, align 8
  %833 = trunc i64 %828 to i32
  %834 = inttoptr i64 %830 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = add i32 %835, %833
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX.i984, align 8
  %838 = icmp ult i32 %836, %833
  %839 = icmp ult i32 %836, %835
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %14, align 1
  %842 = and i32 %836, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %21, align 1
  %847 = xor i32 %835, %833
  %848 = xor i32 %847, %836
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %27, align 1
  %852 = icmp eq i32 %836, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %30, align 1
  %854 = lshr i32 %836, 31
  %855 = trunc i32 %854 to i8
  store i8 %855, i8* %33, align 1
  %856 = lshr i32 %833, 31
  %857 = lshr i32 %835, 31
  %858 = xor i32 %854, %856
  %859 = xor i32 %854, %857
  %860 = add nuw nsw i32 %858, %859
  %861 = icmp eq i32 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %39, align 1
  %863 = add i64 %831, 6
  store i64 %863, i64* %3, align 8
  store i32 %836, i32* %834, align 4
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -36
  %866 = load i64, i64* %3, align 8
  %867 = add i64 %866, 3
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %865 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = add i32 %869, 1
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX.i984, align 8
  %872 = icmp eq i32 %869, -1
  %873 = icmp eq i32 %870, 0
  %874 = or i1 %872, %873
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = and i32 %870, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %21, align 1
  %881 = xor i32 %870, %869
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %27, align 1
  %885 = zext i1 %873 to i8
  store i8 %885, i8* %30, align 1
  %886 = lshr i32 %870, 31
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %33, align 1
  %888 = lshr i32 %869, 31
  %889 = xor i32 %886, %888
  %890 = add nuw nsw i32 %889, %886
  %891 = icmp eq i32 %890, 2
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %39, align 1
  %893 = add i64 %866, 9
  store i64 %893, i64* %3, align 8
  store i32 %870, i32* %868, align 4
  %894 = load i64, i64* %3, align 8
  %895 = add i64 %894, -106
  store i64 %895, i64* %3, align 8
  br label %block_.L_478463

block_.L_4784d2:                                  ; preds = %block_.L_478463
  %896 = add i64 %743, 369
  br label %block_.L_478643

block_.L_4784d7:                                  ; preds = %block_.L_47844e
  %897 = add i64 %699, 4
  store i64 %897, i64* %3, align 8
  %898 = load i64, i64* %522, align 8
  store i64 %898, i64* %RAX.i984, align 8
  %899 = add i64 %898, 64
  %900 = add i64 %699, 8
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = add i32 %902, -3
  %904 = icmp ult i32 %902, 3
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %14, align 1
  %906 = and i32 %903, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  %911 = xor i32 %903, %902
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %27, align 1
  %915 = icmp eq i32 %903, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %30, align 1
  %917 = lshr i32 %903, 31
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %33, align 1
  %919 = lshr i32 %902, 31
  %920 = xor i32 %917, %919
  %921 = add nuw nsw i32 %920, %919
  %922 = icmp eq i32 %921, 2
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %39, align 1
  %.v59 = select i1 %915, i64 42, i64 14
  %924 = add i64 %699, %.v59
  store i64 %924, i64* %3, align 8
  br i1 %915, label %block_.L_478501, label %block_4784e5

block_4784e5:                                     ; preds = %block_.L_4784d7
  %925 = add i64 %924, 4
  store i64 %925, i64* %3, align 8
  %926 = load i64, i64* %522, align 8
  store i64 %926, i64* %RAX.i984, align 8
  %927 = add i64 %926, 64
  %928 = add i64 %924, 8
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = add i32 %930, -4
  %932 = icmp ult i32 %930, 4
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %14, align 1
  %934 = and i32 %931, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %21, align 1
  %939 = xor i32 %931, %930
  %940 = lshr i32 %939, 4
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  store i8 %942, i8* %27, align 1
  %943 = icmp eq i32 %931, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %30, align 1
  %945 = lshr i32 %931, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %33, align 1
  %947 = lshr i32 %930, 31
  %948 = xor i32 %945, %947
  %949 = add nuw nsw i32 %948, %947
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %39, align 1
  %.v58 = select i1 %943, i64 28, i64 14
  %952 = add i64 %924, %.v58
  store i64 %952, i64* %3, align 8
  br i1 %943, label %block_.L_478501, label %block_4784f3

block_4784f3:                                     ; preds = %block_4784e5
  %953 = add i64 %952, 4
  store i64 %953, i64* %3, align 8
  %954 = load i64, i64* %522, align 8
  store i64 %954, i64* %RAX.i984, align 8
  %955 = add i64 %954, 64
  %956 = add i64 %952, 8
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = add i32 %958, -5
  %960 = icmp ult i32 %958, 5
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %14, align 1
  %962 = and i32 %959, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %21, align 1
  %967 = xor i32 %959, %958
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %27, align 1
  %971 = icmp eq i32 %959, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %30, align 1
  %973 = lshr i32 %959, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %33, align 1
  %975 = lshr i32 %958, 31
  %976 = xor i32 %973, %975
  %977 = add nuw nsw i32 %976, %975
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %39, align 1
  %.v57 = select i1 %971, i64 14, i64 89
  %980 = add i64 %952, %.v57
  store i64 %980, i64* %3, align 8
  br i1 %971, label %block_.L_478501, label %block_.L_47854c

block_.L_478501:                                  ; preds = %block_4784f3, %block_4784e5, %block_.L_4784d7
  %981 = phi i64 [ %980, %block_4784f3 ], [ %952, %block_4784e5 ], [ %924, %block_.L_4784d7 ]
  store i64 ptrtoint (%G__0x4c2c08_type* @G__0x4c2c08 to i64), i64* %RDI.i1021, align 8
  %982 = add i64 %981, 14
  store i64 %982, i64* %3, align 8
  %983 = load i64, i64* %522, align 8
  store i64 %983, i64* %RAX.i984, align 8
  %984 = add i64 %983, 164
  %985 = add i64 %981, 20
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RSI.i1018, align 8
  %989 = add i64 %518, -24
  %990 = add i64 %981, 24
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %RDX.i1025, align 8
  %993 = add i64 %981, 214527
  %994 = add i64 %981, 29
  %995 = load i64, i64* %6, align 8
  %996 = add i64 %995, -8
  %997 = inttoptr i64 %996 to i64*
  store i64 %994, i64* %997, align 8
  store i64 %996, i64* %6, align 8
  store i64 %993, i64* %3, align 8
  %call2_478519 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %993, %struct.Memory* %call2_4783e5)
  %998 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2c2f_type* @G__0x4c2c2f to i64), i64* %RDI.i1021, align 8
  %999 = load i64, i64* %RAX.i984, align 8
  %1000 = load i64, i64* %RBP.i, align 8
  %1001 = add i64 %1000, -28
  %1002 = add i64 %998, 13
  store i64 %1002, i64* %3, align 8
  %1003 = trunc i64 %999 to i32
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = add i32 %1005, %1003
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RAX.i984, align 8
  %1008 = icmp ult i32 %1006, %1003
  %1009 = icmp ult i32 %1006, %1005
  %1010 = or i1 %1008, %1009
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %14, align 1
  %1012 = and i32 %1006, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %21, align 1
  %1017 = xor i32 %1005, %1003
  %1018 = xor i32 %1017, %1006
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %27, align 1
  %1022 = icmp eq i32 %1006, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %30, align 1
  %1024 = lshr i32 %1006, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %33, align 1
  %1026 = lshr i32 %1003, 31
  %1027 = lshr i32 %1005, 31
  %1028 = xor i32 %1024, %1026
  %1029 = xor i32 %1024, %1027
  %1030 = add nuw nsw i32 %1028, %1029
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %39, align 1
  %1033 = add i64 %998, 16
  store i64 %1033, i64* %3, align 8
  store i32 %1006, i32* %1004, align 4
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -8
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 4
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1035 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %RDX.i1025, align 8
  %1040 = add i64 %1039, 168
  %1041 = add i64 %1036, 10
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RSI.i1018, align 8
  %1045 = add i64 %1034, -24
  %1046 = add i64 %1036, 14
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %RDX.i1025, align 8
  %1049 = add i64 %1036, 213362
  %1050 = add i64 %1036, 19
  %1051 = load i64, i64* %6, align 8
  %1052 = add i64 %1051, -8
  %1053 = inttoptr i64 %1052 to i64*
  store i64 %1050, i64* %1053, align 8
  store i64 %1052, i64* %6, align 8
  store i64 %1049, i64* %3, align 8
  %call2_47853c = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1049, %struct.Memory* %call2_478519)
  %1054 = load i64, i64* %RAX.i984, align 8
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -28
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %3, align 8
  %1059 = trunc i64 %1054 to i32
  %1060 = inttoptr i64 %1056 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = add i32 %1061, %1059
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RAX.i984, align 8
  %1064 = icmp ult i32 %1062, %1059
  %1065 = icmp ult i32 %1062, %1061
  %1066 = or i1 %1064, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %14, align 1
  %1068 = and i32 %1062, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068)
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %21, align 1
  %1073 = xor i32 %1061, %1059
  %1074 = xor i32 %1073, %1062
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  store i8 %1077, i8* %27, align 1
  %1078 = icmp eq i32 %1062, 0
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %30, align 1
  %1080 = lshr i32 %1062, 31
  %1081 = trunc i32 %1080 to i8
  store i8 %1081, i8* %33, align 1
  %1082 = lshr i32 %1059, 31
  %1083 = lshr i32 %1061, 31
  %1084 = xor i32 %1080, %1082
  %1085 = xor i32 %1080, %1083
  %1086 = add nuw nsw i32 %1084, %1085
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %39, align 1
  %1089 = add i64 %1057, 6
  store i64 %1089, i64* %3, align 8
  store i32 %1062, i32* %1060, align 4
  %1090 = load i64, i64* %3, align 8
  %1091 = add i64 %1090, 247
  %.pre42.pre.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47863e

block_.L_47854c:                                  ; preds = %block_4784f3
  %1092 = add i64 %980, 4
  store i64 %1092, i64* %3, align 8
  %1093 = load i64, i64* %522, align 8
  store i64 %1093, i64* %RAX.i984, align 8
  %1094 = add i64 %1093, 64
  %1095 = add i64 %980, 8
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = add i32 %1097, -6
  %1099 = icmp ult i32 %1097, 6
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %14, align 1
  %1101 = and i32 %1098, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %21, align 1
  %1106 = xor i32 %1098, %1097
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %27, align 1
  %1110 = icmp eq i32 %1098, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %30, align 1
  %1112 = lshr i32 %1098, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %33, align 1
  %1114 = lshr i32 %1097, 31
  %1115 = xor i32 %1112, %1114
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %39, align 1
  %.v56 = select i1 %1110, i64 14, i64 237
  %1119 = add i64 %980, %.v56
  store i64 %1119, i64* %3, align 8
  br i1 %1110, label %block_47855a, label %block_.L_478639

block_47855a:                                     ; preds = %block_.L_47854c
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %3, align 8
  %1121 = load i64, i64* %522, align 8
  store i64 %1121, i64* %RAX.i984, align 8
  %1122 = add i64 %1121, 60
  %1123 = add i64 %1119, 8
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = add i32 %1125, -4
  %1127 = icmp ult i32 %1125, 4
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %14, align 1
  %1129 = and i32 %1126, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %21, align 1
  %1134 = xor i32 %1126, %1125
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %27, align 1
  %1138 = icmp eq i32 %1126, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %30, align 1
  %1140 = lshr i32 %1126, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %33, align 1
  %1142 = lshr i32 %1125, 31
  %1143 = xor i32 %1140, %1142
  %1144 = add nuw nsw i32 %1143, %1142
  %1145 = icmp eq i32 %1144, 2
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %39, align 1
  %.v55 = select i1 %1127, i64 26, i64 14
  %1147 = add i64 %1119, %.v55
  store i64 %1147, i64* %3, align 8
  br i1 %1127, label %block_.L_478574, label %block_478568

block_478568:                                     ; preds = %block_47855a
  %1148 = add i64 %518, -40
  %1149 = add i64 %1147, 7
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  store i32 3, i32* %1150, align 4
  %1151 = load i64, i64* %3, align 8
  %1152 = add i64 %1151, 74
  br label %block_.L_4785b9

block_.L_478574:                                  ; preds = %block_47855a
  %1153 = add i64 %1147, 4
  store i64 %1153, i64* %3, align 8
  %1154 = load i64, i64* %522, align 8
  store i64 %1154, i64* %RAX.i984, align 8
  %1155 = add i64 %1154, 60
  %1156 = add i64 %1147, 8
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = add i32 %1158, -2
  %1160 = icmp ult i32 %1158, 2
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = and i32 %1159, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %21, align 1
  %1167 = xor i32 %1159, %1158
  %1168 = lshr i32 %1167, 4
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %27, align 1
  %1171 = icmp eq i32 %1159, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %30, align 1
  %1173 = lshr i32 %1159, 31
  %1174 = trunc i32 %1173 to i8
  store i8 %1174, i8* %33, align 1
  %1175 = lshr i32 %1158, 31
  %1176 = xor i32 %1173, %1175
  %1177 = add nuw nsw i32 %1176, %1175
  %1178 = icmp eq i32 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %39, align 1
  %.v54 = select i1 %1160, i64 26, i64 14
  %1180 = add i64 %1147, %.v54
  store i64 %1180, i64* %3, align 8
  br i1 %1160, label %block_.L_47858e, label %block_478582

block_478582:                                     ; preds = %block_.L_478574
  %1181 = add i64 %518, -40
  %1182 = add i64 %1180, 7
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  store i32 2, i32* %1183, align 4
  %1184 = load i64, i64* %3, align 8
  %1185 = add i64 %1184, 43
  br label %block_.L_4785b4

block_.L_47858e:                                  ; preds = %block_.L_478574
  %1186 = add i64 %1180, 4
  store i64 %1186, i64* %3, align 8
  %1187 = load i64, i64* %522, align 8
  store i64 %1187, i64* %RAX.i984, align 8
  %1188 = add i64 %1187, 60
  %1189 = add i64 %1180, 8
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = add i32 %1191, -1
  %1193 = icmp eq i32 %1191, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %14, align 1
  %1195 = and i32 %1192, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = xor i32 %1192, %1191
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %27, align 1
  %1204 = icmp eq i32 %1192, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %30, align 1
  %1206 = lshr i32 %1192, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %33, align 1
  %1208 = lshr i32 %1191, 31
  %1209 = xor i32 %1206, %1208
  %1210 = add nuw nsw i32 %1209, %1208
  %1211 = icmp eq i32 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %39, align 1
  %.v = select i1 %1193, i64 26, i64 14
  %1213 = add i64 %1180, %.v
  %1214 = add i64 %518, -40
  %1215 = add i64 %1213, 7
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  br i1 %1193, label %block_.L_4785a8, label %block_47859c

block_47859c:                                     ; preds = %block_.L_47858e
  store i32 1, i32* %1216, align 4
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, 12
  store i64 %1218, i64* %3, align 8
  br label %block_.L_4785af

block_.L_4785a8:                                  ; preds = %block_.L_47858e
  store i32 0, i32* %1216, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4785af

block_.L_4785af:                                  ; preds = %block_.L_4785a8, %block_47859c
  %1219 = phi i64 [ %.pre40, %block_.L_4785a8 ], [ %1218, %block_47859c ]
  %1220 = add i64 %1219, 5
  store i64 %1220, i64* %3, align 8
  br label %block_.L_4785b4

block_.L_4785b4:                                  ; preds = %block_.L_4785af, %block_478582
  %storemerge30 = phi i64 [ %1185, %block_478582 ], [ %1220, %block_.L_4785af ]
  %1221 = add i64 %storemerge30, 5
  store i64 %1221, i64* %3, align 8
  br label %block_.L_4785b9

block_.L_4785b9:                                  ; preds = %block_.L_4785b4, %block_478568
  %storemerge29 = phi i64 [ %1152, %block_478568 ], [ %1221, %block_.L_4785b4 ]
  store i64 ptrtoint (%G__0x4c2c53_type* @G__0x4c2c53 to i64), i64* %RDI.i1021, align 8
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -8
  %1224 = add i64 %storemerge29, 14
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %RAX.i984, align 8
  %1227 = add i64 %1226, 172
  %1228 = add i64 %storemerge29, 20
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RSI.i1018, align 8
  %1232 = add i64 %1222, -24
  %1233 = add i64 %storemerge29, 24
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234, align 8
  store i64 %1235, i64* %RDX.i1025, align 8
  %1236 = add i64 %storemerge29, 213223
  %1237 = add i64 %storemerge29, 29
  %1238 = load i64, i64* %6, align 8
  %1239 = add i64 %1238, -8
  %1240 = inttoptr i64 %1239 to i64*
  store i64 %1237, i64* %1240, align 8
  store i64 %1239, i64* %6, align 8
  store i64 %1236, i64* %3, align 8
  %call2_4785d1 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1236, %struct.Memory* %call2_4783e5)
  %1241 = load i64, i64* %RAX.i984, align 8
  %1242 = load i64, i64* %RBP.i, align 8
  %1243 = add i64 %1242, -28
  %1244 = load i64, i64* %3, align 8
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %3, align 8
  %1246 = trunc i64 %1241 to i32
  %1247 = inttoptr i64 %1243 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = add i32 %1248, %1246
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RAX.i984, align 8
  %1251 = icmp ult i32 %1249, %1246
  %1252 = icmp ult i32 %1249, %1248
  %1253 = or i1 %1251, %1252
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %14, align 1
  %1255 = and i32 %1249, 255
  %1256 = tail call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  store i8 %1259, i8* %21, align 1
  %1260 = xor i32 %1248, %1246
  %1261 = xor i32 %1260, %1249
  %1262 = lshr i32 %1261, 4
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %27, align 1
  %1265 = icmp eq i32 %1249, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %30, align 1
  %1267 = lshr i32 %1249, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %33, align 1
  %1269 = lshr i32 %1246, 31
  %1270 = lshr i32 %1248, 31
  %1271 = xor i32 %1267, %1269
  %1272 = xor i32 %1267, %1270
  %1273 = add nuw nsw i32 %1271, %1272
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %39, align 1
  %1276 = add i64 %1244, 6
  store i64 %1276, i64* %3, align 8
  store i32 %1249, i32* %1247, align 4
  %1277 = load i64, i64* %RBP.i, align 8
  %1278 = add i64 %1277, -36
  %1279 = load i64, i64* %3, align 8
  %1280 = add i64 %1279, 7
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1278 to i32*
  store i32 0, i32* %1281, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_4785e3

block_.L_4785e3:                                  ; preds = %block_4785f6, %block_.L_4785b9
  %1282 = phi i64 [ %1418, %block_4785f6 ], [ %.pre41, %block_.L_4785b9 ]
  %1283 = load i64, i64* %RBP.i, align 8
  %1284 = add i64 %1283, -36
  %1285 = add i64 %1282, 3
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RAX.i984, align 8
  %1289 = add i64 %1283, -8
  %1290 = add i64 %1282, 7
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RCX.i1007, align 8
  %1293 = add i64 %1292, 172
  %1294 = add i64 %1282, 13
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = sub i32 %1287, %1296
  %1298 = icmp ult i32 %1287, %1296
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %14, align 1
  %1300 = and i32 %1297, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %21, align 1
  %1305 = xor i32 %1296, %1287
  %1306 = xor i32 %1305, %1297
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %27, align 1
  %1310 = icmp eq i32 %1297, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %30, align 1
  %1312 = lshr i32 %1297, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %33, align 1
  %1314 = lshr i32 %1287, 31
  %1315 = lshr i32 %1296, 31
  %1316 = xor i32 %1315, %1314
  %1317 = xor i32 %1312, %1314
  %1318 = add nuw nsw i32 %1317, %1316
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %39, align 1
  %1321 = or i1 %1310, %1298
  %.v77 = select i1 %1321, i64 19, i64 81
  %1322 = add i64 %1282, %.v77
  store i64 %1322, i64* %3, align 8
  br i1 %1321, label %block_4785f6, label %block_.L_478634

block_4785f6:                                     ; preds = %block_.L_4785e3
  store i64 ptrtoint (%G__0x4c2c75_type* @G__0x4c2c75 to i64), i64* %RSI.i1018, align 8
  %1323 = add i64 %1283, -40
  %1324 = add i64 %1322, 13
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RDI.i1021, align 8
  %1328 = add i64 %1322, 17
  store i64 %1328, i64* %3, align 8
  %1329 = load i64, i64* %1291, align 8
  store i64 %1329, i64* %RAX.i984, align 8
  %1330 = add i64 %1329, 176
  %1331 = add i64 %1322, 24
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %RAX.i984, align 8
  %1334 = add i64 %1322, 27
  store i64 %1334, i64* %3, align 8
  %1335 = load i32, i32* %1286, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RCX.i1007, align 8
  store i64 %1336, i64* %RDX.i1025, align 8
  %1337 = add i64 %1333, %1336
  %1338 = add i64 %1322, 33
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i8*
  %1340 = load i8, i8* %1339, align 1
  %1341 = zext i8 %1340 to i64
  store i64 %1341, i64* %RDX.i1025, align 8
  %1342 = add i64 %1283, -24
  %1343 = add i64 %1322, 37
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i64*
  %1345 = load i64, i64* %1344, align 8
  store i64 %1345, i64* %RCX.i1007, align 8
  %1346 = add i64 %1322, 214474
  %1347 = add i64 %1322, 42
  %1348 = load i64, i64* %6, align 8
  %1349 = add i64 %1348, -8
  %1350 = inttoptr i64 %1349 to i64*
  store i64 %1347, i64* %1350, align 8
  store i64 %1349, i64* %6, align 8
  store i64 %1346, i64* %3, align 8
  %call2_47861b = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %1346, %struct.Memory* %call2_4785d1)
  %1351 = load i64, i64* %RAX.i984, align 8
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -28
  %1354 = load i64, i64* %3, align 8
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %3, align 8
  %1356 = trunc i64 %1351 to i32
  %1357 = inttoptr i64 %1353 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = add i32 %1358, %1356
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i984, align 8
  %1361 = icmp ult i32 %1359, %1356
  %1362 = icmp ult i32 %1359, %1358
  %1363 = or i1 %1361, %1362
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %14, align 1
  %1365 = and i32 %1359, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %21, align 1
  %1370 = xor i32 %1358, %1356
  %1371 = xor i32 %1370, %1359
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %27, align 1
  %1375 = icmp eq i32 %1359, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %30, align 1
  %1377 = lshr i32 %1359, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %33, align 1
  %1379 = lshr i32 %1356, 31
  %1380 = lshr i32 %1358, 31
  %1381 = xor i32 %1377, %1379
  %1382 = xor i32 %1377, %1380
  %1383 = add nuw nsw i32 %1381, %1382
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %39, align 1
  %1386 = add i64 %1354, 6
  store i64 %1386, i64* %3, align 8
  store i32 %1359, i32* %1357, align 4
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -36
  %1389 = load i64, i64* %3, align 8
  %1390 = add i64 %1389, 3
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = add i32 %1392, 1
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RAX.i984, align 8
  %1395 = icmp eq i32 %1392, -1
  %1396 = icmp eq i32 %1393, 0
  %1397 = or i1 %1395, %1396
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %14, align 1
  %1399 = and i32 %1393, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  %1404 = xor i32 %1393, %1392
  %1405 = lshr i32 %1404, 4
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %27, align 1
  %1408 = zext i1 %1396 to i8
  store i8 %1408, i8* %30, align 1
  %1409 = lshr i32 %1393, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %33, align 1
  %1411 = lshr i32 %1392, 31
  %1412 = xor i32 %1409, %1411
  %1413 = add nuw nsw i32 %1412, %1409
  %1414 = icmp eq i32 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %39, align 1
  %1416 = add i64 %1389, 9
  store i64 %1416, i64* %3, align 8
  store i32 %1393, i32* %1391, align 4
  %1417 = load i64, i64* %3, align 8
  %1418 = add i64 %1417, -76
  store i64 %1418, i64* %3, align 8
  br label %block_.L_4785e3

block_.L_478634:                                  ; preds = %block_.L_4785e3
  %1419 = add i64 %1322, 5
  store i64 %1419, i64* %3, align 8
  br label %block_.L_478639

block_.L_478639:                                  ; preds = %block_.L_47854c, %block_.L_478634
  %.pre42.pre.pre53 = phi i64 [ %518, %block_.L_47854c ], [ %1283, %block_.L_478634 ]
  %1420 = phi i64 [ %1119, %block_.L_47854c ], [ %1419, %block_.L_478634 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_4783e5, %block_.L_47854c ], [ %call2_4785d1, %block_.L_478634 ]
  %1421 = add i64 %1420, 5
  store i64 %1421, i64* %3, align 8
  br label %block_.L_47863e

block_.L_47863e:                                  ; preds = %block_.L_478639, %block_.L_478501
  %.pre42.pre.pre = phi i64 [ %.pre42.pre.pre.pre, %block_.L_478501 ], [ %.pre42.pre.pre53, %block_.L_478639 ]
  %storemerge28 = phi i64 [ %1091, %block_.L_478501 ], [ %1421, %block_.L_478639 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_47853c, %block_.L_478501 ], [ %MEMORY.9, %block_.L_478639 ]
  %1422 = add i64 %storemerge28, 5
  store i64 %1422, i64* %3, align 8
  br label %block_.L_478643

block_.L_478643:                                  ; preds = %block_.L_47863e, %block_.L_4784d2
  %.pre42.pre = phi i64 [ %705, %block_.L_4784d2 ], [ %.pre42.pre.pre, %block_.L_47863e ]
  %storemerge27 = phi i64 [ %896, %block_.L_4784d2 ], [ %1422, %block_.L_47863e ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_4783e5, %block_.L_4784d2 ], [ %MEMORY.10, %block_.L_47863e ]
  %1423 = add i64 %storemerge27, 5
  store i64 %1423, i64* %3, align 8
  br label %block_.L_478648

block_.L_478648:                                  ; preds = %block_.L_478643, %block_.L_478449
  %.pre42 = phi i64 [ %542, %block_.L_478449 ], [ %.pre42.pre, %block_.L_478643 ]
  %storemerge = phi i64 [ %671, %block_.L_478449 ], [ %1423, %block_.L_478643 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_4783e5, %block_.L_478449 ], [ %MEMORY.11, %block_.L_478643 ]
  %1424 = add i64 %storemerge, 5
  store i64 %1424, i64* %3, align 8
  br label %block_.L_47864d

block_.L_47864d:                                  ; preds = %block_.L_478648, %block_.L_4782f0
  %1425 = phi i64 [ %446, %block_.L_4782f0 ], [ %.pre42, %block_.L_478648 ]
  %1426 = phi i64 [ %465, %block_.L_4782f0 ], [ %1424, %block_.L_478648 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_4783b7, %block_.L_4782f0 ], [ %MEMORY.12, %block_.L_478648 ]
  store i64 ptrtoint (%G__0x4c2c8d_type* @G__0x4c2c8d to i64), i64* %RDI.i1021, align 8
  %1427 = add i64 %1425, -8
  %1428 = add i64 %1426, 14
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RAX.i984, align 8
  %1431 = add i64 %1430, 184
  %1432 = add i64 %1426, 20
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RSI.i1018, align 8
  %1436 = add i64 %1425, -24
  %1437 = add i64 %1426, 24
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i64*
  %1439 = load i64, i64* %1438, align 8
  store i64 %1439, i64* %RDX.i1025, align 8
  %1440 = add i64 %1426, 213075
  %1441 = add i64 %1426, 29
  %1442 = load i64, i64* %6, align 8
  %1443 = add i64 %1442, -8
  %1444 = inttoptr i64 %1443 to i64*
  store i64 %1441, i64* %1444, align 8
  store i64 %1443, i64* %6, align 8
  store i64 %1440, i64* %3, align 8
  %call2_478665 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1440, %struct.Memory* %MEMORY.13)
  %1445 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2caf_type* @G__0x4c2caf to i64), i64* %RDI.i1021, align 8
  %1446 = load i64, i64* %RAX.i984, align 8
  %1447 = load i64, i64* %RBP.i, align 8
  %1448 = add i64 %1447, -28
  %1449 = add i64 %1445, 13
  store i64 %1449, i64* %3, align 8
  %1450 = trunc i64 %1446 to i32
  %1451 = inttoptr i64 %1448 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = add i32 %1452, %1450
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RAX.i984, align 8
  %1455 = icmp ult i32 %1453, %1450
  %1456 = icmp ult i32 %1453, %1452
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %14, align 1
  %1459 = and i32 %1453, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %21, align 1
  %1464 = xor i32 %1452, %1450
  %1465 = xor i32 %1464, %1453
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %27, align 1
  %1469 = icmp eq i32 %1453, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %30, align 1
  %1471 = lshr i32 %1453, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %33, align 1
  %1473 = lshr i32 %1450, 31
  %1474 = lshr i32 %1452, 31
  %1475 = xor i32 %1471, %1473
  %1476 = xor i32 %1471, %1474
  %1477 = add nuw nsw i32 %1475, %1476
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %39, align 1
  %1480 = add i64 %1445, 16
  store i64 %1480, i64* %3, align 8
  store i32 %1453, i32* %1451, align 4
  %1481 = load i64, i64* %RBP.i, align 8
  %1482 = add i64 %1481, -8
  %1483 = load i64, i64* %3, align 8
  %1484 = add i64 %1483, 4
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1482 to i64*
  %1486 = load i64, i64* %1485, align 8
  store i64 %1486, i64* %RDX.i1025, align 8
  %1487 = add i64 %1486, 188
  %1488 = add i64 %1483, 10
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RSI.i1018, align 8
  %1492 = add i64 %1481, -24
  %1493 = add i64 %1483, 14
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %RDX.i1025, align 8
  %1496 = add i64 %1483, 213030
  %1497 = add i64 %1483, 19
  %1498 = load i64, i64* %6, align 8
  %1499 = add i64 %1498, -8
  %1500 = inttoptr i64 %1499 to i64*
  store i64 %1497, i64* %1500, align 8
  store i64 %1499, i64* %6, align 8
  store i64 %1496, i64* %3, align 8
  %call2_478688 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1496, %struct.Memory* %call2_478665)
  %1501 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2cd1_type* @G__0x4c2cd1 to i64), i64* %RDI.i1021, align 8
  %1502 = load i64, i64* %RAX.i984, align 8
  %1503 = load i64, i64* %RBP.i, align 8
  %1504 = add i64 %1503, -28
  %1505 = add i64 %1501, 13
  store i64 %1505, i64* %3, align 8
  %1506 = trunc i64 %1502 to i32
  %1507 = inttoptr i64 %1504 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = add i32 %1508, %1506
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i984, align 8
  %1511 = icmp ult i32 %1509, %1506
  %1512 = icmp ult i32 %1509, %1508
  %1513 = or i1 %1511, %1512
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %14, align 1
  %1515 = and i32 %1509, 255
  %1516 = tail call i32 @llvm.ctpop.i32(i32 %1515)
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = xor i8 %1518, 1
  store i8 %1519, i8* %21, align 1
  %1520 = xor i32 %1508, %1506
  %1521 = xor i32 %1520, %1509
  %1522 = lshr i32 %1521, 4
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  store i8 %1524, i8* %27, align 1
  %1525 = icmp eq i32 %1509, 0
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %30, align 1
  %1527 = lshr i32 %1509, 31
  %1528 = trunc i32 %1527 to i8
  store i8 %1528, i8* %33, align 1
  %1529 = lshr i32 %1506, 31
  %1530 = lshr i32 %1508, 31
  %1531 = xor i32 %1527, %1529
  %1532 = xor i32 %1527, %1530
  %1533 = add nuw nsw i32 %1531, %1532
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %39, align 1
  %1536 = add i64 %1501, 16
  store i64 %1536, i64* %3, align 8
  store i32 %1509, i32* %1507, align 4
  %1537 = load i64, i64* %RBP.i, align 8
  %1538 = add i64 %1537, -8
  %1539 = load i64, i64* %3, align 8
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1538 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RDX.i1025, align 8
  %1543 = add i64 %1542, 192
  %1544 = add i64 %1539, 10
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RSI.i1018, align 8
  %1548 = add i64 %1537, -24
  %1549 = add i64 %1539, 14
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i64*
  %1551 = load i64, i64* %1550, align 8
  store i64 %1551, i64* %RDX.i1025, align 8
  %1552 = add i64 %1539, 214115
  %1553 = add i64 %1539, 19
  %1554 = load i64, i64* %6, align 8
  %1555 = add i64 %1554, -8
  %1556 = inttoptr i64 %1555 to i64*
  store i64 %1553, i64* %1556, align 8
  store i64 %1555, i64* %6, align 8
  store i64 %1552, i64* %3, align 8
  %call2_4786ab = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1552, %struct.Memory* %call2_478688)
  %1557 = load i64, i64* %3, align 8
  store i64 2, i64* %RDI.i1021, align 8
  store i64 ptrtoint (%G__0x4c2ce9_type* @G__0x4c2ce9 to i64), i64* %RSI.i1018, align 8
  %1558 = load i64, i64* %RAX.i984, align 8
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -28
  %1561 = add i64 %1557, 18
  store i64 %1561, i64* %3, align 8
  %1562 = trunc i64 %1558 to i32
  %1563 = inttoptr i64 %1560 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = add i32 %1564, %1562
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RAX.i984, align 8
  %1567 = icmp ult i32 %1565, %1562
  %1568 = icmp ult i32 %1565, %1564
  %1569 = or i1 %1567, %1568
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = and i32 %1565, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i32 %1564, %1562
  %1577 = xor i32 %1576, %1565
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %27, align 1
  %1581 = icmp eq i32 %1565, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %30, align 1
  %1583 = lshr i32 %1565, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %33, align 1
  %1585 = lshr i32 %1562, 31
  %1586 = lshr i32 %1564, 31
  %1587 = xor i32 %1583, %1585
  %1588 = xor i32 %1583, %1586
  %1589 = add nuw nsw i32 %1587, %1588
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %39, align 1
  %1592 = add i64 %1557, 21
  store i64 %1592, i64* %3, align 8
  store i32 %1565, i32* %1563, align 4
  %1593 = load i64, i64* %RBP.i, align 8
  %1594 = add i64 %1593, -8
  %1595 = load i64, i64* %3, align 8
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1594 to i64*
  %1598 = load i64, i64* %1597, align 8
  store i64 %1598, i64* %RDX.i1025, align 8
  %1599 = add i64 %1598, 196
  %1600 = add i64 %1595, 10
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RDX.i1025, align 8
  %1604 = add i64 %1593, -24
  %1605 = add i64 %1595, 14
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i64*
  %1607 = load i64, i64* %1606, align 8
  store i64 %1607, i64* %RCX.i1007, align 8
  %1608 = add i64 %1595, 214267
  %1609 = add i64 %1595, 19
  %1610 = load i64, i64* %6, align 8
  %1611 = add i64 %1610, -8
  %1612 = inttoptr i64 %1611 to i64*
  store i64 %1609, i64* %1612, align 8
  store i64 %1611, i64* %6, align 8
  store i64 %1608, i64* %3, align 8
  %call2_4786d3 = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %1608, %struct.Memory* %call2_4786ab)
  %1613 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2d02_type* @G__0x4c2d02 to i64), i64* %RDI.i1021, align 8
  %1614 = load i64, i64* %RAX.i984, align 8
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -28
  %1617 = add i64 %1613, 13
  store i64 %1617, i64* %3, align 8
  %1618 = trunc i64 %1614 to i32
  %1619 = inttoptr i64 %1616 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = add i32 %1620, %1618
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RAX.i984, align 8
  %1623 = icmp ult i32 %1621, %1618
  %1624 = icmp ult i32 %1621, %1620
  %1625 = or i1 %1623, %1624
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %14, align 1
  %1627 = and i32 %1621, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i32 %1620, %1618
  %1633 = xor i32 %1632, %1621
  %1634 = lshr i32 %1633, 4
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  store i8 %1636, i8* %27, align 1
  %1637 = icmp eq i32 %1621, 0
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %30, align 1
  %1639 = lshr i32 %1621, 31
  %1640 = trunc i32 %1639 to i8
  store i8 %1640, i8* %33, align 1
  %1641 = lshr i32 %1618, 31
  %1642 = lshr i32 %1620, 31
  %1643 = xor i32 %1639, %1641
  %1644 = xor i32 %1639, %1642
  %1645 = add nuw nsw i32 %1643, %1644
  %1646 = icmp eq i32 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %39, align 1
  %1648 = add i64 %1613, 16
  store i64 %1648, i64* %3, align 8
  store i32 %1621, i32* %1619, align 4
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -8
  %1651 = load i64, i64* %3, align 8
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1650 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %RCX.i1007, align 8
  %1655 = add i64 %1654, 200
  %1656 = add i64 %1651, 10
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RSI.i1018, align 8
  %1660 = add i64 %1649, -24
  %1661 = add i64 %1651, 14
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RDX.i1025, align 8
  %1664 = add i64 %1651, 213720
  %1665 = add i64 %1651, 19
  %1666 = load i64, i64* %6, align 8
  %1667 = add i64 %1666, -8
  %1668 = inttoptr i64 %1667 to i64*
  store i64 %1665, i64* %1668, align 8
  store i64 %1667, i64* %6, align 8
  store i64 %1664, i64* %3, align 8
  %call2_4786f6 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1664, %struct.Memory* %call2_4786d3)
  %1669 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2d1b_type* @G__0x4c2d1b to i64), i64* %RDI.i1021, align 8
  %1670 = load i64, i64* %RAX.i984, align 8
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -28
  %1673 = add i64 %1669, 13
  store i64 %1673, i64* %3, align 8
  %1674 = trunc i64 %1670 to i32
  %1675 = inttoptr i64 %1672 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = add i32 %1676, %1674
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RAX.i984, align 8
  %1679 = icmp ult i32 %1677, %1674
  %1680 = icmp ult i32 %1677, %1676
  %1681 = or i1 %1679, %1680
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %14, align 1
  %1683 = and i32 %1677, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %21, align 1
  %1688 = xor i32 %1676, %1674
  %1689 = xor i32 %1688, %1677
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  store i8 %1692, i8* %27, align 1
  %1693 = icmp eq i32 %1677, 0
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %30, align 1
  %1695 = lshr i32 %1677, 31
  %1696 = trunc i32 %1695 to i8
  store i8 %1696, i8* %33, align 1
  %1697 = lshr i32 %1674, 31
  %1698 = lshr i32 %1676, 31
  %1699 = xor i32 %1695, %1697
  %1700 = xor i32 %1695, %1698
  %1701 = add nuw nsw i32 %1699, %1700
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %39, align 1
  %1704 = add i64 %1669, 16
  store i64 %1704, i64* %3, align 8
  store i32 %1677, i32* %1675, align 4
  %1705 = load i64, i64* %RBP.i, align 8
  %1706 = add i64 %1705, -8
  %1707 = load i64, i64* %3, align 8
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1706 to i64*
  %1710 = load i64, i64* %1709, align 8
  store i64 %1710, i64* %RCX.i1007, align 8
  %1711 = add i64 %1710, 204
  %1712 = add i64 %1707, 10
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RSI.i1018, align 8
  %1716 = add i64 %1705, -24
  %1717 = add i64 %1707, 14
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i64*
  %1719 = load i64, i64* %1718, align 8
  store i64 %1719, i64* %RDX.i1025, align 8
  %1720 = add i64 %1707, 213685
  %1721 = add i64 %1707, 19
  %1722 = load i64, i64* %6, align 8
  %1723 = add i64 %1722, -8
  %1724 = inttoptr i64 %1723 to i64*
  store i64 %1721, i64* %1724, align 8
  store i64 %1723, i64* %6, align 8
  store i64 %1720, i64* %3, align 8
  %call2_478719 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1720, %struct.Memory* %call2_4786f6)
  %1725 = load i64, i64* %RAX.i984, align 8
  %1726 = load i64, i64* %RBP.i, align 8
  %1727 = add i64 %1726, -28
  %1728 = load i64, i64* %3, align 8
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %3, align 8
  %1730 = trunc i64 %1725 to i32
  %1731 = inttoptr i64 %1727 to i32*
  %1732 = load i32, i32* %1731, align 4
  %1733 = add i32 %1732, %1730
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RAX.i984, align 8
  %1735 = icmp ult i32 %1733, %1730
  %1736 = icmp ult i32 %1733, %1732
  %1737 = or i1 %1735, %1736
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %14, align 1
  %1739 = and i32 %1733, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739)
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %21, align 1
  %1744 = xor i32 %1732, %1730
  %1745 = xor i32 %1744, %1733
  %1746 = lshr i32 %1745, 4
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  store i8 %1748, i8* %27, align 1
  %1749 = icmp eq i32 %1733, 0
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %30, align 1
  %1751 = lshr i32 %1733, 31
  %1752 = trunc i32 %1751 to i8
  store i8 %1752, i8* %33, align 1
  %1753 = lshr i32 %1730, 31
  %1754 = lshr i32 %1732, 31
  %1755 = xor i32 %1751, %1753
  %1756 = xor i32 %1751, %1754
  %1757 = add nuw nsw i32 %1755, %1756
  %1758 = icmp eq i32 %1757, 2
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %39, align 1
  %1760 = add i64 %1728, 6
  store i64 %1760, i64* %3, align 8
  store i32 %1733, i32* %1731, align 4
  %1761 = load i64, i64* %3, align 8
  %1762 = add i64 %1761, -4516
  %1763 = add i64 %1761, 5
  %1764 = load i64, i64* %6, align 8
  %1765 = add i64 %1764, -8
  %1766 = inttoptr i64 %1765 to i64*
  store i64 %1763, i64* %1766, align 8
  store i64 %1765, i64* %6, align 8
  store i64 %1762, i64* %3, align 8
  %call2_478724 = tail call %struct.Memory* @sub_477580.IdentifyProfile(%struct.State* nonnull %0, i64 %1762, %struct.Memory* %call2_478719)
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -44
  %1769 = load i32, i32* %EAX.i1006, align 4
  %1770 = load i64, i64* %3, align 8
  %1771 = add i64 %1770, 3
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1768 to i32*
  store i32 %1769, i32* %1772, align 4
  %1773 = load i64, i64* %RBP.i, align 8
  %1774 = add i64 %1773, -44
  %1775 = load i64, i64* %3, align 8
  %1776 = add i64 %1775, 4
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1774 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = add i32 %1778, -100
  %1780 = icmp ult i32 %1778, 100
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %14, align 1
  %1782 = and i32 %1779, 255
  %1783 = tail call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  store i8 %1786, i8* %21, align 1
  %1787 = xor i32 %1779, %1778
  %1788 = lshr i32 %1787, 4
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  store i8 %1790, i8* %27, align 1
  %1791 = icmp eq i32 %1779, 0
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %30, align 1
  %1793 = lshr i32 %1779, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %33, align 1
  %1795 = lshr i32 %1778, 31
  %1796 = xor i32 %1793, %1795
  %1797 = add nuw nsw i32 %1796, %1795
  %1798 = icmp eq i32 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %39, align 1
  %.v65 = select i1 %1791, i64 43, i64 10
  %1800 = add i64 %1775, %.v65
  store i64 %1800, i64* %3, align 8
  br i1 %1791, label %block_.L_478757, label %block_478736

block_478736:                                     ; preds = %block_.L_47864d
  %1801 = add i64 %1800, 4
  store i64 %1801, i64* %3, align 8
  %1802 = load i32, i32* %1777, align 4
  %1803 = add i32 %1802, -110
  %1804 = icmp ult i32 %1802, 110
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %14, align 1
  %1806 = and i32 %1803, 255
  %1807 = tail call i32 @llvm.ctpop.i32(i32 %1806)
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  %1810 = xor i8 %1809, 1
  store i8 %1810, i8* %21, align 1
  %1811 = xor i32 %1803, %1802
  %1812 = lshr i32 %1811, 4
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  store i8 %1814, i8* %27, align 1
  %1815 = icmp eq i32 %1803, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %30, align 1
  %1817 = lshr i32 %1803, 31
  %1818 = trunc i32 %1817 to i8
  store i8 %1818, i8* %33, align 1
  %1819 = lshr i32 %1802, 31
  %1820 = xor i32 %1817, %1819
  %1821 = add nuw nsw i32 %1820, %1819
  %1822 = icmp eq i32 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %39, align 1
  %.v66 = select i1 %1815, i64 33, i64 10
  %1824 = add i64 %1800, %.v66
  store i64 %1824, i64* %3, align 8
  br i1 %1815, label %block_.L_478757, label %block_478740

block_478740:                                     ; preds = %block_478736
  %1825 = add i64 %1824, 4
  store i64 %1825, i64* %3, align 8
  %1826 = load i32, i32* %1777, align 4
  %1827 = add i32 %1826, -122
  %1828 = icmp ult i32 %1826, 122
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %14, align 1
  %1830 = and i32 %1827, 255
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  %1835 = xor i32 %1826, 16
  %1836 = xor i32 %1835, %1827
  %1837 = lshr i32 %1836, 4
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  store i8 %1839, i8* %27, align 1
  %1840 = icmp eq i32 %1827, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %30, align 1
  %1842 = lshr i32 %1827, 31
  %1843 = trunc i32 %1842 to i8
  store i8 %1843, i8* %33, align 1
  %1844 = lshr i32 %1826, 31
  %1845 = xor i32 %1842, %1844
  %1846 = add nuw nsw i32 %1845, %1844
  %1847 = icmp eq i32 %1846, 2
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %39, align 1
  %.v67 = select i1 %1840, i64 23, i64 10
  %1849 = add i64 %1824, %.v67
  store i64 %1849, i64* %3, align 8
  br i1 %1840, label %block_.L_478757, label %block_47874a

block_47874a:                                     ; preds = %block_478740
  %1850 = add i64 %1849, 7
  store i64 %1850, i64* %3, align 8
  %1851 = load i32, i32* %1777, align 4
  %1852 = add i32 %1851, -144
  %1853 = icmp ult i32 %1851, 144
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %14, align 1
  %1855 = and i32 %1852, 255
  %1856 = tail call i32 @llvm.ctpop.i32(i32 %1855)
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = xor i8 %1858, 1
  store i8 %1859, i8* %21, align 1
  %1860 = xor i32 %1851, 16
  %1861 = xor i32 %1860, %1852
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %27, align 1
  %1865 = icmp eq i32 %1852, 0
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %30, align 1
  %1867 = lshr i32 %1852, 31
  %1868 = trunc i32 %1867 to i8
  store i8 %1868, i8* %33, align 1
  %1869 = lshr i32 %1851, 31
  %1870 = xor i32 %1867, %1869
  %1871 = add nuw nsw i32 %1870, %1869
  %1872 = icmp eq i32 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %39, align 1
  %.v68 = select i1 %1865, i64 13, i64 53
  %1874 = add i64 %1849, %.v68
  store i64 %1874, i64* %3, align 8
  br i1 %1865, label %block_.L_478757, label %block_.L_47877f

block_.L_478757:                                  ; preds = %block_47874a, %block_478740, %block_478736, %block_.L_47864d
  %1875 = phi i64 [ %1874, %block_47874a ], [ %1849, %block_478740 ], [ %1824, %block_478736 ], [ %1800, %block_.L_47864d ]
  store i64 ptrtoint (%G__0x4c2d34_type* @G__0x4c2d34 to i64), i64* %RDI.i1021, align 8
  %1876 = add i64 %1773, -8
  %1877 = add i64 %1875, 14
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i64*
  %1879 = load i64, i64* %1878, align 8
  store i64 %1879, i64* %RAX.i984, align 8
  %1880 = add i64 %1879, 212
  %1881 = add i64 %1875, 20
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RSI.i1018, align 8
  %1885 = add i64 %1773, -24
  %1886 = add i64 %1875, 24
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i64*
  %1888 = load i64, i64* %1887, align 8
  store i64 %1888, i64* %RDX.i1025, align 8
  %1889 = add i64 %1875, 213609
  %1890 = add i64 %1875, 29
  %1891 = load i64, i64* %6, align 8
  %1892 = add i64 %1891, -8
  %1893 = inttoptr i64 %1892 to i64*
  store i64 %1890, i64* %1893, align 8
  store i64 %1892, i64* %6, align 8
  store i64 %1889, i64* %3, align 8
  %call2_47876f = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1889, %struct.Memory* %call2_478724)
  %1894 = load i64, i64* %RAX.i984, align 8
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -28
  %1897 = load i64, i64* %3, align 8
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %3, align 8
  %1899 = trunc i64 %1894 to i32
  %1900 = inttoptr i64 %1896 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, %1899
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RAX.i984, align 8
  %1904 = icmp ult i32 %1902, %1899
  %1905 = icmp ult i32 %1902, %1901
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1902, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1901, %1899
  %1914 = xor i32 %1913, %1902
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %27, align 1
  %1918 = icmp eq i32 %1902, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %30, align 1
  %1920 = lshr i32 %1902, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %33, align 1
  %1922 = lshr i32 %1899, 31
  %1923 = lshr i32 %1901, 31
  %1924 = xor i32 %1920, %1922
  %1925 = xor i32 %1920, %1923
  %1926 = add nuw nsw i32 %1924, %1925
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %39, align 1
  %1929 = add i64 %1897, 6
  store i64 %1929, i64* %3, align 8
  store i32 %1902, i32* %1900, align 4
  %1930 = load i64, i64* %3, align 8
  %1931 = add i64 %1930, 40
  store i64 %1931, i64* %3, align 8
  br label %block_.L_4787a2

block_.L_47877f:                                  ; preds = %block_47874a
  store i64 ptrtoint (%G__0x4c2d34_type* @G__0x4c2d34 to i64), i64* %RDI.i1021, align 8
  %1932 = add i64 %1773, -8
  %1933 = add i64 %1874, 14
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i64*
  %1935 = load i64, i64* %1934, align 8
  store i64 %1935, i64* %RAX.i984, align 8
  %1936 = add i64 %1935, 208
  %1937 = add i64 %1874, 20
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RSI.i1018, align 8
  %1941 = add i64 %1773, -24
  %1942 = add i64 %1874, 24
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i64*
  %1944 = load i64, i64* %1943, align 8
  store i64 %1944, i64* %RDX.i1025, align 8
  %1945 = add i64 %1874, 213569
  %1946 = add i64 %1874, 29
  %1947 = load i64, i64* %6, align 8
  %1948 = add i64 %1947, -8
  %1949 = inttoptr i64 %1948 to i64*
  store i64 %1946, i64* %1949, align 8
  store i64 %1948, i64* %6, align 8
  store i64 %1945, i64* %3, align 8
  %call2_478797 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1945, %struct.Memory* %call2_478724)
  %1950 = load i64, i64* %RAX.i984, align 8
  %1951 = load i64, i64* %RBP.i, align 8
  %1952 = add i64 %1951, -28
  %1953 = load i64, i64* %3, align 8
  %1954 = add i64 %1953, 3
  store i64 %1954, i64* %3, align 8
  %1955 = trunc i64 %1950 to i32
  %1956 = inttoptr i64 %1952 to i32*
  %1957 = load i32, i32* %1956, align 4
  %1958 = add i32 %1957, %1955
  %1959 = zext i32 %1958 to i64
  store i64 %1959, i64* %RAX.i984, align 8
  %1960 = icmp ult i32 %1958, %1955
  %1961 = icmp ult i32 %1958, %1957
  %1962 = or i1 %1960, %1961
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %14, align 1
  %1964 = and i32 %1958, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %21, align 1
  %1969 = xor i32 %1957, %1955
  %1970 = xor i32 %1969, %1958
  %1971 = lshr i32 %1970, 4
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %27, align 1
  %1974 = icmp eq i32 %1958, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %30, align 1
  %1976 = lshr i32 %1958, 31
  %1977 = trunc i32 %1976 to i8
  store i8 %1977, i8* %33, align 1
  %1978 = lshr i32 %1955, 31
  %1979 = lshr i32 %1957, 31
  %1980 = xor i32 %1976, %1978
  %1981 = xor i32 %1976, %1979
  %1982 = add nuw nsw i32 %1980, %1981
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %39, align 1
  %1985 = add i64 %1953, 6
  store i64 %1985, i64* %3, align 8
  store i32 %1958, i32* %1956, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_4787a2

block_.L_4787a2:                                  ; preds = %block_.L_47877f, %block_.L_478757
  %1986 = phi i64 [ %1931, %block_.L_478757 ], [ %.pre43, %block_.L_47877f ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_47876f, %block_.L_478757 ], [ %call2_478797, %block_.L_47877f ]
  store i64 ptrtoint (%G__0x4c2d50_type* @G__0x4c2d50 to i64), i64* %RDI.i1021, align 8
  %1987 = load i64, i64* %RBP.i, align 8
  %1988 = add i64 %1987, -8
  %1989 = add i64 %1986, 14
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i64*
  %1991 = load i64, i64* %1990, align 8
  store i64 %1991, i64* %RAX.i984, align 8
  %1992 = add i64 %1991, 220
  %1993 = add i64 %1986, 20
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = zext i32 %1995 to i64
  store i64 %1996, i64* %RSI.i1018, align 8
  %1997 = add i64 %1987, -24
  %1998 = add i64 %1986, 24
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i64*
  %2000 = load i64, i64* %1999, align 8
  store i64 %2000, i64* %RDX.i1025, align 8
  %2001 = add i64 %1986, 213854
  %2002 = add i64 %1986, 29
  %2003 = load i64, i64* %6, align 8
  %2004 = add i64 %2003, -8
  %2005 = inttoptr i64 %2004 to i64*
  store i64 %2002, i64* %2005, align 8
  store i64 %2004, i64* %6, align 8
  store i64 %2001, i64* %3, align 8
  %call2_4787ba = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2001, %struct.Memory* %MEMORY.15)
  %2006 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2d7c_type* @G__0x4c2d7c to i64), i64* %RDI.i1021, align 8
  %2007 = load i64, i64* %RAX.i984, align 8
  %2008 = load i64, i64* %RBP.i, align 8
  %2009 = add i64 %2008, -28
  %2010 = add i64 %2006, 13
  store i64 %2010, i64* %3, align 8
  %2011 = trunc i64 %2007 to i32
  %2012 = inttoptr i64 %2009 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = add i32 %2013, %2011
  %2015 = zext i32 %2014 to i64
  store i64 %2015, i64* %RAX.i984, align 8
  %2016 = icmp ult i32 %2014, %2011
  %2017 = icmp ult i32 %2014, %2013
  %2018 = or i1 %2016, %2017
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %14, align 1
  %2020 = and i32 %2014, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %21, align 1
  %2025 = xor i32 %2013, %2011
  %2026 = xor i32 %2025, %2014
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  store i8 %2029, i8* %27, align 1
  %2030 = icmp eq i32 %2014, 0
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %30, align 1
  %2032 = lshr i32 %2014, 31
  %2033 = trunc i32 %2032 to i8
  store i8 %2033, i8* %33, align 1
  %2034 = lshr i32 %2011, 31
  %2035 = lshr i32 %2013, 31
  %2036 = xor i32 %2032, %2034
  %2037 = xor i32 %2032, %2035
  %2038 = add nuw nsw i32 %2036, %2037
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %39, align 1
  %2041 = add i64 %2006, 16
  store i64 %2041, i64* %3, align 8
  store i32 %2014, i32* %2012, align 4
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -8
  %2044 = load i64, i64* %3, align 8
  %2045 = add i64 %2044, 4
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2043 to i64*
  %2047 = load i64, i64* %2046, align 8
  store i64 %2047, i64* %RDX.i1025, align 8
  %2048 = add i64 %2047, 224
  %2049 = add i64 %2044, 10
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RSI.i1018, align 8
  %2053 = add i64 %2042, -24
  %2054 = add i64 %2044, 14
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i64*
  %2056 = load i64, i64* %2055, align 8
  store i64 %2056, i64* %RDX.i1025, align 8
  %2057 = add i64 %2044, 213809
  %2058 = add i64 %2044, 19
  %2059 = load i64, i64* %6, align 8
  %2060 = add i64 %2059, -8
  %2061 = inttoptr i64 %2060 to i64*
  store i64 %2058, i64* %2061, align 8
  store i64 %2060, i64* %6, align 8
  store i64 %2057, i64* %3, align 8
  %call2_4787dd = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2057, %struct.Memory* %call2_4787ba)
  %2062 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2d9d_type* @G__0x4c2d9d to i64), i64* %RDI.i1021, align 8
  %2063 = load i64, i64* %RAX.i984, align 8
  %2064 = load i64, i64* %RBP.i, align 8
  %2065 = add i64 %2064, -28
  %2066 = add i64 %2062, 13
  store i64 %2066, i64* %3, align 8
  %2067 = trunc i64 %2063 to i32
  %2068 = inttoptr i64 %2065 to i32*
  %2069 = load i32, i32* %2068, align 4
  %2070 = add i32 %2069, %2067
  %2071 = zext i32 %2070 to i64
  store i64 %2071, i64* %RAX.i984, align 8
  %2072 = icmp ult i32 %2070, %2067
  %2073 = icmp ult i32 %2070, %2069
  %2074 = or i1 %2072, %2073
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %14, align 1
  %2076 = and i32 %2070, 255
  %2077 = tail call i32 @llvm.ctpop.i32(i32 %2076)
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  %2080 = xor i8 %2079, 1
  store i8 %2080, i8* %21, align 1
  %2081 = xor i32 %2069, %2067
  %2082 = xor i32 %2081, %2070
  %2083 = lshr i32 %2082, 4
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  store i8 %2085, i8* %27, align 1
  %2086 = icmp eq i32 %2070, 0
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %30, align 1
  %2088 = lshr i32 %2070, 31
  %2089 = trunc i32 %2088 to i8
  store i8 %2089, i8* %33, align 1
  %2090 = lshr i32 %2067, 31
  %2091 = lshr i32 %2069, 31
  %2092 = xor i32 %2088, %2090
  %2093 = xor i32 %2088, %2091
  %2094 = add nuw nsw i32 %2092, %2093
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %39, align 1
  %2097 = add i64 %2062, 16
  store i64 %2097, i64* %3, align 8
  store i32 %2070, i32* %2068, align 4
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -8
  %2100 = load i64, i64* %3, align 8
  %2101 = add i64 %2100, 4
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2099 to i64*
  %2103 = load i64, i64* %2102, align 8
  store i64 %2103, i64* %RDX.i1025, align 8
  %2104 = add i64 %2103, 228
  %2105 = add i64 %2100, 10
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RSI.i1018, align 8
  %2109 = add i64 %2098, -24
  %2110 = add i64 %2100, 14
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i64*
  %2112 = load i64, i64* %2111, align 8
  store i64 %2112, i64* %RDX.i1025, align 8
  %2113 = add i64 %2100, 213774
  %2114 = add i64 %2100, 19
  %2115 = load i64, i64* %6, align 8
  %2116 = add i64 %2115, -8
  %2117 = inttoptr i64 %2116 to i64*
  store i64 %2114, i64* %2117, align 8
  store i64 %2116, i64* %6, align 8
  store i64 %2113, i64* %3, align 8
  %call2_478800 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2113, %struct.Memory* %call2_4787dd)
  %2118 = load i64, i64* %RAX.i984, align 8
  %2119 = load i64, i64* %RBP.i, align 8
  %2120 = add i64 %2119, -28
  %2121 = load i64, i64* %3, align 8
  %2122 = add i64 %2121, 3
  store i64 %2122, i64* %3, align 8
  %2123 = trunc i64 %2118 to i32
  %2124 = inttoptr i64 %2120 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = add i32 %2125, %2123
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RAX.i984, align 8
  %2128 = icmp ult i32 %2126, %2123
  %2129 = icmp ult i32 %2126, %2125
  %2130 = or i1 %2128, %2129
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %14, align 1
  %2132 = and i32 %2126, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %21, align 1
  %2137 = xor i32 %2125, %2123
  %2138 = xor i32 %2137, %2126
  %2139 = lshr i32 %2138, 4
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  store i8 %2141, i8* %27, align 1
  %2142 = icmp eq i32 %2126, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %30, align 1
  %2144 = lshr i32 %2126, 31
  %2145 = trunc i32 %2144 to i8
  store i8 %2145, i8* %33, align 1
  %2146 = lshr i32 %2123, 31
  %2147 = lshr i32 %2125, 31
  %2148 = xor i32 %2144, %2146
  %2149 = xor i32 %2144, %2147
  %2150 = add nuw nsw i32 %2148, %2149
  %2151 = icmp eq i32 %2150, 2
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %39, align 1
  %2153 = add i64 %2121, 6
  store i64 %2153, i64* %3, align 8
  store i32 %2126, i32* %2124, align 4
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -44
  %2156 = load i64, i64* %3, align 8
  %2157 = add i64 %2156, 4
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2155 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = add i32 %2159, -100
  %2161 = icmp ult i32 %2159, 100
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %14, align 1
  %2163 = and i32 %2160, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %21, align 1
  %2168 = xor i32 %2160, %2159
  %2169 = lshr i32 %2168, 4
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  store i8 %2171, i8* %27, align 1
  %2172 = icmp eq i32 %2160, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %30, align 1
  %2174 = lshr i32 %2160, 31
  %2175 = trunc i32 %2174 to i8
  store i8 %2175, i8* %33, align 1
  %2176 = lshr i32 %2159, 31
  %2177 = xor i32 %2174, %2176
  %2178 = add nuw nsw i32 %2177, %2176
  %2179 = icmp eq i32 %2178, 2
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %39, align 1
  %.v69 = select i1 %2172, i64 43, i64 10
  %2181 = add i64 %2156, %.v69
  store i64 %2181, i64* %3, align 8
  br i1 %2172, label %block_.L_478836, label %block_478815

block_478815:                                     ; preds = %block_.L_4787a2
  %2182 = add i64 %2181, 4
  store i64 %2182, i64* %3, align 8
  %2183 = load i32, i32* %2158, align 4
  %2184 = add i32 %2183, -110
  %2185 = icmp ult i32 %2183, 110
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %14, align 1
  %2187 = and i32 %2184, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %21, align 1
  %2192 = xor i32 %2184, %2183
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  store i8 %2195, i8* %27, align 1
  %2196 = icmp eq i32 %2184, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %30, align 1
  %2198 = lshr i32 %2184, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %33, align 1
  %2200 = lshr i32 %2183, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2200
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %39, align 1
  %.v70 = select i1 %2196, i64 33, i64 10
  %2205 = add i64 %2181, %.v70
  store i64 %2205, i64* %3, align 8
  br i1 %2196, label %block_.L_478836, label %block_47881f

block_47881f:                                     ; preds = %block_478815
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %3, align 8
  %2207 = load i32, i32* %2158, align 4
  %2208 = add i32 %2207, -122
  %2209 = icmp ult i32 %2207, 122
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %14, align 1
  %2211 = and i32 %2208, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %21, align 1
  %2216 = xor i32 %2207, 16
  %2217 = xor i32 %2216, %2208
  %2218 = lshr i32 %2217, 4
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  store i8 %2220, i8* %27, align 1
  %2221 = icmp eq i32 %2208, 0
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %30, align 1
  %2223 = lshr i32 %2208, 31
  %2224 = trunc i32 %2223 to i8
  store i8 %2224, i8* %33, align 1
  %2225 = lshr i32 %2207, 31
  %2226 = xor i32 %2223, %2225
  %2227 = add nuw nsw i32 %2226, %2225
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %39, align 1
  %.v71 = select i1 %2221, i64 23, i64 10
  %2230 = add i64 %2205, %.v71
  store i64 %2230, i64* %3, align 8
  br i1 %2221, label %block_.L_478836, label %block_478829

block_478829:                                     ; preds = %block_47881f
  %2231 = add i64 %2230, 7
  store i64 %2231, i64* %3, align 8
  %2232 = load i32, i32* %2158, align 4
  %2233 = add i32 %2232, -144
  %2234 = icmp ult i32 %2232, 144
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %14, align 1
  %2236 = and i32 %2233, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1
  %2241 = xor i32 %2232, 16
  %2242 = xor i32 %2241, %2233
  %2243 = lshr i32 %2242, 4
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  store i8 %2245, i8* %27, align 1
  %2246 = icmp eq i32 %2233, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %30, align 1
  %2248 = lshr i32 %2233, 31
  %2249 = trunc i32 %2248 to i8
  store i8 %2249, i8* %33, align 1
  %2250 = lshr i32 %2232, 31
  %2251 = xor i32 %2248, %2250
  %2252 = add nuw nsw i32 %2251, %2250
  %2253 = icmp eq i32 %2252, 2
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %39, align 1
  %.v72 = select i1 %2246, i64 13, i64 470
  %2255 = add i64 %2230, %.v72
  store i64 %2255, i64* %3, align 8
  br i1 %2246, label %block_.L_478836, label %block_.L_4789ff

block_.L_478836:                                  ; preds = %block_478829, %block_47881f, %block_478815, %block_.L_4787a2
  %2256 = phi i64 [ %2255, %block_478829 ], [ %2230, %block_47881f ], [ %2205, %block_478815 ], [ %2181, %block_.L_4787a2 ]
  store i64 ptrtoint (%G__0x4c2dc1_type* @G__0x4c2dc1 to i64), i64* %RDI.i1021, align 8
  %2257 = add i64 %2154, -8
  %2258 = add i64 %2256, 14
  store i64 %2258, i64* %3, align 8
  %2259 = inttoptr i64 %2257 to i64*
  %2260 = load i64, i64* %2259, align 8
  store i64 %2260, i64* %RAX.i984, align 8
  %2261 = add i64 %2260, 16
  %2262 = add i64 %2256, 17
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RSI.i1018, align 8
  %2266 = add i64 %2154, -24
  %2267 = add i64 %2256, 21
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i64*
  %2269 = load i64, i64* %2268, align 8
  store i64 %2269, i64* %RDX.i1025, align 8
  %2270 = add i64 %2256, 213706
  %2271 = add i64 %2256, 26
  %2272 = load i64, i64* %6, align 8
  %2273 = add i64 %2272, -8
  %2274 = inttoptr i64 %2273 to i64*
  store i64 %2271, i64* %2274, align 8
  store i64 %2273, i64* %6, align 8
  store i64 %2270, i64* %3, align 8
  %call2_47884b = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2270, %struct.Memory* %call2_478800)
  %2275 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2dde_type* @G__0x4c2dde to i64), i64* %RDI.i1021, align 8
  %2276 = load i64, i64* %RAX.i984, align 8
  %2277 = load i64, i64* %RBP.i, align 8
  %2278 = add i64 %2277, -28
  %2279 = add i64 %2275, 13
  store i64 %2279, i64* %3, align 8
  %2280 = trunc i64 %2276 to i32
  %2281 = inttoptr i64 %2278 to i32*
  %2282 = load i32, i32* %2281, align 4
  %2283 = add i32 %2282, %2280
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %RAX.i984, align 8
  %2285 = icmp ult i32 %2283, %2280
  %2286 = icmp ult i32 %2283, %2282
  %2287 = or i1 %2285, %2286
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %14, align 1
  %2289 = and i32 %2283, 255
  %2290 = tail call i32 @llvm.ctpop.i32(i32 %2289)
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  %2293 = xor i8 %2292, 1
  store i8 %2293, i8* %21, align 1
  %2294 = xor i32 %2282, %2280
  %2295 = xor i32 %2294, %2283
  %2296 = lshr i32 %2295, 4
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  store i8 %2298, i8* %27, align 1
  %2299 = icmp eq i32 %2283, 0
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %30, align 1
  %2301 = lshr i32 %2283, 31
  %2302 = trunc i32 %2301 to i8
  store i8 %2302, i8* %33, align 1
  %2303 = lshr i32 %2280, 31
  %2304 = lshr i32 %2282, 31
  %2305 = xor i32 %2301, %2303
  %2306 = xor i32 %2301, %2304
  %2307 = add nuw nsw i32 %2305, %2306
  %2308 = icmp eq i32 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %39, align 1
  %2310 = add i64 %2275, 16
  store i64 %2310, i64* %3, align 8
  store i32 %2283, i32* %2281, align 4
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -8
  %2313 = load i64, i64* %3, align 8
  %2314 = add i64 %2313, 4
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2312 to i64*
  %2316 = load i64, i64* %2315, align 8
  store i64 %2316, i64* %RDX.i1025, align 8
  %2317 = add i64 %2316, 20
  %2318 = add i64 %2313, 7
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = zext i32 %2320 to i64
  store i64 %2321, i64* %RSI.i1018, align 8
  %2322 = add i64 %2311, -24
  %2323 = add i64 %2313, 11
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i64*
  %2325 = load i64, i64* %2324, align 8
  store i64 %2325, i64* %RDX.i1025, align 8
  %2326 = add i64 %2313, 213664
  %2327 = add i64 %2313, 16
  %2328 = load i64, i64* %6, align 8
  %2329 = add i64 %2328, -8
  %2330 = inttoptr i64 %2329 to i64*
  store i64 %2327, i64* %2330, align 8
  store i64 %2329, i64* %6, align 8
  store i64 %2326, i64* %3, align 8
  %call2_47886b = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2326, %struct.Memory* %call2_47884b)
  %2331 = load i64, i64* %RAX.i984, align 8
  %2332 = load i64, i64* %RBP.i, align 8
  %2333 = add i64 %2332, -28
  %2334 = load i64, i64* %3, align 8
  %2335 = add i64 %2334, 3
  store i64 %2335, i64* %3, align 8
  %2336 = trunc i64 %2331 to i32
  %2337 = inttoptr i64 %2333 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = add i32 %2338, %2336
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RAX.i984, align 8
  %2341 = icmp ult i32 %2339, %2336
  %2342 = icmp ult i32 %2339, %2338
  %2343 = or i1 %2341, %2342
  %2344 = zext i1 %2343 to i8
  store i8 %2344, i8* %14, align 1
  %2345 = and i32 %2339, 255
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %21, align 1
  %2350 = xor i32 %2338, %2336
  %2351 = xor i32 %2350, %2339
  %2352 = lshr i32 %2351, 4
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %27, align 1
  %2355 = icmp eq i32 %2339, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %30, align 1
  %2357 = lshr i32 %2339, 31
  %2358 = trunc i32 %2357 to i8
  store i8 %2358, i8* %33, align 1
  %2359 = lshr i32 %2336, 31
  %2360 = lshr i32 %2338, 31
  %2361 = xor i32 %2357, %2359
  %2362 = xor i32 %2357, %2360
  %2363 = add nuw nsw i32 %2361, %2362
  %2364 = icmp eq i32 %2363, 2
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %39, align 1
  %2366 = add i64 %2334, 6
  store i64 %2366, i64* %3, align 8
  store i32 %2339, i32* %2337, align 4
  %2367 = load i64, i64* %RBP.i, align 8
  %2368 = add i64 %2367, -8
  %2369 = load i64, i64* %3, align 8
  %2370 = add i64 %2369, 4
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2368 to i64*
  %2372 = load i64, i64* %2371, align 8
  store i64 %2372, i64* %RDX.i1025, align 8
  %2373 = add i64 %2372, 20
  %2374 = add i64 %2369, 8
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  store i8 0, i8* %14, align 1
  %2377 = and i32 %2376, 255
  %2378 = tail call i32 @llvm.ctpop.i32(i32 %2377)
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  %2381 = xor i8 %2380, 1
  store i8 %2381, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2382 = icmp eq i32 %2376, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %30, align 1
  %2384 = lshr i32 %2376, 31
  %2385 = trunc i32 %2384 to i8
  store i8 %2385, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v73 = select i1 %2382, i64 358, i64 14
  %2386 = add i64 %2369, %.v73
  store i64 %2386, i64* %3, align 8
  br i1 %2382, label %block_.L_4789dc, label %block_478884

block_478884:                                     ; preds = %block_.L_478836
  %2387 = add i64 %2367, -36
  %2388 = add i64 %2386, 7
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i32*
  store i32 0, i32* %2389, align 4
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_47888b

block_.L_47888b:                                  ; preds = %block_.L_4789c4, %block_478884
  %2391 = phi i64 [ %.pre44, %block_478884 ], [ %2860, %block_.L_4789c4 ]
  %2392 = load i64, i64* %RBP.i, align 8
  %2393 = add i64 %2392, -36
  %2394 = add i64 %2391, 3
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RAX.i984, align 8
  %2398 = add i64 %2392, -8
  %2399 = add i64 %2391, 7
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i64*
  %2401 = load i64, i64* %2400, align 8
  store i64 %2401, i64* %RCX.i1007, align 8
  %2402 = add i64 %2401, 16
  %2403 = add i64 %2391, 10
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i32*
  %2405 = load i32, i32* %2404, align 4
  %2406 = shl i32 %2405, 1
  %2407 = add i32 %2406, 6
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RDX.i1025, align 8
  %2409 = lshr i32 %2407, 31
  %2410 = sub i32 %2396, %2407
  %2411 = icmp ult i32 %2396, %2407
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %14, align 1
  %2413 = and i32 %2410, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %21, align 1
  %2418 = xor i32 %2407, %2396
  %2419 = xor i32 %2418, %2410
  %2420 = lshr i32 %2419, 4
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  store i8 %2422, i8* %27, align 1
  %2423 = icmp eq i32 %2410, 0
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %30, align 1
  %2425 = lshr i32 %2410, 31
  %2426 = trunc i32 %2425 to i8
  store i8 %2426, i8* %33, align 1
  %2427 = lshr i32 %2396, 31
  %2428 = xor i32 %2409, %2427
  %2429 = xor i32 %2425, %2427
  %2430 = add nuw nsw i32 %2429, %2428
  %2431 = icmp eq i32 %2430, 2
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %39, align 1
  %.v74 = select i1 %2411, i64 23, i64 331
  %2433 = add i64 %2391, %.v74
  store i64 %2433, i64* %3, align 8
  br i1 %2411, label %block_4788a3, label %block_.L_4789d7

block_4788a3:                                     ; preds = %block_.L_47888b
  store i64 ptrtoint (%G__0x4c2e03_type* @G__0x4c2e03 to i64), i64* %RDI.i1021, align 8
  %2434 = load i64, i64* %RBP.i, align 8
  %2435 = add i64 %2434, -8
  %2436 = add i64 %2433, 14
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i64*
  %2438 = load i64, i64* %2437, align 8
  store i64 %2438, i64* %RAX.i984, align 8
  %2439 = add i64 %2434, -36
  %2440 = add i64 %2433, 17
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RCX.i1007, align 8
  store i64 %2443, i64* %RDX.i1025, align 8
  %2444 = shl nuw nsw i64 %2443, 2
  %2445 = add nuw nsw i64 %2444, 24
  %2446 = add i64 %2445, %2438
  %2447 = add i64 %2433, 23
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RSI.i1018, align 8
  %2451 = add i64 %2434, -24
  %2452 = add i64 %2433, 27
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i64*
  %2454 = load i64, i64* %2453, align 8
  store i64 %2454, i64* %RDX.i1025, align 8
  %2455 = add i64 %2433, 213597
  %2456 = add i64 %2433, 32
  %2457 = load i64, i64* %6, align 8
  %2458 = add i64 %2457, -8
  %2459 = inttoptr i64 %2458 to i64*
  store i64 %2456, i64* %2459, align 8
  store i64 %2458, i64* %6, align 8
  store i64 %2455, i64* %3, align 8
  %call2_4788be = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2455, %struct.Memory* %call2_47886b)
  %2460 = load i64, i64* %RAX.i984, align 8
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -28
  %2463 = load i64, i64* %3, align 8
  %2464 = add i64 %2463, 3
  store i64 %2464, i64* %3, align 8
  %2465 = trunc i64 %2460 to i32
  %2466 = inttoptr i64 %2462 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = add i32 %2467, %2465
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RAX.i984, align 8
  %2470 = icmp ult i32 %2468, %2465
  %2471 = icmp ult i32 %2468, %2467
  %2472 = or i1 %2470, %2471
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %14, align 1
  %2474 = and i32 %2468, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %21, align 1
  %2479 = xor i32 %2467, %2465
  %2480 = xor i32 %2479, %2468
  %2481 = lshr i32 %2480, 4
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  store i8 %2483, i8* %27, align 1
  %2484 = icmp eq i32 %2468, 0
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %30, align 1
  %2486 = lshr i32 %2468, 31
  %2487 = trunc i32 %2486 to i8
  store i8 %2487, i8* %33, align 1
  %2488 = lshr i32 %2465, 31
  %2489 = lshr i32 %2467, 31
  %2490 = xor i32 %2486, %2488
  %2491 = xor i32 %2486, %2489
  %2492 = add nuw nsw i32 %2490, %2491
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %39, align 1
  %2495 = add i64 %2463, 6
  store i64 %2495, i64* %3, align 8
  store i32 %2468, i32* %2466, align 4
  %2496 = load i64, i64* %RBP.i, align 8
  %2497 = add i64 %2496, -8
  %2498 = load i64, i64* %3, align 8
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2497 to i64*
  %2501 = load i64, i64* %2500, align 8
  store i64 %2501, i64* %RDX.i1025, align 8
  %2502 = add i64 %2496, -36
  %2503 = add i64 %2498, 7
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RAX.i984, align 8
  store i64 %2506, i64* %RDI.i1021, align 8
  %2507 = shl nuw nsw i64 %2506, 2
  %2508 = add nuw nsw i64 %2507, 24
  %2509 = add i64 %2508, %2501
  %2510 = add i64 %2498, 14
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  store i8 0, i8* %14, align 1
  %2513 = and i32 %2512, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2518 = icmp eq i32 %2512, 0
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %30, align 1
  %2520 = lshr i32 %2512, 31
  %2521 = trunc i32 %2520 to i8
  store i8 %2521, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v75 = select i1 %2518, i64 251, i64 20
  %2522 = add i64 %2498, %.v75
  store i64 %2522, i64* %3, align 8
  br i1 %2518, label %block_.L_4789c4, label %block_4788dd

block_4788dd:                                     ; preds = %block_4788a3
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %3, align 8
  %2524 = load i32, i32* %2504, align 4
  %2525 = add i32 %2524, -6
  %2526 = icmp ult i32 %2524, 6
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %14, align 1
  %2528 = and i32 %2525, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %21, align 1
  %2533 = xor i32 %2525, %2524
  %2534 = lshr i32 %2533, 4
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  store i8 %2536, i8* %27, align 1
  %2537 = icmp eq i32 %2525, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %30, align 1
  %2539 = lshr i32 %2525, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %33, align 1
  %2541 = lshr i32 %2524, 31
  %2542 = xor i32 %2539, %2541
  %2543 = add nuw nsw i32 %2542, %2541
  %2544 = icmp eq i32 %2543, 2
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %39, align 1
  %.v76 = select i1 %2526, i64 10, i64 113
  %2546 = add i64 %2522, %.v76
  %2547 = add i64 %2546, 5
  store i64 %2547, i64* %3, align 8
  br i1 %2526, label %block_4788e7, label %block_.L_47894e

block_4788e7:                                     ; preds = %block_4788dd
  store i64 16, i64* %RDX.i1025, align 8
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX.i984, align 8
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX.i1007, align 8
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI.i1018, align 8
  %2548 = add i64 %2546, 38
  store i64 %2548, i64* %3, align 8
  %2549 = load i32, i32* %2504, align 4
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RDI.i1021, align 8
  %2551 = shl nuw nsw i64 %2550, 5
  store i64 %2551, i64* %2390, align 8
  %2552 = add i64 %2551, ptrtoint (%G__0x711780_type* @G__0x711780 to i64)
  store i64 %2552, i64* %RSI.i1018, align 8
  %2553 = icmp ult i64 %2552, ptrtoint (%G__0x711780_type* @G__0x711780 to i64)
  %2554 = icmp ult i64 %2552, %2551
  %2555 = or i1 %2553, %2554
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %14, align 1
  %2557 = trunc i64 %2552 to i32
  %2558 = and i32 %2557, 248
  %2559 = tail call i32 @llvm.ctpop.i32(i32 %2558)
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = xor i8 %2561, 1
  store i8 %2562, i8* %21, align 1
  %2563 = xor i64 %2552, ptrtoint (%G__0x711780_type* @G__0x711780 to i64)
  %2564 = lshr i64 %2563, 4
  %2565 = trunc i64 %2564 to i8
  %2566 = and i8 %2565, 1
  store i8 %2566, i8* %27, align 1
  %2567 = icmp eq i64 %2552, 0
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %30, align 1
  %2569 = lshr i64 %2552, 63
  %2570 = trunc i64 %2569 to i8
  store i8 %2570, i8* %33, align 1
  %2571 = xor i64 %2569, lshr (i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64 63)
  %2572 = add nuw nsw i64 %2571, %2569
  %2573 = icmp eq i64 %2572, 2
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %39, align 1
  %2575 = add i64 %2546, 51
  store i64 %2575, i64* %3, align 8
  %2576 = load i32, i32* %2504, align 4
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RDI.i1021, align 8
  %2578 = shl nuw nsw i64 %2577, 5
  store i64 %2578, i64* %2390, align 8
  %2579 = add i64 %2578, ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64)
  store i64 %2579, i64* %RCX.i1007, align 8
  %2580 = icmp ult i64 %2579, ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64)
  %2581 = icmp ult i64 %2579, %2578
  %2582 = or i1 %2580, %2581
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %14, align 1
  %2584 = trunc i64 %2579 to i32
  %2585 = and i32 %2584, 248
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %21, align 1
  %2590 = xor i64 %2579, ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64)
  %2591 = lshr i64 %2590, 4
  %2592 = trunc i64 %2591 to i8
  %2593 = and i8 %2592, 1
  store i8 %2593, i8* %27, align 1
  %2594 = icmp eq i64 %2579, 0
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %30, align 1
  %2596 = lshr i64 %2579, 63
  %2597 = trunc i64 %2596 to i8
  store i8 %2597, i8* %33, align 1
  %2598 = xor i64 %2596, lshr (i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64 63)
  %2599 = add nuw nsw i64 %2598, %2596
  %2600 = icmp eq i64 %2599, 2
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %39, align 1
  %2602 = load i64, i64* %RBP.i, align 8
  %2603 = add i64 %2602, -36
  %2604 = add i64 %2546, 64
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i32*
  %2606 = load i32, i32* %2605, align 4
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RDI.i1021, align 8
  %2608 = shl nuw nsw i64 %2607, 1
  store i64 %2608, i64* %2390, align 8
  %2609 = load i64, i64* %RAX.i984, align 8
  %2610 = add i64 %2608, %2609
  store i64 %2610, i64* %RAX.i984, align 8
  %2611 = icmp ult i64 %2610, %2609
  %2612 = icmp ult i64 %2610, %2608
  %2613 = or i1 %2611, %2612
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %14, align 1
  %2615 = trunc i64 %2610 to i32
  %2616 = and i32 %2615, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %21, align 1
  %2621 = xor i64 %2608, %2609
  %2622 = xor i64 %2621, %2610
  %2623 = lshr i64 %2622, 4
  %2624 = trunc i64 %2623 to i8
  %2625 = and i8 %2624, 1
  store i8 %2625, i8* %27, align 1
  %2626 = icmp eq i64 %2610, 0
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %30, align 1
  %2628 = lshr i64 %2610, 63
  %2629 = trunc i64 %2628 to i8
  store i8 %2629, i8* %33, align 1
  %2630 = lshr i64 %2609, 63
  %2631 = xor i64 %2628, %2630
  %2632 = add nuw nsw i64 %2631, %2628
  %2633 = icmp eq i64 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %39, align 1
  %2635 = add i64 %2602, -24
  %2636 = add i64 %2546, 77
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %2390, align 8
  %2639 = load i64, i64* %RSI.i1018, align 8
  store i64 %2639, i64* %RDI.i1021, align 8
  %2640 = load i64, i64* %RCX.i1007, align 8
  store i64 %2640, i64* %RSI.i1018, align 8
  store i64 %2610, i64* %RCX.i1007, align 8
  %2641 = add i64 %2546, -2760
  %2642 = add i64 %2546, 91
  %2643 = load i64, i64* %6, align 8
  %2644 = add i64 %2643, -8
  %2645 = inttoptr i64 %2644 to i64*
  store i64 %2642, i64* %2645, align 8
  store i64 %2644, i64* %6, align 8
  store i64 %2641, i64* %3, align 8
  %call2_47893e = tail call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* nonnull %0, i64 %2641, %struct.Memory* %call2_47886b)
  %2646 = load i64, i64* %RAX.i984, align 8
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -28
  %2649 = load i64, i64* %3, align 8
  %2650 = add i64 %2649, 3
  store i64 %2650, i64* %3, align 8
  %2651 = trunc i64 %2646 to i32
  %2652 = inttoptr i64 %2648 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = add i32 %2653, %2651
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RAX.i984, align 8
  %2656 = icmp ult i32 %2654, %2651
  %2657 = icmp ult i32 %2654, %2653
  %2658 = or i1 %2656, %2657
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %14, align 1
  %2660 = and i32 %2654, 255
  %2661 = tail call i32 @llvm.ctpop.i32(i32 %2660)
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  %2664 = xor i8 %2663, 1
  store i8 %2664, i8* %21, align 1
  %2665 = xor i32 %2653, %2651
  %2666 = xor i32 %2665, %2654
  %2667 = lshr i32 %2666, 4
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  store i8 %2669, i8* %27, align 1
  %2670 = icmp eq i32 %2654, 0
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %30, align 1
  %2672 = lshr i32 %2654, 31
  %2673 = trunc i32 %2672 to i8
  store i8 %2673, i8* %33, align 1
  %2674 = lshr i32 %2651, 31
  %2675 = lshr i32 %2653, 31
  %2676 = xor i32 %2672, %2674
  %2677 = xor i32 %2672, %2675
  %2678 = add nuw nsw i32 %2676, %2677
  %2679 = icmp eq i32 %2678, 2
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %39, align 1
  %2681 = add i64 %2649, 6
  store i64 %2681, i64* %3, align 8
  store i32 %2654, i32* %2652, align 4
  %2682 = load i64, i64* %3, align 8
  %2683 = add i64 %2682, 118
  store i64 %2683, i64* %3, align 8
  br label %block_.L_4789bf

block_.L_47894e:                                  ; preds = %block_4788dd
  store i64 64, i64* %RDX.i1025, align 8
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX.i984, align 8
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX.i1007, align 8
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI.i1018, align 8
  %2684 = add i64 %2546, 38
  store i64 %2684, i64* %3, align 8
  %2685 = load i32, i32* %2504, align 4
  %2686 = add i32 %2685, -6
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %RDI.i1021, align 8
  %2688 = shl nuw nsw i64 %2687, 7
  store i64 %2688, i64* %2390, align 8
  %2689 = add i64 %2688, ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64)
  store i64 %2689, i64* %RSI.i1018, align 8
  %2690 = icmp ult i64 %2689, ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64)
  %2691 = icmp ult i64 %2689, %2688
  %2692 = or i1 %2690, %2691
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %14, align 1
  %2694 = trunc i64 %2689 to i32
  %2695 = and i32 %2694, 248
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %21, align 1
  %2700 = xor i64 %2689, ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64)
  %2701 = lshr i64 %2700, 4
  %2702 = trunc i64 %2701 to i8
  %2703 = and i8 %2702, 1
  store i8 %2703, i8* %27, align 1
  %2704 = icmp eq i64 %2689, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %30, align 1
  %2706 = lshr i64 %2689, 63
  %2707 = trunc i64 %2706 to i8
  store i8 %2707, i8* %33, align 1
  %2708 = xor i64 %2706, lshr (i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64 63)
  %2709 = add nuw nsw i64 %2708, %2706
  %2710 = icmp eq i64 %2709, 2
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %39, align 1
  %2712 = load i64, i64* %RBP.i, align 8
  %2713 = add i64 %2712, -36
  %2714 = add i64 %2546, 56
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = add i32 %2716, -6
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RDI.i1021, align 8
  %2719 = shl nuw nsw i64 %2718, 7
  store i64 %2719, i64* %2390, align 8
  %2720 = load i64, i64* %RCX.i1007, align 8
  %2721 = add i64 %2719, %2720
  store i64 %2721, i64* %RCX.i1007, align 8
  %2722 = icmp ult i64 %2721, %2720
  %2723 = icmp ult i64 %2721, %2719
  %2724 = or i1 %2722, %2723
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %14, align 1
  %2726 = trunc i64 %2721 to i32
  %2727 = and i32 %2726, 255
  %2728 = tail call i32 @llvm.ctpop.i32(i32 %2727)
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  store i8 %2731, i8* %21, align 1
  %2732 = xor i64 %2720, %2721
  %2733 = lshr i64 %2732, 4
  %2734 = trunc i64 %2733 to i8
  %2735 = and i8 %2734, 1
  store i8 %2735, i8* %27, align 1
  %2736 = icmp eq i64 %2721, 0
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %30, align 1
  %2738 = lshr i64 %2721, 63
  %2739 = trunc i64 %2738 to i8
  store i8 %2739, i8* %33, align 1
  %2740 = lshr i64 %2720, 63
  %2741 = xor i64 %2738, %2740
  %2742 = add nuw nsw i64 %2741, %2738
  %2743 = icmp eq i64 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %39, align 1
  %2745 = load i64, i64* %RBP.i, align 8
  %2746 = add i64 %2745, -36
  %2747 = add i64 %2546, 74
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = add i32 %2749, -6
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RDI.i1021, align 8
  %2752 = shl nuw nsw i64 %2751, 1
  store i64 %2752, i64* %2390, align 8
  %2753 = load i64, i64* %RAX.i984, align 8
  %2754 = add i64 %2752, %2753
  store i64 %2754, i64* %RAX.i984, align 8
  %2755 = icmp ult i64 %2754, %2753
  %2756 = icmp ult i64 %2754, %2752
  %2757 = or i1 %2755, %2756
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %14, align 1
  %2759 = trunc i64 %2754 to i32
  %2760 = and i32 %2759, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i64 %2752, %2753
  %2766 = xor i64 %2765, %2754
  %2767 = lshr i64 %2766, 4
  %2768 = trunc i64 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %27, align 1
  %2770 = icmp eq i64 %2754, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %30, align 1
  %2772 = lshr i64 %2754, 63
  %2773 = trunc i64 %2772 to i8
  store i8 %2773, i8* %33, align 1
  %2774 = lshr i64 %2753, 63
  %2775 = xor i64 %2772, %2774
  %2776 = add nuw nsw i64 %2775, %2772
  %2777 = icmp eq i64 %2776, 2
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %39, align 1
  %2779 = load i64, i64* %RBP.i, align 8
  %2780 = add i64 %2779, -24
  %2781 = add i64 %2546, 92
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i64*
  %2783 = load i64, i64* %2782, align 8
  store i64 %2783, i64* %2390, align 8
  %2784 = load i64, i64* %RSI.i1018, align 8
  store i64 %2784, i64* %RDI.i1021, align 8
  %2785 = load i64, i64* %RCX.i1007, align 8
  store i64 %2785, i64* %RSI.i1018, align 8
  store i64 %2754, i64* %RCX.i1007, align 8
  %2786 = add i64 %2546, -2863
  %2787 = add i64 %2546, 106
  %2788 = load i64, i64* %6, align 8
  %2789 = add i64 %2788, -8
  %2790 = inttoptr i64 %2789 to i64*
  store i64 %2787, i64* %2790, align 8
  store i64 %2789, i64* %6, align 8
  store i64 %2786, i64* %3, align 8
  %call2_4789b4 = tail call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* nonnull %0, i64 %2786, %struct.Memory* %call2_47886b)
  %2791 = load i64, i64* %RAX.i984, align 8
  %2792 = load i64, i64* %RBP.i, align 8
  %2793 = add i64 %2792, -28
  %2794 = load i64, i64* %3, align 8
  %2795 = add i64 %2794, 3
  store i64 %2795, i64* %3, align 8
  %2796 = trunc i64 %2791 to i32
  %2797 = inttoptr i64 %2793 to i32*
  %2798 = load i32, i32* %2797, align 4
  %2799 = add i32 %2798, %2796
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RAX.i984, align 8
  %2801 = icmp ult i32 %2799, %2796
  %2802 = icmp ult i32 %2799, %2798
  %2803 = or i1 %2801, %2802
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %14, align 1
  %2805 = and i32 %2799, 255
  %2806 = tail call i32 @llvm.ctpop.i32(i32 %2805)
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = xor i8 %2808, 1
  store i8 %2809, i8* %21, align 1
  %2810 = xor i32 %2798, %2796
  %2811 = xor i32 %2810, %2799
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  store i8 %2814, i8* %27, align 1
  %2815 = icmp eq i32 %2799, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %30, align 1
  %2817 = lshr i32 %2799, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %33, align 1
  %2819 = lshr i32 %2796, 31
  %2820 = lshr i32 %2798, 31
  %2821 = xor i32 %2817, %2819
  %2822 = xor i32 %2817, %2820
  %2823 = add nuw nsw i32 %2821, %2822
  %2824 = icmp eq i32 %2823, 2
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %39, align 1
  %2826 = add i64 %2794, 6
  store i64 %2826, i64* %3, align 8
  store i32 %2799, i32* %2797, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_4789bf

block_.L_4789bf:                                  ; preds = %block_.L_47894e, %block_4788e7
  %2827 = phi i64 [ %.pre45, %block_.L_47894e ], [ %2683, %block_4788e7 ]
  %2828 = add i64 %2827, 5
  store i64 %2828, i64* %3, align 8
  %.pre46 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4789c4

block_.L_4789c4:                                  ; preds = %block_.L_4789bf, %block_4788a3
  %2829 = phi i64 [ %.pre46, %block_.L_4789bf ], [ %2496, %block_4788a3 ]
  %2830 = phi i64 [ %2828, %block_.L_4789bf ], [ %2522, %block_4788a3 ]
  %2831 = add i64 %2829, -36
  %2832 = add i64 %2830, 8
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = add i32 %2834, 1
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RAX.i984, align 8
  %2837 = icmp eq i32 %2834, -1
  %2838 = icmp eq i32 %2835, 0
  %2839 = or i1 %2837, %2838
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %14, align 1
  %2841 = and i32 %2835, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  %2846 = xor i32 %2835, %2834
  %2847 = lshr i32 %2846, 4
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  store i8 %2849, i8* %27, align 1
  %2850 = zext i1 %2838 to i8
  store i8 %2850, i8* %30, align 1
  %2851 = lshr i32 %2835, 31
  %2852 = trunc i32 %2851 to i8
  store i8 %2852, i8* %33, align 1
  %2853 = lshr i32 %2834, 31
  %2854 = xor i32 %2851, %2853
  %2855 = add nuw nsw i32 %2854, %2851
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %39, align 1
  %2858 = add i64 %2830, 14
  store i64 %2858, i64* %3, align 8
  store i32 %2835, i32* %2833, align 4
  %2859 = load i64, i64* %3, align 8
  %2860 = add i64 %2859, -327
  store i64 %2860, i64* %3, align 8
  br label %block_.L_47888b

block_.L_4789d7:                                  ; preds = %block_.L_47888b
  %2861 = add i64 %2433, 5
  store i64 %2861, i64* %3, align 8
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4789dc

block_.L_4789dc:                                  ; preds = %block_.L_4789d7, %block_.L_478836
  %2862 = phi i64 [ %2367, %block_.L_478836 ], [ %.pre47, %block_.L_4789d7 ]
  %2863 = phi i64 [ %2386, %block_.L_478836 ], [ %2861, %block_.L_4789d7 ]
  store i64 ptrtoint (%G__0x4c2e26_type* @G__0x4c2e26 to i64), i64* %RDI.i1021, align 8
  %2864 = add i64 %2862, -8
  %2865 = add i64 %2863, 14
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i64*
  %2867 = load i64, i64* %2866, align 8
  store i64 %2867, i64* %RAX.i984, align 8
  %2868 = add i64 %2867, 216
  %2869 = add i64 %2863, 20
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RSI.i1018, align 8
  %2873 = add i64 %2862, -24
  %2874 = add i64 %2863, 24
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %RDX.i1025, align 8
  %2877 = add i64 %2863, 212964
  %2878 = add i64 %2863, 29
  %2879 = load i64, i64* %6, align 8
  %2880 = add i64 %2879, -8
  %2881 = inttoptr i64 %2880 to i64*
  store i64 %2878, i64* %2881, align 8
  store i64 %2880, i64* %6, align 8
  store i64 %2877, i64* %3, align 8
  %call2_4789f4 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %2877, %struct.Memory* %call2_47886b)
  %2882 = load i64, i64* %RAX.i984, align 8
  %2883 = load i64, i64* %RBP.i, align 8
  %2884 = add i64 %2883, -28
  %2885 = load i64, i64* %3, align 8
  %2886 = add i64 %2885, 3
  store i64 %2886, i64* %3, align 8
  %2887 = trunc i64 %2882 to i32
  %2888 = inttoptr i64 %2884 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = add i32 %2889, %2887
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RAX.i984, align 8
  %2892 = icmp ult i32 %2890, %2887
  %2893 = icmp ult i32 %2890, %2889
  %2894 = or i1 %2892, %2893
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %14, align 1
  %2896 = and i32 %2890, 255
  %2897 = tail call i32 @llvm.ctpop.i32(i32 %2896)
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  %2900 = xor i8 %2899, 1
  store i8 %2900, i8* %21, align 1
  %2901 = xor i32 %2889, %2887
  %2902 = xor i32 %2901, %2890
  %2903 = lshr i32 %2902, 4
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  store i8 %2905, i8* %27, align 1
  %2906 = icmp eq i32 %2890, 0
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %30, align 1
  %2908 = lshr i32 %2890, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %33, align 1
  %2910 = lshr i32 %2887, 31
  %2911 = lshr i32 %2889, 31
  %2912 = xor i32 %2908, %2910
  %2913 = xor i32 %2908, %2911
  %2914 = add nuw nsw i32 %2912, %2913
  %2915 = icmp eq i32 %2914, 2
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %39, align 1
  %2917 = add i64 %2885, 6
  store i64 %2917, i64* %3, align 8
  store i32 %2890, i32* %2888, align 4
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_4789ff

block_.L_4789ff:                                  ; preds = %block_478829, %block_.L_4789dc
  %2918 = phi i64 [ %.pre49, %block_.L_4789dc ], [ %2255, %block_478829 ]
  %2919 = phi i64 [ %.pre48, %block_.L_4789dc ], [ %2154, %block_478829 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_4789f4, %block_.L_4789dc ], [ %call2_478800, %block_478829 ]
  %2920 = add i64 %2919, -24
  %2921 = add i64 %2918, 4
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i64*
  %2923 = load i64, i64* %2922, align 8
  store i64 %2923, i64* %RAX.i984, align 8
  %2924 = add i64 %2918, 7
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %RDI.i1021, align 8
  %2927 = add i64 %2918, -14431
  %2928 = add i64 %2918, 12
  %2929 = load i64, i64* %6, align 8
  %2930 = add i64 %2929, -8
  %2931 = inttoptr i64 %2930 to i64*
  store i64 %2928, i64* %2931, align 8
  store i64 %2930, i64* %6, align 8
  store i64 %2927, i64* %3, align 8
  %call2_478a06 = tail call %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* nonnull %0, i64 %2927, %struct.Memory* %MEMORY.21)
  %2932 = load i64, i64* %RBP.i, align 8
  %2933 = add i64 %2932, -24
  %2934 = load i64, i64* %3, align 8
  %2935 = add i64 %2934, 4
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2933 to i64*
  %2937 = load i64, i64* %2936, align 8
  store i64 %2937, i64* %RAX.i984, align 8
  %2938 = add i64 %2934, 7
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RAX.i984, align 8
  %2941 = add i64 %2934, 9
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RCX.i1007, align 8
  %2945 = add i64 %2932, -32
  %2946 = add i64 %2934, 12
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  store i32 %2943, i32* %2947, align 4
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -24
  %2950 = load i64, i64* %3, align 8
  %2951 = add i64 %2950, 4
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2949 to i64*
  %2953 = load i64, i64* %2952, align 8
  store i64 %2953, i64* %RAX.i984, align 8
  %2954 = add i64 %2950, 7
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i64*
  %2956 = load i64, i64* %2955, align 8
  store i64 %2956, i64* %RAX.i984, align 8
  store i64 %2956, i64* %RDI.i1021, align 8
  %2957 = add i64 %2950, -490135
  %2958 = add i64 %2950, 15
  %2959 = load i64, i64* %6, align 8
  %2960 = add i64 %2959, -8
  %2961 = inttoptr i64 %2960 to i64*
  store i64 %2958, i64* %2961, align 8
  store i64 %2960, i64* %6, align 8
  store i64 %2957, i64* %3, align 8
  %2962 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_478a06)
  %2963 = load i64, i64* %RBP.i, align 8
  %2964 = add i64 %2963, -24
  %2965 = load i64, i64* %3, align 8
  %2966 = add i64 %2965, 4
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2964 to i64*
  %2968 = load i64, i64* %2967, align 8
  store i64 %2968, i64* %RAX.i984, align 8
  store i64 %2968, i64* %RDI.i1021, align 8
  %2969 = add i64 %2965, -490150
  %2970 = add i64 %2965, 12
  %2971 = load i64, i64* %6, align 8
  %2972 = add i64 %2971, -8
  %2973 = inttoptr i64 %2972 to i64*
  store i64 %2970, i64* %2973, align 8
  store i64 %2972, i64* %6, align 8
  store i64 %2969, i64* %3, align 8
  %2974 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2962)
  %2975 = load i64, i64* %RBP.i, align 8
  %2976 = add i64 %2975, -32
  %2977 = load i64, i64* %3, align 8
  %2978 = add i64 %2977, 3
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2976 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RAX.i984, align 8
  %2982 = load i64, i64* %6, align 8
  %2983 = add i64 %2982, 48
  store i64 %2983, i64* %6, align 8
  %2984 = icmp ugt i64 %2982, -49
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %14, align 1
  %2986 = trunc i64 %2983 to i32
  %2987 = and i32 %2986, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %21, align 1
  %2992 = xor i64 %2982, 16
  %2993 = xor i64 %2992, %2983
  %2994 = lshr i64 %2993, 4
  %2995 = trunc i64 %2994 to i8
  %2996 = and i8 %2995, 1
  store i8 %2996, i8* %27, align 1
  %2997 = icmp eq i64 %2983, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %30, align 1
  %2999 = lshr i64 %2983, 63
  %3000 = trunc i64 %2999 to i8
  store i8 %3000, i8* %33, align 1
  %3001 = lshr i64 %2982, 63
  %3002 = xor i64 %2999, %3001
  %3003 = add nuw nsw i64 %3002, %2999
  %3004 = icmp eq i64 %3003, 2
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %39, align 1
  %3006 = add i64 %2977, 8
  store i64 %3006, i64* %3, align 8
  %3007 = add i64 %2982, 56
  %3008 = inttoptr i64 %2983 to i64*
  %3009 = load i64, i64* %3008, align 8
  store i64 %3009, i64* %RBP.i, align 8
  store i64 %3007, i64* %6, align 8
  %3010 = add i64 %2977, 9
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3007 to i64*
  %3012 = load i64, i64* %3011, align 8
  store i64 %3012, i64* %3, align 8
  %3013 = add i64 %2982, 64
  store i64 %3013, i64* %6, align 8
  ret %struct.Memory* %2974
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movl__0x78___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 120, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4782bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2aef___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2aef_type* @G__0x4c2aef to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x30___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 48, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4782f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2b09___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2b09_type* @G__0x4c2b09 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2b23___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2b23_type* @G__0x4c2b23 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
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
define %struct.Memory* @routine_movl_0x11b2c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72492
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ue_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2b3d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2b3d_type* @G__0x4c2b3d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movq__0x4c2b57___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2b57_type* @G__0x4c2b57 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_callq_.u_1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2b75___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2b75_type* @G__0x4c2b75 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x38__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movq__0x4c2b91___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2b91_type* @G__0x4c2b91 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jbe_.L_47864d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2bae___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2bae_type* @G__0x4c2bae to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x40__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_jne_.L_47844e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 60
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
define %struct.Memory* @routine_ja_.L_478449(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2bc8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2bc8_type* @G__0x4c2bc8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_0x44__rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 68
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_478405(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478648(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_4784d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jae_.L_4784d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movq__0x4c2be2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2be2_type* @G__0x4c2be2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x64__rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 100
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2bf3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2bf3_type* @G__0x4c2bf3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x84__rdx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 132
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478463(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478643(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_478501(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_47854c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2c08___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2c08_type* @G__0x4c2c08 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 164
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
define %struct.Memory* @routine_movq__0x4c2c2f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2c2f_type* @G__0x4c2c2f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 168
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
define %struct.Memory* @routine_jmpq_.L_47863e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_jne_.L_478639(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jb_.L_478574(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4785b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jb_.L_47858e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4785b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jb_.L_4785a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4785af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2c53___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2c53_type* @G__0x4c2c53 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xac__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xac__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 172
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
define %struct.Memory* @routine_ja_.L_478634(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2c75___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2c75_type* @G__0x4c2c75 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movzbl___rax__rdx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.u_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4785e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_478639(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47864d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2c8d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2c8d_type* @G__0x4c2c8d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 184
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
define %struct.Memory* @routine_movq__0x4c2caf___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2caf_type* @G__0x4c2caf to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xbc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 188
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
define %struct.Memory* @routine_movq__0x4c2cd1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2cd1_type* @G__0x4c2cd1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc0__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 192
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
define %struct.Memory* @routine_movl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2ce9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2ce9_type* @G__0x4c2ce9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc4__rdx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 196
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
define %struct.Memory* @routine_movq__0x4c2d02___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2d02_type* @G__0x4c2d02 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc8__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 200
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
define %struct.Memory* @routine_callq_.se_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2d1b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2d1b_type* @G__0x4c2d1b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xcc__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 204
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
define %struct.Memory* @routine_callq_.IdentifyProfile(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -100
  %10 = icmp ult i32 %8, 100
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
define %struct.Memory* @routine_je_.L_478757(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6e__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -110
  %10 = icmp ult i32 %8, 110
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7a__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -122
  %10 = icmp ult i32 %8, 122
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x90__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -144
  %10 = icmp ult i32 %8, 144
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
define %struct.Memory* @routine_jne_.L_47877f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2d34___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2d34_type* @G__0x4c2d34 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 212
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
define %struct.Memory* @routine_jmpq_.L_4787a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd0__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 208
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
define %struct.Memory* @routine_movq__0x4c2d50___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2d50_type* @G__0x4c2d50 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xdc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 220
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
define %struct.Memory* @routine_movq__0x4c2d7c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2d7c_type* @G__0x4c2d7c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xe0__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 224
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
define %struct.Memory* @routine_movq__0x4c2d9d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2d9d_type* @G__0x4c2d9d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xe4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 228
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
define %struct.Memory* @routine_je_.L_478836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4789ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2dc1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2dc1_type* @G__0x4c2dc1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movq__0x4c2dde___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2dde_type* @G__0x4c2dde to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x14__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_4789dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jae_.L_4789d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movq__0x4c2e03___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2e03_type* @G__0x4c2e03 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rdx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 24
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4789c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jae_.L_47894e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movl__0x10___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d4520___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d1fc0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x711780___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__edi___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %R8, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Scaling_List(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4789bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 64, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d1f9c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6f6e20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x721ca0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x6___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ult i32 %6, 6
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
define %struct.Memory* @routine_movl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x7___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 7
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 57
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 128
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, 1
  store i8 %16, i8* %11, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %6, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %3, 56
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4789c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4789c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47888b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4789dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2e26___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2e26_type* @G__0x4c2e26 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 216
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
define %struct.Memory* @routine_movq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SODBtoRBSP(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
