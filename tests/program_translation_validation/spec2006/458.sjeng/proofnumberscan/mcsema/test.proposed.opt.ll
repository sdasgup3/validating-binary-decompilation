; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1360b__rip__type = type <{ [4 x i8] }>
%G_0x137e1__rip__type = type <{ [4 x i8] }>
%G_0x62db04_type = type <{ [4 x i8] }>
%G_0x62db08_type = type <{ [8 x i8] }>
%G_0x62db10_type = type <{ [8 x i8] }>
%G_0x62db18_type = type <{ [8 x i8] }>
%G_0x62e4f8_type = type <{ [4 x i8] }>
%G_0x62e51c_type = type <{ [4 x i8] }>
%G_0x62ea20_type = type <{ [8 x i8] }>
%G_0x62ea28_type = type <{ [8 x i8] }>
%G_0x62ea30_type = type <{ [8 x i8] }>
%G_0x62ea38_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x633b54_type = type <{ [4 x i8] }>
%G_0x633b58_type = type <{ [4 x i8] }>
%G_0x85f150_type = type <{ [4 x i8] }>
%G_0x85f168_type = type <{ [4 x i8] }>
%G_0x85f3e8_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661c8_type = type <{ [8 x i8] }>
%G_0x86679c_type = type <{ [1 x i8] }>
%G_0x86bd80_type = type <{ [4 x i8] }>
%G_0x86bd94_type = type <{ [4 x i8] }>
%G_0x880654_type = type <{ [4 x i8] }>
%G_0x886bb0_type = type <{ [4 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
%G__0x428e2f_type = type <{ [8 x i8] }>
%G__0x428e4b_type = type <{ [8 x i8] }>
%G__0x428e6d_type = type <{ [8 x i8] }>
%G__0x428ecb_type = type <{ [8 x i8] }>
%G__0x886bf0_type = type <{ [8 x i8] }>
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
@G_0x1360b__rip_ = global %G_0x1360b__rip__type zeroinitializer
@G_0x137e1__rip_ = global %G_0x137e1__rip__type zeroinitializer
@G_0x62db04 = local_unnamed_addr global %G_0x62db04_type zeroinitializer
@G_0x62db08 = local_unnamed_addr global %G_0x62db08_type zeroinitializer
@G_0x62db10 = local_unnamed_addr global %G_0x62db10_type zeroinitializer
@G_0x62db18 = local_unnamed_addr global %G_0x62db18_type zeroinitializer
@G_0x62e4f8 = local_unnamed_addr global %G_0x62e4f8_type zeroinitializer
@G_0x62e51c = local_unnamed_addr global %G_0x62e51c_type zeroinitializer
@G_0x62ea20 = local_unnamed_addr global %G_0x62ea20_type zeroinitializer
@G_0x62ea28 = local_unnamed_addr global %G_0x62ea28_type zeroinitializer
@G_0x62ea30 = local_unnamed_addr global %G_0x62ea30_type zeroinitializer
@G_0x62ea38 = local_unnamed_addr global %G_0x62ea38_type zeroinitializer
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x633b54 = local_unnamed_addr global %G_0x633b54_type zeroinitializer
@G_0x633b58 = local_unnamed_addr global %G_0x633b58_type zeroinitializer
@G_0x85f150 = local_unnamed_addr global %G_0x85f150_type zeroinitializer
@G_0x85f168 = local_unnamed_addr global %G_0x85f168_type zeroinitializer
@G_0x85f3e8 = local_unnamed_addr global %G_0x85f3e8_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661c8 = local_unnamed_addr global %G_0x8661c8_type zeroinitializer
@G_0x86679c = local_unnamed_addr global %G_0x86679c_type zeroinitializer
@G_0x86bd80 = local_unnamed_addr global %G_0x86bd80_type zeroinitializer
@G_0x86bd94 = local_unnamed_addr global %G_0x86bd94_type zeroinitializer
@G_0x880654 = local_unnamed_addr global %G_0x880654_type zeroinitializer
@G_0x886bb0 = local_unnamed_addr global %G_0x886bb0_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer
@G_0x8a2a04 = local_unnamed_addr global %G_0x8a2a04_type zeroinitializer
@G__0x428e2f = global %G__0x428e2f_type zeroinitializer
@G__0x428e4b = global %G__0x428e4b_type zeroinitializer
@G__0x428e6d = global %G__0x428e6d_type zeroinitializer
@G__0x428ecb = global %G__0x428ecb_type zeroinitializer
@G__0x886bf0 = global %G__0x886bf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_423760.rtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_412950.Xfree(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_412a30.pn_eval(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413400.set_proof_and_disproof_numbers(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423770.rdifftime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4243e0.interrupt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413db0.develop_node(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414180.update_ancestors(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_421970.comp_to_san(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @proofnumberscan(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %12 = icmp ult i64 %8, 16592
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
  %40 = add i64 %7, -16448
  %41 = add i64 %10, 20
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16444
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 10
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 62513
  %50 = add i64 %48, 5
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  store i64 %52, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  %call2_41432f = tail call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64 %49, %struct.Memory* %2)
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i505 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %55 = load i64, i64* %3, align 8
  store i64 56, i64* %RCX.i505, align 8
  %ECX.i760 = bitcast %union.anon* %54 to i32*
  %RSI.i761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 56, i64* %RSI.i761, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i865 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -16408
  %59 = load i64, i64* %RAX.i865, align 8
  %60 = add i64 %55, 14
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %61, align 8
  %RDI.i1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* bitcast (%G_0x886bb0_type* @G_0x886bb0 to i32*), align 8
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %RDI.i1000, align 8
  %65 = add i64 %62, -79426
  %66 = add i64 %62, 13
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, -8
  %69 = inttoptr i64 %68 to i64*
  store i64 %66, i64* %69, align 8
  store i64 %68, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  %70 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %call2_41432f)
  %71 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i1000, align 8
  store i64 56, i64* %RCX.i505, align 8
  store i64 56, i64* %RSI.i761, align 8
  %72 = load i64, i64* %RAX.i865, align 8
  store i64 %72, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  %73 = add i64 %71, -79439
  %74 = add i64 %71, 27
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  %78 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %70)
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -12288
  %81 = load i64, i64* %3, align 8
  store i64 %80, i64* %RDI.i1000, align 8
  %82 = add i64 %79, -16416
  %83 = load i64, i64* %RAX.i865, align 8
  %84 = add i64 %81, 14
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, -50504
  %88 = add i64 %86, 5
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 %88, i64* %91, align 8
  store i64 %90, i64* %6, align 8
  store i64 %87, i64* %3, align 8
  %call2_414378 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64 %87, %struct.Memory* %78)
  %92 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i505, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1227 = getelementptr inbounds %union.anon, %union.anon* %93, i64 0, i32 0
  store i64 2048, i64* %RDX.i1227, align 8
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -16384
  store i64 %95, i64* %RAX.i865, align 8
  store i64 ptrtoint (%G__0x886bf0_type* @G__0x886bf0 to i64), i64* %RSI.i761, align 8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 1200, i64* %RDI.i1000, align 8
  %97 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %96, align 8
  %99 = add i64 %94, -16400
  %100 = add i64 %92, 48
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  store i32 %97, i32* %101, align 4
  %102 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -16512
  %105 = load i64, i64* %RDI.i1000, align 8
  %106 = add i64 %102, 18
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %RSI.i761, align 8
  %109 = load i64, i64* %3, align 8
  store i64 %108, i64* %RDI.i1000, align 8
  %110 = load i32, i32* %ECX.i760, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RSI.i761, align 8
  %R9.i1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -16512
  %114 = add i64 %109, 12
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %R9.i1200, align 8
  %117 = add i64 %112, -16520
  %118 = load i64, i64* %RDX.i1227, align 8
  %119 = add i64 %109, 19
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* %R9.i1200, align 8
  %122 = load i64, i64* %3, align 8
  store i64 %121, i64* %RDX.i1227, align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -16524
  %125 = load i32, i32* %ECX.i760, align 4
  %126 = add i64 %122, 9
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -16536
  %130 = load i64, i64* %RAX.i865, align 8
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 7
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, -79634
  %136 = add i64 %134, 5
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %6, align 8
  store i64 %135, i64* %3, align 8
  %140 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %call2_414378)
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -16536
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 7
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX.i865, align 8
  store i64 %146, i64* %RDI.i1000, align 8
  %147 = add i64 %141, -16524
  %148 = add i64 %143, 16
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RSI.i761, align 8
  %152 = add i64 %141, -16520
  %153 = add i64 %143, 23
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RDX.i1227, align 8
  %156 = add i64 %143, -79639
  %157 = add i64 %143, 28
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %6, align 8
  store i64 %156, i64* %3, align 8
  %161 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %140)
  %162 = load i64, i64* %3, align 8
  %163 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %163, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %164 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %164, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %165 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %165, i64* %RAX.i865, align 8
  store i64 %165, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -16396
  %168 = add i64 %162, 58
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 0, i32* %169, align 4
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, -43869
  %172 = add i64 %170, 5
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %6, align 8
  store i64 %171, i64* %3, align 8
  %call2_41443d = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64 %171, %struct.Memory* %161)
  %EAX.i1151 = bitcast %union.anon* %56 to i32*
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -16472
  %178 = load i32, i32* %EAX.i1151, align 4
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 6
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %181, align 4
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -16388
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 10
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %183 to i32*
  store i32 0, i32* %186, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_414452

block_.L_414452:                                  ; preds = %block_.L_4144cf, %entry
  %187 = phi i64 [ %361, %block_.L_4144cf ], [ %.pre, %entry ]
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -16388
  %190 = add i64 %187, 6
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i865, align 8
  %194 = add i64 %188, -16400
  %195 = add i64 %187, 12
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = sub i32 %192, %197
  %199 = icmp ult i32 %192, %197
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %198, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, %192
  %207 = xor i32 %206, %198
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %27, align 1
  %211 = icmp eq i32 %198, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %30, align 1
  %213 = lshr i32 %198, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %33, align 1
  %215 = lshr i32 %192, 31
  %216 = lshr i32 %197, 31
  %217 = xor i32 %216, %215
  %218 = xor i32 %213, %215
  %219 = add nuw nsw i32 %218, %217
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %39, align 1
  %222 = icmp ne i8 %214, 0
  %223 = xor i1 %222, %220
  %.v = select i1 %223, i64 18, i64 163
  %224 = add i64 %187, %.v
  store i64 %224, i64* %3, align 8
  br i1 %223, label %block_414464, label %block_.L_4144f5

block_414464:                                     ; preds = %block_.L_414452
  %225 = add i64 %188, -12288
  store i64 %225, i64* %RDI.i1000, align 8
  %226 = add i64 %224, 13
  store i64 %226, i64* %3, align 8
  %227 = load i32, i32* %191, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RSI.i761, align 8
  %229 = add i64 %224, -36148
  %230 = add i64 %224, 18
  %231 = load i64, i64* %6, align 8
  %232 = add i64 %231, -8
  %233 = inttoptr i64 %232 to i64*
  store i64 %230, i64* %233, align 8
  store i64 %232, i64* %6, align 8
  store i64 %229, i64* %3, align 8
  %call2_414471 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %229, %struct.Memory* %call2_41443d)
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -12288
  %236 = load i64, i64* %3, align 8
  store i64 %235, i64* %RDI.i1000, align 8
  %237 = add i64 %234, -16388
  %238 = add i64 %236, 13
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RSI.i761, align 8
  %242 = add i64 %234, -16472
  %243 = add i64 %236, 19
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %RDX.i1227, align 8
  %247 = add i64 %236, -56822
  %248 = add i64 %236, 24
  %249 = load i64, i64* %6, align 8
  %250 = add i64 %249, -8
  %251 = inttoptr i64 %250 to i64*
  store i64 %248, i64* %251, align 8
  store i64 %250, i64* %6, align 8
  store i64 %247, i64* %3, align 8
  %call2_414489 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %247, %struct.Memory* %call2_41443d)
  %252 = load i32, i32* %EAX.i1151, align 4
  %253 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %254 = and i32 %252, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %259 = icmp eq i32 %252, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %30, align 1
  %261 = lshr i32 %252, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v129 = select i1 %259, i64 47, i64 9
  %263 = add i64 %253, %.v129
  store i64 %263, i64* %3, align 8
  %264 = load i64, i64* %RBP.i, align 8
  br i1 %259, label %block_.L_4144bd, label %block_414497

block_414497:                                     ; preds = %block_414464
  %265 = add i64 %264, -16396
  %266 = add i64 %263, 6
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = add i32 %268, 1
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i865, align 8
  %271 = icmp eq i32 %268, -1
  %272 = icmp eq i32 %269, 0
  %273 = or i1 %271, %272
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %14, align 1
  %275 = and i32 %269, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  %280 = xor i32 %269, %268
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %27, align 1
  %284 = zext i1 %272 to i8
  store i8 %284, i8* %30, align 1
  %285 = lshr i32 %269, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %33, align 1
  %287 = lshr i32 %268, 31
  %288 = xor i32 %285, %287
  %289 = add nuw nsw i32 %288, %285
  %290 = icmp eq i32 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %39, align 1
  %292 = add i64 %263, 15
  store i64 %292, i64* %3, align 8
  store i32 %269, i32* %267, align 4
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -16388
  %295 = load i64, i64* %3, align 8
  %296 = add i64 %295, 7
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %294 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %RCX.i505, align 8
  %300 = shl nsw i64 %299, 2
  %301 = add i64 %293, -14336
  %302 = add i64 %301, %300
  %303 = add i64 %295, 18
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 1, i32* %304, align 4
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, 23
  store i64 %306, i64* %3, align 8
  br label %block_.L_4144cf

block_.L_4144bd:                                  ; preds = %block_414464
  %307 = add i64 %264, -16388
  %308 = add i64 %263, 7
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RAX.i865, align 8
  %312 = shl nsw i64 %311, 2
  %313 = add i64 %264, -14336
  %314 = add i64 %313, %312
  %315 = add i64 %263, 18
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  store i32 0, i32* %316, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_4144cf

block_.L_4144cf:                                  ; preds = %block_.L_4144bd, %block_414497
  %317 = phi i64 [ %.pre88, %block_.L_4144bd ], [ %306, %block_414497 ]
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -12288
  store i64 %319, i64* %RDI.i1000, align 8
  %320 = add i64 %318, -16388
  %321 = add i64 %317, 13
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RSI.i761, align 8
  %325 = add i64 %317, -32047
  %326 = add i64 %317, 18
  %327 = load i64, i64* %6, align 8
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %326, i64* %329, align 8
  store i64 %328, i64* %6, align 8
  store i64 %325, i64* %3, align 8
  %call2_4144dc = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %325, %struct.Memory* %call2_41443d)
  %330 = load i64, i64* %RBP.i, align 8
  %331 = add i64 %330, -16388
  %332 = load i64, i64* %3, align 8
  %333 = add i64 %332, 6
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %331 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, 1
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RAX.i865, align 8
  %338 = icmp eq i32 %335, -1
  %339 = icmp eq i32 %336, 0
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %14, align 1
  %342 = and i32 %336, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  %347 = xor i32 %336, %335
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %27, align 1
  %351 = zext i1 %339 to i8
  store i8 %351, i8* %30, align 1
  %352 = lshr i32 %336, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %33, align 1
  %354 = lshr i32 %335, 31
  %355 = xor i32 %352, %354
  %356 = add nuw nsw i32 %355, %352
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %39, align 1
  %359 = add i64 %332, 15
  store i64 %359, i64* %3, align 8
  store i32 %336, i32* %334, align 4
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, -158
  store i64 %361, i64* %3, align 8
  br label %block_.L_414452

block_.L_4144f5:                                  ; preds = %block_.L_414452
  %362 = add i64 %188, -16396
  %363 = add i64 %224, 7
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  store i8 0, i8* %14, align 1
  %366 = and i32 %365, 255
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %371 = icmp eq i32 %365, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %30, align 1
  %373 = lshr i32 %365, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v93 = select i1 %371, i64 13, i64 48
  %375 = add i64 %224, %.v93
  store i64 %375, i64* %3, align 8
  br i1 %371, label %block_414502, label %block_.L_414525

block_414502:                                     ; preds = %block_.L_4144f5
  %376 = add i64 %375, -7090
  %377 = add i64 %375, 5
  %378 = load i64, i64* %6, align 8
  %379 = add i64 %378, -8
  %380 = inttoptr i64 %379 to i64*
  store i64 %377, i64* %380, align 8
  store i64 %379, i64* %6, align 8
  store i64 %376, i64* %3, align 8
  %call2_414502 = tail call %struct.Memory* @sub_412950.Xfree(%struct.State* nonnull %0, i64 %376, %struct.Memory* %call2_41443d)
  %381 = load i64, i64* %3, align 8
  %382 = load i64, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  store i64 %382, i64* %RDI.i1000, align 8
  %383 = add i64 %381, -80071
  %384 = add i64 %381, 13
  %385 = load i64, i64* %6, align 8
  %386 = add i64 %385, -8
  %387 = inttoptr i64 %386 to i64*
  store i64 %384, i64* %387, align 8
  store i64 %386, i64* %6, align 8
  store i64 %383, i64* %3, align 8
  %388 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_414502)
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -16416
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, 7
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %390 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RDI.i1000, align 8
  %395 = add i64 %391, -80084
  %396 = add i64 %391, 12
  %397 = load i64, i64* %6, align 8
  %398 = add i64 %397, -8
  %399 = inttoptr i64 %398 to i64*
  store i64 %396, i64* %399, align 8
  store i64 %398, i64* %6, align 8
  store i64 %395, i64* %3, align 8
  %400 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %388)
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, 2752
  store i64 %402, i64* %3, align 8
  br label %block_.L_414fe0

block_.L_414525:                                  ; preds = %block_.L_4144f5
  store i64 1, i64* %RAX.i865, align 8
  store i64 0, i64* %RCX.i505, align 8
  %403 = add i64 %188, -16448
  %404 = add i64 %375, 17
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  store i32 0, i32* %405, align 4
  %406 = load i64, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %407 = load i64, i64* %RBP.i, align 8
  %408 = add i64 %407, -16456
  %409 = add i64 %406, 54
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 0, i32* %410, align 4
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -16460
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 10
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %412 to i32*
  store i32 0, i32* %415, align 4
  %416 = load i64, i64* %3, align 8
  %417 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RDX.i1227, align 8
  %419 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %420 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %421 = add i32 %420, %419
  %422 = add i32 %421, -1
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RSI.i761, align 8
  %424 = sext i32 %422 to i64
  store i64 %424, i64* %RDI.i1000, align 8
  %EDX.i1039 = bitcast %union.anon* %93 to i32*
  %425 = shl nsw i64 %424, 2
  %426 = add nsw i64 %425, 8692688
  %427 = add i64 %416, 34
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 %417, i32* %428, align 4
  %429 = load i64, i64* %3, align 8
  %430 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %431 = and i32 %430, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %436 = icmp eq i32 %430, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %30, align 1
  %438 = lshr i32 %430, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %440 = load i32, i32* %ECX.i760, align 4
  %441 = zext i32 %440 to i64
  %442 = load i64, i64* %RAX.i865, align 8
  %443 = select i1 %436, i64 %442, i64 %441
  %444 = and i64 %443, 4294967295
  store i64 %444, i64* %RAX.i865, align 8
  %445 = trunc i64 %443 to i32
  store i32 %445, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -16416
  %448 = add i64 %429, 25
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RDI.i1000, align 8
  %451 = add i64 %429, -7016
  %452 = add i64 %429, 30
  %453 = load i64, i64* %6, align 8
  %454 = add i64 %453, -8
  %455 = inttoptr i64 %454 to i64*
  store i64 %452, i64* %455, align 8
  store i64 %454, i64* %6, align 8
  store i64 %451, i64* %3, align 8
  %call2_4145b1 = tail call %struct.Memory* @sub_412a30.pn_eval(%struct.State* nonnull %0, i64 %451, %struct.Memory* %call2_41443d)
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -16416
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 7
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %457 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RDI.i1000, align 8
  %462 = add i64 %458, 10
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i8*
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i64
  store i64 %465, i64* %RAX.i865, align 8
  %466 = zext i8 %464 to i32
  %467 = add nsw i32 %466, -1
  %468 = icmp eq i8 %464, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %14, align 1
  %470 = and i32 %467, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = xor i32 %467, %466
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %27, align 1
  %479 = icmp eq i32 %467, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %30, align 1
  %481 = lshr i32 %467, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v94 = select i1 %479, i64 38, i64 19
  %483 = add i64 %458, %.v94
  store i64 %483, i64* %3, align 8
  br i1 %479, label %block_.L_4145dc, label %block_4145c9

block_4145c9:                                     ; preds = %block_.L_414525
  %484 = add i64 %483, 7
  store i64 %484, i64* %3, align 8
  %485 = load i64, i64* %460, align 8
  store i64 %485, i64* %RAX.i865, align 8
  %486 = add i64 %483, 10
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i8*
  %488 = load i8, i8* %487, align 1
  %489 = zext i8 %488 to i64
  store i64 %489, i64* %RCX.i505, align 8
  %490 = zext i8 %488 to i32
  store i8 0, i8* %14, align 1
  %491 = tail call i32 @llvm.ctpop.i32(i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  store i8 %494, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %495 = icmp eq i8 %488, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v95 = select i1 %495, i64 19, i64 102
  %497 = add i64 %483, %.v95
  store i64 %497, i64* %3, align 8
  br i1 %495, label %block_.L_4145dc, label %block_.L_41462f

block_.L_4145dc:                                  ; preds = %block_4145c9, %block_.L_414525
  %498 = phi i64 [ %497, %block_4145c9 ], [ %483, %block_.L_414525 ]
  %499 = add i64 %498, -7308
  %500 = add i64 %498, 5
  %501 = load i64, i64* %6, align 8
  %502 = add i64 %501, -8
  %503 = inttoptr i64 %502 to i64*
  store i64 %500, i64* %503, align 8
  store i64 %502, i64* %6, align 8
  store i64 %499, i64* %3, align 8
  %call2_4145dc = tail call %struct.Memory* @sub_412950.Xfree(%struct.State* nonnull %0, i64 %499, %struct.Memory* %call2_4145b1)
  %504 = load i64, i64* %3, align 8
  %505 = load i64, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  store i64 %505, i64* %RDI.i1000, align 8
  %506 = add i64 %504, -80289
  %507 = add i64 %504, 13
  %508 = load i64, i64* %6, align 8
  %509 = add i64 %508, -8
  %510 = inttoptr i64 %509 to i64*
  store i64 %507, i64* %510, align 8
  store i64 %509, i64* %6, align 8
  store i64 %506, i64* %3, align 8
  %511 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_4145dc)
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -16416
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 7
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %513 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RDI.i1000, align 8
  %518 = add i64 %514, -80302
  %519 = add i64 %514, 12
  %520 = load i64, i64* %6, align 8
  %521 = add i64 %520, -8
  %522 = inttoptr i64 %521 to i64*
  store i64 %519, i64* %522, align 8
  store i64 %521, i64* %6, align 8
  store i64 %518, i64* %3, align 8
  %523 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %511)
  %524 = load i64, i64* %3, align 8
  %525 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %525, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %526 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %526, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %527 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %527, i64* %RDI.i1000, align 8
  store i64 %527, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %528 = add i64 %524, 2534
  store i64 %528, i64* %3, align 8
  br label %block_.L_414fe0

block_.L_41462f:                                  ; preds = %block_4145c9
  %529 = add i64 %497, 7
  store i64 %529, i64* %3, align 8
  %530 = load i64, i64* %460, align 8
  store i64 %530, i64* %RDI.i1000, align 8
  %531 = add i64 %497, -4655
  %532 = add i64 %497, 12
  %533 = load i64, i64* %6, align 8
  %534 = add i64 %533, -8
  %535 = inttoptr i64 %534 to i64*
  store i64 %532, i64* %535, align 8
  store i64 %534, i64* %6, align 8
  store i64 %531, i64* %3, align 8
  %call2_414636 = tail call %struct.Memory* @sub_413400.set_proof_and_disproof_numbers(%struct.State* nonnull %0, i64 %531, %struct.Memory* %call2_4145b1)
  %CL.i969 = bitcast %union.anon* %54 to i8*
  %DL.i970 = bitcast %union.anon* %93 to i8*
  %AL.i945 = bitcast %union.anon* %56 to i8*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_41463b

block_.L_41463b:                                  ; preds = %block_.L_41463b.backedge, %block_.L_41462f
  %537 = phi i64 [ %.pre58, %block_.L_41462f ], [ %.sink, %block_.L_41463b.backedge ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_414636, %block_.L_41462f ], [ %MEMORY.3.be, %block_.L_41463b.backedge ]
  %538 = add i64 %537, 61733
  %539 = add i64 %537, 5
  %540 = load i64, i64* %6, align 8
  %541 = add i64 %540, -8
  %542 = inttoptr i64 %541 to i64*
  store i64 %539, i64* %542, align 8
  store i64 %541, i64* %6, align 8
  store i64 %538, i64* %3, align 8
  %call2_41463b = tail call %struct.Memory* @sub_423760.rtime(%struct.State* nonnull %0, i64 %538, %struct.Memory* %MEMORY.3)
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -16408
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 7
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %544 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RSI.i761, align 8
  %549 = load i64, i64* %RAX.i865, align 8
  store i64 %549, i64* %RDI.i1000, align 8
  %550 = add i64 %545, 61744
  %551 = add i64 %545, 15
  %552 = load i64, i64* %6, align 8
  %553 = add i64 %552, -8
  %554 = inttoptr i64 %553 to i64*
  store i64 %551, i64* %554, align 8
  store i64 %553, i64* %6, align 8
  store i64 %550, i64* %3, align 8
  %call2_41464a = tail call %struct.Memory* @sub_423770.rdifftime(%struct.State* nonnull %0, i64 %550, %struct.Memory* %MEMORY.3)
  %555 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i505, align 8
  store i8 0, i8* %DL.i970, align 1
  %556 = load i32, i32* %EAX.i1151, align 4
  %557 = load i32, i32* bitcast (%G_0x85f168_type* @G_0x85f168 to i32*), align 8
  %558 = sub i32 %556, %557
  %559 = icmp ult i32 %556, %557
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %14, align 1
  %561 = and i32 %558, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %21, align 1
  %566 = xor i32 %557, %556
  %567 = xor i32 %566, %558
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %27, align 1
  %571 = icmp eq i32 %558, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %30, align 1
  %573 = lshr i32 %558, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %33, align 1
  %575 = lshr i32 %556, 31
  %576 = lshr i32 %557, 31
  %577 = xor i32 %576, %575
  %578 = xor i32 %573, %575
  %579 = add nuw nsw i32 %578, %577
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %39, align 1
  %582 = load i64, i64* %RBP.i, align 8
  %583 = add i64 %582, -16537
  %584 = add i64 %555, 17
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i8*
  store i8 0, i8* %585, align 1
  %586 = load i64, i64* %3, align 8
  %587 = add i64 %586, 124
  %588 = add i64 %586, 6
  %589 = load i8, i8* %33, align 1
  %590 = icmp ne i8 %589, 0
  %591 = load i8, i8* %39, align 1
  %592 = icmp ne i8 %591, 0
  %593 = xor i1 %590, %592
  %594 = select i1 %593, i64 %588, i64 %587
  store i64 %594, i64* %3, align 8
  br i1 %593, label %block_414666, label %block_.L_4146dc

block_414666:                                     ; preds = %block_.L_41463b
  %595 = add i64 %594, 64890
  %596 = add i64 %594, 5
  %597 = load i64, i64* %6, align 8
  %598 = add i64 %597, -8
  %599 = inttoptr i64 %598 to i64*
  store i64 %596, i64* %599, align 8
  store i64 %598, i64* %6, align 8
  store i64 %595, i64* %3, align 8
  %call2_414666 = tail call %struct.Memory* @sub_4243e0.interrupt(%struct.State* nonnull %0, i64 %595, %struct.Memory* %MEMORY.3)
  %600 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i505, align 8
  store i8 0, i8* %DL.i970, align 1
  %601 = load i32, i32* %EAX.i1151, align 4
  store i8 0, i8* %14, align 1
  %602 = and i32 %601, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %607 = icmp eq i32 %601, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %30, align 1
  %609 = lshr i32 %601, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -16537
  %613 = add i64 %600, 13
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i8*
  store i8 0, i8* %614, align 1
  %615 = load i64, i64* %3, align 8
  %616 = add i64 %615, 100
  %617 = add i64 %615, 6
  %618 = load i8, i8* %30, align 1
  %619 = icmp eq i8 %618, 0
  %620 = select i1 %619, i64 %616, i64 %617
  store i64 %620, i64* %3, align 8
  br i1 %619, label %block_.L_4146dc, label %block_41467e

block_41467e:                                     ; preds = %block_414666
  store i8 0, i8* %CL.i969, align 1
  %621 = load i32, i32* bitcast (%G_0x62db04_type* @G_0x62db04 to i32*), align 8
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX.i1227, align 8
  %623 = load i32, i32* bitcast (%G_0x886bb0_type* @G_0x886bb0 to i32*), align 8
  %624 = add i32 %623, -10000
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RAX.i865, align 8
  %626 = sext i32 %624 to i64
  %627 = mul nsw i64 %626, 56
  store i64 %627, i64* %RSI.i761, align 8
  %628 = lshr i64 %627, 63
  %629 = sub i64 %622, %627
  %630 = icmp ult i64 %622, %627
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %14, align 1
  %632 = trunc i64 %629 to i32
  %633 = and i32 %632, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %21, align 1
  %638 = xor i64 %627, %622
  %639 = xor i64 %638, %629
  %640 = lshr i64 %639, 4
  %641 = trunc i64 %640 to i8
  %642 = and i8 %641, 1
  store i8 %642, i8* %27, align 1
  %643 = icmp eq i64 %629, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %30, align 1
  %645 = lshr i64 %629, 63
  %646 = trunc i64 %645 to i8
  store i8 %646, i8* %33, align 1
  %647 = add nuw nsw i64 %645, %628
  %648 = icmp eq i64 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %39, align 1
  %650 = load i64, i64* %RBP.i, align 8
  %651 = add i64 %650, -16537
  %652 = load i8, i8* %CL.i969, align 1
  %653 = add i64 %620, 41
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %651 to i8*
  store i8 %652, i8* %654, align 1
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 53
  %657 = add i64 %655, 6
  %658 = load i8, i8* %14, align 1
  %659 = icmp eq i8 %658, 0
  %660 = select i1 %659, i64 %656, i64 %657
  store i64 %660, i64* %3, align 8
  br i1 %659, label %block_.L_4146dc, label %block_4146ad

block_4146ad:                                     ; preds = %block_41467e
  store i64 0, i64* %RAX.i865, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i969, align 1
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -16416
  %663 = add i64 %660, 11
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RDX.i1227, align 8
  %666 = add i64 %665, 4
  %667 = add i64 %660, 15
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  store i8 0, i8* %14, align 1
  %670 = and i32 %669, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %675 = icmp eq i32 %669, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %30, align 1
  %677 = lshr i32 %669, 31
  %678 = trunc i32 %677 to i8
  store i8 %678, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %679 = add i64 %661, -16537
  %680 = add i64 %660, 21
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i8*
  store i8 0, i8* %681, align 1
  %682 = load i64, i64* %3, align 8
  %683 = load i8, i8* %30, align 1
  %684 = icmp ne i8 %683, 0
  %.v147 = select i1 %684, i64 26, i64 6
  %685 = add i64 %682, %.v147
  store i64 %685, i64* %3, align 8
  %cmpBr_4146c2 = icmp eq i8 %683, 1
  br i1 %cmpBr_4146c2, label %block_.L_4146dc, label %block_4146c8

block_4146c8:                                     ; preds = %block_4146ad
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -16416
  %688 = add i64 %685, 7
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX.i865, align 8
  %691 = add i64 %690, 8
  %692 = add i64 %685, 11
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  store i8 0, i8* %14, align 1
  %695 = and i32 %694, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %700 = icmp eq i32 %694, 0
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %30, align 1
  %702 = lshr i32 %694, 31
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %704 = xor i1 %700, true
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %CL.i969, align 1
  %706 = add i64 %686, -16537
  %707 = add i64 %685, 20
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i8*
  store i8 %705, i8* %708, align 1
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_4146dc

block_.L_4146dc:                                  ; preds = %block_.L_41463b, %block_4146c8, %block_4146ad, %block_41467e, %block_414666
  %709 = phi i64 [ %587, %block_.L_41463b ], [ %.pre59, %block_4146c8 ], [ %685, %block_4146ad ], [ %656, %block_41467e ], [ %616, %block_414666 ]
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -16537
  %712 = add i64 %709, 6
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i8*
  %714 = load i8, i8* %713, align 1
  store i8 %714, i8* %AL.i945, align 1
  %715 = and i8 %714, 1
  store i8 0, i8* %14, align 1
  %716 = zext i8 %715 to i32
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = xor i8 %718, 1
  store i8 %719, i8* %21, align 1
  %720 = xor i8 %715, 1
  store i8 %720, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %721 = icmp eq i8 %720, 0
  %.v96 = select i1 %721, i64 19, i64 14
  %722 = add i64 %709, %.v96
  store i64 %722, i64* %3, align 8
  br i1 %721, label %block_.L_4146ef, label %block_4146ea

block_4146ea:                                     ; preds = %block_.L_4146dc
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %724 = bitcast [32 x %union.VectorReg]* %723 to i8*
  %725 = add i64 %722, add (i64 ptrtoint (%G_0x137e1__rip__type* @G_0x137e1__rip_ to i64), i64 1221)
  %726 = add i64 %722, 1229
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = bitcast [32 x %union.VectorReg]* %723 to float*
  %730 = bitcast [32 x %union.VectorReg]* %723 to i32*
  store i32 %728, i32* %730, align 1
  %731 = getelementptr inbounds i8, i8* %724, i64 4
  %732 = bitcast i8* %731 to float*
  store float 0.000000e+00, float* %732, align 1
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %734 = bitcast i64* %733 to float*
  store float 0.000000e+00, float* %734, align 1
  %735 = getelementptr inbounds i8, i8* %724, i64 12
  %736 = bitcast i8* %735 to float*
  store float 0.000000e+00, float* %736, align 1
  %737 = add i64 %710, -16392
  %738 = add i64 %722, 1239
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  store i32 0, i32* %739, align 4
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -16476
  %742 = load i64, i64* %3, align 8
  %743 = add i64 %742, 8
  store i64 %743, i64* %3, align 8
  %744 = bitcast [32 x %union.VectorReg]* %723 to <2 x float>*
  %745 = load <2 x float>, <2 x float>* %744, align 1
  %746 = extractelement <2 x float> %745, i32 0
  %747 = inttoptr i64 %741 to float*
  store float %746, float* %747, align 4
  %748 = load i64, i64* %RBP.i, align 8
  %749 = add i64 %748, -16480
  %750 = load i64, i64* %3, align 8
  %751 = add i64 %750, 10
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %749 to i32*
  store i32 0, i32* %752, align 4
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -16416
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, 7
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %754 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RAX.i865, align 8
  %759 = add i64 %758, 2
  %760 = add i64 %755, 11
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i8*
  %762 = load i8, i8* %761, align 1
  store i8 0, i8* %14, align 1
  %763 = zext i8 %762 to i32
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %768 = icmp eq i8 %762, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %30, align 1
  %770 = lshr i8 %762, 7
  store i8 %770, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v97 = select i1 %768, i64 568, i64 17
  %771 = add i64 %755, %.v97
  store i64 %771, i64* %3, align 8
  br i1 %768, label %block_4146ea.block_.L_414e0b_crit_edge, label %block_414be4

block_4146ea.block_.L_414e0b_crit_edge:           ; preds = %block_4146ea
  %.pre91 = bitcast i64* %6 to i64**
  br label %block_.L_414e0b

block_.L_4146ef:                                  ; preds = %block_.L_4146dc
  store i64 100, i64* %RAX.i865, align 8
  %772 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %773 = add i32 %772, 1
  %774 = icmp eq i32 %772, -1
  %775 = icmp eq i32 %773, 0
  %776 = or i1 %774, %775
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %14, align 1
  %778 = and i32 %773, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %21, align 1
  %783 = xor i32 %773, %772
  %784 = lshr i32 %783, 4
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  store i8 %786, i8* %27, align 1
  %787 = zext i1 %775 to i8
  store i8 %787, i8* %30, align 1
  %788 = lshr i32 %773, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %33, align 1
  %790 = lshr i32 %772, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %788
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %39, align 1
  store i32 %773, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %795 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %796 = add i64 %710, -16452
  %797 = add i64 %722, 35
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  store i32 %795, i32* %798, align 4
  %799 = load i64, i64* %3, align 8
  %800 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RCX.i505, align 8
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -16544
  %804 = load i32, i32* %EAX.i1151, align 4
  %805 = add i64 %799, 13
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %803 to i32*
  store i32 %804, i32* %806, align 4
  %807 = load i32, i32* %ECX.i760, align 4
  %808 = zext i32 %807 to i64
  %809 = load i64, i64* %3, align 8
  store i64 %808, i64* %RAX.i865, align 8
  %810 = sext i32 %807 to i64
  %811 = lshr i64 %810, 32
  store i64 %811, i64* %536, align 8
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -16544
  %814 = add i64 %809, 9
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RCX.i505, align 8
  %818 = add i64 %809, 11
  store i64 %818, i64* %3, align 8
  %819 = sext i32 %816 to i64
  %820 = shl nuw i64 %811, 32
  %821 = or i64 %820, %808
  %822 = sdiv i64 %821, %819
  %823 = shl i64 %822, 32
  %824 = ashr exact i64 %823, 32
  %825 = icmp eq i64 %822, %824
  br i1 %825, label %828, label %826

; <label>:826:                                    ; preds = %block_.L_4146ef
  %827 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %818, %struct.Memory* %MEMORY.3)
  %.pre72 = load i32, i32* %EDX.i1039, align 4
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:828:                                    ; preds = %block_.L_4146ef
  %829 = srem i64 %821, %819
  %830 = and i64 %822, 4294967295
  store i64 %830, i64* %RAX.i865, align 8
  %831 = and i64 %829, 4294967295
  store i64 %831, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %832 = trunc i64 %829 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %828, %826
  %833 = phi i64 [ %.pre74, %826 ], [ %812, %828 ]
  %834 = phi i64 [ %.pre73, %826 ], [ %818, %828 ]
  %835 = phi i32 [ %.pre72, %826 ], [ %832, %828 ]
  %836 = phi %struct.Memory* [ %827, %826 ], [ %MEMORY.3, %828 ]
  %837 = add i32 %835, -66
  %838 = icmp ult i32 %835, 66
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = and i32 %837, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i32 %837, %835
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %27, align 1
  %849 = icmp eq i32 %837, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %30, align 1
  %851 = lshr i32 %837, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %33, align 1
  %853 = lshr i32 %835, 31
  %854 = xor i32 %851, %853
  %855 = add nuw nsw i32 %854, %853
  %856 = icmp eq i32 %855, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %39, align 1
  %858 = icmp ne i8 %852, 0
  %859 = xor i1 %858, %856
  %.v111 = select i1 %859, i64 9, i64 455
  %860 = add i64 %834, %.v111
  store i64 %860, i64* %3, align 8
  br i1 %859, label %block_414733, label %block_.L_4148f1

block_414733:                                     ; preds = %routine_idivl__ecx.exit
  %861 = add i64 %833, -16456
  %862 = add i64 %860, 6
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i32 %864, 1
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RAX.i865, align 8
  %867 = icmp eq i32 %864, -1
  %868 = icmp eq i32 %865, 0
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = and i32 %865, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  %876 = xor i32 %865, %864
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %27, align 1
  %880 = zext i1 %868 to i8
  store i8 %880, i8* %30, align 1
  %881 = lshr i32 %865, 31
  %882 = trunc i32 %881 to i8
  store i8 %882, i8* %33, align 1
  %883 = lshr i32 %864, 31
  %884 = xor i32 %881, %883
  %885 = add nuw nsw i32 %884, %881
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %39, align 1
  %888 = add i64 %860, 15
  store i64 %888, i64* %3, align 8
  store i32 %865, i32* %863, align 4
  %889 = load i64, i64* %RBP.i, align 8
  %890 = add i64 %889, -16416
  %891 = load i64, i64* %3, align 8
  %892 = add i64 %891, 7
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %890 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %RCX.i505, align 8
  %895 = add i64 %889, -16432
  %896 = add i64 %891, 14
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i64*
  store i64 %894, i64* %897, align 8
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -16432
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, 7
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %899 to i64*
  %903 = load i64, i64* %902, align 8
  store i64 %903, i64* %RDI.i1000, align 8
  %904 = add i64 %900, -5248
  %905 = add i64 %900, 12
  %906 = load i64, i64* %6, align 8
  %907 = add i64 %906, -8
  %908 = inttoptr i64 %907 to i64*
  store i64 %905, i64* %908, align 8
  store i64 %907, i64* %6, align 8
  store i64 %904, i64* %3, align 8
  %call2_414757 = tail call %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* nonnull %0, i64 %904, %struct.Memory* %836)
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -16424
  %911 = load i64, i64* %RAX.i865, align 8
  %912 = load i64, i64* %3, align 8
  %913 = add i64 %912, 7
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %910 to i64*
  store i64 %911, i64* %914, align 8
  %915 = load i64, i64* %RBP.i, align 8
  %916 = add i64 %915, -16424
  %917 = load i64, i64* %3, align 8
  %918 = add i64 %917, 7
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %916 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RDI.i1000, align 8
  %921 = add i64 %917, -2483
  %922 = add i64 %917, 12
  %923 = load i64, i64* %6, align 8
  %924 = add i64 %923, -8
  %925 = inttoptr i64 %924 to i64*
  store i64 %922, i64* %925, align 8
  store i64 %924, i64* %6, align 8
  store i64 %921, i64* %3, align 8
  %call2_41476a = tail call %struct.Memory* @sub_413db0.develop_node(%struct.State* nonnull %0, i64 %921, %struct.Memory* %call2_414757)
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -16424
  %928 = load i64, i64* %3, align 8
  %929 = add i64 %928, 7
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %927 to i64*
  %931 = load i64, i64* %930, align 8
  store i64 %931, i64* %RDI.i1000, align 8
  %932 = add i64 %928, -1519
  %933 = add i64 %928, 12
  %934 = load i64, i64* %6, align 8
  %935 = add i64 %934, -8
  %936 = inttoptr i64 %935 to i64*
  store i64 %933, i64* %936, align 8
  store i64 %935, i64* %6, align 8
  store i64 %932, i64* %3, align 8
  %call2_414776 = tail call %struct.Memory* @sub_414180.update_ancestors(%struct.State* nonnull %0, i64 %932, %struct.Memory* %call2_41476a)
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -16388
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, 10
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %938 to i32*
  store i32 0, i32* %941, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_414785

block_.L_414785:                                  ; preds = %block_4147ae, %block_414733
  %942 = phi i64 [ %1025, %block_4147ae ], [ %.pre83, %block_414733 ]
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -16416
  %945 = add i64 %942, 7
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %RAX.i865, align 8
  %948 = add i64 %947, 16
  %949 = add i64 %942, 11
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i64*
  %951 = load i64, i64* %950, align 8
  store i64 %951, i64* %RAX.i865, align 8
  %952 = add i64 %943, -16388
  %953 = add i64 %942, 18
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = sext i32 %955 to i64
  store i64 %956, i64* %RCX.i505, align 8
  %957 = shl nsw i64 %956, 3
  %958 = add i64 %957, %951
  %959 = add i64 %942, 22
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RAX.i865, align 8
  %962 = add i64 %961, 4
  %963 = add i64 %942, 25
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RDX.i1227, align 8
  %967 = add i64 %942, 32
  store i64 %967, i64* %3, align 8
  %968 = load i64, i64* %946, align 8
  store i64 %968, i64* %RAX.i865, align 8
  %969 = add i64 %968, 4
  %970 = add i64 %942, 35
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sub i32 %965, %972
  %974 = icmp ult i32 %965, %972
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %14, align 1
  %976 = and i32 %973, 255
  %977 = tail call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  store i8 %980, i8* %21, align 1
  %981 = xor i32 %972, %965
  %982 = xor i32 %981, %973
  %983 = lshr i32 %982, 4
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  store i8 %985, i8* %27, align 1
  %986 = icmp eq i32 %973, 0
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %30, align 1
  %988 = lshr i32 %973, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %33, align 1
  %990 = lshr i32 %965, 31
  %991 = lshr i32 %972, 31
  %992 = xor i32 %991, %990
  %993 = xor i32 %988, %990
  %994 = add nuw nsw i32 %993, %992
  %995 = icmp eq i32 %994, 2
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %39, align 1
  %.v123 = select i1 %986, i64 61, i64 41
  %997 = add i64 %942, %.v123
  store i64 %997, i64* %3, align 8
  br i1 %986, label %block_.L_4147c2, label %block_4147ae

block_4147ae:                                     ; preds = %block_.L_414785
  %998 = add i64 %997, 6
  store i64 %998, i64* %3, align 8
  %999 = load i32, i32* %954, align 4
  %1000 = add i32 %999, 1
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i865, align 8
  %1002 = icmp eq i32 %999, -1
  %1003 = icmp eq i32 %1000, 0
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %14, align 1
  %1006 = and i32 %1000, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %21, align 1
  %1011 = xor i32 %1000, %999
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  store i8 %1014, i8* %27, align 1
  %1015 = zext i1 %1003 to i8
  store i8 %1015, i8* %30, align 1
  %1016 = lshr i32 %1000, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %33, align 1
  %1018 = lshr i32 %999, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1016
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %39, align 1
  %1023 = add i64 %997, 15
  store i64 %1023, i64* %3, align 8
  store i32 %1000, i32* %954, align 4
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, -56
  store i64 %1025, i64* %3, align 8
  br label %block_.L_414785

block_.L_4147c2:                                  ; preds = %block_.L_414785
  %1026 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RAX.i865, align 8
  %1028 = add i64 %943, -16452
  %1029 = add i64 %997, 13
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = sub i32 %1026, %1031
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RAX.i865, align 8
  %1034 = icmp ult i32 %1026, %1031
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %14, align 1
  %1036 = and i32 %1032, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %21, align 1
  %1041 = xor i32 %1031, %1026
  %1042 = xor i32 %1041, %1032
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %27, align 1
  %1046 = icmp eq i32 %1032, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %30, align 1
  %1048 = lshr i32 %1032, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %33, align 1
  %1050 = lshr i32 %1026, 31
  %1051 = lshr i32 %1031, 31
  %1052 = xor i32 %1051, %1050
  %1053 = xor i32 %1048, %1050
  %1054 = add nuw nsw i32 %1053, %1052
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %39, align 1
  %1057 = add i64 %997, 20
  store i64 %1057, i64* %3, align 8
  %1058 = load i32, i32* %954, align 4
  %1059 = sext i32 %1058 to i64
  store i64 %1059, i64* %RCX.i505, align 8
  %1060 = shl nsw i64 %1059, 2
  %1061 = add nsw i64 %1060, -16384
  %1062 = add i64 %1061, %943
  %1063 = add i64 %997, 27
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = add i32 %1065, %1032
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RAX.i865, align 8
  %1068 = icmp ult i32 %1066, %1032
  %1069 = icmp ult i32 %1066, %1065
  %1070 = or i1 %1068, %1069
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %14, align 1
  %1072 = and i32 %1066, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %21, align 1
  %1077 = xor i32 %1065, %1032
  %1078 = xor i32 %1077, %1066
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %27, align 1
  %1082 = icmp eq i32 %1066, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %30, align 1
  %1084 = lshr i32 %1066, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %33, align 1
  %1086 = lshr i32 %1065, 31
  %1087 = xor i32 %1084, %1048
  %1088 = xor i32 %1084, %1086
  %1089 = add nuw nsw i32 %1087, %1088
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %39, align 1
  %1092 = add i64 %943, -16384
  %1093 = add i64 %1092, %1060
  %1094 = add i64 %997, 34
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  store i32 %1066, i32* %1095, align 4
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -16416
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 7
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RCX.i505, align 8
  %1102 = add i64 %1101, 4
  %1103 = add i64 %1098, 11
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  store i8 0, i8* %14, align 1
  %1106 = and i32 %1105, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106)
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1111 = icmp eq i32 %1105, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i32 %1105, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v124 = select i1 %1111, i64 17, i64 159
  %1115 = add i64 %1098, %.v124
  store i64 %1115, i64* %3, align 8
  br i1 %1111, label %block_4147f5, label %block_.L_414883

block_4147f5:                                     ; preds = %block_.L_4147c2
  %1116 = add i64 %1115, 7
  store i64 %1116, i64* %3, align 8
  %1117 = load i64, i64* %1100, align 8
  store i64 %1117, i64* %RAX.i865, align 8
  %1118 = add i64 %1117, 8
  %1119 = add i64 %1115, 14
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = add i32 %1121, -100000000
  %1123 = icmp ult i32 %1121, 100000000
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
  store i8 %1133, i8* %27, align 1
  %1134 = icmp eq i32 %1122, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %30, align 1
  %1136 = lshr i32 %1122, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %33, align 1
  %1138 = lshr i32 %1121, 31
  %1139 = xor i32 %1136, %1138
  %1140 = add nuw nsw i32 %1139, %1138
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %39, align 1
  %.v127 = select i1 %1134, i64 20, i64 142
  %1143 = add i64 %1115, %.v127
  store i64 %1143, i64* %3, align 8
  br i1 %1134, label %block_414809, label %block_.L_414883

block_414809:                                     ; preds = %block_4147f5
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  %1144 = load i32, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1145 = and i32 %1144, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1150 = icmp eq i32 %1144, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %30, align 1
  %1152 = lshr i32 %1144, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v128 = select i1 %1150, i64 25, i64 59
  %1154 = add i64 %1143, %.v128
  store i64 %1154, i64* %3, align 8
  br i1 %1150, label %block_414822, label %block_.L_414844

block_414822:                                     ; preds = %block_414809
  store i64 ptrtoint (%G__0x428e2f_type* @G__0x428e2f to i64), i64* %RDI.i1000, align 8
  store i32 1, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  store i8 0, i8* %AL.i945, align 1
  %1155 = add i64 %1154, -80754
  %1156 = add i64 %1154, 28
  %1157 = load i64, i64* %6, align 8
  %1158 = add i64 %1157, -8
  %1159 = inttoptr i64 %1158 to i64*
  store i64 %1156, i64* %1159, align 8
  store i64 %1158, i64* %6, align 8
  store i64 %1155, i64* %3, align 8
  %1160 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_414776)
  %1161 = load i64, i64* %RBP.i, align 8
  %1162 = add i64 %1161, -16548
  %1163 = load i32, i32* %EAX.i1151, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 6
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1162 to i32*
  store i32 %1163, i32* %1166, align 4
  %.pre84 = load i64, i64* %RBP.i, align 8
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_414844

block_.L_414844:                                  ; preds = %block_414809, %block_414822
  %1167 = phi i64 [ %1154, %block_414809 ], [ %.pre85, %block_414822 ]
  %1168 = phi i64 [ %1096, %block_414809 ], [ %.pre84, %block_414822 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_414776, %block_414809 ], [ %1160, %block_414822 ]
  %1169 = add i64 %1168, -16416
  %1170 = add i64 %1167, 7
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i64*
  %1172 = load i64, i64* %1171, align 8
  store i64 %1172, i64* %RAX.i865, align 8
  %1173 = add i64 %1172, 16
  %1174 = add i64 %1167, 11
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RAX.i865, align 8
  %1177 = add i64 %1168, -16388
  %1178 = add i64 %1167, 18
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = sext i32 %1180 to i64
  store i64 %1181, i64* %RCX.i505, align 8
  %1182 = shl nsw i64 %1181, 3
  %1183 = add i64 %1182, %1176
  %1184 = add i64 %1167, 22
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  store i64 %1186, i64* %RAX.i865, align 8
  %1187 = add i64 %1186, 32
  %1188 = add i64 %1167, 26
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %RCX.i505, align 8
  store i64 %1190, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1191 = add i64 %1186, 40
  %1192 = add i64 %1167, 38
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i64*
  %1194 = load i64, i64* %1193, align 8
  store i64 %1194, i64* %RCX.i505, align 8
  store i64 %1194, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1195 = add i64 %1186, 48
  %1196 = add i64 %1167, 50
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i64*
  %1198 = load i64, i64* %1197, align 8
  store i64 %1198, i64* %RAX.i865, align 8
  %1199 = add i64 %1167, 58
  store i64 %1199, i64* %3, align 8
  store i64 %1198, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %1200 = add i64 %1167, 168
  br label %block_.L_4148ec

block_.L_414883:                                  ; preds = %block_4147f5, %block_.L_4147c2
  %1201 = phi i64 [ %1143, %block_4147f5 ], [ %1115, %block_.L_4147c2 ]
  %1202 = add i64 %1201, 7
  store i64 %1202, i64* %3, align 8
  %1203 = load i64, i64* %1100, align 8
  store i64 %1203, i64* %RAX.i865, align 8
  %1204 = add i64 %1203, 8
  %1205 = add i64 %1201, 11
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i32*
  %1207 = load i32, i32* %1206, align 4
  store i8 0, i8* %14, align 1
  %1208 = and i32 %1207, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1213 = icmp eq i32 %1207, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %30, align 1
  %1215 = lshr i32 %1207, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %1213, i64 17, i64 100
  %1217 = add i64 %1201, %.v125
  store i64 %1217, i64* %3, align 8
  br i1 %1213, label %block_414894, label %block_.L_4148e7

block_414894:                                     ; preds = %block_.L_414883
  %1218 = add i64 %1217, 7
  store i64 %1218, i64* %3, align 8
  %1219 = load i64, i64* %1100, align 8
  store i64 %1219, i64* %RAX.i865, align 8
  %1220 = add i64 %1219, 4
  %1221 = add i64 %1217, 14
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = add i32 %1223, -100000000
  %1225 = icmp ult i32 %1223, 100000000
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %14, align 1
  %1227 = and i32 %1224, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  %1232 = xor i32 %1224, %1223
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %27, align 1
  %1236 = icmp eq i32 %1224, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %30, align 1
  %1238 = lshr i32 %1224, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %33, align 1
  %1240 = lshr i32 %1223, 31
  %1241 = xor i32 %1238, %1240
  %1242 = add nuw nsw i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %39, align 1
  %.v126 = select i1 %1236, i64 20, i64 83
  %1245 = add i64 %1217, %.v126
  store i64 %1245, i64* %3, align 8
  br i1 %1236, label %block_4148a8, label %block_.L_4148e7

block_4148a8:                                     ; preds = %block_414894
  %1246 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %1246, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1247 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %1247, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1248 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1248, i64* %RAX.i865, align 8
  store i64 %1248, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %1249 = add i64 %1096, -16448
  %1250 = add i64 %1245, 54
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = add i32 %1252, 1
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RCX.i505, align 8
  %1255 = icmp eq i32 %1252, -1
  %1256 = icmp eq i32 %1253, 0
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = and i32 %1253, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i32 %1253, %1252
  %1265 = lshr i32 %1264, 4
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  store i8 %1267, i8* %27, align 1
  %1268 = zext i1 %1256 to i8
  store i8 %1268, i8* %30, align 1
  %1269 = lshr i32 %1253, 31
  %1270 = trunc i32 %1269 to i8
  store i8 %1270, i8* %33, align 1
  %1271 = lshr i32 %1252, 31
  %1272 = xor i32 %1269, %1271
  %1273 = add nuw nsw i32 %1272, %1269
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %39, align 1
  %1276 = add i64 %1245, 63
  store i64 %1276, i64* %3, align 8
  store i32 %1253, i32* %1251, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_4148e7

block_.L_4148e7:                                  ; preds = %block_414894, %block_.L_414883, %block_4148a8
  %1277 = phi i64 [ %.pre86, %block_4148a8 ], [ %1245, %block_414894 ], [ %1217, %block_.L_414883 ]
  %1278 = add i64 %1277, 5
  store i64 %1278, i64* %3, align 8
  br label %block_.L_4148ec

block_.L_4148ec:                                  ; preds = %block_.L_4148e7, %block_.L_414844
  %storemerge = phi i64 [ %1200, %block_.L_414844 ], [ %1278, %block_.L_4148e7 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_.L_414844 ], [ %call2_414776, %block_.L_4148e7 ]
  %1279 = add i64 %storemerge, 702
  br label %block_.L_414baa

block_.L_4148f1:                                  ; preds = %routine_idivl__ecx.exit
  %1280 = add i64 %833, -16460
  %1281 = add i64 %860, 6
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = add i32 %1283, 1
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RAX.i865, align 8
  %1286 = icmp eq i32 %1283, -1
  %1287 = icmp eq i32 %1284, 0
  %1288 = or i1 %1286, %1287
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %14, align 1
  %1290 = and i32 %1284, 255
  %1291 = tail call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  store i8 %1294, i8* %21, align 1
  %1295 = xor i32 %1284, %1283
  %1296 = lshr i32 %1295, 4
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  store i8 %1298, i8* %27, align 1
  %1299 = zext i1 %1287 to i8
  store i8 %1299, i8* %30, align 1
  %1300 = lshr i32 %1284, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %33, align 1
  %1302 = lshr i32 %1283, 31
  %1303 = xor i32 %1300, %1302
  %1304 = add nuw nsw i32 %1303, %1300
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %39, align 1
  %1307 = add i64 %860, 15
  store i64 %1307, i64* %3, align 8
  store i32 %1284, i32* %1282, align 4
  %1308 = load i64, i64* %RBP.i, align 8
  %1309 = add i64 %1308, -16436
  %1310 = load i64, i64* %3, align 8
  %1311 = add i64 %1310, 10
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1309 to i32*
  store i32 100000000, i32* %1312, align 4
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -16392
  %1315 = load i64, i64* %3, align 8
  %1316 = add i64 %1315, 10
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1314 to i32*
  store i32 0, i32* %1317, align 4
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -16388
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 10
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1319 to i32*
  store i32 0, i32* %1322, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_41491e

block_.L_41491e:                                  ; preds = %block_.L_4149c4, %block_.L_4148f1
  %1323 = phi i64 [ %1551, %block_.L_4149c4 ], [ %.pre75, %block_.L_4148f1 ]
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -16388
  %1326 = add i64 %1323, 6
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RAX.i865, align 8
  %1330 = add i64 %1324, -16400
  %1331 = add i64 %1323, 12
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = sub i32 %1328, %1333
  %1335 = icmp ult i32 %1328, %1333
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %14, align 1
  %1337 = and i32 %1334, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %21, align 1
  %1342 = xor i32 %1333, %1328
  %1343 = xor i32 %1342, %1334
  %1344 = lshr i32 %1343, 4
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %27, align 1
  %1347 = icmp eq i32 %1334, 0
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %30, align 1
  %1349 = lshr i32 %1334, 31
  %1350 = trunc i32 %1349 to i8
  store i8 %1350, i8* %33, align 1
  %1351 = lshr i32 %1328, 31
  %1352 = lshr i32 %1333, 31
  %1353 = xor i32 %1352, %1351
  %1354 = xor i32 %1349, %1351
  %1355 = add nuw nsw i32 %1354, %1353
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %39, align 1
  %1358 = icmp ne i8 %1350, 0
  %1359 = xor i1 %1358, %1356
  %.v112 = select i1 %1359, i64 18, i64 191
  %1360 = add i64 %1323, %.v112
  store i64 %1360, i64* %3, align 8
  br i1 %1359, label %block_414930, label %block_.L_4149dd

block_414930:                                     ; preds = %block_.L_41491e
  %1361 = add i64 %1360, 7
  store i64 %1361, i64* %3, align 8
  %1362 = load i32, i32* %1327, align 4
  %1363 = sext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i865, align 8
  %1364 = shl nsw i64 %1363, 2
  %1365 = add i64 %1324, -16384
  %1366 = add i64 %1365, %1364
  %1367 = add i64 %1360, 14
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i505, align 8
  %1371 = add i64 %1324, -16436
  %1372 = add i64 %1360, 20
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = sub i32 %1369, %1374
  %1376 = icmp ult i32 %1369, %1374
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %14, align 1
  %1378 = and i32 %1375, 255
  %1379 = tail call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %21, align 1
  %1383 = xor i32 %1374, %1369
  %1384 = xor i32 %1383, %1375
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  store i8 %1387, i8* %27, align 1
  %1388 = icmp eq i32 %1375, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %30, align 1
  %1390 = lshr i32 %1375, 31
  %1391 = trunc i32 %1390 to i8
  store i8 %1391, i8* %33, align 1
  %1392 = lshr i32 %1369, 31
  %1393 = lshr i32 %1374, 31
  %1394 = xor i32 %1393, %1392
  %1395 = xor i32 %1390, %1392
  %1396 = add nuw nsw i32 %1395, %1394
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %39, align 1
  %1399 = icmp ne i8 %1391, 0
  %1400 = xor i1 %1399, %1397
  %.v119 = select i1 %1400, i64 26, i64 112
  %1401 = add i64 %1360, %.v119
  store i64 %1401, i64* %3, align 8
  br i1 %1400, label %block_41494a, label %block_.L_4149a0

block_41494a:                                     ; preds = %block_414930
  %1402 = add i64 %1401, 7
  store i64 %1402, i64* %3, align 8
  %1403 = load i32, i32* %1327, align 4
  %1404 = sext i32 %1403 to i64
  store i64 %1404, i64* %RAX.i865, align 8
  %1405 = shl nsw i64 %1404, 2
  %1406 = add i64 %1324, -14336
  %1407 = add i64 %1406, %1405
  %1408 = add i64 %1401, 15
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  store i8 0, i8* %14, align 1
  %1411 = and i32 %1410, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1416 = icmp eq i32 %1410, 0
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %30, align 1
  %1418 = lshr i32 %1410, 31
  %1419 = trunc i32 %1418 to i8
  store i8 %1419, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v121 = select i1 %1416, i64 86, i64 21
  %1420 = add i64 %1401, %.v121
  store i64 %1420, i64* %3, align 8
  br i1 %1416, label %block_.L_4149a0, label %block_41495f

block_41495f:                                     ; preds = %block_41494a
  %1421 = add i64 %1420, 7
  store i64 %1421, i64* %3, align 8
  %1422 = load i32, i32* %1327, align 4
  %1423 = sext i32 %1422 to i64
  store i64 %1423, i64* %RAX.i865, align 8
  %1424 = shl nsw i64 %1423, 2
  %1425 = add nsw i64 %1424, 8940528
  %1426 = add i64 %1420, 15
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  store i8 0, i8* %14, align 1
  %1429 = and i32 %1428, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1434 = icmp eq i32 %1428, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %30, align 1
  %1436 = lshr i32 %1428, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %1434, i64 21, i64 65
  %1438 = add i64 %1420, %.v122
  store i64 %1438, i64* %3, align 8
  br i1 %1434, label %block_414974, label %block_.L_4149a0

block_414974:                                     ; preds = %block_41495f
  %1439 = add i64 %1438, 7
  store i64 %1439, i64* %3, align 8
  %1440 = load i32, i32* %1327, align 4
  %1441 = sext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i865, align 8
  %1442 = shl nsw i64 %1441, 2
  %1443 = add i64 %1365, %1442
  %1444 = add i64 %1438, 14
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RCX.i505, align 8
  %1448 = add i64 %1438, 20
  store i64 %1448, i64* %3, align 8
  store i32 %1446, i32* %1373, align 4
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -16388
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 6
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1450 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RCX.i505, align 8
  %1456 = add i64 %1449, -16444
  %1457 = add i64 %1451, 12
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  store i32 %1454, i32* %1458, align 4
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -16392
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, 6
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RCX.i505, align 8
  %1466 = add i64 %1459, -16440
  %1467 = add i64 %1461, 12
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i32*
  store i32 %1464, i32* %1468, align 4
  %.pre79 = load i64, i64* %RBP.i, align 8
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_4149a0

block_.L_4149a0:                                  ; preds = %block_41495f, %block_414930, %block_414974, %block_41494a
  %1469 = phi i64 [ %1401, %block_414930 ], [ %.pre80, %block_414974 ], [ %1438, %block_41495f ], [ %1420, %block_41494a ]
  %1470 = phi i64 [ %1324, %block_414930 ], [ %.pre79, %block_414974 ], [ %1324, %block_41495f ], [ %1324, %block_41494a ]
  %1471 = add i64 %1470, -16388
  %1472 = add i64 %1469, 7
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = sext i32 %1474 to i64
  store i64 %1475, i64* %RAX.i865, align 8
  %1476 = shl nsw i64 %1475, 2
  %1477 = add i64 %1470, -14336
  %1478 = add i64 %1477, %1476
  %1479 = add i64 %1469, 15
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  store i8 0, i8* %14, align 1
  %1482 = and i32 %1481, 255
  %1483 = tail call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  store i8 %1486, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1487 = icmp eq i32 %1481, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %30, align 1
  %1489 = lshr i32 %1481, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v120 = select i1 %1487, i64 36, i64 21
  %1491 = add i64 %1469, %.v120
  store i64 %1491, i64* %3, align 8
  br i1 %1487, label %block_.L_4149c4, label %block_4149b5

block_4149b5:                                     ; preds = %block_.L_4149a0
  %1492 = add i64 %1470, -16392
  %1493 = add i64 %1491, 6
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = add i32 %1495, 1
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i865, align 8
  %1498 = icmp eq i32 %1495, -1
  %1499 = icmp eq i32 %1496, 0
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = and i32 %1496, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  %1507 = xor i32 %1496, %1495
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  store i8 %1510, i8* %27, align 1
  %1511 = zext i1 %1499 to i8
  store i8 %1511, i8* %30, align 1
  %1512 = lshr i32 %1496, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %33, align 1
  %1514 = lshr i32 %1495, 31
  %1515 = xor i32 %1512, %1514
  %1516 = add nuw nsw i32 %1515, %1512
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %39, align 1
  %1519 = add i64 %1491, 15
  store i64 %1519, i64* %3, align 8
  store i32 %1496, i32* %1494, align 4
  %.pre81 = load i64, i64* %3, align 8
  %.pre82 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4149c4

block_.L_4149c4:                                  ; preds = %block_4149b5, %block_.L_4149a0
  %1520 = phi i64 [ %.pre82, %block_4149b5 ], [ %1470, %block_.L_4149a0 ]
  %1521 = phi i64 [ %.pre81, %block_4149b5 ], [ %1491, %block_.L_4149a0 ]
  %1522 = add i64 %1520, -16388
  %1523 = add i64 %1521, 11
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = add i32 %1525, 1
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RAX.i865, align 8
  %1528 = icmp eq i32 %1525, -1
  %1529 = icmp eq i32 %1526, 0
  %1530 = or i1 %1528, %1529
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %14, align 1
  %1532 = and i32 %1526, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %21, align 1
  %1537 = xor i32 %1526, %1525
  %1538 = lshr i32 %1537, 4
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %27, align 1
  %1541 = zext i1 %1529 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = lshr i32 %1526, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %33, align 1
  %1544 = lshr i32 %1525, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1542
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %39, align 1
  %1549 = add i64 %1521, 20
  store i64 %1549, i64* %3, align 8
  store i32 %1526, i32* %1524, align 4
  %1550 = load i64, i64* %3, align 8
  %1551 = add i64 %1550, -186
  store i64 %1551, i64* %3, align 8
  br label %block_.L_41491e

block_.L_4149dd:                                  ; preds = %block_.L_41491e
  %1552 = add i64 %1324, -16436
  %1553 = add i64 %1360, 10
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = add i32 %1555, -100000000
  %1557 = icmp ult i32 %1555, 100000000
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %14, align 1
  %1559 = and i32 %1556, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  %1564 = xor i32 %1556, %1555
  %1565 = lshr i32 %1564, 4
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  store i8 %1567, i8* %27, align 1
  %1568 = icmp eq i32 %1556, 0
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %30, align 1
  %1570 = lshr i32 %1556, 31
  %1571 = trunc i32 %1570 to i8
  store i8 %1571, i8* %33, align 1
  %1572 = lshr i32 %1555, 31
  %1573 = xor i32 %1570, %1572
  %1574 = add nuw nsw i32 %1573, %1572
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %39, align 1
  %.v113 = select i1 %1568, i64 16, i64 38
  %1577 = add i64 %1360, %.v113
  store i64 %1577, i64* %3, align 8
  br i1 %1568, label %block_4149ed, label %block_.L_414a03

block_4149ed:                                     ; preds = %block_.L_4149dd
  %1578 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %1579 = add i32 %1578, 30
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RAX.i865, align 8
  %1581 = icmp ugt i32 %1578, -31
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1579, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = xor i32 %1578, 16
  %1589 = xor i32 %1588, %1579
  %1590 = lshr i32 %1589, 4
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %27, align 1
  %1593 = icmp eq i32 %1579, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %30, align 1
  %1595 = lshr i32 %1579, 31
  %1596 = trunc i32 %1595 to i8
  store i8 %1596, i8* %33, align 1
  %1597 = lshr i32 %1578, 31
  %1598 = xor i32 %1595, %1597
  %1599 = add nuw nsw i32 %1598, %1595
  %1600 = icmp eq i32 %1599, 2
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %39, align 1
  %1602 = add i64 %1577, 17
  store i64 %1602, i64* %3, align 8
  store i32 %1579, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %1603 = add i64 %1577, -946
  br label %block_.L_41463b.backedge

block_.L_41463b.backedge:                         ; preds = %block_4149ed, %block_.L_414baa
  %.sink = phi i64 [ %1603, %block_4149ed ], [ %1993, %block_.L_414baa ]
  %MEMORY.3.be = phi %struct.Memory* [ %836, %block_4149ed ], [ %MEMORY.17, %block_.L_414baa ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_41463b

block_.L_414a03:                                  ; preds = %block_.L_4149dd
  %1604 = add i64 %1324, -12288
  store i64 %1604, i64* %RDI.i1000, align 8
  %1605 = add i64 %1324, -16444
  %1606 = add i64 %1577, 13
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %RSI.i761, align 8
  %1610 = add i64 %1577, -37587
  %1611 = add i64 %1577, 18
  %1612 = load i64, i64* %6, align 8
  %1613 = add i64 %1612, -8
  %1614 = inttoptr i64 %1613 to i64*
  store i64 %1611, i64* %1614, align 8
  store i64 %1613, i64* %6, align 8
  store i64 %1610, i64* %3, align 8
  %call2_414a10 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1610, %struct.Memory* %836)
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -16416
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, 7
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1616 to i64*
  %1620 = load i64, i64* %1619, align 8
  store i64 %1620, i64* %RDI.i1000, align 8
  %1621 = add i64 %1620, 16
  %1622 = add i64 %1617, 11
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RDI.i1000, align 8
  %1625 = add i64 %1615, -16440
  %1626 = add i64 %1617, 18
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RAX.i865, align 8
  %1630 = shl nsw i64 %1629, 3
  %1631 = add i64 %1630, %1624
  %1632 = add i64 %1617, 22
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i64*
  %1634 = load i64, i64* %1633, align 8
  store i64 %1634, i64* %RAX.i865, align 8
  %1635 = add i64 %1615, -16432
  %1636 = add i64 %1617, 29
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i64*
  store i64 %1634, i64* %1637, align 8
  %1638 = load i64, i64* %RBP.i, align 8
  %1639 = add i64 %1638, -16432
  %1640 = load i64, i64* %3, align 8
  %1641 = add i64 %1640, 7
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1639 to i64*
  %1643 = load i64, i64* %1642, align 8
  store i64 %1643, i64* %RDI.i1000, align 8
  %1644 = add i64 %1640, -5986
  %1645 = add i64 %1640, 12
  %1646 = load i64, i64* %6, align 8
  %1647 = add i64 %1646, -8
  %1648 = inttoptr i64 %1647 to i64*
  store i64 %1645, i64* %1648, align 8
  store i64 %1647, i64* %6, align 8
  store i64 %1644, i64* %3, align 8
  %call2_414a39 = tail call %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* nonnull %0, i64 %1644, %struct.Memory* %call2_414a10)
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -16424
  %1651 = load i64, i64* %RAX.i865, align 8
  %1652 = load i64, i64* %3, align 8
  %1653 = add i64 %1652, 7
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1650 to i64*
  store i64 %1651, i64* %1654, align 8
  %1655 = load i64, i64* %RBP.i, align 8
  %1656 = add i64 %1655, -16424
  %1657 = load i64, i64* %3, align 8
  %1658 = add i64 %1657, 7
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1656 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %RDI.i1000, align 8
  %1661 = add i64 %1657, -3221
  %1662 = add i64 %1657, 12
  %1663 = load i64, i64* %6, align 8
  %1664 = add i64 %1663, -8
  %1665 = inttoptr i64 %1664 to i64*
  store i64 %1662, i64* %1665, align 8
  store i64 %1664, i64* %6, align 8
  store i64 %1661, i64* %3, align 8
  %call2_414a4c = tail call %struct.Memory* @sub_413db0.develop_node(%struct.State* nonnull %0, i64 %1661, %struct.Memory* %call2_414a39)
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -16424
  %1668 = load i64, i64* %3, align 8
  %1669 = add i64 %1668, 7
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1667 to i64*
  %1671 = load i64, i64* %1670, align 8
  store i64 %1671, i64* %RDI.i1000, align 8
  %1672 = add i64 %1668, -2257
  %1673 = add i64 %1668, 12
  %1674 = load i64, i64* %6, align 8
  %1675 = add i64 %1674, -8
  %1676 = inttoptr i64 %1675 to i64*
  store i64 %1673, i64* %1676, align 8
  store i64 %1675, i64* %6, align 8
  store i64 %1672, i64* %3, align 8
  %call2_414a58 = tail call %struct.Memory* @sub_414180.update_ancestors(%struct.State* nonnull %0, i64 %1672, %struct.Memory* %call2_414a4c)
  %1677 = load i64, i64* %3, align 8
  %1678 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RSI.i761, align 8
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -16452
  %1682 = add i64 %1677, 13
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = sub i32 %1678, %1684
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RSI.i761, align 8
  %1687 = icmp ult i32 %1678, %1684
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %14, align 1
  %1689 = and i32 %1685, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %21, align 1
  %1694 = xor i32 %1684, %1678
  %1695 = xor i32 %1694, %1685
  %1696 = lshr i32 %1695, 4
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, i8* %27, align 1
  %1699 = icmp eq i32 %1685, 0
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %30, align 1
  %1701 = lshr i32 %1685, 31
  %1702 = trunc i32 %1701 to i8
  store i8 %1702, i8* %33, align 1
  %1703 = lshr i32 %1678, 31
  %1704 = lshr i32 %1684, 31
  %1705 = xor i32 %1704, %1703
  %1706 = xor i32 %1701, %1703
  %1707 = add nuw nsw i32 %1706, %1705
  %1708 = icmp eq i32 %1707, 2
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %39, align 1
  %1710 = add i64 %1680, -16444
  %1711 = add i64 %1677, 20
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = sext i32 %1713 to i64
  store i64 %1714, i64* %RAX.i865, align 8
  %1715 = shl nsw i64 %1714, 2
  %1716 = add nsw i64 %1715, -16384
  %1717 = add i64 %1716, %1680
  %1718 = add i64 %1677, 27
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = add i32 %1720, %1685
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RSI.i761, align 8
  %1723 = icmp ult i32 %1721, %1685
  %1724 = icmp ult i32 %1721, %1720
  %1725 = or i1 %1723, %1724
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = and i32 %1721, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %21, align 1
  %1732 = xor i32 %1720, %1685
  %1733 = xor i32 %1732, %1721
  %1734 = lshr i32 %1733, 4
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %27, align 1
  %1737 = icmp eq i32 %1721, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %30, align 1
  %1739 = lshr i32 %1721, 31
  %1740 = trunc i32 %1739 to i8
  store i8 %1740, i8* %33, align 1
  %1741 = lshr i32 %1720, 31
  %1742 = xor i32 %1739, %1701
  %1743 = xor i32 %1739, %1741
  %1744 = add nuw nsw i32 %1742, %1743
  %1745 = icmp eq i32 %1744, 2
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %39, align 1
  %1747 = add i64 %1680, -16384
  %1748 = add i64 %1747, %1715
  %1749 = add i64 %1677, 34
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  store i32 %1721, i32* %1750, align 4
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -16416
  %1753 = load i64, i64* %3, align 8
  %1754 = add i64 %1753, 7
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1752 to i64*
  %1756 = load i64, i64* %1755, align 8
  store i64 %1756, i64* %RAX.i865, align 8
  %1757 = add i64 %1756, 16
  %1758 = add i64 %1753, 11
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i64*
  %1760 = load i64, i64* %1759, align 8
  store i64 %1760, i64* %RAX.i865, align 8
  %1761 = add i64 %1751, -16440
  %1762 = add i64 %1753, 18
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = sext i32 %1764 to i64
  store i64 %1765, i64* %RDI.i1000, align 8
  %1766 = shl nsw i64 %1765, 3
  %1767 = add i64 %1766, %1760
  %1768 = add i64 %1753, 22
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i64*
  %1770 = load i64, i64* %1769, align 8
  store i64 %1770, i64* %RAX.i865, align 8
  %1771 = add i64 %1770, 4
  %1772 = add i64 %1753, 26
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  store i8 0, i8* %14, align 1
  %1775 = and i32 %1774, 255
  %1776 = tail call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  store i8 %1779, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1780 = icmp eq i32 %1774, 0
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %30, align 1
  %1782 = lshr i32 %1774, 31
  %1783 = trunc i32 %1782 to i8
  store i8 %1783, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v114 = select i1 %1780, i64 32, i64 189
  %1784 = add i64 %1753, %.v114
  store i64 %1784, i64* %3, align 8
  br i1 %1780, label %block_414a9f, label %block_.L_414b3c

block_414a9f:                                     ; preds = %block_.L_414a03
  %1785 = add i64 %1784, 7
  store i64 %1785, i64* %3, align 8
  %1786 = load i64, i64* %1755, align 8
  store i64 %1786, i64* %RAX.i865, align 8
  %1787 = add i64 %1786, 16
  %1788 = add i64 %1784, 11
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %RAX.i865, align 8
  %1791 = add i64 %1784, 18
  store i64 %1791, i64* %3, align 8
  %1792 = load i32, i32* %1763, align 4
  %1793 = sext i32 %1792 to i64
  store i64 %1793, i64* %RCX.i505, align 8
  %1794 = shl nsw i64 %1793, 3
  %1795 = add i64 %1794, %1790
  %1796 = add i64 %1784, 22
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %RAX.i865, align 8
  %1799 = add i64 %1798, 8
  %1800 = add i64 %1784, 29
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = add i32 %1802, -100000000
  %1804 = icmp ult i32 %1802, 100000000
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
  %.v117 = select i1 %1815, i64 35, i64 157
  %1824 = add i64 %1784, %.v117
  store i64 %1824, i64* %3, align 8
  br i1 %1815, label %block_414ac2, label %block_.L_414b3c

block_414ac2:                                     ; preds = %block_414a9f
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  %1825 = load i32, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1826 = and i32 %1825, 255
  %1827 = tail call i32 @llvm.ctpop.i32(i32 %1826)
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1831 = icmp eq i32 %1825, 0
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %30, align 1
  %1833 = lshr i32 %1825, 31
  %1834 = trunc i32 %1833 to i8
  store i8 %1834, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v118 = select i1 %1831, i64 25, i64 59
  %1835 = add i64 %1824, %.v118
  store i64 %1835, i64* %3, align 8
  br i1 %1831, label %block_414adb, label %block_.L_414afd

block_414adb:                                     ; preds = %block_414ac2
  store i64 ptrtoint (%G__0x428e4b_type* @G__0x428e4b to i64), i64* %RDI.i1000, align 8
  store i32 1, i32* bitcast (%G_0x880654_type* @G_0x880654 to i32*), align 8
  store i8 0, i8* %AL.i945, align 1
  %1836 = add i64 %1835, -81451
  %1837 = add i64 %1835, 28
  %1838 = load i64, i64* %6, align 8
  %1839 = add i64 %1838, -8
  %1840 = inttoptr i64 %1839 to i64*
  store i64 %1837, i64* %1840, align 8
  store i64 %1839, i64* %6, align 8
  store i64 %1836, i64* %3, align 8
  %1841 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_414a58)
  %1842 = load i64, i64* %RBP.i, align 8
  %1843 = add i64 %1842, -16552
  %1844 = load i32, i32* %EAX.i1151, align 4
  %1845 = load i64, i64* %3, align 8
  %1846 = add i64 %1845, 6
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1843 to i32*
  store i32 %1844, i32* %1847, align 4
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_414afd

block_.L_414afd:                                  ; preds = %block_414ac2, %block_414adb
  %1848 = phi i64 [ %1835, %block_414ac2 ], [ %.pre77, %block_414adb ]
  %1849 = phi i64 [ %1751, %block_414ac2 ], [ %.pre76, %block_414adb ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_414a58, %block_414ac2 ], [ %1841, %block_414adb ]
  %1850 = add i64 %1849, -16416
  %1851 = add i64 %1848, 7
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i64*
  %1853 = load i64, i64* %1852, align 8
  store i64 %1853, i64* %RAX.i865, align 8
  %1854 = add i64 %1853, 16
  %1855 = add i64 %1848, 11
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i64*
  %1857 = load i64, i64* %1856, align 8
  store i64 %1857, i64* %RAX.i865, align 8
  %1858 = add i64 %1849, -16440
  %1859 = add i64 %1848, 18
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i32*
  %1861 = load i32, i32* %1860, align 4
  %1862 = sext i32 %1861 to i64
  store i64 %1862, i64* %RCX.i505, align 8
  %1863 = shl nsw i64 %1862, 3
  %1864 = add i64 %1863, %1857
  %1865 = add i64 %1848, 22
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i64*
  %1867 = load i64, i64* %1866, align 8
  store i64 %1867, i64* %RAX.i865, align 8
  %1868 = add i64 %1867, 32
  %1869 = add i64 %1848, 26
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i64*
  %1871 = load i64, i64* %1870, align 8
  store i64 %1871, i64* %RCX.i505, align 8
  store i64 %1871, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1872 = add i64 %1867, 40
  %1873 = add i64 %1848, 38
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i64*
  %1875 = load i64, i64* %1874, align 8
  store i64 %1875, i64* %RCX.i505, align 8
  store i64 %1875, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1876 = add i64 %1867, 48
  %1877 = add i64 %1848, 50
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i64*
  %1879 = load i64, i64* %1878, align 8
  store i64 %1879, i64* %RAX.i865, align 8
  %1880 = add i64 %1848, 58
  store i64 %1880, i64* %3, align 8
  store i64 %1879, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %1881 = add i64 %1848, 168
  br label %block_.L_414ba5

block_.L_414b3c:                                  ; preds = %block_414a9f, %block_.L_414a03
  %1882 = phi i64 [ %1824, %block_414a9f ], [ %1784, %block_.L_414a03 ]
  %1883 = add i64 %1882, 7
  store i64 %1883, i64* %3, align 8
  %1884 = load i64, i64* %1755, align 8
  store i64 %1884, i64* %RAX.i865, align 8
  %1885 = add i64 %1884, 16
  %1886 = add i64 %1882, 11
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i64*
  %1888 = load i64, i64* %1887, align 8
  store i64 %1888, i64* %RAX.i865, align 8
  %1889 = add i64 %1882, 18
  store i64 %1889, i64* %3, align 8
  %1890 = load i32, i32* %1763, align 4
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RCX.i505, align 8
  %1892 = shl nsw i64 %1891, 3
  %1893 = add i64 %1892, %1888
  %1894 = add i64 %1882, 22
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i64*
  %1896 = load i64, i64* %1895, align 8
  store i64 %1896, i64* %RAX.i865, align 8
  %1897 = add i64 %1896, 8
  %1898 = add i64 %1882, 26
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  store i8 0, i8* %14, align 1
  %1901 = and i32 %1900, 255
  %1902 = tail call i32 @llvm.ctpop.i32(i32 %1901)
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  %1905 = xor i8 %1904, 1
  store i8 %1905, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1906 = icmp eq i32 %1900, 0
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %30, align 1
  %1908 = lshr i32 %1900, 31
  %1909 = trunc i32 %1908 to i8
  store i8 %1909, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v115 = select i1 %1906, i64 32, i64 100
  %1910 = add i64 %1882, %.v115
  store i64 %1910, i64* %3, align 8
  br i1 %1906, label %block_414b5c, label %block_.L_414ba0

block_414b5c:                                     ; preds = %block_.L_414b3c
  %1911 = add i64 %1910, 7
  store i64 %1911, i64* %3, align 8
  %1912 = load i64, i64* %1755, align 8
  store i64 %1912, i64* %RAX.i865, align 8
  %1913 = add i64 %1912, 16
  %1914 = add i64 %1910, 11
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to i64*
  %1916 = load i64, i64* %1915, align 8
  store i64 %1916, i64* %RAX.i865, align 8
  %1917 = add i64 %1910, 18
  store i64 %1917, i64* %3, align 8
  %1918 = load i32, i32* %1763, align 4
  %1919 = sext i32 %1918 to i64
  store i64 %1919, i64* %RCX.i505, align 8
  %1920 = shl nsw i64 %1919, 3
  %1921 = add i64 %1920, %1916
  %1922 = add i64 %1910, 22
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i64*
  %1924 = load i64, i64* %1923, align 8
  store i64 %1924, i64* %RAX.i865, align 8
  %1925 = add i64 %1924, 4
  %1926 = add i64 %1910, 29
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = add i32 %1928, -100000000
  %1930 = icmp ult i32 %1928, 100000000
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %14, align 1
  %1932 = and i32 %1929, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %21, align 1
  %1937 = xor i32 %1929, %1928
  %1938 = lshr i32 %1937, 4
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  store i8 %1940, i8* %27, align 1
  %1941 = icmp eq i32 %1929, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %30, align 1
  %1943 = lshr i32 %1929, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %33, align 1
  %1945 = lshr i32 %1928, 31
  %1946 = xor i32 %1943, %1945
  %1947 = add nuw nsw i32 %1946, %1945
  %1948 = icmp eq i32 %1947, 2
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %39, align 1
  %.v116 = select i1 %1941, i64 35, i64 68
  %1950 = add i64 %1910, %.v116
  store i64 %1950, i64* %3, align 8
  br i1 %1941, label %block_414b7f, label %block_.L_414ba0

block_414b7f:                                     ; preds = %block_414b5c
  %1951 = add i64 %1751, -16444
  %1952 = add i64 %1950, 7
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i32*
  %1954 = load i32, i32* %1953, align 4
  %1955 = sext i32 %1954 to i64
  store i64 %1955, i64* %RAX.i865, align 8
  %1956 = shl nsw i64 %1955, 2
  %1957 = add nsw i64 %1956, 8940528
  %1958 = add i64 %1950, 18
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  store i32 1, i32* %1959, align 4
  %1960 = load i64, i64* %RBP.i, align 8
  %1961 = add i64 %1960, -16448
  %1962 = load i64, i64* %3, align 8
  %1963 = add i64 %1962, 6
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1961 to i32*
  %1965 = load i32, i32* %1964, align 4
  %1966 = add i32 %1965, 1
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RCX.i505, align 8
  %1968 = icmp eq i32 %1965, -1
  %1969 = icmp eq i32 %1966, 0
  %1970 = or i1 %1968, %1969
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %14, align 1
  %1972 = and i32 %1966, 255
  %1973 = tail call i32 @llvm.ctpop.i32(i32 %1972)
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = xor i8 %1975, 1
  store i8 %1976, i8* %21, align 1
  %1977 = xor i32 %1966, %1965
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %27, align 1
  %1981 = zext i1 %1969 to i8
  store i8 %1981, i8* %30, align 1
  %1982 = lshr i32 %1966, 31
  %1983 = trunc i32 %1982 to i8
  store i8 %1983, i8* %33, align 1
  %1984 = lshr i32 %1965, 31
  %1985 = xor i32 %1982, %1984
  %1986 = add nuw nsw i32 %1985, %1982
  %1987 = icmp eq i32 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %39, align 1
  %1989 = add i64 %1962, 15
  store i64 %1989, i64* %3, align 8
  store i32 %1966, i32* %1964, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_414ba0

block_.L_414ba0:                                  ; preds = %block_414b5c, %block_.L_414b3c, %block_414b7f
  %1990 = phi i64 [ %.pre78, %block_414b7f ], [ %1950, %block_414b5c ], [ %1910, %block_.L_414b3c ]
  %1991 = add i64 %1990, 5
  store i64 %1991, i64* %3, align 8
  br label %block_.L_414ba5

block_.L_414ba5:                                  ; preds = %block_.L_414ba0, %block_.L_414afd
  %storemerge43 = phi i64 [ %1881, %block_.L_414afd ], [ %1991, %block_.L_414ba0 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.13, %block_.L_414afd ], [ %call2_414a58, %block_.L_414ba0 ]
  %1992 = add i64 %storemerge43, 5
  store i64 %1992, i64* %3, align 8
  br label %block_.L_414baa

block_.L_414baa:                                  ; preds = %block_.L_414ba5, %block_.L_4148ec
  %storemerge42 = phi i64 [ %1279, %block_.L_4148ec ], [ %1992, %block_.L_414ba5 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.9, %block_.L_4148ec ], [ %MEMORY.16, %block_.L_414ba5 ]
  %1993 = add i64 %storemerge42, -1391
  br label %block_.L_41463b.backedge

block_414be4:                                     ; preds = %block_4146ea
  %1994 = add i64 %753, -16388
  %1995 = add i64 %771, 10
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i32*
  store i32 0, i32* %1996, align 4
  %1997 = bitcast i64* %6 to i64**
  %1998 = bitcast [32 x %union.VectorReg]* %723 to <2 x i32>*
  %1999 = bitcast i64* %733 to <2 x i32>*
  %2000 = bitcast i8* %731 to i32*
  %2001 = bitcast i64* %733 to i32*
  %2002 = bitcast i8* %735 to i32*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2004 = bitcast %union.VectorReg* %2003 to i8*
  %2005 = bitcast %union.VectorReg* %2003 to <2 x i32>*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2007 = bitcast i64* %2006 to <2 x i32>*
  %2008 = bitcast %union.VectorReg* %2003 to float*
  %2009 = getelementptr inbounds i8, i8* %2004, i64 4
  %2010 = bitcast i8* %2009 to i32*
  %2011 = bitcast i64* %2006 to i32*
  %2012 = getelementptr inbounds i8, i8* %2004, i64 12
  %2013 = bitcast i8* %2012 to i32*
  %2014 = bitcast %union.VectorReg* %2003 to <2 x float>*
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_414bee

block_.L_414bee:                                  ; preds = %block_.L_414ded, %block_414be4
  %2015 = phi i64 [ %.pre60, %block_414be4 ], [ %2565, %block_.L_414ded ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.3, %block_414be4 ], [ %MEMORY.22, %block_.L_414ded ]
  %2016 = load i64, i64* %RBP.i, align 8
  %2017 = add i64 %2016, -16388
  %2018 = add i64 %2015, 6
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RAX.i865, align 8
  %2022 = add i64 %2016, -16400
  %2023 = add i64 %2015, 12
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i32*
  %2025 = load i32, i32* %2024, align 4
  %2026 = sub i32 %2020, %2025
  %2027 = icmp ult i32 %2020, %2025
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %14, align 1
  %2029 = and i32 %2026, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %21, align 1
  %2034 = xor i32 %2025, %2020
  %2035 = xor i32 %2034, %2026
  %2036 = lshr i32 %2035, 4
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  store i8 %2038, i8* %27, align 1
  %2039 = icmp eq i32 %2026, 0
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %30, align 1
  %2041 = lshr i32 %2026, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %33, align 1
  %2043 = lshr i32 %2020, 31
  %2044 = lshr i32 %2025, 31
  %2045 = xor i32 %2044, %2043
  %2046 = xor i32 %2041, %2043
  %2047 = add nuw nsw i32 %2046, %2045
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %39, align 1
  %2050 = icmp ne i8 %2042, 0
  %2051 = xor i1 %2050, %2048
  %.v98 = select i1 %2051, i64 18, i64 536
  %2052 = add i64 %2015, %.v98
  store i64 %2052, i64* %3, align 8
  br i1 %2051, label %block_414c00, label %block_.L_414e06

block_414c00:                                     ; preds = %block_.L_414bee
  %2053 = add i64 %2052, 7
  store i64 %2053, i64* %3, align 8
  %2054 = load i32, i32* %2019, align 4
  %2055 = sext i32 %2054 to i64
  store i64 %2055, i64* %RAX.i865, align 8
  %2056 = shl nsw i64 %2055, 2
  %2057 = add i64 %2016, -14336
  %2058 = add i64 %2057, %2056
  %2059 = add i64 %2052, 15
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i32*
  %2061 = load i32, i32* %2060, align 4
  store i8 0, i8* %14, align 1
  %2062 = and i32 %2061, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2067 = icmp eq i32 %2061, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %30, align 1
  %2069 = lshr i32 %2061, 31
  %2070 = trunc i32 %2069 to i8
  store i8 %2070, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v106 = select i1 %2067, i64 493, i64 21
  %2071 = add i64 %2052, %.v106
  store i64 %2071, i64* %3, align 8
  br i1 %2067, label %block_.L_414ded, label %block_414c15

block_414c15:                                     ; preds = %block_414c00
  %2072 = add i64 %2016, -16468
  store i64 %2072, i64* %RDI.i1000, align 8
  %2073 = add i64 %2016, -12288
  store i64 %2073, i64* %RAX.i865, align 8
  %2074 = add i64 %2071, 21
  store i64 %2074, i64* %3, align 8
  %2075 = load i32, i32* %2019, align 4
  %2076 = sext i32 %2075 to i64
  %2077 = mul nsw i64 %2076, 24
  store i64 %2077, i64* %RCX.i505, align 8
  %2078 = lshr i64 %2077, 63
  %2079 = add i64 %2077, %2073
  store i64 %2079, i64* %RAX.i865, align 8
  %2080 = icmp ult i64 %2079, %2073
  %2081 = icmp ult i64 %2079, %2077
  %2082 = or i1 %2080, %2081
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %14, align 1
  %2084 = trunc i64 %2079 to i32
  %2085 = and i32 %2084, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %21, align 1
  %2090 = xor i64 %2077, %2073
  %2091 = xor i64 %2090, %2079
  %2092 = lshr i64 %2091, 4
  %2093 = trunc i64 %2092 to i8
  %2094 = and i8 %2093, 1
  store i8 %2094, i8* %27, align 1
  %2095 = icmp eq i64 %2079, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %30, align 1
  %2097 = lshr i64 %2079, 63
  %2098 = trunc i64 %2097 to i8
  store i8 %2098, i8* %33, align 1
  %2099 = lshr i64 %2073, 63
  %2100 = xor i64 %2097, %2099
  %2101 = xor i64 %2097, %2078
  %2102 = add nuw nsw i64 %2100, %2101
  %2103 = icmp eq i64 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %39, align 1
  %2105 = inttoptr i64 %2079 to i64*
  %2106 = add i64 %2071, 31
  store i64 %2106, i64* %3, align 8
  %2107 = load i64, i64* %2105, align 8
  store i64 %2107, i64* %RCX.i505, align 8
  %2108 = load i64*, i64** %1997, align 8
  %2109 = add i64 %2071, 35
  store i64 %2109, i64* %3, align 8
  store i64 %2107, i64* %2108, align 8
  %2110 = load i64, i64* %RAX.i865, align 8
  %2111 = add i64 %2110, 8
  %2112 = load i64, i64* %3, align 8
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2111 to i64*
  %2115 = load i64, i64* %2114, align 8
  store i64 %2115, i64* %RCX.i505, align 8
  %2116 = load i64, i64* %6, align 8
  %2117 = add i64 %2116, 8
  %2118 = add i64 %2112, 9
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i64*
  store i64 %2115, i64* %2119, align 8
  %2120 = load i64, i64* %RAX.i865, align 8
  %2121 = add i64 %2120, 16
  %2122 = load i64, i64* %3, align 8
  %2123 = add i64 %2122, 4
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2121 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %RAX.i865, align 8
  %2126 = load i64, i64* %6, align 8
  %2127 = add i64 %2126, 16
  %2128 = add i64 %2122, 9
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i64*
  store i64 %2125, i64* %2129, align 8
  %2130 = load i64, i64* %3, align 8
  %2131 = add i64 %2130, 52518
  %2132 = add i64 %2130, 5
  %2133 = load i64, i64* %6, align 8
  %2134 = add i64 %2133, -8
  %2135 = inttoptr i64 %2134 to i64*
  store i64 %2132, i64* %2135, align 8
  store i64 %2134, i64* %6, align 8
  store i64 %2131, i64* %3, align 8
  %call2_414c4a = tail call %struct.Memory* @sub_421970.comp_to_san(%struct.State* nonnull %0, i64 %2131, %struct.Memory* %MEMORY.18)
  %2136 = load i64, i64* %RBP.i, align 8
  %2137 = add i64 %2136, -16416
  %2138 = load i64, i64* %3, align 8
  %2139 = add i64 %2138, 7
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2137 to i64*
  %2141 = load i64, i64* %2140, align 8
  store i64 %2141, i64* %RAX.i865, align 8
  %2142 = add i64 %2141, 16
  %2143 = add i64 %2138, 11
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i64*
  %2145 = load i64, i64* %2144, align 8
  store i64 %2145, i64* %RAX.i865, align 8
  %2146 = add i64 %2136, -16392
  %2147 = add i64 %2138, 18
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = sext i32 %2149 to i64
  store i64 %2150, i64* %RCX.i505, align 8
  %2151 = shl nsw i64 %2150, 3
  %2152 = add i64 %2151, %2145
  %2153 = add i64 %2138, 22
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i64*
  %2155 = load i64, i64* %2154, align 8
  store i64 %2155, i64* %RAX.i865, align 8
  %2156 = add i64 %2155, 4
  %2157 = add i64 %2138, 26
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  store i8 0, i8* %14, align 1
  %2160 = and i32 %2159, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2165 = icmp eq i32 %2159, 0
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %30, align 1
  %2167 = lshr i32 %2159, 31
  %2168 = trunc i32 %2167 to i8
  store i8 %2168, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v107 = select i1 %2165, i64 314, i64 32
  %2169 = add i64 %2138, %.v107
  store i64 %2169, i64* %3, align 8
  br i1 %2165, label %block_.L_414d89, label %block_414c6f

block_414c6f:                                     ; preds = %block_414c15
  %2170 = add i64 %2169, 7
  store i64 %2170, i64* %3, align 8
  %2171 = load i64, i64* %2140, align 8
  store i64 %2171, i64* %RAX.i865, align 8
  %2172 = add i64 %2171, 16
  %2173 = add i64 %2169, 11
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i64*
  %2175 = load i64, i64* %2174, align 8
  store i64 %2175, i64* %RAX.i865, align 8
  %2176 = add i64 %2169, 18
  store i64 %2176, i64* %3, align 8
  %2177 = load i32, i32* %2148, align 4
  %2178 = sext i32 %2177 to i64
  store i64 %2178, i64* %RCX.i505, align 8
  %2179 = shl nsw i64 %2178, 3
  %2180 = add i64 %2179, %2175
  %2181 = add i64 %2169, 22
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i64*
  %2183 = load i64, i64* %2182, align 8
  store i64 %2183, i64* %RAX.i865, align 8
  %2184 = add i64 %2183, 8
  %2185 = add i64 %2169, 27
  store i64 %2185, i64* %3, align 8
  %2186 = load <2 x i32>, <2 x i32>* %1998, align 1
  %2187 = load <2 x i32>, <2 x i32>* %1999, align 1
  %2188 = inttoptr i64 %2184 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = sitofp i32 %2189 to float
  store float %2190, float* %729, align 1
  %2191 = extractelement <2 x i32> %2186, i32 1
  store i32 %2191, i32* %2000, align 1
  %2192 = extractelement <2 x i32> %2187, i32 0
  store i32 %2192, i32* %2001, align 1
  %2193 = extractelement <2 x i32> %2187, i32 1
  store i32 %2193, i32* %2002, align 1
  %2194 = add i64 %2169, 34
  store i64 %2194, i64* %3, align 8
  %2195 = load i64, i64* %2140, align 8
  store i64 %2195, i64* %RAX.i865, align 8
  %2196 = add i64 %2195, 16
  %2197 = add i64 %2169, 38
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %RAX.i865, align 8
  %2200 = add i64 %2169, 45
  store i64 %2200, i64* %3, align 8
  %2201 = load i32, i32* %2148, align 4
  %2202 = sext i32 %2201 to i64
  store i64 %2202, i64* %RCX.i505, align 8
  %2203 = shl nsw i64 %2202, 3
  %2204 = add i64 %2203, %2199
  %2205 = add i64 %2169, 49
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to i64*
  %2207 = load i64, i64* %2206, align 8
  store i64 %2207, i64* %RAX.i865, align 8
  %2208 = add i64 %2207, 4
  %2209 = add i64 %2169, 54
  store i64 %2209, i64* %3, align 8
  %2210 = load <2 x i32>, <2 x i32>* %2005, align 1
  %2211 = load <2 x i32>, <2 x i32>* %2007, align 1
  %2212 = inttoptr i64 %2208 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = sitofp i32 %2213 to float
  store float %2214, float* %2008, align 1
  %2215 = extractelement <2 x i32> %2210, i32 1
  store i32 %2215, i32* %2010, align 1
  %2216 = extractelement <2 x i32> %2211, i32 0
  store i32 %2216, i32* %2011, align 1
  %2217 = extractelement <2 x i32> %2211, i32 1
  store i32 %2217, i32* %2013, align 1
  %2218 = load <2 x float>, <2 x float>* %744, align 1
  %2219 = load <2 x i32>, <2 x i32>* %1999, align 1
  %2220 = load <2 x float>, <2 x float>* %2014, align 1
  %2221 = extractelement <2 x float> %2218, i32 0
  %2222 = extractelement <2 x float> %2220, i32 0
  %2223 = fdiv float %2221, %2222
  store float %2223, float* %729, align 1
  %2224 = bitcast <2 x float> %2218 to <2 x i32>
  %2225 = extractelement <2 x i32> %2224, i32 1
  store i32 %2225, i32* %2000, align 1
  %2226 = extractelement <2 x i32> %2219, i32 0
  store i32 %2226, i32* %2001, align 1
  %2227 = extractelement <2 x i32> %2219, i32 1
  store i32 %2227, i32* %2002, align 1
  %2228 = add i64 %2136, -16476
  %2229 = add i64 %2169, 65
  store i64 %2229, i64* %3, align 8
  %2230 = load <2 x float>, <2 x float>* %744, align 1
  %2231 = extractelement <2 x float> %2230, i32 0
  %2232 = inttoptr i64 %2228 to float*
  %2233 = load float, float* %2232, align 4
  %2234 = fcmp uno float %2231, %2233
  br i1 %2234, label %2235, label %2245

; <label>:2235:                                   ; preds = %block_414c6f
  %2236 = fadd float %2231, %2233
  %2237 = bitcast float %2236 to i32
  %2238 = and i32 %2237, 2143289344
  %2239 = icmp eq i32 %2238, 2139095040
  %2240 = and i32 %2237, 4194303
  %2241 = icmp ne i32 %2240, 0
  %2242 = and i1 %2239, %2241
  br i1 %2242, label %2243, label %2251

; <label>:2243:                                   ; preds = %2235
  %2244 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2229, %struct.Memory* %MEMORY.18)
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i8, i8* %14, align 1
  %.pre63 = load i8, i8* %30, align 1
  br label %routine_ucomiss_MINUS0x405c__rbp____xmm0.exit

; <label>:2245:                                   ; preds = %block_414c6f
  %2246 = fcmp ogt float %2231, %2233
  br i1 %2246, label %2251, label %2247

; <label>:2247:                                   ; preds = %2245
  %2248 = fcmp olt float %2231, %2233
  br i1 %2248, label %2251, label %2249

; <label>:2249:                                   ; preds = %2247
  %2250 = fcmp oeq float %2231, %2233
  br i1 %2250, label %2251, label %2255

; <label>:2251:                                   ; preds = %2249, %2247, %2245, %2235
  %2252 = phi i8 [ 0, %2245 ], [ 0, %2247 ], [ 1, %2249 ], [ 1, %2235 ]
  %2253 = phi i8 [ 0, %2245 ], [ 0, %2247 ], [ 0, %2249 ], [ 1, %2235 ]
  %2254 = phi i8 [ 0, %2245 ], [ 1, %2247 ], [ 0, %2249 ], [ 1, %2235 ]
  store i8 %2252, i8* %30, align 1
  store i8 %2253, i8* %21, align 1
  store i8 %2254, i8* %14, align 1
  br label %2255

; <label>:2255:                                   ; preds = %2251, %2249
  %2256 = phi i8 [ %2252, %2251 ], [ %2166, %2249 ]
  %2257 = phi i8 [ %2254, %2251 ], [ 0, %2249 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss_MINUS0x405c__rbp____xmm0.exit

routine_ucomiss_MINUS0x405c__rbp____xmm0.exit:    ; preds = %2255, %2243
  %2258 = phi i8 [ %.pre63, %2243 ], [ %2256, %2255 ]
  %2259 = phi i8 [ %.pre62, %2243 ], [ %2257, %2255 ]
  %2260 = phi i64 [ %.pre61, %2243 ], [ %2229, %2255 ]
  %2261 = phi %struct.Memory* [ %2244, %2243 ], [ %MEMORY.18, %2255 ]
  %2262 = or i8 %2258, %2259
  %2263 = icmp ne i8 %2262, 0
  %.v108 = select i1 %2263, i64 130, i64 6
  %2264 = add i64 %2260, %.v108
  store i64 %2264, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br i1 %2263, label %block_.L_414d32, label %block_414cb6

block_414cb6:                                     ; preds = %routine_ucomiss_MINUS0x405c__rbp____xmm0.exit
  %2265 = add i64 %.pre64, -16416
  %2266 = add i64 %2264, 7
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i64*
  %2268 = load i64, i64* %2267, align 8
  store i64 %2268, i64* %RAX.i865, align 8
  %2269 = add i64 %2268, 16
  %2270 = add i64 %2264, 11
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i64*
  %2272 = load i64, i64* %2271, align 8
  store i64 %2272, i64* %RAX.i865, align 8
  %2273 = add i64 %.pre64, -16392
  %2274 = add i64 %2264, 18
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i32*
  %2276 = load i32, i32* %2275, align 4
  %2277 = sext i32 %2276 to i64
  store i64 %2277, i64* %RCX.i505, align 8
  %2278 = shl nsw i64 %2277, 3
  %2279 = add i64 %2278, %2272
  %2280 = add i64 %2264, 22
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i64*
  %2282 = load i64, i64* %2281, align 8
  store i64 %2282, i64* %RAX.i865, align 8
  %2283 = add i64 %2282, 8
  %2284 = add i64 %2264, 27
  store i64 %2284, i64* %3, align 8
  %2285 = load <2 x i32>, <2 x i32>* %1998, align 1
  %2286 = load <2 x i32>, <2 x i32>* %1999, align 1
  %2287 = inttoptr i64 %2283 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = sitofp i32 %2288 to float
  store float %2289, float* %729, align 1
  %2290 = extractelement <2 x i32> %2285, i32 1
  store i32 %2290, i32* %2000, align 1
  %2291 = extractelement <2 x i32> %2286, i32 0
  store i32 %2291, i32* %2001, align 1
  %2292 = extractelement <2 x i32> %2286, i32 1
  store i32 %2292, i32* %2002, align 1
  %2293 = add i64 %2264, 34
  store i64 %2293, i64* %3, align 8
  %2294 = load i64, i64* %2267, align 8
  store i64 %2294, i64* %RAX.i865, align 8
  %2295 = add i64 %2294, 16
  %2296 = add i64 %2264, 38
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i64*
  %2298 = load i64, i64* %2297, align 8
  store i64 %2298, i64* %RAX.i865, align 8
  %2299 = add i64 %2264, 45
  store i64 %2299, i64* %3, align 8
  %2300 = load i32, i32* %2275, align 4
  %2301 = sext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i505, align 8
  %2302 = shl nsw i64 %2301, 3
  %2303 = add i64 %2302, %2298
  %2304 = add i64 %2264, 49
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i64*
  %2306 = load i64, i64* %2305, align 8
  store i64 %2306, i64* %RAX.i865, align 8
  %2307 = add i64 %2306, 4
  %2308 = add i64 %2264, 54
  store i64 %2308, i64* %3, align 8
  %2309 = load <2 x i32>, <2 x i32>* %2005, align 1
  %2310 = load <2 x i32>, <2 x i32>* %2007, align 1
  %2311 = inttoptr i64 %2307 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = sitofp i32 %2312 to float
  store float %2313, float* %2008, align 1
  %2314 = extractelement <2 x i32> %2309, i32 1
  store i32 %2314, i32* %2010, align 1
  %2315 = extractelement <2 x i32> %2310, i32 0
  store i32 %2315, i32* %2011, align 1
  %2316 = extractelement <2 x i32> %2310, i32 1
  store i32 %2316, i32* %2013, align 1
  %2317 = load <2 x float>, <2 x float>* %744, align 1
  %2318 = load <2 x i32>, <2 x i32>* %1999, align 1
  %2319 = load <2 x float>, <2 x float>* %2014, align 1
  %2320 = extractelement <2 x float> %2317, i32 0
  %2321 = extractelement <2 x float> %2319, i32 0
  %2322 = fdiv float %2320, %2321
  store float %2322, float* %729, align 1
  %2323 = bitcast <2 x float> %2317 to <2 x i32>
  %2324 = extractelement <2 x i32> %2323, i32 1
  store i32 %2324, i32* %2000, align 1
  %2325 = extractelement <2 x i32> %2318, i32 0
  store i32 %2325, i32* %2001, align 1
  %2326 = extractelement <2 x i32> %2318, i32 1
  store i32 %2326, i32* %2002, align 1
  %2327 = add i64 %.pre64, -16476
  %2328 = add i64 %2264, 66
  store i64 %2328, i64* %3, align 8
  %2329 = load <2 x float>, <2 x float>* %744, align 1
  %2330 = extractelement <2 x float> %2329, i32 0
  %2331 = inttoptr i64 %2327 to float*
  store float %2330, float* %2331, align 4
  %2332 = load i64, i64* %RBP.i, align 8
  %2333 = add i64 %2332, -16416
  %2334 = load i64, i64* %3, align 8
  %2335 = add i64 %2334, 7
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2333 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %RAX.i865, align 8
  %2338 = add i64 %2337, 16
  %2339 = add i64 %2334, 11
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i64*
  %2341 = load i64, i64* %2340, align 8
  store i64 %2341, i64* %RAX.i865, align 8
  %2342 = add i64 %2332, -16392
  %2343 = add i64 %2334, 18
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = sext i32 %2345 to i64
  store i64 %2346, i64* %RCX.i505, align 8
  %2347 = shl nsw i64 %2346, 3
  %2348 = add i64 %2347, %2341
  %2349 = add i64 %2334, 22
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i64*
  %2351 = load i64, i64* %2350, align 8
  store i64 %2351, i64* %RAX.i865, align 8
  %2352 = add i64 %2351, 32
  %2353 = add i64 %2334, 26
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i64*
  %2355 = load i64, i64* %2354, align 8
  store i64 %2355, i64* %RCX.i505, align 8
  store i64 %2355, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %2356 = add i64 %2351, 40
  %2357 = add i64 %2334, 38
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i64*
  %2359 = load i64, i64* %2358, align 8
  store i64 %2359, i64* %RCX.i505, align 8
  store i64 %2359, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %2360 = add i64 %2351, 48
  %2361 = add i64 %2334, 50
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i64*
  %2363 = load i64, i64* %2362, align 8
  store i64 %2363, i64* %RAX.i865, align 8
  %2364 = add i64 %2334, 58
  store i64 %2364, i64* %3, align 8
  store i64 %2363, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  br label %block_.L_414d32

block_.L_414d32:                                  ; preds = %routine_ucomiss_MINUS0x405c__rbp____xmm0.exit, %block_414cb6
  %2365 = phi i64 [ %2364, %block_414cb6 ], [ %2264, %routine_ucomiss_MINUS0x405c__rbp____xmm0.exit ]
  %2366 = phi i64 [ %2332, %block_414cb6 ], [ %.pre64, %routine_ucomiss_MINUS0x405c__rbp____xmm0.exit ]
  %2367 = add i64 %2366, -16416
  %2368 = add i64 %2365, 7
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i64*
  %2370 = load i64, i64* %2369, align 8
  store i64 %2370, i64* %RAX.i865, align 8
  %2371 = add i64 %2370, 16
  %2372 = add i64 %2365, 11
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i64*
  %2374 = load i64, i64* %2373, align 8
  store i64 %2374, i64* %RAX.i865, align 8
  %2375 = add i64 %2366, -16392
  %2376 = add i64 %2365, 18
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  %2378 = load i32, i32* %2377, align 4
  %2379 = sext i32 %2378 to i64
  store i64 %2379, i64* %RCX.i505, align 8
  %2380 = shl nsw i64 %2379, 3
  %2381 = add i64 %2380, %2374
  %2382 = add i64 %2365, 22
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i64*
  %2384 = load i64, i64* %2383, align 8
  store i64 %2384, i64* %RAX.i865, align 8
  %2385 = add i64 %2384, 8
  %2386 = add i64 %2365, 26
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i32*
  %2388 = load i32, i32* %2387, align 4
  store i8 0, i8* %14, align 1
  %2389 = and i32 %2388, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2394 = icmp eq i32 %2388, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %30, align 1
  %2396 = lshr i32 %2388, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v109 = select i1 %2394, i64 32, i64 82
  %2398 = add i64 %2365, %.v109
  store i64 %2398, i64* %3, align 8
  br i1 %2394, label %block_414d52, label %block_.L_414d84

block_414d52:                                     ; preds = %block_.L_414d32
  %2399 = add i64 %2398, 7
  store i64 %2399, i64* %3, align 8
  %2400 = load i64, i64* %2369, align 8
  store i64 %2400, i64* %RAX.i865, align 8
  %2401 = add i64 %2400, 16
  %2402 = add i64 %2398, 11
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i64*
  %2404 = load i64, i64* %2403, align 8
  store i64 %2404, i64* %RAX.i865, align 8
  %2405 = add i64 %2398, 18
  store i64 %2405, i64* %3, align 8
  %2406 = load i32, i32* %2377, align 4
  %2407 = sext i32 %2406 to i64
  store i64 %2407, i64* %RCX.i505, align 8
  %2408 = shl nsw i64 %2407, 3
  %2409 = add i64 %2408, %2404
  %2410 = add i64 %2398, 22
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i64*
  %2412 = load i64, i64* %2411, align 8
  store i64 %2412, i64* %RAX.i865, align 8
  %2413 = add i64 %2412, 4
  %2414 = add i64 %2398, 29
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = add i32 %2416, -100000000
  %2418 = icmp ult i32 %2416, 100000000
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %14, align 1
  %2420 = and i32 %2417, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %21, align 1
  %2425 = xor i32 %2417, %2416
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  store i8 %2428, i8* %27, align 1
  %2429 = icmp eq i32 %2417, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %30, align 1
  %2431 = lshr i32 %2417, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %33, align 1
  %2433 = lshr i32 %2416, 31
  %2434 = xor i32 %2431, %2433
  %2435 = add nuw nsw i32 %2434, %2433
  %2436 = icmp eq i32 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %39, align 1
  %.v110 = select i1 %2429, i64 35, i64 50
  %2438 = add i64 %2398, %.v110
  store i64 %2438, i64* %3, align 8
  br i1 %2429, label %block_414d75, label %block_.L_414d84

block_414d75:                                     ; preds = %block_414d52
  %2439 = add i64 %2366, -16480
  %2440 = add i64 %2438, 6
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = add i32 %2442, 1
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RAX.i865, align 8
  %2445 = icmp eq i32 %2442, -1
  %2446 = icmp eq i32 %2443, 0
  %2447 = or i1 %2445, %2446
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %14, align 1
  %2449 = and i32 %2443, 255
  %2450 = tail call i32 @llvm.ctpop.i32(i32 %2449)
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  store i8 %2453, i8* %21, align 1
  %2454 = xor i32 %2443, %2442
  %2455 = lshr i32 %2454, 4
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  store i8 %2457, i8* %27, align 1
  %2458 = zext i1 %2446 to i8
  store i8 %2458, i8* %30, align 1
  %2459 = lshr i32 %2443, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %33, align 1
  %2461 = lshr i32 %2442, 31
  %2462 = xor i32 %2459, %2461
  %2463 = add nuw nsw i32 %2462, %2459
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %39, align 1
  %2466 = add i64 %2438, 15
  store i64 %2466, i64* %3, align 8
  store i32 %2443, i32* %2441, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_414d84

block_.L_414d84:                                  ; preds = %block_414d52, %block_.L_414d32, %block_414d75
  %2467 = phi i64 [ %.pre65, %block_414d75 ], [ %2438, %block_414d52 ], [ %2398, %block_.L_414d32 ]
  %2468 = add i64 %2467, 90
  store i64 %2468, i64* %3, align 8
  br label %block_.L_414dde

block_.L_414d89:                                  ; preds = %block_414c15
  %2469 = add i64 %2169, ptrtoint (%G_0x1360b__rip__type* @G_0x1360b__rip_ to i64)
  %2470 = add i64 %2169, 8
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i32*
  %2472 = load i32, i32* %2471, align 4
  store i32 %2472, i32* %730, align 1
  store float 0.000000e+00, float* %732, align 1
  store float 0.000000e+00, float* %734, align 1
  store float 0.000000e+00, float* %736, align 1
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  %2473 = add i64 %2169, 26
  store i64 %2473, i64* %3, align 8
  %2474 = load i64, i64* %2140, align 8
  store i64 %2474, i64* %RAX.i865, align 8
  %2475 = add i64 %2474, 16
  %2476 = add i64 %2169, 30
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i64*
  %2478 = load i64, i64* %2477, align 8
  store i64 %2478, i64* %RAX.i865, align 8
  %2479 = add i64 %2169, 37
  store i64 %2479, i64* %3, align 8
  %2480 = load i32, i32* %2148, align 4
  %2481 = sext i32 %2480 to i64
  store i64 %2481, i64* %RCX.i505, align 8
  %2482 = shl nsw i64 %2481, 3
  %2483 = add i64 %2482, %2478
  %2484 = add i64 %2169, 41
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i64*
  %2486 = load i64, i64* %2485, align 8
  store i64 %2486, i64* %RAX.i865, align 8
  %2487 = add i64 %2486, 32
  %2488 = add i64 %2169, 45
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i64*
  %2490 = load i64, i64* %2489, align 8
  store i64 %2490, i64* %RCX.i505, align 8
  store i64 %2490, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %2491 = add i64 %2486, 40
  %2492 = add i64 %2169, 57
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i64*
  %2494 = load i64, i64* %2493, align 8
  store i64 %2494, i64* %RCX.i505, align 8
  store i64 %2494, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %2495 = add i64 %2486, 48
  %2496 = add i64 %2169, 69
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i64*
  %2498 = load i64, i64* %2497, align 8
  store i64 %2498, i64* %RAX.i865, align 8
  store i64 %2498, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %2499 = add i64 %2136, -16476
  %2500 = add i64 %2169, 85
  store i64 %2500, i64* %3, align 8
  %2501 = load <2 x float>, <2 x float>* %744, align 1
  %2502 = extractelement <2 x float> %2501, i32 0
  %2503 = inttoptr i64 %2499 to float*
  store float %2502, float* %2503, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_414dde

block_.L_414dde:                                  ; preds = %block_.L_414d89, %block_.L_414d84
  %2504 = phi i64 [ %.pre66, %block_.L_414d89 ], [ %2468, %block_.L_414d84 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.18, %block_.L_414d89 ], [ %2261, %block_.L_414d84 ]
  %2505 = load i64, i64* %RBP.i, align 8
  %2506 = add i64 %2505, -16392
  %2507 = add i64 %2504, 6
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i32*
  %2509 = load i32, i32* %2508, align 4
  %2510 = add i32 %2509, 1
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RAX.i865, align 8
  %2512 = icmp eq i32 %2509, -1
  %2513 = icmp eq i32 %2510, 0
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %14, align 1
  %2516 = and i32 %2510, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  %2521 = xor i32 %2510, %2509
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %27, align 1
  %2525 = zext i1 %2513 to i8
  store i8 %2525, i8* %30, align 1
  %2526 = lshr i32 %2510, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %33, align 1
  %2528 = lshr i32 %2509, 31
  %2529 = xor i32 %2526, %2528
  %2530 = add nuw nsw i32 %2529, %2526
  %2531 = icmp eq i32 %2530, 2
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %39, align 1
  %2533 = add i64 %2504, 15
  store i64 %2533, i64* %3, align 8
  store i32 %2510, i32* %2508, align 4
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %block_.L_414ded

block_.L_414ded:                                  ; preds = %block_.L_414dde, %block_414c00
  %2534 = phi i64 [ %2016, %block_414c00 ], [ %.pre68, %block_.L_414dde ]
  %2535 = phi i64 [ %2071, %block_414c00 ], [ %.pre67, %block_.L_414dde ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.18, %block_414c00 ], [ %MEMORY.21, %block_.L_414dde ]
  %2536 = add i64 %2534, -16388
  %2537 = add i64 %2535, 11
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = add i32 %2539, 1
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RAX.i865, align 8
  %2542 = icmp eq i32 %2539, -1
  %2543 = icmp eq i32 %2540, 0
  %2544 = or i1 %2542, %2543
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %14, align 1
  %2546 = and i32 %2540, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %21, align 1
  %2551 = xor i32 %2540, %2539
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %27, align 1
  %2555 = zext i1 %2543 to i8
  store i8 %2555, i8* %30, align 1
  %2556 = lshr i32 %2540, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %33, align 1
  %2558 = lshr i32 %2539, 31
  %2559 = xor i32 %2556, %2558
  %2560 = add nuw nsw i32 %2559, %2556
  %2561 = icmp eq i32 %2560, 2
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %39, align 1
  %2563 = add i64 %2535, 20
  store i64 %2563, i64* %3, align 8
  store i32 %2540, i32* %2538, align 4
  %2564 = load i64, i64* %3, align 8
  %2565 = add i64 %2564, -531
  store i64 %2565, i64* %3, align 8
  br label %block_.L_414bee

block_.L_414e06:                                  ; preds = %block_.L_414bee
  %2566 = add i64 %2052, 5
  store i64 %2566, i64* %3, align 8
  br label %block_.L_414e0b

block_.L_414e0b:                                  ; preds = %block_4146ea.block_.L_414e0b_crit_edge, %block_.L_414e06
  %.pre-phi92 = phi i64** [ %.pre91, %block_4146ea.block_.L_414e0b_crit_edge ], [ %1997, %block_.L_414e06 ]
  %2567 = phi i64 [ %771, %block_4146ea.block_.L_414e0b_crit_edge ], [ %2566, %block_.L_414e06 ]
  %2568 = phi i64 [ %753, %block_4146ea.block_.L_414e0b_crit_edge ], [ %2016, %block_.L_414e06 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.3, %block_4146ea.block_.L_414e0b_crit_edge ], [ %MEMORY.18, %block_.L_414e06 ]
  %.pre-phi = bitcast %union.anon* %56 to i64**
  %2569 = add i64 %2568, -16504
  store i64 %2569, i64* %RAX.i865, align 8
  %2570 = add i64 %2568, -16468
  store i64 %2570, i64* %RDI.i1000, align 8
  %2571 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %2572 = add i64 %2567, 29
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2569 to i64*
  store i64 %2571, i64* %2573, align 8
  %2574 = load i64, i64* %3, align 8
  %2575 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %2576 = load i64, i64* %RBP.i, align 8
  %2577 = add i64 %2576, -16496
  %2578 = add i64 %2574, 15
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i64*
  store i64 %2575, i64* %2579, align 8
  %2580 = load i64, i64* %3, align 8
  %2581 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  store i64 %2581, i64* %RCX.i505, align 8
  %2582 = load i64, i64* %RBP.i, align 8
  %2583 = add i64 %2582, -16488
  %2584 = add i64 %2580, 15
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i64*
  store i64 %2581, i64* %2585, align 8
  %2586 = load i64*, i64** %.pre-phi, align 8
  %2587 = load i64, i64* %3, align 8
  %2588 = add i64 %2587, 3
  store i64 %2588, i64* %3, align 8
  %2589 = load i64, i64* %2586, align 8
  store i64 %2589, i64* %RCX.i505, align 8
  %2590 = load i64*, i64** %.pre-phi92, align 8
  %2591 = add i64 %2587, 7
  store i64 %2591, i64* %3, align 8
  store i64 %2589, i64* %2590, align 8
  %2592 = load i64, i64* %RAX.i865, align 8
  %2593 = add i64 %2592, 8
  %2594 = load i64, i64* %3, align 8
  %2595 = add i64 %2594, 4
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2593 to i64*
  %2597 = load i64, i64* %2596, align 8
  store i64 %2597, i64* %RCX.i505, align 8
  %2598 = load i64, i64* %6, align 8
  %2599 = add i64 %2598, 8
  %2600 = add i64 %2594, 9
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i64*
  store i64 %2597, i64* %2601, align 8
  %2602 = load i64, i64* %RAX.i865, align 8
  %2603 = add i64 %2602, 16
  %2604 = load i64, i64* %3, align 8
  %2605 = add i64 %2604, 4
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2603 to i64*
  %2607 = load i64, i64* %2606, align 8
  store i64 %2607, i64* %RAX.i865, align 8
  %2608 = load i64, i64* %6, align 8
  %2609 = add i64 %2608, 16
  %2610 = add i64 %2604, 9
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i64*
  store i64 %2607, i64* %2611, align 8
  %2612 = load i64, i64* %3, align 8
  %2613 = add i64 %2612, 51985
  %2614 = add i64 %2612, 5
  %2615 = load i64, i64* %6, align 8
  %2616 = add i64 %2615, -8
  %2617 = inttoptr i64 %2616 to i64*
  store i64 %2614, i64* %2617, align 8
  store i64 %2616, i64* %6, align 8
  store i64 %2613, i64* %3, align 8
  %call2_414e5f = tail call %struct.Memory* @sub_421970.comp_to_san(%struct.State* nonnull %0, i64 %2613, %struct.Memory* %MEMORY.23)
  %2618 = load i64, i64* %3, align 8
  %2619 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2620 = and i32 %2619, 255
  %2621 = tail call i32 @llvm.ctpop.i32(i32 %2620)
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  %2624 = xor i8 %2623, 1
  store i8 %2624, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2625 = icmp eq i32 %2619, 0
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %30, align 1
  %2627 = lshr i32 %2619, 31
  %2628 = trunc i32 %2627 to i8
  store i8 %2628, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v99 = select i1 %2625, i64 103, i64 14
  %2629 = add i64 %2618, %.v99
  store i64 %2629, i64* %3, align 8
  br i1 %2625, label %block_.L_414ecb, label %block_414e72

block_414e72:                                     ; preds = %block_.L_414e0b
  %2630 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  store i8 0, i8* %14, align 1
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2636 = icmp eq i32 %2630, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %30, align 1
  %2638 = lshr i32 %2630, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v100 = select i1 %2636, i64 89, i64 14
  %2640 = add i64 %2629, %.v100
  store i64 %2640, i64* %3, align 8
  br i1 %2636, label %block_.L_414ecb, label %block_414e80

block_414e80:                                     ; preds = %block_414e72
  store i64 ptrtoint (%G__0x428e6d_type* @G__0x428e6d to i64), i64* %RDI.i1000, align 8
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -16416
  %2643 = add i64 %2640, 17
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i64*
  %2645 = load i64, i64* %2644, align 8
  store i64 %2645, i64* %RAX.i865, align 8
  %2646 = add i64 %2645, 4
  %2647 = add i64 %2640, 20
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i32*
  %2649 = load i32, i32* %2648, align 4
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RSI.i761, align 8
  %2651 = add i64 %2640, 27
  store i64 %2651, i64* %3, align 8
  %2652 = load i64, i64* %2644, align 8
  store i64 %2652, i64* %RAX.i865, align 8
  %2653 = add i64 %2652, 8
  %2654 = add i64 %2640, 30
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  %2656 = load i32, i32* %2655, align 4
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RDX.i1227, align 8
  %2658 = add i64 %2641, -16480
  %2659 = add i64 %2640, 36
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i32*
  %2661 = load i32, i32* %2660, align 4
  %2662 = zext i32 %2661 to i64
  store i64 %2662, i64* %RCX.i505, align 8
  %2663 = load i32, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %96, align 8
  %2665 = add i64 %2641, -16456
  %2666 = add i64 %2640, 51
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i32*
  %2668 = load i32, i32* %2667, align 4
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %R9.i1200, align 8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %2671 = add i64 %2641, -16460
  %2672 = add i64 %2640, 58
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %2670, align 8
  %2676 = bitcast i64* %6 to i32**
  %2677 = load i32*, i32** %2676, align 8
  %2678 = add i64 %2640, 62
  store i64 %2678, i64* %3, align 8
  store i32 %2674, i32* %2677, align 4
  %2679 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i945, align 1
  %2680 = add i64 %2679, -82446
  %2681 = add i64 %2679, 7
  %2682 = load i64, i64* %6, align 8
  %2683 = add i64 %2682, -8
  %2684 = inttoptr i64 %2683 to i64*
  store i64 %2681, i64* %2684, align 8
  store i64 %2683, i64* %6, align 8
  store i64 %2680, i64* %3, align 8
  %2685 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_414e5f)
  %2686 = load i64, i64* %RBP.i, align 8
  %2687 = add i64 %2686, -16556
  %2688 = load i32, i32* %EAX.i1151, align 4
  %2689 = load i64, i64* %3, align 8
  %2690 = add i64 %2689, 6
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2687 to i32*
  store i32 %2688, i32* %2691, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_414ecb

block_.L_414ecb:                                  ; preds = %block_414e80, %block_414e72, %block_.L_414e0b
  %2692 = phi i64 [ %2629, %block_.L_414e0b ], [ %2640, %block_414e72 ], [ %.pre69, %block_414e80 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_414e5f, %block_.L_414e0b ], [ %call2_414e5f, %block_414e72 ], [ %2685, %block_414e80 ]
  %2693 = load i64, i64* %RBP.i, align 8
  %2694 = add i64 %2693, -16480
  %2695 = add i64 %2692, 6
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i32*
  %2697 = load i32, i32* %2696, align 4
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RAX.i865, align 8
  %2699 = add i64 %2693, -16396
  %2700 = add i64 %2692, 12
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2699 to i32*
  %2702 = load i32, i32* %2701, align 4
  %2703 = add i32 %2702, -1
  %2704 = zext i32 %2703 to i64
  store i64 %2704, i64* %RCX.i505, align 8
  %2705 = lshr i32 %2703, 31
  %2706 = sub i32 %2697, %2703
  %2707 = icmp ult i32 %2697, %2703
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %14, align 1
  %2709 = and i32 %2706, 255
  %2710 = tail call i32 @llvm.ctpop.i32(i32 %2709)
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  store i8 %2713, i8* %21, align 1
  %2714 = xor i32 %2703, %2697
  %2715 = xor i32 %2714, %2706
  %2716 = lshr i32 %2715, 4
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  store i8 %2718, i8* %27, align 1
  %2719 = icmp eq i32 %2706, 0
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %30, align 1
  %2721 = lshr i32 %2706, 31
  %2722 = trunc i32 %2721 to i8
  store i8 %2722, i8* %33, align 1
  %2723 = lshr i32 %2697, 31
  %2724 = xor i32 %2705, %2723
  %2725 = xor i32 %2721, %2723
  %2726 = add nuw nsw i32 %2725, %2724
  %2727 = icmp eq i32 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %39, align 1
  %.v101 = select i1 %2719, i64 23, i64 218
  %2729 = add i64 %2692, %.v101
  store i64 %2729, i64* %3, align 8
  br i1 %2719, label %block_414ee2, label %block_.L_414fa5

block_414ee2:                                     ; preds = %block_.L_414ecb
  store i64 ptrtoint (%G__0x428ecb_type* @G__0x428ecb to i64), i64* %RDI.i1000, align 8
  store i8 0, i8* %AL.i945, align 1
  %2730 = add i64 %2729, -82482
  %2731 = add i64 %2729, 17
  %2732 = load i64, i64* %6, align 8
  %2733 = add i64 %2732, -8
  %2734 = inttoptr i64 %2733 to i64*
  store i64 %2731, i64* %2734, align 8
  store i64 %2733, i64* %6, align 8
  store i64 %2730, i64* %3, align 8
  %2735 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.24)
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -16388
  %2738 = load i64, i64* %3, align 8
  %2739 = add i64 %2738, 10
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2737 to i32*
  store i32 0, i32* %2740, align 4
  %2741 = load i64, i64* %RBP.i, align 8
  %2742 = add i64 %2741, -16560
  %2743 = load i32, i32* %EAX.i1151, align 4
  %2744 = load i64, i64* %3, align 8
  %2745 = add i64 %2744, 6
  store i64 %2745, i64* %3, align 8
  %2746 = inttoptr i64 %2742 to i32*
  store i32 %2743, i32* %2746, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_414f03

block_.L_414f03:                                  ; preds = %block_.L_414f87, %block_414ee2
  %2747 = phi i64 [ %2894, %block_.L_414f87 ], [ %.pre70, %block_414ee2 ]
  %2748 = load i64, i64* %RBP.i, align 8
  %2749 = add i64 %2748, -16388
  %2750 = add i64 %2747, 6
  store i64 %2750, i64* %3, align 8
  %2751 = inttoptr i64 %2749 to i32*
  %2752 = load i32, i32* %2751, align 4
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RAX.i865, align 8
  %2754 = add i64 %2748, -16400
  %2755 = add i64 %2747, 12
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = sub i32 %2752, %2757
  %2759 = icmp ult i32 %2752, %2757
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %14, align 1
  %2761 = and i32 %2758, 255
  %2762 = tail call i32 @llvm.ctpop.i32(i32 %2761)
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  %2765 = xor i8 %2764, 1
  store i8 %2765, i8* %21, align 1
  %2766 = xor i32 %2757, %2752
  %2767 = xor i32 %2766, %2758
  %2768 = lshr i32 %2767, 4
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  store i8 %2770, i8* %27, align 1
  %2771 = icmp eq i32 %2758, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %30, align 1
  %2773 = lshr i32 %2758, 31
  %2774 = trunc i32 %2773 to i8
  store i8 %2774, i8* %33, align 1
  %2775 = lshr i32 %2752, 31
  %2776 = lshr i32 %2757, 31
  %2777 = xor i32 %2776, %2775
  %2778 = xor i32 %2773, %2775
  %2779 = add nuw nsw i32 %2778, %2777
  %2780 = icmp eq i32 %2779, 2
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %39, align 1
  %2782 = icmp ne i8 %2774, 0
  %2783 = xor i1 %2782, %2780
  %.v103 = select i1 %2783, i64 18, i64 157
  %2784 = add i64 %2747, %.v103
  store i64 %2784, i64* %3, align 8
  br i1 %2783, label %block_414f15, label %block_.L_414fa0.loopexit

block_414f15:                                     ; preds = %block_.L_414f03
  %2785 = add i64 %2784, 7
  store i64 %2785, i64* %3, align 8
  %2786 = load i32, i32* %2751, align 4
  %2787 = sext i32 %2786 to i64
  store i64 %2787, i64* %RAX.i865, align 8
  %2788 = shl nsw i64 %2787, 2
  %2789 = add nsw i64 %2788, 8940528
  %2790 = add i64 %2784, 15
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  store i8 0, i8* %14, align 1
  %2793 = and i32 %2792, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2798 = icmp eq i32 %2792, 0
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %30, align 1
  %2800 = lshr i32 %2792, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v104 = select i1 %2798, i64 21, i64 114
  %2802 = add i64 %2784, %.v104
  store i64 %2802, i64* %3, align 8
  br i1 %2798, label %block_414f2a, label %block_.L_414f87

block_414f2a:                                     ; preds = %block_414f15
  %2803 = add i64 %2802, 7
  store i64 %2803, i64* %3, align 8
  %2804 = load i32, i32* %2751, align 4
  %2805 = sext i32 %2804 to i64
  store i64 %2805, i64* %RAX.i865, align 8
  %2806 = shl nsw i64 %2805, 2
  %2807 = add i64 %2748, -14336
  %2808 = add i64 %2807, %2806
  %2809 = add i64 %2802, 15
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  %2811 = load i32, i32* %2810, align 4
  store i8 0, i8* %14, align 1
  %2812 = and i32 %2811, 255
  %2813 = tail call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  store i8 %2816, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2817 = icmp eq i32 %2811, 0
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %30, align 1
  %2819 = lshr i32 %2811, 31
  %2820 = trunc i32 %2819 to i8
  store i8 %2820, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v105 = select i1 %2817, i64 93, i64 21
  %2821 = add i64 %2802, %.v105
  store i64 %2821, i64* %3, align 8
  br i1 %2817, label %block_.L_414f87, label %block_414f3f

block_414f3f:                                     ; preds = %block_414f2a
  %2822 = add i64 %2748, -12288
  store i64 %2822, i64* %RAX.i865, align 8
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  %2823 = add i64 %2821, 25
  store i64 %2823, i64* %3, align 8
  %2824 = load i32, i32* %2751, align 4
  %2825 = sext i32 %2824 to i64
  %2826 = mul nsw i64 %2825, 24
  store i64 %2826, i64* %RCX.i505, align 8
  %2827 = lshr i64 %2826, 63
  %2828 = add i64 %2826, %2822
  store i64 %2828, i64* %RAX.i865, align 8
  %2829 = icmp ult i64 %2828, %2822
  %2830 = icmp ult i64 %2828, %2826
  %2831 = or i1 %2829, %2830
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %14, align 1
  %2833 = trunc i64 %2828 to i32
  %2834 = and i32 %2833, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %21, align 1
  %2839 = xor i64 %2826, %2822
  %2840 = xor i64 %2839, %2828
  %2841 = lshr i64 %2840, 4
  %2842 = trunc i64 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %27, align 1
  %2844 = icmp eq i64 %2828, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %30, align 1
  %2846 = lshr i64 %2828, 63
  %2847 = trunc i64 %2846 to i8
  store i8 %2847, i8* %33, align 1
  %2848 = lshr i64 %2822, 63
  %2849 = xor i64 %2846, %2848
  %2850 = xor i64 %2846, %2827
  %2851 = add nuw nsw i64 %2849, %2850
  %2852 = icmp eq i64 %2851, 2
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %39, align 1
  %2854 = inttoptr i64 %2828 to i64*
  %2855 = add i64 %2821, 35
  store i64 %2855, i64* %3, align 8
  %2856 = load i64, i64* %2854, align 8
  store i64 %2856, i64* %RCX.i505, align 8
  store i64 %2856, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %2857 = add i64 %2828, 8
  %2858 = add i64 %2821, 47
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i64*
  %2860 = load i64, i64* %2859, align 8
  store i64 %2860, i64* %RCX.i505, align 8
  store i64 %2860, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %2861 = add i64 %2828, 16
  %2862 = add i64 %2821, 59
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i64*
  %2864 = load i64, i64* %2863, align 8
  store i64 %2864, i64* %RAX.i865, align 8
  store i64 %2864, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  %2865 = add i64 %2821, 97
  store i64 %2865, i64* %3, align 8
  %.pre71.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_414fa0

block_.L_414f87:                                  ; preds = %block_414f15, %block_414f2a
  %2866 = phi i64 [ %2821, %block_414f2a ], [ %2802, %block_414f15 ]
  %2867 = add i64 %2866, 11
  store i64 %2867, i64* %3, align 8
  %2868 = load i32, i32* %2751, align 4
  %2869 = add i32 %2868, 1
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RAX.i865, align 8
  %2871 = icmp eq i32 %2868, -1
  %2872 = icmp eq i32 %2869, 0
  %2873 = or i1 %2871, %2872
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %14, align 1
  %2875 = and i32 %2869, 255
  %2876 = tail call i32 @llvm.ctpop.i32(i32 %2875)
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = xor i8 %2878, 1
  store i8 %2879, i8* %21, align 1
  %2880 = xor i32 %2869, %2868
  %2881 = lshr i32 %2880, 4
  %2882 = trunc i32 %2881 to i8
  %2883 = and i8 %2882, 1
  store i8 %2883, i8* %27, align 1
  %2884 = zext i1 %2872 to i8
  store i8 %2884, i8* %30, align 1
  %2885 = lshr i32 %2869, 31
  %2886 = trunc i32 %2885 to i8
  store i8 %2886, i8* %33, align 1
  %2887 = lshr i32 %2868, 31
  %2888 = xor i32 %2885, %2887
  %2889 = add nuw nsw i32 %2888, %2885
  %2890 = icmp eq i32 %2889, 2
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %39, align 1
  %2892 = add i64 %2866, 20
  store i64 %2892, i64* %3, align 8
  store i32 %2869, i32* %2751, align 4
  %2893 = load i64, i64* %3, align 8
  %2894 = add i64 %2893, -152
  store i64 %2894, i64* %3, align 8
  br label %block_.L_414f03

block_.L_414fa0.loopexit:                         ; preds = %block_.L_414f03
  br label %block_.L_414fa0

block_.L_414fa0:                                  ; preds = %block_.L_414fa0.loopexit, %block_414f3f
  %.pre71 = phi i64 [ %.pre71.pre, %block_414f3f ], [ %2748, %block_.L_414fa0.loopexit ]
  %2895 = phi i64 [ %2865, %block_414f3f ], [ %2784, %block_.L_414fa0.loopexit ]
  %2896 = add i64 %2895, 5
  store i64 %2896, i64* %3, align 8
  br label %block_.L_414fa5

block_.L_414fa5:                                  ; preds = %block_.L_414ecb, %block_.L_414fa0
  %2897 = phi i64 [ %2729, %block_.L_414ecb ], [ %2896, %block_.L_414fa0 ]
  %2898 = phi i64 [ %2693, %block_.L_414ecb ], [ %.pre71, %block_.L_414fa0 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.24, %block_.L_414ecb ], [ %2735, %block_.L_414fa0 ]
  %2899 = add i64 %2898, -16480
  %2900 = add i64 %2897, 6
  store i64 %2900, i64* %3, align 8
  %2901 = inttoptr i64 %2899 to i32*
  %2902 = load i32, i32* %2901, align 4
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RAX.i865, align 8
  %2904 = add i64 %2898, -16396
  %2905 = add i64 %2897, 12
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = sub i32 %2902, %2907
  %2909 = icmp ult i32 %2902, %2907
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %14, align 1
  %2911 = and i32 %2908, 255
  %2912 = tail call i32 @llvm.ctpop.i32(i32 %2911)
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = xor i8 %2914, 1
  store i8 %2915, i8* %21, align 1
  %2916 = xor i32 %2907, %2902
  %2917 = xor i32 %2916, %2908
  %2918 = lshr i32 %2917, 4
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  store i8 %2920, i8* %27, align 1
  %2921 = icmp eq i32 %2908, 0
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %30, align 1
  %2923 = lshr i32 %2908, 31
  %2924 = trunc i32 %2923 to i8
  store i8 %2924, i8* %33, align 1
  %2925 = lshr i32 %2902, 31
  %2926 = lshr i32 %2907, 31
  %2927 = xor i32 %2926, %2925
  %2928 = xor i32 %2923, %2925
  %2929 = add nuw nsw i32 %2928, %2927
  %2930 = icmp eq i32 %2929, 2
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %39, align 1
  %.v102 = select i1 %2921, i64 18, i64 29
  %2932 = add i64 %2897, %.v102
  store i64 %2932, i64* %3, align 8
  br i1 %2921, label %block_414fb7, label %block_.L_414fc2

block_414fb7:                                     ; preds = %block_.L_414fa5
  %2933 = add i64 %2932, 11
  store i64 %2933, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  br label %block_.L_414fc2

block_.L_414fc2:                                  ; preds = %block_.L_414fa5, %block_414fb7
  %2934 = phi i64 [ %2933, %block_414fb7 ], [ %2932, %block_.L_414fa5 ]
  %2935 = add i64 %2934, -9842
  %2936 = add i64 %2934, 5
  %2937 = load i64, i64* %6, align 8
  %2938 = add i64 %2937, -8
  %2939 = inttoptr i64 %2938 to i64*
  store i64 %2936, i64* %2939, align 8
  store i64 %2938, i64* %6, align 8
  store i64 %2935, i64* %3, align 8
  %call2_414fc2 = tail call %struct.Memory* @sub_412950.Xfree(%struct.State* nonnull %0, i64 %2935, %struct.Memory* %MEMORY.28)
  %2940 = load i64, i64* %3, align 8
  %2941 = load i64, i64* bitcast (%G_0x8661c8_type* @G_0x8661c8 to i64*), align 8
  store i64 %2941, i64* %RDI.i1000, align 8
  %2942 = add i64 %2940, -82823
  %2943 = add i64 %2940, 13
  %2944 = load i64, i64* %6, align 8
  %2945 = add i64 %2944, -8
  %2946 = inttoptr i64 %2945 to i64*
  store i64 %2943, i64* %2946, align 8
  store i64 %2945, i64* %6, align 8
  store i64 %2942, i64* %3, align 8
  %2947 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_414fc2)
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -16416
  %2950 = load i64, i64* %3, align 8
  %2951 = add i64 %2950, 7
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2949 to i64*
  %2953 = load i64, i64* %2952, align 8
  store i64 %2953, i64* %RDI.i1000, align 8
  %2954 = add i64 %2950, -82836
  %2955 = add i64 %2950, 12
  %2956 = load i64, i64* %6, align 8
  %2957 = add i64 %2956, -8
  %2958 = inttoptr i64 %2957 to i64*
  store i64 %2955, i64* %2958, align 8
  store i64 %2957, i64* %6, align 8
  store i64 %2954, i64* %3, align 8
  %2959 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2947)
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_414fe0

block_.L_414fe0:                                  ; preds = %block_.L_414fc2, %block_.L_4145dc, %block_414502
  %2960 = phi i64 [ %528, %block_.L_4145dc ], [ %.pre87, %block_.L_414fc2 ], [ %402, %block_414502 ]
  %MEMORY.30 = phi %struct.Memory* [ %523, %block_.L_4145dc ], [ %2959, %block_.L_414fc2 ], [ %400, %block_414502 ]
  %2961 = load i64, i64* %6, align 8
  %2962 = add i64 %2961, 16592
  store i64 %2962, i64* %6, align 8
  %2963 = icmp ugt i64 %2961, -16593
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %14, align 1
  %2965 = trunc i64 %2962 to i32
  %2966 = and i32 %2965, 255
  %2967 = tail call i32 @llvm.ctpop.i32(i32 %2966)
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = xor i8 %2969, 1
  store i8 %2970, i8* %21, align 1
  %2971 = xor i64 %2961, 16
  %2972 = xor i64 %2971, %2962
  %2973 = lshr i64 %2972, 4
  %2974 = trunc i64 %2973 to i8
  %2975 = and i8 %2974, 1
  store i8 %2975, i8* %27, align 1
  %2976 = icmp eq i64 %2962, 0
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %30, align 1
  %2978 = lshr i64 %2962, 63
  %2979 = trunc i64 %2978 to i8
  store i8 %2979, i8* %33, align 1
  %2980 = lshr i64 %2961, 63
  %2981 = xor i64 %2978, %2980
  %2982 = add nuw nsw i64 %2981, %2978
  %2983 = icmp eq i64 %2982, 2
  %2984 = zext i1 %2983 to i8
  store i8 %2984, i8* %39, align 1
  %2985 = add i64 %2960, 8
  store i64 %2985, i64* %3, align 8
  %2986 = add i64 %2961, 16600
  %2987 = inttoptr i64 %2962 to i64*
  %2988 = load i64, i64* %2987, align 8
  store i64 %2988, i64* %RBP.i, align 8
  store i64 %2986, i64* %6, align 8
  %2989 = add i64 %2960, 9
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2986 to i64*
  %2991 = load i64, i64* %2990, align 8
  store i64 %2991, i64* %3, align 8
  %2992 = add i64 %2961, 16608
  store i64 %2992, i64* %6, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x403c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16444
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movq__rax__MINUS0x4018__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16408
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x4020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x800___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2048, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4000__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16384
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x886bf0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x886bf0_type* @G__0x886bf0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4b0___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1200, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x85f150___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x4010__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16400
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e51c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x4080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16512
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x4080__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x4088__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16520
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x408c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16524
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x4098__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x408c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16524
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
define %struct.Memory* @routine_movq_MINUS0x4088__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x400c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.in_check(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16388
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16388
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
define %struct.Memory* @routine_cmpl_MINUS0x4010__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16400
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
define %struct.Memory* @routine_jge_.L_4144f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4004__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16388
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4058__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16472
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
define %struct.Memory* @routine_callq_.check_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4144bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x400c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16396
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
define %struct.Memory* @routine_movl__eax__MINUS0x400c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16388
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
define %struct.Memory* @routine_movl__0x1__MINUS0x3800__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -14336
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4144cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16388
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -14336
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16388
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414452(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x400c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16396
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
define %struct.Memory* @routine_jne_.L_414525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414fe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x404c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movzbl___rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_4145dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_41462f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x4018__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
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
define %struct.Memory* @routine_movb__dl__MINUS0x4099__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16537
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4146dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4146dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x38___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 56
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_cmpq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__cl__MINUS0x4099__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16537
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4146dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_4146dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setne__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x4099__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16537
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
define %struct.Memory* @routine_jne_.L_4146ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414baf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 100, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86bd94___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x86bd94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86bd94_type* @G_0x86bd94 to i32*), align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16452
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x40a0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x42___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -66
  %8 = icmp ult i32 %4, 66
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
define %struct.Memory* @routine_jge_.L_4148f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4048__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16456
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
define %struct.Memory* @routine_movl__eax__MINUS0x4048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x4030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16432
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4030__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movq__rax__MINUS0x4028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16424
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4028__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_4147c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414785(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x85f3e8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4044__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16452
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4000__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -16384
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4000__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -16384
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_414883(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5f5e100__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100000000
  %10 = icmp ult i32 %8, 100000000
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
define %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_414844(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428e2f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428e2f_type* @G__0x428e2f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4148ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4148e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5f5e100__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100000000
  %10 = icmp ult i32 %8, 100000000
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
define %struct.Memory* @routine_movl_MINUS0x4040__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16448
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16448
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414baa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x404c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16460
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
define %struct.Memory* @routine_movl__eax__MINUS0x404c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5f5e100__MINUS0x4034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100000000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4008__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4149dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4000__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -16384
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4034__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16436
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
define %struct.Memory* @routine_jge_.L_4149a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -14336
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
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
define %struct.Memory* @routine_je_.L_4149a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8940528
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4149a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16436
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4004__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16388
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
define %struct.Memory* @routine_movl__ecx__MINUS0x403c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16444
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4008__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16392
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16440
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4149c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4008__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16392
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
define %struct.Memory* @routine_movl__eax__MINUS0x4008__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16392
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4149c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41491e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x4034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100000000
  %10 = icmp ult i32 %8, 100000000
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
define %struct.Memory* @routine_jne_.L_414a03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 30
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -31
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
define %struct.Memory* @routine_movl__eax__0x85f3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41463b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x403c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16444
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
define %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16440
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
define %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x4030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16432
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x85f3e8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f3e8_type* @G_0x85f3e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4044__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16452
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x403c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16444
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4000__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -16384
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x4000__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -16384
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_414b3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16440
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
define %struct.Memory* @routine_jne_.L_414afd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428e4b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428e4b_type* @G__0x428e4b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_414ba5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_414ba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x886bf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8940528
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x137e1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x137e1__rip__type* @G_0x137e1__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x405c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16476
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4060__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_je_.L_414e0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_414e06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_414ded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4054__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16468
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.comp_to_san(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16392
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
define %struct.Memory* @routine_je_.L_414d89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

define %struct.Memory* @routine_ucomiss_MINUS0x405c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16476
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
define %struct.Memory* @routine_jbe_.L_414d32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414d84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4060__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16480
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
define %struct.Memory* @routine_jmpq_.L_414dde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1360b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1360b__rip__type* @G_0x1360b__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_414df2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414bee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414e0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4078__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x4078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea28___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x4070__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16496
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea30___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x4068__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16488
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_je_.L_414ecb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428e6d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428e6d_type* @G__0x428e6d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4060__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16480
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
define %struct.Memory* @routine_movl_0x86bd80___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x86bd80_type* @G_0x86bd80 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4048__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x404c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16460
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
define %struct.Memory* @routine_movl_MINUS0x400c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16396
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
define %struct.Memory* @routine_jne_.L_414fa5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428ecb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ecb_type* @G__0x428ecb to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jge_.L_414fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414f87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_414f87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414f8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414f03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414fa5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x400c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16396
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
define %struct.Memory* @routine_jne_.L_414fc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x62e51c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
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
