; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x12b52__rip__type = type <{ [4 x i8] }>
%G_0x13006__rip__type = type <{ [8 x i8] }>
%G_0x1316d__rip__type = type <{ [4 x i8] }>
%G_0x2192cb__rip__type = type <{ [4 x i8] }>
%G_0x44a1a4__rip__type = type <{ [4 x i8] }>
%G_0x62db04_type = type <{ [4 x i8] }>
%G_0x62db08_type = type <{ [8 x i8] }>
%G_0x62db10_type = type <{ [8 x i8] }>
%G_0x62db18_type = type <{ [8 x i8] }>
%G_0x62e4f8_type = type <{ [4 x i8] }>
%G_0x62e518_type = type <{ [4 x i8] }>
%G_0x62ea20_type = type <{ [8 x i8] }>
%G_0x62ea28_type = type <{ [8 x i8] }>
%G_0x62ea30_type = type <{ [8 x i8] }>
%G_0x62ea38_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x633b54_type = type <{ [4 x i8] }>
%G_0x633b58_type = type <{ [4 x i8] }>
%G_0x85f168_type = type <{ [4 x i8] }>
%G_0x85f3e8_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661c8_type = type <{ [8 x i8] }>
%G_0x866530_type = type <{ [4 x i8] }>
%G_0x86679c_type = type <{ [1 x i8] }>
%G_0x86bd80_type = type <{ [4 x i8] }>
%G_0x86bd94_type = type <{ [4 x i8] }>
%G_0x880654_type = type <{ [4 x i8] }>
%G_0x886b8c_type = type <{ [8 x i8] }>
%G_0x886b94_type = type <{ [8 x i8] }>
%G_0x886b9c_type = type <{ [8 x i8] }>
%G_0x886bb0_type = type <{ [4 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
%G__0x428ee9_type = type <{ [8 x i8] }>
%G__0x428f25_type = type <{ [8 x i8] }>
%G__0x428f7f_type = type <{ [8 x i8] }>
%G__0x428f8a_type = type <{ [8 x i8] }>
%G__0x428fa1_type = type <{ [8 x i8] }>
%G__0x428fa6_type = type <{ [8 x i8] }>
%G__0x428faa_type = type <{ [8 x i8] }>
%G__0x428fd3_type = type <{ [8 x i8] }>
%G__0x428fe7_type = type <{ [8 x i8] }>
%G__0x428ffb_type = type <{ [8 x i8] }>
%G__0x429013_type = type <{ [8 x i8] }>
%G__0x429bef_type = type <{ [8 x i8] }>
%G__0x429cd1_type = type <{ [8 x i8] }>
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
@G_0x12b52__rip_ = global %G_0x12b52__rip__type zeroinitializer
@G_0x13006__rip_ = global %G_0x13006__rip__type zeroinitializer
@G_0x1316d__rip_ = global %G_0x1316d__rip__type zeroinitializer
@G_0x2192cb__rip_ = global %G_0x2192cb__rip__type zeroinitializer
@G_0x44a1a4__rip_ = global %G_0x44a1a4__rip__type zeroinitializer
@G_0x62db04 = local_unnamed_addr global %G_0x62db04_type zeroinitializer
@G_0x62db08 = local_unnamed_addr global %G_0x62db08_type zeroinitializer
@G_0x62db10 = local_unnamed_addr global %G_0x62db10_type zeroinitializer
@G_0x62db18 = local_unnamed_addr global %G_0x62db18_type zeroinitializer
@G_0x62e4f8 = local_unnamed_addr global %G_0x62e4f8_type zeroinitializer
@G_0x62e518 = local_unnamed_addr global %G_0x62e518_type zeroinitializer
@G_0x62ea20 = local_unnamed_addr global %G_0x62ea20_type zeroinitializer
@G_0x62ea28 = local_unnamed_addr global %G_0x62ea28_type zeroinitializer
@G_0x62ea30 = local_unnamed_addr global %G_0x62ea30_type zeroinitializer
@G_0x62ea38 = local_unnamed_addr global %G_0x62ea38_type zeroinitializer
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x633b54 = local_unnamed_addr global %G_0x633b54_type zeroinitializer
@G_0x633b58 = local_unnamed_addr global %G_0x633b58_type zeroinitializer
@G_0x85f168 = local_unnamed_addr global %G_0x85f168_type zeroinitializer
@G_0x85f3e8 = local_unnamed_addr global %G_0x85f3e8_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661c8 = local_unnamed_addr global %G_0x8661c8_type zeroinitializer
@G_0x866530 = local_unnamed_addr global %G_0x866530_type zeroinitializer
@G_0x86679c = local_unnamed_addr global %G_0x86679c_type zeroinitializer
@G_0x86bd80 = local_unnamed_addr global %G_0x86bd80_type zeroinitializer
@G_0x86bd94 = local_unnamed_addr global %G_0x86bd94_type zeroinitializer
@G_0x880654 = local_unnamed_addr global %G_0x880654_type zeroinitializer
@G_0x886b8c = local_unnamed_addr global %G_0x886b8c_type zeroinitializer
@G_0x886b94 = local_unnamed_addr global %G_0x886b94_type zeroinitializer
@G_0x886b9c = local_unnamed_addr global %G_0x886b9c_type zeroinitializer
@G_0x886bb0 = local_unnamed_addr global %G_0x886bb0_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer
@G_0x8a2a04 = local_unnamed_addr global %G_0x8a2a04_type zeroinitializer
@G__0x428ee9 = global %G__0x428ee9_type zeroinitializer
@G__0x428f25 = global %G__0x428f25_type zeroinitializer
@G__0x428f7f = global %G__0x428f7f_type zeroinitializer
@G__0x428f8a = global %G__0x428f8a_type zeroinitializer
@G__0x428fa1 = global %G__0x428fa1_type zeroinitializer
@G__0x428fa6 = global %G__0x428fa6_type zeroinitializer
@G__0x428faa = global %G__0x428faa_type zeroinitializer
@G__0x428fd3 = global %G__0x428fd3_type zeroinitializer
@G__0x428fe7 = global %G__0x428fe7_type zeroinitializer
@G__0x428ffb = global %G__0x428ffb_type zeroinitializer
@G__0x429013 = global %G__0x429013_type zeroinitializer
@G__0x429bef = global %G__0x429bef_type zeroinitializer
@G__0x429cd1 = global %G__0x429cd1_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcat(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_423760.rtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_412a30.pn_eval(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_412950.Xfree(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413400.set_proof_and_disproof_numbers(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413db0.develop_node(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414180.update_ancestors(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423770.rdifftime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4243e0.interrupt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_422190.comp_to_coord(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @proofnumbersearch(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -16600
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i126 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 1, i64* %RAX.i126, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %19 to i32*
  %RCX.i207 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 0, i64* %RCX.i207, align 8
  store i32 1, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e518_type* @G_0x62e518 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i404 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0
  %21 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RDX.i404, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i415 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RSI.i415, align 8
  %ESI.i574 = bitcast %union.anon* %23 to i32*
  %RDI.i575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %26 = sext i32 %24 to i64
  store i64 %26, i64* %RDI.i575, align 8
  %EDX.i612 = bitcast %union.anon* %20 to i32*
  %27 = shl nsw i64 %26, 2
  %28 = add nsw i64 %27, 8692688
  %29 = add i64 %10, 117
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %28 to i32*
  store i32 %21, i32* %30, align 4
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %12, align 1
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %38 = icmp eq i32 %32, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %15, align 1
  %40 = lshr i32 %32, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %42 = load i32, i32* %ECX.i, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %RAX.i126, align 8
  %45 = select i1 %38, i64 %44, i64 %43
  %46 = and i64 %45, 4294967295
  store i64 %46, i64* %RAX.i126, align 8
  %EAX.i707 = bitcast %union.anon* %18 to i32*
  %47 = trunc i64 %45 to i32
  store i32 %47, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  %48 = add i64 %31, 59130
  %49 = add i64 %31, 23
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  %call2_415078 = tail call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64 %48, %struct.Memory* %2)
  %53 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i575, align 8
  store i64 56, i64* %RCX.i207, align 8
  store i64 56, i64* %RSI.i415, align 8
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -32
  %56 = load i64, i64* %RAX.i126, align 8
  %57 = add i64 %53, 18
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, -82831
  %61 = add i64 %59, 5
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %61, i64* %64, align 8
  store i64 %63, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  %65 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %call2_415078)
  %66 = load i64, i64* %3, align 8
  store i64 56, i64* %RCX.i207, align 8
  store i64 56, i64* %RSI.i415, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -8
  %69 = load i64, i64* %RAX.i126, align 8
  %70 = add i64 %66, 11
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* bitcast (%G_0x886bb0_type* @G_0x886bb0 to i32*), align 8
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %RDI.i575, align 8
  %75 = add i64 %72, -82847
  %76 = add i64 %72, 13
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  %80 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %65)
  %81 = load i64, i64* %RAX.i126, align 8
  %82 = load i64, i64* %3, align 8
  store i64 %81, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -8
  %85 = add i64 %82, 12
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RDI.i575, align 8
  %88 = add i64 %82, -9852
  %89 = add i64 %82, 17
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %6, align 8
  store i64 %88, i64* %3, align 8
  %call2_4150b8 = tail call %struct.Memory* @sub_412a30.pn_eval(%struct.State* %0, i64 %88, %struct.Memory* %80)
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -8
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %RAX.i126, align 8
  %99 = add i64 %95, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i8*
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  store i64 %102, i64* %RCX.i207, align 8
  %103 = zext i8 %101 to i32
  store i8 0, i8* %12, align 1
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %108 = icmp eq i8 %101, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v87 = select i1 %108, i64 16, i64 99
  %110 = add i64 %95, %.v87
  store i64 %110, i64* %3, align 8
  br i1 %108, label %block_4150cd, label %block_.L_415120

block_4150cd:                                     ; preds = %entry
  %111 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %111, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %112 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %112, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %113 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %113, i64* %RAX.i126, align 8
  store i64 %113, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %114 = add i64 %110, -10109
  %115 = add i64 %110, 53
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  %call2_4150fd = tail call %struct.Memory* @sub_412950.Xfree(%struct.State* nonnull %0, i64 %114, %struct.Memory* %call2_4150b8)
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -8
  %121 = load i64, i64* %3, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RAX.i126, align 8
  store i64 %124, i64* %RDI.i575, align 8
  %125 = add i64 %121, -83138
  %126 = add i64 %121, 12
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %6, align 8
  store i64 %125, i64* %3, align 8
  %130 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_4150fd)
  %131 = load i64, i64* %3, align 8
  %132 = load i64, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  store i64 %132, i64* %RDI.i575, align 8
  %133 = add i64 %131, -83150
  %134 = add i64 %131, 13
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %6, align 8
  store i64 %133, i64* %3, align 8
  %138 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %130)
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 2252
  store i64 %140, i64* %3, align 8
  br label %block_.L_4159e7

block_.L_415120:                                  ; preds = %entry
  %141 = add i64 %110, 4
  store i64 %141, i64* %3, align 8
  %142 = load i64, i64* %97, align 8
  store i64 %142, i64* %RDI.i575, align 8
  %143 = add i64 %110, -7456
  %144 = add i64 %110, 9
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147, align 8
  store i64 %146, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  %call2_415124 = tail call %struct.Memory* @sub_413400.set_proof_and_disproof_numbers(%struct.State* nonnull %0, i64 %143, %struct.Memory* %call2_4150b8)
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -8
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RDI.i575, align 8
  %154 = add i64 %148, -24
  %155 = add i64 %150, 8
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i64*
  store i64 %153, i64* %156, align 8
  %AL.i948 = bitcast %union.anon* %18 to i8*
  %CL.i949 = bitcast %union.anon* %19 to i8*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %SIL.i906 = bitcast %union.anon* %23 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_415131

block_.L_415131:                                  ; preds = %block_.L_41521c, %block_.L_415120
  %158 = phi i64 [ %.pre, %block_.L_415120 ], [ %418, %block_.L_41521c ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_415124, %block_.L_415120 ], [ %MEMORY.3, %block_.L_41521c ]
  store i64 0, i64* %RAX.i126, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i949, align 1
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -8
  %161 = add i64 %158, 8
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RDX.i404, align 8
  %164 = add i64 %163, 4
  %165 = add i64 %158, 12
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  store i8 0, i8* %12, align 1
  %168 = and i32 %167, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %173 = icmp eq i32 %167, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %15, align 1
  %175 = lshr i32 %167, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %177 = add i64 %159, -16429
  %178 = add i64 %158, 18
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i8*
  store i8 0, i8* %179, align 1
  %180 = load i64, i64* %3, align 8
  %181 = load i8, i8* %15, align 1
  %182 = icmp ne i8 %181, 0
  %.v133 = select i1 %182, i64 72, i64 6
  %183 = add i64 %180, %.v133
  store i64 %183, i64* %3, align 8
  %cmpBr_415143 = icmp eq i8 %181, 1
  br i1 %cmpBr_415143, label %block_.L_41518b, label %block_415149

block_415149:                                     ; preds = %block_.L_415131
  store i64 0, i64* %RAX.i126, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i949, align 1
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -8
  %186 = add i64 %183, 8
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RDX.i404, align 8
  %189 = add i64 %188, 8
  %190 = add i64 %183, 12
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  store i8 0, i8* %12, align 1
  %193 = and i32 %192, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %198 = icmp eq i32 %192, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %15, align 1
  %200 = lshr i32 %192, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %202 = add i64 %184, -16429
  %203 = add i64 %183, 18
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i8*
  store i8 0, i8* %204, align 1
  %205 = load i64, i64* %3, align 8
  %206 = load i8, i8* %15, align 1
  %207 = icmp ne i8 %206, 0
  %.v134 = select i1 %207, i64 48, i64 6
  %208 = add i64 %205, %.v134
  store i64 %208, i64* %3, align 8
  %cmpBr_41515b = icmp eq i8 %206, 1
  br i1 %cmpBr_41515b, label %block_.L_41518b, label %block_415161

block_415161:                                     ; preds = %block_415149
  %209 = load i32, i32* bitcast (%G_0x62db04_type* @G_0x62db04 to i32*), align 8
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RCX.i207, align 8
  %211 = load i32, i32* bitcast (%G_0x886bb0_type* @G_0x886bb0 to i32*), align 8
  %212 = add i32 %211, -10000
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX.i126, align 8
  %214 = sext i32 %212 to i64
  %215 = mul nsw i64 %214, 56
  store i64 %215, i64* %RDX.i404, align 8
  %216 = lshr i64 %215, 63
  %217 = sub i64 %210, %215
  %218 = icmp ult i64 %210, %215
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %12, align 1
  %220 = trunc i64 %217 to i32
  %221 = and i32 %220, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %13, align 1
  %226 = xor i64 %215, %210
  %227 = xor i64 %226, %217
  %228 = lshr i64 %227, 4
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %14, align 1
  %231 = icmp eq i64 %217, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %15, align 1
  %233 = lshr i64 %217, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %16, align 1
  %235 = add nuw nsw i64 %233, %216
  %236 = icmp eq i64 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %17, align 1
  store i8 %219, i8* %SIL.i906, align 1
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -16429
  %240 = add i64 %208, 42
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i8*
  store i8 %219, i8* %241, align 1
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_41518b

block_.L_41518b:                                  ; preds = %block_415161, %block_415149, %block_.L_415131
  %242 = phi i64 [ %.pre58, %block_415161 ], [ %208, %block_415149 ], [ %183, %block_.L_415131 ]
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -16429
  %245 = add i64 %242, 6
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i8*
  %247 = load i8, i8* %246, align 1
  store i8 %247, i8* %AL.i948, align 1
  %248 = and i8 %247, 1
  store i8 0, i8* %12, align 1
  %249 = zext i8 %248 to i32
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = xor i8 %251, 1
  store i8 %252, i8* %13, align 1
  %253 = xor i8 %248, 1
  store i8 %253, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %254 = icmp eq i8 %253, 0
  %.v88 = select i1 %254, i64 19, i64 14
  %255 = add i64 %242, %.v88
  store i64 %255, i64* %3, align 8
  br i1 %254, label %block_.L_41519e, label %block_415199

block_415199:                                     ; preds = %block_.L_41518b
  %256 = add i64 %255, 136
  br label %block_.L_415221

block_.L_41519e:                                  ; preds = %block_.L_41518b
  %257 = add i64 %243, -24
  %258 = add i64 %255, 4
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %RDI.i575, align 8
  %261 = add i64 %255, -7886
  %262 = add i64 %255, 9
  %263 = load i64, i64* %6, align 8
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265, align 8
  store i64 %264, i64* %6, align 8
  store i64 %261, i64* %3, align 8
  %call2_4151a2 = tail call %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* nonnull %0, i64 %261, %struct.Memory* %MEMORY.0)
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -16
  %268 = load i64, i64* %RAX.i126, align 8
  %269 = load i64, i64* %3, align 8
  %270 = add i64 %269, 4
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %267 to i64*
  store i64 %268, i64* %271, align 8
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -16
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 4
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RDI.i575, align 8
  %278 = add i64 %274, -5115
  %279 = add i64 %274, 9
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_4151af = tail call %struct.Memory* @sub_413db0.develop_node(%struct.State* nonnull %0, i64 %278, %struct.Memory* %MEMORY.0)
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -16
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 4
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i64*
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %RDI.i575, align 8
  %289 = add i64 %285, -4148
  %290 = add i64 %285, 9
  %291 = load i64, i64* %6, align 8
  %292 = add i64 %291, -8
  %293 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %293, align 8
  store i64 %292, i64* %6, align 8
  store i64 %289, i64* %3, align 8
  %call2_4151b8 = tail call %struct.Memory* @sub_414180.update_ancestors(%struct.State* nonnull %0, i64 %289, %struct.Memory* %MEMORY.0)
  %294 = load i64, i64* %3, align 8
  store i64 32, i64* %RCX.i207, align 8
  %295 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %296 = add i32 %295, 1
  %297 = zext i32 %296 to i64
  %298 = icmp eq i32 %295, -1
  %299 = icmp eq i32 %296, 0
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %12, align 1
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %13, align 1
  %307 = xor i32 %296, %295
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %14, align 1
  %311 = zext i1 %299 to i8
  store i8 %311, i8* %15, align 1
  %312 = lshr i32 %296, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %16, align 1
  %314 = lshr i32 %295, 31
  %315 = xor i32 %312, %314
  %316 = add nuw nsw i32 %315, %312
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %17, align 1
  store i32 %296, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  store i64 %297, i64* %RAX.i126, align 8
  %319 = sext i32 %296 to i64
  %320 = lshr i64 %319, 32
  store i64 %320, i64* %157, align 8
  %321 = add i64 %294, 32
  store i64 %321, i64* %3, align 8
  %322 = shl nuw i64 %320, 32
  %323 = or i64 %322, %297
  %324 = sdiv i64 %323, 32
  %325 = shl i64 %324, 32
  %326 = ashr exact i64 %325, 32
  %327 = icmp eq i64 %324, %326
  br i1 %327, label %330, label %328

; <label>:328:                                    ; preds = %block_.L_41519e
  %329 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %321, %struct.Memory* %MEMORY.0)
  %.pre59 = load i32, i32* %EDX.i612, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit867

; <label>:330:                                    ; preds = %block_.L_41519e
  %331 = srem i64 %323, 32
  %332 = and i64 %324, 4294967295
  store i64 %332, i64* %RAX.i126, align 8
  %333 = and i64 %331, 4294967295
  store i64 %333, i64* %RDX.i404, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %334 = trunc i64 %331 to i32
  br label %routine_idivl__ecx.exit867

routine_idivl__ecx.exit867:                       ; preds = %330, %328
  %335 = phi i64 [ %.pre60, %328 ], [ %321, %330 ]
  %336 = phi i32 [ %.pre59, %328 ], [ %334, %330 ]
  %337 = phi %struct.Memory* [ %329, %328 ], [ %MEMORY.0, %330 ]
  store i8 0, i8* %12, align 1
  %338 = and i32 %336, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %343 = icmp eq i32 %336, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %15, align 1
  %345 = lshr i32 %336, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v106 = select i1 %343, i64 9, i64 63
  %347 = add i64 %335, %.v106
  store i64 %347, i64* %3, align 8
  br i1 %343, label %block_4151e6, label %block_.L_41521c

block_4151e6:                                     ; preds = %routine_idivl__ecx.exit867
  %348 = add i64 %347, 58746
  %349 = add i64 %347, 5
  %350 = load i64, i64* %6, align 8
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %349, i64* %352, align 8
  store i64 %351, i64* %6, align 8
  store i64 %348, i64* %3, align 8
  %call2_4151e6 = tail call %struct.Memory* @sub_423760.rtime(%struct.State* nonnull %0, i64 %348, %struct.Memory* %337)
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -32
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, 4
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %354 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RSI.i415, align 8
  %359 = load i64, i64* %RAX.i126, align 8
  store i64 %359, i64* %RDI.i575, align 8
  %360 = add i64 %355, 58757
  %361 = add i64 %355, 12
  %362 = load i64, i64* %6, align 8
  %363 = add i64 %362, -8
  %364 = inttoptr i64 %363 to i64*
  store i64 %361, i64* %364, align 8
  store i64 %363, i64* %6, align 8
  store i64 %360, i64* %3, align 8
  %call2_4151f2 = tail call %struct.Memory* @sub_423770.rdifftime(%struct.State* nonnull %0, i64 %360, %struct.Memory* %call2_4151e6)
  %365 = load i32, i32* %EAX.i707, align 4
  %366 = load i64, i64* %3, align 8
  %367 = load i32, i32* bitcast (%G_0x85f168_type* @G_0x85f168 to i32*), align 8
  %368 = sub i32 %365, %367
  %369 = icmp ult i32 %365, %367
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %12, align 1
  %371 = and i32 %368, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %13, align 1
  %376 = xor i32 %367, %365
  %377 = xor i32 %376, %368
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %14, align 1
  %381 = icmp eq i32 %368, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %15, align 1
  %383 = lshr i32 %368, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %16, align 1
  %385 = lshr i32 %365, 31
  %386 = lshr i32 %367, 31
  %387 = xor i32 %386, %385
  %388 = xor i32 %383, %385
  %389 = add nuw nsw i32 %388, %387
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %17, align 1
  %392 = icmp ne i8 %384, 0
  %393 = xor i1 %392, %390
  %394 = or i1 %381, %393
  %.v107 = select i1 %394, i64 32, i64 13
  %395 = add i64 %366, %.v107
  store i64 %395, i64* %3, align 8
  br i1 %394, label %block_.L_415217, label %block_415204

block_415204:                                     ; preds = %block_4151e6
  %396 = add i64 %395, 61916
  %397 = add i64 %395, 5
  %398 = load i64, i64* %6, align 8
  %399 = add i64 %398, -8
  %400 = inttoptr i64 %399 to i64*
  store i64 %397, i64* %400, align 8
  store i64 %399, i64* %6, align 8
  store i64 %396, i64* %3, align 8
  %call2_415204 = tail call %struct.Memory* @sub_4243e0.interrupt(%struct.State* nonnull %0, i64 %396, %struct.Memory* %call2_4151f2)
  %401 = load i32, i32* %EAX.i707, align 4
  %402 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %403 = and i32 %401, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %408 = icmp eq i32 %401, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %15, align 1
  %410 = lshr i32 %401, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v108 = select i1 %408, i64 9, i64 14
  %412 = add i64 %402, %.v108
  store i64 %412, i64* %3, align 8
  br i1 %408, label %block_415212, label %block_.L_415217

block_415212:                                     ; preds = %block_415204
  %413 = add i64 %412, 15
  %414 = add i64 %412, 5
  store i64 %414, i64* %3, align 8
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %block_.L_415221

block_.L_415217:                                  ; preds = %block_415204, %block_4151e6
  %415 = phi i64 [ %395, %block_4151e6 ], [ %412, %block_415204 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4151f2, %block_4151e6 ], [ %call2_415204, %block_415204 ]
  %416 = add i64 %415, 5
  store i64 %416, i64* %3, align 8
  br label %block_.L_41521c

block_.L_41521c:                                  ; preds = %routine_idivl__ecx.exit867, %block_.L_415217
  %417 = phi i64 [ %347, %routine_idivl__ecx.exit867 ], [ %416, %block_.L_415217 ]
  %MEMORY.3 = phi %struct.Memory* [ %337, %routine_idivl__ecx.exit867 ], [ %MEMORY.2, %block_.L_415217 ]
  %418 = add i64 %417, -235
  store i64 %418, i64* %3, align 8
  br label %block_.L_415131

block_.L_415221:                                  ; preds = %block_415212, %block_415199
  %419 = phi i64 [ %243, %block_415199 ], [ %.pre61, %block_415212 ]
  %storemerge = phi i64 [ %256, %block_415199 ], [ %413, %block_415212 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_415199 ], [ %call2_415204, %block_415212 ]
  store i64 ptrtoint (%G__0x428ee9_type* @G__0x428ee9 to i64), i64* %RDI.i575, align 8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %421 = bitcast [32 x %union.VectorReg]* %420 to i8*
  %422 = add i64 %storemerge, add (i64 ptrtoint (%G_0x1316d__rip__type* @G_0x1316d__rip_ to i64), i64 10)
  %423 = add i64 %storemerge, 18
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = bitcast [32 x %union.VectorReg]* %420 to float*
  %427 = bitcast [32 x %union.VectorReg]* %420 to i32*
  store i32 %425, i32* %427, align 1
  %428 = getelementptr inbounds i8, i8* %421, i64 4
  %429 = bitcast i8* %428 to float*
  store float 0.000000e+00, float* %429, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %431 = bitcast i64* %430 to float*
  store float 0.000000e+00, float* %431, align 1
  %432 = getelementptr inbounds i8, i8* %421, i64 12
  %433 = bitcast i8* %432 to float*
  store float 0.000000e+00, float* %433, align 1
  %434 = add i64 %419, -8
  %435 = add i64 %storemerge, 22
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i64*
  %437 = load i64, i64* %436, align 8
  store i64 %437, i64* %RAX.i126, align 8
  %438 = add i64 %437, 4
  %439 = add i64 %storemerge, 25
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RSI.i415, align 8
  %443 = add i64 %437, 8
  %444 = add i64 %storemerge, 28
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RDX.i404, align 8
  %448 = add i64 %storemerge, add (i64 ptrtoint (%G_0x44a1a4__rip__type* @G_0x44a1a4__rip_ to i64), i64 28)
  %449 = add i64 %storemerge, 35
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %RAX.i126, align 8
  %453 = zext i32 %451 to i64
  store i64 %453, i64* %RCX.i207, align 8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i825 = bitcast %union.anon* %454 to i32*
  %455 = getelementptr inbounds %union.anon, %union.anon* %454, i64 0, i32 0
  %456 = add i64 %storemerge, add (i64 ptrtoint (%G_0x2192cb__rip__type* @G_0x2192cb__rip_ to i64), i64 37)
  %457 = add i64 %storemerge, 44
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %455, align 8
  %461 = mul nsw i64 %452, 56
  store i64 %461, i64* %RAX.i126, align 8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %463 = bitcast %union.VectorReg* %462 to i8*
  %464 = bitcast %union.VectorReg* %462 to <2 x i32>*
  %465 = load <2 x i32>, <2 x i32>* %464, align 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %467 = bitcast i64* %466 to <2 x i32>*
  %468 = load <2 x i32>, <2 x i32>* %467, align 1
  %469 = sitofp i64 %461 to float
  %470 = bitcast %union.VectorReg* %462 to float*
  store float %469, float* %470, align 1
  %471 = extractelement <2 x i32> %465, i32 1
  %472 = getelementptr inbounds i8, i8* %463, i64 4
  %473 = bitcast i8* %472 to i32*
  store i32 %471, i32* %473, align 1
  %474 = extractelement <2 x i32> %468, i32 0
  %475 = bitcast i64* %466 to i32*
  store i32 %474, i32* %475, align 1
  %476 = extractelement <2 x i32> %468, i32 1
  %477 = getelementptr inbounds i8, i8* %463, i64 12
  %478 = bitcast i8* %477 to i32*
  store i32 %476, i32* %478, align 1
  %R9.i818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %479 = lshr exact i64 %461, 1
  store i64 %479, i64* %R9.i818, align 8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %481 = bitcast %union.VectorReg* %480 to i8*
  %482 = bitcast %union.VectorReg* %480 to <2 x i32>*
  %483 = load <2 x i32>, <2 x i32>* %482, align 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %485 = bitcast i64* %484 to <2 x i32>*
  %486 = load <2 x i32>, <2 x i32>* %485, align 1
  %487 = sitofp i64 %479 to float
  %488 = bitcast %union.VectorReg* %480 to float*
  store float %487, float* %488, align 1
  %489 = extractelement <2 x i32> %483, i32 1
  %490 = getelementptr inbounds i8, i8* %481, i64 4
  %491 = bitcast i8* %490 to i32*
  store i32 %489, i32* %491, align 1
  %492 = extractelement <2 x i32> %486, i32 0
  %493 = bitcast i64* %484 to i32*
  store i32 %492, i32* %493, align 1
  %494 = extractelement <2 x i32> %486, i32 1
  %495 = getelementptr inbounds i8, i8* %481, i64 12
  %496 = bitcast i8* %495 to i32*
  store i32 %494, i32* %496, align 1
  %497 = bitcast %union.VectorReg* %480 to <2 x float>*
  %498 = load <2 x float>, <2 x float>* %497, align 1
  %499 = load <2 x i32>, <2 x i32>* %485, align 1
  %500 = extractelement <2 x float> %498, i32 0
  %501 = fadd float %500, %500
  store float %501, float* %488, align 1
  %502 = bitcast <2 x float> %498 to <2 x i32>
  %503 = extractelement <2 x i32> %502, i32 1
  store i32 %503, i32* %491, align 1
  %504 = extractelement <2 x i32> %499, i32 0
  store i32 %504, i32* %493, align 1
  %505 = extractelement <2 x i32> %499, i32 1
  store i32 %505, i32* %496, align 1
  %506 = load i64, i64* %RAX.i126, align 8
  store i8 0, i8* %12, align 1
  %507 = trunc i64 %506 to i32
  %508 = and i32 %507, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %13, align 1
  %513 = icmp eq i64 %506, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %15, align 1
  %515 = lshr i64 %506, 63
  %516 = trunc i64 %515 to i8
  store i8 %516, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %517 = load i64, i64* %RBP.i, align 8
  %518 = add i64 %517, -16440
  %519 = load i64, i64* %RDI.i575, align 8
  %520 = add i64 %storemerge, 78
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %518 to i64*
  store i64 %519, i64* %521, align 8
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -16444
  %524 = load i64, i64* %3, align 8
  %525 = add i64 %524, 8
  store i64 %525, i64* %3, align 8
  %526 = bitcast [32 x %union.VectorReg]* %420 to <2 x float>*
  %527 = load <2 x float>, <2 x float>* %526, align 1
  %528 = extractelement <2 x float> %527, i32 0
  %529 = inttoptr i64 %523 to float*
  store float %528, float* %529, align 4
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -16448
  %532 = load i32, i32* %ESI.i574, align 4
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 6
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %531 to i32*
  store i32 %532, i32* %535, align 4
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -16452
  %538 = load i32, i32* %EDX.i612, align 4
  %539 = load i64, i64* %3, align 8
  %540 = add i64 %539, 6
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %537 to i32*
  store i32 %538, i32* %541, align 4
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -16456
  %544 = load i32, i32* %R8D.i825, align 4
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 7
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %543 to i32*
  store i32 %544, i32* %547, align 4
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -16460
  %550 = load i32, i32* %ECX.i, align 4
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 6
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %549 to i32*
  store i32 %550, i32* %553, align 4
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -16464
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 8
  store i64 %557, i64* %3, align 8
  %558 = bitcast %union.VectorReg* %462 to <2 x float>*
  %559 = load <2 x float>, <2 x float>* %558, align 1
  %560 = extractelement <2 x float> %559, i32 0
  %561 = inttoptr i64 %555 to float*
  store float %560, float* %561, align 4
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -16468
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 8
  store i64 %565, i64* %3, align 8
  %566 = load <2 x float>, <2 x float>* %497, align 1
  %567 = extractelement <2 x float> %566, i32 0
  %568 = inttoptr i64 %563 to float*
  store float %567, float* %568, align 4
  %569 = load i64, i64* %3, align 8
  %570 = load i8, i8* %16, align 1
  %571 = icmp ne i8 %570, 0
  %.v135 = select i1 %571, i64 22, i64 6
  %572 = add i64 %569, %.v135
  store i64 %572, i64* %3, align 8
  %cmpBr_4152a0 = icmp eq i8 %570, 1
  br i1 %cmpBr_4152a0, label %block_.L_4152b6, label %block_4152a6

block_4152a6:                                     ; preds = %block_.L_415221
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -16464
  %575 = add i64 %572, 8
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  store i32 %577, i32* %427, align 1
  store float 0.000000e+00, float* %429, align 1
  store float 0.000000e+00, float* %431, align 1
  store float 0.000000e+00, float* %433, align 1
  %578 = add i64 %573, -16468
  %579 = add i64 %572, 16
  store i64 %579, i64* %3, align 8
  %580 = load <2 x float>, <2 x float>* %526, align 1
  %581 = extractelement <2 x float> %580, i32 0
  %582 = inttoptr i64 %578 to float*
  store float %581, float* %582, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_4152b6

block_.L_4152b6:                                  ; preds = %block_4152a6, %block_.L_415221
  %583 = phi i64 [ %.pre62, %block_4152a6 ], [ %572, %block_.L_415221 ]
  %584 = load i64, i64* %RBP.i, align 8
  %585 = add i64 %584, -16468
  %586 = add i64 %583, 8
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  store i32 %588, i32* %427, align 1
  store float 0.000000e+00, float* %429, align 1
  store float 0.000000e+00, float* %431, align 1
  store float 0.000000e+00, float* %433, align 1
  %589 = add i64 %584, -16444
  %590 = add i64 %583, 16
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = bitcast %union.VectorReg* %462 to i32*
  store i32 %592, i32* %593, align 1
  %594 = bitcast i8* %472 to float*
  store float 0.000000e+00, float* %594, align 1
  %595 = bitcast i64* %466 to float*
  store float 0.000000e+00, float* %595, align 1
  %596 = bitcast i8* %477 to float*
  store float 0.000000e+00, float* %596, align 1
  %597 = load <2 x float>, <2 x float>* %526, align 1
  %598 = bitcast i64* %430 to <2 x i32>*
  %599 = load <2 x i32>, <2 x i32>* %598, align 1
  %600 = load <2 x float>, <2 x float>* %558, align 1
  %601 = extractelement <2 x float> %597, i32 0
  %602 = extractelement <2 x float> %600, i32 0
  %603 = fdiv float %601, %602
  store float %603, float* %426, align 1
  %604 = bitcast <2 x float> %597 to <2 x i32>
  %605 = extractelement <2 x i32> %604, i32 1
  %606 = bitcast i8* %428 to i32*
  store i32 %605, i32* %606, align 1
  %607 = extractelement <2 x i32> %599, i32 0
  %608 = bitcast i64* %430 to i32*
  store i32 %607, i32* %608, align 1
  %609 = extractelement <2 x i32> %599, i32 1
  %610 = bitcast i8* %432 to i32*
  store i32 %609, i32* %610, align 1
  %611 = load <2 x float>, <2 x float>* %526, align 1
  %612 = extractelement <2 x float> %611, i32 0
  %613 = fpext float %612 to double
  %614 = bitcast [32 x %union.VectorReg]* %420 to double*
  store double %613, double* %614, align 1
  %615 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %R9.i818, align 8
  %617 = load i32, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX.i126, align 8
  %619 = add i64 %584, -16440
  %620 = add i64 %583, 46
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %RDI.i575, align 8
  %623 = add i64 %584, -16448
  %624 = add i64 %583, 52
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RSI.i415, align 8
  %628 = add i64 %584, -16452
  %629 = add i64 %583, 58
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RDX.i404, align 8
  %633 = add i64 %584, -16460
  %634 = add i64 %583, 64
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RCX.i207, align 8
  %638 = add i64 %584, -16456
  %639 = add i64 %583, 71
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %455, align 8
  %643 = bitcast i64* %6 to i32**
  %644 = load i32*, i32** %643, align 8
  %645 = add i64 %583, 74
  store i64 %645, i64* %3, align 8
  store i32 %617, i32* %644, align 4
  %646 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i948, align 1
  %647 = add i64 %646, -83536
  %648 = add i64 %646, 7
  %649 = load i64, i64* %6, align 8
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %648, i64* %651, align 8
  store i64 %650, i64* %6, align 8
  store i64 %647, i64* %3, align 8
  %652 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
  %653 = load i64, i64* %3, align 8
  %654 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %12, align 1
  %655 = and i32 %654, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %660 = icmp eq i32 %654, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %15, align 1
  %662 = lshr i32 %654, 31
  %663 = trunc i32 %662 to i8
  store i8 %663, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -16472
  %666 = load i32, i32* %EAX.i707, align 4
  %667 = add i64 %653, 14
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i32*
  store i32 %666, i32* %668, align 4
  %669 = load i64, i64* %3, align 8
  %670 = load i8, i8* %15, align 1
  %671 = icmp ne i8 %670, 0
  %.v136 = select i1 %671, i64 92, i64 6
  %672 = add i64 %669, %.v136
  store i64 %672, i64* %3, align 8
  %cmpBr_415315 = icmp eq i8 %670, 1
  br i1 %cmpBr_415315, label %block_.L_415371, label %block_41531b

block_41531b:                                     ; preds = %block_.L_4152b6
  %673 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  store i8 0, i8* %12, align 1
  %674 = and i32 %673, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %679 = icmp eq i32 %673, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %15, align 1
  %681 = lshr i32 %673, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v89 = select i1 %679, i64 86, i64 14
  %683 = add i64 %672, %.v89
  store i64 %683, i64* %3, align 8
  br i1 %679, label %block_.L_415371, label %block_415329

block_415329:                                     ; preds = %block_41531b
  store i64 ptrtoint (%G__0x428f25_type* @G__0x428f25 to i64), i64* %RDI.i575, align 8
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -8
  %686 = add i64 %683, 14
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RAX.i126, align 8
  %689 = add i64 %688, 4
  %690 = add i64 %683, 17
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RSI.i415, align 8
  %694 = add i64 %683, 21
  store i64 %694, i64* %3, align 8
  %695 = load i64, i64* %687, align 8
  store i64 %695, i64* %RAX.i126, align 8
  %696 = add i64 %695, 8
  %697 = add i64 %683, 24
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RDX.i404, align 8
  %701 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RCX.i207, align 8
  %703 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %455, align 8
  %705 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %R9.i818, align 8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %708 = load i32, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %707, align 8
  %710 = load i32*, i32** %643, align 8
  %711 = add i64 %683, 59
  store i64 %711, i64* %3, align 8
  store i32 %708, i32* %710, align 4
  %712 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i948, align 1
  %713 = add i64 %712, -83636
  %714 = add i64 %712, 7
  %715 = load i64, i64* %6, align 8
  %716 = add i64 %715, -8
  %717 = inttoptr i64 %716 to i64*
  store i64 %714, i64* %717, align 8
  store i64 %716, i64* %6, align 8
  store i64 %713, i64* %3, align 8
  %718 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %652)
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -16476
  %721 = load i32, i32* %EAX.i707, align 4
  %722 = load i64, i64* %3, align 8
  %723 = add i64 %722, 6
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %720 to i32*
  store i32 %721, i32* %724, align 4
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  br label %block_.L_415371

block_.L_415371:                                  ; preds = %block_415329, %block_41531b, %block_.L_4152b6
  %725 = phi i32 [ %654, %block_.L_4152b6 ], [ %654, %block_41531b ], [ %.pre64, %block_415329 ]
  %726 = phi i64 [ %672, %block_.L_4152b6 ], [ %683, %block_41531b ], [ %.pre63, %block_415329 ]
  %MEMORY.6 = phi %struct.Memory* [ %652, %block_.L_4152b6 ], [ %652, %block_41531b ], [ %718, %block_415329 ]
  store i8 0, i8* %12, align 1
  %727 = and i32 %725, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %732 = icmp eq i32 %725, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %15, align 1
  %734 = lshr i32 %725, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v90 = select i1 %732, i64 14, i64 77
  %736 = add i64 %726, %.v90
  store i64 %736, i64* %3, align 8
  br i1 %732, label %block_41537f, label %block_.L_4153be

block_41537f:                                     ; preds = %block_.L_415371
  %737 = add i64 %736, 58337
  %738 = add i64 %736, 5
  %739 = load i64, i64* %6, align 8
  %740 = add i64 %739, -8
  %741 = inttoptr i64 %740 to i64*
  store i64 %738, i64* %741, align 8
  store i64 %740, i64* %6, align 8
  store i64 %737, i64* %3, align 8
  %call2_41537f = tail call %struct.Memory* @sub_423760.rtime(%struct.State* nonnull %0, i64 %737, %struct.Memory* %MEMORY.6)
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -32
  %744 = load i64, i64* %3, align 8
  %745 = add i64 %744, 4
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %RSI.i415, align 8
  %748 = load i64, i64* %RAX.i126, align 8
  store i64 %748, i64* %RDI.i575, align 8
  %749 = add i64 %744, 58348
  %750 = add i64 %744, 12
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_41538b = tail call %struct.Memory* @sub_423770.rdifftime(%struct.State* nonnull %0, i64 %749, %struct.Memory* %call2_41537f)
  %754 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x428f7f_type* @G__0x428f7f to i64), i64* %RDI.i575, align 8
  %755 = add i64 %754, add (i64 ptrtoint (%G_0x13006__rip__type* @G_0x13006__rip_ to i64), i64 10)
  %756 = add i64 %754, 18
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to double*
  %758 = load double, double* %757, align 8
  %759 = load i32, i32* %EAX.i707, align 4
  %760 = load <2 x i32>, <2 x i32>* %464, align 1
  %761 = load <2 x i32>, <2 x i32>* %467, align 1
  %762 = sitofp i32 %759 to float
  store float %762, float* %470, align 1
  %763 = extractelement <2 x i32> %760, i32 1
  store i32 %763, i32* %473, align 1
  %764 = extractelement <2 x i32> %761, i32 0
  store i32 %764, i32* %475, align 1
  %765 = extractelement <2 x i32> %761, i32 1
  store i32 %765, i32* %478, align 1
  %766 = load <2 x float>, <2 x float>* %558, align 1
  %767 = extractelement <2 x float> %766, i32 0
  %768 = fpext float %767 to double
  %769 = bitcast %union.VectorReg* %462 to double*
  %770 = bitcast i64* %466 to <2 x i32>*
  %771 = load <2 x i32>, <2 x i32>* %770, align 1
  %772 = fdiv double %768, %758
  store double %772, double* %769, align 1
  %.cast = bitcast double %772 to <2 x i32>
  %773 = extractelement <2 x i32> %.cast, i32 0
  store i32 %773, i32* %427, align 1
  %774 = extractelement <2 x i32> %.cast, i32 1
  store i32 %774, i32* %606, align 1
  %775 = extractelement <2 x i32> %771, i32 0
  store i32 %775, i32* %608, align 1
  %776 = extractelement <2 x i32> %771, i32 1
  store i32 %776, i32* %610, align 1
  store i8 1, i8* %AL.i948, align 1
  %777 = add i64 %754, -83680
  %778 = add i64 %754, 40
  %779 = load i64, i64* %6, align 8
  %780 = add i64 %779, -8
  %781 = inttoptr i64 %780 to i64*
  store i64 %778, i64* %781, align 8
  store i64 %780, i64* %6, align 8
  store i64 %777, i64* %3, align 8
  %782 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41538b)
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -16480
  %785 = load i32, i32* %EAX.i707, align 4
  %786 = load i64, i64* %3, align 8
  %787 = add i64 %786, 6
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %784 to i32*
  store i32 %785, i32* %788, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4153be

block_.L_4153be:                                  ; preds = %block_.L_415371, %block_41537f
  %789 = phi i64 [ %736, %block_.L_415371 ], [ %.pre65, %block_41537f ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_415371 ], [ %782, %block_41537f ]
  %790 = add i64 %789, 5
  br label %block_.L_4153c3

block_.L_4153c3:                                  ; preds = %block_4153d1, %block_.L_4153be
  %storemerge30 = phi i64 [ %790, %block_.L_4153be ], [ %867, %block_4153d1 ]
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -24
  %793 = add i64 %storemerge30, 4
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i64*
  %795 = load i64, i64* %794, align 8
  store i64 %795, i64* %RAX.i126, align 8
  %796 = add i64 %791, -8
  %797 = add i64 %storemerge30, 8
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  %800 = sub i64 %795, %799
  %801 = icmp ult i64 %795, %799
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %12, align 1
  %803 = trunc i64 %800 to i32
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %13, align 1
  %809 = xor i64 %799, %795
  %810 = xor i64 %809, %800
  %811 = lshr i64 %810, 4
  %812 = trunc i64 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %14, align 1
  %814 = icmp eq i64 %800, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %15, align 1
  %816 = lshr i64 %800, 63
  %817 = trunc i64 %816 to i8
  store i8 %817, i8* %16, align 1
  %818 = lshr i64 %795, 63
  %819 = lshr i64 %799, 63
  %820 = xor i64 %819, %818
  %821 = xor i64 %816, %818
  %822 = add nuw nsw i64 %821, %820
  %823 = icmp eq i64 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %17, align 1
  %.v91 = select i1 %814, i64 49, i64 14
  %825 = add i64 %storemerge30, %.v91
  store i64 %825, i64* %3, align 8
  br i1 %814, label %block_.L_4153f4, label %block_4153d1

block_4153d1:                                     ; preds = %block_.L_4153c3
  store i64 0, i64* %RSI.i415, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %826 = add i64 %825, 6
  store i64 %826, i64* %3, align 8
  %827 = load i64, i64* %794, align 8
  %828 = add i64 %827, 32
  store i64 %828, i64* %RAX.i126, align 8
  %829 = icmp ugt i64 %827, -33
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %12, align 1
  %831 = trunc i64 %828 to i32
  %832 = and i32 %831, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %13, align 1
  %837 = xor i64 %828, %827
  %838 = lshr i64 %837, 4
  %839 = trunc i64 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %14, align 1
  %841 = icmp eq i64 %828, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %15, align 1
  %843 = lshr i64 %828, 63
  %844 = trunc i64 %843 to i8
  store i8 %844, i8* %16, align 1
  %845 = lshr i64 %827, 63
  %846 = xor i64 %843, %845
  %847 = add nuw nsw i64 %846, %843
  %848 = icmp eq i64 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %17, align 1
  store i64 %828, i64* %RDI.i575, align 8
  %850 = add i64 %825, -35889
  %851 = add i64 %825, 18
  %852 = load i64, i64* %6, align 8
  %853 = add i64 %852, -8
  %854 = inttoptr i64 %853 to i64*
  store i64 %851, i64* %854, align 8
  store i64 %853, i64* %6, align 8
  store i64 %850, i64* %3, align 8
  %call2_4153de = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %850, %struct.Memory* %MEMORY.7)
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -24
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, 4
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %856 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i126, align 8
  %861 = add i64 %860, 24
  %862 = add i64 %857, 8
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RAX.i126, align 8
  %865 = add i64 %857, 12
  store i64 %865, i64* %3, align 8
  store i64 %864, i64* %859, align 8
  %866 = load i64, i64* %3, align 8
  %867 = add i64 %866, -44
  %868 = add i64 %866, 5
  store i64 %868, i64* %3, align 8
  br label %block_.L_4153c3

block_.L_4153f4:                                  ; preds = %block_.L_4153c3
  %869 = add i64 %825, 4
  store i64 %869, i64* %3, align 8
  %870 = load i64, i64* %798, align 8
  store i64 %870, i64* %RAX.i126, align 8
  %871 = add i64 %870, 4
  %872 = add i64 %825, 8
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  store i8 0, i8* %12, align 1
  %875 = and i32 %874, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %880 = icmp eq i32 %874, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %15, align 1
  %882 = lshr i32 %874, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v92 = select i1 %880, i64 14, i64 918
  %884 = add i64 %825, %.v92
  store i64 %884, i64* %3, align 8
  br i1 %880, label %block_415402, label %block_.L_41578a

block_415402:                                     ; preds = %block_.L_4153f4
  store i64 ptrtoint (%G__0x428f8a_type* @G__0x428f8a to i64), i64* %RDI.i575, align 8
  %885 = add i64 %884, 14
  store i64 %885, i64* %3, align 8
  %886 = load i64, i64* %798, align 8
  store i64 %886, i64* %RAX.i126, align 8
  %887 = add i64 %884, 17
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i8*
  store i8 1, i8* %888, align 1
  %889 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i948, align 1
  %890 = add i64 %889, -83811
  %891 = add i64 %889, 7
  %892 = load i64, i64* %6, align 8
  %893 = add i64 %892, -8
  %894 = inttoptr i64 %893 to i64*
  store i64 %891, i64* %894, align 8
  store i64 %893, i64* %6, align 8
  store i64 %890, i64* %3, align 8
  %895 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.7)
  %896 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x428fa1_type* @G__0x428fa1 to i64), i64* %RDI.i575, align 8
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -16484
  %899 = load i32, i32* %EAX.i707, align 4
  %900 = add i64 %896, 16
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %898 to i32*
  store i32 %899, i32* %901, align 4
  %902 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i948, align 1
  %903 = add i64 %902, -83834
  %904 = add i64 %902, 7
  %905 = load i64, i64* %6, align 8
  %906 = add i64 %905, -8
  %907 = inttoptr i64 %906 to i64*
  store i64 %904, i64* %907, align 8
  store i64 %906, i64* %6, align 8
  store i64 %903, i64* %3, align 8
  %908 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %895)
  %909 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i207, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 8192, i64* %RDX.i404, align 8
  %910 = load i64, i64* %RBP.i, align 8
  %911 = add i64 %910, -16416
  store i64 %911, i64* %RSI.i415, align 8
  %912 = add i64 %910, -8224
  store i64 %912, i64* %455, align 8
  %913 = add i64 %910, -16496
  %914 = add i64 %909, 30
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i64*
  store i64 8192, i64* %915, align 8
  %916 = load i64, i64* %455, align 8
  %917 = load i64, i64* %3, align 8
  store i64 %916, i64* %RDI.i575, align 8
  %918 = load i64, i64* %RBP.i, align 8
  %919 = add i64 %918, -16504
  %920 = load i64, i64* %RSI.i415, align 8
  %921 = add i64 %917, 10
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %919 to i64*
  store i64 %920, i64* %922, align 8
  %923 = load i32, i32* %ECX.i, align 4
  %924 = zext i32 %923 to i64
  %925 = load i64, i64* %3, align 8
  store i64 %924, i64* %RSI.i415, align 8
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -16496
  %928 = add i64 %925, 9
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %RDX.i404, align 8
  %931 = add i64 %926, -16508
  %932 = load i32, i32* %EAX.i707, align 4
  %933 = add i64 %925, 15
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i32*
  store i32 %932, i32* %934, align 4
  %935 = load i64, i64* %RBP.i, align 8
  %936 = add i64 %935, -16512
  %937 = load i32, i32* %ECX.i, align 4
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 6
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %936 to i32*
  store i32 %937, i32* %940, align 4
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, -83870
  %943 = add i64 %941, 5
  %944 = load i64, i64* %6, align 8
  %945 = add i64 %944, -8
  %946 = inttoptr i64 %945 to i64*
  store i64 %943, i64* %946, align 8
  store i64 %945, i64* %6, align 8
  store i64 %942, i64* %3, align 8
  %947 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %908)
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -16504
  %950 = load i64, i64* %3, align 8
  %951 = add i64 %950, 7
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %949 to i64*
  %953 = load i64, i64* %952, align 8
  store i64 %953, i64* %RDI.i575, align 8
  %954 = add i64 %948, -16512
  %955 = add i64 %950, 13
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RSI.i415, align 8
  %959 = add i64 %948, -16496
  %960 = add i64 %950, 20
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RDX.i404, align 8
  %963 = add i64 %950, -83875
  %964 = add i64 %950, 25
  %965 = load i64, i64* %6, align 8
  %966 = add i64 %965, -8
  %967 = inttoptr i64 %966 to i64*
  store i64 %964, i64* %967, align 8
  store i64 %966, i64* %6, align 8
  store i64 %963, i64* %3, align 8
  %968 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %947)
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, 11
  store i64 %970, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %971 = bitcast i64* %6 to i64**
  br label %block_.L_415497

block_.L_415497:                                  ; preds = %block_.L_415631, %block_415402
  %972 = phi i32 [ 1, %block_415402 ], [ %1348, %block_.L_415631 ]
  %973 = phi i64 [ %970, %block_415402 ], [ %1390, %block_.L_415631 ]
  %MEMORY.9 = phi %struct.Memory* [ %968, %block_415402 ], [ %call2_4155f6, %block_.L_415631 ]
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -24
  %976 = add i64 %973, 4
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RAX.i126, align 8
  %979 = add i64 %978, 2
  %980 = add i64 %973, 8
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i8*
  %982 = load i8, i8* %981, align 1
  store i8 0, i8* %12, align 1
  %983 = zext i8 %982 to i32
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %988 = icmp eq i8 %982, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %15, align 1
  %990 = lshr i8 %982, 7
  store i8 %990, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v84 = select i1 %988, i64 426, i64 14
  %991 = add i64 %973, %.v84
  store i64 %991, i64* %3, align 8
  br i1 %988, label %block_.L_415641, label %block_4154a5

block_4154a5:                                     ; preds = %block_.L_415497
  store i64 0, i64* %RCX.i207, align 8
  %992 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %993 = icmp eq i32 %992, 0
  %994 = zext i1 %993 to i64
  store i64 %994, i64* %RAX.i126, align 8
  %995 = zext i1 %993 to i32
  %996 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  %997 = sub i32 %995, %996
  %998 = icmp ult i32 %995, %996
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %12, align 1
  %1000 = and i32 %997, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %13, align 1
  %1005 = xor i32 %996, %997
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %14, align 1
  %1009 = icmp eq i32 %997, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %15, align 1
  %1011 = lshr i32 %997, 31
  %1012 = trunc i32 %1011 to i8
  store i8 %1012, i8* %16, align 1
  %1013 = lshr i32 %996, 31
  %1014 = add nuw nsw i32 %1011, %1013
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %17, align 1
  %.v = select i1 %1009, i64 31, i64 101
  %1017 = add i64 %991, %.v
  %1018 = add i64 %974, -16420
  %1019 = add i64 %1017, 10
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  store i32 0, i32* %1020, align 4
  %.pre66 = load i64, i64* %3, align 8
  br i1 %1009, label %block_.L_4154ce.preheader, label %block_.L_415514.preheader

block_.L_415514.preheader:                        ; preds = %block_4154a5
  br label %block_.L_415514

block_.L_4154ce.preheader:                        ; preds = %block_4154a5
  br label %block_.L_4154ce

block_.L_4154ce:                                  ; preds = %block_.L_4154ce.preheader, %block_4154f1
  %1021 = phi i64 [ %1104, %block_4154f1 ], [ %.pre66, %block_.L_4154ce.preheader ]
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -24
  %1024 = add i64 %1021, 4
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  store i64 %1026, i64* %RAX.i126, align 8
  %1027 = add i64 %1026, 16
  %1028 = add i64 %1021, 8
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RAX.i126, align 8
  %1031 = add i64 %1022, -16420
  %1032 = add i64 %1021, 15
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sext i32 %1034 to i64
  store i64 %1035, i64* %RCX.i207, align 8
  %1036 = shl nsw i64 %1035, 3
  %1037 = add i64 %1036, %1030
  %1038 = add i64 %1021, 19
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1037 to i64*
  %1040 = load i64, i64* %1039, align 8
  store i64 %1040, i64* %RAX.i126, align 8
  %1041 = add i64 %1040, 4
  %1042 = add i64 %1021, 22
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RDX.i404, align 8
  %1046 = add i64 %1021, 26
  store i64 %1046, i64* %3, align 8
  %1047 = load i64, i64* %1025, align 8
  store i64 %1047, i64* %RAX.i126, align 8
  %1048 = add i64 %1047, 4
  %1049 = add i64 %1021, 29
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = sub i32 %1044, %1051
  %1053 = icmp ult i32 %1044, %1051
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %12, align 1
  %1055 = and i32 %1052, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %13, align 1
  %1060 = xor i32 %1051, %1044
  %1061 = xor i32 %1060, %1052
  %1062 = lshr i32 %1061, 4
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  store i8 %1064, i8* %14, align 1
  %1065 = icmp eq i32 %1052, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %15, align 1
  %1067 = lshr i32 %1052, 31
  %1068 = trunc i32 %1067 to i8
  store i8 %1068, i8* %16, align 1
  %1069 = lshr i32 %1044, 31
  %1070 = lshr i32 %1051, 31
  %1071 = xor i32 %1070, %1069
  %1072 = xor i32 %1067, %1069
  %1073 = add nuw nsw i32 %1072, %1071
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %17, align 1
  %.v97 = select i1 %1065, i64 55, i64 35
  %1076 = add i64 %1021, %.v97
  store i64 %1076, i64* %3, align 8
  br i1 %1065, label %block_.L_415505, label %block_4154f1

block_4154f1:                                     ; preds = %block_.L_4154ce
  %1077 = add i64 %1076, 6
  store i64 %1077, i64* %3, align 8
  %1078 = load i32, i32* %1033, align 4
  %1079 = add i32 %1078, 1
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RAX.i126, align 8
  %1081 = icmp eq i32 %1078, -1
  %1082 = icmp eq i32 %1079, 0
  %1083 = or i1 %1081, %1082
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %12, align 1
  %1085 = and i32 %1079, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %13, align 1
  %1090 = xor i32 %1079, %1078
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  store i8 %1093, i8* %14, align 1
  %1094 = zext i1 %1082 to i8
  store i8 %1094, i8* %15, align 1
  %1095 = lshr i32 %1079, 31
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %16, align 1
  %1097 = lshr i32 %1078, 31
  %1098 = xor i32 %1095, %1097
  %1099 = add nuw nsw i32 %1098, %1095
  %1100 = icmp eq i32 %1099, 2
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %17, align 1
  %1102 = add i64 %1076, 15
  store i64 %1102, i64* %3, align 8
  store i32 %1079, i32* %1033, align 4
  %1103 = load i64, i64* %3, align 8
  %1104 = add i64 %1103, -50
  store i64 %1104, i64* %3, align 8
  br label %block_.L_4154ce

block_.L_415505:                                  ; preds = %block_.L_4154ce
  %1105 = add i64 %1076, 75
  br label %block_.L_415550

block_.L_415514:                                  ; preds = %block_.L_415514.preheader, %block_415537
  %1106 = phi i64 [ %1189, %block_415537 ], [ %.pre66, %block_.L_415514.preheader ]
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -24
  %1109 = add i64 %1106, 4
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RAX.i126, align 8
  %1112 = add i64 %1111, 16
  %1113 = add i64 %1106, 8
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %RAX.i126, align 8
  %1116 = add i64 %1107, -16420
  %1117 = add i64 %1106, 15
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  store i64 %1120, i64* %RCX.i207, align 8
  %1121 = shl nsw i64 %1120, 3
  %1122 = add i64 %1121, %1115
  %1123 = add i64 %1106, 19
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RAX.i126, align 8
  %1126 = add i64 %1125, 8
  %1127 = add i64 %1106, 22
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RDX.i404, align 8
  %1131 = add i64 %1106, 26
  store i64 %1131, i64* %3, align 8
  %1132 = load i64, i64* %1110, align 8
  store i64 %1132, i64* %RAX.i126, align 8
  %1133 = add i64 %1132, 8
  %1134 = add i64 %1106, 29
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sub i32 %1129, %1136
  %1138 = icmp ult i32 %1129, %1136
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %12, align 1
  %1140 = and i32 %1137, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %13, align 1
  %1145 = xor i32 %1136, %1129
  %1146 = xor i32 %1145, %1137
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %14, align 1
  %1150 = icmp eq i32 %1137, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %15, align 1
  %1152 = lshr i32 %1137, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %16, align 1
  %1154 = lshr i32 %1129, 31
  %1155 = lshr i32 %1136, 31
  %1156 = xor i32 %1155, %1154
  %1157 = xor i32 %1152, %1154
  %1158 = add nuw nsw i32 %1157, %1156
  %1159 = icmp eq i32 %1158, 2
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %17, align 1
  %.v95 = select i1 %1150, i64 55, i64 35
  %1161 = add i64 %1106, %.v95
  store i64 %1161, i64* %3, align 8
  br i1 %1150, label %block_.L_41554b, label %block_415537

block_415537:                                     ; preds = %block_.L_415514
  %1162 = add i64 %1161, 6
  store i64 %1162, i64* %3, align 8
  %1163 = load i32, i32* %1118, align 4
  %1164 = add i32 %1163, 1
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RAX.i126, align 8
  %1166 = icmp eq i32 %1163, -1
  %1167 = icmp eq i32 %1164, 0
  %1168 = or i1 %1166, %1167
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %12, align 1
  %1170 = and i32 %1164, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %13, align 1
  %1175 = xor i32 %1164, %1163
  %1176 = lshr i32 %1175, 4
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %14, align 1
  %1179 = zext i1 %1167 to i8
  store i8 %1179, i8* %15, align 1
  %1180 = lshr i32 %1164, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %16, align 1
  %1182 = lshr i32 %1163, 31
  %1183 = xor i32 %1180, %1182
  %1184 = add nuw nsw i32 %1183, %1180
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %17, align 1
  %1187 = add i64 %1161, 15
  store i64 %1187, i64* %3, align 8
  store i32 %1164, i32* %1118, align 4
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, -50
  store i64 %1189, i64* %3, align 8
  br label %block_.L_415514

block_.L_41554b:                                  ; preds = %block_.L_415514
  %1190 = add i64 %1161, 5
  store i64 %1190, i64* %3, align 8
  br label %block_.L_415550

block_.L_415550:                                  ; preds = %block_.L_41554b, %block_.L_415505
  %1191 = phi i64 [ %1022, %block_.L_415505 ], [ %1107, %block_.L_41554b ]
  %storemerge31 = phi i64 [ %1105, %block_.L_415505 ], [ %1190, %block_.L_41554b ]
  %1192 = add i64 %1191, -8224
  store i64 %1192, i64* %RDI.i575, align 8
  %1193 = add i64 %1191, -24
  %1194 = add i64 %storemerge31, 11
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i64*
  %1196 = load i64, i64* %1195, align 8
  store i64 %1196, i64* %RAX.i126, align 8
  %1197 = add i64 %1196, 16
  %1198 = add i64 %storemerge31, 15
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i64*
  %1200 = load i64, i64* %1199, align 8
  store i64 %1200, i64* %RAX.i126, align 8
  %1201 = add i64 %1191, -16420
  %1202 = add i64 %storemerge31, 22
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = sext i32 %1204 to i64
  store i64 %1205, i64* %RCX.i207, align 8
  %1206 = shl nsw i64 %1205, 3
  %1207 = add i64 %1206, %1200
  %1208 = add i64 %storemerge31, 26
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i64*
  %1210 = load i64, i64* %1209, align 8
  store i64 %1210, i64* %RAX.i126, align 8
  %1211 = add i64 %storemerge31, 30
  store i64 %1211, i64* %3, align 8
  store i64 %1210, i64* %1195, align 8
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -24
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, 4
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1213 to i64*
  %1217 = load i64, i64* %1216, align 8
  %1218 = add i64 %1217, 32
  store i64 %1218, i64* %RAX.i126, align 8
  %1219 = icmp ugt i64 %1217, -33
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %12, align 1
  %1221 = trunc i64 %1218 to i32
  %1222 = and i32 %1221, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %13, align 1
  %1227 = xor i64 %1218, %1217
  %1228 = lshr i64 %1227, 4
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %14, align 1
  %1231 = icmp eq i64 %1218, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %15, align 1
  %1233 = lshr i64 %1218, 63
  %1234 = trunc i64 %1233 to i8
  store i8 %1234, i8* %16, align 1
  %1235 = lshr i64 %1217, 63
  %1236 = xor i64 %1233, %1235
  %1237 = add nuw nsw i64 %1236, %1233
  %1238 = icmp eq i64 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %17, align 1
  %1240 = inttoptr i64 %1218 to i64*
  %1241 = add i64 %1214, 11
  store i64 %1241, i64* %3, align 8
  %1242 = load i64, i64* %1240, align 8
  store i64 %1242, i64* %RCX.i207, align 8
  %1243 = load i64*, i64** %971, align 8
  %1244 = add i64 %1214, 15
  store i64 %1244, i64* %3, align 8
  store i64 %1242, i64* %1243, align 8
  %1245 = load i64, i64* %RAX.i126, align 8
  %1246 = add i64 %1245, 8
  %1247 = load i64, i64* %3, align 8
  %1248 = add i64 %1247, 4
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1246 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1250, i64* %RCX.i207, align 8
  %1251 = load i64, i64* %6, align 8
  %1252 = add i64 %1251, 8
  %1253 = add i64 %1247, 9
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i64*
  store i64 %1250, i64* %1254, align 8
  %1255 = load i64, i64* %RAX.i126, align 8
  %1256 = add i64 %1255, 16
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 4
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1256 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RAX.i126, align 8
  %1261 = load i64, i64* %6, align 8
  %1262 = add i64 %1261, 16
  %1263 = add i64 %1257, 9
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i64*
  store i64 %1260, i64* %1264, align 8
  %1265 = load i64, i64* %3, align 8
  %1266 = add i64 %1265, 52225
  %1267 = add i64 %1265, 5
  %1268 = load i64, i64* %6, align 8
  %1269 = add i64 %1268, -8
  %1270 = inttoptr i64 %1269 to i64*
  store i64 %1267, i64* %1270, align 8
  store i64 %1269, i64* %6, align 8
  store i64 %1266, i64* %3, align 8
  %call2_41558f = tail call %struct.Memory* @sub_422190.comp_to_coord(%struct.State* nonnull %0, i64 %1266, %struct.Memory* %MEMORY.9)
  %1271 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x428fa6_type* @G__0x428fa6 to i64), i64* %RDI.i575, align 8
  %1272 = load i64, i64* %RBP.i, align 8
  %1273 = add i64 %1272, -8224
  store i64 %1273, i64* %RSI.i415, align 8
  store i8 0, i8* %AL.i948, align 1
  %1274 = add i64 %1271, -84196
  %1275 = add i64 %1271, 24
  %1276 = load i64, i64* %6, align 8
  %1277 = add i64 %1276, -8
  %1278 = inttoptr i64 %1277 to i64*
  store i64 %1275, i64* %1278, align 8
  store i64 %1277, i64* %6, align 8
  store i64 %1274, i64* %3, align 8
  %1279 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.9)
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -8224
  %1282 = load i64, i64* %3, align 8
  store i64 %1281, i64* %RSI.i415, align 8
  %1283 = add i64 %1280, -16416
  store i64 %1283, i64* %RDI.i575, align 8
  %1284 = add i64 %1280, -16516
  %1285 = load i32, i32* %EAX.i707, align 4
  %1286 = add i64 %1282, 20
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1284 to i32*
  store i32 %1285, i32* %1287, align 4
  %1288 = load i64, i64* %3, align 8
  %1289 = add i64 %1288, -83968
  %1290 = add i64 %1288, 5
  %1291 = load i64, i64* %6, align 8
  %1292 = add i64 %1291, -8
  %1293 = inttoptr i64 %1292 to i64*
  store i64 %1290, i64* %1293, align 8
  store i64 %1292, i64* %6, align 8
  store i64 %1289, i64* %3, align 8
  %1294 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %1279)
  %1295 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x429cd1_type* @G__0x429cd1 to i64), i64* %RSI.i415, align 8
  %1296 = load i64, i64* %RBP.i, align 8
  %1297 = add i64 %1296, -16416
  store i64 %1297, i64* %RDI.i575, align 8
  %1298 = add i64 %1296, -16528
  %1299 = load i64, i64* %RAX.i126, align 8
  %1300 = add i64 %1295, 24
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1298 to i64*
  store i64 %1299, i64* %1301, align 8
  %1302 = load i64, i64* %3, align 8
  %1303 = add i64 %1302, -83997
  %1304 = add i64 %1302, 5
  %1305 = load i64, i64* %6, align 8
  %1306 = add i64 %1305, -8
  %1307 = inttoptr i64 %1306 to i64*
  store i64 %1304, i64* %1307, align 8
  store i64 %1306, i64* %6, align 8
  store i64 %1303, i64* %3, align 8
  %1308 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %1294)
  %1309 = load i64, i64* %3, align 8
  store i64 0, i64* %RSI.i415, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1310 = load i64, i64* %RBP.i, align 8
  %1311 = add i64 %1310, -24
  %1312 = add i64 %1309, 6
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  %1315 = add i64 %1314, 32
  store i64 %1315, i64* %RCX.i207, align 8
  %1316 = icmp ugt i64 %1314, -33
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %12, align 1
  %1318 = trunc i64 %1315 to i32
  %1319 = and i32 %1318, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %13, align 1
  %1324 = xor i64 %1315, %1314
  %1325 = lshr i64 %1324, 4
  %1326 = trunc i64 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %14, align 1
  %1328 = icmp eq i64 %1315, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %15, align 1
  %1330 = lshr i64 %1315, 63
  %1331 = trunc i64 %1330 to i8
  store i8 %1331, i8* %16, align 1
  %1332 = lshr i64 %1314, 63
  %1333 = xor i64 %1330, %1332
  %1334 = add nuw nsw i64 %1333, %1330
  %1335 = icmp eq i64 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %17, align 1
  store i64 %1315, i64* %RDI.i575, align 8
  %1337 = add i64 %1310, -16536
  %1338 = load i64, i64* %RAX.i126, align 8
  %1339 = add i64 %1309, 20
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1337 to i64*
  store i64 %1338, i64* %1340, align 8
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, -40646
  %1343 = add i64 %1341, 5
  %1344 = load i64, i64* %6, align 8
  %1345 = add i64 %1344, -8
  %1346 = inttoptr i64 %1345 to i64*
  store i64 %1343, i64* %1346, align 8
  store i64 %1345, i64* %6, align 8
  store i64 %1342, i64* %3, align 8
  %call2_4155f6 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1342, %struct.Memory* %1308)
  %1347 = load i64, i64* %3, align 8
  %1348 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1349 = add i32 %1348, -1
  %1350 = icmp eq i32 %1348, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %12, align 1
  %1352 = and i32 %1349, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %13, align 1
  %1357 = xor i32 %1349, %1348
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %14, align 1
  %1361 = icmp eq i32 %1349, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %15, align 1
  %1363 = lshr i32 %1349, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %16, align 1
  %1365 = lshr i32 %1348, 31
  %1366 = xor i32 %1363, %1365
  %1367 = add nuw nsw i32 %1366, %1365
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %17, align 1
  %.v96 = select i1 %1361, i64 14, i64 54
  %1370 = add i64 %1347, %.v96
  store i64 %1370, i64* %3, align 8
  br i1 %1361, label %block_415609, label %block_.L_415631

block_415609:                                     ; preds = %block_.L_415550
  %1371 = load i64, i64* %RBP.i, align 8
  %1372 = add i64 %1371, -24
  %1373 = add i64 %1370, 4
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i64 %1375, i64* %RAX.i126, align 8
  %1376 = add i64 %1375, 32
  %1377 = add i64 %1370, 8
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  %1379 = load i64, i64* %1378, align 8
  store i64 %1379, i64* %RCX.i207, align 8
  store i64 %1379, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1380 = add i64 %1375, 40
  %1381 = add i64 %1370, 20
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RCX.i207, align 8
  store i64 %1383, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1384 = add i64 %1375, 48
  %1385 = add i64 %1370, 32
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i64*
  %1387 = load i64, i64* %1386, align 8
  store i64 %1387, i64* %RAX.i126, align 8
  %1388 = add i64 %1370, 40
  store i64 %1388, i64* %3, align 8
  store i64 %1387, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  br label %block_.L_415631

block_.L_415631:                                  ; preds = %block_.L_415550, %block_415609
  %1389 = phi i64 [ %1388, %block_415609 ], [ %1370, %block_.L_415550 ]
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  %1390 = add i64 %1389, -410
  store i64 %1390, i64* %3, align 8
  br label %block_.L_415497

block_.L_415641:                                  ; preds = %block_.L_415497
  %1391 = zext i32 %972 to i64
  store i64 %1391, i64* %RAX.i126, align 8
  %1392 = add i64 %974, -16428
  %1393 = add i64 %991, 13
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  store i32 %972, i32* %1394, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_41564e

block_.L_41564e:                                  ; preds = %block_41565c, %block_.L_415641
  %1395 = phi i64 [ %1472, %block_41565c ], [ %.pre68, %block_.L_415641 ]
  %1396 = load i64, i64* %RBP.i, align 8
  %1397 = add i64 %1396, -24
  %1398 = add i64 %1395, 4
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RAX.i126, align 8
  %1401 = add i64 %1396, -8
  %1402 = add i64 %1395, 8
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i64*
  %1404 = load i64, i64* %1403, align 8
  %1405 = sub i64 %1400, %1404
  %1406 = icmp ult i64 %1400, %1404
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %12, align 1
  %1408 = trunc i64 %1405 to i32
  %1409 = and i32 %1408, 255
  %1410 = tail call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %13, align 1
  %1414 = xor i64 %1404, %1400
  %1415 = xor i64 %1414, %1405
  %1416 = lshr i64 %1415, 4
  %1417 = trunc i64 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %14, align 1
  %1419 = icmp eq i64 %1405, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %15, align 1
  %1421 = lshr i64 %1405, 63
  %1422 = trunc i64 %1421 to i8
  store i8 %1422, i8* %16, align 1
  %1423 = lshr i64 %1400, 63
  %1424 = lshr i64 %1404, 63
  %1425 = xor i64 %1424, %1423
  %1426 = xor i64 %1421, %1423
  %1427 = add nuw nsw i64 %1426, %1425
  %1428 = icmp eq i64 %1427, 2
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %17, align 1
  %.v98 = select i1 %1419, i64 49, i64 14
  %1430 = add i64 %1395, %.v98
  store i64 %1430, i64* %3, align 8
  br i1 %1419, label %block_.L_41567f, label %block_41565c

block_41565c:                                     ; preds = %block_.L_41564e
  store i64 0, i64* %RSI.i415, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1431 = add i64 %1430, 6
  store i64 %1431, i64* %3, align 8
  %1432 = load i64, i64* %1399, align 8
  %1433 = add i64 %1432, 32
  store i64 %1433, i64* %RAX.i126, align 8
  %1434 = icmp ugt i64 %1432, -33
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %12, align 1
  %1436 = trunc i64 %1433 to i32
  %1437 = and i32 %1436, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %13, align 1
  %1442 = xor i64 %1433, %1432
  %1443 = lshr i64 %1442, 4
  %1444 = trunc i64 %1443 to i8
  %1445 = and i8 %1444, 1
  store i8 %1445, i8* %14, align 1
  %1446 = icmp eq i64 %1433, 0
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %15, align 1
  %1448 = lshr i64 %1433, 63
  %1449 = trunc i64 %1448 to i8
  store i8 %1449, i8* %16, align 1
  %1450 = lshr i64 %1432, 63
  %1451 = xor i64 %1448, %1450
  %1452 = add nuw nsw i64 %1451, %1448
  %1453 = icmp eq i64 %1452, 2
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %17, align 1
  store i64 %1433, i64* %RDI.i575, align 8
  %1455 = add i64 %1430, -36540
  %1456 = add i64 %1430, 18
  %1457 = load i64, i64* %6, align 8
  %1458 = add i64 %1457, -8
  %1459 = inttoptr i64 %1458 to i64*
  store i64 %1456, i64* %1459, align 8
  store i64 %1458, i64* %6, align 8
  store i64 %1455, i64* %3, align 8
  %call2_415669 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1455, %struct.Memory* %MEMORY.9)
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -24
  %1462 = load i64, i64* %3, align 8
  %1463 = add i64 %1462, 4
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1461 to i64*
  %1465 = load i64, i64* %1464, align 8
  store i64 %1465, i64* %RAX.i126, align 8
  %1466 = add i64 %1465, 24
  %1467 = add i64 %1462, 8
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i64*
  %1469 = load i64, i64* %1468, align 8
  store i64 %1469, i64* %RAX.i126, align 8
  %1470 = add i64 %1462, 12
  store i64 %1470, i64* %3, align 8
  store i64 %1469, i64* %1464, align 8
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, -44
  store i64 %1472, i64* %3, align 8
  br label %block_.L_41564e

block_.L_41567f:                                  ; preds = %block_.L_41564e
  %1473 = load i32, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1474 = and i32 %1473, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1479 = icmp eq i32 %1473, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %15, align 1
  %1481 = lshr i32 %1473, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v99 = select i1 %1479, i64 14, i64 106
  %1483 = add i64 %1430, %.v99
  store i64 %1483, i64* %3, align 8
  br i1 %1479, label %block_41568d, label %block_.L_4156e9

block_41568d:                                     ; preds = %block_.L_41567f
  %1484 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1485 = and i32 %1484, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1490 = icmp eq i32 %1484, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %15, align 1
  %1492 = lshr i32 %1484, 31
  %1493 = trunc i32 %1492 to i8
  store i8 %1493, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v104 = select i1 %1490, i64 92, i64 14
  %1494 = add i64 %1483, %.v104
  store i64 %1494, i64* %3, align 8
  br i1 %1490, label %block_.L_4156e9, label %block_41569b

block_41569b:                                     ; preds = %block_41568d
  %1495 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  store i8 0, i8* %12, align 1
  %1496 = and i32 %1495, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496)
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1501 = icmp eq i32 %1495, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %15, align 1
  %1503 = lshr i32 %1495, 31
  %1504 = trunc i32 %1503 to i8
  store i8 %1504, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v105 = select i1 %1501, i64 78, i64 14
  %1505 = add i64 %1494, %.v105
  store i64 %1505, i64* %3, align 8
  br i1 %1501, label %block_.L_4156e9, label %block_4156a9

block_4156a9:                                     ; preds = %block_41569b
  store i64 ptrtoint (%G__0x428faa_type* @G__0x428faa to i64), i64* %RDI.i575, align 8
  store i64 2, i64* %RAX.i126, align 8
  store i32 1, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  %1506 = add i64 %1396, -16428
  %1507 = add i64 %1505, 32
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i207, align 8
  %1511 = add i64 %1396, -16540
  %1512 = add i64 %1505, 38
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  store i32 2, i32* %1513, align 4
  %1514 = load i32, i32* %ECX.i, align 4
  %1515 = zext i32 %1514 to i64
  %1516 = load i64, i64* %3, align 8
  store i64 %1515, i64* %RAX.i126, align 8
  %1517 = sext i32 %1514 to i64
  %1518 = lshr i64 %1517, 32
  store i64 %1518, i64* %157, align 8
  %1519 = load i64, i64* %RBP.i, align 8
  %1520 = add i64 %1519, -16540
  %1521 = add i64 %1516, 9
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i32*
  %1523 = load i32, i32* %1522, align 4
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RCX.i207, align 8
  %1525 = add i64 %1516, 11
  store i64 %1525, i64* %3, align 8
  %1526 = sext i32 %1523 to i64
  %1527 = shl nuw i64 %1518, 32
  %1528 = or i64 %1527, %1515
  %1529 = sdiv i64 %1528, %1526
  %1530 = shl i64 %1529, 32
  %1531 = ashr exact i64 %1530, 32
  %1532 = icmp eq i64 %1529, %1531
  br i1 %1532, label %1535, label %1533

; <label>:1533:                                   ; preds = %block_4156a9
  %1534 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1525, %struct.Memory* %MEMORY.9)
  %.pre69 = load i32, i32* %EAX.i707, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1535:                                   ; preds = %block_4156a9
  %1536 = srem i64 %1528, %1526
  %1537 = and i64 %1529, 4294967295
  store i64 %1537, i64* %RAX.i126, align 8
  %1538 = and i64 %1536, 4294967295
  store i64 %1538, i64* %RDX.i404, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1539 = trunc i64 %1529 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1535, %1533
  %1540 = phi i64 [ %.pre70, %1533 ], [ %1525, %1535 ]
  %1541 = phi i32 [ %.pre69, %1533 ], [ %1539, %1535 ]
  %1542 = phi %struct.Memory* [ %1534, %1533 ], [ %MEMORY.9, %1535 ]
  %1543 = zext i32 %1541 to i64
  store i64 %1543, i64* %RSI.i415, align 8
  store i8 0, i8* %AL.i948, align 1
  %1544 = add i64 %1540, -84522
  %1545 = add i64 %1540, 9
  %1546 = load i64, i64* %6, align 8
  %1547 = add i64 %1546, -8
  %1548 = inttoptr i64 %1547 to i64*
  store i64 %1545, i64* %1548, align 8
  store i64 %1547, i64* %6, align 8
  store i64 %1544, i64* %3, align 8
  %1549 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1542)
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -16544
  %1552 = load i32, i32* %EAX.i707, align 4
  %1553 = load i64, i64* %3, align 8
  %1554 = add i64 %1553, 6
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1551 to i32*
  store i32 %1552, i32* %1555, align 4
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4156e9

block_.L_4156e9:                                  ; preds = %block_.L_41567f, %routine_idivl__ecx.exit, %block_41569b, %block_41568d
  %1556 = phi i64 [ %1483, %block_.L_41567f ], [ %1494, %block_41568d ], [ %1505, %block_41569b ], [ %.pre72, %routine_idivl__ecx.exit ]
  %1557 = phi i64 [ %1396, %block_.L_41567f ], [ %1396, %block_41568d ], [ %1396, %block_41569b ], [ %.pre71, %routine_idivl__ecx.exit ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.9, %block_.L_41567f ], [ %MEMORY.9, %block_41568d ], [ %MEMORY.9, %block_41569b ], [ %1549, %routine_idivl__ecx.exit ]
  %1558 = add i64 %1557, -16428
  %1559 = add i64 %1556, 7
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = add i32 %1561, -1
  %1563 = icmp eq i32 %1561, 0
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %12, align 1
  %1565 = and i32 %1562, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %13, align 1
  %1570 = xor i32 %1562, %1561
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %14, align 1
  %1574 = icmp eq i32 %1562, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %15, align 1
  %1576 = lshr i32 %1562, 31
  %1577 = trunc i32 %1576 to i8
  store i8 %1577, i8* %16, align 1
  %1578 = lshr i32 %1561, 31
  %1579 = xor i32 %1576, %1578
  %1580 = add nuw nsw i32 %1579, %1578
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %17, align 1
  %.v100 = select i1 %1574, i64 13, i64 133
  %1583 = add i64 %1556, %.v100
  store i64 %1583, i64* %3, align 8
  br i1 %1574, label %block_4156f6, label %block_.L_41576e

block_4156f6:                                     ; preds = %block_.L_4156e9
  %1584 = add i64 %1557, -8
  %1585 = add i64 %1583, 4
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RAX.i126, align 8
  %1588 = add i64 %1587, 4
  %1589 = add i64 %1583, 8
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  store i8 0, i8* %12, align 1
  %1592 = and i32 %1591, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1597 = icmp eq i32 %1591, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %15, align 1
  %1599 = lshr i32 %1591, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v101 = select i1 %1597, i64 28, i64 14
  %1601 = add i64 %1583, %.v101
  store i64 %1601, i64* %3, align 8
  br i1 %1597, label %block_.L_415712, label %block_415704

block_415704:                                     ; preds = %block_4156f6
  %1602 = add i64 %1601, 4
  store i64 %1602, i64* %3, align 8
  %1603 = load i64, i64* %1586, align 8
  store i64 %1603, i64* %RAX.i126, align 8
  %1604 = add i64 %1603, 8
  %1605 = add i64 %1601, 8
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  store i8 0, i8* %12, align 1
  %1608 = and i32 %1607, 255
  %1609 = tail call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  store i8 %1612, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1613 = icmp eq i32 %1607, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %15, align 1
  %1615 = lshr i32 %1607, 31
  %1616 = trunc i32 %1615 to i8
  store i8 %1616, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v102 = select i1 %1613, i64 14, i64 106
  %1617 = add i64 %1601, %.v102
  store i64 %1617, i64* %3, align 8
  br i1 %1613, label %block_.L_415712, label %block_.L_41576e

block_.L_415712:                                  ; preds = %block_415704, %block_4156f6
  %1618 = phi i64 [ %1617, %block_415704 ], [ %1601, %block_4156f6 ]
  %1619 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1620 = and i32 %1619, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1625 = icmp eq i32 %1619, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %15, align 1
  %1627 = lshr i32 %1619, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v103 = select i1 %1625, i64 14, i64 53
  %1629 = add i64 %1618, %.v103
  %1630 = add i64 %1629, 10
  store i64 %1630, i64* %3, align 8
  br i1 %1625, label %block_415720, label %block_.L_415747

block_415720:                                     ; preds = %block_.L_415712
  store i64 ptrtoint (%G__0x428fd3_type* @G__0x428fd3 to i64), i64* %RDI.i575, align 8
  store i8 0, i8* %AL.i948, align 1
  %1631 = add i64 %1629, -84592
  %1632 = add i64 %1629, 17
  %1633 = load i64, i64* %6, align 8
  %1634 = add i64 %1633, -8
  %1635 = inttoptr i64 %1634 to i64*
  store i64 %1632, i64* %1635, align 8
  store i64 %1634, i64* %6, align 8
  store i64 %1631, i64* %3, align 8
  %1636 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.15)
  %1637 = load i64, i64* %3, align 8
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %1638 = load i64, i64* %RBP.i, align 8
  %1639 = add i64 %1638, -16548
  %1640 = load i32, i32* %EAX.i707, align 4
  %1641 = add i64 %1637, 17
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1639 to i32*
  store i32 %1640, i32* %1642, align 4
  %1643 = load i64, i64* %3, align 8
  %1644 = add i64 %1643, 39
  store i64 %1644, i64* %3, align 8
  br label %block_.L_415769

block_.L_415747:                                  ; preds = %block_.L_415712
  store i64 ptrtoint (%G__0x428fe7_type* @G__0x428fe7 to i64), i64* %RDI.i575, align 8
  store i8 0, i8* %AL.i948, align 1
  %1645 = add i64 %1629, -84631
  %1646 = add i64 %1629, 17
  %1647 = load i64, i64* %6, align 8
  %1648 = add i64 %1647, -8
  %1649 = inttoptr i64 %1648 to i64*
  store i64 %1646, i64* %1649, align 8
  store i64 %1648, i64* %6, align 8
  store i64 %1645, i64* %3, align 8
  %1650 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.15)
  %1651 = load i64, i64* %3, align 8
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %1652 = load i64, i64* %RBP.i, align 8
  %1653 = add i64 %1652, -16552
  %1654 = load i32, i32* %EAX.i707, align 4
  %1655 = add i64 %1651, 17
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1653 to i32*
  store i32 %1654, i32* %1656, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_415769

block_.L_415769:                                  ; preds = %block_.L_415747, %block_415720
  %1657 = phi i64 [ %.pre73, %block_.L_415747 ], [ %1644, %block_415720 ]
  %MEMORY.17 = phi %struct.Memory* [ %1650, %block_.L_415747 ], [ %1636, %block_415720 ]
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %3, align 8
  br label %block_.L_41576e

block_.L_41576e:                                  ; preds = %block_415704, %block_.L_4156e9, %block_.L_415769
  %1659 = phi i64 [ %1583, %block_.L_4156e9 ], [ %1658, %block_.L_415769 ], [ %1617, %block_415704 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.15, %block_.L_4156e9 ], [ %MEMORY.17, %block_.L_415769 ], [ %MEMORY.15, %block_415704 ]
  store i64 ptrtoint (%G__0x429bef_type* @G__0x429bef to i64), i64* %RDI.i575, align 8
  store i8 0, i8* %AL.i948, align 1
  %1660 = add i64 %1659, -84670
  %1661 = add i64 %1659, 17
  %1662 = load i64, i64* %6, align 8
  %1663 = add i64 %1662, -8
  %1664 = inttoptr i64 %1663 to i64*
  store i64 %1661, i64* %1664, align 8
  store i64 %1663, i64* %6, align 8
  store i64 %1660, i64* %3, align 8
  %1665 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.18)
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -16556
  %1668 = load i32, i32* %EAX.i707, align 4
  %1669 = load i64, i64* %3, align 8
  %1670 = add i64 %1669, 6
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1667 to i32*
  store i32 %1668, i32* %1671, align 4
  %1672 = load i64, i64* %3, align 8
  %1673 = add i64 %1672, 185
  br label %block_.L_41583e

block_.L_41578a:                                  ; preds = %block_.L_4153f4
  %1674 = add i64 %884, 4
  store i64 %1674, i64* %3, align 8
  %1675 = load i64, i64* %798, align 8
  store i64 %1675, i64* %RAX.i126, align 8
  %1676 = add i64 %1675, 8
  %1677 = add i64 %884, 8
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  store i8 0, i8* %12, align 1
  %1680 = and i32 %1679, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1685 = icmp eq i32 %1679, 0
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %15, align 1
  %1687 = lshr i32 %1679, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v93 = select i1 %1685, i64 14, i64 97
  %1689 = add i64 %884, %.v93
  %1690 = add i64 %1689, 10
  store i64 %1690, i64* %3, align 8
  br i1 %1685, label %block_415798, label %block_.L_4157eb

block_415798:                                     ; preds = %block_.L_41578a
  store i64 ptrtoint (%G__0x428ffb_type* @G__0x428ffb to i64), i64* %RDI.i575, align 8
  %1691 = add i64 %1689, 14
  store i64 %1691, i64* %3, align 8
  %1692 = load i64, i64* %798, align 8
  store i64 %1692, i64* %RAX.i126, align 8
  %1693 = add i64 %1689, 17
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i8*
  store i8 0, i8* %1694, align 1
  %1695 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i948, align 1
  %1696 = add i64 %1695, -84729
  %1697 = add i64 %1695, 7
  %1698 = load i64, i64* %6, align 8
  %1699 = add i64 %1698, -8
  %1700 = inttoptr i64 %1699 to i64*
  store i64 %1697, i64* %1700, align 8
  store i64 %1699, i64* %6, align 8
  store i64 %1696, i64* %3, align 8
  %1701 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.7)
  %1702 = load i64, i64* %3, align 8
  %1703 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %1703, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1704 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %1704, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1705 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1705, i64* %RDI.i575, align 8
  store i64 %1705, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -16560
  %1708 = load i32, i32* %EAX.i707, align 4
  %1709 = add i64 %1702, 54
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1707 to i32*
  store i32 %1708, i32* %1710, align 4
  %1711 = load i64, i64* %3, align 8
  %1712 = add i64 %1711, 83
  store i64 %1712, i64* %3, align 8
  br label %block_.L_415839

block_.L_4157eb:                                  ; preds = %block_.L_41578a
  store i64 ptrtoint (%G__0x429013_type* @G__0x429013 to i64), i64* %RDI.i575, align 8
  %1713 = add i64 %1689, 14
  store i64 %1713, i64* %3, align 8
  %1714 = load i64, i64* %798, align 8
  store i64 %1714, i64* %RAX.i126, align 8
  %1715 = add i64 %1689, 17
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i8*
  store i8 2, i8* %1716, align 1
  %1717 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i948, align 1
  %1718 = add i64 %1717, -84812
  %1719 = add i64 %1717, 7
  %1720 = load i64, i64* %6, align 8
  %1721 = add i64 %1720, -8
  %1722 = inttoptr i64 %1721 to i64*
  store i64 %1719, i64* %1722, align 8
  store i64 %1721, i64* %6, align 8
  store i64 %1718, i64* %3, align 8
  %1723 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.7)
  %1724 = load i64, i64* %3, align 8
  %1725 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %1725, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1726 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %1726, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1727 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1727, i64* %RDI.i575, align 8
  store i64 %1727, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %1728 = load i64, i64* %RBP.i, align 8
  %1729 = add i64 %1728, -16564
  %1730 = load i32, i32* %EAX.i707, align 4
  %1731 = add i64 %1724, 54
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1729 to i32*
  store i32 %1730, i32* %1732, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_415839

block_.L_415839:                                  ; preds = %block_.L_4157eb, %block_415798
  %1733 = phi i64 [ %.pre74, %block_.L_4157eb ], [ %1712, %block_415798 ]
  %MEMORY.19 = phi %struct.Memory* [ %1723, %block_.L_4157eb ], [ %1701, %block_415798 ]
  %1734 = add i64 %1733, 5
  store i64 %1734, i64* %3, align 8
  br label %block_.L_41583e

block_.L_41583e:                                  ; preds = %block_.L_415839, %block_.L_41576e
  %storemerge32 = phi i64 [ %1673, %block_.L_41576e ], [ %1734, %block_.L_415839 ]
  %MEMORY.20 = phi %struct.Memory* [ %1665, %block_.L_41576e ], [ %MEMORY.19, %block_.L_415839 ]
  %1735 = add i64 %storemerge32, ptrtoint (%G_0x12b52__rip__type* @G_0x12b52__rip_ to i64)
  %1736 = add i64 %storemerge32, 8
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  store i32 %1738, i32* %427, align 1
  store float 0.000000e+00, float* %429, align 1
  store float 0.000000e+00, float* %431, align 1
  store float 0.000000e+00, float* %433, align 1
  %1739 = load i64, i64* %RBP.i, align 8
  %1740 = add i64 %1739, -16424
  %1741 = add i64 %storemerge32, 16
  store i64 %1741, i64* %3, align 8
  %1742 = load <2 x float>, <2 x float>* %526, align 1
  %1743 = extractelement <2 x float> %1742, i32 0
  %1744 = inttoptr i64 %1740 to float*
  store float %1743, float* %1744, align 4
  %1745 = load i64, i64* %RBP.i, align 8
  %1746 = add i64 %1745, -16420
  %1747 = load i64, i64* %3, align 8
  %1748 = add i64 %1747, 10
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1746 to i32*
  store i32 0, i32* %1749, align 4
  %1750 = bitcast [32 x %union.VectorReg]* %420 to <2 x i32>*
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_415858

block_.L_415858:                                  ; preds = %block_.L_41593f, %block_.L_41583e
  %1751 = phi i64 [ %.pre75, %block_.L_41583e ], [ %2047, %block_.L_41593f ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_41583e ], [ %1912, %block_.L_41593f ]
  %1752 = load i64, i64* %RBP.i, align 8
  %1753 = add i64 %1752, -16420
  %1754 = add i64 %1751, 6
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i126, align 8
  %1758 = add i64 %1752, -8
  %1759 = add i64 %1751, 10
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  %1761 = load i64, i64* %1760, align 8
  store i64 %1761, i64* %RCX.i207, align 8
  %1762 = add i64 %1761, 1
  %1763 = add i64 %1751, 14
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i8*
  %1765 = load i8, i8* %1764, align 1
  %1766 = zext i8 %1765 to i64
  store i64 %1766, i64* %RDX.i404, align 8
  %1767 = zext i8 %1765 to i32
  %1768 = sub i32 %1756, %1767
  %1769 = icmp ult i32 %1756, %1767
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %12, align 1
  %1771 = and i32 %1768, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %13, align 1
  %1776 = xor i32 %1767, %1756
  %1777 = xor i32 %1776, %1768
  %1778 = lshr i32 %1777, 4
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  store i8 %1780, i8* %14, align 1
  %1781 = icmp eq i32 %1768, 0
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %15, align 1
  %1783 = lshr i32 %1768, 31
  %1784 = trunc i32 %1783 to i8
  store i8 %1784, i8* %16, align 1
  %1785 = lshr i32 %1756, 31
  %1786 = xor i32 %1783, %1785
  %1787 = add nuw nsw i32 %1786, %1785
  %1788 = icmp eq i32 %1787, 2
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %17, align 1
  %1790 = icmp ne i8 %1784, 0
  %1791 = xor i1 %1790, %1788
  %.v86 = select i1 %1791, i64 22, i64 321
  %1792 = add i64 %1751, %.v86
  store i64 %1792, i64* %3, align 8
  br i1 %1791, label %block_41586e, label %block_.L_415999.loopexit

block_41586e:                                     ; preds = %block_.L_415858
  %1793 = add i64 %1792, 4
  store i64 %1793, i64* %3, align 8
  %1794 = load i64, i64* %1760, align 8
  store i64 %1794, i64* %RAX.i126, align 8
  %1795 = add i64 %1794, 16
  %1796 = add i64 %1792, 8
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %RAX.i126, align 8
  %1799 = add i64 %1792, 15
  store i64 %1799, i64* %3, align 8
  %1800 = load i32, i32* %1755, align 4
  %1801 = sext i32 %1800 to i64
  store i64 %1801, i64* %RCX.i207, align 8
  %1802 = shl nsw i64 %1801, 3
  %1803 = add i64 %1802, %1798
  %1804 = add i64 %1792, 19
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i64*
  %1806 = load i64, i64* %1805, align 8
  store i64 %1806, i64* %RAX.i126, align 8
  %1807 = add i64 %1806, 4
  %1808 = add i64 %1792, 23
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1807 to i32*
  %1810 = load i32, i32* %1809, align 4
  store i8 0, i8* %12, align 1
  %1811 = and i32 %1810, 255
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1816 = icmp eq i32 %1810, 0
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %15, align 1
  %1818 = lshr i32 %1810, 31
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v85 = select i1 %1816, i64 214, i64 29
  %1820 = add i64 %1792, %.v85
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %3, align 8
  %1822 = load i64, i64* %1760, align 8
  store i64 %1822, i64* %RAX.i126, align 8
  %1823 = add i64 %1822, 16
  %1824 = add i64 %1820, 8
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RAX.i126, align 8
  %1827 = add i64 %1820, 15
  store i64 %1827, i64* %3, align 8
  %1828 = load i32, i32* %1755, align 4
  %1829 = sext i32 %1828 to i64
  store i64 %1829, i64* %RCX.i207, align 8
  %1830 = shl nsw i64 %1829, 3
  %1831 = add i64 %1830, %1826
  %1832 = add i64 %1820, 19
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RAX.i126, align 8
  br i1 %1816, label %block_.L_415944, label %block_41588b

block_41588b:                                     ; preds = %block_41586e
  %1835 = add i64 %1834, 8
  %1836 = add i64 %1820, 24
  store i64 %1836, i64* %3, align 8
  %1837 = load <2 x i32>, <2 x i32>* %1750, align 1
  %1838 = load <2 x i32>, <2 x i32>* %598, align 1
  %1839 = inttoptr i64 %1835 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = sitofp i32 %1840 to float
  store float %1841, float* %426, align 1
  %1842 = extractelement <2 x i32> %1837, i32 1
  store i32 %1842, i32* %606, align 1
  %1843 = extractelement <2 x i32> %1838, i32 0
  store i32 %1843, i32* %608, align 1
  %1844 = extractelement <2 x i32> %1838, i32 1
  store i32 %1844, i32* %610, align 1
  %1845 = add i64 %1820, 28
  store i64 %1845, i64* %3, align 8
  %1846 = load i64, i64* %1760, align 8
  store i64 %1846, i64* %RAX.i126, align 8
  %1847 = add i64 %1846, 16
  %1848 = add i64 %1820, 32
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i64*
  %1850 = load i64, i64* %1849, align 8
  store i64 %1850, i64* %RAX.i126, align 8
  %1851 = add i64 %1820, 39
  store i64 %1851, i64* %3, align 8
  %1852 = load i32, i32* %1755, align 4
  %1853 = sext i32 %1852 to i64
  store i64 %1853, i64* %RCX.i207, align 8
  %1854 = shl nsw i64 %1853, 3
  %1855 = add i64 %1854, %1850
  %1856 = add i64 %1820, 43
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  store i64 %1858, i64* %RAX.i126, align 8
  %1859 = add i64 %1858, 4
  %1860 = add i64 %1820, 48
  store i64 %1860, i64* %3, align 8
  %1861 = load <2 x i32>, <2 x i32>* %464, align 1
  %1862 = load <2 x i32>, <2 x i32>* %467, align 1
  %1863 = inttoptr i64 %1859 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = sitofp i32 %1864 to float
  store float %1865, float* %470, align 1
  %1866 = extractelement <2 x i32> %1861, i32 1
  store i32 %1866, i32* %473, align 1
  %1867 = extractelement <2 x i32> %1862, i32 0
  store i32 %1867, i32* %475, align 1
  %1868 = extractelement <2 x i32> %1862, i32 1
  store i32 %1868, i32* %478, align 1
  %1869 = load <2 x float>, <2 x float>* %526, align 1
  %1870 = load <2 x i32>, <2 x i32>* %598, align 1
  %1871 = load <2 x float>, <2 x float>* %558, align 1
  %1872 = extractelement <2 x float> %1869, i32 0
  %1873 = extractelement <2 x float> %1871, i32 0
  %1874 = fdiv float %1872, %1873
  store float %1874, float* %426, align 1
  %1875 = bitcast <2 x float> %1869 to <2 x i32>
  %1876 = extractelement <2 x i32> %1875, i32 1
  store i32 %1876, i32* %606, align 1
  %1877 = extractelement <2 x i32> %1870, i32 0
  store i32 %1877, i32* %608, align 1
  %1878 = extractelement <2 x i32> %1870, i32 1
  store i32 %1878, i32* %610, align 1
  %1879 = add i64 %1752, -16424
  %1880 = add i64 %1820, 59
  store i64 %1880, i64* %3, align 8
  %1881 = load <2 x float>, <2 x float>* %526, align 1
  %1882 = extractelement <2 x float> %1881, i32 0
  %1883 = inttoptr i64 %1879 to float*
  %1884 = load float, float* %1883, align 4
  %1885 = fcmp uno float %1882, %1884
  br i1 %1885, label %1886, label %1896

; <label>:1886:                                   ; preds = %block_41588b
  %1887 = fadd float %1882, %1884
  %1888 = bitcast float %1887 to i32
  %1889 = and i32 %1888, 2143289344
  %1890 = icmp eq i32 %1889, 2139095040
  %1891 = and i32 %1888, 4194303
  %1892 = icmp ne i32 %1891, 0
  %1893 = and i1 %1890, %1892
  br i1 %1893, label %1894, label %1902

; <label>:1894:                                   ; preds = %1886
  %1895 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1880, %struct.Memory* %MEMORY.21)
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i8, i8* %12, align 1
  %.pre78 = load i8, i8* %15, align 1
  br label %routine_ucomiss_MINUS0x4028__rbp____xmm0.exit

; <label>:1896:                                   ; preds = %block_41588b
  %1897 = fcmp ogt float %1882, %1884
  br i1 %1897, label %1902, label %1898

; <label>:1898:                                   ; preds = %1896
  %1899 = fcmp olt float %1882, %1884
  br i1 %1899, label %1902, label %1900

; <label>:1900:                                   ; preds = %1898
  %1901 = fcmp oeq float %1882, %1884
  br i1 %1901, label %1902, label %1906

; <label>:1902:                                   ; preds = %1900, %1898, %1896, %1886
  %1903 = phi i8 [ 0, %1896 ], [ 0, %1898 ], [ 1, %1900 ], [ 1, %1886 ]
  %1904 = phi i8 [ 0, %1896 ], [ 0, %1898 ], [ 0, %1900 ], [ 1, %1886 ]
  %1905 = phi i8 [ 0, %1896 ], [ 1, %1898 ], [ 0, %1900 ], [ 1, %1886 ]
  store i8 %1903, i8* %15, align 1
  store i8 %1904, i8* %13, align 1
  store i8 %1905, i8* %12, align 1
  br label %1906

; <label>:1906:                                   ; preds = %1902, %1900
  %1907 = phi i8 [ %1903, %1902 ], [ %1817, %1900 ]
  %1908 = phi i8 [ %1905, %1902 ], [ 0, %1900 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_MINUS0x4028__rbp____xmm0.exit

routine_ucomiss_MINUS0x4028__rbp____xmm0.exit:    ; preds = %1906, %1894
  %1909 = phi i8 [ %.pre78, %1894 ], [ %1907, %1906 ]
  %1910 = phi i8 [ %.pre77, %1894 ], [ %1908, %1906 ]
  %1911 = phi i64 [ %.pre76, %1894 ], [ %1880, %1906 ]
  %1912 = phi %struct.Memory* [ %1895, %1894 ], [ %MEMORY.21, %1906 ]
  %1913 = or i8 %1909, %1910
  %1914 = icmp ne i8 %1913, 0
  %.v94 = select i1 %1914, i64 121, i64 6
  %1915 = add i64 %1911, %.v94
  store i64 %1915, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br i1 %1914, label %block_.L_41593f, label %block_4158cc

block_4158cc:                                     ; preds = %routine_ucomiss_MINUS0x4028__rbp____xmm0.exit
  %1916 = add i64 %.pre79, -8
  %1917 = add i64 %1915, 4
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i126, align 8
  %1920 = add i64 %1919, 16
  %1921 = add i64 %1915, 8
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX.i126, align 8
  %1924 = add i64 %.pre79, -16420
  %1925 = add i64 %1915, 15
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = sext i32 %1927 to i64
  store i64 %1928, i64* %RCX.i207, align 8
  %1929 = shl nsw i64 %1928, 3
  %1930 = add i64 %1929, %1923
  %1931 = add i64 %1915, 19
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i64*
  %1933 = load i64, i64* %1932, align 8
  store i64 %1933, i64* %RAX.i126, align 8
  %1934 = add i64 %1933, 8
  %1935 = add i64 %1915, 24
  store i64 %1935, i64* %3, align 8
  %1936 = load <2 x i32>, <2 x i32>* %1750, align 1
  %1937 = load <2 x i32>, <2 x i32>* %598, align 1
  %1938 = inttoptr i64 %1934 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = sitofp i32 %1939 to float
  store float %1940, float* %426, align 1
  %1941 = extractelement <2 x i32> %1936, i32 1
  store i32 %1941, i32* %606, align 1
  %1942 = extractelement <2 x i32> %1937, i32 0
  store i32 %1942, i32* %608, align 1
  %1943 = extractelement <2 x i32> %1937, i32 1
  store i32 %1943, i32* %610, align 1
  %1944 = add i64 %1915, 28
  store i64 %1944, i64* %3, align 8
  %1945 = load i64, i64* %1918, align 8
  store i64 %1945, i64* %RAX.i126, align 8
  %1946 = add i64 %1945, 16
  %1947 = add i64 %1915, 32
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i64*
  %1949 = load i64, i64* %1948, align 8
  store i64 %1949, i64* %RAX.i126, align 8
  %1950 = add i64 %1915, 39
  store i64 %1950, i64* %3, align 8
  %1951 = load i32, i32* %1926, align 4
  %1952 = sext i32 %1951 to i64
  store i64 %1952, i64* %RCX.i207, align 8
  %1953 = shl nsw i64 %1952, 3
  %1954 = add i64 %1953, %1949
  %1955 = add i64 %1915, 43
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i64*
  %1957 = load i64, i64* %1956, align 8
  store i64 %1957, i64* %RAX.i126, align 8
  %1958 = add i64 %1957, 4
  %1959 = add i64 %1915, 48
  store i64 %1959, i64* %3, align 8
  %1960 = load <2 x i32>, <2 x i32>* %464, align 1
  %1961 = load <2 x i32>, <2 x i32>* %467, align 1
  %1962 = inttoptr i64 %1958 to i32*
  %1963 = load i32, i32* %1962, align 4
  %1964 = sitofp i32 %1963 to float
  store float %1964, float* %470, align 1
  %1965 = extractelement <2 x i32> %1960, i32 1
  store i32 %1965, i32* %473, align 1
  %1966 = extractelement <2 x i32> %1961, i32 0
  store i32 %1966, i32* %475, align 1
  %1967 = extractelement <2 x i32> %1961, i32 1
  store i32 %1967, i32* %478, align 1
  %1968 = load <2 x float>, <2 x float>* %526, align 1
  %1969 = load <2 x i32>, <2 x i32>* %598, align 1
  %1970 = load <2 x float>, <2 x float>* %558, align 1
  %1971 = extractelement <2 x float> %1968, i32 0
  %1972 = extractelement <2 x float> %1970, i32 0
  %1973 = fdiv float %1971, %1972
  store float %1973, float* %426, align 1
  %1974 = bitcast <2 x float> %1968 to <2 x i32>
  %1975 = extractelement <2 x i32> %1974, i32 1
  store i32 %1975, i32* %606, align 1
  %1976 = extractelement <2 x i32> %1969, i32 0
  store i32 %1976, i32* %608, align 1
  %1977 = extractelement <2 x i32> %1969, i32 1
  store i32 %1977, i32* %610, align 1
  %1978 = add i64 %.pre79, -16424
  %1979 = add i64 %1915, 60
  store i64 %1979, i64* %3, align 8
  %1980 = load <2 x float>, <2 x float>* %526, align 1
  %1981 = extractelement <2 x float> %1980, i32 0
  %1982 = inttoptr i64 %1978 to float*
  store float %1981, float* %1982, align 4
  %1983 = load i64, i64* %RBP.i, align 8
  %1984 = add i64 %1983, -8
  %1985 = load i64, i64* %3, align 8
  %1986 = add i64 %1985, 4
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1984 to i64*
  %1988 = load i64, i64* %1987, align 8
  store i64 %1988, i64* %RAX.i126, align 8
  %1989 = add i64 %1988, 16
  %1990 = add i64 %1985, 8
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i64*
  %1992 = load i64, i64* %1991, align 8
  store i64 %1992, i64* %RAX.i126, align 8
  %1993 = add i64 %1983, -16420
  %1994 = add i64 %1985, 15
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  %1997 = sext i32 %1996 to i64
  store i64 %1997, i64* %RCX.i207, align 8
  %1998 = shl nsw i64 %1997, 3
  %1999 = add i64 %1998, %1992
  %2000 = add i64 %1985, 19
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %RAX.i126, align 8
  %2003 = add i64 %2002, 32
  %2004 = add i64 %1985, 23
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i64*
  %2006 = load i64, i64* %2005, align 8
  store i64 %2006, i64* %RCX.i207, align 8
  store i64 %2006, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %2007 = add i64 %2002, 40
  %2008 = add i64 %1985, 35
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %RCX.i207, align 8
  store i64 %2010, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %2011 = add i64 %2002, 48
  %2012 = add i64 %1985, 47
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RAX.i126, align 8
  %2015 = add i64 %1985, 55
  store i64 %2015, i64* %3, align 8
  store i64 %2014, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  br label %block_.L_41593f

block_.L_41593f:                                  ; preds = %routine_ucomiss_MINUS0x4028__rbp____xmm0.exit, %block_4158cc
  %2016 = phi i64 [ %1983, %block_4158cc ], [ %.pre79, %routine_ucomiss_MINUS0x4028__rbp____xmm0.exit ]
  %2017 = phi i64 [ %2015, %block_4158cc ], [ %1915, %routine_ucomiss_MINUS0x4028__rbp____xmm0.exit ]
  %2018 = add i64 %2016, -16420
  %2019 = add i64 %2017, 76
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = add i32 %2021, 1
  %2023 = zext i32 %2022 to i64
  store i64 %2023, i64* %RAX.i126, align 8
  %2024 = icmp eq i32 %2021, -1
  %2025 = icmp eq i32 %2022, 0
  %2026 = or i1 %2024, %2025
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %12, align 1
  %2028 = and i32 %2022, 255
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  store i8 %2032, i8* %13, align 1
  %2033 = xor i32 %2022, %2021
  %2034 = lshr i32 %2033, 4
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  store i8 %2036, i8* %14, align 1
  %2037 = zext i1 %2025 to i8
  store i8 %2037, i8* %15, align 1
  %2038 = lshr i32 %2022, 31
  %2039 = trunc i32 %2038 to i8
  store i8 %2039, i8* %16, align 1
  %2040 = lshr i32 %2021, 31
  %2041 = xor i32 %2038, %2040
  %2042 = add nuw nsw i32 %2041, %2038
  %2043 = icmp eq i32 %2042, 2
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %17, align 1
  %2045 = add i64 %2017, 85
  store i64 %2045, i64* %3, align 8
  store i32 %2022, i32* %2020, align 4
  %2046 = load i64, i64* %3, align 8
  %2047 = add i64 %2046, -316
  store i64 %2047, i64* %3, align 8
  br label %block_.L_415858

block_.L_415944:                                  ; preds = %block_41586e
  %2048 = add i64 %1834, 32
  %2049 = add i64 %1820, 23
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i64*
  %2051 = load i64, i64* %2050, align 8
  store i64 %2051, i64* %RCX.i207, align 8
  store i64 %2051, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %2052 = add i64 %1834, 40
  %2053 = add i64 %1820, 35
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i64*
  %2055 = load i64, i64* %2054, align 8
  store i64 %2055, i64* %RCX.i207, align 8
  store i64 %2055, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %2056 = add i64 %1834, 48
  %2057 = add i64 %1820, 47
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i64*
  %2059 = load i64, i64* %2058, align 8
  store i64 %2059, i64* %RAX.i126, align 8
  store i64 %2059, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %2060 = add i64 %1820, 85
  store i64 %2060, i64* %3, align 8
  br label %block_.L_415999

block_.L_415999.loopexit:                         ; preds = %block_.L_415858
  %.pre80 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %.pre81 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %.pre82 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  br label %block_.L_415999

block_.L_415999:                                  ; preds = %block_.L_415999.loopexit, %block_.L_415944
  %2061 = phi i64 [ %.pre82, %block_.L_415999.loopexit ], [ %2059, %block_.L_415944 ]
  %2062 = phi i64 [ %.pre81, %block_.L_415999.loopexit ], [ %2055, %block_.L_415944 ]
  %2063 = phi i64 [ %.pre80, %block_.L_415999.loopexit ], [ %2051, %block_.L_415944 ]
  %2064 = phi i64 [ %1792, %block_.L_415999.loopexit ], [ %2060, %block_.L_415944 ]
  store i64 %2063, i64* bitcast (%G_0x886b8c_type* @G_0x886b8c to i64*), align 8
  store i64 %2062, i64* bitcast (%G_0x886b94_type* @G_0x886b94 to i64*), align 8
  store i64 %2061, i64* %RAX.i126, align 8
  store i64 %2061, i64* bitcast (%G_0x886b9c_type* @G_0x886b9c to i64*), align 8
  %2065 = add i64 %2064, 52
  store i64 %2065, i64* %3, align 8
  %2066 = load i64, i64* %1760, align 8
  store i64 %2066, i64* %RAX.i126, align 8
  store i64 %2066, i64* %RDI.i575, align 8
  %2067 = add i64 %2064, -85337
  %2068 = add i64 %2064, 60
  %2069 = load i64, i64* %6, align 8
  %2070 = add i64 %2069, -8
  %2071 = inttoptr i64 %2070 to i64*
  store i64 %2068, i64* %2071, align 8
  store i64 %2070, i64* %6, align 8
  store i64 %2067, i64* %3, align 8
  %2072 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.21)
  %2073 = load i64, i64* %3, align 8
  %2074 = add i64 %2073, -12421
  %2075 = add i64 %2073, 5
  %2076 = load i64, i64* %6, align 8
  %2077 = add i64 %2076, -8
  %2078 = inttoptr i64 %2077 to i64*
  store i64 %2075, i64* %2078, align 8
  store i64 %2077, i64* %6, align 8
  store i64 %2074, i64* %3, align 8
  %call2_4159d5 = tail call %struct.Memory* @sub_412950.Xfree(%struct.State* nonnull %0, i64 %2074, %struct.Memory* %2072)
  %2079 = load i64, i64* %3, align 8
  %2080 = load i64, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  store i64 %2080, i64* %RDI.i575, align 8
  %2081 = add i64 %2079, -85402
  %2082 = add i64 %2079, 13
  %2083 = load i64, i64* %6, align 8
  %2084 = add i64 %2083, -8
  %2085 = inttoptr i64 %2084 to i64*
  store i64 %2082, i64* %2085, align 8
  store i64 %2084, i64* %6, align 8
  store i64 %2081, i64* %3, align 8
  %2086 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_4159d5)
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_4159e7

block_.L_4159e7:                                  ; preds = %block_.L_415999, %block_4150cd
  %2087 = phi i64 [ %.pre83, %block_.L_415999 ], [ %140, %block_4150cd ]
  %MEMORY.24 = phi %struct.Memory* [ %2086, %block_.L_415999 ], [ %138, %block_4150cd ]
  %2088 = load i64, i64* %6, align 8
  %2089 = add i64 %2088, 16592
  store i64 %2089, i64* %6, align 8
  %2090 = icmp ugt i64 %2088, -16593
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %12, align 1
  %2092 = trunc i64 %2089 to i32
  %2093 = and i32 %2092, 255
  %2094 = tail call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  store i8 %2097, i8* %13, align 1
  %2098 = xor i64 %2088, 16
  %2099 = xor i64 %2098, %2089
  %2100 = lshr i64 %2099, 4
  %2101 = trunc i64 %2100 to i8
  %2102 = and i8 %2101, 1
  store i8 %2102, i8* %14, align 1
  %2103 = icmp eq i64 %2089, 0
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %15, align 1
  %2105 = lshr i64 %2089, 63
  %2106 = trunc i64 %2105 to i8
  store i8 %2106, i8* %16, align 1
  %2107 = lshr i64 %2088, 63
  %2108 = xor i64 %2105, %2107
  %2109 = add nuw nsw i64 %2108, %2105
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %17, align 1
  %2112 = add i64 %2087, 8
  store i64 %2112, i64* %3, align 8
  %2113 = add i64 %2088, 16600
  %2114 = inttoptr i64 %2089 to i64*
  %2115 = load i64, i64* %2114, align 8
  store i64 %2115, i64* %RBP.i, align 8
  store i64 %2113, i64* %6, align 8
  %2116 = add i64 %2087, 9
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2113 to i64*
  %2118 = load i64, i64* %2117, align 8
  store i64 %2118, i64* %3, align 8
  %2119 = add i64 %2088, 16608
  store i64 %2119, i64* %6, align 8
  ret %struct.Memory* %MEMORY.24
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
define %struct.Memory* @routine_subq__0x40d0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16592
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16592
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
define %struct.Memory* @routine_movl__0x1__0x85f3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e518(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e518_type* @G_0x62e518 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x633b58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62ea38___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x886bc0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x84a3d0___rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8692688
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
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
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x633b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.rtime(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x38___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 56, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bb0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bb0_type* @G_0x886bb0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8661c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
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
define %struct.Memory* @routine_callq_.pn_eval(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_415120(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Xfree(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8661c8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4159e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.set_proof_and_disproof_numbers(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
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
define %struct.Memory* @routine_cmpl__0x0__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movb__cl__MINUS0x402d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16429
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41518b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0x62db04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62db04_type* @G_0x62db04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x886bb0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bb0_type* @G_0x886bb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2710___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10000
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 10000
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x38___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 56
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
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
  %18 = xor i64 %4, %3
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
  %31 = lshr i64 %4, 63
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
define %struct.Memory* @routine_setb__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x402d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16429
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x402d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16429
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41519e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415221(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.select_most_proving(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.develop_node(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.update_ancestors(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd94___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x86bd94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd94___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_41521c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.rdifftime(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x85f168___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x85f168_type* @G_0x85f168 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_415217(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.interrupt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_415217(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41521c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415131(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428ee9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ee9_type* @G__0x428ee9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1316d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1316d__rip__type* @G_0x1316d__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movslq_0x44a1a4__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x44a1a4__rip__type* @G_0x44a1a4__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2192cb__rip____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, ptrtoint (%G_0x2192cb__rip__type* @G_0x2192cb__rip_ to i64)
  %6 = add i64 %4, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %5 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x38___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 56
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__rax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrq__0x1___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 63
  %7 = trunc i64 %6 to i8
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = lshr i64 %3, 1
  store i64 %10, i64* %R9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %10 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__r9___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = extractelement <2 x float> %8, i32 0
  %13 = fadd float %12, %12
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = bitcast <2 x float> %8 to <2 x i32>
  %16 = extractelement <2 x i32> %15, i32 1
  %17 = getelementptr inbounds i8, i8* %4, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 0
  %20 = bitcast i64* %9 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %11, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testq__rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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
  %14 = icmp eq i64 %3, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i64 %3, 63
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x4038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16440
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x403c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16444
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x4040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16448
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16452
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x4048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16456
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x404c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16460
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x4050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x4054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16468
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_js_.L_4152b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4050__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16464
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16468
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4054__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16468
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x403c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16444
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
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
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd94___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd80___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4038__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4040__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16448
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
define %struct.Memory* @routine_movl_MINUS0x4044__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16452
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
define %struct.Memory* @routine_movl_MINUS0x404c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16460
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
define %struct.Memory* @routine_movl_MINUS0x4048__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16456
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4058__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_415371(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
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
define %struct.Memory* @routine_movq__0x428f25___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428f25_type* @G__0x428f25 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x85f3e8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b58___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd80___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x405c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16476
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4153be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428f7f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428f7f_type* @G__0x428f7f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x13006__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x13006__rip__type* @G_0x13006__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x4060__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16480
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4153c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
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
  %21 = xor i64 %9, %3
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
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4153f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -33
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
define %struct.Memory* @routine_callq_.unmake(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_jne_.L_41578a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428f8a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428f8a_type* @G__0x428f8a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 1, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428fa1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428fa1_type* @G__0x428fa1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4064__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16484
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2000___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8192, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4020__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2020__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x4070__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16496
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x4078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4070__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x407c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16512
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movq_MINUS0x4078__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4080__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16512
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
define %struct.Memory* @routine_cmpb__0x0__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_415641(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x633b54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_41550a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16420
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x4024__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16420
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_je_.L_415505(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4024__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16420
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
define %struct.Memory* @routine_movl__eax__MINUS0x4024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4154ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415550(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_41554b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415514(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2020__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.comp_to_coord(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428fa6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428fa6_type* @G__0x428fa6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2020__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4020__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4084__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16516
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcat_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429cd1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429cd1_type* @G__0x429cd1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x4090__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16528
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -33
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
define %struct.Memory* @routine_movq__rax__MINUS0x4098__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16536
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.make(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_415631(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x20__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415497(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x402c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41567f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41564e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x880654(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_4156e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4156e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428faa___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428faa_type* @G__0x428faa to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x1__0x880654(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x402c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16428
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
define %struct.Memory* @routine_movl__eax__MINUS0x409c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16540
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0x409c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16540
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
define %struct.Memory* @routine_movl__eax__MINUS0x40a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16544
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x402c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16428
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
define %struct.Memory* @routine_jne_.L_41576e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_415712(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x633b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_415747(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428fd3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428fd3_type* @G__0x428fd3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16548
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415769(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428fe7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428fe7_type* @G__0x428fe7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16552
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41576e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429bef___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429bef_type* @G__0x429bef to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16556
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41583e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4157eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428ffb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ffb_type* @G__0x428ffb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 0, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__0x62ea20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__0x62ea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__0x62ea30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16560
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415839(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429013___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429013_type* @G__0x429013 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 2, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16564
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x12b52__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x12b52__rip__type* @G_0x12b52__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x4028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16424
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
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
define %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_415999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_415944(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x4__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x4028__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16424
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_41593f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415980(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415985(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415858(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x886b8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x886b8c_type* @G_0x886b8c to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x886b94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x886b94_type* @G_0x886b94 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x886b9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x886b9c_type* @G_0x886b9c to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40d0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16592
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -16593
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
