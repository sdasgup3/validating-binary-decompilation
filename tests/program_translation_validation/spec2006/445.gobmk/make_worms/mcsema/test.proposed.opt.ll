; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fb4_type = type <{ [1 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x582e3b_type = type <{ [8 x i8] }>
%G__0x582eee_type = type <{ [8 x i8] }>
%G__0x582f0a_type = type <{ [8 x i8] }>
%G__0x582f2f_type = type <{ [8 x i8] }>
%G__0x582f5f_type = type <{ [8 x i8] }>
%G__0x582f6a_type = type <{ [8 x i8] }>
%G__0x582f76_type = type <{ [8 x i8] }>
%G__0x582fa9_type = type <{ [8 x i8] }>
%G__0x582fdd_type = type <{ [8 x i8] }>
%G__0x582ff9_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0fb4 = local_unnamed_addr global %G_0xab0fb4_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x582e3b = global %G__0x582e3b_type zeroinitializer
@G__0x582eee = global %G__0x582eee_type zeroinitializer
@G__0x582f0a = global %G__0x582f0a_type zeroinitializer
@G__0x582f2f = global %G__0x582f2f_type zeroinitializer
@G__0x582f5f = global %G__0x582f5f_type zeroinitializer
@G__0x582f6a = global %G__0x582f6a_type zeroinitializer
@G__0x582f76 = global %G__0x582f76_type zeroinitializer
@G__0x582fa9 = global %G__0x582fa9_type zeroinitializer
@G__0x582fdd = global %G__0x582fdd_type zeroinitializer
@G__0x582ff9 = global %G__0x582ff9_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_487530.build_worms(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415e70.stones_on_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_487730.compute_effective_worm_sizes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4877a0.compute_unconditional_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4879c0.find_worm_attacks_and_defenses(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488130.ping_cave(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488610.is_same_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488660.genus(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488740.change_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488800.change_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_477550.does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488880.find_lunch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488b80.find_worm_threats(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488e80.examine_cavity(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @make_worms(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1736
  %12 = icmp ult i64 %8, 1728
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
  %39 = add i64 %10, 5119
  %40 = add i64 %10, 15
  %41 = add i64 %7, -1744
  %42 = inttoptr i64 %41 to i64*
  store i64 %40, i64* %42, align 8
  store i64 %41, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  %call2_48613b = tail call %struct.Memory* @sub_487530.build_worms(%struct.State* %0, i64 %39, %struct.Memory* %2)
  %RDI.i2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  store i64 3, i64* %RDI.i2211, align 8
  %44 = add i64 %43, -459472
  %45 = add i64 %43, 10
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %48, align 8
  store i64 %47, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  %call2_486145 = tail call %struct.Memory* @sub_415e70.stones_on_board(%struct.State* %0, i64 %44, %struct.Memory* %call2_48613b)
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i2208 = bitcast %union.anon* %49 to i32*
  %50 = load i32, i32* %EAX.i2208, align 4
  %51 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %52 = and i32 %50, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52)
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %57 = icmp eq i32 %50, 0
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %29, align 1
  %59 = lshr i32 %50, 31
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %57, i64 9, i64 14
  %61 = add i64 %51, %.v
  store i64 %61, i64* %3, align 8
  br i1 %57, label %block_486153, label %block_.L_486158

block_486153:                                     ; preds = %entry
  %62 = add i64 %61, 5063
  store i64 %62, i64* %3, align 8
  br label %block_.L_48751a

block_.L_486158:                                  ; preds = %entry
  %63 = add i64 %61, 5592
  %64 = add i64 %61, 5
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67, align 8
  store i64 %66, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  %call2_486158 = tail call %struct.Memory* @sub_487730.compute_effective_worm_sizes(%struct.State* nonnull %0, i64 %63, %struct.Memory* %call2_486145)
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 5699
  %70 = add i64 %68, 5
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  %call2_48615d = tail call %struct.Memory* @sub_4877a0.compute_unconditional_status(%struct.State* nonnull %0, i64 %69, %struct.Memory* %call2_486158)
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 6238
  %76 = add i64 %74, 5
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  %call2_486162 = tail call %struct.Memory* @sub_4879c0.find_worm_attacks_and_defenses(%struct.State* nonnull %0, i64 %75, %struct.Memory* %call2_48615d)
  %80 = load i64, i64* %3, align 8
  %81 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %82 = and i32 %81, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %87 = icmp eq i32 %81, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %29, align 1
  %89 = lshr i32 %81, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v221 = select i1 %87, i64 14, i64 19
  %91 = add i64 %80, %.v221
  store i64 %91, i64* %3, align 8
  br i1 %87, label %block_486175, label %block_.L_48617a

block_486175:                                     ; preds = %block_.L_486158
  %92 = add i64 %91, 45
  store i64 %92, i64* %3, align 8
  %.pre211 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %.pre212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  br label %block_.L_4861a2

block_.L_48617a:                                  ; preds = %block_.L_486158
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  %RSI.i2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 108, i64* %RSI.i2196, align 8
  %RDX.i2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i2194, align 8
  %RAX.i2192 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  store i64 4294967295, i64* %RAX.i2192, align 8
  %RCX.i2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i2190, align 8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %93, align 8
  %94 = add i64 %91, -213226
  %95 = add i64 %91, 40
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %call2_48619d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %94, %struct.Memory* %call2_486162)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4861a2

block_.L_4861a2:                                  ; preds = %block_.L_48617a, %block_486175
  %R8.i2141.pre-phi = phi i64* [ %93, %block_.L_48617a ], [ %.pre214, %block_486175 ]
  %RDX.i2146.pre-phi = phi i64* [ %RDX.i2194, %block_.L_48617a ], [ %.pre213, %block_486175 ]
  %RSI.i2156.pre-phi = phi i64* [ %RSI.i2196, %block_.L_48617a ], [ %.pre212, %block_486175 ]
  %RAX.i2177.pre-phi = phi i64* [ %RAX.i2192, %block_.L_48617a ], [ %.pre211, %block_486175 ]
  %99 = phi i64 [ %.pre, %block_.L_48617a ], [ %92, %block_486175 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_48619d, %block_.L_48617a ], [ %call2_486162, %block_486175 ]
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -4
  %102 = add i64 %99, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 21, i32* %103, align 4
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2175 = getelementptr inbounds %union.anon, %union.anon* %104, i64 0, i32 0
  %ECX.i2172 = bitcast %union.anon* %104 to i32*
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_4861a9

block_.L_4861a9:                                  ; preds = %block_.L_4862e1, %block_.L_4861a2
  %105 = phi i64 [ %.pre147, %block_.L_4861a2 ], [ %552, %block_.L_4862e1 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4861a2 ], [ %MEMORY.4, %block_.L_4862e1 ]
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -4
  %108 = add i64 %105, 7
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, -400
  %112 = icmp ult i32 %110, 400
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = and i32 %111, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i32 %110, 16
  %120 = xor i32 %119, %111
  %121 = lshr i32 %120, 4
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %26, align 1
  %124 = icmp eq i32 %111, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %29, align 1
  %126 = lshr i32 %111, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %32, align 1
  %128 = lshr i32 %110, 31
  %129 = xor i32 %126, %128
  %130 = add nuw nsw i32 %129, %128
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %38, align 1
  %133 = icmp ne i8 %127, 0
  %134 = xor i1 %133, %131
  %.v222 = select i1 %134, i64 13, i64 331
  %135 = add i64 %105, %.v222
  store i64 %135, i64* %3, align 8
  br i1 %134, label %block_4861b6, label %block_.L_4862f4

block_4861b6:                                     ; preds = %block_.L_4861a9
  %136 = add i64 %135, 4
  store i64 %136, i64* %3, align 8
  %137 = load i32, i32* %109, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RAX.i2177.pre-phi, align 8
  %139 = add nsw i64 %138, 12099168
  %140 = add i64 %135, 12
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i8*
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  store i64 %143, i64* %RCX.i2175, align 8
  %144 = zext i8 %142 to i32
  %145 = add nsw i32 %144, -1
  %146 = icmp eq i8 %142, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %14, align 1
  %148 = and i32 %145, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148)
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %21, align 1
  %153 = xor i32 %145, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %26, align 1
  %157 = icmp eq i32 %145, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %29, align 1
  %159 = lshr i32 %145, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v326 = select i1 %157, i64 42, i64 21
  %161 = add i64 %135, %.v326
  store i64 %161, i64* %3, align 8
  br i1 %157, label %block_.L_4861e0, label %block_4861cb

block_4861cb:                                     ; preds = %block_4861b6
  %162 = add i64 %161, 4
  store i64 %162, i64* %3, align 8
  %163 = load i32, i32* %109, align 4
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %RAX.i2177.pre-phi, align 8
  %165 = add nsw i64 %164, 12099168
  %166 = add i64 %161, 12
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i8*
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i64
  store i64 %169, i64* %RCX.i2175, align 8
  %170 = zext i8 %168 to i32
  %171 = add nsw i32 %170, -2
  %172 = icmp ult i8 %168, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %14, align 1
  %174 = and i32 %171, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  %179 = xor i32 %171, %170
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %26, align 1
  %183 = icmp eq i32 %171, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %29, align 1
  %185 = lshr i32 %171, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v327 = select i1 %183, i64 21, i64 278
  %187 = add i64 %161, %.v327
  store i64 %187, i64* %3, align 8
  br i1 %183, label %block_.L_4861e0, label %block_.L_4862e1

block_.L_4861e0:                                  ; preds = %block_4861cb, %block_4861b6
  %188 = phi i64 [ %187, %block_4861cb ], [ %161, %block_4861b6 ]
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  %190 = load i32, i32* %109, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RDI.i2211, align 8
  %192 = add i64 %188, 6
  store i64 %192, i64* %3, align 8
  %193 = load i32, i32* %109, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RSI.i2156.pre-phi, align 8
  %195 = add i64 %188, 7952
  %196 = add i64 %188, 11
  %197 = load i64, i64* %6, align 8
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %6, align 8
  store i64 %195, i64* %3, align 8
  %call2_4861e6 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %195, %struct.Memory* %MEMORY.1)
  %200 = load i32, i32* %EAX.i2208, align 4
  %201 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %202 = and i32 %200, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %207 = icmp eq i32 %200, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %29, align 1
  %209 = lshr i32 %200, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v328 = select i1 %207, i64 246, i64 9
  %211 = add i64 %201, %.v328
  store i64 %211, i64* %3, align 8
  br i1 %207, label %block_.L_4862e1, label %block_4861f4

block_4861f4:                                     ; preds = %block_.L_4861e0
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -8
  store i64 %213, i64* %RSI.i2156.pre-phi, align 8
  %214 = add i64 %212, -12
  store i64 %214, i64* %RDX.i2146.pre-phi, align 8
  %215 = add i64 %212, -16
  store i64 %215, i64* %RCX.i2175, align 8
  %216 = add i64 %212, -20
  store i64 %216, i64* %R8.i2141.pre-phi, align 8
  %217 = add i64 %212, -4
  %218 = add i64 %211, 19
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RDI.i2211, align 8
  %222 = add i64 %211, 7996
  %223 = add i64 %211, 24
  %224 = load i64, i64* %6, align 8
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226, align 8
  store i64 %225, i64* %6, align 8
  store i64 %222, i64* %3, align 8
  %call2_486207 = tail call %struct.Memory* @sub_488130.ping_cave(%struct.State* nonnull %0, i64 %222, %struct.Memory* %MEMORY.1)
  %227 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i2175, align 8
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -4
  %230 = add i64 %227, 14
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %233, 380
  store i64 %234, i64* %RDX.i2146.pre-phi, align 8
  %235 = lshr i64 %234, 63
  %236 = add i64 %234, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %236, i64* %RCX.i2175, align 8
  %237 = icmp ult i64 %236, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %238 = icmp ult i64 %236, %234
  %239 = or i1 %237, %238
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %14, align 1
  %241 = trunc i64 %236 to i32
  %242 = and i32 %241, 252
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %21, align 1
  %247 = xor i64 %234, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %248 = xor i64 %247, %236
  %249 = lshr i64 %248, 4
  %250 = trunc i64 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %26, align 1
  %252 = icmp eq i64 %236, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %29, align 1
  %254 = lshr i64 %236, 63
  %255 = trunc i64 %254 to i8
  store i8 %255, i8* %32, align 1
  %256 = xor i64 %254, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %257 = xor i64 %254, %235
  %258 = add nuw nsw i64 %256, %257
  %259 = icmp eq i64 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %38, align 1
  %261 = add i64 %234, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 16)
  %262 = add i64 %227, 27
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RDI.i2211, align 8
  %266 = add i64 %228, -8
  %267 = add i64 %227, 30
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sub i32 %264, %269
  %271 = icmp ult i32 %264, %269
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %14, align 1
  %273 = and i32 %270, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %21, align 1
  %278 = xor i32 %269, %264
  %279 = xor i32 %278, %270
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %26, align 1
  %283 = icmp eq i32 %270, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %29, align 1
  %285 = lshr i32 %270, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %32, align 1
  %287 = lshr i32 %264, 31
  %288 = lshr i32 %269, 31
  %289 = xor i32 %288, %287
  %290 = xor i32 %285, %287
  %291 = add nuw nsw i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %38, align 1
  %.v329 = select i1 %283, i64 36, i64 41
  %294 = add i64 %227, %.v329
  store i64 %294, i64* %3, align 8
  br i1 %283, label %block_486230, label %block_.L_486235

block_486230:                                     ; preds = %block_4861f4
  %295 = add i64 %294, 45
  store i64 %295, i64* %3, align 8
  br label %block_.L_48625d

block_.L_486235:                                  ; preds = %block_4861f4
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 116, i64* %RSI.i2156.pre-phi, align 8
  store i64 ptrtoint (%G__0x582eee_type* @G__0x582eee to i64), i64* %RDX.i2146.pre-phi, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  store i64 4294967295, i64* %RCX.i2175, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %296 = add i64 %294, -213413
  %297 = add i64 %294, 40
  %298 = load i64, i64* %6, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8
  store i64 %296, i64* %3, align 8
  %call2_486258 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %296, %struct.Memory* %MEMORY.1)
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_48625d

block_.L_48625d:                                  ; preds = %block_.L_486235, %block_486230
  %301 = phi i64 [ %.pre209, %block_.L_486235 ], [ %295, %block_486230 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -12
  %304 = add i64 %301, 13
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RCX.i2175, align 8
  %308 = add i64 %302, -4
  %309 = add i64 %301, 17
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = mul nsw i64 %312, 380
  store i64 %313, i64* %RDX.i2146.pre-phi, align 8
  %314 = lshr i64 %313, 63
  %315 = add i64 %313, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %315, i64* %RSI.i2156.pre-phi, align 8
  %316 = icmp ult i64 %315, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %317 = icmp ult i64 %315, %313
  %318 = or i1 %316, %317
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %14, align 1
  %320 = trunc i64 %315 to i32
  %321 = and i32 %320, 252
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  %326 = xor i64 %313, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %327 = xor i64 %326, %315
  %328 = lshr i64 %327, 4
  %329 = trunc i64 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %26, align 1
  %331 = icmp eq i64 %315, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %29, align 1
  %333 = lshr i64 %315, 63
  %334 = trunc i64 %333 to i8
  store i8 %334, i8* %32, align 1
  %335 = xor i64 %333, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %336 = xor i64 %333, %314
  %337 = add nuw nsw i64 %335, %336
  %338 = icmp eq i64 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %38, align 1
  %340 = add i64 %313, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 20)
  %341 = add i64 %301, 33
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  store i32 %306, i32* %342, align 4
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -16
  %345 = load i64, i64* %3, align 8
  %346 = add i64 %345, 3
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %344 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RCX.i2175, align 8
  %350 = add i64 %343, -4
  %351 = add i64 %345, 7
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = mul nsw i64 %354, 380
  store i64 %355, i64* %RDX.i2146.pre-phi, align 8
  %356 = lshr i64 %355, 63
  %357 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %358 = add i64 %355, %357
  store i64 %358, i64* %RSI.i2156.pre-phi, align 8
  %359 = icmp ult i64 %358, %357
  %360 = icmp ult i64 %358, %355
  %361 = or i1 %359, %360
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = trunc i64 %358 to i32
  %364 = and i32 %363, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %21, align 1
  %369 = xor i64 %355, %357
  %370 = xor i64 %369, %358
  %371 = lshr i64 %370, 4
  %372 = trunc i64 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %26, align 1
  %374 = icmp eq i64 %358, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %29, align 1
  %376 = lshr i64 %358, 63
  %377 = trunc i64 %376 to i8
  store i8 %377, i8* %32, align 1
  %378 = lshr i64 %357, 63
  %379 = xor i64 %376, %378
  %380 = xor i64 %376, %356
  %381 = add nuw nsw i64 %379, %380
  %382 = icmp eq i64 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %38, align 1
  %384 = add i64 %358, 24
  %385 = add i64 %345, 23
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  store i32 %348, i32* %386, align 4
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -20
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 3
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX.i2175, align 8
  %394 = add i64 %387, -4
  %395 = add i64 %389, 7
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = mul nsw i64 %398, 380
  store i64 %399, i64* %RDX.i2146.pre-phi, align 8
  %400 = lshr i64 %399, 63
  %401 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %402 = add i64 %399, %401
  store i64 %402, i64* %RSI.i2156.pre-phi, align 8
  %403 = icmp ult i64 %402, %401
  %404 = icmp ult i64 %402, %399
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %14, align 1
  %407 = trunc i64 %402 to i32
  %408 = and i32 %407, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %21, align 1
  %413 = xor i64 %399, %401
  %414 = xor i64 %413, %402
  %415 = lshr i64 %414, 4
  %416 = trunc i64 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %26, align 1
  %418 = icmp eq i64 %402, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %29, align 1
  %420 = lshr i64 %402, 63
  %421 = trunc i64 %420 to i8
  store i8 %421, i8* %32, align 1
  %422 = lshr i64 %401, 63
  %423 = xor i64 %420, %422
  %424 = xor i64 %420, %400
  %425 = add nuw nsw i64 %423, %424
  %426 = icmp eq i64 %425, 2
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %38, align 1
  %428 = add i64 %402, 28
  %429 = add i64 %389, 23
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  store i32 %392, i32* %430, align 4
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -4
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 4
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %432 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = mul nsw i64 %437, 380
  store i64 %438, i64* %RDX.i2146.pre-phi, align 8
  %439 = lshr i64 %438, 63
  %440 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %441 = add i64 %438, %440
  store i64 %441, i64* %RSI.i2156.pre-phi, align 8
  %442 = icmp ult i64 %441, %440
  %443 = icmp ult i64 %441, %438
  %444 = or i1 %442, %443
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %14, align 1
  %446 = trunc i64 %441 to i32
  %447 = and i32 %446, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %21, align 1
  %452 = xor i64 %438, %440
  %453 = xor i64 %452, %441
  %454 = lshr i64 %453, 4
  %455 = trunc i64 %454 to i8
  %456 = and i8 %455, 1
  store i8 %456, i8* %26, align 1
  %457 = icmp eq i64 %441, 0
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %29, align 1
  %459 = lshr i64 %441, 63
  %460 = trunc i64 %459 to i8
  store i8 %460, i8* %32, align 1
  %461 = lshr i64 %440, 63
  %462 = xor i64 %459, %461
  %463 = xor i64 %459, %439
  %464 = add nuw nsw i64 %462, %463
  %465 = icmp eq i64 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %38, align 1
  %467 = add i64 %441, 36
  %468 = add i64 %433, 24
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  store i32 0, i32* %469, align 4
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -4
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = mul nsw i64 %476, 380
  store i64 %477, i64* %RDX.i2146.pre-phi, align 8
  %478 = lshr i64 %477, 63
  %479 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %480 = add i64 %477, %479
  store i64 %480, i64* %RAX.i2177.pre-phi, align 8
  %481 = icmp ult i64 %480, %479
  %482 = icmp ult i64 %480, %477
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %14, align 1
  %485 = trunc i64 %480 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  %491 = xor i64 %477, %479
  %492 = xor i64 %491, %480
  %493 = lshr i64 %492, 4
  %494 = trunc i64 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %26, align 1
  %496 = icmp eq i64 %480, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %29, align 1
  %498 = lshr i64 %480, 63
  %499 = trunc i64 %498 to i8
  store i8 %499, i8* %32, align 1
  %500 = lshr i64 %479, 63
  %501 = xor i64 %498, %500
  %502 = xor i64 %498, %478
  %503 = add nuw nsw i64 %501, %502
  %504 = icmp eq i64 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %38, align 1
  %506 = add i64 %480, 40
  %507 = add i64 %472, 21
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i32*
  store i32 0, i32* %508, align 4
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -4
  %511 = load i64, i64* %3, align 8
  %512 = add i64 %511, 3
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RDI.i2211, align 8
  %516 = add i64 %511, 8615
  %517 = add i64 %511, 8
  %518 = load i64, i64* %6, align 8
  %519 = add i64 %518, -8
  %520 = inttoptr i64 %519 to i64*
  store i64 %517, i64* %520, align 8
  store i64 %519, i64* %6, align 8
  store i64 %516, i64* %3, align 8
  %call2_4862dc = tail call %struct.Memory* @sub_488480.propagate_worm(%struct.State* nonnull %0, i64 %516, %struct.Memory* %MEMORY.1)
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_4862e1

block_.L_4862e1:                                  ; preds = %block_4861cb, %block_.L_48625d, %block_.L_4861e0
  %521 = phi i64 [ %211, %block_.L_4861e0 ], [ %.pre210, %block_.L_48625d ], [ %187, %block_4861cb ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4861e0 ], [ %call2_4862dc, %block_.L_48625d ], [ %MEMORY.1, %block_4861cb ]
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -4
  %524 = add i64 %521, 8
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = add i32 %526, 1
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RAX.i2177.pre-phi, align 8
  %529 = icmp eq i32 %526, -1
  %530 = icmp eq i32 %527, 0
  %531 = or i1 %529, %530
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %14, align 1
  %533 = and i32 %527, 255
  %534 = tail call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %21, align 1
  %538 = xor i32 %527, %526
  %539 = lshr i32 %538, 4
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  store i8 %541, i8* %26, align 1
  %542 = zext i1 %530 to i8
  store i8 %542, i8* %29, align 1
  %543 = lshr i32 %527, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %32, align 1
  %545 = lshr i32 %526, 31
  %546 = xor i32 %543, %545
  %547 = add nuw nsw i32 %546, %543
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %38, align 1
  %550 = add i64 %521, 14
  store i64 %550, i64* %3, align 8
  store i32 %527, i32* %525, align 4
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, -326
  store i64 %552, i64* %3, align 8
  br label %block_.L_4861a9

block_.L_4862f4:                                  ; preds = %block_.L_4861a9
  %553 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %554 = and i32 %553, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %559 = icmp eq i32 %553, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %29, align 1
  %561 = lshr i32 %553, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v223 = select i1 %559, i64 14, i64 19
  %563 = add i64 %135, %.v223
  store i64 %563, i64* %3, align 8
  br i1 %559, label %block_486302, label %block_.L_486307

block_486302:                                     ; preds = %block_.L_4862f4
  %564 = add i64 %563, 45
  store i64 %564, i64* %3, align 8
  br label %block_.L_48632f

block_.L_486307:                                  ; preds = %block_.L_4862f4
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 126, i64* %RSI.i2156.pre-phi, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i2146.pre-phi, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  %RCX.i2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i2000, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %565 = add i64 %563, -213623
  %566 = add i64 %563, 40
  %567 = load i64, i64* %6, align 8
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %566, i64* %569, align 8
  store i64 %568, i64* %6, align 8
  store i64 %565, i64* %3, align 8
  %call2_48632a = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %565, %struct.Memory* %MEMORY.1)
  %.pre148 = load i64, i64* %RBP.i, align 8
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_48632f

block_.L_48632f:                                  ; preds = %block_.L_486307, %block_486302
  %570 = phi i64 [ %.pre149, %block_.L_486307 ], [ %564, %block_486302 ]
  %571 = phi i64 [ %.pre148, %block_.L_486307 ], [ %106, %block_486302 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_48632a, %block_.L_486307 ], [ %MEMORY.1, %block_486302 ]
  %572 = add i64 %571, -4
  %573 = add i64 %570, 7
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  store i32 21, i32* %574, align 4
  %RSI.i1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDX.i1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1821 = bitcast %union.anon* %575 to i32*
  %576 = getelementptr inbounds %union.anon, %union.anon* %575, i64 0, i32 0
  %R9.i1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %AL.i1656 = bitcast %union.anon* %49 to i8*
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_486336

block_.L_486336:                                  ; preds = %block_.L_486626, %block_.L_48632f
  %577 = phi i64 [ %.pre150, %block_.L_48632f ], [ %1590, %block_.L_486626 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_48632f ], [ %MEMORY.20, %block_.L_486626 ]
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -4
  %580 = add i64 %577, 7
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = add i32 %582, -400
  %584 = icmp ult i32 %582, 400
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %14, align 1
  %586 = and i32 %583, 255
  %587 = tail call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  store i8 %590, i8* %21, align 1
  %591 = xor i32 %582, 16
  %592 = xor i32 %591, %583
  %593 = lshr i32 %592, 4
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  store i8 %595, i8* %26, align 1
  %596 = icmp eq i32 %583, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %29, align 1
  %598 = lshr i32 %583, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %32, align 1
  %600 = lshr i32 %582, 31
  %601 = xor i32 %598, %600
  %602 = add nuw nsw i32 %601, %600
  %603 = icmp eq i32 %602, 2
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %38, align 1
  %605 = icmp ne i8 %599, 0
  %606 = xor i1 %605, %603
  %.v224 = select i1 %606, i64 13, i64 766
  %607 = add i64 %577, %.v224
  store i64 %607, i64* %3, align 8
  br i1 %606, label %block_486343, label %block_.L_486634

block_486343:                                     ; preds = %block_.L_486336
  %608 = add i64 %578, -24
  %609 = add i64 %607, 7
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  store i32 0, i32* %610, align 4
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -28
  %613 = load i64, i64* %3, align 8
  %614 = add i64 %613, 7
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %612 to i32*
  store i32 0, i32* %615, align 4
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -4
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 4
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %617 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = sext i32 %621 to i64
  store i64 %622, i64* %RAX.i2177.pre-phi, align 8
  %623 = add nsw i64 %622, 12099168
  %624 = add i64 %618, 12
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i8*
  %626 = load i8, i8* %625, align 1
  %627 = zext i8 %626 to i64
  store i64 %627, i64* %RCX.i2175, align 8
  %628 = zext i8 %626 to i32
  %629 = add nsw i32 %628, -1
  %630 = icmp eq i8 %626, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %14, align 1
  %632 = and i32 %629, 255
  %633 = tail call i32 @llvm.ctpop.i32(i32 %632)
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  store i8 %636, i8* %21, align 1
  %637 = xor i32 %629, %628
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  store i8 %640, i8* %26, align 1
  %641 = icmp eq i32 %629, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %29, align 1
  %643 = lshr i32 %629, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v312 = select i1 %641, i64 42, i64 21
  %645 = add i64 %618, %.v312
  store i64 %645, i64* %3, align 8
  br i1 %641, label %block_.L_48637b, label %block_486366

block_486366:                                     ; preds = %block_486343
  %646 = add i64 %645, 4
  store i64 %646, i64* %3, align 8
  %647 = load i32, i32* %620, align 4
  %648 = sext i32 %647 to i64
  store i64 %648, i64* %RAX.i2177.pre-phi, align 8
  %649 = add nsw i64 %648, 12099168
  %650 = add i64 %645, 12
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i8*
  %652 = load i8, i8* %651, align 1
  %653 = zext i8 %652 to i64
  store i64 %653, i64* %RCX.i2175, align 8
  %654 = zext i8 %652 to i32
  %655 = add nsw i32 %654, -2
  %656 = icmp ult i8 %652, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %14, align 1
  %658 = and i32 %655, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %21, align 1
  %663 = xor i32 %655, %654
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %26, align 1
  %667 = icmp eq i32 %655, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %29, align 1
  %669 = lshr i32 %655, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v313 = select i1 %667, i64 21, i64 41
  %671 = add i64 %645, %.v313
  store i64 %671, i64* %3, align 8
  br i1 %667, label %block_.L_48637b, label %block_.L_48638f

block_.L_48637b:                                  ; preds = %block_486366, %block_486343
  %672 = phi i64 [ %671, %block_486366 ], [ %645, %block_486343 ]
  %673 = add i64 %672, 3
  store i64 %673, i64* %3, align 8
  %674 = load i32, i32* %620, align 4
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RDI.i2211, align 8
  %676 = add i64 %672, 6
  store i64 %676, i64* %3, align 8
  %677 = load i32, i32* %620, align 4
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RSI.i1962, align 8
  %679 = add i64 %672, 7541
  %680 = add i64 %672, 11
  %681 = load i64, i64* %6, align 8
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %680, i64* %683, align 8
  store i64 %682, i64* %6, align 8
  store i64 %679, i64* %3, align 8
  %call2_486381 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %679, %struct.Memory* %MEMORY.6)
  %684 = load i32, i32* %EAX.i2208, align 4
  %685 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %686 = and i32 %684, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %691 = icmp eq i32 %684, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %29, align 1
  %693 = lshr i32 %684, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v314 = select i1 %691, i64 9, i64 14
  %695 = add i64 %685, %.v314
  store i64 %695, i64* %3, align 8
  br i1 %691, label %block_.L_48638f, label %block_.L_486394

block_.L_48638f:                                  ; preds = %block_.L_48637b, %block_486366
  %696 = phi i64 [ %695, %block_.L_48637b ], [ %671, %block_486366 ]
  %697 = add i64 %696, 663
  br label %block_.L_486626

block_.L_486394:                                  ; preds = %block_.L_48637b
  %698 = load i64, i64* %RBP.i, align 8
  %699 = add i64 %698, -36
  %700 = add i64 %695, 7
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i32*
  store i32 21, i32* %701, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_48639b

block_.L_48639b:                                  ; preds = %block_.L_48655c, %block_.L_486394
  %702 = phi i64 [ %.pre197, %block_.L_486394 ], [ %1368, %block_.L_48655c ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_.L_486394 ], [ %MEMORY.16, %block_.L_48655c ]
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -36
  %705 = add i64 %702, 7
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = add i32 %707, -400
  %709 = icmp ult i32 %707, 400
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = and i32 %708, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %21, align 1
  %716 = xor i32 %707, 16
  %717 = xor i32 %716, %708
  %718 = lshr i32 %717, 4
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %26, align 1
  %721 = icmp eq i32 %708, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %29, align 1
  %723 = lshr i32 %708, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %32, align 1
  %725 = lshr i32 %707, 31
  %726 = xor i32 %723, %725
  %727 = add nuw nsw i32 %726, %725
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %38, align 1
  %730 = icmp ne i8 %724, 0
  %731 = xor i1 %730, %728
  %.v315 = select i1 %731, i64 13, i64 463
  %732 = add i64 %702, %.v315
  store i64 %732, i64* %3, align 8
  br i1 %731, label %block_4863a8, label %block_.L_48656a

block_4863a8:                                     ; preds = %block_.L_48639b
  store i64 3, i64* %RAX.i2177.pre-phi, align 8
  %733 = add i64 %732, 9
  store i64 %733, i64* %3, align 8
  %734 = load i32, i32* %706, align 4
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %RCX.i2175, align 8
  %736 = add nsw i64 %735, 12099168
  %737 = add i64 %732, 17
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i8*
  %739 = load i8, i8* %738, align 1
  %740 = zext i8 %739 to i64
  store i64 %740, i64* %RDX.i1945, align 8
  %741 = add i64 %703, -4
  %742 = add i64 %732, 21
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = sext i32 %744 to i64
  store i64 %745, i64* %RCX.i2175, align 8
  %746 = add nsw i64 %745, 12099168
  %747 = add i64 %732, 29
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i8*
  %749 = load i8, i8* %748, align 1
  %750 = zext i8 %749 to i64
  store i64 %750, i64* %RSI.i1962, align 8
  %751 = zext i8 %749 to i32
  %752 = sub nsw i32 3, %751
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RAX.i2177.pre-phi, align 8
  %754 = lshr i32 %752, 31
  %755 = zext i8 %739 to i32
  %756 = sub nsw i32 %755, %752
  %757 = icmp ult i32 %755, %752
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %14, align 1
  %759 = and i32 %756, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  %764 = xor i32 %752, %755
  %765 = xor i32 %764, %756
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %26, align 1
  %769 = icmp eq i32 %756, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %29, align 1
  %771 = lshr i32 %756, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %32, align 1
  %773 = add nuw nsw i32 %771, %754
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %38, align 1
  %.v319 = select i1 %769, i64 44, i64 39
  %776 = add i64 %732, %.v319
  store i64 %776, i64* %3, align 8
  br i1 %769, label %block_.L_4863d4, label %block_4863cf

block_4863cf:                                     ; preds = %block_4863a8
  %777 = add i64 %776, 397
  br label %block_.L_48655c

block_.L_4863d4:                                  ; preds = %block_4863a8
  %778 = add i64 %703, -32
  %779 = add i64 %776, 7
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  store i32 0, i32* %780, align 4
  %.pre200 = load i64, i64* %3, align 8
  br label %block_.L_4863db

block_.L_4863db:                                  ; preds = %block_.L_486549, %block_.L_4863d4
  %781 = phi i64 [ %.pre200, %block_.L_4863d4 ], [ %1336, %block_.L_486549 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_4863d4 ], [ %MEMORY.15, %block_.L_486549 ]
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -32
  %784 = add i64 %781, 4
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = add i32 %786, -4
  %788 = icmp ult i32 %786, 4
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %14, align 1
  %790 = and i32 %787, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %21, align 1
  %795 = xor i32 %787, %786
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %26, align 1
  %799 = icmp eq i32 %787, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %29, align 1
  %801 = lshr i32 %787, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %32, align 1
  %803 = lshr i32 %786, 31
  %804 = xor i32 %801, %803
  %805 = add nuw nsw i32 %804, %803
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %38, align 1
  %808 = icmp ne i8 %802, 0
  %809 = xor i1 %808, %806
  %.v320 = select i1 %809, i64 10, i64 380
  %810 = add i64 %781, %.v320
  store i64 %810, i64* %3, align 8
  br i1 %809, label %block_4863e5, label %block_.L_486557

block_4863e5:                                     ; preds = %block_.L_4863db
  %811 = add i64 %782, -36
  %812 = add i64 %810, 3
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RAX.i2177.pre-phi, align 8
  %816 = add i64 %810, 7
  store i64 %816, i64* %3, align 8
  %817 = load i32, i32* %785, align 4
  %818 = sext i32 %817 to i64
  store i64 %818, i64* %RCX.i2175, align 8
  %819 = shl nsw i64 %818, 2
  %820 = add nsw i64 %819, 8053168
  %821 = add i64 %810, 14
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = add i32 %823, %814
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RAX.i2177.pre-phi, align 8
  %826 = icmp ult i32 %824, %814
  %827 = icmp ult i32 %824, %823
  %828 = or i1 %826, %827
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %14, align 1
  %830 = and i32 %824, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %21, align 1
  %835 = xor i32 %823, %814
  %836 = xor i32 %835, %824
  %837 = lshr i32 %836, 4
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %26, align 1
  %840 = icmp eq i32 %824, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %29, align 1
  %842 = lshr i32 %824, 31
  %843 = trunc i32 %842 to i8
  store i8 %843, i8* %32, align 1
  %844 = lshr i32 %814, 31
  %845 = lshr i32 %823, 31
  %846 = xor i32 %842, %844
  %847 = xor i32 %842, %845
  %848 = add nuw nsw i32 %846, %847
  %849 = icmp eq i32 %848, 2
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %38, align 1
  %851 = sext i32 %824 to i64
  store i64 %851, i64* %RCX.i2175, align 8
  %852 = add nsw i64 %851, 12099168
  %853 = add i64 %810, 25
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i8*
  %855 = load i8, i8* %854, align 1
  %856 = zext i8 %855 to i64
  store i64 %856, i64* %RAX.i2177.pre-phi, align 8
  %857 = zext i8 %855 to i32
  %858 = add nsw i32 %857, -3
  %859 = icmp ult i8 %855, 3
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %14, align 1
  %861 = and i32 %858, 255
  %862 = tail call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  store i8 %865, i8* %21, align 1
  %866 = xor i32 %858, %857
  %867 = lshr i32 %866, 4
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %26, align 1
  %870 = icmp eq i32 %858, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %29, align 1
  %872 = lshr i32 %858, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v321 = select i1 %870, i64 83, i64 34
  %874 = add i64 %810, %.v321
  store i64 %874, i64* %3, align 8
  br i1 %870, label %block_.L_486438, label %block_486407

block_486407:                                     ; preds = %block_4863e5
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %875 = add i64 %874, 13
  store i64 %875, i64* %3, align 8
  %876 = load i32, i32* %813, align 4
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RCX.i2175, align 8
  %878 = add i64 %874, 17
  store i64 %878, i64* %3, align 8
  %879 = load i32, i32* %785, align 4
  %880 = sext i32 %879 to i64
  store i64 %880, i64* %RDX.i1945, align 8
  %881 = shl nsw i64 %880, 2
  %882 = add nsw i64 %881, 8053168
  %883 = add i64 %874, 24
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = add i32 %885, %876
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RCX.i2175, align 8
  %888 = sext i32 %886 to i64
  %889 = mul nsw i64 %888, 380
  store i64 %889, i64* %RDX.i1945, align 8
  %890 = lshr i64 %889, 63
  %891 = add i64 %889, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %891, i64* %RAX.i2177.pre-phi, align 8
  %892 = icmp ult i64 %891, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %893 = icmp ult i64 %891, %889
  %894 = or i1 %892, %893
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %14, align 1
  %896 = trunc i64 %891 to i32
  %897 = and i32 %896, 252
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  %902 = xor i64 %889, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %903 = xor i64 %902, %891
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %26, align 1
  %907 = icmp eq i64 %891, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %29, align 1
  %909 = lshr i64 %891, 63
  %910 = trunc i64 %909 to i8
  store i8 %910, i8* %32, align 1
  %911 = xor i64 %909, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %912 = xor i64 %909, %890
  %913 = add nuw nsw i64 %911, %912
  %914 = icmp eq i64 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %38, align 1
  %916 = add i64 %889, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %917 = add i64 %874, 40
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RCX.i2175, align 8
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -4
  %923 = add i64 %874, 43
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = sub i32 %919, %925
  %927 = icmp ult i32 %919, %925
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %14, align 1
  %929 = and i32 %926, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %21, align 1
  %934 = xor i32 %925, %919
  %935 = xor i32 %934, %926
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %26, align 1
  %939 = icmp eq i32 %926, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %29, align 1
  %941 = lshr i32 %926, 31
  %942 = trunc i32 %941 to i8
  store i8 %942, i8* %32, align 1
  %943 = lshr i32 %919, 31
  %944 = lshr i32 %925, 31
  %945 = xor i32 %944, %943
  %946 = xor i32 %941, %943
  %947 = add nuw nsw i32 %946, %945
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %38, align 1
  %.v322 = select i1 %939, i64 54, i64 49
  %950 = add i64 %874, %.v322
  store i64 %950, i64* %3, align 8
  br i1 %939, label %block_.L_48643d, label %block_.L_486438

block_.L_486438:                                  ; preds = %block_486407, %block_4863e5
  %951 = phi i64 [ %921, %block_486407 ], [ %782, %block_4863e5 ]
  %952 = phi i64 [ %950, %block_486407 ], [ %874, %block_4863e5 ]
  %953 = add i64 %952, 273
  br label %block_.L_486549

block_.L_48643d:                                  ; preds = %block_486407
  %954 = add i64 %921, -36
  %955 = add i64 %950, 3
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RAX.i2177.pre-phi, align 8
  %959 = add i64 %921, -32
  %960 = add i64 %950, 7
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RCX.i2175, align 8
  %964 = shl nsw i64 %963, 2
  %965 = add nsw i64 %964, 8053168
  %966 = add i64 %950, 14
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, %957
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RAX.i2177.pre-phi, align 8
  %971 = icmp ult i32 %969, %957
  %972 = icmp ult i32 %969, %968
  %973 = or i1 %971, %972
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %969, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %968, %957
  %981 = xor i32 %980, %969
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %26, align 1
  %985 = icmp eq i32 %969, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %29, align 1
  %987 = lshr i32 %969, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %32, align 1
  %989 = lshr i32 %957, 31
  %990 = lshr i32 %968, 31
  %991 = xor i32 %987, %989
  %992 = xor i32 %987, %990
  %993 = add nuw nsw i32 %991, %992
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %38, align 1
  %996 = sext i32 %969 to i64
  store i64 %996, i64* %RCX.i2175, align 8
  %997 = add nsw i64 %996, 12099168
  %998 = add i64 %950, 25
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i8*
  %1000 = load i8, i8* %999, align 1
  %1001 = zext i8 %1000 to i64
  store i64 %1001, i64* %RAX.i2177.pre-phi, align 8
  %1002 = add i64 %950, 29
  store i64 %1002, i64* %3, align 8
  %1003 = load i32, i32* %924, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i2175, align 8
  %1005 = add nsw i64 %1004, 12099168
  %1006 = add i64 %950, 37
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i8*
  %1008 = load i8, i8* %1007, align 1
  %1009 = zext i8 %1008 to i64
  store i64 %1009, i64* %RDX.i1945, align 8
  %1010 = zext i8 %1000 to i32
  %1011 = zext i8 %1008 to i32
  %1012 = sub nsw i32 %1010, %1011
  %1013 = icmp ult i8 %1000, %1008
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %14, align 1
  %1015 = and i32 %1012, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %21, align 1
  %1020 = xor i8 %1008, %1000
  %1021 = zext i8 %1020 to i32
  %1022 = xor i32 %1021, %1012
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %26, align 1
  %1026 = icmp eq i32 %1012, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %29, align 1
  %1028 = lshr i32 %1012, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v323 = select i1 %1026, i64 45, i64 50
  %1030 = add i64 %950, %.v323
  store i64 %1030, i64* %3, align 8
  br i1 %1026, label %block_48646a, label %block_.L_48646f

block_48646a:                                     ; preds = %block_.L_48643d
  %1031 = add i64 %1030, 118
  store i64 %1031, i64* %3, align 8
  br label %block_.L_4864e0

block_.L_48646f:                                  ; preds = %block_.L_48643d
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 202, i64* %RSI.i1962, align 8
  store i64 ptrtoint (%G__0x582f0a_type* @G__0x582f0a to i64), i64* %RDX.i1945, align 8
  store i64 20, i64* %RAX.i2177.pre-phi, align 8
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -4
  %1034 = add i64 %1030, 33
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RCX.i2175, align 8
  %1038 = add i64 %1032, -1688
  %1039 = add i64 %1030, 39
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  store i32 20, i32* %1040, align 4
  %1041 = load i32, i32* %ECX.i2172, align 4
  %1042 = zext i32 %1041 to i64
  %1043 = load i64, i64* %3, align 8
  store i64 %1042, i64* %RAX.i2177.pre-phi, align 8
  %1044 = load i64, i64* %RBP.i, align 8
  %1045 = add i64 %1044, -1696
  %1046 = load i64, i64* %RDX.i1945, align 8
  %1047 = add i64 %1043, 9
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1045 to i64*
  store i64 %1046, i64* %1048, align 8
  %1049 = load i64, i64* %3, align 8
  %1050 = load i32, i32* %EAX.i2208, align 8
  %1051 = sext i32 %1050 to i64
  %1052 = lshr i64 %1051, 32
  store i64 %1052, i64* %RDX.i2146.pre-phi, align 8
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -1688
  %1055 = add i64 %1049, 7
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RCX.i2175, align 8
  %1059 = add i64 %1049, 9
  store i64 %1059, i64* %3, align 8
  %1060 = zext i32 %1050 to i64
  %1061 = sext i32 %1057 to i64
  %1062 = shl nuw i64 %1052, 32
  %1063 = or i64 %1062, %1060
  %1064 = sdiv i64 %1063, %1061
  %1065 = shl i64 %1064, 32
  %1066 = ashr exact i64 %1065, 32
  %1067 = icmp eq i64 %1064, %1066
  br i1 %1067, label %1070, label %1068

; <label>:1068:                                   ; preds = %block_.L_48646f
  %1069 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1059, %struct.Memory* %MEMORY.10)
  %.pre201 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %.pre202 = load i64, i64* %3, align 8
  %.pre203 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1827

; <label>:1070:                                   ; preds = %block_.L_48646f
  %1071 = srem i64 %1063, %1061
  %1072 = and i64 %1064, 4294967295
  store i64 %1072, i64* %RAX.i2177.pre-phi, align 8
  %1073 = and i64 %1071, 4294967295
  store i64 %1073, i64* %RDX.i1945, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit1827

routine_idivl__ecx.exit1827:                      ; preds = %1070, %1068
  %1074 = phi i64 [ %.pre203, %1068 ], [ %1053, %1070 ]
  %1075 = phi i64 [ %.pre202, %1068 ], [ %1059, %1070 ]
  %1076 = phi i64 [ %.pre201, %1068 ], [ %1072, %1070 ]
  %1077 = phi %struct.Memory* [ %1069, %1068 ], [ %MEMORY.10, %1070 ]
  %1078 = trunc i64 %1076 to i32
  %1079 = add i32 %1078, -1
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RAX.i2177.pre-phi, align 8
  %1081 = icmp eq i32 %1078, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %14, align 1
  %1083 = and i32 %1079, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %21, align 1
  %1088 = xor i32 %1079, %1078
  %1089 = lshr i32 %1088, 4
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  store i8 %1091, i8* %26, align 1
  %1092 = icmp eq i32 %1079, 0
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %29, align 1
  %1094 = lshr i32 %1079, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %32, align 1
  %1096 = lshr i32 %1078, 31
  %1097 = xor i32 %1094, %1096
  %1098 = add nuw nsw i32 %1097, %1096
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %38, align 1
  %1101 = add i64 %1074, -4
  %1102 = add i64 %1075, 7
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %576, align 8
  %1106 = add i64 %1074, -1700
  %1107 = add i64 %1075, 13
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  store i32 %1079, i32* %1108, align 4
  %1109 = load i32, i32* %R8D.i1821, align 4
  %1110 = zext i32 %1109 to i64
  %1111 = load i64, i64* %3, align 8
  store i64 %1110, i64* %RAX.i2177.pre-phi, align 8
  %1112 = sext i32 %1109 to i64
  %1113 = lshr i64 %1112, 32
  store i64 %1113, i64* %RDX.i2146.pre-phi, align 8
  %1114 = load i32, i32* %ECX.i2172, align 4
  %1115 = add i64 %1111, 6
  store i64 %1115, i64* %3, align 8
  %1116 = sext i32 %1114 to i64
  %1117 = shl nuw i64 %1113, 32
  %1118 = or i64 %1117, %1110
  %1119 = sdiv i64 %1118, %1116
  %1120 = shl i64 %1119, 32
  %1121 = ashr exact i64 %1120, 32
  %1122 = icmp eq i64 %1119, %1121
  br i1 %1122, label %1125, label %1123

; <label>:1123:                                   ; preds = %routine_idivl__ecx.exit1827
  %1124 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1115, %struct.Memory* %1077)
  %.pre204 = load i64, i64* %RDX.i1945, align 8
  %.pre205 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1125:                                   ; preds = %routine_idivl__ecx.exit1827
  %1126 = srem i64 %1118, %1116
  %1127 = and i64 %1119, 4294967295
  store i64 %1127, i64* %RAX.i2177.pre-phi, align 8
  %1128 = and i64 %1126, 4294967295
  store i64 %1128, i64* %RDX.i1945, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1125, %1123
  %1129 = phi i64 [ %.pre205, %1123 ], [ %1115, %1125 ]
  %1130 = phi i64 [ %.pre204, %1123 ], [ %1128, %1125 ]
  %1131 = phi %struct.Memory* [ %1124, %1123 ], [ %1077, %1125 ]
  %1132 = trunc i64 %1130 to i32
  %1133 = add i32 %1132, -1
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RDX.i1945, align 8
  %1135 = icmp eq i32 %1132, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %14, align 1
  %1137 = and i32 %1133, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  %1142 = xor i32 %1133, %1132
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  store i8 %1145, i8* %26, align 1
  %1146 = icmp eq i32 %1133, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %29, align 1
  %1148 = lshr i32 %1133, 31
  %1149 = trunc i32 %1148 to i8
  store i8 %1149, i8* %32, align 1
  %1150 = lshr i32 %1132, 31
  %1151 = xor i32 %1148, %1150
  %1152 = add nuw nsw i32 %1151, %1150
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %38, align 1
  %1155 = load i64, i64* %RBP.i, align 8
  %1156 = add i64 %1155, -1696
  %1157 = add i64 %1129, 10
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i64*
  %1159 = load i64, i64* %1158, align 8
  store i64 %1159, i64* %R9.i1806, align 8
  %1160 = add i64 %1155, -1704
  %1161 = add i64 %1129, 16
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  store i32 %1133, i32* %1162, align 4
  %1163 = load i64, i64* %R9.i1806, align 8
  %1164 = load i64, i64* %3, align 8
  store i64 %1163, i64* %RDX.i1945, align 8
  %1165 = load i64, i64* %RBP.i, align 8
  %1166 = add i64 %1165, -1700
  %1167 = add i64 %1164, 9
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RCX.i2175, align 8
  %1171 = add i64 %1165, -1704
  %1172 = add i64 %1164, 16
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %576, align 8
  %1176 = add i64 %1164, -214075
  %1177 = add i64 %1164, 21
  %1178 = load i64, i64* %6, align 8
  %1179 = add i64 %1178, -8
  %1180 = inttoptr i64 %1179 to i64*
  store i64 %1177, i64* %1180, align 8
  store i64 %1179, i64* %6, align 8
  store i64 %1176, i64* %3, align 8
  %call2_4864db = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1176, %struct.Memory* %1131)
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_4864e0

block_.L_4864e0:                                  ; preds = %routine_idivl__ecx.exit, %block_48646a
  %1181 = phi i64 [ %.pre206, %routine_idivl__ecx.exit ], [ %1031, %block_48646a ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_4864db, %routine_idivl__ecx.exit ], [ %MEMORY.10, %block_48646a ]
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -24
  %1184 = add i64 %1181, 4
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  store i8 0, i8* %14, align 1
  %1187 = and i32 %1186, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1192 = icmp eq i32 %1186, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %29, align 1
  %1194 = lshr i32 %1186, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v324 = select i1 %1192, i64 10, i64 45
  %1196 = add i64 %1181, %.v324
  store i64 %1196, i64* %3, align 8
  br i1 %1192, label %block_4864ea, label %block_.L_48650d

block_4864ea:                                     ; preds = %block_.L_4864e0
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %1197 = add i64 %1182, -36
  %1198 = add i64 %1196, 14
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = mul nsw i64 %1201, 380
  store i64 %1202, i64* %RCX.i2175, align 8
  %1203 = lshr i64 %1202, 63
  %1204 = add i64 %1202, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1204, i64* %RAX.i2177.pre-phi, align 8
  %1205 = icmp ult i64 %1204, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1206 = icmp ult i64 %1204, %1202
  %1207 = or i1 %1205, %1206
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %14, align 1
  %1209 = trunc i64 %1204 to i32
  %1210 = and i32 %1209, 252
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  %1215 = xor i64 %1202, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1216 = xor i64 %1215, %1204
  %1217 = lshr i64 %1216, 4
  %1218 = trunc i64 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %26, align 1
  %1220 = icmp eq i64 %1204, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %29, align 1
  %1222 = lshr i64 %1204, 63
  %1223 = trunc i64 %1222 to i8
  store i8 %1223, i8* %32, align 1
  %1224 = xor i64 %1222, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1225 = xor i64 %1222, %1203
  %1226 = add nuw nsw i64 %1224, %1225
  %1227 = icmp eq i64 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %38, align 1
  %1229 = add i64 %1202, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %1230 = add i64 %1196, 27
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RDX.i1945, align 8
  %1234 = add i64 %1196, 30
  store i64 %1234, i64* %3, align 8
  store i32 %1232, i32* %1185, align 4
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 60
  br label %block_.L_486544

block_.L_48650d:                                  ; preds = %block_.L_4864e0
  %1237 = add i64 %1182, -36
  %1238 = add i64 %1196, 3
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RDI.i2211, align 8
  %1242 = add i64 %1196, 6
  store i64 %1242, i64* %3, align 8
  %1243 = load i32, i32* %1185, align 4
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RSI.i1962, align 8
  %1245 = add i64 %1196, 8451
  %1246 = add i64 %1196, 11
  %1247 = load i64, i64* %6, align 8
  %1248 = add i64 %1247, -8
  %1249 = inttoptr i64 %1248 to i64*
  store i64 %1246, i64* %1249, align 8
  store i64 %1248, i64* %6, align 8
  store i64 %1245, i64* %3, align 8
  %call2_486513 = tail call %struct.Memory* @sub_488610.is_same_worm(%struct.State* nonnull %0, i64 %1245, %struct.Memory* %MEMORY.12)
  %1250 = load i32, i32* %EAX.i2208, align 4
  %1251 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1252 = and i32 %1250, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1257 = icmp eq i32 %1250, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %29, align 1
  %1259 = lshr i32 %1250, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v325 = select i1 %1257, i64 9, i64 39
  %1261 = add i64 %1251, %.v325
  store i64 %1261, i64* %3, align 8
  br i1 %1257, label %block_486521, label %block_.L_48653f

block_486521:                                     ; preds = %block_.L_48650d
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -36
  %1264 = add i64 %1261, 14
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = mul nsw i64 %1267, 380
  store i64 %1268, i64* %RCX.i2175, align 8
  %1269 = lshr i64 %1268, 63
  %1270 = add i64 %1268, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1270, i64* %RAX.i2177.pre-phi, align 8
  %1271 = icmp ult i64 %1270, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1272 = icmp ult i64 %1270, %1268
  %1273 = or i1 %1271, %1272
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %14, align 1
  %1275 = trunc i64 %1270 to i32
  %1276 = and i32 %1275, 252
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %21, align 1
  %1281 = xor i64 %1268, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1282 = xor i64 %1281, %1270
  %1283 = lshr i64 %1282, 4
  %1284 = trunc i64 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %26, align 1
  %1286 = icmp eq i64 %1270, 0
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %29, align 1
  %1288 = lshr i64 %1270, 63
  %1289 = trunc i64 %1288 to i8
  store i8 %1289, i8* %32, align 1
  %1290 = xor i64 %1288, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1291 = xor i64 %1288, %1269
  %1292 = add nuw nsw i64 %1290, %1291
  %1293 = icmp eq i64 %1292, 2
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %38, align 1
  %1295 = add i64 %1268, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %1296 = add i64 %1261, 27
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RDX.i1945, align 8
  %1300 = add i64 %1262, -28
  %1301 = add i64 %1261, 30
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  store i32 %1298, i32* %1302, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_48653f

block_.L_48653f:                                  ; preds = %block_.L_48650d, %block_486521
  %1303 = phi i64 [ %.pre207, %block_486521 ], [ %1261, %block_.L_48650d ]
  %1304 = add i64 %1303, 5
  store i64 %1304, i64* %3, align 8
  br label %block_.L_486544

block_.L_486544:                                  ; preds = %block_.L_48653f, %block_4864ea
  %storemerge112 = phi i64 [ %1236, %block_4864ea ], [ %1304, %block_.L_48653f ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.12, %block_4864ea ], [ %call2_486513, %block_.L_48653f ]
  %1305 = add i64 %storemerge112, 5
  store i64 %1305, i64* %3, align 8
  %.pre208 = load i64, i64* %RBP.i, align 8
  br label %block_.L_486549

block_.L_486549:                                  ; preds = %block_.L_486544, %block_.L_486438
  %1306 = phi i64 [ %951, %block_.L_486438 ], [ %.pre208, %block_.L_486544 ]
  %storemerge111 = phi i64 [ %953, %block_.L_486438 ], [ %1305, %block_.L_486544 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_486438 ], [ %MEMORY.14, %block_.L_486544 ]
  %1307 = add i64 %1306, -32
  %1308 = add i64 %storemerge111, 3
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = add i32 %1310, 1
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i2177.pre-phi, align 8
  %1313 = icmp eq i32 %1310, -1
  %1314 = icmp eq i32 %1311, 0
  %1315 = or i1 %1313, %1314
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %14, align 1
  %1317 = and i32 %1311, 255
  %1318 = tail call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  store i8 %1321, i8* %21, align 1
  %1322 = xor i32 %1311, %1310
  %1323 = lshr i32 %1322, 4
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  store i8 %1325, i8* %26, align 1
  %1326 = zext i1 %1314 to i8
  store i8 %1326, i8* %29, align 1
  %1327 = lshr i32 %1311, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %32, align 1
  %1329 = lshr i32 %1310, 31
  %1330 = xor i32 %1327, %1329
  %1331 = add nuw nsw i32 %1330, %1327
  %1332 = icmp eq i32 %1331, 2
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %38, align 1
  %1334 = add i64 %storemerge111, 9
  store i64 %1334, i64* %3, align 8
  store i32 %1311, i32* %1309, align 4
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, -375
  store i64 %1336, i64* %3, align 8
  br label %block_.L_4863db

block_.L_486557:                                  ; preds = %block_.L_4863db
  %1337 = add i64 %810, 5
  store i64 %1337, i64* %3, align 8
  br label %block_.L_48655c

block_.L_48655c:                                  ; preds = %block_.L_486557, %block_4863cf
  %1338 = phi i64 [ %703, %block_4863cf ], [ %782, %block_.L_486557 ]
  %storemerge110 = phi i64 [ %777, %block_4863cf ], [ %1337, %block_.L_486557 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.9, %block_4863cf ], [ %MEMORY.10, %block_.L_486557 ]
  %1339 = add i64 %1338, -36
  %1340 = add i64 %storemerge110, 3
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = add i32 %1342, 1
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i2177.pre-phi, align 8
  %1345 = icmp eq i32 %1342, -1
  %1346 = icmp eq i32 %1343, 0
  %1347 = or i1 %1345, %1346
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %14, align 1
  %1349 = and i32 %1343, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  %1354 = xor i32 %1343, %1342
  %1355 = lshr i32 %1354, 4
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  store i8 %1357, i8* %26, align 1
  %1358 = zext i1 %1346 to i8
  store i8 %1358, i8* %29, align 1
  %1359 = lshr i32 %1343, 31
  %1360 = trunc i32 %1359 to i8
  store i8 %1360, i8* %32, align 1
  %1361 = lshr i32 %1342, 31
  %1362 = xor i32 %1359, %1361
  %1363 = add nuw nsw i32 %1362, %1359
  %1364 = icmp eq i32 %1363, 2
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %38, align 1
  %1366 = add i64 %storemerge110, 9
  store i64 %1366, i64* %3, align 8
  store i32 %1343, i32* %1341, align 4
  %1367 = load i64, i64* %3, align 8
  %1368 = add i64 %1367, -458
  store i64 %1368, i64* %3, align 8
  br label %block_.L_48639b

block_.L_48656a:                                  ; preds = %block_.L_48639b
  %1369 = add i64 %703, -28
  %1370 = add i64 %732, 4
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  store i8 0, i8* %14, align 1
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1378 = icmp eq i32 %1372, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %29, align 1
  %1380 = lshr i32 %1372, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v316 = select i1 %1378, i64 183, i64 10
  %1382 = add i64 %732, %.v316
  store i64 %1382, i64* %3, align 8
  br i1 %1378, label %block_.L_486621, label %block_486574

block_486574:                                     ; preds = %block_.L_48656a
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %1383 = add i64 %703, -4
  %1384 = add i64 %1382, 14
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = mul nsw i64 %1387, 380
  store i64 %1388, i64* %RCX.i2175, align 8
  %1389 = lshr i64 %1388, 63
  %1390 = add i64 %1388, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1390, i64* %RAX.i2177.pre-phi, align 8
  %1391 = icmp ult i64 %1390, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1392 = icmp ult i64 %1390, %1388
  %1393 = or i1 %1391, %1392
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %14, align 1
  %1395 = trunc i64 %1390 to i32
  %1396 = and i32 %1395, 252
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  %1401 = xor i64 %1388, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1402 = xor i64 %1401, %1390
  %1403 = lshr i64 %1402, 4
  %1404 = trunc i64 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %26, align 1
  %1406 = icmp eq i64 %1390, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i64 %1390, 63
  %1409 = trunc i64 %1408 to i8
  store i8 %1409, i8* %32, align 1
  %1410 = xor i64 %1408, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1411 = xor i64 %1408, %1389
  %1412 = add nuw nsw i64 %1410, %1411
  %1413 = icmp eq i64 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %38, align 1
  %1415 = add i64 %1388, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 36)
  %1416 = add i64 %1382, 31
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  store i32 2, i32* %1417, align 4
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -24
  %1420 = load i64, i64* %3, align 8
  %1421 = add i64 %1420, 3
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RDI.i2211, align 8
  %1425 = add i64 %1418, -28
  %1426 = add i64 %1420, 6
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RSI.i1962, align 8
  %1430 = add i64 %1420, -480963
  %1431 = add i64 %1420, 11
  %1432 = load i64, i64* %6, align 8
  %1433 = add i64 %1432, -8
  %1434 = inttoptr i64 %1433 to i64*
  store i64 %1431, i64* %1434, align 8
  store i64 %1433, i64* %6, align 8
  store i64 %1430, i64* %3, align 8
  %call2_486599 = tail call %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* nonnull %0, i64 %1430, %struct.Memory* %MEMORY.9)
  %1435 = load i32, i32* %EAX.i2208, align 4
  %1436 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1437 = and i32 %1435, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1442 = icmp eq i32 %1435, 0
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %29, align 1
  %1444 = lshr i32 %1435, 31
  %1445 = trunc i32 %1444 to i8
  store i8 %1445, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1446 = icmp ne i8 %1445, 0
  %1447 = or i1 %1442, %1446
  %.v317 = select i1 %1447, i64 40, i64 9
  %1448 = add i64 %1436, %.v317
  store i64 %1448, i64* %3, align 8
  br i1 %1447, label %block_.L_4865c6, label %block_4865a7

block_4865a7:                                     ; preds = %block_486574
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -4
  %1451 = add i64 %1448, 14
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sext i32 %1453 to i64
  %1455 = mul nsw i64 %1454, 380
  store i64 %1455, i64* %RCX.i2175, align 8
  %1456 = lshr i64 %1455, 63
  %1457 = add i64 %1455, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1457, i64* %RAX.i2177.pre-phi, align 8
  %1458 = icmp ult i64 %1457, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1459 = icmp ult i64 %1457, %1455
  %1460 = or i1 %1458, %1459
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %14, align 1
  %1462 = trunc i64 %1457 to i32
  %1463 = and i32 %1462, 252
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %21, align 1
  %1468 = xor i64 %1455, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1469 = xor i64 %1468, %1457
  %1470 = lshr i64 %1469, 4
  %1471 = trunc i64 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %26, align 1
  %1473 = icmp eq i64 %1457, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %29, align 1
  %1475 = lshr i64 %1457, 63
  %1476 = trunc i64 %1475 to i8
  store i8 %1476, i8* %32, align 1
  %1477 = xor i64 %1475, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1478 = xor i64 %1475, %1456
  %1479 = add nuw nsw i64 %1477, %1478
  %1480 = icmp eq i64 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %38, align 1
  %1482 = add i64 %1455, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 36)
  %1483 = add i64 %1448, 31
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  store i32 1, i32* %1484, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_4865c6

block_.L_4865c6:                                  ; preds = %block_4865a7, %block_486574
  %1485 = phi i64 [ %.pre198, %block_4865a7 ], [ %1448, %block_486574 ]
  %1486 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1487 = and i32 %1486, 1024
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit220 = lshr exact i32 %1487, 10
  %1489 = trunc i32 %.lobit220 to i8
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1491 = icmp eq i8 %1490, 0
  %.v318 = select i1 %1491, i64 26, i64 21
  %1492 = add i64 %1485, %.v318
  store i64 %1492, i64* %3, align 8
  br i1 %1491, label %block_.L_4865e0, label %block_4865db

block_4865db:                                     ; preds = %block_.L_4865c6
  %1493 = add i64 %1492, 65
  store i64 %1493, i64* %3, align 8
  br label %block_.L_48661c

block_.L_4865e0:                                  ; preds = %block_.L_4865c6
  store i64 ptrtoint (%G__0x582f2f_type* @G__0x582f2f to i64), i64* %RDI.i2211, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %1494 = load i64, i64* %RBP.i, align 8
  %1495 = add i64 %1494, -4
  %1496 = add i64 %1492, 23
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RSI.i1962, align 8
  %1500 = add i64 %1494, -24
  %1501 = add i64 %1492, 26
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = zext i32 %1503 to i64
  store i64 %1504, i64* %RDX.i2146.pre-phi, align 8
  %1505 = add i64 %1494, -28
  %1506 = add i64 %1492, 29
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RCX.i2175, align 8
  %1510 = add i64 %1492, 33
  store i64 %1510, i64* %3, align 8
  %1511 = load i32, i32* %1497, align 4
  %1512 = sext i32 %1511 to i64
  %1513 = mul nsw i64 %1512, 380
  store i64 %1513, i64* %R8.i2141.pre-phi, align 8
  %1514 = lshr i64 %1513, 63
  %1515 = add i64 %1513, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1515, i64* %RAX.i2177.pre-phi, align 8
  %1516 = icmp ult i64 %1515, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1517 = icmp ult i64 %1515, %1513
  %1518 = or i1 %1516, %1517
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %14, align 1
  %1520 = trunc i64 %1515 to i32
  %1521 = and i32 %1520, 252
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i64 %1513, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1527 = xor i64 %1526, %1515
  %1528 = lshr i64 %1527, 4
  %1529 = trunc i64 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %26, align 1
  %1531 = icmp eq i64 %1515, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %29, align 1
  %1533 = lshr i64 %1515, 63
  %1534 = trunc i64 %1533 to i8
  store i8 %1534, i8* %32, align 1
  %1535 = xor i64 %1533, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1536 = xor i64 %1533, %1514
  %1537 = add nuw nsw i64 %1535, %1536
  %1538 = icmp eq i64 %1537, 2
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %38, align 1
  %1540 = add i64 %1513, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 36)
  %1541 = add i64 %1492, 47
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i32*
  %1543 = load i32, i32* %1542, align 4
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %R8.i2141.pre-phi, align 8
  store i8 0, i8* %AL.i1656, align 1
  %1545 = add i64 %1492, -215088
  %1546 = add i64 %1492, 54
  %1547 = load i64, i64* %6, align 8
  %1548 = add i64 %1547, -8
  %1549 = inttoptr i64 %1548 to i64*
  store i64 %1546, i64* %1549, align 8
  store i64 %1548, i64* %6, align 8
  store i64 %1545, i64* %3, align 8
  %call2_486611 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1545, %struct.Memory* %call2_486599)
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -1708
  %1552 = load i32, i32* %EAX.i2208, align 4
  %1553 = load i64, i64* %3, align 8
  %1554 = add i64 %1553, 6
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1551 to i32*
  store i32 %1552, i32* %1555, align 4
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_48661c

block_.L_48661c:                                  ; preds = %block_.L_4865e0, %block_4865db
  %1556 = phi i64 [ %.pre199, %block_.L_4865e0 ], [ %1493, %block_4865db ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_486611, %block_.L_4865e0 ], [ %call2_486599, %block_4865db ]
  %1557 = add i64 %1556, 5
  store i64 %1557, i64* %3, align 8
  br label %block_.L_486621

block_.L_486621:                                  ; preds = %block_.L_48661c, %block_.L_48656a
  %1558 = phi i64 [ %1382, %block_.L_48656a ], [ %1557, %block_.L_48661c ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.9, %block_.L_48656a ], [ %MEMORY.18, %block_.L_48661c ]
  %1559 = add i64 %1558, 5
  store i64 %1559, i64* %3, align 8
  br label %block_.L_486626

block_.L_486626:                                  ; preds = %block_.L_486621, %block_.L_48638f
  %storemerge = phi i64 [ %697, %block_.L_48638f ], [ %1559, %block_.L_486621 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.6, %block_.L_48638f ], [ %MEMORY.19, %block_.L_486621 ]
  %1560 = load i64, i64* %RBP.i, align 8
  %1561 = add i64 %1560, -4
  %1562 = add i64 %storemerge, 3
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = add i32 %1564, 1
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RAX.i2177.pre-phi, align 8
  %1567 = icmp eq i32 %1564, -1
  %1568 = icmp eq i32 %1565, 0
  %1569 = or i1 %1567, %1568
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = and i32 %1565, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i32 %1565, %1564
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %26, align 1
  %1580 = zext i1 %1568 to i8
  store i8 %1580, i8* %29, align 1
  %1581 = lshr i32 %1565, 31
  %1582 = trunc i32 %1581 to i8
  store i8 %1582, i8* %32, align 1
  %1583 = lshr i32 %1564, 31
  %1584 = xor i32 %1581, %1583
  %1585 = add nuw nsw i32 %1584, %1581
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %38, align 1
  %1588 = add i64 %storemerge, 9
  store i64 %1588, i64* %3, align 8
  store i32 %1565, i32* %1563, align 4
  %1589 = load i64, i64* %3, align 8
  %1590 = add i64 %1589, -761
  store i64 %1590, i64* %3, align 8
  br label %block_.L_486336

block_.L_486634:                                  ; preds = %block_.L_486336
  %1591 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1592 = and i32 %1591, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1597 = icmp eq i32 %1591, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %29, align 1
  %1599 = lshr i32 %1591, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v225 = select i1 %1597, i64 14, i64 19
  %1601 = add i64 %607, %.v225
  store i64 %1601, i64* %3, align 8
  br i1 %1597, label %block_486642, label %block_.L_486647

block_486642:                                     ; preds = %block_.L_486634
  %1602 = add i64 %1601, 45
  store i64 %1602, i64* %3, align 8
  br label %block_.L_48666f

block_.L_486647:                                  ; preds = %block_.L_486634
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 232, i64* %RSI.i2156.pre-phi, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i2146.pre-phi, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  %RCX.i1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i1628, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %1603 = add i64 %1601, -214455
  %1604 = add i64 %1601, 40
  %1605 = load i64, i64* %6, align 8
  %1606 = add i64 %1605, -8
  %1607 = inttoptr i64 %1606 to i64*
  store i64 %1604, i64* %1607, align 8
  store i64 %1606, i64* %6, align 8
  store i64 %1603, i64* %3, align 8
  %call2_48666a = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1603, %struct.Memory* %MEMORY.6)
  %.pre151 = load i64, i64* %RBP.i, align 8
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_48666f

block_.L_48666f:                                  ; preds = %block_.L_486647, %block_486642
  %1608 = phi i64 [ %.pre152, %block_.L_486647 ], [ %1602, %block_486642 ]
  %1609 = phi i64 [ %.pre151, %block_.L_486647 ], [ %578, %block_486642 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_48666a, %block_.L_486647 ], [ %MEMORY.6, %block_486642 ]
  %1610 = add i64 %1609, -4
  %1611 = add i64 %1608, 7
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i32*
  store i32 21, i32* %1612, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_486676

block_.L_486676:                                  ; preds = %block_.L_4866ec, %block_.L_48666f
  %1613 = phi i64 [ %.pre153, %block_.L_48666f ], [ %1812, %block_.L_4866ec ]
  %1614 = load i64, i64* %RBP.i, align 8
  %1615 = add i64 %1614, -4
  %1616 = add i64 %1613, 7
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = add i32 %1618, -400
  %1620 = icmp ult i32 %1618, 400
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %14, align 1
  %1622 = and i32 %1619, 255
  %1623 = tail call i32 @llvm.ctpop.i32(i32 %1622)
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %21, align 1
  %1627 = xor i32 %1618, 16
  %1628 = xor i32 %1627, %1619
  %1629 = lshr i32 %1628, 4
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  store i8 %1631, i8* %26, align 1
  %1632 = icmp eq i32 %1619, 0
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %29, align 1
  %1634 = lshr i32 %1619, 31
  %1635 = trunc i32 %1634 to i8
  store i8 %1635, i8* %32, align 1
  %1636 = lshr i32 %1618, 31
  %1637 = xor i32 %1634, %1636
  %1638 = add nuw nsw i32 %1637, %1636
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %38, align 1
  %1641 = icmp ne i8 %1635, 0
  %1642 = xor i1 %1641, %1639
  %.v226 = select i1 %1642, i64 13, i64 137
  %1643 = add i64 %1613, %.v226
  store i64 %1643, i64* %3, align 8
  br i1 %1642, label %block_486683, label %block_.L_4866ff

block_486683:                                     ; preds = %block_.L_486676
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %3, align 8
  %1645 = load i32, i32* %1617, align 4
  %1646 = sext i32 %1645 to i64
  store i64 %1646, i64* %RAX.i2177.pre-phi, align 8
  %1647 = add nsw i64 %1646, 12099168
  %1648 = add i64 %1643, 12
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i8*
  %1650 = load i8, i8* %1649, align 1
  %1651 = zext i8 %1650 to i64
  store i64 %1651, i64* %RCX.i2175, align 8
  %1652 = zext i8 %1650 to i32
  %1653 = add nsw i32 %1652, -1
  %1654 = icmp eq i8 %1650, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %14, align 1
  %1656 = and i32 %1653, 255
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %21, align 1
  %1661 = xor i32 %1653, %1652
  %1662 = lshr i32 %1661, 4
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %26, align 1
  %1665 = icmp eq i32 %1653, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %29, align 1
  %1667 = lshr i32 %1653, 31
  %1668 = trunc i32 %1667 to i8
  store i8 %1668, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v309 = select i1 %1665, i64 42, i64 21
  %1669 = add i64 %1643, %.v309
  store i64 %1669, i64* %3, align 8
  br i1 %1665, label %block_.L_4866ad, label %block_486698

block_486698:                                     ; preds = %block_486683
  %1670 = add i64 %1669, 4
  store i64 %1670, i64* %3, align 8
  %1671 = load i32, i32* %1617, align 4
  %1672 = sext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i2177.pre-phi, align 8
  %1673 = add nsw i64 %1672, 12099168
  %1674 = add i64 %1669, 12
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i8*
  %1676 = load i8, i8* %1675, align 1
  %1677 = zext i8 %1676 to i64
  store i64 %1677, i64* %RCX.i2175, align 8
  %1678 = zext i8 %1676 to i32
  %1679 = add nsw i32 %1678, -2
  %1680 = icmp ult i8 %1676, 2
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %14, align 1
  %1682 = and i32 %1679, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %21, align 1
  %1687 = xor i32 %1679, %1678
  %1688 = lshr i32 %1687, 4
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  store i8 %1690, i8* %26, align 1
  %1691 = icmp eq i32 %1679, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %29, align 1
  %1693 = lshr i32 %1679, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v310 = select i1 %1691, i64 21, i64 84
  %1695 = add i64 %1669, %.v310
  store i64 %1695, i64* %3, align 8
  br i1 %1691, label %block_.L_4866ad, label %block_.L_4866ec

block_.L_4866ad:                                  ; preds = %block_486698, %block_486683
  %1696 = phi i64 [ %1695, %block_486698 ], [ %1669, %block_486683 ]
  %1697 = add i64 %1696, 3
  store i64 %1697, i64* %3, align 8
  %1698 = load i32, i32* %1617, align 4
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RDI.i2211, align 8
  %1700 = add i64 %1696, 6
  store i64 %1700, i64* %3, align 8
  %1701 = load i32, i32* %1617, align 4
  %1702 = zext i32 %1701 to i64
  store i64 %1702, i64* %RSI.i2156.pre-phi, align 8
  %1703 = add i64 %1696, 6723
  %1704 = add i64 %1696, 11
  %1705 = load i64, i64* %6, align 8
  %1706 = add i64 %1705, -8
  %1707 = inttoptr i64 %1706 to i64*
  store i64 %1704, i64* %1707, align 8
  store i64 %1706, i64* %6, align 8
  store i64 %1703, i64* %3, align 8
  %call2_4866b3 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %1703, %struct.Memory* %MEMORY.21)
  %1708 = load i32, i32* %EAX.i2208, align 4
  %1709 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1710 = and i32 %1708, 255
  %1711 = tail call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1715 = icmp eq i32 %1708, 0
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %29, align 1
  %1717 = lshr i32 %1708, 31
  %1718 = trunc i32 %1717 to i8
  store i8 %1718, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v311 = select i1 %1715, i64 52, i64 9
  %1719 = add i64 %1709, %.v311
  store i64 %1719, i64* %3, align 8
  br i1 %1715, label %block_.L_4866ec, label %block_4866c1

block_4866c1:                                     ; preds = %block_.L_4866ad
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -4
  %1722 = add i64 %1719, 3
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RDI.i2211, align 8
  %1726 = add i64 %1719, 8095
  %1727 = add i64 %1719, 8
  %1728 = load i64, i64* %6, align 8
  %1729 = add i64 %1728, -8
  %1730 = inttoptr i64 %1729 to i64*
  store i64 %1727, i64* %1730, align 8
  store i64 %1729, i64* %6, align 8
  store i64 %1726, i64* %3, align 8
  %call2_4866c4 = tail call %struct.Memory* @sub_488660.genus(%struct.State* nonnull %0, i64 %1726, %struct.Memory* %MEMORY.21)
  %1731 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i2175, align 8
  %1732 = load i64, i64* %RBP.i, align 8
  %1733 = add i64 %1732, -4
  %1734 = add i64 %1731, 14
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  %1736 = load i32, i32* %1735, align 4
  %1737 = sext i32 %1736 to i64
  %1738 = mul nsw i64 %1737, 380
  store i64 %1738, i64* %RDX.i2146.pre-phi, align 8
  %1739 = lshr i64 %1738, 63
  %1740 = add i64 %1738, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1740, i64* %RCX.i2175, align 8
  %1741 = icmp ult i64 %1740, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1742 = icmp ult i64 %1740, %1738
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %14, align 1
  %1745 = trunc i64 %1740 to i32
  %1746 = and i32 %1745, 252
  %1747 = tail call i32 @llvm.ctpop.i32(i32 %1746)
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = xor i8 %1749, 1
  store i8 %1750, i8* %21, align 1
  %1751 = xor i64 %1738, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1752 = xor i64 %1751, %1740
  %1753 = lshr i64 %1752, 4
  %1754 = trunc i64 %1753 to i8
  %1755 = and i8 %1754, 1
  store i8 %1755, i8* %26, align 1
  %1756 = icmp eq i64 %1740, 0
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %29, align 1
  %1758 = lshr i64 %1740, 63
  %1759 = trunc i64 %1758 to i8
  store i8 %1759, i8* %32, align 1
  %1760 = xor i64 %1758, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1761 = xor i64 %1758, %1739
  %1762 = add nuw nsw i64 %1760, %1761
  %1763 = icmp eq i64 %1762, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %38, align 1
  %1765 = add i64 %1738, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 44)
  %1766 = load i32, i32* %EAX.i2208, align 4
  %1767 = add i64 %1731, 27
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1765 to i32*
  store i32 %1766, i32* %1768, align 4
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -4
  %1771 = load i64, i64* %3, align 8
  %1772 = add i64 %1771, 3
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1770 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RDI.i2211, align 8
  %1776 = add i64 %1771, 7580
  %1777 = add i64 %1771, 8
  %1778 = load i64, i64* %6, align 8
  %1779 = add i64 %1778, -8
  %1780 = inttoptr i64 %1779 to i64*
  store i64 %1777, i64* %1780, align 8
  store i64 %1779, i64* %6, align 8
  store i64 %1776, i64* %3, align 8
  %call2_4866e7 = tail call %struct.Memory* @sub_488480.propagate_worm(%struct.State* nonnull %0, i64 %1776, %struct.Memory* %MEMORY.21)
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_4866ec

block_.L_4866ec:                                  ; preds = %block_486698, %block_4866c1, %block_.L_4866ad
  %1781 = phi i64 [ %.pre196, %block_4866c1 ], [ %1719, %block_.L_4866ad ], [ %1695, %block_486698 ]
  %1782 = load i64, i64* %RBP.i, align 8
  %1783 = add i64 %1782, -4
  %1784 = add i64 %1781, 8
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i32*
  %1786 = load i32, i32* %1785, align 4
  %1787 = add i32 %1786, 1
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RAX.i2177.pre-phi, align 8
  %1789 = icmp eq i32 %1786, -1
  %1790 = icmp eq i32 %1787, 0
  %1791 = or i1 %1789, %1790
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %14, align 1
  %1793 = and i32 %1787, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %21, align 1
  %1798 = xor i32 %1787, %1786
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %26, align 1
  %1802 = zext i1 %1790 to i8
  store i8 %1802, i8* %29, align 1
  %1803 = lshr i32 %1787, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %32, align 1
  %1805 = lshr i32 %1786, 31
  %1806 = xor i32 %1803, %1805
  %1807 = add nuw nsw i32 %1806, %1803
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %38, align 1
  %1810 = add i64 %1781, 14
  store i64 %1810, i64* %3, align 8
  store i32 %1787, i32* %1785, align 4
  %1811 = load i64, i64* %3, align 8
  %1812 = add i64 %1811, -132
  store i64 %1812, i64* %3, align 8
  br label %block_.L_486676

block_.L_4866ff:                                  ; preds = %block_.L_486676
  %1813 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1814 = and i32 %1813, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1819 = icmp eq i32 %1813, 0
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %29, align 1
  %1821 = lshr i32 %1813, 31
  %1822 = trunc i32 %1821 to i8
  store i8 %1822, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v227 = select i1 %1819, i64 14, i64 19
  %1823 = add i64 %1643, %.v227
  store i64 %1823, i64* %3, align 8
  br i1 %1819, label %block_48670d, label %block_.L_486712

block_48670d:                                     ; preds = %block_.L_4866ff
  %1824 = add i64 %1823, 45
  store i64 %1824, i64* %3, align 8
  br label %block_.L_48673a

block_.L_486712:                                  ; preds = %block_.L_4866ff
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 241, i64* %RSI.i2156.pre-phi, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i2146.pre-phi, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  %RCX.i1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i1546, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %1825 = add i64 %1823, -214658
  %1826 = add i64 %1823, 40
  %1827 = load i64, i64* %6, align 8
  %1828 = add i64 %1827, -8
  %1829 = inttoptr i64 %1828 to i64*
  store i64 %1826, i64* %1829, align 8
  store i64 %1828, i64* %6, align 8
  store i64 %1825, i64* %3, align 8
  %call2_486735 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1825, %struct.Memory* %MEMORY.21)
  %.pre154 = load i64, i64* %3, align 8
  %.pre155 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_48673a

block_.L_48673a:                                  ; preds = %block_.L_486712, %block_48670d
  %1830 = phi i32 [ %.pre155, %block_.L_486712 ], [ 0, %block_48670d ]
  %1831 = phi i64 [ %.pre154, %block_.L_486712 ], [ %1824, %block_48670d ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_486735, %block_.L_486712 ], [ %MEMORY.21, %block_48670d ]
  store i8 0, i8* %14, align 1
  %1832 = and i32 %1830, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1837 = icmp eq i32 %1830, 0
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %29, align 1
  %1839 = lshr i32 %1830, 31
  %1840 = trunc i32 %1839 to i8
  store i8 %1840, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v228 = select i1 %1837, i64 14, i64 19
  %1841 = add i64 %1831, %.v228
  store i64 %1841, i64* %3, align 8
  br i1 %1837, label %block_486748, label %block_.L_48674d

block_486748:                                     ; preds = %block_.L_48673a
  %1842 = add i64 %1841, 45
  store i64 %1842, i64* %3, align 8
  br label %block_.L_486775

block_.L_48674d:                                  ; preds = %block_.L_48673a
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 244, i64* %RSI.i2156.pre-phi, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i2146.pre-phi, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  %RCX.i1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i1528, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %1843 = add i64 %1841, -214717
  %1844 = add i64 %1841, 40
  %1845 = load i64, i64* %6, align 8
  %1846 = add i64 %1845, -8
  %1847 = inttoptr i64 %1846 to i64*
  store i64 %1844, i64* %1847, align 8
  store i64 %1846, i64* %6, align 8
  store i64 %1843, i64* %3, align 8
  %call2_486770 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1843, %struct.Memory* %MEMORY.25)
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_486775

block_.L_486775:                                  ; preds = %block_.L_48674d, %block_486748
  %1848 = phi i64 [ %.pre156, %block_.L_48674d ], [ %1842, %block_486748 ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_486770, %block_.L_48674d ], [ %MEMORY.25, %block_486748 ]
  store i64 0, i64* %RSI.i1962, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1600, i64* %RAX.i2177.pre-phi, align 8
  store i64 1600, i64* %RDX.i1945, align 8
  %1849 = load i64, i64* %RBP.i, align 8
  %1850 = add i64 %1849, -1648
  store i64 %1850, i64* %RCX.i2175, align 8
  store i64 %1850, i64* %RDI.i2211, align 8
  %1851 = add i64 %1848, -546565
  %1852 = add i64 %1848, 24
  %1853 = load i64, i64* %6, align 8
  %1854 = add i64 %1853, -8
  %1855 = inttoptr i64 %1854 to i64*
  store i64 %1852, i64* %1855, align 8
  store i64 %1854, i64* %6, align 8
  store i64 %1851, i64* %3, align 8
  %1856 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %MEMORY.26)
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -44
  %1859 = load i64, i64* %3, align 8
  %1860 = add i64 %1859, 7
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1858 to i32*
  store i32 21, i32* %1861, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_486794

block_.L_486794:                                  ; preds = %block_.L_486849, %block_.L_486775
  %1862 = phi i64 [ %.pre157, %block_.L_486775 ], [ %2179, %block_.L_486849 ]
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -44
  %1865 = add i64 %1862, 7
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = add i32 %1867, -400
  %1869 = icmp ult i32 %1867, 400
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %14, align 1
  %1871 = and i32 %1868, 255
  %1872 = tail call i32 @llvm.ctpop.i32(i32 %1871)
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  store i8 %1875, i8* %21, align 1
  %1876 = xor i32 %1867, 16
  %1877 = xor i32 %1876, %1868
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  store i8 %1880, i8* %26, align 1
  %1881 = icmp eq i32 %1868, 0
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %29, align 1
  %1883 = lshr i32 %1868, 31
  %1884 = trunc i32 %1883 to i8
  store i8 %1884, i8* %32, align 1
  %1885 = lshr i32 %1867, 31
  %1886 = xor i32 %1883, %1885
  %1887 = add nuw nsw i32 %1886, %1885
  %1888 = icmp eq i32 %1887, 2
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %38, align 1
  %1890 = icmp ne i8 %1884, 0
  %1891 = xor i1 %1890, %1888
  %.v229 = select i1 %1891, i64 13, i64 200
  %1892 = add i64 %1862, %.v229
  store i64 %1892, i64* %3, align 8
  br i1 %1891, label %block_4867a1, label %block_.L_48685c

block_4867a1:                                     ; preds = %block_.L_486794
  %1893 = add i64 %1892, 4
  store i64 %1893, i64* %3, align 8
  %1894 = load i32, i32* %1866, align 4
  %1895 = sext i32 %1894 to i64
  store i64 %1895, i64* %RAX.i2177.pre-phi, align 8
  %1896 = add nsw i64 %1895, 12099168
  %1897 = add i64 %1892, 12
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1896 to i8*
  %1899 = load i8, i8* %1898, align 1
  %1900 = zext i8 %1899 to i64
  store i64 %1900, i64* %RCX.i2175, align 8
  %1901 = zext i8 %1899 to i32
  %1902 = add nsw i32 %1901, -1
  %1903 = icmp eq i8 %1899, 0
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %14, align 1
  %1905 = and i32 %1902, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %21, align 1
  %1910 = xor i32 %1902, %1901
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  store i8 %1913, i8* %26, align 1
  %1914 = icmp eq i32 %1902, 0
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %29, align 1
  %1916 = lshr i32 %1902, 31
  %1917 = trunc i32 %1916 to i8
  store i8 %1917, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v306 = select i1 %1914, i64 42, i64 21
  %1918 = add i64 %1892, %.v306
  store i64 %1918, i64* %3, align 8
  br i1 %1914, label %block_.L_4867cb, label %block_4867b6

block_4867b6:                                     ; preds = %block_4867a1
  %1919 = add i64 %1918, 4
  store i64 %1919, i64* %3, align 8
  %1920 = load i32, i32* %1866, align 4
  %1921 = sext i32 %1920 to i64
  store i64 %1921, i64* %RAX.i2177.pre-phi, align 8
  %1922 = add nsw i64 %1921, 12099168
  %1923 = add i64 %1918, 12
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i8*
  %1925 = load i8, i8* %1924, align 1
  %1926 = zext i8 %1925 to i64
  store i64 %1926, i64* %RCX.i2175, align 8
  %1927 = zext i8 %1925 to i32
  %1928 = add nsw i32 %1927, -2
  %1929 = icmp ult i8 %1925, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %14, align 1
  %1931 = and i32 %1928, 255
  %1932 = tail call i32 @llvm.ctpop.i32(i32 %1931)
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  store i8 %1935, i8* %21, align 1
  %1936 = xor i32 %1928, %1927
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %26, align 1
  %1940 = icmp eq i32 %1928, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %29, align 1
  %1942 = lshr i32 %1928, 31
  %1943 = trunc i32 %1942 to i8
  store i8 %1943, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v307 = select i1 %1940, i64 21, i64 147
  %1944 = add i64 %1918, %.v307
  store i64 %1944, i64* %3, align 8
  br i1 %1940, label %block_.L_4867cb, label %block_.L_486849

block_.L_4867cb:                                  ; preds = %block_4867b6, %block_4867a1
  %1945 = phi i64 [ %1944, %block_4867b6 ], [ %1918, %block_4867a1 ]
  %1946 = add i64 %1945, 3
  store i64 %1946, i64* %3, align 8
  %1947 = load i32, i32* %1866, align 4
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RDI.i2211, align 8
  %1949 = add i64 %1945, 6
  store i64 %1949, i64* %3, align 8
  %1950 = load i32, i32* %1866, align 4
  %1951 = zext i32 %1950 to i64
  store i64 %1951, i64* %RSI.i1962, align 8
  %1952 = add i64 %1945, 6437
  %1953 = add i64 %1945, 11
  %1954 = load i64, i64* %6, align 8
  %1955 = add i64 %1954, -8
  %1956 = inttoptr i64 %1955 to i64*
  store i64 %1953, i64* %1956, align 8
  store i64 %1955, i64* %6, align 8
  store i64 %1952, i64* %3, align 8
  %call2_4867d1 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %1952, %struct.Memory* %1856)
  %1957 = load i32, i32* %EAX.i2208, align 4
  %1958 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1959 = and i32 %1957, 255
  %1960 = tail call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  store i8 %1963, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1964 = icmp eq i32 %1957, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %29, align 1
  %1966 = lshr i32 %1957, 31
  %1967 = trunc i32 %1966 to i8
  store i8 %1967, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v308 = select i1 %1964, i64 115, i64 9
  %1968 = add i64 %1958, %.v308
  store i64 %1968, i64* %3, align 8
  br i1 %1964, label %block_.L_486849, label %block_4867df

block_4867df:                                     ; preds = %block_.L_4867cb
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  store i64 3, i64* %RCX.i2175, align 8
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -44
  %1971 = add i64 %1968, 19
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = sext i32 %1973 to i64
  store i64 %1974, i64* %RDX.i1945, align 8
  %1975 = add nsw i64 %1974, 12099168
  %1976 = add i64 %1968, 27
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i8*
  %1978 = load i8, i8* %1977, align 1
  %1979 = zext i8 %1978 to i64
  store i64 %1979, i64* %RSI.i1962, align 8
  %1980 = add i64 %1969, -40
  %1981 = zext i8 %1978 to i32
  %1982 = add i64 %1968, 30
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1980 to i32*
  store i32 %1981, i32* %1983, align 4
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -40
  %1986 = load i64, i64* %3, align 8
  %1987 = add i64 %1986, 3
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1985 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RSI.i1962, align 8
  %1991 = add i64 %1984, -44
  %1992 = add i64 %1986, 7
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = sext i32 %1994 to i64
  %1996 = mul nsw i64 %1995, 380
  store i64 %1996, i64* %RDX.i1945, align 8
  %1997 = lshr i64 %1996, 63
  %1998 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %1999 = add i64 %1996, %1998
  store i64 %1999, i64* %RDI.i2211, align 8
  %2000 = icmp ult i64 %1999, %1998
  %2001 = icmp ult i64 %1999, %1996
  %2002 = or i1 %2000, %2001
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %14, align 1
  %2004 = trunc i64 %1999 to i32
  %2005 = and i32 %2004, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005)
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %21, align 1
  %2010 = xor i64 %1996, %1998
  %2011 = xor i64 %2010, %1999
  %2012 = lshr i64 %2011, 4
  %2013 = trunc i64 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %26, align 1
  %2015 = icmp eq i64 %1999, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %29, align 1
  %2017 = lshr i64 %1999, 63
  %2018 = trunc i64 %2017 to i8
  store i8 %2018, i8* %32, align 1
  %2019 = lshr i64 %1998, 63
  %2020 = xor i64 %2017, %2019
  %2021 = xor i64 %2017, %1997
  %2022 = add nuw nsw i64 %2020, %2021
  %2023 = icmp eq i64 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %38, align 1
  %2025 = add i64 %1999, 140
  %2026 = add i64 %1986, 27
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = sext i32 %2028 to i64
  store i64 %2029, i64* %RDX.i1945, align 8
  %2030 = shl nsw i64 %2029, 2
  %2031 = add nsw i64 %2030, -1648
  %2032 = add i64 %2031, %1984
  %2033 = add i64 %1986, 34
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2032 to i32*
  %2035 = load i32, i32* %2034, align 4
  %2036 = or i32 %2035, %1989
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RSI.i1962, align 8
  store i8 0, i8* %14, align 1
  %2038 = and i32 %2036, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %21, align 1
  %2043 = icmp eq i32 %2036, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %29, align 1
  %2045 = lshr i32 %2036, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -1648
  %2049 = add i64 %2048, %2030
  %2050 = add i64 %1986, 41
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  store i32 %2036, i32* %2051, align 4
  %2052 = load i64, i64* %RCX.i2175, align 8
  %2053 = load i64, i64* %RBP.i, align 8
  %2054 = add i64 %2053, -40
  %2055 = load i64, i64* %3, align 8
  %2056 = add i64 %2055, 3
  store i64 %2056, i64* %3, align 8
  %2057 = trunc i64 %2052 to i32
  %2058 = inttoptr i64 %2054 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = sub i32 %2057, %2059
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i2175, align 8
  %2062 = icmp ult i32 %2057, %2059
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %14, align 1
  %2064 = and i32 %2060, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  %2069 = xor i32 %2059, %2057
  %2070 = xor i32 %2069, %2060
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  store i8 %2073, i8* %26, align 1
  %2074 = icmp eq i32 %2060, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %29, align 1
  %2076 = lshr i32 %2060, 31
  %2077 = trunc i32 %2076 to i8
  store i8 %2077, i8* %32, align 1
  %2078 = lshr i32 %2057, 31
  %2079 = lshr i32 %2059, 31
  %2080 = xor i32 %2079, %2078
  %2081 = xor i32 %2076, %2078
  %2082 = add nuw nsw i32 %2081, %2080
  %2083 = icmp eq i32 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = add i64 %2053, -44
  %2086 = add i64 %2055, 7
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = sext i32 %2088 to i64
  %2090 = mul nsw i64 %2089, 380
  store i64 %2090, i64* %RDX.i1945, align 8
  %2091 = lshr i64 %2090, 63
  %2092 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %2093 = add i64 %2090, %2092
  store i64 %2093, i64* %RAX.i2177.pre-phi, align 8
  %2094 = icmp ult i64 %2093, %2092
  %2095 = icmp ult i64 %2093, %2090
  %2096 = or i1 %2094, %2095
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %14, align 1
  %2098 = trunc i64 %2093 to i32
  %2099 = and i32 %2098, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %21, align 1
  %2104 = xor i64 %2090, %2092
  %2105 = xor i64 %2104, %2093
  %2106 = lshr i64 %2105, 4
  %2107 = trunc i64 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %26, align 1
  %2109 = icmp eq i64 %2093, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %29, align 1
  %2111 = lshr i64 %2093, 63
  %2112 = trunc i64 %2111 to i8
  store i8 %2112, i8* %32, align 1
  %2113 = lshr i64 %2092, 63
  %2114 = xor i64 %2111, %2113
  %2115 = xor i64 %2111, %2091
  %2116 = add nuw nsw i64 %2114, %2115
  %2117 = icmp eq i64 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %38, align 1
  %2119 = add i64 %2093, 60
  %2120 = add i64 %2055, 21
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = sext i32 %2122 to i64
  store i64 %2123, i64* %RAX.i2177.pre-phi, align 8
  %2124 = load i64, i64* %RCX.i2175, align 8
  %2125 = load i64, i64* %RBP.i, align 8
  %2126 = shl nsw i64 %2123, 2
  %2127 = add nsw i64 %2126, -1648
  %2128 = add i64 %2127, %2125
  %2129 = add i64 %2055, 28
  store i64 %2129, i64* %3, align 8
  %2130 = trunc i64 %2124 to i32
  %2131 = inttoptr i64 %2128 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = or i32 %2132, %2130
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RCX.i2175, align 8
  store i8 0, i8* %14, align 1
  %2135 = and i32 %2133, 255
  %2136 = tail call i32 @llvm.ctpop.i32(i32 %2135)
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  %2139 = xor i8 %2138, 1
  store i8 %2139, i8* %21, align 1
  %2140 = icmp eq i32 %2133, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %29, align 1
  %2142 = lshr i32 %2133, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2144 = add i64 %2125, -1648
  %2145 = add i64 %2144, %2126
  %2146 = add i64 %2055, 35
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  store i32 %2133, i32* %2147, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_486849

block_.L_486849:                                  ; preds = %block_4867b6, %block_4867df, %block_.L_4867cb
  %2148 = phi i64 [ %.pre195, %block_4867df ], [ %1968, %block_.L_4867cb ], [ %1944, %block_4867b6 ]
  %2149 = load i64, i64* %RBP.i, align 8
  %2150 = add i64 %2149, -44
  %2151 = add i64 %2148, 8
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = add i32 %2153, 1
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RAX.i2177.pre-phi, align 8
  %2156 = icmp eq i32 %2153, -1
  %2157 = icmp eq i32 %2154, 0
  %2158 = or i1 %2156, %2157
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %14, align 1
  %2160 = and i32 %2154, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %21, align 1
  %2165 = xor i32 %2154, %2153
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  store i8 %2168, i8* %26, align 1
  %2169 = zext i1 %2157 to i8
  store i8 %2169, i8* %29, align 1
  %2170 = lshr i32 %2154, 31
  %2171 = trunc i32 %2170 to i8
  store i8 %2171, i8* %32, align 1
  %2172 = lshr i32 %2153, 31
  %2173 = xor i32 %2170, %2172
  %2174 = add nuw nsw i32 %2173, %2170
  %2175 = icmp eq i32 %2174, 2
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %38, align 1
  %2177 = add i64 %2148, 14
  store i64 %2177, i64* %3, align 8
  store i32 %2154, i32* %2152, align 4
  %2178 = load i64, i64* %3, align 8
  %2179 = add i64 %2178, -195
  store i64 %2179, i64* %3, align 8
  br label %block_.L_486794

block_.L_48685c:                                  ; preds = %block_.L_486794
  %2180 = add i64 %1863, -4
  %2181 = add i64 %1892, 7
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  store i32 21, i32* %2182, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_486863

block_.L_486863:                                  ; preds = %block_.L_486db1, %block_.L_48685c
  %2183 = phi i64 [ %.pre158, %block_.L_48685c ], [ %3902, %block_.L_486db1 ]
  %MEMORY.30 = phi %struct.Memory* [ %1856, %block_.L_48685c ], [ %MEMORY.54, %block_.L_486db1 ]
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -4
  %2186 = add i64 %2183, 7
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i32*
  %2188 = load i32, i32* %2187, align 4
  %2189 = add i32 %2188, -400
  %2190 = icmp ult i32 %2188, 400
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %14, align 1
  %2192 = and i32 %2189, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %21, align 1
  %2197 = xor i32 %2188, 16
  %2198 = xor i32 %2197, %2189
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  store i8 %2201, i8* %26, align 1
  %2202 = icmp eq i32 %2189, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %29, align 1
  %2204 = lshr i32 %2189, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %32, align 1
  %2206 = lshr i32 %2188, 31
  %2207 = xor i32 %2204, %2206
  %2208 = add nuw nsw i32 %2207, %2206
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %38, align 1
  %2211 = icmp ne i8 %2205, 0
  %2212 = xor i1 %2211, %2209
  %.v230 = select i1 %2212, i64 13, i64 1372
  %2213 = add i64 %2183, %.v230
  store i64 %2213, i64* %3, align 8
  br i1 %2212, label %block_486870, label %block_.L_486dbf

block_486870:                                     ; preds = %block_.L_486863
  %2214 = add i64 %2213, 4
  store i64 %2214, i64* %3, align 8
  %2215 = load i32, i32* %2187, align 4
  %2216 = sext i32 %2215 to i64
  store i64 %2216, i64* %RAX.i2177.pre-phi, align 8
  %2217 = add nsw i64 %2216, 12099168
  %2218 = add i64 %2213, 12
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i8*
  %2220 = load i8, i8* %2219, align 1
  %2221 = zext i8 %2220 to i64
  store i64 %2221, i64* %RCX.i2175, align 8
  %2222 = zext i8 %2220 to i32
  %2223 = add nsw i32 %2222, -3
  %2224 = icmp ult i8 %2220, 3
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %14, align 1
  %2226 = and i32 %2223, 255
  %2227 = tail call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  store i8 %2230, i8* %21, align 1
  %2231 = xor i32 %2223, %2222
  %2232 = lshr i32 %2231, 4
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %26, align 1
  %2235 = icmp eq i32 %2223, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %29, align 1
  %2237 = lshr i32 %2223, 31
  %2238 = trunc i32 %2237 to i8
  store i8 %2238, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v277 = select i1 %2235, i64 21, i64 26
  %2239 = add i64 %2213, %.v277
  store i64 %2239, i64* %3, align 8
  br i1 %2235, label %block_486885, label %block_.L_48688a

block_486885:                                     ; preds = %block_486870
  %2240 = add i64 %2239, 1324
  br label %block_.L_486db1

block_.L_48688a:                                  ; preds = %block_486870
  %2241 = add i64 %2184, -40
  %2242 = add i64 %2239, 7
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  store i32 1, i32* %2243, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_486891

block_.L_486891:                                  ; preds = %block_.L_486d9e, %block_.L_48688a
  %2244 = phi i64 [ %.pre179, %block_.L_48688a ], [ %3870, %block_.L_486d9e ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.30, %block_.L_48688a ], [ %MEMORY.53, %block_.L_486d9e ]
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -40
  %2247 = add i64 %2244, 4
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = add i32 %2249, -2
  %2251 = icmp ult i32 %2249, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %14, align 1
  %2253 = and i32 %2250, 255
  %2254 = tail call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  store i8 %2257, i8* %21, align 1
  %2258 = xor i32 %2250, %2249
  %2259 = lshr i32 %2258, 4
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  store i8 %2261, i8* %26, align 1
  %2262 = icmp eq i32 %2250, 0
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %29, align 1
  %2264 = lshr i32 %2250, 31
  %2265 = trunc i32 %2264 to i8
  store i8 %2265, i8* %32, align 1
  %2266 = lshr i32 %2249, 31
  %2267 = xor i32 %2264, %2266
  %2268 = add nuw nsw i32 %2267, %2266
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %38, align 1
  %2271 = icmp ne i8 %2265, 0
  %2272 = xor i1 %2271, %2269
  %.demorgan = or i1 %2262, %2272
  %.v278 = select i1 %.demorgan, i64 10, i64 1307
  %2273 = add i64 %2244, %.v278
  store i64 %2273, i64* %3, align 8
  br i1 %.demorgan, label %block_48689b, label %block_.L_486dac

block_48689b:                                     ; preds = %block_.L_486891
  %2274 = add i64 %2245, -4
  %2275 = add i64 %2273, 4
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = sext i32 %2277 to i64
  store i64 %2278, i64* %RAX.i2177.pre-phi, align 8
  %2279 = shl nsw i64 %2278, 2
  %2280 = add i64 %2245, -1648
  %2281 = add i64 %2280, %2279
  %2282 = add i64 %2273, 11
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = zext i32 %2284 to i64
  store i64 %2285, i64* %RCX.i2175, align 8
  %2286 = add i64 %2273, 14
  store i64 %2286, i64* %3, align 8
  %2287 = load i32, i32* %2248, align 4
  %2288 = and i32 %2287, %2284
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RCX.i2175, align 8
  %2290 = and i32 %2288, 255
  %2291 = tail call i32 @llvm.ctpop.i32(i32 %2290)
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  %2294 = xor i8 %2293, 1
  %2295 = icmp eq i32 %2288, 0
  %2296 = zext i1 %2295 to i8
  %2297 = lshr i32 %2288, 31
  %2298 = trunc i32 %2297 to i8
  store i8 0, i8* %14, align 1
  store i8 %2294, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2296, i8* %29, align 1
  store i8 %2298, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v279 = select i1 %2295, i64 23, i64 28
  %2299 = add i64 %2273, %.v279
  store i64 %2299, i64* %3, align 8
  br i1 %2295, label %block_4868b2, label %block_.L_4868b7

block_4868b2:                                     ; preds = %block_48689b
  %2300 = add i64 %2299, 1260
  store i64 %2300, i64* %3, align 8
  br label %block_.L_486d9e

block_.L_4868b7:                                  ; preds = %block_48689b
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i1945, align 8
  %2301 = zext i32 %2277 to i64
  %2302 = xor i64 %2301, %2278
  %2303 = trunc i64 %2302 to i32
  %2304 = and i64 %2302, 4294967295
  store i64 %2304, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  %2305 = and i32 %2303, 255
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %21, align 1
  %2310 = icmp eq i32 %2303, 0
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %29, align 1
  %2312 = lshr i32 %2303, 31
  %2313 = trunc i32 %2312 to i8
  store i8 %2313, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2314 = add i64 %2299, 15
  store i64 %2314, i64* %3, align 8
  %2315 = load i32, i32* %2276, align 4
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RDI.i2211, align 8
  %2317 = add i64 %2299, 18
  store i64 %2317, i64* %3, align 8
  %2318 = load i32, i32* %2248, align 4
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RSI.i1962, align 8
  %2320 = and i64 %2302, 4294967295
  store i64 %2320, i64* %RCX.i2175, align 8
  store i64 %2320, i64* %R8.i2141.pre-phi, align 8
  store i64 %2320, i64* %R9.i1806, align 8
  %2321 = add i64 %2299, -514695
  %2322 = add i64 %2299, 31
  %2323 = load i64, i64* %6, align 8
  %2324 = add i64 %2323, -8
  %2325 = inttoptr i64 %2324 to i64*
  store i64 %2322, i64* %2325, align 8
  store i64 %2324, i64* %6, align 8
  store i64 %2321, i64* %3, align 8
  %call2_4868d1 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %2321, %struct.Memory* %MEMORY.31)
  %2326 = load i32, i32* %EAX.i2208, align 4
  %2327 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2328 = and i32 %2326, 255
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2333 = icmp eq i32 %2326, 0
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %29, align 1
  %2335 = lshr i32 %2326, 31
  %2336 = trunc i32 %2335 to i8
  store i8 %2336, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v280 = select i1 %2333, i64 9, i64 14
  %2337 = add i64 %2327, %.v280
  store i64 %2337, i64* %3, align 8
  br i1 %2333, label %block_4868df, label %block_.L_4868e4

block_4868df:                                     ; preds = %block_.L_4868b7
  %2338 = add i64 %2337, 1215
  store i64 %2338, i64* %3, align 8
  br label %block_.L_486d9e

block_.L_4868e4:                                  ; preds = %block_.L_4868b7
  %2339 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2340 = and i32 %2339, 1024
  %2341 = zext i32 %2340 to i64
  store i64 %2341, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit217 = lshr exact i32 %2340, 10
  %2342 = trunc i32 %.lobit217 to i8
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2344 = icmp eq i8 %2343, 0
  %.v281 = select i1 %2344, i64 26, i64 21
  %2345 = add i64 %2337, %.v281
  store i64 %2345, i64* %3, align 8
  br i1 %2344, label %block_.L_4868fe, label %block_4868f9

block_4868f9:                                     ; preds = %block_.L_4868e4
  %2346 = add i64 %2345, 31
  store i64 %2346, i64* %3, align 8
  br label %block_.L_486918

block_.L_4868fe:                                  ; preds = %block_.L_4868e4
  store i64 ptrtoint (%G__0x582f6a_type* @G__0x582f6a to i64), i64* %RDI.i2211, align 8
  %2347 = load i64, i64* %RBP.i, align 8
  %2348 = add i64 %2347, -4
  %2349 = add i64 %2345, 13
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RSI.i1962, align 8
  store i8 0, i8* %AL.i1656, align 1
  %2353 = add i64 %2345, -215886
  %2354 = add i64 %2345, 20
  %2355 = load i64, i64* %6, align 8
  %2356 = add i64 %2355, -8
  %2357 = inttoptr i64 %2356 to i64*
  store i64 %2354, i64* %2357, align 8
  store i64 %2356, i64* %6, align 8
  store i64 %2353, i64* %3, align 8
  %call2_48690d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2353, %struct.Memory* %MEMORY.31)
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -1712
  %2360 = load i32, i32* %EAX.i2208, align 4
  %2361 = load i64, i64* %3, align 8
  %2362 = add i64 %2361, 6
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2359 to i32*
  store i32 %2360, i32* %2363, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_486918

block_.L_486918:                                  ; preds = %block_.L_4868fe, %block_4868f9
  %2364 = phi i64 [ %.pre180, %block_.L_4868fe ], [ %2346, %block_4868f9 ]
  %2365 = add i64 %2364, -62568
  %2366 = add i64 %2364, 5
  %2367 = load i64, i64* %6, align 8
  %2368 = add i64 %2367, -8
  %2369 = inttoptr i64 %2368 to i64*
  store i64 %2366, i64* %2369, align 8
  store i64 %2368, i64* %6, align 8
  store i64 %2365, i64* %3, align 8
  %call2_486918 = tail call %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* nonnull %0, i64 %2365, %struct.Memory* %MEMORY.31)
  %2370 = load i64, i64* %RBP.i, align 8
  %2371 = add i64 %2370, -44
  %2372 = load i64, i64* %3, align 8
  %2373 = add i64 %2372, 7
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2371 to i32*
  store i32 21, i32* %2374, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_486924

block_.L_486924:                                  ; preds = %block_.L_486d86, %block_.L_486918
  %2375 = phi i64 [ %.pre181, %block_.L_486918 ], [ %3827, %block_.L_486d86 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_486918, %block_.L_486918 ], [ %MEMORY.52, %block_.L_486d86 ]
  %2376 = load i64, i64* %RBP.i, align 8
  %2377 = add i64 %2376, -44
  %2378 = add i64 %2375, 7
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = add i32 %2380, -400
  %2382 = icmp ult i32 %2380, 400
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %14, align 1
  %2384 = and i32 %2381, 255
  %2385 = tail call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %21, align 1
  %2389 = xor i32 %2380, 16
  %2390 = xor i32 %2389, %2381
  %2391 = lshr i32 %2390, 4
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  store i8 %2393, i8* %26, align 1
  %2394 = icmp eq i32 %2381, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %29, align 1
  %2396 = lshr i32 %2381, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %32, align 1
  %2398 = lshr i32 %2380, 31
  %2399 = xor i32 %2396, %2398
  %2400 = add nuw nsw i32 %2399, %2398
  %2401 = icmp eq i32 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %38, align 1
  %2403 = icmp ne i8 %2397, 0
  %2404 = xor i1 %2403, %2401
  %.v282 = select i1 %2404, i64 13, i64 1136
  %2405 = add i64 %2375, %.v282
  store i64 %2405, i64* %3, align 8
  br i1 %2404, label %block_486931, label %block_.L_486d94

block_486931:                                     ; preds = %block_.L_486924
  %2406 = add i64 %2405, 4
  store i64 %2406, i64* %3, align 8
  %2407 = load i32, i32* %2379, align 4
  %2408 = sext i32 %2407 to i64
  store i64 %2408, i64* %RAX.i2177.pre-phi, align 8
  %2409 = add nsw i64 %2408, 12099168
  %2410 = add i64 %2405, 12
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i8*
  %2412 = load i8, i8* %2411, align 1
  %2413 = zext i8 %2412 to i64
  store i64 %2413, i64* %RCX.i2175, align 8
  %2414 = zext i8 %2412 to i32
  %2415 = add nsw i32 %2414, -1
  %2416 = icmp eq i8 %2412, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %14, align 1
  %2418 = and i32 %2415, 255
  %2419 = tail call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  store i8 %2422, i8* %21, align 1
  %2423 = xor i32 %2415, %2414
  %2424 = lshr i32 %2423, 4
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  store i8 %2426, i8* %26, align 1
  %2427 = icmp eq i32 %2415, 0
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %29, align 1
  %2429 = lshr i32 %2415, 31
  %2430 = trunc i32 %2429 to i8
  store i8 %2430, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v283 = select i1 %2427, i64 42, i64 21
  %2431 = add i64 %2405, %.v283
  store i64 %2431, i64* %3, align 8
  br i1 %2427, label %block_.L_48695b, label %block_486946

block_486946:                                     ; preds = %block_486931
  %2432 = add i64 %2431, 4
  store i64 %2432, i64* %3, align 8
  %2433 = load i32, i32* %2379, align 4
  %2434 = sext i32 %2433 to i64
  store i64 %2434, i64* %RAX.i2177.pre-phi, align 8
  %2435 = add nsw i64 %2434, 12099168
  %2436 = add i64 %2431, 12
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i8*
  %2438 = load i8, i8* %2437, align 1
  %2439 = zext i8 %2438 to i64
  store i64 %2439, i64* %RCX.i2175, align 8
  %2440 = zext i8 %2438 to i32
  %2441 = add nsw i32 %2440, -2
  %2442 = icmp ult i8 %2438, 2
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %14, align 1
  %2444 = and i32 %2441, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %21, align 1
  %2449 = xor i32 %2441, %2440
  %2450 = lshr i32 %2449, 4
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  store i8 %2452, i8* %26, align 1
  %2453 = icmp eq i32 %2441, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %29, align 1
  %2455 = lshr i32 %2441, 31
  %2456 = trunc i32 %2455 to i8
  store i8 %2456, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v284 = select i1 %2453, i64 21, i64 41
  %2457 = add i64 %2431, %.v284
  store i64 %2457, i64* %3, align 8
  br i1 %2453, label %block_.L_48695b, label %block_.L_48696f

block_.L_48695b:                                  ; preds = %block_486946, %block_486931
  %2458 = phi i64 [ %2457, %block_486946 ], [ %2431, %block_486931 ]
  %2459 = add i64 %2458, 3
  store i64 %2459, i64* %3, align 8
  %2460 = load i32, i32* %2379, align 4
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RDI.i2211, align 8
  %2462 = add i64 %2458, 6
  store i64 %2462, i64* %3, align 8
  %2463 = load i32, i32* %2379, align 4
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RSI.i1962, align 8
  %2465 = add i64 %2458, 6037
  %2466 = add i64 %2458, 11
  %2467 = load i64, i64* %6, align 8
  %2468 = add i64 %2467, -8
  %2469 = inttoptr i64 %2468 to i64*
  store i64 %2466, i64* %2469, align 8
  store i64 %2468, i64* %6, align 8
  store i64 %2465, i64* %3, align 8
  %call2_486961 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %2465, %struct.Memory* %MEMORY.33)
  %2470 = load i32, i32* %EAX.i2208, align 4
  %2471 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2472 = and i32 %2470, 255
  %2473 = tail call i32 @llvm.ctpop.i32(i32 %2472)
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  store i8 %2476, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2477 = icmp eq i32 %2470, 0
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %29, align 1
  %2479 = lshr i32 %2470, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v285 = select i1 %2477, i64 9, i64 14
  %2481 = add i64 %2471, %.v285
  store i64 %2481, i64* %3, align 8
  br i1 %2477, label %block_.L_48696f, label %block_.L_486974

block_.L_48696f:                                  ; preds = %block_.L_48695b, %block_486946
  %2482 = phi i64 [ %2481, %block_.L_48695b ], [ %2457, %block_486946 ]
  %2483 = add i64 %2482, 1047
  br label %block_.L_486d86

block_.L_486974:                                  ; preds = %block_.L_48695b
  store i64 3, i64* %RAX.i2177.pre-phi, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i2175, align 8
  %2484 = load i64, i64* %RBP.i, align 8
  %2485 = add i64 %2484, -44
  %2486 = add i64 %2481, 19
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = sext i32 %2488 to i64
  %2490 = mul nsw i64 %2489, 380
  store i64 %2490, i64* %RDX.i1945, align 8
  %2491 = lshr i64 %2490, 63
  %2492 = add i64 %2490, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2492, i64* %RCX.i2175, align 8
  %2493 = icmp ult i64 %2492, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2494 = icmp ult i64 %2492, %2490
  %2495 = or i1 %2493, %2494
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %14, align 1
  %2497 = trunc i64 %2492 to i32
  %2498 = and i32 %2497, 252
  %2499 = tail call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  store i8 %2502, i8* %21, align 1
  %2503 = xor i64 %2490, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2504 = xor i64 %2503, %2492
  %2505 = lshr i64 %2504, 4
  %2506 = trunc i64 %2505 to i8
  %2507 = and i8 %2506, 1
  store i8 %2507, i8* %26, align 1
  %2508 = icmp eq i64 %2492, 0
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %29, align 1
  %2510 = lshr i64 %2492, 63
  %2511 = trunc i64 %2510 to i8
  store i8 %2511, i8* %32, align 1
  %2512 = xor i64 %2510, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2513 = xor i64 %2510, %2491
  %2514 = add nuw nsw i64 %2512, %2513
  %2515 = icmp eq i64 %2514, 2
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %38, align 1
  %2517 = inttoptr i64 %2492 to i32*
  %2518 = add i64 %2481, 31
  store i64 %2518, i64* %3, align 8
  %2519 = load i32, i32* %2517, align 4
  %2520 = zext i32 %2519 to i64
  store i64 %2520, i64* %RSI.i1962, align 8
  %2521 = add i64 %2484, -40
  %2522 = add i64 %2481, 34
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = sub i32 3, %2524
  %2526 = zext i32 %2525 to i64
  store i64 %2526, i64* %RAX.i2177.pre-phi, align 8
  %2527 = lshr i32 %2525, 31
  %2528 = sub i32 %2519, %2525
  %2529 = icmp ult i32 %2519, %2525
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %14, align 1
  %2531 = and i32 %2528, 255
  %2532 = tail call i32 @llvm.ctpop.i32(i32 %2531)
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  store i8 %2535, i8* %21, align 1
  %2536 = xor i32 %2525, %2519
  %2537 = xor i32 %2536, %2528
  %2538 = lshr i32 %2537, 4
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  store i8 %2540, i8* %26, align 1
  %2541 = icmp eq i32 %2528, 0
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %29, align 1
  %2543 = lshr i32 %2528, 31
  %2544 = trunc i32 %2543 to i8
  store i8 %2544, i8* %32, align 1
  %2545 = lshr i32 %2519, 31
  %2546 = xor i32 %2527, %2545
  %2547 = xor i32 %2543, %2545
  %2548 = add nuw nsw i32 %2547, %2546
  %2549 = icmp eq i32 %2548, 2
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %38, align 1
  %.v286 = select i1 %2541, i64 42, i64 526
  %2551 = add i64 %2481, %.v286
  store i64 %2551, i64* %3, align 8
  br i1 %2541, label %block_48699e, label %block_.L_486974.block_.L_486b82_crit_edge

block_.L_486974.block_.L_486b82_crit_edge:        ; preds = %block_.L_486974
  %.pre188 = load i64, i64* %RBP.i, align 8
  br label %block_.L_486b82

block_48699e:                                     ; preds = %block_.L_486974
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %2552 = load i64, i64* %RBP.i, align 8
  %2553 = add i64 %2552, -44
  %2554 = add i64 %2551, 14
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = sext i32 %2556 to i64
  %2558 = mul nsw i64 %2557, 380
  store i64 %2558, i64* %RCX.i2175, align 8
  %2559 = lshr i64 %2558, 63
  %2560 = add i64 %2558, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2560, i64* %RAX.i2177.pre-phi, align 8
  %2561 = icmp ult i64 %2560, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2562 = icmp ult i64 %2560, %2558
  %2563 = or i1 %2561, %2562
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %14, align 1
  %2565 = trunc i64 %2560 to i32
  %2566 = and i32 %2565, 252
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %21, align 1
  %2571 = xor i64 %2558, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2572 = xor i64 %2571, %2560
  %2573 = lshr i64 %2572, 4
  %2574 = trunc i64 %2573 to i8
  %2575 = and i8 %2574, 1
  store i8 %2575, i8* %26, align 1
  %2576 = icmp eq i64 %2560, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %29, align 1
  %2578 = lshr i64 %2560, 63
  %2579 = trunc i64 %2578 to i8
  store i8 %2579, i8* %32, align 1
  %2580 = xor i64 %2578, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2581 = xor i64 %2578, %2559
  %2582 = add nuw nsw i64 %2580, %2581
  %2583 = icmp eq i64 %2582, 2
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %38, align 1
  %2585 = add i64 %2558, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %2586 = add i64 %2551, 28
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i32*
  %2588 = load i32, i32* %2587, align 4
  store i8 0, i8* %14, align 1
  %2589 = and i32 %2588, 255
  %2590 = tail call i32 @llvm.ctpop.i32(i32 %2589)
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = xor i8 %2592, 1
  store i8 %2593, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2594 = icmp eq i32 %2588, 0
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %29, align 1
  %2596 = lshr i32 %2588, 31
  %2597 = trunc i32 %2596 to i8
  store i8 %2597, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v297 = select i1 %2594, i64 484, i64 34
  %2598 = add i64 %2551, %.v297
  store i64 %2598, i64* %3, align 8
  br i1 %2594, label %block_.L_486b82, label %block_4869c0

block_4869c0:                                     ; preds = %block_48699e
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %2599 = add i64 %2598, 14
  store i64 %2599, i64* %3, align 8
  %2600 = load i32, i32* %2555, align 4
  %2601 = sext i32 %2600 to i64
  %2602 = mul nsw i64 %2601, 380
  store i64 %2602, i64* %RCX.i2175, align 8
  %2603 = lshr i64 %2602, 63
  %2604 = add i64 %2602, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2604, i64* %RAX.i2177.pre-phi, align 8
  %2605 = icmp ult i64 %2604, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2606 = icmp ult i64 %2604, %2602
  %2607 = or i1 %2605, %2606
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %14, align 1
  %2609 = trunc i64 %2604 to i32
  %2610 = and i32 %2609, 252
  %2611 = tail call i32 @llvm.ctpop.i32(i32 %2610)
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = xor i8 %2613, 1
  store i8 %2614, i8* %21, align 1
  %2615 = xor i64 %2602, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2616 = xor i64 %2615, %2604
  %2617 = lshr i64 %2616, 4
  %2618 = trunc i64 %2617 to i8
  %2619 = and i8 %2618, 1
  store i8 %2619, i8* %26, align 1
  %2620 = icmp eq i64 %2604, 0
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %29, align 1
  %2622 = lshr i64 %2604, 63
  %2623 = trunc i64 %2622 to i8
  store i8 %2623, i8* %32, align 1
  %2624 = xor i64 %2622, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2625 = xor i64 %2622, %2603
  %2626 = add nuw nsw i64 %2624, %2625
  %2627 = icmp eq i64 %2626, 2
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %38, align 1
  %2629 = add i64 %2602, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %2630 = add i64 %2598, 31
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  store i8 0, i8* %14, align 1
  %2633 = and i32 %2632, 255
  %2634 = tail call i32 @llvm.ctpop.i32(i32 %2633)
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = xor i8 %2636, 1
  store i8 %2637, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2638 = icmp eq i32 %2632, 0
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %29, align 1
  %2640 = lshr i32 %2632, 31
  %2641 = trunc i32 %2640 to i8
  store i8 %2641, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v298 = select i1 %2638, i64 450, i64 37
  %2642 = add i64 %2598, %.v298
  store i64 %2642, i64* %3, align 8
  br i1 %2638, label %block_.L_486b82, label %block_4869e5

block_4869e5:                                     ; preds = %block_4869c0
  store i64 0, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RSI.i1962, align 8
  %2643 = add i64 %2642, 7
  store i64 %2643, i64* %3, align 8
  %2644 = load i32, i32* %2555, align 4
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RDI.i2211, align 8
  %2646 = add i64 %2642, -115301
  %2647 = add i64 %2642, 12
  %2648 = load i64, i64* %6, align 8
  %2649 = add i64 %2648, -8
  %2650 = inttoptr i64 %2649 to i64*
  store i64 %2647, i64* %2650, align 8
  store i64 %2649, i64* %6, align 8
  store i64 %2646, i64* %3, align 8
  %call2_4869ec = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %2646, %struct.Memory* %MEMORY.33)
  %2651 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i1962, align 8
  %2652 = load i64, i64* %RBP.i, align 8
  %2653 = add i64 %2652, -1652
  %2654 = load i32, i32* %EAX.i2208, align 4
  %2655 = add i64 %2651, 16
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2653 to i32*
  store i32 %2654, i32* %2656, align 4
  %2657 = load i64, i64* %RBP.i, align 8
  %2658 = add i64 %2657, -1652
  %2659 = load i64, i64* %3, align 8
  %2660 = add i64 %2659, 6
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RAX.i2177.pre-phi, align 8
  %2664 = add i64 %2657, -44
  %2665 = add i64 %2659, 10
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = sext i32 %2667 to i64
  %2669 = mul nsw i64 %2668, 380
  store i64 %2669, i64* %RCX.i2175, align 8
  %2670 = lshr i64 %2669, 63
  %2671 = load i64, i64* %RSI.i1962, align 8
  %2672 = add i64 %2669, %2671
  store i64 %2672, i64* %RSI.i1962, align 8
  %2673 = icmp ult i64 %2672, %2671
  %2674 = icmp ult i64 %2672, %2669
  %2675 = or i1 %2673, %2674
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %14, align 1
  %2677 = trunc i64 %2672 to i32
  %2678 = and i32 %2677, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  %2683 = xor i64 %2669, %2671
  %2684 = xor i64 %2683, %2672
  %2685 = lshr i64 %2684, 4
  %2686 = trunc i64 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %26, align 1
  %2688 = icmp eq i64 %2672, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %29, align 1
  %2690 = lshr i64 %2672, 63
  %2691 = trunc i64 %2690 to i8
  store i8 %2691, i8* %32, align 1
  %2692 = lshr i64 %2671, 63
  %2693 = xor i64 %2690, %2692
  %2694 = xor i64 %2690, %2670
  %2695 = add nuw nsw i64 %2693, %2694
  %2696 = icmp eq i64 %2695, 2
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %38, align 1
  %2698 = add i64 %2672, 180
  %2699 = add i64 %2659, 26
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = sub i32 %2662, %2701
  %2703 = icmp ult i32 %2662, %2701
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %14, align 1
  %2705 = and i32 %2702, 255
  %2706 = tail call i32 @llvm.ctpop.i32(i32 %2705)
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  store i8 %2709, i8* %21, align 1
  %2710 = xor i32 %2701, %2662
  %2711 = xor i32 %2710, %2702
  %2712 = lshr i32 %2711, 4
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %26, align 1
  %2715 = icmp eq i32 %2702, 0
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %29, align 1
  %2717 = lshr i32 %2702, 31
  %2718 = trunc i32 %2717 to i8
  store i8 %2718, i8* %32, align 1
  %2719 = lshr i32 %2662, 31
  %2720 = lshr i32 %2701, 31
  %2721 = xor i32 %2720, %2719
  %2722 = xor i32 %2717, %2719
  %2723 = add nuw nsw i32 %2722, %2721
  %2724 = icmp eq i32 %2723, 2
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %38, align 1
  %2726 = icmp ne i8 %2718, 0
  %2727 = xor i1 %2726, %2724
  %.v299 = select i1 %2727, i64 32, i64 380
  %2728 = add i64 %2659, %.v299
  store i64 %2728, i64* %3, align 8
  br i1 %2727, label %block_486a21, label %block_.L_486b7d

block_486a21:                                     ; preds = %block_4869e5
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %2729 = load i64, i64* %RBP.i, align 8
  %2730 = add i64 %2729, -1656
  %2731 = add i64 %2728, 20
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i32*
  store i32 1, i32* %2732, align 4
  %2733 = load i64, i64* %RBP.i, align 8
  %2734 = add i64 %2733, -44
  %2735 = load i64, i64* %3, align 8
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2734 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = sext i32 %2738 to i64
  %2740 = mul nsw i64 %2739, 380
  store i64 %2740, i64* %RCX.i2175, align 8
  %2741 = lshr i64 %2740, 63
  %2742 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %2743 = add i64 %2740, %2742
  store i64 %2743, i64* %RAX.i2177.pre-phi, align 8
  %2744 = icmp ult i64 %2743, %2742
  %2745 = icmp ult i64 %2743, %2740
  %2746 = or i1 %2744, %2745
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %14, align 1
  %2748 = trunc i64 %2743 to i32
  %2749 = and i32 %2748, 255
  %2750 = tail call i32 @llvm.ctpop.i32(i32 %2749)
  %2751 = trunc i32 %2750 to i8
  %2752 = and i8 %2751, 1
  %2753 = xor i8 %2752, 1
  store i8 %2753, i8* %21, align 1
  %2754 = xor i64 %2740, %2742
  %2755 = xor i64 %2754, %2743
  %2756 = lshr i64 %2755, 4
  %2757 = trunc i64 %2756 to i8
  %2758 = and i8 %2757, 1
  store i8 %2758, i8* %26, align 1
  %2759 = icmp eq i64 %2743, 0
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %29, align 1
  %2761 = lshr i64 %2743, 63
  %2762 = trunc i64 %2761 to i8
  store i8 %2762, i8* %32, align 1
  %2763 = lshr i64 %2742, 63
  %2764 = xor i64 %2761, %2763
  %2765 = xor i64 %2761, %2741
  %2766 = add nuw nsw i64 %2764, %2765
  %2767 = icmp eq i64 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %38, align 1
  %2769 = add i64 %2743, 180
  %2770 = add i64 %2735, 21
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  store i8 0, i8* %14, align 1
  %2773 = and i32 %2772, 255
  %2774 = tail call i32 @llvm.ctpop.i32(i32 %2773)
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = xor i8 %2776, 1
  store i8 %2777, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2778 = icmp eq i32 %2772, 0
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %29, align 1
  %2780 = lshr i32 %2772, 31
  %2781 = trunc i32 %2780 to i8
  store i8 %2781, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v300 = select i1 %2778, i64 218, i64 27
  %2782 = add i64 %2735, %.v300
  store i64 %2782, i64* %3, align 8
  br i1 %2778, label %block_.L_486b0f, label %block_486a50

block_486a50:                                     ; preds = %block_486a21
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i1945, align 8
  store i64 0, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 3, i64* %RCX.i2175, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i1962, align 8
  %2783 = add i64 %2782, 31
  store i64 %2783, i64* %3, align 8
  %2784 = load i32, i32* %2737, align 4
  %2785 = sext i32 %2784 to i64
  %2786 = mul nsw i64 %2785, 380
  store i64 %2786, i64* %RDI.i2211, align 8
  %2787 = lshr i64 %2786, 63
  %2788 = add i64 %2786, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2788, i64* %RSI.i1962, align 8
  %2789 = icmp ult i64 %2788, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2790 = icmp ult i64 %2788, %2786
  %2791 = or i1 %2789, %2790
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %14, align 1
  %2793 = trunc i64 %2788 to i32
  %2794 = and i32 %2793, 252
  %2795 = tail call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %21, align 1
  %2799 = xor i64 %2786, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2800 = xor i64 %2799, %2788
  %2801 = lshr i64 %2800, 4
  %2802 = trunc i64 %2801 to i8
  %2803 = and i8 %2802, 1
  store i8 %2803, i8* %26, align 1
  %2804 = icmp eq i64 %2788, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %29, align 1
  %2806 = lshr i64 %2788, 63
  %2807 = trunc i64 %2806 to i8
  store i8 %2807, i8* %32, align 1
  %2808 = xor i64 %2806, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2809 = xor i64 %2806, %2787
  %2810 = add nuw nsw i64 %2808, %2809
  %2811 = icmp eq i64 %2810, 2
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %38, align 1
  %2813 = add i64 %2786, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 140)
  %2814 = add i64 %2782, 47
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  %2816 = load i32, i32* %2815, align 4
  %2817 = zext i32 %2816 to i64
  store i64 %2817, i64* %RDI.i2211, align 8
  %2818 = load i64, i64* %RBP.i, align 8
  %2819 = add i64 %2818, -40
  %2820 = add i64 %2782, 50
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i32*
  %2822 = load i32, i32* %2821, align 4
  %2823 = sub i32 3, %2822
  %2824 = zext i32 %2823 to i64
  %2825 = icmp ugt i32 %2822, 3
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %14, align 1
  %2827 = and i32 %2823, 255
  %2828 = tail call i32 @llvm.ctpop.i32(i32 %2827)
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = xor i8 %2830, 1
  store i8 %2831, i8* %21, align 1
  %2832 = xor i32 %2822, %2823
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
  %2840 = lshr i32 %2822, 31
  %2841 = add nuw nsw i32 %2838, %2840
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %38, align 1
  store i64 %2824, i64* %RSI.i1962, align 8
  %2844 = load i32, i32* %EAX.i2208, align 4
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RCX.i2175, align 8
  store i64 %2845, i64* %R8.i2141.pre-phi, align 8
  store i64 %2845, i64* %R9.i1806, align 8
  %2846 = add i64 %2782, -515104
  %2847 = add i64 %2782, 65
  %2848 = load i64, i64* %6, align 8
  %2849 = add i64 %2848, -8
  %2850 = inttoptr i64 %2849 to i64*
  store i64 %2847, i64* %2850, align 8
  store i64 %2849, i64* %6, align 8
  store i64 %2846, i64* %3, align 8
  %call2_486a8c = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %2846, %struct.Memory* %MEMORY.33)
  %2851 = load i32, i32* %EAX.i2208, align 4
  %2852 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2853 = and i32 %2851, 255
  %2854 = tail call i32 @llvm.ctpop.i32(i32 %2853)
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  %2857 = xor i8 %2856, 1
  store i8 %2857, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2858 = icmp eq i32 %2851, 0
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %29, align 1
  %2860 = lshr i32 %2851, 31
  %2861 = trunc i32 %2860 to i8
  store i8 %2861, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v301 = select i1 %2858, i64 126, i64 9
  %2862 = add i64 %2852, %.v301
  store i64 %2862, i64* %3, align 8
  br i1 %2858, label %block_.L_486b0f, label %block_486a9a

block_486a9a:                                     ; preds = %block_486a50
  store i64 0, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RSI.i1962, align 8
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -44
  %2865 = add i64 %2862, 7
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RDI.i2211, align 8
  %2869 = add i64 %2862, -167770
  %2870 = add i64 %2862, 12
  %2871 = load i64, i64* %6, align 8
  %2872 = add i64 %2871, -8
  %2873 = inttoptr i64 %2872 to i64*
  store i64 %2870, i64* %2873, align 8
  store i64 %2872, i64* %6, align 8
  store i64 %2869, i64* %3, align 8
  %call2_486aa1 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %2869, %struct.Memory* %MEMORY.33)
  %2874 = load i64, i64* %3, align 8
  %2875 = load i32, i32* %EAX.i2208, align 4
  %2876 = sub i32 5, %2875
  %2877 = zext i32 %2876 to i64
  store i64 %2877, i64* %RDI.i2211, align 8
  %2878 = icmp ugt i32 %2875, 5
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %14, align 1
  %2880 = and i32 %2876, 255
  %2881 = tail call i32 @llvm.ctpop.i32(i32 %2880)
  %2882 = trunc i32 %2881 to i8
  %2883 = and i8 %2882, 1
  %2884 = xor i8 %2883, 1
  store i8 %2884, i8* %21, align 1
  %2885 = xor i32 %2876, %2875
  %2886 = lshr i32 %2885, 4
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  store i8 %2888, i8* %26, align 1
  %2889 = icmp eq i32 %2876, 0
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %29, align 1
  %2891 = lshr i32 %2876, 31
  %2892 = trunc i32 %2891 to i8
  store i8 %2892, i8* %32, align 1
  %2893 = lshr i32 %2875, 31
  %2894 = add nuw nsw i32 %2891, %2893
  %2895 = icmp eq i32 %2894, 2
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %38, align 1
  %2897 = load i64, i64* %RBP.i, align 8
  %2898 = add i64 %2897, -1660
  %2899 = add i64 %2874, 13
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  store i32 %2876, i32* %2900, align 4
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -1660
  %2903 = load i64, i64* %3, align 8
  %2904 = add i64 %2903, 6
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2902 to i32*
  %2906 = load i32, i32* %2905, align 4
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i2177.pre-phi, align 8
  %2908 = add i64 %2901, -1652
  %2909 = add i64 %2903, 12
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = sub i32 %2906, %2911
  %2913 = icmp ult i32 %2906, %2911
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %14, align 1
  %2915 = and i32 %2912, 255
  %2916 = tail call i32 @llvm.ctpop.i32(i32 %2915)
  %2917 = trunc i32 %2916 to i8
  %2918 = and i8 %2917, 1
  %2919 = xor i8 %2918, 1
  store i8 %2919, i8* %21, align 1
  %2920 = xor i32 %2911, %2906
  %2921 = xor i32 %2920, %2912
  %2922 = lshr i32 %2921, 4
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  store i8 %2924, i8* %26, align 1
  %2925 = icmp eq i32 %2912, 0
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %29, align 1
  %2927 = lshr i32 %2912, 31
  %2928 = trunc i32 %2927 to i8
  store i8 %2928, i8* %32, align 1
  %2929 = lshr i32 %2906, 31
  %2930 = lshr i32 %2911, 31
  %2931 = xor i32 %2930, %2929
  %2932 = xor i32 %2927, %2929
  %2933 = add nuw nsw i32 %2932, %2931
  %2934 = icmp eq i32 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %38, align 1
  %2936 = icmp ne i8 %2928, 0
  %2937 = xor i1 %2936, %2934
  %2938 = or i1 %2925, %2937
  %.v302 = select i1 %2938, i64 87, i64 18
  %2939 = add i64 %2903, %.v302
  store i64 %2939, i64* %3, align 8
  br i1 %2938, label %block_.L_486b0a, label %block_486ac5

block_486ac5:                                     ; preds = %block_486a9a
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %2940 = add i64 %2939, 16
  store i64 %2940, i64* %3, align 8
  %2941 = load i32, i32* %2905, align 4
  %2942 = zext i32 %2941 to i64
  store i64 %2942, i64* %RCX.i2175, align 8
  %2943 = add i64 %2939, 22
  store i64 %2943, i64* %3, align 8
  store i32 %2941, i32* %2910, align 4
  %2944 = load i64, i64* %RBP.i, align 8
  %2945 = add i64 %2944, -1652
  %2946 = load i64, i64* %3, align 8
  %2947 = add i64 %2946, 6
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2945 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RCX.i2175, align 8
  %2951 = add i64 %2944, -44
  %2952 = add i64 %2946, 10
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  %2956 = mul nsw i64 %2955, 380
  store i64 %2956, i64* %RDX.i1945, align 8
  %2957 = lshr i64 %2956, 63
  %2958 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %2959 = add i64 %2956, %2958
  store i64 %2959, i64* %RAX.i2177.pre-phi, align 8
  %2960 = icmp ult i64 %2959, %2958
  %2961 = icmp ult i64 %2959, %2956
  %2962 = or i1 %2960, %2961
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %14, align 1
  %2964 = trunc i64 %2959 to i32
  %2965 = and i32 %2964, 255
  %2966 = tail call i32 @llvm.ctpop.i32(i32 %2965)
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = xor i8 %2968, 1
  store i8 %2969, i8* %21, align 1
  %2970 = xor i64 %2956, %2958
  %2971 = xor i64 %2970, %2959
  %2972 = lshr i64 %2971, 4
  %2973 = trunc i64 %2972 to i8
  %2974 = and i8 %2973, 1
  store i8 %2974, i8* %26, align 1
  %2975 = icmp eq i64 %2959, 0
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %29, align 1
  %2977 = lshr i64 %2959, 63
  %2978 = trunc i64 %2977 to i8
  store i8 %2978, i8* %32, align 1
  %2979 = lshr i64 %2958, 63
  %2980 = xor i64 %2977, %2979
  %2981 = xor i64 %2977, %2957
  %2982 = add nuw nsw i64 %2980, %2981
  %2983 = icmp eq i64 %2982, 2
  %2984 = zext i1 %2983 to i8
  store i8 %2984, i8* %38, align 1
  %2985 = add i64 %2959, 180
  %2986 = add i64 %2946, 26
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i32*
  %2988 = load i32, i32* %2987, align 4
  %2989 = sub i32 %2949, %2988
  %2990 = icmp ult i32 %2949, %2988
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %14, align 1
  %2992 = and i32 %2989, 255
  %2993 = tail call i32 @llvm.ctpop.i32(i32 %2992)
  %2994 = trunc i32 %2993 to i8
  %2995 = and i8 %2994, 1
  %2996 = xor i8 %2995, 1
  store i8 %2996, i8* %21, align 1
  %2997 = xor i32 %2988, %2949
  %2998 = xor i32 %2997, %2989
  %2999 = lshr i32 %2998, 4
  %3000 = trunc i32 %2999 to i8
  %3001 = and i8 %3000, 1
  store i8 %3001, i8* %26, align 1
  %3002 = icmp eq i32 %2989, 0
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %29, align 1
  %3004 = lshr i32 %2989, 31
  %3005 = trunc i32 %3004 to i8
  store i8 %3005, i8* %32, align 1
  %3006 = lshr i32 %2949, 31
  %3007 = lshr i32 %2988, 31
  %3008 = xor i32 %3007, %3006
  %3009 = xor i32 %3004, %3006
  %3010 = add nuw nsw i32 %3009, %3008
  %3011 = icmp eq i32 %3010, 2
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %38, align 1
  %3013 = icmp ne i8 %3005, 0
  %3014 = xor i1 %3013, %3011
  %.v303 = select i1 %3014, i64 42, i64 32
  %3015 = add i64 %2946, %.v303
  store i64 %3015, i64* %3, align 8
  br i1 %3014, label %block_.L_486b05, label %block_486afb

block_486afb:                                     ; preds = %block_486ac5
  %3016 = load i64, i64* %RBP.i, align 8
  %3017 = add i64 %3016, -1656
  %3018 = add i64 %3015, 10
  store i64 %3018, i64* %3, align 8
  %3019 = inttoptr i64 %3017 to i32*
  store i32 0, i32* %3019, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_486b05

block_.L_486b05:                                  ; preds = %block_486afb, %block_486ac5
  %3020 = phi i64 [ %.pre183, %block_486afb ], [ %3015, %block_486ac5 ]
  %3021 = add i64 %3020, 5
  store i64 %3021, i64* %3, align 8
  br label %block_.L_486b0a

block_.L_486b0a:                                  ; preds = %block_.L_486b05, %block_486a9a
  %3022 = phi i64 [ %3021, %block_.L_486b05 ], [ %2939, %block_486a9a ]
  %3023 = add i64 %3022, -495018
  %3024 = add i64 %3022, 5
  %3025 = load i64, i64* %6, align 8
  %3026 = add i64 %3025, -8
  %3027 = inttoptr i64 %3026 to i64*
  store i64 %3024, i64* %3027, align 8
  store i64 %3026, i64* %6, align 8
  store i64 %3023, i64* %3, align 8
  %call2_486b0a = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3023, %struct.Memory* %MEMORY.33)
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_486b0f

block_.L_486b0f:                                  ; preds = %block_.L_486b0a, %block_486a50, %block_486a21
  %3028 = phi i64 [ %.pre184, %block_.L_486b0a ], [ %2862, %block_486a50 ], [ %2782, %block_486a21 ]
  %3029 = load i64, i64* %RBP.i, align 8
  %3030 = add i64 %3029, -1656
  %3031 = add i64 %3028, 7
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  store i8 0, i8* %14, align 1
  %3034 = and i32 %3033, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3039 = icmp eq i32 %3033, 0
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %29, align 1
  %3041 = lshr i32 %3033, 31
  %3042 = trunc i32 %3041 to i8
  store i8 %3042, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v304 = select i1 %3039, i64 105, i64 13
  %3043 = add i64 %3028, %.v304
  store i64 %3043, i64* %3, align 8
  br i1 %3039, label %block_.L_486b78, label %block_486b1c

block_486b1c:                                     ; preds = %block_.L_486b0f
  %3044 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3045 = and i32 %3044, 1024
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit218 = lshr exact i32 %3045, 10
  %3047 = trunc i32 %.lobit218 to i8
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3049 = icmp eq i8 %3048, 0
  %.v305 = select i1 %3049, i64 26, i64 21
  %3050 = add i64 %3043, %.v305
  store i64 %3050, i64* %3, align 8
  br i1 %3049, label %block_.L_486b36, label %block_486b31

block_486b31:                                     ; preds = %block_486b1c
  %3051 = add i64 %3050, 47
  store i64 %3051, i64* %3, align 8
  br label %block_.L_486b60

block_.L_486b36:                                  ; preds = %block_486b1c
  store i64 ptrtoint (%G__0x582f76_type* @G__0x582f76 to i64), i64* %RDI.i2211, align 8
  store i64 5, i64* %RAX.i2177.pre-phi, align 8
  %3052 = add i64 %3029, -44
  %3053 = add i64 %3050, 18
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = zext i32 %3055 to i64
  store i64 %3056, i64* %RSI.i1962, align 8
  %3057 = add i64 %3029, -4
  %3058 = add i64 %3050, 21
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RDX.i1945, align 8
  %3062 = add i64 %3029, -1652
  %3063 = add i64 %3050, 27
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i32*
  %3065 = load i32, i32* %3064, align 4
  %3066 = sub i32 5, %3065
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RAX.i2177.pre-phi, align 8
  %3068 = icmp ugt i32 %3065, 5
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %14, align 1
  %3070 = and i32 %3066, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %21, align 1
  %3075 = xor i32 %3065, %3066
  %3076 = lshr i32 %3075, 4
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  store i8 %3078, i8* %26, align 1
  %3079 = icmp eq i32 %3066, 0
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %29, align 1
  %3081 = lshr i32 %3066, 31
  %3082 = trunc i32 %3081 to i8
  store i8 %3082, i8* %32, align 1
  %3083 = lshr i32 %3065, 31
  %3084 = add nuw nsw i32 %3081, %3083
  %3085 = icmp eq i32 %3084, 2
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %38, align 1
  store i64 %3067, i64* %RCX.i2175, align 8
  store i8 0, i8* %AL.i1656, align 1
  %3087 = add i64 %3050, -216454
  %3088 = add i64 %3050, 36
  %3089 = load i64, i64* %6, align 8
  %3090 = add i64 %3089, -8
  %3091 = inttoptr i64 %3090 to i64*
  store i64 %3088, i64* %3091, align 8
  store i64 %3090, i64* %6, align 8
  store i64 %3087, i64* %3, align 8
  %call2_486b55 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3087, %struct.Memory* %MEMORY.33)
  %3092 = load i64, i64* %RBP.i, align 8
  %3093 = add i64 %3092, -1716
  %3094 = load i32, i32* %EAX.i2208, align 4
  %3095 = load i64, i64* %3, align 8
  %3096 = add i64 %3095, 6
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3093 to i32*
  store i32 %3094, i32* %3097, align 4
  %.pre185 = load i64, i64* %3, align 8
  %.pre186 = load i64, i64* %RBP.i, align 8
  br label %block_.L_486b60

block_.L_486b60:                                  ; preds = %block_.L_486b36, %block_486b31
  %3098 = phi i64 [ %.pre186, %block_.L_486b36 ], [ %3029, %block_486b31 ]
  %3099 = phi i64 [ %.pre185, %block_.L_486b36 ], [ %3051, %block_486b31 ]
  store i64 5, i64* %RAX.i2177.pre-phi, align 8
  %3100 = add i64 %3098, -44
  %3101 = add i64 %3099, 8
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RDI.i2211, align 8
  %3105 = add i64 %3098, -4
  %3106 = add i64 %3099, 11
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RSI.i1962, align 8
  %3110 = add i64 %3098, -1652
  %3111 = add i64 %3099, 17
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i32*
  %3113 = load i32, i32* %3112, align 4
  %3114 = sub i32 5, %3113
  %3115 = zext i32 %3114 to i64
  store i64 %3115, i64* %RAX.i2177.pre-phi, align 8
  %3116 = icmp ugt i32 %3113, 5
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %14, align 1
  %3118 = and i32 %3114, 255
  %3119 = tail call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  store i8 %3122, i8* %21, align 1
  %3123 = xor i32 %3113, %3114
  %3124 = lshr i32 %3123, 4
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  store i8 %3126, i8* %26, align 1
  %3127 = icmp eq i32 %3114, 0
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %29, align 1
  %3129 = lshr i32 %3114, 31
  %3130 = trunc i32 %3129 to i8
  store i8 %3130, i8* %32, align 1
  %3131 = lshr i32 %3113, 31
  %3132 = add nuw nsw i32 %3129, %3131
  %3133 = icmp eq i32 %3132, 2
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %38, align 1
  store i64 %3115, i64* %RDX.i1945, align 8
  %3135 = add i64 %3099, 7136
  %3136 = add i64 %3099, 24
  %3137 = load i64, i64* %6, align 8
  %3138 = add i64 %3137, -8
  %3139 = inttoptr i64 %3138 to i64*
  store i64 %3136, i64* %3139, align 8
  store i64 %3138, i64* %6, align 8
  store i64 %3135, i64* %3, align 8
  %call2_486b73 = tail call %struct.Memory* @sub_488740.change_attack(%struct.State* nonnull %0, i64 %3135, %struct.Memory* %MEMORY.33)
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_486b78

block_.L_486b78:                                  ; preds = %block_.L_486b60, %block_.L_486b0f
  %3140 = phi i64 [ %3043, %block_.L_486b0f ], [ %.pre187, %block_.L_486b60 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.33, %block_.L_486b0f ], [ %call2_486b73, %block_.L_486b60 ]
  %3141 = add i64 %3140, 5
  store i64 %3141, i64* %3, align 8
  br label %block_.L_486b7d

block_.L_486b7d:                                  ; preds = %block_4869e5, %block_.L_486b78
  %3142 = phi i64 [ %2728, %block_4869e5 ], [ %3141, %block_.L_486b78 ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.33, %block_4869e5 ], [ %MEMORY.40, %block_.L_486b78 ]
  %3143 = add i64 %3142, 516
  br label %block_.L_486d81

block_.L_486b82:                                  ; preds = %block_.L_486974.block_.L_486b82_crit_edge, %block_4869c0, %block_48699e
  %3144 = phi i64 [ %2552, %block_4869c0 ], [ %2552, %block_48699e ], [ %.pre188, %block_.L_486974.block_.L_486b82_crit_edge ]
  %3145 = phi i64 [ %2642, %block_4869c0 ], [ %2598, %block_48699e ], [ %2551, %block_.L_486974.block_.L_486b82_crit_edge ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %3146 = add i64 %3144, -44
  %3147 = add i64 %3145, 14
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = sext i32 %3149 to i64
  %3151 = mul nsw i64 %3150, 380
  store i64 %3151, i64* %RCX.i2175, align 8
  %3152 = lshr i64 %3151, 63
  %3153 = add i64 %3151, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %3153, i64* %RAX.i2177.pre-phi, align 8
  %3154 = icmp ult i64 %3153, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %3155 = icmp ult i64 %3153, %3151
  %3156 = or i1 %3154, %3155
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %14, align 1
  %3158 = trunc i64 %3153 to i32
  %3159 = and i32 %3158, 252
  %3160 = tail call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  store i8 %3163, i8* %21, align 1
  %3164 = xor i64 %3151, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %3165 = xor i64 %3164, %3153
  %3166 = lshr i64 %3165, 4
  %3167 = trunc i64 %3166 to i8
  %3168 = and i8 %3167, 1
  store i8 %3168, i8* %26, align 1
  %3169 = icmp eq i64 %3153, 0
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %29, align 1
  %3171 = lshr i64 %3153, 63
  %3172 = trunc i64 %3171 to i8
  store i8 %3172, i8* %32, align 1
  %3173 = xor i64 %3171, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %3174 = xor i64 %3171, %3152
  %3175 = add nuw nsw i64 %3173, %3174
  %3176 = icmp eq i64 %3175, 2
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %38, align 1
  %3178 = inttoptr i64 %3153 to i32*
  %3179 = add i64 %3145, 26
  store i64 %3179, i64* %3, align 8
  %3180 = load i32, i32* %3178, align 4
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RDX.i1945, align 8
  %3182 = add i64 %3144, -40
  %3183 = add i64 %3145, 29
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = sub i32 %3180, %3185
  %3187 = icmp ult i32 %3180, %3185
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %14, align 1
  %3189 = and i32 %3186, 255
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189)
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  store i8 %3193, i8* %21, align 1
  %3194 = xor i32 %3185, %3180
  %3195 = xor i32 %3194, %3186
  %3196 = lshr i32 %3195, 4
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  store i8 %3198, i8* %26, align 1
  %3199 = icmp eq i32 %3186, 0
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %29, align 1
  %3201 = lshr i32 %3186, 31
  %3202 = trunc i32 %3201 to i8
  store i8 %3202, i8* %32, align 1
  %3203 = lshr i32 %3180, 31
  %3204 = lshr i32 %3185, 31
  %3205 = xor i32 %3204, %3203
  %3206 = xor i32 %3201, %3203
  %3207 = add nuw nsw i32 %3206, %3205
  %3208 = icmp eq i32 %3207, 2
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %38, align 1
  %.v287 = select i1 %3199, i64 35, i64 506
  %3210 = add i64 %3145, %.v287
  store i64 %3210, i64* %3, align 8
  br i1 %3199, label %block_486ba5, label %block_.L_486d7c

block_486ba5:                                     ; preds = %block_.L_486b82
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -44
  %3213 = add i64 %3210, 14
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = sext i32 %3215 to i64
  %3217 = mul nsw i64 %3216, 380
  store i64 %3217, i64* %RCX.i2175, align 8
  %3218 = lshr i64 %3217, 63
  %3219 = add i64 %3217, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %3219, i64* %RAX.i2177.pre-phi, align 8
  %3220 = icmp ult i64 %3219, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %3221 = icmp ult i64 %3219, %3217
  %3222 = or i1 %3220, %3221
  %3223 = zext i1 %3222 to i8
  store i8 %3223, i8* %14, align 1
  %3224 = trunc i64 %3219 to i32
  %3225 = and i32 %3224, 252
  %3226 = tail call i32 @llvm.ctpop.i32(i32 %3225)
  %3227 = trunc i32 %3226 to i8
  %3228 = and i8 %3227, 1
  %3229 = xor i8 %3228, 1
  store i8 %3229, i8* %21, align 1
  %3230 = xor i64 %3217, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %3231 = xor i64 %3230, %3219
  %3232 = lshr i64 %3231, 4
  %3233 = trunc i64 %3232 to i8
  %3234 = and i8 %3233, 1
  store i8 %3234, i8* %26, align 1
  %3235 = icmp eq i64 %3219, 0
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %29, align 1
  %3237 = lshr i64 %3219, 63
  %3238 = trunc i64 %3237 to i8
  store i8 %3238, i8* %32, align 1
  %3239 = xor i64 %3237, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %3240 = xor i64 %3237, %3218
  %3241 = add nuw nsw i64 %3239, %3240
  %3242 = icmp eq i64 %3241, 2
  %3243 = zext i1 %3242 to i8
  store i8 %3243, i8* %38, align 1
  %3244 = add i64 %3217, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %3245 = add i64 %3210, 28
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3244 to i32*
  %3247 = load i32, i32* %3246, align 4
  store i8 0, i8* %14, align 1
  %3248 = and i32 %3247, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3253 = icmp eq i32 %3247, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %29, align 1
  %3255 = lshr i32 %3247, 31
  %3256 = trunc i32 %3255 to i8
  store i8 %3256, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v288 = select i1 %3253, i64 471, i64 34
  %3257 = add i64 %3210, %.v288
  store i64 %3257, i64* %3, align 8
  br i1 %3253, label %block_.L_486d7c, label %block_486bc7

block_486bc7:                                     ; preds = %block_486ba5
  store i64 0, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RSI.i1962, align 8
  %3258 = add i64 %3257, 7
  store i64 %3258, i64* %3, align 8
  %3259 = load i32, i32* %3214, align 4
  %3260 = zext i32 %3259 to i64
  store i64 %3260, i64* %RDI.i2211, align 8
  %3261 = add i64 %3257, -168071
  %3262 = add i64 %3257, 12
  %3263 = load i64, i64* %6, align 8
  %3264 = add i64 %3263, -8
  %3265 = inttoptr i64 %3264 to i64*
  store i64 %3262, i64* %3265, align 8
  store i64 %3264, i64* %6, align 8
  store i64 %3261, i64* %3, align 8
  %call2_486bce = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %3261, %struct.Memory* %MEMORY.33)
  %3266 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i1962, align 8
  %3267 = load i64, i64* %RBP.i, align 8
  %3268 = add i64 %3267, -1664
  %3269 = load i32, i32* %EAX.i2208, align 4
  %3270 = add i64 %3266, 16
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3268 to i32*
  store i32 %3269, i32* %3271, align 4
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -1664
  %3274 = load i64, i64* %3, align 8
  %3275 = add i64 %3274, 6
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3273 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RAX.i2177.pre-phi, align 8
  %3279 = add i64 %3272, -44
  %3280 = add i64 %3274, 10
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i32*
  %3282 = load i32, i32* %3281, align 4
  %3283 = sext i32 %3282 to i64
  %3284 = mul nsw i64 %3283, 380
  store i64 %3284, i64* %RCX.i2175, align 8
  %3285 = lshr i64 %3284, 63
  %3286 = load i64, i64* %RSI.i1962, align 8
  %3287 = add i64 %3284, %3286
  store i64 %3287, i64* %RSI.i1962, align 8
  %3288 = icmp ult i64 %3287, %3286
  %3289 = icmp ult i64 %3287, %3284
  %3290 = or i1 %3288, %3289
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %14, align 1
  %3292 = trunc i64 %3287 to i32
  %3293 = and i32 %3292, 255
  %3294 = tail call i32 @llvm.ctpop.i32(i32 %3293)
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  %3297 = xor i8 %3296, 1
  store i8 %3297, i8* %21, align 1
  %3298 = xor i64 %3284, %3286
  %3299 = xor i64 %3298, %3287
  %3300 = lshr i64 %3299, 4
  %3301 = trunc i64 %3300 to i8
  %3302 = and i8 %3301, 1
  store i8 %3302, i8* %26, align 1
  %3303 = icmp eq i64 %3287, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %29, align 1
  %3305 = lshr i64 %3287, 63
  %3306 = trunc i64 %3305 to i8
  store i8 %3306, i8* %32, align 1
  %3307 = lshr i64 %3286, 63
  %3308 = xor i64 %3305, %3307
  %3309 = xor i64 %3305, %3285
  %3310 = add nuw nsw i64 %3308, %3309
  %3311 = icmp eq i64 %3310, 2
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %38, align 1
  %3313 = add i64 %3287, 100
  %3314 = add i64 %3274, 23
  store i64 %3314, i64* %3, align 8
  %3315 = inttoptr i64 %3313 to i32*
  %3316 = load i32, i32* %3315, align 4
  %3317 = sub i32 %3277, %3316
  %3318 = icmp ult i32 %3277, %3316
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %14, align 1
  %3320 = and i32 %3317, 255
  %3321 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %21, align 1
  %3325 = xor i32 %3316, %3277
  %3326 = xor i32 %3325, %3317
  %3327 = lshr i32 %3326, 4
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  store i8 %3329, i8* %26, align 1
  %3330 = icmp eq i32 %3317, 0
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %29, align 1
  %3332 = lshr i32 %3317, 31
  %3333 = trunc i32 %3332 to i8
  store i8 %3333, i8* %32, align 1
  %3334 = lshr i32 %3277, 31
  %3335 = lshr i32 %3316, 31
  %3336 = xor i32 %3335, %3334
  %3337 = xor i32 %3332, %3334
  %3338 = add nuw nsw i32 %3337, %3336
  %3339 = icmp eq i32 %3338, 2
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %38, align 1
  %3341 = icmp ne i8 %3333, 0
  %3342 = xor i1 %3341, %3339
  %.v289 = select i1 %3342, i64 29, i64 404
  %3343 = add i64 %3274, %.v289
  store i64 %3343, i64* %3, align 8
  br i1 %3342, label %block_486c00, label %block_.L_486d77

block_486c00:                                     ; preds = %block_486bc7
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %3344 = load i64, i64* %RBP.i, align 8
  %3345 = add i64 %3344, -1668
  %3346 = add i64 %3343, 20
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i32*
  store i32 1, i32* %3347, align 4
  %3348 = load i64, i64* %RBP.i, align 8
  %3349 = add i64 %3348, -44
  %3350 = load i64, i64* %3, align 8
  %3351 = add i64 %3350, 4
  store i64 %3351, i64* %3, align 8
  %3352 = inttoptr i64 %3349 to i32*
  %3353 = load i32, i32* %3352, align 4
  %3354 = sext i32 %3353 to i64
  %3355 = mul nsw i64 %3354, 380
  store i64 %3355, i64* %RCX.i2175, align 8
  %3356 = lshr i64 %3355, 63
  %3357 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %3358 = add i64 %3355, %3357
  store i64 %3358, i64* %RAX.i2177.pre-phi, align 8
  %3359 = icmp ult i64 %3358, %3357
  %3360 = icmp ult i64 %3358, %3355
  %3361 = or i1 %3359, %3360
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %14, align 1
  %3363 = trunc i64 %3358 to i32
  %3364 = and i32 %3363, 255
  %3365 = tail call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  store i8 %3368, i8* %21, align 1
  %3369 = xor i64 %3355, %3357
  %3370 = xor i64 %3369, %3358
  %3371 = lshr i64 %3370, 4
  %3372 = trunc i64 %3371 to i8
  %3373 = and i8 %3372, 1
  store i8 %3373, i8* %26, align 1
  %3374 = icmp eq i64 %3358, 0
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %29, align 1
  %3376 = lshr i64 %3358, 63
  %3377 = trunc i64 %3376 to i8
  store i8 %3377, i8* %32, align 1
  %3378 = lshr i64 %3357, 63
  %3379 = xor i64 %3376, %3378
  %3380 = xor i64 %3376, %3356
  %3381 = add nuw nsw i64 %3379, %3380
  %3382 = icmp eq i64 %3381, 2
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %38, align 1
  %3384 = add i64 %3358, 100
  %3385 = add i64 %3350, 18
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to i32*
  %3387 = load i32, i32* %3386, align 4
  store i8 0, i8* %14, align 1
  %3388 = and i32 %3387, 255
  %3389 = tail call i32 @llvm.ctpop.i32(i32 %3388)
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = xor i8 %3391, 1
  store i8 %3392, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3393 = icmp eq i32 %3387, 0
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %29, align 1
  %3395 = lshr i32 %3387, 31
  %3396 = trunc i32 %3395 to i8
  store i8 %3396, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v290 = select i1 %3393, i64 245, i64 24
  %3397 = add i64 %3350, %.v290
  store i64 %3397, i64* %3, align 8
  br i1 %3393, label %block_.L_486d09, label %block_486c2c

block_486c2c:                                     ; preds = %block_486c00
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i1945, align 8
  store i64 0, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 3, i64* %RCX.i2175, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i1962, align 8
  %3398 = add i64 %3397, 31
  store i64 %3398, i64* %3, align 8
  %3399 = load i32, i32* %3352, align 4
  %3400 = sext i32 %3399 to i64
  %3401 = mul nsw i64 %3400, 380
  store i64 %3401, i64* %RDI.i2211, align 8
  %3402 = lshr i64 %3401, 63
  %3403 = add i64 %3401, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %3403, i64* %RSI.i1962, align 8
  %3404 = icmp ult i64 %3403, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %3405 = icmp ult i64 %3403, %3401
  %3406 = or i1 %3404, %3405
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %14, align 1
  %3408 = trunc i64 %3403 to i32
  %3409 = and i32 %3408, 252
  %3410 = tail call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  store i8 %3413, i8* %21, align 1
  %3414 = xor i64 %3401, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %3415 = xor i64 %3414, %3403
  %3416 = lshr i64 %3415, 4
  %3417 = trunc i64 %3416 to i8
  %3418 = and i8 %3417, 1
  store i8 %3418, i8* %26, align 1
  %3419 = icmp eq i64 %3403, 0
  %3420 = zext i1 %3419 to i8
  store i8 %3420, i8* %29, align 1
  %3421 = lshr i64 %3403, 63
  %3422 = trunc i64 %3421 to i8
  store i8 %3422, i8* %32, align 1
  %3423 = xor i64 %3421, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %3424 = xor i64 %3421, %3402
  %3425 = add nuw nsw i64 %3423, %3424
  %3426 = icmp eq i64 %3425, 2
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %38, align 1
  %3428 = add i64 %3401, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %3429 = add i64 %3397, 44
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3428 to i32*
  %3431 = load i32, i32* %3430, align 4
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RDI.i2211, align 8
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -40
  %3435 = add i64 %3397, 47
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i32*
  %3437 = load i32, i32* %3436, align 4
  %3438 = sub i32 3, %3437
  %3439 = zext i32 %3438 to i64
  %3440 = icmp ugt i32 %3437, 3
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %14, align 1
  %3442 = and i32 %3438, 255
  %3443 = tail call i32 @llvm.ctpop.i32(i32 %3442)
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  %3446 = xor i8 %3445, 1
  store i8 %3446, i8* %21, align 1
  %3447 = xor i32 %3437, %3438
  %3448 = lshr i32 %3447, 4
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  store i8 %3450, i8* %26, align 1
  %3451 = icmp eq i32 %3438, 0
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %29, align 1
  %3453 = lshr i32 %3438, 31
  %3454 = trunc i32 %3453 to i8
  store i8 %3454, i8* %32, align 1
  %3455 = lshr i32 %3437, 31
  %3456 = add nuw nsw i32 %3453, %3455
  %3457 = icmp eq i32 %3456, 2
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %38, align 1
  store i64 %3439, i64* %RSI.i1962, align 8
  %3459 = load i32, i32* %EAX.i2208, align 4
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RCX.i2175, align 8
  store i64 %3460, i64* %R8.i2141.pre-phi, align 8
  store i64 %3460, i64* %R9.i1806, align 8
  %3461 = add i64 %3397, -515580
  %3462 = add i64 %3397, 62
  %3463 = load i64, i64* %6, align 8
  %3464 = add i64 %3463, -8
  %3465 = inttoptr i64 %3464 to i64*
  store i64 %3462, i64* %3465, align 8
  store i64 %3464, i64* %6, align 8
  store i64 %3461, i64* %3, align 8
  %call2_486c65 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %3461, %struct.Memory* %MEMORY.33)
  %3466 = load i32, i32* %EAX.i2208, align 4
  %3467 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3468 = and i32 %3466, 255
  %3469 = tail call i32 @llvm.ctpop.i32(i32 %3468)
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  store i8 %3472, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3473 = icmp eq i32 %3466, 0
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %29, align 1
  %3475 = lshr i32 %3466, 31
  %3476 = trunc i32 %3475 to i8
  store i8 %3476, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v291 = select i1 %3473, i64 159, i64 9
  %3477 = add i64 %3467, %.v291
  store i64 %3477, i64* %3, align 8
  br i1 %3473, label %block_.L_486d09, label %block_486c73

block_486c73:                                     ; preds = %block_486c2c
  %3478 = load i64, i64* %RBP.i, align 8
  %3479 = add i64 %3478, -44
  %3480 = add i64 %3477, 4
  store i64 %3480, i64* %3, align 8
  %3481 = inttoptr i64 %3479 to i32*
  %3482 = load i32, i32* %3481, align 4
  %3483 = sext i32 %3482 to i64
  store i64 %3483, i64* %RAX.i2177.pre-phi, align 8
  %3484 = add nsw i64 %3483, 12099168
  %3485 = add i64 %3477, 12
  store i64 %3485, i64* %3, align 8
  %3486 = inttoptr i64 %3484 to i8*
  %3487 = load i8, i8* %3486, align 1
  %3488 = zext i8 %3487 to i64
  store i64 %3488, i64* %RCX.i2175, align 8
  %3489 = zext i8 %3487 to i32
  store i8 0, i8* %14, align 1
  %3490 = tail call i32 @llvm.ctpop.i32(i32 %3489)
  %3491 = trunc i32 %3490 to i8
  %3492 = and i8 %3491, 1
  %3493 = xor i8 %3492, 1
  store i8 %3493, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3494 = icmp eq i8 %3487, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v292 = select i1 %3494, i64 21, i64 36
  %3496 = add i64 %3477, %.v292
  store i64 %3496, i64* %3, align 8
  br i1 %3494, label %block_486c88, label %block_.L_486c97

block_486c88:                                     ; preds = %block_486c73
  %3497 = add i64 %3478, -1672
  %3498 = add i64 %3496, 10
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  store i32 5, i32* %3499, align 4
  %3500 = load i64, i64* %3, align 8
  %3501 = add i64 %3500, 30
  store i64 %3501, i64* %3, align 8
  br label %block_.L_486cb0

block_.L_486c97:                                  ; preds = %block_486c73
  %3502 = zext i32 %3482 to i64
  %3503 = xor i64 %3502, %3483
  %3504 = trunc i64 %3503 to i32
  %3505 = and i64 %3503, 4294967295
  store i64 %3505, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  %3506 = and i32 %3504, 255
  %3507 = tail call i32 @llvm.ctpop.i32(i32 %3506)
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  store i8 %3510, i8* %21, align 1
  %3511 = icmp eq i32 %3504, 0
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %29, align 1
  %3513 = lshr i32 %3504, 31
  %3514 = trunc i32 %3513 to i8
  store i8 %3514, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3515 = and i64 %3503, 4294967295
  store i64 %3515, i64* %RSI.i1962, align 8
  %3516 = add i64 %3496, 7
  store i64 %3516, i64* %3, align 8
  %3517 = load i32, i32* %3481, align 4
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RDI.i2211, align 8
  %3519 = add i64 %3496, -115991
  %3520 = add i64 %3496, 12
  %3521 = load i64, i64* %6, align 8
  %3522 = add i64 %3521, -8
  %3523 = inttoptr i64 %3522 to i64*
  store i64 %3520, i64* %3523, align 8
  store i64 %3522, i64* %6, align 8
  store i64 %3519, i64* %3, align 8
  %call2_486c9e = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %3519, %struct.Memory* %MEMORY.33)
  %3524 = load i64, i64* %3, align 8
  %3525 = load i32, i32* %EAX.i2208, align 4
  %3526 = sub i32 5, %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %RDI.i2211, align 8
  %3528 = icmp ugt i32 %3525, 5
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %14, align 1
  %3530 = and i32 %3526, 255
  %3531 = tail call i32 @llvm.ctpop.i32(i32 %3530)
  %3532 = trunc i32 %3531 to i8
  %3533 = and i8 %3532, 1
  %3534 = xor i8 %3533, 1
  store i8 %3534, i8* %21, align 1
  %3535 = xor i32 %3526, %3525
  %3536 = lshr i32 %3535, 4
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  store i8 %3538, i8* %26, align 1
  %3539 = icmp eq i32 %3526, 0
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %29, align 1
  %3541 = lshr i32 %3526, 31
  %3542 = trunc i32 %3541 to i8
  store i8 %3542, i8* %32, align 1
  %3543 = lshr i32 %3525, 31
  %3544 = add nuw nsw i32 %3541, %3543
  %3545 = icmp eq i32 %3544, 2
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %38, align 1
  %3547 = load i64, i64* %RBP.i, align 8
  %3548 = add i64 %3547, -1672
  %3549 = add i64 %3524, 13
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i32*
  store i32 %3526, i32* %3550, align 4
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_486cb0

block_.L_486cb0:                                  ; preds = %block_.L_486c97, %block_486c88
  %3551 = phi i64 [ %.pre189, %block_.L_486c97 ], [ %3501, %block_486c88 ]
  %3552 = load i64, i64* %RBP.i, align 8
  %3553 = add i64 %3552, -1672
  %3554 = add i64 %3551, 6
  store i64 %3554, i64* %3, align 8
  %3555 = inttoptr i64 %3553 to i32*
  %3556 = load i32, i32* %3555, align 4
  %3557 = zext i32 %3556 to i64
  store i64 %3557, i64* %RAX.i2177.pre-phi, align 8
  %3558 = add i64 %3552, -1664
  %3559 = add i64 %3551, 12
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  %3561 = load i32, i32* %3560, align 4
  %3562 = sub i32 %3556, %3561
  %3563 = icmp ult i32 %3556, %3561
  %3564 = zext i1 %3563 to i8
  store i8 %3564, i8* %14, align 1
  %3565 = and i32 %3562, 255
  %3566 = tail call i32 @llvm.ctpop.i32(i32 %3565)
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  %3569 = xor i8 %3568, 1
  store i8 %3569, i8* %21, align 1
  %3570 = xor i32 %3561, %3556
  %3571 = xor i32 %3570, %3562
  %3572 = lshr i32 %3571, 4
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  store i8 %3574, i8* %26, align 1
  %3575 = icmp eq i32 %3562, 0
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %29, align 1
  %3577 = lshr i32 %3562, 31
  %3578 = trunc i32 %3577 to i8
  store i8 %3578, i8* %32, align 1
  %3579 = lshr i32 %3556, 31
  %3580 = lshr i32 %3561, 31
  %3581 = xor i32 %3580, %3579
  %3582 = xor i32 %3577, %3579
  %3583 = add nuw nsw i32 %3582, %3581
  %3584 = icmp eq i32 %3583, 2
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %38, align 1
  %3586 = icmp ne i8 %3578, 0
  %3587 = xor i1 %3586, %3584
  %3588 = or i1 %3575, %3587
  %.v293 = select i1 %3588, i64 84, i64 18
  %3589 = add i64 %3551, %.v293
  store i64 %3589, i64* %3, align 8
  br i1 %3588, label %block_.L_486d04, label %block_486cc2

block_486cc2:                                     ; preds = %block_.L_486cb0
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %3590 = add i64 %3589, 16
  store i64 %3590, i64* %3, align 8
  %3591 = load i32, i32* %3555, align 4
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RCX.i2175, align 8
  %3593 = add i64 %3589, 22
  store i64 %3593, i64* %3, align 8
  store i32 %3591, i32* %3560, align 4
  %3594 = load i64, i64* %RBP.i, align 8
  %3595 = add i64 %3594, -1664
  %3596 = load i64, i64* %3, align 8
  %3597 = add i64 %3596, 6
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3595 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RCX.i2175, align 8
  %3601 = add i64 %3594, -44
  %3602 = add i64 %3596, 10
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = sext i32 %3604 to i64
  %3606 = mul nsw i64 %3605, 380
  store i64 %3606, i64* %RDX.i1945, align 8
  %3607 = lshr i64 %3606, 63
  %3608 = load i64, i64* %RAX.i2177.pre-phi, align 8
  %3609 = add i64 %3606, %3608
  store i64 %3609, i64* %RAX.i2177.pre-phi, align 8
  %3610 = icmp ult i64 %3609, %3608
  %3611 = icmp ult i64 %3609, %3606
  %3612 = or i1 %3610, %3611
  %3613 = zext i1 %3612 to i8
  store i8 %3613, i8* %14, align 1
  %3614 = trunc i64 %3609 to i32
  %3615 = and i32 %3614, 255
  %3616 = tail call i32 @llvm.ctpop.i32(i32 %3615)
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = xor i8 %3618, 1
  store i8 %3619, i8* %21, align 1
  %3620 = xor i64 %3606, %3608
  %3621 = xor i64 %3620, %3609
  %3622 = lshr i64 %3621, 4
  %3623 = trunc i64 %3622 to i8
  %3624 = and i8 %3623, 1
  store i8 %3624, i8* %26, align 1
  %3625 = icmp eq i64 %3609, 0
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %29, align 1
  %3627 = lshr i64 %3609, 63
  %3628 = trunc i64 %3627 to i8
  store i8 %3628, i8* %32, align 1
  %3629 = lshr i64 %3608, 63
  %3630 = xor i64 %3627, %3629
  %3631 = xor i64 %3627, %3607
  %3632 = add nuw nsw i64 %3630, %3631
  %3633 = icmp eq i64 %3632, 2
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %38, align 1
  %3635 = add i64 %3609, 100
  %3636 = add i64 %3596, 23
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = sub i32 %3599, %3638
  %3640 = icmp ult i32 %3599, %3638
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %14, align 1
  %3642 = and i32 %3639, 255
  %3643 = tail call i32 @llvm.ctpop.i32(i32 %3642)
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = xor i8 %3645, 1
  store i8 %3646, i8* %21, align 1
  %3647 = xor i32 %3638, %3599
  %3648 = xor i32 %3647, %3639
  %3649 = lshr i32 %3648, 4
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  store i8 %3651, i8* %26, align 1
  %3652 = icmp eq i32 %3639, 0
  %3653 = zext i1 %3652 to i8
  store i8 %3653, i8* %29, align 1
  %3654 = lshr i32 %3639, 31
  %3655 = trunc i32 %3654 to i8
  store i8 %3655, i8* %32, align 1
  %3656 = lshr i32 %3599, 31
  %3657 = lshr i32 %3638, 31
  %3658 = xor i32 %3657, %3656
  %3659 = xor i32 %3654, %3656
  %3660 = add nuw nsw i32 %3659, %3658
  %3661 = icmp eq i32 %3660, 2
  %3662 = zext i1 %3661 to i8
  store i8 %3662, i8* %38, align 1
  %3663 = icmp ne i8 %3655, 0
  %3664 = xor i1 %3663, %3661
  %.v294 = select i1 %3664, i64 39, i64 29
  %3665 = add i64 %3596, %.v294
  store i64 %3665, i64* %3, align 8
  br i1 %3664, label %block_.L_486cff, label %block_486cf5

block_486cf5:                                     ; preds = %block_486cc2
  %3666 = load i64, i64* %RBP.i, align 8
  %3667 = add i64 %3666, -1668
  %3668 = add i64 %3665, 10
  store i64 %3668, i64* %3, align 8
  %3669 = inttoptr i64 %3667 to i32*
  store i32 0, i32* %3669, align 4
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_486cff

block_.L_486cff:                                  ; preds = %block_486cf5, %block_486cc2
  %3670 = phi i64 [ %.pre190, %block_486cf5 ], [ %3665, %block_486cc2 ]
  %3671 = add i64 %3670, 5
  store i64 %3671, i64* %3, align 8
  br label %block_.L_486d04

block_.L_486d04:                                  ; preds = %block_.L_486cff, %block_.L_486cb0
  %3672 = phi i64 [ %3671, %block_.L_486cff ], [ %3589, %block_.L_486cb0 ]
  %3673 = add i64 %3672, -495524
  %3674 = add i64 %3672, 5
  %3675 = load i64, i64* %6, align 8
  %3676 = add i64 %3675, -8
  %3677 = inttoptr i64 %3676 to i64*
  store i64 %3674, i64* %3677, align 8
  store i64 %3676, i64* %6, align 8
  store i64 %3673, i64* %3, align 8
  %call2_486d04 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3673, %struct.Memory* %MEMORY.33)
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_486d09

block_.L_486d09:                                  ; preds = %block_.L_486d04, %block_486c2c, %block_486c00
  %3678 = phi i64 [ %3397, %block_486c00 ], [ %3477, %block_486c2c ], [ %.pre191, %block_.L_486d04 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.33, %block_486c00 ], [ %MEMORY.33, %block_486c2c ], [ %call2_486d04, %block_.L_486d04 ]
  %3679 = load i64, i64* %RBP.i, align 8
  %3680 = add i64 %3679, -1668
  %3681 = add i64 %3678, 7
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  %3683 = load i32, i32* %3682, align 4
  store i8 0, i8* %14, align 1
  %3684 = and i32 %3683, 255
  %3685 = tail call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  store i8 %3688, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3689 = icmp eq i32 %3683, 0
  %3690 = zext i1 %3689 to i8
  store i8 %3690, i8* %29, align 1
  %3691 = lshr i32 %3683, 31
  %3692 = trunc i32 %3691 to i8
  store i8 %3692, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v295 = select i1 %3689, i64 105, i64 13
  %3693 = add i64 %3678, %.v295
  store i64 %3693, i64* %3, align 8
  br i1 %3689, label %block_.L_486d72, label %block_486d16

block_486d16:                                     ; preds = %block_.L_486d09
  %3694 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3695 = and i32 %3694, 1024
  %3696 = zext i32 %3695 to i64
  store i64 %3696, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit219 = lshr exact i32 %3695, 10
  %3697 = trunc i32 %.lobit219 to i8
  %3698 = xor i8 %3697, 1
  store i8 %3698, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3699 = icmp eq i8 %3698, 0
  %.v296 = select i1 %3699, i64 26, i64 21
  %3700 = add i64 %3693, %.v296
  store i64 %3700, i64* %3, align 8
  br i1 %3699, label %block_.L_486d30, label %block_486d2b

block_486d2b:                                     ; preds = %block_486d16
  %3701 = add i64 %3700, 47
  store i64 %3701, i64* %3, align 8
  br label %block_.L_486d5a

block_.L_486d30:                                  ; preds = %block_486d16
  store i64 ptrtoint (%G__0x582fa9_type* @G__0x582fa9 to i64), i64* %RDI.i2211, align 8
  store i64 5, i64* %RAX.i2177.pre-phi, align 8
  %3702 = add i64 %3679, -44
  %3703 = add i64 %3700, 18
  store i64 %3703, i64* %3, align 8
  %3704 = inttoptr i64 %3702 to i32*
  %3705 = load i32, i32* %3704, align 4
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RSI.i1962, align 8
  %3707 = add i64 %3679, -4
  %3708 = add i64 %3700, 21
  store i64 %3708, i64* %3, align 8
  %3709 = inttoptr i64 %3707 to i32*
  %3710 = load i32, i32* %3709, align 4
  %3711 = zext i32 %3710 to i64
  store i64 %3711, i64* %RDX.i1945, align 8
  %3712 = add i64 %3679, -1664
  %3713 = add i64 %3700, 27
  store i64 %3713, i64* %3, align 8
  %3714 = inttoptr i64 %3712 to i32*
  %3715 = load i32, i32* %3714, align 4
  %3716 = sub i32 5, %3715
  %3717 = zext i32 %3716 to i64
  store i64 %3717, i64* %RAX.i2177.pre-phi, align 8
  %3718 = icmp ugt i32 %3715, 5
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %14, align 1
  %3720 = and i32 %3716, 255
  %3721 = tail call i32 @llvm.ctpop.i32(i32 %3720)
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  %3724 = xor i8 %3723, 1
  store i8 %3724, i8* %21, align 1
  %3725 = xor i32 %3715, %3716
  %3726 = lshr i32 %3725, 4
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  store i8 %3728, i8* %26, align 1
  %3729 = icmp eq i32 %3716, 0
  %3730 = zext i1 %3729 to i8
  store i8 %3730, i8* %29, align 1
  %3731 = lshr i32 %3716, 31
  %3732 = trunc i32 %3731 to i8
  store i8 %3732, i8* %32, align 1
  %3733 = lshr i32 %3715, 31
  %3734 = add nuw nsw i32 %3731, %3733
  %3735 = icmp eq i32 %3734, 2
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %38, align 1
  store i64 %3717, i64* %RCX.i2175, align 8
  store i8 0, i8* %AL.i1656, align 1
  %3737 = add i64 %3700, -216960
  %3738 = add i64 %3700, 36
  %3739 = load i64, i64* %6, align 8
  %3740 = add i64 %3739, -8
  %3741 = inttoptr i64 %3740 to i64*
  store i64 %3738, i64* %3741, align 8
  store i64 %3740, i64* %6, align 8
  store i64 %3737, i64* %3, align 8
  %call2_486d4f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3737, %struct.Memory* %MEMORY.46)
  %3742 = load i64, i64* %RBP.i, align 8
  %3743 = add i64 %3742, -1720
  %3744 = load i32, i32* %EAX.i2208, align 4
  %3745 = load i64, i64* %3, align 8
  %3746 = add i64 %3745, 6
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3743 to i32*
  store i32 %3744, i32* %3747, align 4
  %.pre192 = load i64, i64* %3, align 8
  %.pre193 = load i64, i64* %RBP.i, align 8
  br label %block_.L_486d5a

block_.L_486d5a:                                  ; preds = %block_.L_486d30, %block_486d2b
  %3748 = phi i64 [ %.pre193, %block_.L_486d30 ], [ %3679, %block_486d2b ]
  %3749 = phi i64 [ %.pre192, %block_.L_486d30 ], [ %3701, %block_486d2b ]
  %MEMORY.47 = phi %struct.Memory* [ %call2_486d4f, %block_.L_486d30 ], [ %MEMORY.46, %block_486d2b ]
  store i64 5, i64* %RAX.i2177.pre-phi, align 8
  %3750 = add i64 %3748, -44
  %3751 = add i64 %3749, 8
  store i64 %3751, i64* %3, align 8
  %3752 = inttoptr i64 %3750 to i32*
  %3753 = load i32, i32* %3752, align 4
  %3754 = zext i32 %3753 to i64
  store i64 %3754, i64* %RDI.i2211, align 8
  %3755 = add i64 %3748, -4
  %3756 = add i64 %3749, 11
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  %3759 = zext i32 %3758 to i64
  store i64 %3759, i64* %RSI.i1962, align 8
  %3760 = add i64 %3748, -1664
  %3761 = add i64 %3749, 17
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3760 to i32*
  %3763 = load i32, i32* %3762, align 4
  %3764 = sub i32 5, %3763
  %3765 = zext i32 %3764 to i64
  store i64 %3765, i64* %RAX.i2177.pre-phi, align 8
  %3766 = icmp ugt i32 %3763, 5
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %14, align 1
  %3768 = and i32 %3764, 255
  %3769 = tail call i32 @llvm.ctpop.i32(i32 %3768)
  %3770 = trunc i32 %3769 to i8
  %3771 = and i8 %3770, 1
  %3772 = xor i8 %3771, 1
  store i8 %3772, i8* %21, align 1
  %3773 = xor i32 %3763, %3764
  %3774 = lshr i32 %3773, 4
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  store i8 %3776, i8* %26, align 1
  %3777 = icmp eq i32 %3764, 0
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %29, align 1
  %3779 = lshr i32 %3764, 31
  %3780 = trunc i32 %3779 to i8
  store i8 %3780, i8* %32, align 1
  %3781 = lshr i32 %3763, 31
  %3782 = add nuw nsw i32 %3779, %3781
  %3783 = icmp eq i32 %3782, 2
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %38, align 1
  store i64 %3765, i64* %RDX.i1945, align 8
  %3785 = add i64 %3749, 6822
  %3786 = add i64 %3749, 24
  %3787 = load i64, i64* %6, align 8
  %3788 = add i64 %3787, -8
  %3789 = inttoptr i64 %3788 to i64*
  store i64 %3786, i64* %3789, align 8
  store i64 %3788, i64* %6, align 8
  store i64 %3785, i64* %3, align 8
  %call2_486d6d = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %3785, %struct.Memory* %MEMORY.47)
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_486d72

block_.L_486d72:                                  ; preds = %block_.L_486d5a, %block_.L_486d09
  %3790 = phi i64 [ %3693, %block_.L_486d09 ], [ %.pre194, %block_.L_486d5a ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.46, %block_.L_486d09 ], [ %call2_486d6d, %block_.L_486d5a ]
  %3791 = add i64 %3790, 5
  store i64 %3791, i64* %3, align 8
  br label %block_.L_486d77

block_.L_486d77:                                  ; preds = %block_486bc7, %block_.L_486d72
  %3792 = phi i64 [ %3343, %block_486bc7 ], [ %3791, %block_.L_486d72 ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.33, %block_486bc7 ], [ %MEMORY.48, %block_.L_486d72 ]
  %3793 = add i64 %3792, 5
  store i64 %3793, i64* %3, align 8
  br label %block_.L_486d7c

block_.L_486d7c:                                  ; preds = %block_.L_486b82, %block_.L_486d77, %block_486ba5
  %3794 = phi i64 [ %3210, %block_.L_486b82 ], [ %3257, %block_486ba5 ], [ %3793, %block_.L_486d77 ]
  %MEMORY.50 = phi %struct.Memory* [ %MEMORY.33, %block_.L_486b82 ], [ %MEMORY.33, %block_486ba5 ], [ %MEMORY.49, %block_.L_486d77 ]
  %3795 = add i64 %3794, 5
  store i64 %3795, i64* %3, align 8
  br label %block_.L_486d81

block_.L_486d81:                                  ; preds = %block_.L_486d7c, %block_.L_486b7d
  %storemerge117 = phi i64 [ %3143, %block_.L_486b7d ], [ %3795, %block_.L_486d7c ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.41, %block_.L_486b7d ], [ %MEMORY.50, %block_.L_486d7c ]
  %3796 = add i64 %storemerge117, 5
  store i64 %3796, i64* %3, align 8
  br label %block_.L_486d86

block_.L_486d86:                                  ; preds = %block_.L_486d81, %block_.L_48696f
  %storemerge115 = phi i64 [ %2483, %block_.L_48696f ], [ %3796, %block_.L_486d81 ]
  %MEMORY.52 = phi %struct.Memory* [ %MEMORY.33, %block_.L_48696f ], [ %MEMORY.51, %block_.L_486d81 ]
  %3797 = load i64, i64* %RBP.i, align 8
  %3798 = add i64 %3797, -44
  %3799 = add i64 %storemerge115, 3
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  %3801 = load i32, i32* %3800, align 4
  %3802 = add i32 %3801, 1
  %3803 = zext i32 %3802 to i64
  store i64 %3803, i64* %RAX.i2177.pre-phi, align 8
  %3804 = icmp eq i32 %3801, -1
  %3805 = icmp eq i32 %3802, 0
  %3806 = or i1 %3804, %3805
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %14, align 1
  %3808 = and i32 %3802, 255
  %3809 = tail call i32 @llvm.ctpop.i32(i32 %3808)
  %3810 = trunc i32 %3809 to i8
  %3811 = and i8 %3810, 1
  %3812 = xor i8 %3811, 1
  store i8 %3812, i8* %21, align 1
  %3813 = xor i32 %3802, %3801
  %3814 = lshr i32 %3813, 4
  %3815 = trunc i32 %3814 to i8
  %3816 = and i8 %3815, 1
  store i8 %3816, i8* %26, align 1
  %3817 = zext i1 %3805 to i8
  store i8 %3817, i8* %29, align 1
  %3818 = lshr i32 %3802, 31
  %3819 = trunc i32 %3818 to i8
  store i8 %3819, i8* %32, align 1
  %3820 = lshr i32 %3801, 31
  %3821 = xor i32 %3818, %3820
  %3822 = add nuw nsw i32 %3821, %3818
  %3823 = icmp eq i32 %3822, 2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %38, align 1
  %3825 = add i64 %storemerge115, 9
  store i64 %3825, i64* %3, align 8
  store i32 %3802, i32* %3800, align 4
  %3826 = load i64, i64* %3, align 8
  %3827 = add i64 %3826, -1131
  store i64 %3827, i64* %3, align 8
  br label %block_.L_486924

block_.L_486d94:                                  ; preds = %block_.L_486924
  %3828 = add i64 %2405, -63700
  %3829 = add i64 %2405, 5
  %3830 = load i64, i64* %6, align 8
  %3831 = add i64 %3830, -8
  %3832 = inttoptr i64 %3831 to i64*
  store i64 %3829, i64* %3832, align 8
  store i64 %3831, i64* %6, align 8
  store i64 %3828, i64* %3, align 8
  %call2_486d94 = tail call %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* nonnull %0, i64 %3828, %struct.Memory* %MEMORY.33)
  %3833 = load i64, i64* %3, align 8
  %3834 = add i64 %3833, -495673
  %3835 = add i64 %3833, 5
  %3836 = load i64, i64* %6, align 8
  %3837 = add i64 %3836, -8
  %3838 = inttoptr i64 %3837 to i64*
  store i64 %3835, i64* %3838, align 8
  store i64 %3837, i64* %6, align 8
  store i64 %3834, i64* %3, align 8
  %call2_486d99 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3834, %struct.Memory* %call2_486d94)
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_486d9e

block_.L_486d9e:                                  ; preds = %block_.L_486d94, %block_4868df, %block_4868b2
  %3839 = phi i64 [ %.pre182, %block_.L_486d94 ], [ %2338, %block_4868df ], [ %2300, %block_4868b2 ]
  %MEMORY.53 = phi %struct.Memory* [ %call2_486d99, %block_.L_486d94 ], [ %MEMORY.31, %block_4868df ], [ %MEMORY.31, %block_4868b2 ]
  %3840 = load i64, i64* %RBP.i, align 8
  %3841 = add i64 %3840, -40
  %3842 = add i64 %3839, 3
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = add i32 %3844, 1
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RAX.i2177.pre-phi, align 8
  %3847 = icmp eq i32 %3844, -1
  %3848 = icmp eq i32 %3845, 0
  %3849 = or i1 %3847, %3848
  %3850 = zext i1 %3849 to i8
  store i8 %3850, i8* %14, align 1
  %3851 = and i32 %3845, 255
  %3852 = tail call i32 @llvm.ctpop.i32(i32 %3851)
  %3853 = trunc i32 %3852 to i8
  %3854 = and i8 %3853, 1
  %3855 = xor i8 %3854, 1
  store i8 %3855, i8* %21, align 1
  %3856 = xor i32 %3845, %3844
  %3857 = lshr i32 %3856, 4
  %3858 = trunc i32 %3857 to i8
  %3859 = and i8 %3858, 1
  store i8 %3859, i8* %26, align 1
  %3860 = zext i1 %3848 to i8
  store i8 %3860, i8* %29, align 1
  %3861 = lshr i32 %3845, 31
  %3862 = trunc i32 %3861 to i8
  store i8 %3862, i8* %32, align 1
  %3863 = lshr i32 %3844, 31
  %3864 = xor i32 %3861, %3863
  %3865 = add nuw nsw i32 %3864, %3861
  %3866 = icmp eq i32 %3865, 2
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %38, align 1
  %3868 = add i64 %3839, 9
  store i64 %3868, i64* %3, align 8
  store i32 %3845, i32* %3843, align 4
  %3869 = load i64, i64* %3, align 8
  %3870 = add i64 %3869, -1302
  store i64 %3870, i64* %3, align 8
  br label %block_.L_486891

block_.L_486dac:                                  ; preds = %block_.L_486891
  %3871 = add i64 %2273, 5
  store i64 %3871, i64* %3, align 8
  br label %block_.L_486db1

block_.L_486db1:                                  ; preds = %block_.L_486dac, %block_486885
  %3872 = phi i64 [ %2184, %block_486885 ], [ %2245, %block_.L_486dac ]
  %storemerge113 = phi i64 [ %2240, %block_486885 ], [ %3871, %block_.L_486dac ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.30, %block_486885 ], [ %MEMORY.31, %block_.L_486dac ]
  %3873 = add i64 %3872, -4
  %3874 = add i64 %storemerge113, 3
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3873 to i32*
  %3876 = load i32, i32* %3875, align 4
  %3877 = add i32 %3876, 1
  %3878 = zext i32 %3877 to i64
  store i64 %3878, i64* %RAX.i2177.pre-phi, align 8
  %3879 = icmp eq i32 %3876, -1
  %3880 = icmp eq i32 %3877, 0
  %3881 = or i1 %3879, %3880
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %14, align 1
  %3883 = and i32 %3877, 255
  %3884 = tail call i32 @llvm.ctpop.i32(i32 %3883)
  %3885 = trunc i32 %3884 to i8
  %3886 = and i8 %3885, 1
  %3887 = xor i8 %3886, 1
  store i8 %3887, i8* %21, align 1
  %3888 = xor i32 %3877, %3876
  %3889 = lshr i32 %3888, 4
  %3890 = trunc i32 %3889 to i8
  %3891 = and i8 %3890, 1
  store i8 %3891, i8* %26, align 1
  %3892 = zext i1 %3880 to i8
  store i8 %3892, i8* %29, align 1
  %3893 = lshr i32 %3877, 31
  %3894 = trunc i32 %3893 to i8
  store i8 %3894, i8* %32, align 1
  %3895 = lshr i32 %3876, 31
  %3896 = xor i32 %3893, %3895
  %3897 = add nuw nsw i32 %3896, %3893
  %3898 = icmp eq i32 %3897, 2
  %3899 = zext i1 %3898 to i8
  store i8 %3899, i8* %38, align 1
  %3900 = add i64 %storemerge113, 9
  store i64 %3900, i64* %3, align 8
  store i32 %3877, i32* %3875, align 4
  %3901 = load i64, i64* %3, align 8
  %3902 = add i64 %3901, -1367
  store i64 %3902, i64* %3, align 8
  br label %block_.L_486863

block_.L_486dbf:                                  ; preds = %block_.L_486863
  %3903 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3904 = and i32 %3903, 255
  %3905 = tail call i32 @llvm.ctpop.i32(i32 %3904)
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = xor i8 %3907, 1
  store i8 %3908, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3909 = icmp eq i32 %3903, 0
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %29, align 1
  %3911 = lshr i32 %3903, 31
  %3912 = trunc i32 %3911 to i8
  store i8 %3912, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v231 = select i1 %3909, i64 14, i64 19
  %3913 = add i64 %2213, %.v231
  store i64 %3913, i64* %3, align 8
  br i1 %3909, label %block_486dcd, label %block_.L_486dd2

block_486dcd:                                     ; preds = %block_.L_486dbf
  %3914 = add i64 %3913, 45
  store i64 %3914, i64* %3, align 8
  br label %block_.L_486dfa

block_.L_486dd2:                                  ; preds = %block_.L_486dbf
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 382, i64* %RSI.i1962, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i1945, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  store i64 4294967295, i64* %RCX.i2175, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %3915 = add i64 %3913, -216386
  %3916 = add i64 %3913, 40
  %3917 = load i64, i64* %6, align 8
  %3918 = add i64 %3917, -8
  %3919 = inttoptr i64 %3918 to i64*
  store i64 %3916, i64* %3919, align 8
  store i64 %3918, i64* %6, align 8
  store i64 %3915, i64* %3, align 8
  %call2_486df5 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3915, %struct.Memory* %MEMORY.30)
  %.pre159 = load i64, i64* %RBP.i, align 8
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_486dfa

block_.L_486dfa:                                  ; preds = %block_.L_486dd2, %block_486dcd
  %3920 = phi i64 [ %.pre160, %block_.L_486dd2 ], [ %3914, %block_486dcd ]
  %3921 = phi i64 [ %.pre159, %block_.L_486dd2 ], [ %2184, %block_486dcd ]
  %MEMORY.55 = phi %struct.Memory* [ %call2_486df5, %block_.L_486dd2 ], [ %MEMORY.30, %block_486dcd ]
  %3922 = add i64 %3921, -4
  %3923 = add i64 %3920, 7
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  store i32 21, i32* %3924, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_486e01

block_.L_486e01:                                  ; preds = %block_.L_486fe3, %block_.L_486dfa
  %3925 = phi i64 [ %.pre161, %block_.L_486dfa ], [ %4636, %block_.L_486fe3 ]
  %3926 = load i64, i64* %RBP.i, align 8
  %3927 = add i64 %3926, -4
  %3928 = add i64 %3925, 7
  store i64 %3928, i64* %3, align 8
  %3929 = inttoptr i64 %3927 to i32*
  %3930 = load i32, i32* %3929, align 4
  %3931 = add i32 %3930, -400
  %3932 = icmp ult i32 %3930, 400
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %14, align 1
  %3934 = and i32 %3931, 255
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %21, align 1
  %3939 = xor i32 %3930, 16
  %3940 = xor i32 %3939, %3931
  %3941 = lshr i32 %3940, 4
  %3942 = trunc i32 %3941 to i8
  %3943 = and i8 %3942, 1
  store i8 %3943, i8* %26, align 1
  %3944 = icmp eq i32 %3931, 0
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %29, align 1
  %3946 = lshr i32 %3931, 31
  %3947 = trunc i32 %3946 to i8
  store i8 %3947, i8* %32, align 1
  %3948 = lshr i32 %3930, 31
  %3949 = xor i32 %3946, %3948
  %3950 = add nuw nsw i32 %3949, %3948
  %3951 = icmp eq i32 %3950, 2
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %38, align 1
  %3953 = icmp ne i8 %3947, 0
  %3954 = xor i1 %3953, %3951
  %.v232 = select i1 %3954, i64 13, i64 501
  %3955 = add i64 %3925, %.v232
  store i64 %3955, i64* %3, align 8
  br i1 %3954, label %block_486e0e, label %block_.L_486ff6

block_486e0e:                                     ; preds = %block_.L_486e01
  %3956 = add i64 %3955, 4
  store i64 %3956, i64* %3, align 8
  %3957 = load i32, i32* %3929, align 4
  %3958 = sext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i2177.pre-phi, align 8
  %3959 = add nsw i64 %3958, 12099168
  %3960 = add i64 %3955, 12
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i8*
  %3962 = load i8, i8* %3961, align 1
  %3963 = zext i8 %3962 to i64
  store i64 %3963, i64* %RCX.i2175, align 8
  %3964 = zext i8 %3962 to i32
  %3965 = add nsw i32 %3964, -1
  %3966 = icmp eq i8 %3962, 0
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %14, align 1
  %3968 = and i32 %3965, 255
  %3969 = tail call i32 @llvm.ctpop.i32(i32 %3968)
  %3970 = trunc i32 %3969 to i8
  %3971 = and i8 %3970, 1
  %3972 = xor i8 %3971, 1
  store i8 %3972, i8* %21, align 1
  %3973 = xor i32 %3965, %3964
  %3974 = lshr i32 %3973, 4
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  store i8 %3976, i8* %26, align 1
  %3977 = icmp eq i32 %3965, 0
  %3978 = zext i1 %3977 to i8
  store i8 %3978, i8* %29, align 1
  %3979 = lshr i32 %3965, 31
  %3980 = trunc i32 %3979 to i8
  store i8 %3980, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v266 = select i1 %3977, i64 42, i64 21
  %3981 = add i64 %3955, %.v266
  store i64 %3981, i64* %3, align 8
  br i1 %3977, label %block_.L_486e38, label %block_486e23

block_486e23:                                     ; preds = %block_486e0e
  %3982 = add i64 %3981, 4
  store i64 %3982, i64* %3, align 8
  %3983 = load i32, i32* %3929, align 4
  %3984 = sext i32 %3983 to i64
  store i64 %3984, i64* %RAX.i2177.pre-phi, align 8
  %3985 = add nsw i64 %3984, 12099168
  %3986 = add i64 %3981, 12
  store i64 %3986, i64* %3, align 8
  %3987 = inttoptr i64 %3985 to i8*
  %3988 = load i8, i8* %3987, align 1
  %3989 = zext i8 %3988 to i64
  store i64 %3989, i64* %RCX.i2175, align 8
  %3990 = zext i8 %3988 to i32
  %3991 = add nsw i32 %3990, -2
  %3992 = icmp ult i8 %3988, 2
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %14, align 1
  %3994 = and i32 %3991, 255
  %3995 = tail call i32 @llvm.ctpop.i32(i32 %3994)
  %3996 = trunc i32 %3995 to i8
  %3997 = and i8 %3996, 1
  %3998 = xor i8 %3997, 1
  store i8 %3998, i8* %21, align 1
  %3999 = xor i32 %3991, %3990
  %4000 = lshr i32 %3999, 4
  %4001 = trunc i32 %4000 to i8
  %4002 = and i8 %4001, 1
  store i8 %4002, i8* %26, align 1
  %4003 = icmp eq i32 %3991, 0
  %4004 = zext i1 %4003 to i8
  store i8 %4004, i8* %29, align 1
  %4005 = lshr i32 %3991, 31
  %4006 = trunc i32 %4005 to i8
  store i8 %4006, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v267 = select i1 %4003, i64 21, i64 448
  %4007 = add i64 %3981, %.v267
  store i64 %4007, i64* %3, align 8
  br i1 %4003, label %block_.L_486e38, label %block_.L_486fe3

block_.L_486e38:                                  ; preds = %block_486e23, %block_486e0e
  %4008 = phi i64 [ %4007, %block_486e23 ], [ %3981, %block_486e0e ]
  %4009 = add i64 %4008, 3
  store i64 %4009, i64* %3, align 8
  %4010 = load i32, i32* %3929, align 4
  %4011 = add i32 %4010, 20
  %4012 = zext i32 %4011 to i64
  store i64 %4012, i64* %RAX.i2177.pre-phi, align 8
  %4013 = icmp ugt i32 %4010, -21
  %4014 = zext i1 %4013 to i8
  store i8 %4014, i8* %14, align 1
  %4015 = and i32 %4011, 255
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %21, align 1
  %4020 = xor i32 %4010, 16
  %4021 = xor i32 %4020, %4011
  %4022 = lshr i32 %4021, 4
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  store i8 %4024, i8* %26, align 1
  %4025 = icmp eq i32 %4011, 0
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %29, align 1
  %4027 = lshr i32 %4011, 31
  %4028 = trunc i32 %4027 to i8
  store i8 %4028, i8* %32, align 1
  %4029 = lshr i32 %4010, 31
  %4030 = xor i32 %4027, %4029
  %4031 = add nuw nsw i32 %4030, %4027
  %4032 = icmp eq i32 %4031, 2
  %4033 = zext i1 %4032 to i8
  store i8 %4033, i8* %38, align 1
  %4034 = sext i32 %4011 to i64
  store i64 %4034, i64* %RCX.i2175, align 8
  %4035 = add nsw i64 %4034, 12099168
  %4036 = add i64 %4008, 17
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i8*
  %4038 = load i8, i8* %4037, align 1
  %4039 = zext i8 %4038 to i64
  store i64 %4039, i64* %RAX.i2177.pre-phi, align 8
  %4040 = zext i8 %4038 to i32
  %4041 = add nsw i32 %4040, -1
  %4042 = icmp eq i8 %4038, 0
  %4043 = zext i1 %4042 to i8
  store i8 %4043, i8* %14, align 1
  %4044 = and i32 %4041, 255
  %4045 = tail call i32 @llvm.ctpop.i32(i32 %4044)
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  %4048 = xor i8 %4047, 1
  store i8 %4048, i8* %21, align 1
  %4049 = xor i32 %4041, %4040
  %4050 = lshr i32 %4049, 4
  %4051 = trunc i32 %4050 to i8
  %4052 = and i8 %4051, 1
  store i8 %4052, i8* %26, align 1
  %4053 = icmp eq i32 %4041, 0
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %29, align 1
  %4055 = lshr i32 %4041, 31
  %4056 = trunc i32 %4055 to i8
  store i8 %4056, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v268 = select i1 %4053, i64 52, i64 26
  %4057 = add i64 %4008, %.v268
  store i64 %4057, i64* %3, align 8
  br i1 %4053, label %block_.L_486e6c, label %block_486e52

block_486e52:                                     ; preds = %block_.L_486e38
  %4058 = add i64 %4057, 3
  store i64 %4058, i64* %3, align 8
  %4059 = load i32, i32* %3929, align 4
  %4060 = add i32 %4059, 20
  %4061 = zext i32 %4060 to i64
  store i64 %4061, i64* %RAX.i2177.pre-phi, align 8
  %4062 = icmp ugt i32 %4059, -21
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %14, align 1
  %4064 = and i32 %4060, 255
  %4065 = tail call i32 @llvm.ctpop.i32(i32 %4064)
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  %4068 = xor i8 %4067, 1
  store i8 %4068, i8* %21, align 1
  %4069 = xor i32 %4059, 16
  %4070 = xor i32 %4069, %4060
  %4071 = lshr i32 %4070, 4
  %4072 = trunc i32 %4071 to i8
  %4073 = and i8 %4072, 1
  store i8 %4073, i8* %26, align 1
  %4074 = icmp eq i32 %4060, 0
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %29, align 1
  %4076 = lshr i32 %4060, 31
  %4077 = trunc i32 %4076 to i8
  store i8 %4077, i8* %32, align 1
  %4078 = lshr i32 %4059, 31
  %4079 = xor i32 %4076, %4078
  %4080 = add nuw nsw i32 %4079, %4076
  %4081 = icmp eq i32 %4080, 2
  %4082 = zext i1 %4081 to i8
  store i8 %4082, i8* %38, align 1
  %4083 = sext i32 %4060 to i64
  store i64 %4083, i64* %RCX.i2175, align 8
  %4084 = add nsw i64 %4083, 12099168
  %4085 = add i64 %4057, 17
  store i64 %4085, i64* %3, align 8
  %4086 = inttoptr i64 %4084 to i8*
  %4087 = load i8, i8* %4086, align 1
  %4088 = zext i8 %4087 to i64
  store i64 %4088, i64* %RAX.i2177.pre-phi, align 8
  %4089 = zext i8 %4087 to i32
  %4090 = add nsw i32 %4089, -2
  %4091 = icmp ult i8 %4087, 2
  %4092 = zext i1 %4091 to i8
  store i8 %4092, i8* %14, align 1
  %4093 = and i32 %4090, 255
  %4094 = tail call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  store i8 %4097, i8* %21, align 1
  %4098 = xor i32 %4090, %4089
  %4099 = lshr i32 %4098, 4
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  store i8 %4101, i8* %26, align 1
  %4102 = icmp eq i32 %4090, 0
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %29, align 1
  %4104 = lshr i32 %4090, 31
  %4105 = trunc i32 %4104 to i8
  store i8 %4105, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v269 = select i1 %4102, i64 26, i64 401
  %4106 = add i64 %4057, %.v269
  store i64 %4106, i64* %3, align 8
  br i1 %4102, label %block_.L_486e6c, label %block_.L_486fe3

block_.L_486e6c:                                  ; preds = %block_486e52, %block_.L_486e38
  %4107 = phi i64 [ %4106, %block_486e52 ], [ %4057, %block_.L_486e38 ]
  %4108 = add i64 %4107, 3
  store i64 %4108, i64* %3, align 8
  %4109 = load i32, i32* %3929, align 4
  %4110 = zext i32 %4109 to i64
  store i64 %4110, i64* %RDI.i2211, align 8
  %4111 = add i64 %4107, 6
  store i64 %4111, i64* %3, align 8
  %4112 = load i32, i32* %3929, align 4
  %4113 = add i32 %4112, 20
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RAX.i2177.pre-phi, align 8
  %4115 = icmp ugt i32 %4112, -21
  %4116 = zext i1 %4115 to i8
  store i8 %4116, i8* %14, align 1
  %4117 = and i32 %4113, 255
  %4118 = tail call i32 @llvm.ctpop.i32(i32 %4117)
  %4119 = trunc i32 %4118 to i8
  %4120 = and i8 %4119, 1
  %4121 = xor i8 %4120, 1
  store i8 %4121, i8* %21, align 1
  %4122 = xor i32 %4112, 16
  %4123 = xor i32 %4122, %4113
  %4124 = lshr i32 %4123, 4
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  store i8 %4126, i8* %26, align 1
  %4127 = icmp eq i32 %4113, 0
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %29, align 1
  %4129 = lshr i32 %4113, 31
  %4130 = trunc i32 %4129 to i8
  store i8 %4130, i8* %32, align 1
  %4131 = lshr i32 %4112, 31
  %4132 = xor i32 %4129, %4131
  %4133 = add nuw nsw i32 %4132, %4129
  %4134 = icmp eq i32 %4133, 2
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %38, align 1
  store i64 %4114, i64* %RSI.i1962, align 8
  %4136 = add i64 %4107, 6052
  %4137 = add i64 %4107, 16
  %4138 = load i64, i64* %6, align 8
  %4139 = add i64 %4138, -8
  %4140 = inttoptr i64 %4139 to i64*
  store i64 %4137, i64* %4140, align 8
  store i64 %4139, i64* %6, align 8
  store i64 %4136, i64* %3, align 8
  %call2_486e77 = tail call %struct.Memory* @sub_488610.is_same_worm(%struct.State* nonnull %0, i64 %4136, %struct.Memory* %MEMORY.55)
  %4141 = load i32, i32* %EAX.i2208, align 4
  %4142 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4143 = and i32 %4141, 255
  %4144 = tail call i32 @llvm.ctpop.i32(i32 %4143)
  %4145 = trunc i32 %4144 to i8
  %4146 = and i8 %4145, 1
  %4147 = xor i8 %4146, 1
  store i8 %4147, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4148 = icmp eq i32 %4141, 0
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %29, align 1
  %4150 = lshr i32 %4141, 31
  %4151 = trunc i32 %4150 to i8
  store i8 %4151, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v270 = select i1 %4148, i64 9, i64 359
  %4152 = add i64 %4142, %.v270
  store i64 %4152, i64* %3, align 8
  br i1 %4148, label %block_486e85, label %block_.L_486fe3

block_486e85:                                     ; preds = %block_.L_486e6c
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4153 = load i64, i64* %RBP.i, align 8
  %4154 = add i64 %4153, -4
  %4155 = add i64 %4152, 14
  store i64 %4155, i64* %3, align 8
  %4156 = inttoptr i64 %4154 to i32*
  %4157 = load i32, i32* %4156, align 4
  %4158 = sext i32 %4157 to i64
  %4159 = mul nsw i64 %4158, 380
  store i64 %4159, i64* %RCX.i2175, align 8
  %4160 = lshr i64 %4159, 63
  %4161 = add i64 %4159, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4161, i64* %RAX.i2177.pre-phi, align 8
  %4162 = icmp ult i64 %4161, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4163 = icmp ult i64 %4161, %4159
  %4164 = or i1 %4162, %4163
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %14, align 1
  %4166 = trunc i64 %4161 to i32
  %4167 = and i32 %4166, 252
  %4168 = tail call i32 @llvm.ctpop.i32(i32 %4167)
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  store i8 %4171, i8* %21, align 1
  %4172 = xor i64 %4159, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4173 = xor i64 %4172, %4161
  %4174 = lshr i64 %4173, 4
  %4175 = trunc i64 %4174 to i8
  %4176 = and i8 %4175, 1
  store i8 %4176, i8* %26, align 1
  %4177 = icmp eq i64 %4161, 0
  %4178 = zext i1 %4177 to i8
  store i8 %4178, i8* %29, align 1
  %4179 = lshr i64 %4161, 63
  %4180 = trunc i64 %4179 to i8
  store i8 %4180, i8* %32, align 1
  %4181 = xor i64 %4179, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4182 = xor i64 %4179, %4160
  %4183 = add nuw nsw i64 %4181, %4182
  %4184 = icmp eq i64 %4183, 2
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %38, align 1
  %4186 = add i64 %4159, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %4187 = add i64 %4152, 28
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i32*
  %4189 = load i32, i32* %4188, align 4
  store i8 0, i8* %14, align 1
  %4190 = and i32 %4189, 255
  %4191 = tail call i32 @llvm.ctpop.i32(i32 %4190)
  %4192 = trunc i32 %4191 to i8
  %4193 = and i8 %4192, 1
  %4194 = xor i8 %4193, 1
  store i8 %4194, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4195 = icmp eq i32 %4189, 0
  %4196 = zext i1 %4195 to i8
  store i8 %4196, i8* %29, align 1
  %4197 = lshr i32 %4189, 31
  %4198 = trunc i32 %4197 to i8
  store i8 %4198, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v271 = select i1 %4195, i64 345, i64 34
  %4199 = add i64 %4152, %.v271
  store i64 %4199, i64* %3, align 8
  br i1 %4195, label %block_.L_486fde, label %block_486ea7

block_486ea7:                                     ; preds = %block_486e85
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4200 = add i64 %4199, 13
  store i64 %4200, i64* %3, align 8
  %4201 = load i32, i32* %4156, align 4
  %4202 = add i32 %4201, 20
  %4203 = zext i32 %4202 to i64
  store i64 %4203, i64* %RCX.i2175, align 8
  %4204 = sext i32 %4202 to i64
  %4205 = mul nsw i64 %4204, 380
  store i64 %4205, i64* %RDX.i1945, align 8
  %4206 = lshr i64 %4205, 63
  %4207 = add i64 %4205, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4207, i64* %RAX.i2177.pre-phi, align 8
  %4208 = icmp ult i64 %4207, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4209 = icmp ult i64 %4207, %4205
  %4210 = or i1 %4208, %4209
  %4211 = zext i1 %4210 to i8
  store i8 %4211, i8* %14, align 1
  %4212 = trunc i64 %4207 to i32
  %4213 = and i32 %4212, 252
  %4214 = tail call i32 @llvm.ctpop.i32(i32 %4213)
  %4215 = trunc i32 %4214 to i8
  %4216 = and i8 %4215, 1
  %4217 = xor i8 %4216, 1
  store i8 %4217, i8* %21, align 1
  %4218 = xor i64 %4205, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4219 = xor i64 %4218, %4207
  %4220 = lshr i64 %4219, 4
  %4221 = trunc i64 %4220 to i8
  %4222 = and i8 %4221, 1
  store i8 %4222, i8* %26, align 1
  %4223 = icmp eq i64 %4207, 0
  %4224 = zext i1 %4223 to i8
  store i8 %4224, i8* %29, align 1
  %4225 = lshr i64 %4207, 63
  %4226 = trunc i64 %4225 to i8
  store i8 %4226, i8* %32, align 1
  %4227 = xor i64 %4225, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4228 = xor i64 %4225, %4206
  %4229 = add nuw nsw i64 %4227, %4228
  %4230 = icmp eq i64 %4229, 2
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %38, align 1
  %4232 = add i64 %4205, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %4233 = add i64 %4199, 33
  store i64 %4233, i64* %3, align 8
  %4234 = inttoptr i64 %4232 to i32*
  %4235 = load i32, i32* %4234, align 4
  store i8 0, i8* %14, align 1
  %4236 = and i32 %4235, 255
  %4237 = tail call i32 @llvm.ctpop.i32(i32 %4236)
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = xor i8 %4239, 1
  store i8 %4240, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4241 = icmp eq i32 %4235, 0
  %4242 = zext i1 %4241 to i8
  store i8 %4242, i8* %29, align 1
  %4243 = lshr i32 %4235, 31
  %4244 = trunc i32 %4243 to i8
  store i8 %4244, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v272 = select i1 %4241, i64 311, i64 39
  %4245 = add i64 %4199, %.v272
  store i64 %4245, i64* %3, align 8
  br i1 %4241, label %block_.L_486fde, label %block_486ece

block_486ece:                                     ; preds = %block_486ea7
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4246 = load i64, i64* %RBP.i, align 8
  %4247 = add i64 %4246, -4
  %4248 = add i64 %4245, 14
  store i64 %4248, i64* %3, align 8
  %4249 = inttoptr i64 %4247 to i32*
  %4250 = load i32, i32* %4249, align 4
  %4251 = sext i32 %4250 to i64
  %4252 = mul nsw i64 %4251, 380
  store i64 %4252, i64* %RCX.i2175, align 8
  %4253 = lshr i64 %4252, 63
  %4254 = add i64 %4252, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4254, i64* %RAX.i2177.pre-phi, align 8
  %4255 = icmp ult i64 %4254, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4256 = icmp ult i64 %4254, %4252
  %4257 = or i1 %4255, %4256
  %4258 = zext i1 %4257 to i8
  store i8 %4258, i8* %14, align 1
  %4259 = trunc i64 %4254 to i32
  %4260 = and i32 %4259, 252
  %4261 = tail call i32 @llvm.ctpop.i32(i32 %4260)
  %4262 = trunc i32 %4261 to i8
  %4263 = and i8 %4262, 1
  %4264 = xor i8 %4263, 1
  store i8 %4264, i8* %21, align 1
  %4265 = xor i64 %4252, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4266 = xor i64 %4265, %4254
  %4267 = lshr i64 %4266, 4
  %4268 = trunc i64 %4267 to i8
  %4269 = and i8 %4268, 1
  store i8 %4269, i8* %26, align 1
  %4270 = icmp eq i64 %4254, 0
  %4271 = zext i1 %4270 to i8
  store i8 %4271, i8* %29, align 1
  %4272 = lshr i64 %4254, 63
  %4273 = trunc i64 %4272 to i8
  store i8 %4273, i8* %32, align 1
  %4274 = xor i64 %4272, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4275 = xor i64 %4272, %4253
  %4276 = add nuw nsw i64 %4274, %4275
  %4277 = icmp eq i64 %4276, 2
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %38, align 1
  %4279 = add i64 %4252, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %4280 = add i64 %4245, 31
  store i64 %4280, i64* %3, align 8
  %4281 = inttoptr i64 %4279 to i32*
  %4282 = load i32, i32* %4281, align 4
  store i8 0, i8* %14, align 1
  %4283 = and i32 %4282, 255
  %4284 = tail call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  store i8 %4287, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4288 = icmp eq i32 %4282, 0
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %29, align 1
  %4290 = lshr i32 %4282, 31
  %4291 = trunc i32 %4290 to i8
  store i8 %4291, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v273 = select i1 %4288, i64 37, i64 131
  %4292 = add i64 %4245, %.v273
  store i64 %4292, i64* %3, align 8
  br i1 %4288, label %block_486ef3, label %block_.L_486f51

block_486ef3:                                     ; preds = %block_486ece
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4293 = add i64 %4292, 13
  store i64 %4293, i64* %3, align 8
  %4294 = load i32, i32* %4249, align 4
  %4295 = add i32 %4294, 20
  %4296 = zext i32 %4295 to i64
  store i64 %4296, i64* %RCX.i2175, align 8
  %4297 = sext i32 %4295 to i64
  %4298 = mul nsw i64 %4297, 380
  store i64 %4298, i64* %RDX.i1945, align 8
  %4299 = lshr i64 %4298, 63
  %4300 = add i64 %4298, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4300, i64* %RAX.i2177.pre-phi, align 8
  %4301 = icmp ult i64 %4300, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4302 = icmp ult i64 %4300, %4298
  %4303 = or i1 %4301, %4302
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %14, align 1
  %4305 = trunc i64 %4300 to i32
  %4306 = and i32 %4305, 252
  %4307 = tail call i32 @llvm.ctpop.i32(i32 %4306)
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  %4310 = xor i8 %4309, 1
  store i8 %4310, i8* %21, align 1
  %4311 = xor i64 %4298, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4312 = xor i64 %4311, %4300
  %4313 = lshr i64 %4312, 4
  %4314 = trunc i64 %4313 to i8
  %4315 = and i8 %4314, 1
  store i8 %4315, i8* %26, align 1
  %4316 = icmp eq i64 %4300, 0
  %4317 = zext i1 %4316 to i8
  store i8 %4317, i8* %29, align 1
  %4318 = lshr i64 %4300, 63
  %4319 = trunc i64 %4318 to i8
  store i8 %4319, i8* %32, align 1
  %4320 = xor i64 %4318, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4321 = xor i64 %4318, %4299
  %4322 = add nuw nsw i64 %4320, %4321
  %4323 = icmp eq i64 %4322, 2
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %38, align 1
  %4325 = add i64 %4298, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %4326 = add i64 %4292, 32
  store i64 %4326, i64* %3, align 8
  %4327 = inttoptr i64 %4325 to i32*
  %4328 = load i32, i32* %4327, align 4
  %4329 = zext i32 %4328 to i64
  store i64 %4329, i64* %RDI.i2211, align 8
  %4330 = load i64, i64* %RBP.i, align 8
  %4331 = add i64 %4330, -4
  %4332 = add i64 %4292, 35
  store i64 %4332, i64* %3, align 8
  %4333 = inttoptr i64 %4331 to i32*
  %4334 = load i32, i32* %4333, align 4
  %4335 = zext i32 %4334 to i64
  store i64 %4335, i64* %RSI.i1962, align 8
  %4336 = add i64 %4292, -63907
  %4337 = add i64 %4292, 40
  %4338 = load i64, i64* %6, align 8
  %4339 = add i64 %4338, -8
  %4340 = inttoptr i64 %4339 to i64*
  store i64 %4337, i64* %4340, align 8
  store i64 %4339, i64* %6, align 8
  store i64 %4336, i64* %3, align 8
  %call2_486f16 = tail call %struct.Memory* @sub_477550.does_defend(%struct.State* nonnull %0, i64 %4336, %struct.Memory* %MEMORY.55)
  %4341 = load i32, i32* %EAX.i2208, align 4
  %4342 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4343 = and i32 %4341, 255
  %4344 = tail call i32 @llvm.ctpop.i32(i32 %4343)
  %4345 = trunc i32 %4344 to i8
  %4346 = and i8 %4345, 1
  %4347 = xor i8 %4346, 1
  store i8 %4347, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4348 = icmp eq i32 %4341, 0
  %4349 = zext i1 %4348 to i8
  store i8 %4349, i8* %29, align 1
  %4350 = lshr i32 %4341, 31
  %4351 = trunc i32 %4350 to i8
  store i8 %4351, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v276 = select i1 %4348, i64 54, i64 9
  %4352 = add i64 %4342, %.v276
  store i64 %4352, i64* %3, align 8
  br i1 %4348, label %block_.L_486f51, label %block_486f24

block_486f24:                                     ; preds = %block_486ef3
  store i64 5, i64* %RDX.i1945, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4353 = load i64, i64* %RBP.i, align 8
  %4354 = add i64 %4353, -4
  %4355 = add i64 %4352, 18
  store i64 %4355, i64* %3, align 8
  %4356 = inttoptr i64 %4354 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = zext i32 %4357 to i64
  store i64 %4358, i64* %RDI.i2211, align 8
  %4359 = add i64 %4352, 21
  store i64 %4359, i64* %3, align 8
  %4360 = load i32, i32* %4356, align 4
  %4361 = add i32 %4360, 20
  %4362 = zext i32 %4361 to i64
  store i64 %4362, i64* %RCX.i2175, align 8
  %4363 = sext i32 %4361 to i64
  %4364 = mul nsw i64 %4363, 380
  store i64 %4364, i64* %RSI.i1962, align 8
  %4365 = lshr i64 %4364, 63
  %4366 = add i64 %4364, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4366, i64* %RAX.i2177.pre-phi, align 8
  %4367 = icmp ult i64 %4366, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4368 = icmp ult i64 %4366, %4364
  %4369 = or i1 %4367, %4368
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %14, align 1
  %4371 = trunc i64 %4366 to i32
  %4372 = and i32 %4371, 252
  %4373 = tail call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  store i8 %4376, i8* %21, align 1
  %4377 = xor i64 %4364, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4378 = xor i64 %4377, %4366
  %4379 = lshr i64 %4378, 4
  %4380 = trunc i64 %4379 to i8
  %4381 = and i8 %4380, 1
  store i8 %4381, i8* %26, align 1
  %4382 = icmp eq i64 %4366, 0
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %29, align 1
  %4384 = lshr i64 %4366, 63
  %4385 = trunc i64 %4384 to i8
  store i8 %4385, i8* %32, align 1
  %4386 = xor i64 %4384, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4387 = xor i64 %4384, %4365
  %4388 = add nuw nsw i64 %4386, %4387
  %4389 = icmp eq i64 %4388, 2
  %4390 = zext i1 %4389 to i8
  store i8 %4390, i8* %38, align 1
  %4391 = add i64 %4364, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %4392 = add i64 %4352, 40
  store i64 %4392, i64* %3, align 8
  %4393 = inttoptr i64 %4391 to i32*
  %4394 = load i32, i32* %4393, align 4
  %4395 = zext i32 %4394 to i64
  store i64 %4395, i64* %RSI.i1962, align 8
  %4396 = add i64 %4352, 6364
  %4397 = add i64 %4352, 45
  %4398 = load i64, i64* %6, align 8
  %4399 = add i64 %4398, -8
  %4400 = inttoptr i64 %4399 to i64*
  store i64 %4397, i64* %4400, align 8
  store i64 %4399, i64* %6, align 8
  store i64 %4396, i64* %3, align 8
  %call2_486f4c = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %4396, %struct.Memory* %MEMORY.55)
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_486f51

block_.L_486f51:                                  ; preds = %block_486ece, %block_486f24, %block_486ef3
  %4401 = phi i64 [ %.pre177, %block_486f24 ], [ %4352, %block_486ef3 ], [ %4292, %block_486ece ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4402 = load i64, i64* %RBP.i, align 8
  %4403 = add i64 %4402, -4
  %4404 = add i64 %4401, 13
  store i64 %4404, i64* %3, align 8
  %4405 = inttoptr i64 %4403 to i32*
  %4406 = load i32, i32* %4405, align 4
  %4407 = add i32 %4406, 20
  %4408 = zext i32 %4407 to i64
  store i64 %4408, i64* %RCX.i2175, align 8
  %4409 = sext i32 %4407 to i64
  %4410 = mul nsw i64 %4409, 380
  store i64 %4410, i64* %RDX.i1945, align 8
  %4411 = lshr i64 %4410, 63
  %4412 = add i64 %4410, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4412, i64* %RAX.i2177.pre-phi, align 8
  %4413 = icmp ult i64 %4412, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4414 = icmp ult i64 %4412, %4410
  %4415 = or i1 %4413, %4414
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %14, align 1
  %4417 = trunc i64 %4412 to i32
  %4418 = and i32 %4417, 252
  %4419 = tail call i32 @llvm.ctpop.i32(i32 %4418)
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = xor i8 %4421, 1
  store i8 %4422, i8* %21, align 1
  %4423 = xor i64 %4410, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4424 = xor i64 %4423, %4412
  %4425 = lshr i64 %4424, 4
  %4426 = trunc i64 %4425 to i8
  %4427 = and i8 %4426, 1
  store i8 %4427, i8* %26, align 1
  %4428 = icmp eq i64 %4412, 0
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %29, align 1
  %4430 = lshr i64 %4412, 63
  %4431 = trunc i64 %4430 to i8
  store i8 %4431, i8* %32, align 1
  %4432 = xor i64 %4430, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4433 = xor i64 %4430, %4411
  %4434 = add nuw nsw i64 %4432, %4433
  %4435 = icmp eq i64 %4434, 2
  %4436 = zext i1 %4435 to i8
  store i8 %4436, i8* %38, align 1
  %4437 = add i64 %4410, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %4438 = add i64 %4401, 36
  store i64 %4438, i64* %3, align 8
  %4439 = inttoptr i64 %4437 to i32*
  %4440 = load i32, i32* %4439, align 4
  store i8 0, i8* %14, align 1
  %4441 = and i32 %4440, 255
  %4442 = tail call i32 @llvm.ctpop.i32(i32 %4441)
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = xor i8 %4444, 1
  store i8 %4445, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4446 = icmp eq i32 %4440, 0
  %4447 = zext i1 %4446 to i8
  store i8 %4447, i8* %29, align 1
  %4448 = lshr i32 %4440, 31
  %4449 = trunc i32 %4448 to i8
  store i8 %4449, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v274 = select i1 %4446, i64 42, i64 136
  %4450 = add i64 %4401, %.v274
  store i64 %4450, i64* %3, align 8
  br i1 %4446, label %block_486f7b, label %block_.L_486fd9

block_486f7b:                                     ; preds = %block_.L_486f51
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4451 = load i64, i64* %RBP.i, align 8
  %4452 = add i64 %4451, -4
  %4453 = add i64 %4450, 14
  store i64 %4453, i64* %3, align 8
  %4454 = inttoptr i64 %4452 to i32*
  %4455 = load i32, i32* %4454, align 4
  %4456 = sext i32 %4455 to i64
  %4457 = mul nsw i64 %4456, 380
  store i64 %4457, i64* %RCX.i2175, align 8
  %4458 = lshr i64 %4457, 63
  %4459 = add i64 %4457, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4459, i64* %RAX.i2177.pre-phi, align 8
  %4460 = icmp ult i64 %4459, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4461 = icmp ult i64 %4459, %4457
  %4462 = or i1 %4460, %4461
  %4463 = zext i1 %4462 to i8
  store i8 %4463, i8* %14, align 1
  %4464 = trunc i64 %4459 to i32
  %4465 = and i32 %4464, 252
  %4466 = tail call i32 @llvm.ctpop.i32(i32 %4465)
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  %4469 = xor i8 %4468, 1
  store i8 %4469, i8* %21, align 1
  %4470 = xor i64 %4457, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4471 = xor i64 %4470, %4459
  %4472 = lshr i64 %4471, 4
  %4473 = trunc i64 %4472 to i8
  %4474 = and i8 %4473, 1
  store i8 %4474, i8* %26, align 1
  %4475 = icmp eq i64 %4459, 0
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %29, align 1
  %4477 = lshr i64 %4459, 63
  %4478 = trunc i64 %4477 to i8
  store i8 %4478, i8* %32, align 1
  %4479 = xor i64 %4477, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4480 = xor i64 %4477, %4458
  %4481 = add nuw nsw i64 %4479, %4480
  %4482 = icmp eq i64 %4481, 2
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %38, align 1
  %4484 = add i64 %4457, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %4485 = add i64 %4450, 27
  store i64 %4485, i64* %3, align 8
  %4486 = inttoptr i64 %4484 to i32*
  %4487 = load i32, i32* %4486, align 4
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RDI.i2211, align 8
  %4489 = add i64 %4450, 30
  store i64 %4489, i64* %3, align 8
  %4490 = load i32, i32* %4454, align 4
  %4491 = add i32 %4490, 20
  %4492 = zext i32 %4491 to i64
  store i64 %4492, i64* %RDX.i1945, align 8
  %4493 = icmp ugt i32 %4490, -21
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %14, align 1
  %4495 = and i32 %4491, 255
  %4496 = tail call i32 @llvm.ctpop.i32(i32 %4495)
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  %4499 = xor i8 %4498, 1
  store i8 %4499, i8* %21, align 1
  %4500 = xor i32 %4490, 16
  %4501 = xor i32 %4500, %4491
  %4502 = lshr i32 %4501, 4
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  store i8 %4504, i8* %26, align 1
  %4505 = icmp eq i32 %4491, 0
  %4506 = zext i1 %4505 to i8
  store i8 %4506, i8* %29, align 1
  %4507 = lshr i32 %4491, 31
  %4508 = trunc i32 %4507 to i8
  store i8 %4508, i8* %32, align 1
  %4509 = lshr i32 %4490, 31
  %4510 = xor i32 %4507, %4509
  %4511 = add nuw nsw i32 %4510, %4507
  %4512 = icmp eq i32 %4511, 2
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %38, align 1
  store i64 %4492, i64* %RSI.i1962, align 8
  %4514 = add i64 %4450, -64043
  %4515 = add i64 %4450, 40
  %4516 = load i64, i64* %6, align 8
  %4517 = add i64 %4516, -8
  %4518 = inttoptr i64 %4517 to i64*
  store i64 %4515, i64* %4518, align 8
  store i64 %4517, i64* %6, align 8
  store i64 %4514, i64* %3, align 8
  %call2_486f9e = tail call %struct.Memory* @sub_477550.does_defend(%struct.State* nonnull %0, i64 %4514, %struct.Memory* %MEMORY.55)
  %4519 = load i32, i32* %EAX.i2208, align 4
  %4520 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4521 = and i32 %4519, 255
  %4522 = tail call i32 @llvm.ctpop.i32(i32 %4521)
  %4523 = trunc i32 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = xor i8 %4524, 1
  store i8 %4525, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4526 = icmp eq i32 %4519, 0
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %29, align 1
  %4528 = lshr i32 %4519, 31
  %4529 = trunc i32 %4528 to i8
  store i8 %4529, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v275 = select i1 %4526, i64 54, i64 9
  %4530 = add i64 %4520, %.v275
  store i64 %4530, i64* %3, align 8
  br i1 %4526, label %block_.L_486fd9, label %block_486fac

block_486fac:                                     ; preds = %block_486f7b
  store i64 5, i64* %RDX.i1945, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4531 = load i64, i64* %RBP.i, align 8
  %4532 = add i64 %4531, -4
  %4533 = add i64 %4530, 18
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  %4535 = load i32, i32* %4534, align 4
  %4536 = add i32 %4535, 20
  %4537 = zext i32 %4536 to i64
  store i64 %4537, i64* %RCX.i2175, align 8
  %4538 = icmp ugt i32 %4535, -21
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %14, align 1
  %4540 = and i32 %4536, 255
  %4541 = tail call i32 @llvm.ctpop.i32(i32 %4540)
  %4542 = trunc i32 %4541 to i8
  %4543 = and i8 %4542, 1
  %4544 = xor i8 %4543, 1
  store i8 %4544, i8* %21, align 1
  %4545 = xor i32 %4535, 16
  %4546 = xor i32 %4545, %4536
  %4547 = lshr i32 %4546, 4
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  store i8 %4549, i8* %26, align 1
  %4550 = icmp eq i32 %4536, 0
  %4551 = zext i1 %4550 to i8
  store i8 %4551, i8* %29, align 1
  %4552 = lshr i32 %4536, 31
  %4553 = trunc i32 %4552 to i8
  store i8 %4553, i8* %32, align 1
  %4554 = lshr i32 %4535, 31
  %4555 = xor i32 %4552, %4554
  %4556 = add nuw nsw i32 %4555, %4552
  %4557 = icmp eq i32 %4556, 2
  %4558 = zext i1 %4557 to i8
  store i8 %4558, i8* %38, align 1
  %4559 = add i64 %4530, 25
  store i64 %4559, i64* %3, align 8
  %4560 = load i32, i32* %4534, align 4
  %4561 = sext i32 %4560 to i64
  %4562 = mul nsw i64 %4561, 380
  store i64 %4562, i64* %RSI.i1962, align 8
  %4563 = lshr i64 %4562, 63
  %4564 = add i64 %4562, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4564, i64* %RAX.i2177.pre-phi, align 8
  %4565 = icmp ult i64 %4564, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4566 = icmp ult i64 %4564, %4562
  %4567 = or i1 %4565, %4566
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %14, align 1
  %4569 = trunc i64 %4564 to i32
  %4570 = and i32 %4569, 252
  %4571 = tail call i32 @llvm.ctpop.i32(i32 %4570)
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  %4574 = xor i8 %4573, 1
  store i8 %4574, i8* %21, align 1
  %4575 = xor i64 %4562, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4576 = xor i64 %4575, %4564
  %4577 = lshr i64 %4576, 4
  %4578 = trunc i64 %4577 to i8
  %4579 = and i8 %4578, 1
  store i8 %4579, i8* %26, align 1
  %4580 = icmp eq i64 %4564, 0
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %29, align 1
  %4582 = lshr i64 %4564, 63
  %4583 = trunc i64 %4582 to i8
  store i8 %4583, i8* %32, align 1
  %4584 = xor i64 %4582, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4585 = xor i64 %4582, %4563
  %4586 = add nuw nsw i64 %4584, %4585
  %4587 = icmp eq i64 %4586, 2
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %38, align 1
  %4589 = add i64 %4562, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %4590 = add i64 %4530, 38
  store i64 %4590, i64* %3, align 8
  %4591 = inttoptr i64 %4589 to i32*
  %4592 = load i32, i32* %4591, align 4
  %4593 = zext i32 %4592 to i64
  store i64 %4593, i64* %RSI.i1962, align 8
  %4594 = load i32, i32* %ECX.i2172, align 4
  %4595 = zext i32 %4594 to i64
  store i64 %4595, i64* %RDI.i2211, align 8
  %4596 = add i64 %4530, 6228
  %4597 = add i64 %4530, 45
  %4598 = load i64, i64* %6, align 8
  %4599 = add i64 %4598, -8
  %4600 = inttoptr i64 %4599 to i64*
  store i64 %4597, i64* %4600, align 8
  store i64 %4599, i64* %6, align 8
  store i64 %4596, i64* %3, align 8
  %call2_486fd4 = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %4596, %struct.Memory* %MEMORY.55)
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_486fd9

block_.L_486fd9:                                  ; preds = %block_.L_486f51, %block_486fac, %block_486f7b
  %4601 = phi i64 [ %.pre178, %block_486fac ], [ %4530, %block_486f7b ], [ %4450, %block_.L_486f51 ]
  %4602 = add i64 %4601, 5
  store i64 %4602, i64* %3, align 8
  br label %block_.L_486fde

block_.L_486fde:                                  ; preds = %block_.L_486fd9, %block_486ea7, %block_486e85
  %4603 = phi i64 [ %4602, %block_.L_486fd9 ], [ %4245, %block_486ea7 ], [ %4199, %block_486e85 ]
  %4604 = add i64 %4603, 5
  store i64 %4604, i64* %3, align 8
  br label %block_.L_486fe3

block_.L_486fe3:                                  ; preds = %block_.L_486e6c, %block_486e52, %block_486e23, %block_.L_486fde
  %4605 = phi i64 [ %4604, %block_.L_486fde ], [ %4152, %block_.L_486e6c ], [ %4106, %block_486e52 ], [ %4007, %block_486e23 ]
  %4606 = load i64, i64* %RBP.i, align 8
  %4607 = add i64 %4606, -4
  %4608 = add i64 %4605, 8
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i32*
  %4610 = load i32, i32* %4609, align 4
  %4611 = add i32 %4610, 1
  %4612 = zext i32 %4611 to i64
  store i64 %4612, i64* %RAX.i2177.pre-phi, align 8
  %4613 = icmp eq i32 %4610, -1
  %4614 = icmp eq i32 %4611, 0
  %4615 = or i1 %4613, %4614
  %4616 = zext i1 %4615 to i8
  store i8 %4616, i8* %14, align 1
  %4617 = and i32 %4611, 255
  %4618 = tail call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  store i8 %4621, i8* %21, align 1
  %4622 = xor i32 %4611, %4610
  %4623 = lshr i32 %4622, 4
  %4624 = trunc i32 %4623 to i8
  %4625 = and i8 %4624, 1
  store i8 %4625, i8* %26, align 1
  %4626 = zext i1 %4614 to i8
  store i8 %4626, i8* %29, align 1
  %4627 = lshr i32 %4611, 31
  %4628 = trunc i32 %4627 to i8
  store i8 %4628, i8* %32, align 1
  %4629 = lshr i32 %4610, 31
  %4630 = xor i32 %4627, %4629
  %4631 = add nuw nsw i32 %4630, %4627
  %4632 = icmp eq i32 %4631, 2
  %4633 = zext i1 %4632 to i8
  store i8 %4633, i8* %38, align 1
  %4634 = add i64 %4605, 14
  store i64 %4634, i64* %3, align 8
  store i32 %4611, i32* %4609, align 4
  %4635 = load i64, i64* %3, align 8
  %4636 = add i64 %4635, -496
  store i64 %4636, i64* %3, align 8
  br label %block_.L_486e01

block_.L_486ff6:                                  ; preds = %block_.L_486e01
  %4637 = add i64 %3955, 7
  store i64 %4637, i64* %3, align 8
  store i32 21, i32* %3929, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_486ffd

block_.L_486ffd:                                  ; preds = %block_.L_4871df, %block_.L_486ff6
  %4638 = phi i64 [ %.pre162, %block_.L_486ff6 ], [ %5349, %block_.L_4871df ]
  %4639 = load i64, i64* %RBP.i, align 8
  %4640 = add i64 %4639, -4
  %4641 = add i64 %4638, 7
  store i64 %4641, i64* %3, align 8
  %4642 = inttoptr i64 %4640 to i32*
  %4643 = load i32, i32* %4642, align 4
  %4644 = add i32 %4643, -400
  %4645 = icmp ult i32 %4643, 400
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %14, align 1
  %4647 = and i32 %4644, 255
  %4648 = tail call i32 @llvm.ctpop.i32(i32 %4647)
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  %4651 = xor i8 %4650, 1
  store i8 %4651, i8* %21, align 1
  %4652 = xor i32 %4643, 16
  %4653 = xor i32 %4652, %4644
  %4654 = lshr i32 %4653, 4
  %4655 = trunc i32 %4654 to i8
  %4656 = and i8 %4655, 1
  store i8 %4656, i8* %26, align 1
  %4657 = icmp eq i32 %4644, 0
  %4658 = zext i1 %4657 to i8
  store i8 %4658, i8* %29, align 1
  %4659 = lshr i32 %4644, 31
  %4660 = trunc i32 %4659 to i8
  store i8 %4660, i8* %32, align 1
  %4661 = lshr i32 %4643, 31
  %4662 = xor i32 %4659, %4661
  %4663 = add nuw nsw i32 %4662, %4661
  %4664 = icmp eq i32 %4663, 2
  %4665 = zext i1 %4664 to i8
  store i8 %4665, i8* %38, align 1
  %4666 = icmp ne i8 %4660, 0
  %4667 = xor i1 %4666, %4664
  %.v233 = select i1 %4667, i64 13, i64 501
  %4668 = add i64 %4638, %.v233
  store i64 %4668, i64* %3, align 8
  br i1 %4667, label %block_48700a, label %block_.L_4871f2

block_48700a:                                     ; preds = %block_.L_486ffd
  %4669 = add i64 %4668, 4
  store i64 %4669, i64* %3, align 8
  %4670 = load i32, i32* %4642, align 4
  %4671 = sext i32 %4670 to i64
  store i64 %4671, i64* %RAX.i2177.pre-phi, align 8
  %4672 = add nsw i64 %4671, 12099168
  %4673 = add i64 %4668, 12
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i8*
  %4675 = load i8, i8* %4674, align 1
  %4676 = zext i8 %4675 to i64
  store i64 %4676, i64* %RCX.i2175, align 8
  %4677 = zext i8 %4675 to i32
  %4678 = add nsw i32 %4677, -1
  %4679 = icmp eq i8 %4675, 0
  %4680 = zext i1 %4679 to i8
  store i8 %4680, i8* %14, align 1
  %4681 = and i32 %4678, 255
  %4682 = tail call i32 @llvm.ctpop.i32(i32 %4681)
  %4683 = trunc i32 %4682 to i8
  %4684 = and i8 %4683, 1
  %4685 = xor i8 %4684, 1
  store i8 %4685, i8* %21, align 1
  %4686 = xor i32 %4678, %4677
  %4687 = lshr i32 %4686, 4
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  store i8 %4689, i8* %26, align 1
  %4690 = icmp eq i32 %4678, 0
  %4691 = zext i1 %4690 to i8
  store i8 %4691, i8* %29, align 1
  %4692 = lshr i32 %4678, 31
  %4693 = trunc i32 %4692 to i8
  store i8 %4693, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v255 = select i1 %4690, i64 42, i64 21
  %4694 = add i64 %4668, %.v255
  store i64 %4694, i64* %3, align 8
  br i1 %4690, label %block_.L_487034, label %block_48701f

block_48701f:                                     ; preds = %block_48700a
  %4695 = add i64 %4694, 4
  store i64 %4695, i64* %3, align 8
  %4696 = load i32, i32* %4642, align 4
  %4697 = sext i32 %4696 to i64
  store i64 %4697, i64* %RAX.i2177.pre-phi, align 8
  %4698 = add nsw i64 %4697, 12099168
  %4699 = add i64 %4694, 12
  store i64 %4699, i64* %3, align 8
  %4700 = inttoptr i64 %4698 to i8*
  %4701 = load i8, i8* %4700, align 1
  %4702 = zext i8 %4701 to i64
  store i64 %4702, i64* %RCX.i2175, align 8
  %4703 = zext i8 %4701 to i32
  %4704 = add nsw i32 %4703, -2
  %4705 = icmp ult i8 %4701, 2
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %14, align 1
  %4707 = and i32 %4704, 255
  %4708 = tail call i32 @llvm.ctpop.i32(i32 %4707)
  %4709 = trunc i32 %4708 to i8
  %4710 = and i8 %4709, 1
  %4711 = xor i8 %4710, 1
  store i8 %4711, i8* %21, align 1
  %4712 = xor i32 %4704, %4703
  %4713 = lshr i32 %4712, 4
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  store i8 %4715, i8* %26, align 1
  %4716 = icmp eq i32 %4704, 0
  %4717 = zext i1 %4716 to i8
  store i8 %4717, i8* %29, align 1
  %4718 = lshr i32 %4704, 31
  %4719 = trunc i32 %4718 to i8
  store i8 %4719, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v256 = select i1 %4716, i64 21, i64 448
  %4720 = add i64 %4694, %.v256
  store i64 %4720, i64* %3, align 8
  br i1 %4716, label %block_.L_487034, label %block_.L_4871df

block_.L_487034:                                  ; preds = %block_48701f, %block_48700a
  %4721 = phi i64 [ %4720, %block_48701f ], [ %4694, %block_48700a ]
  %4722 = add i64 %4721, 3
  store i64 %4722, i64* %3, align 8
  %4723 = load i32, i32* %4642, align 4
  %4724 = add i32 %4723, 1
  %4725 = zext i32 %4724 to i64
  store i64 %4725, i64* %RAX.i2177.pre-phi, align 8
  %4726 = icmp eq i32 %4723, -1
  %4727 = icmp eq i32 %4724, 0
  %4728 = or i1 %4726, %4727
  %4729 = zext i1 %4728 to i8
  store i8 %4729, i8* %14, align 1
  %4730 = and i32 %4724, 255
  %4731 = tail call i32 @llvm.ctpop.i32(i32 %4730)
  %4732 = trunc i32 %4731 to i8
  %4733 = and i8 %4732, 1
  %4734 = xor i8 %4733, 1
  store i8 %4734, i8* %21, align 1
  %4735 = xor i32 %4724, %4723
  %4736 = lshr i32 %4735, 4
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  store i8 %4738, i8* %26, align 1
  %4739 = zext i1 %4727 to i8
  store i8 %4739, i8* %29, align 1
  %4740 = lshr i32 %4724, 31
  %4741 = trunc i32 %4740 to i8
  store i8 %4741, i8* %32, align 1
  %4742 = lshr i32 %4723, 31
  %4743 = xor i32 %4740, %4742
  %4744 = add nuw nsw i32 %4743, %4740
  %4745 = icmp eq i32 %4744, 2
  %4746 = zext i1 %4745 to i8
  store i8 %4746, i8* %38, align 1
  %4747 = sext i32 %4724 to i64
  store i64 %4747, i64* %RCX.i2175, align 8
  %4748 = add nsw i64 %4747, 12099168
  %4749 = add i64 %4721, 17
  store i64 %4749, i64* %3, align 8
  %4750 = inttoptr i64 %4748 to i8*
  %4751 = load i8, i8* %4750, align 1
  %4752 = zext i8 %4751 to i64
  store i64 %4752, i64* %RAX.i2177.pre-phi, align 8
  %4753 = zext i8 %4751 to i32
  %4754 = add nsw i32 %4753, -1
  %4755 = icmp eq i8 %4751, 0
  %4756 = zext i1 %4755 to i8
  store i8 %4756, i8* %14, align 1
  %4757 = and i32 %4754, 255
  %4758 = tail call i32 @llvm.ctpop.i32(i32 %4757)
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  %4761 = xor i8 %4760, 1
  store i8 %4761, i8* %21, align 1
  %4762 = xor i32 %4754, %4753
  %4763 = lshr i32 %4762, 4
  %4764 = trunc i32 %4763 to i8
  %4765 = and i8 %4764, 1
  store i8 %4765, i8* %26, align 1
  %4766 = icmp eq i32 %4754, 0
  %4767 = zext i1 %4766 to i8
  store i8 %4767, i8* %29, align 1
  %4768 = lshr i32 %4754, 31
  %4769 = trunc i32 %4768 to i8
  store i8 %4769, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v257 = select i1 %4766, i64 52, i64 26
  %4770 = add i64 %4721, %.v257
  store i64 %4770, i64* %3, align 8
  br i1 %4766, label %block_.L_487068, label %block_48704e

block_48704e:                                     ; preds = %block_.L_487034
  %4771 = add i64 %4770, 3
  store i64 %4771, i64* %3, align 8
  %4772 = load i32, i32* %4642, align 4
  %4773 = add i32 %4772, 1
  %4774 = zext i32 %4773 to i64
  store i64 %4774, i64* %RAX.i2177.pre-phi, align 8
  %4775 = icmp eq i32 %4772, -1
  %4776 = icmp eq i32 %4773, 0
  %4777 = or i1 %4775, %4776
  %4778 = zext i1 %4777 to i8
  store i8 %4778, i8* %14, align 1
  %4779 = and i32 %4773, 255
  %4780 = tail call i32 @llvm.ctpop.i32(i32 %4779)
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  %4783 = xor i8 %4782, 1
  store i8 %4783, i8* %21, align 1
  %4784 = xor i32 %4773, %4772
  %4785 = lshr i32 %4784, 4
  %4786 = trunc i32 %4785 to i8
  %4787 = and i8 %4786, 1
  store i8 %4787, i8* %26, align 1
  %4788 = zext i1 %4776 to i8
  store i8 %4788, i8* %29, align 1
  %4789 = lshr i32 %4773, 31
  %4790 = trunc i32 %4789 to i8
  store i8 %4790, i8* %32, align 1
  %4791 = lshr i32 %4772, 31
  %4792 = xor i32 %4789, %4791
  %4793 = add nuw nsw i32 %4792, %4789
  %4794 = icmp eq i32 %4793, 2
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %38, align 1
  %4796 = sext i32 %4773 to i64
  store i64 %4796, i64* %RCX.i2175, align 8
  %4797 = add nsw i64 %4796, 12099168
  %4798 = add i64 %4770, 17
  store i64 %4798, i64* %3, align 8
  %4799 = inttoptr i64 %4797 to i8*
  %4800 = load i8, i8* %4799, align 1
  %4801 = zext i8 %4800 to i64
  store i64 %4801, i64* %RAX.i2177.pre-phi, align 8
  %4802 = zext i8 %4800 to i32
  %4803 = add nsw i32 %4802, -2
  %4804 = icmp ult i8 %4800, 2
  %4805 = zext i1 %4804 to i8
  store i8 %4805, i8* %14, align 1
  %4806 = and i32 %4803, 255
  %4807 = tail call i32 @llvm.ctpop.i32(i32 %4806)
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  %4810 = xor i8 %4809, 1
  store i8 %4810, i8* %21, align 1
  %4811 = xor i32 %4803, %4802
  %4812 = lshr i32 %4811, 4
  %4813 = trunc i32 %4812 to i8
  %4814 = and i8 %4813, 1
  store i8 %4814, i8* %26, align 1
  %4815 = icmp eq i32 %4803, 0
  %4816 = zext i1 %4815 to i8
  store i8 %4816, i8* %29, align 1
  %4817 = lshr i32 %4803, 31
  %4818 = trunc i32 %4817 to i8
  store i8 %4818, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v258 = select i1 %4815, i64 26, i64 401
  %4819 = add i64 %4770, %.v258
  store i64 %4819, i64* %3, align 8
  br i1 %4815, label %block_.L_487068, label %block_.L_4871df

block_.L_487068:                                  ; preds = %block_48704e, %block_.L_487034
  %4820 = phi i64 [ %4819, %block_48704e ], [ %4770, %block_.L_487034 ]
  %4821 = add i64 %4820, 3
  store i64 %4821, i64* %3, align 8
  %4822 = load i32, i32* %4642, align 4
  %4823 = zext i32 %4822 to i64
  store i64 %4823, i64* %RDI.i2211, align 8
  %4824 = add i64 %4820, 6
  store i64 %4824, i64* %3, align 8
  %4825 = load i32, i32* %4642, align 4
  %4826 = add i32 %4825, 1
  %4827 = zext i32 %4826 to i64
  store i64 %4827, i64* %RAX.i2177.pre-phi, align 8
  %4828 = icmp eq i32 %4825, -1
  %4829 = icmp eq i32 %4826, 0
  %4830 = or i1 %4828, %4829
  %4831 = zext i1 %4830 to i8
  store i8 %4831, i8* %14, align 1
  %4832 = and i32 %4826, 255
  %4833 = tail call i32 @llvm.ctpop.i32(i32 %4832)
  %4834 = trunc i32 %4833 to i8
  %4835 = and i8 %4834, 1
  %4836 = xor i8 %4835, 1
  store i8 %4836, i8* %21, align 1
  %4837 = xor i32 %4826, %4825
  %4838 = lshr i32 %4837, 4
  %4839 = trunc i32 %4838 to i8
  %4840 = and i8 %4839, 1
  store i8 %4840, i8* %26, align 1
  %4841 = zext i1 %4829 to i8
  store i8 %4841, i8* %29, align 1
  %4842 = lshr i32 %4826, 31
  %4843 = trunc i32 %4842 to i8
  store i8 %4843, i8* %32, align 1
  %4844 = lshr i32 %4825, 31
  %4845 = xor i32 %4842, %4844
  %4846 = add nuw nsw i32 %4845, %4842
  %4847 = icmp eq i32 %4846, 2
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %38, align 1
  store i64 %4827, i64* %RSI.i1962, align 8
  %4849 = add i64 %4820, 5544
  %4850 = add i64 %4820, 16
  %4851 = load i64, i64* %6, align 8
  %4852 = add i64 %4851, -8
  %4853 = inttoptr i64 %4852 to i64*
  store i64 %4850, i64* %4853, align 8
  store i64 %4852, i64* %6, align 8
  store i64 %4849, i64* %3, align 8
  %call2_487073 = tail call %struct.Memory* @sub_488610.is_same_worm(%struct.State* nonnull %0, i64 %4849, %struct.Memory* %MEMORY.55)
  %4854 = load i32, i32* %EAX.i2208, align 4
  %4855 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4856 = and i32 %4854, 255
  %4857 = tail call i32 @llvm.ctpop.i32(i32 %4856)
  %4858 = trunc i32 %4857 to i8
  %4859 = and i8 %4858, 1
  %4860 = xor i8 %4859, 1
  store i8 %4860, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4861 = icmp eq i32 %4854, 0
  %4862 = zext i1 %4861 to i8
  store i8 %4862, i8* %29, align 1
  %4863 = lshr i32 %4854, 31
  %4864 = trunc i32 %4863 to i8
  store i8 %4864, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v259 = select i1 %4861, i64 9, i64 359
  %4865 = add i64 %4855, %.v259
  store i64 %4865, i64* %3, align 8
  br i1 %4861, label %block_487081, label %block_.L_4871df

block_487081:                                     ; preds = %block_.L_487068
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4866 = load i64, i64* %RBP.i, align 8
  %4867 = add i64 %4866, -4
  %4868 = add i64 %4865, 14
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4867 to i32*
  %4870 = load i32, i32* %4869, align 4
  %4871 = sext i32 %4870 to i64
  %4872 = mul nsw i64 %4871, 380
  store i64 %4872, i64* %RCX.i2175, align 8
  %4873 = lshr i64 %4872, 63
  %4874 = add i64 %4872, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4874, i64* %RAX.i2177.pre-phi, align 8
  %4875 = icmp ult i64 %4874, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4876 = icmp ult i64 %4874, %4872
  %4877 = or i1 %4875, %4876
  %4878 = zext i1 %4877 to i8
  store i8 %4878, i8* %14, align 1
  %4879 = trunc i64 %4874 to i32
  %4880 = and i32 %4879, 252
  %4881 = tail call i32 @llvm.ctpop.i32(i32 %4880)
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = xor i8 %4883, 1
  store i8 %4884, i8* %21, align 1
  %4885 = xor i64 %4872, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4886 = xor i64 %4885, %4874
  %4887 = lshr i64 %4886, 4
  %4888 = trunc i64 %4887 to i8
  %4889 = and i8 %4888, 1
  store i8 %4889, i8* %26, align 1
  %4890 = icmp eq i64 %4874, 0
  %4891 = zext i1 %4890 to i8
  store i8 %4891, i8* %29, align 1
  %4892 = lshr i64 %4874, 63
  %4893 = trunc i64 %4892 to i8
  store i8 %4893, i8* %32, align 1
  %4894 = xor i64 %4892, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4895 = xor i64 %4892, %4873
  %4896 = add nuw nsw i64 %4894, %4895
  %4897 = icmp eq i64 %4896, 2
  %4898 = zext i1 %4897 to i8
  store i8 %4898, i8* %38, align 1
  %4899 = add i64 %4872, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %4900 = add i64 %4865, 28
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4899 to i32*
  %4902 = load i32, i32* %4901, align 4
  store i8 0, i8* %14, align 1
  %4903 = and i32 %4902, 255
  %4904 = tail call i32 @llvm.ctpop.i32(i32 %4903)
  %4905 = trunc i32 %4904 to i8
  %4906 = and i8 %4905, 1
  %4907 = xor i8 %4906, 1
  store i8 %4907, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4908 = icmp eq i32 %4902, 0
  %4909 = zext i1 %4908 to i8
  store i8 %4909, i8* %29, align 1
  %4910 = lshr i32 %4902, 31
  %4911 = trunc i32 %4910 to i8
  store i8 %4911, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v260 = select i1 %4908, i64 345, i64 34
  %4912 = add i64 %4865, %.v260
  store i64 %4912, i64* %3, align 8
  br i1 %4908, label %block_.L_4871da, label %block_4870a3

block_4870a3:                                     ; preds = %block_487081
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4913 = add i64 %4912, 13
  store i64 %4913, i64* %3, align 8
  %4914 = load i32, i32* %4869, align 4
  %4915 = add i32 %4914, 1
  %4916 = zext i32 %4915 to i64
  store i64 %4916, i64* %RCX.i2175, align 8
  %4917 = sext i32 %4915 to i64
  %4918 = mul nsw i64 %4917, 380
  store i64 %4918, i64* %RDX.i1945, align 8
  %4919 = lshr i64 %4918, 63
  %4920 = add i64 %4918, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4920, i64* %RAX.i2177.pre-phi, align 8
  %4921 = icmp ult i64 %4920, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4922 = icmp ult i64 %4920, %4918
  %4923 = or i1 %4921, %4922
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %14, align 1
  %4925 = trunc i64 %4920 to i32
  %4926 = and i32 %4925, 252
  %4927 = tail call i32 @llvm.ctpop.i32(i32 %4926)
  %4928 = trunc i32 %4927 to i8
  %4929 = and i8 %4928, 1
  %4930 = xor i8 %4929, 1
  store i8 %4930, i8* %21, align 1
  %4931 = xor i64 %4918, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4932 = xor i64 %4931, %4920
  %4933 = lshr i64 %4932, 4
  %4934 = trunc i64 %4933 to i8
  %4935 = and i8 %4934, 1
  store i8 %4935, i8* %26, align 1
  %4936 = icmp eq i64 %4920, 0
  %4937 = zext i1 %4936 to i8
  store i8 %4937, i8* %29, align 1
  %4938 = lshr i64 %4920, 63
  %4939 = trunc i64 %4938 to i8
  store i8 %4939, i8* %32, align 1
  %4940 = xor i64 %4938, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4941 = xor i64 %4938, %4919
  %4942 = add nuw nsw i64 %4940, %4941
  %4943 = icmp eq i64 %4942, 2
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %38, align 1
  %4945 = add i64 %4918, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %4946 = add i64 %4912, 33
  store i64 %4946, i64* %3, align 8
  %4947 = inttoptr i64 %4945 to i32*
  %4948 = load i32, i32* %4947, align 4
  store i8 0, i8* %14, align 1
  %4949 = and i32 %4948, 255
  %4950 = tail call i32 @llvm.ctpop.i32(i32 %4949)
  %4951 = trunc i32 %4950 to i8
  %4952 = and i8 %4951, 1
  %4953 = xor i8 %4952, 1
  store i8 %4953, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4954 = icmp eq i32 %4948, 0
  %4955 = zext i1 %4954 to i8
  store i8 %4955, i8* %29, align 1
  %4956 = lshr i32 %4948, 31
  %4957 = trunc i32 %4956 to i8
  store i8 %4957, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v261 = select i1 %4954, i64 311, i64 39
  %4958 = add i64 %4912, %.v261
  store i64 %4958, i64* %3, align 8
  br i1 %4954, label %block_.L_4871da, label %block_4870ca

block_4870ca:                                     ; preds = %block_4870a3
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %4959 = load i64, i64* %RBP.i, align 8
  %4960 = add i64 %4959, -4
  %4961 = add i64 %4958, 14
  store i64 %4961, i64* %3, align 8
  %4962 = inttoptr i64 %4960 to i32*
  %4963 = load i32, i32* %4962, align 4
  %4964 = sext i32 %4963 to i64
  %4965 = mul nsw i64 %4964, 380
  store i64 %4965, i64* %RCX.i2175, align 8
  %4966 = lshr i64 %4965, 63
  %4967 = add i64 %4965, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %4967, i64* %RAX.i2177.pre-phi, align 8
  %4968 = icmp ult i64 %4967, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4969 = icmp ult i64 %4967, %4965
  %4970 = or i1 %4968, %4969
  %4971 = zext i1 %4970 to i8
  store i8 %4971, i8* %14, align 1
  %4972 = trunc i64 %4967 to i32
  %4973 = and i32 %4972, 252
  %4974 = tail call i32 @llvm.ctpop.i32(i32 %4973)
  %4975 = trunc i32 %4974 to i8
  %4976 = and i8 %4975, 1
  %4977 = xor i8 %4976, 1
  store i8 %4977, i8* %21, align 1
  %4978 = xor i64 %4965, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %4979 = xor i64 %4978, %4967
  %4980 = lshr i64 %4979, 4
  %4981 = trunc i64 %4980 to i8
  %4982 = and i8 %4981, 1
  store i8 %4982, i8* %26, align 1
  %4983 = icmp eq i64 %4967, 0
  %4984 = zext i1 %4983 to i8
  store i8 %4984, i8* %29, align 1
  %4985 = lshr i64 %4967, 63
  %4986 = trunc i64 %4985 to i8
  store i8 %4986, i8* %32, align 1
  %4987 = xor i64 %4985, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %4988 = xor i64 %4985, %4966
  %4989 = add nuw nsw i64 %4987, %4988
  %4990 = icmp eq i64 %4989, 2
  %4991 = zext i1 %4990 to i8
  store i8 %4991, i8* %38, align 1
  %4992 = add i64 %4965, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %4993 = add i64 %4958, 31
  store i64 %4993, i64* %3, align 8
  %4994 = inttoptr i64 %4992 to i32*
  %4995 = load i32, i32* %4994, align 4
  store i8 0, i8* %14, align 1
  %4996 = and i32 %4995, 255
  %4997 = tail call i32 @llvm.ctpop.i32(i32 %4996)
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = xor i8 %4999, 1
  store i8 %5000, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5001 = icmp eq i32 %4995, 0
  %5002 = zext i1 %5001 to i8
  store i8 %5002, i8* %29, align 1
  %5003 = lshr i32 %4995, 31
  %5004 = trunc i32 %5003 to i8
  store i8 %5004, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v262 = select i1 %5001, i64 37, i64 131
  %5005 = add i64 %4958, %.v262
  store i64 %5005, i64* %3, align 8
  br i1 %5001, label %block_4870ef, label %block_.L_48714d

block_4870ef:                                     ; preds = %block_4870ca
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5006 = add i64 %5005, 13
  store i64 %5006, i64* %3, align 8
  %5007 = load i32, i32* %4962, align 4
  %5008 = add i32 %5007, 1
  %5009 = zext i32 %5008 to i64
  store i64 %5009, i64* %RCX.i2175, align 8
  %5010 = sext i32 %5008 to i64
  %5011 = mul nsw i64 %5010, 380
  store i64 %5011, i64* %RDX.i1945, align 8
  %5012 = lshr i64 %5011, 63
  %5013 = add i64 %5011, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5013, i64* %RAX.i2177.pre-phi, align 8
  %5014 = icmp ult i64 %5013, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5015 = icmp ult i64 %5013, %5011
  %5016 = or i1 %5014, %5015
  %5017 = zext i1 %5016 to i8
  store i8 %5017, i8* %14, align 1
  %5018 = trunc i64 %5013 to i32
  %5019 = and i32 %5018, 252
  %5020 = tail call i32 @llvm.ctpop.i32(i32 %5019)
  %5021 = trunc i32 %5020 to i8
  %5022 = and i8 %5021, 1
  %5023 = xor i8 %5022, 1
  store i8 %5023, i8* %21, align 1
  %5024 = xor i64 %5011, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5025 = xor i64 %5024, %5013
  %5026 = lshr i64 %5025, 4
  %5027 = trunc i64 %5026 to i8
  %5028 = and i8 %5027, 1
  store i8 %5028, i8* %26, align 1
  %5029 = icmp eq i64 %5013, 0
  %5030 = zext i1 %5029 to i8
  store i8 %5030, i8* %29, align 1
  %5031 = lshr i64 %5013, 63
  %5032 = trunc i64 %5031 to i8
  store i8 %5032, i8* %32, align 1
  %5033 = xor i64 %5031, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5034 = xor i64 %5031, %5012
  %5035 = add nuw nsw i64 %5033, %5034
  %5036 = icmp eq i64 %5035, 2
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %38, align 1
  %5038 = add i64 %5011, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %5039 = add i64 %5005, 32
  store i64 %5039, i64* %3, align 8
  %5040 = inttoptr i64 %5038 to i32*
  %5041 = load i32, i32* %5040, align 4
  %5042 = zext i32 %5041 to i64
  store i64 %5042, i64* %RDI.i2211, align 8
  %5043 = load i64, i64* %RBP.i, align 8
  %5044 = add i64 %5043, -4
  %5045 = add i64 %5005, 35
  store i64 %5045, i64* %3, align 8
  %5046 = inttoptr i64 %5044 to i32*
  %5047 = load i32, i32* %5046, align 4
  %5048 = zext i32 %5047 to i64
  store i64 %5048, i64* %RSI.i1962, align 8
  %5049 = add i64 %5005, -64415
  %5050 = add i64 %5005, 40
  %5051 = load i64, i64* %6, align 8
  %5052 = add i64 %5051, -8
  %5053 = inttoptr i64 %5052 to i64*
  store i64 %5050, i64* %5053, align 8
  store i64 %5052, i64* %6, align 8
  store i64 %5049, i64* %3, align 8
  %call2_487112 = tail call %struct.Memory* @sub_477550.does_defend(%struct.State* nonnull %0, i64 %5049, %struct.Memory* %MEMORY.55)
  %5054 = load i32, i32* %EAX.i2208, align 4
  %5055 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5056 = and i32 %5054, 255
  %5057 = tail call i32 @llvm.ctpop.i32(i32 %5056)
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  store i8 %5060, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5061 = icmp eq i32 %5054, 0
  %5062 = zext i1 %5061 to i8
  store i8 %5062, i8* %29, align 1
  %5063 = lshr i32 %5054, 31
  %5064 = trunc i32 %5063 to i8
  store i8 %5064, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v265 = select i1 %5061, i64 54, i64 9
  %5065 = add i64 %5055, %.v265
  store i64 %5065, i64* %3, align 8
  br i1 %5061, label %block_.L_48714d, label %block_487120

block_487120:                                     ; preds = %block_4870ef
  store i64 5, i64* %RDX.i1945, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5066 = load i64, i64* %RBP.i, align 8
  %5067 = add i64 %5066, -4
  %5068 = add i64 %5065, 18
  store i64 %5068, i64* %3, align 8
  %5069 = inttoptr i64 %5067 to i32*
  %5070 = load i32, i32* %5069, align 4
  %5071 = zext i32 %5070 to i64
  store i64 %5071, i64* %RDI.i2211, align 8
  %5072 = add i64 %5065, 21
  store i64 %5072, i64* %3, align 8
  %5073 = load i32, i32* %5069, align 4
  %5074 = add i32 %5073, 1
  %5075 = zext i32 %5074 to i64
  store i64 %5075, i64* %RCX.i2175, align 8
  %5076 = sext i32 %5074 to i64
  %5077 = mul nsw i64 %5076, 380
  store i64 %5077, i64* %RSI.i1962, align 8
  %5078 = lshr i64 %5077, 63
  %5079 = add i64 %5077, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5079, i64* %RAX.i2177.pre-phi, align 8
  %5080 = icmp ult i64 %5079, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5081 = icmp ult i64 %5079, %5077
  %5082 = or i1 %5080, %5081
  %5083 = zext i1 %5082 to i8
  store i8 %5083, i8* %14, align 1
  %5084 = trunc i64 %5079 to i32
  %5085 = and i32 %5084, 252
  %5086 = tail call i32 @llvm.ctpop.i32(i32 %5085)
  %5087 = trunc i32 %5086 to i8
  %5088 = and i8 %5087, 1
  %5089 = xor i8 %5088, 1
  store i8 %5089, i8* %21, align 1
  %5090 = xor i64 %5077, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5091 = xor i64 %5090, %5079
  %5092 = lshr i64 %5091, 4
  %5093 = trunc i64 %5092 to i8
  %5094 = and i8 %5093, 1
  store i8 %5094, i8* %26, align 1
  %5095 = icmp eq i64 %5079, 0
  %5096 = zext i1 %5095 to i8
  store i8 %5096, i8* %29, align 1
  %5097 = lshr i64 %5079, 63
  %5098 = trunc i64 %5097 to i8
  store i8 %5098, i8* %32, align 1
  %5099 = xor i64 %5097, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5100 = xor i64 %5097, %5078
  %5101 = add nuw nsw i64 %5099, %5100
  %5102 = icmp eq i64 %5101, 2
  %5103 = zext i1 %5102 to i8
  store i8 %5103, i8* %38, align 1
  %5104 = add i64 %5077, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %5105 = add i64 %5065, 40
  store i64 %5105, i64* %3, align 8
  %5106 = inttoptr i64 %5104 to i32*
  %5107 = load i32, i32* %5106, align 4
  %5108 = zext i32 %5107 to i64
  store i64 %5108, i64* %RSI.i1962, align 8
  %5109 = add i64 %5065, 5856
  %5110 = add i64 %5065, 45
  %5111 = load i64, i64* %6, align 8
  %5112 = add i64 %5111, -8
  %5113 = inttoptr i64 %5112 to i64*
  store i64 %5110, i64* %5113, align 8
  store i64 %5112, i64* %6, align 8
  store i64 %5109, i64* %3, align 8
  %call2_487148 = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %5109, %struct.Memory* %MEMORY.55)
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_48714d

block_.L_48714d:                                  ; preds = %block_4870ca, %block_487120, %block_4870ef
  %5114 = phi i64 [ %.pre175, %block_487120 ], [ %5065, %block_4870ef ], [ %5005, %block_4870ca ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5115 = load i64, i64* %RBP.i, align 8
  %5116 = add i64 %5115, -4
  %5117 = add i64 %5114, 13
  store i64 %5117, i64* %3, align 8
  %5118 = inttoptr i64 %5116 to i32*
  %5119 = load i32, i32* %5118, align 4
  %5120 = add i32 %5119, 1
  %5121 = zext i32 %5120 to i64
  store i64 %5121, i64* %RCX.i2175, align 8
  %5122 = sext i32 %5120 to i64
  %5123 = mul nsw i64 %5122, 380
  store i64 %5123, i64* %RDX.i1945, align 8
  %5124 = lshr i64 %5123, 63
  %5125 = add i64 %5123, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5125, i64* %RAX.i2177.pre-phi, align 8
  %5126 = icmp ult i64 %5125, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5127 = icmp ult i64 %5125, %5123
  %5128 = or i1 %5126, %5127
  %5129 = zext i1 %5128 to i8
  store i8 %5129, i8* %14, align 1
  %5130 = trunc i64 %5125 to i32
  %5131 = and i32 %5130, 252
  %5132 = tail call i32 @llvm.ctpop.i32(i32 %5131)
  %5133 = trunc i32 %5132 to i8
  %5134 = and i8 %5133, 1
  %5135 = xor i8 %5134, 1
  store i8 %5135, i8* %21, align 1
  %5136 = xor i64 %5123, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5137 = xor i64 %5136, %5125
  %5138 = lshr i64 %5137, 4
  %5139 = trunc i64 %5138 to i8
  %5140 = and i8 %5139, 1
  store i8 %5140, i8* %26, align 1
  %5141 = icmp eq i64 %5125, 0
  %5142 = zext i1 %5141 to i8
  store i8 %5142, i8* %29, align 1
  %5143 = lshr i64 %5125, 63
  %5144 = trunc i64 %5143 to i8
  store i8 %5144, i8* %32, align 1
  %5145 = xor i64 %5143, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5146 = xor i64 %5143, %5124
  %5147 = add nuw nsw i64 %5145, %5146
  %5148 = icmp eq i64 %5147, 2
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %38, align 1
  %5150 = add i64 %5123, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %5151 = add i64 %5114, 36
  store i64 %5151, i64* %3, align 8
  %5152 = inttoptr i64 %5150 to i32*
  %5153 = load i32, i32* %5152, align 4
  store i8 0, i8* %14, align 1
  %5154 = and i32 %5153, 255
  %5155 = tail call i32 @llvm.ctpop.i32(i32 %5154)
  %5156 = trunc i32 %5155 to i8
  %5157 = and i8 %5156, 1
  %5158 = xor i8 %5157, 1
  store i8 %5158, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5159 = icmp eq i32 %5153, 0
  %5160 = zext i1 %5159 to i8
  store i8 %5160, i8* %29, align 1
  %5161 = lshr i32 %5153, 31
  %5162 = trunc i32 %5161 to i8
  store i8 %5162, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v263 = select i1 %5159, i64 42, i64 136
  %5163 = add i64 %5114, %.v263
  store i64 %5163, i64* %3, align 8
  br i1 %5159, label %block_487177, label %block_.L_4871d5

block_487177:                                     ; preds = %block_.L_48714d
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5164 = load i64, i64* %RBP.i, align 8
  %5165 = add i64 %5164, -4
  %5166 = add i64 %5163, 14
  store i64 %5166, i64* %3, align 8
  %5167 = inttoptr i64 %5165 to i32*
  %5168 = load i32, i32* %5167, align 4
  %5169 = sext i32 %5168 to i64
  %5170 = mul nsw i64 %5169, 380
  store i64 %5170, i64* %RCX.i2175, align 8
  %5171 = lshr i64 %5170, 63
  %5172 = add i64 %5170, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5172, i64* %RAX.i2177.pre-phi, align 8
  %5173 = icmp ult i64 %5172, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5174 = icmp ult i64 %5172, %5170
  %5175 = or i1 %5173, %5174
  %5176 = zext i1 %5175 to i8
  store i8 %5176, i8* %14, align 1
  %5177 = trunc i64 %5172 to i32
  %5178 = and i32 %5177, 252
  %5179 = tail call i32 @llvm.ctpop.i32(i32 %5178)
  %5180 = trunc i32 %5179 to i8
  %5181 = and i8 %5180, 1
  %5182 = xor i8 %5181, 1
  store i8 %5182, i8* %21, align 1
  %5183 = xor i64 %5170, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5184 = xor i64 %5183, %5172
  %5185 = lshr i64 %5184, 4
  %5186 = trunc i64 %5185 to i8
  %5187 = and i8 %5186, 1
  store i8 %5187, i8* %26, align 1
  %5188 = icmp eq i64 %5172, 0
  %5189 = zext i1 %5188 to i8
  store i8 %5189, i8* %29, align 1
  %5190 = lshr i64 %5172, 63
  %5191 = trunc i64 %5190 to i8
  store i8 %5191, i8* %32, align 1
  %5192 = xor i64 %5190, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5193 = xor i64 %5190, %5171
  %5194 = add nuw nsw i64 %5192, %5193
  %5195 = icmp eq i64 %5194, 2
  %5196 = zext i1 %5195 to i8
  store i8 %5196, i8* %38, align 1
  %5197 = add i64 %5170, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %5198 = add i64 %5163, 27
  store i64 %5198, i64* %3, align 8
  %5199 = inttoptr i64 %5197 to i32*
  %5200 = load i32, i32* %5199, align 4
  %5201 = zext i32 %5200 to i64
  store i64 %5201, i64* %RDI.i2211, align 8
  %5202 = add i64 %5163, 30
  store i64 %5202, i64* %3, align 8
  %5203 = load i32, i32* %5167, align 4
  %5204 = add i32 %5203, 1
  %5205 = zext i32 %5204 to i64
  store i64 %5205, i64* %RDX.i1945, align 8
  %5206 = icmp eq i32 %5203, -1
  %5207 = icmp eq i32 %5204, 0
  %5208 = or i1 %5206, %5207
  %5209 = zext i1 %5208 to i8
  store i8 %5209, i8* %14, align 1
  %5210 = and i32 %5204, 255
  %5211 = tail call i32 @llvm.ctpop.i32(i32 %5210)
  %5212 = trunc i32 %5211 to i8
  %5213 = and i8 %5212, 1
  %5214 = xor i8 %5213, 1
  store i8 %5214, i8* %21, align 1
  %5215 = xor i32 %5204, %5203
  %5216 = lshr i32 %5215, 4
  %5217 = trunc i32 %5216 to i8
  %5218 = and i8 %5217, 1
  store i8 %5218, i8* %26, align 1
  %5219 = zext i1 %5207 to i8
  store i8 %5219, i8* %29, align 1
  %5220 = lshr i32 %5204, 31
  %5221 = trunc i32 %5220 to i8
  store i8 %5221, i8* %32, align 1
  %5222 = lshr i32 %5203, 31
  %5223 = xor i32 %5220, %5222
  %5224 = add nuw nsw i32 %5223, %5220
  %5225 = icmp eq i32 %5224, 2
  %5226 = zext i1 %5225 to i8
  store i8 %5226, i8* %38, align 1
  store i64 %5205, i64* %RSI.i1962, align 8
  %5227 = add i64 %5163, -64551
  %5228 = add i64 %5163, 40
  %5229 = load i64, i64* %6, align 8
  %5230 = add i64 %5229, -8
  %5231 = inttoptr i64 %5230 to i64*
  store i64 %5228, i64* %5231, align 8
  store i64 %5230, i64* %6, align 8
  store i64 %5227, i64* %3, align 8
  %call2_48719a = tail call %struct.Memory* @sub_477550.does_defend(%struct.State* nonnull %0, i64 %5227, %struct.Memory* %MEMORY.55)
  %5232 = load i32, i32* %EAX.i2208, align 4
  %5233 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5234 = and i32 %5232, 255
  %5235 = tail call i32 @llvm.ctpop.i32(i32 %5234)
  %5236 = trunc i32 %5235 to i8
  %5237 = and i8 %5236, 1
  %5238 = xor i8 %5237, 1
  store i8 %5238, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5239 = icmp eq i32 %5232, 0
  %5240 = zext i1 %5239 to i8
  store i8 %5240, i8* %29, align 1
  %5241 = lshr i32 %5232, 31
  %5242 = trunc i32 %5241 to i8
  store i8 %5242, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v264 = select i1 %5239, i64 54, i64 9
  %5243 = add i64 %5233, %.v264
  store i64 %5243, i64* %3, align 8
  br i1 %5239, label %block_.L_4871d5, label %block_4871a8

block_4871a8:                                     ; preds = %block_487177
  store i64 5, i64* %RDX.i1945, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5244 = load i64, i64* %RBP.i, align 8
  %5245 = add i64 %5244, -4
  %5246 = add i64 %5243, 18
  store i64 %5246, i64* %3, align 8
  %5247 = inttoptr i64 %5245 to i32*
  %5248 = load i32, i32* %5247, align 4
  %5249 = add i32 %5248, 1
  %5250 = zext i32 %5249 to i64
  store i64 %5250, i64* %RCX.i2175, align 8
  %5251 = icmp eq i32 %5248, -1
  %5252 = icmp eq i32 %5249, 0
  %5253 = or i1 %5251, %5252
  %5254 = zext i1 %5253 to i8
  store i8 %5254, i8* %14, align 1
  %5255 = and i32 %5249, 255
  %5256 = tail call i32 @llvm.ctpop.i32(i32 %5255)
  %5257 = trunc i32 %5256 to i8
  %5258 = and i8 %5257, 1
  %5259 = xor i8 %5258, 1
  store i8 %5259, i8* %21, align 1
  %5260 = xor i32 %5249, %5248
  %5261 = lshr i32 %5260, 4
  %5262 = trunc i32 %5261 to i8
  %5263 = and i8 %5262, 1
  store i8 %5263, i8* %26, align 1
  %5264 = zext i1 %5252 to i8
  store i8 %5264, i8* %29, align 1
  %5265 = lshr i32 %5249, 31
  %5266 = trunc i32 %5265 to i8
  store i8 %5266, i8* %32, align 1
  %5267 = lshr i32 %5248, 31
  %5268 = xor i32 %5265, %5267
  %5269 = add nuw nsw i32 %5268, %5265
  %5270 = icmp eq i32 %5269, 2
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %38, align 1
  %5272 = add i64 %5243, 25
  store i64 %5272, i64* %3, align 8
  %5273 = load i32, i32* %5247, align 4
  %5274 = sext i32 %5273 to i64
  %5275 = mul nsw i64 %5274, 380
  store i64 %5275, i64* %RSI.i1962, align 8
  %5276 = lshr i64 %5275, 63
  %5277 = add i64 %5275, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5277, i64* %RAX.i2177.pre-phi, align 8
  %5278 = icmp ult i64 %5277, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5279 = icmp ult i64 %5277, %5275
  %5280 = or i1 %5278, %5279
  %5281 = zext i1 %5280 to i8
  store i8 %5281, i8* %14, align 1
  %5282 = trunc i64 %5277 to i32
  %5283 = and i32 %5282, 252
  %5284 = tail call i32 @llvm.ctpop.i32(i32 %5283)
  %5285 = trunc i32 %5284 to i8
  %5286 = and i8 %5285, 1
  %5287 = xor i8 %5286, 1
  store i8 %5287, i8* %21, align 1
  %5288 = xor i64 %5275, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5289 = xor i64 %5288, %5277
  %5290 = lshr i64 %5289, 4
  %5291 = trunc i64 %5290 to i8
  %5292 = and i8 %5291, 1
  store i8 %5292, i8* %26, align 1
  %5293 = icmp eq i64 %5277, 0
  %5294 = zext i1 %5293 to i8
  store i8 %5294, i8* %29, align 1
  %5295 = lshr i64 %5277, 63
  %5296 = trunc i64 %5295 to i8
  store i8 %5296, i8* %32, align 1
  %5297 = xor i64 %5295, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5298 = xor i64 %5295, %5276
  %5299 = add nuw nsw i64 %5297, %5298
  %5300 = icmp eq i64 %5299, 2
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %38, align 1
  %5302 = add i64 %5275, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %5303 = add i64 %5243, 38
  store i64 %5303, i64* %3, align 8
  %5304 = inttoptr i64 %5302 to i32*
  %5305 = load i32, i32* %5304, align 4
  %5306 = zext i32 %5305 to i64
  store i64 %5306, i64* %RSI.i1962, align 8
  %5307 = load i32, i32* %ECX.i2172, align 4
  %5308 = zext i32 %5307 to i64
  store i64 %5308, i64* %RDI.i2211, align 8
  %5309 = add i64 %5243, 5720
  %5310 = add i64 %5243, 45
  %5311 = load i64, i64* %6, align 8
  %5312 = add i64 %5311, -8
  %5313 = inttoptr i64 %5312 to i64*
  store i64 %5310, i64* %5313, align 8
  store i64 %5312, i64* %6, align 8
  store i64 %5309, i64* %3, align 8
  %call2_4871d0 = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %5309, %struct.Memory* %MEMORY.55)
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_4871d5

block_.L_4871d5:                                  ; preds = %block_.L_48714d, %block_4871a8, %block_487177
  %5314 = phi i64 [ %.pre176, %block_4871a8 ], [ %5243, %block_487177 ], [ %5163, %block_.L_48714d ]
  %5315 = add i64 %5314, 5
  store i64 %5315, i64* %3, align 8
  br label %block_.L_4871da

block_.L_4871da:                                  ; preds = %block_.L_4871d5, %block_4870a3, %block_487081
  %5316 = phi i64 [ %5315, %block_.L_4871d5 ], [ %4958, %block_4870a3 ], [ %4912, %block_487081 ]
  %5317 = add i64 %5316, 5
  store i64 %5317, i64* %3, align 8
  br label %block_.L_4871df

block_.L_4871df:                                  ; preds = %block_.L_487068, %block_48704e, %block_48701f, %block_.L_4871da
  %5318 = phi i64 [ %5317, %block_.L_4871da ], [ %4865, %block_.L_487068 ], [ %4819, %block_48704e ], [ %4720, %block_48701f ]
  %5319 = load i64, i64* %RBP.i, align 8
  %5320 = add i64 %5319, -4
  %5321 = add i64 %5318, 8
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5320 to i32*
  %5323 = load i32, i32* %5322, align 4
  %5324 = add i32 %5323, 1
  %5325 = zext i32 %5324 to i64
  store i64 %5325, i64* %RAX.i2177.pre-phi, align 8
  %5326 = icmp eq i32 %5323, -1
  %5327 = icmp eq i32 %5324, 0
  %5328 = or i1 %5326, %5327
  %5329 = zext i1 %5328 to i8
  store i8 %5329, i8* %14, align 1
  %5330 = and i32 %5324, 255
  %5331 = tail call i32 @llvm.ctpop.i32(i32 %5330)
  %5332 = trunc i32 %5331 to i8
  %5333 = and i8 %5332, 1
  %5334 = xor i8 %5333, 1
  store i8 %5334, i8* %21, align 1
  %5335 = xor i32 %5324, %5323
  %5336 = lshr i32 %5335, 4
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  store i8 %5338, i8* %26, align 1
  %5339 = zext i1 %5327 to i8
  store i8 %5339, i8* %29, align 1
  %5340 = lshr i32 %5324, 31
  %5341 = trunc i32 %5340 to i8
  store i8 %5341, i8* %32, align 1
  %5342 = lshr i32 %5323, 31
  %5343 = xor i32 %5340, %5342
  %5344 = add nuw nsw i32 %5343, %5340
  %5345 = icmp eq i32 %5344, 2
  %5346 = zext i1 %5345 to i8
  store i8 %5346, i8* %38, align 1
  %5347 = add i64 %5318, 14
  store i64 %5347, i64* %3, align 8
  store i32 %5324, i32* %5322, align 4
  %5348 = load i64, i64* %3, align 8
  %5349 = add i64 %5348, -496
  store i64 %5349, i64* %3, align 8
  br label %block_.L_486ffd

block_.L_4871f2:                                  ; preds = %block_.L_486ffd
  %5350 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %5351 = and i32 %5350, 255
  %5352 = tail call i32 @llvm.ctpop.i32(i32 %5351)
  %5353 = trunc i32 %5352 to i8
  %5354 = and i8 %5353, 1
  %5355 = xor i8 %5354, 1
  store i8 %5355, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5356 = icmp eq i32 %5350, 0
  %5357 = zext i1 %5356 to i8
  store i8 %5357, i8* %29, align 1
  %5358 = lshr i32 %5350, 31
  %5359 = trunc i32 %5358 to i8
  store i8 %5359, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v234 = select i1 %5356, i64 14, i64 19
  %5360 = add i64 %4668, %.v234
  store i64 %5360, i64* %3, align 8
  br i1 %5356, label %block_487200, label %block_.L_487205

block_487200:                                     ; preds = %block_.L_4871f2
  %5361 = add i64 %5360, 45
  store i64 %5361, i64* %3, align 8
  br label %block_.L_48722d

block_.L_487205:                                  ; preds = %block_.L_4871f2
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i2211, align 8
  store i64 443, i64* %RSI.i1962, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i1945, align 8
  store i64 4294967295, i64* %RAX.i2177.pre-phi, align 8
  store i64 4294967295, i64* %RCX.i2175, align 8
  store i64 4294967295, i64* %R8.i2141.pre-phi, align 8
  %5362 = add i64 %5360, -217461
  %5363 = add i64 %5360, 40
  %5364 = load i64, i64* %6, align 8
  %5365 = add i64 %5364, -8
  %5366 = inttoptr i64 %5365 to i64*
  store i64 %5363, i64* %5366, align 8
  store i64 %5365, i64* %6, align 8
  store i64 %5362, i64* %3, align 8
  %call2_487228 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %5362, %struct.Memory* %MEMORY.55)
  %.pre163 = load i64, i64* %RBP.i, align 8
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_48722d

block_.L_48722d:                                  ; preds = %block_.L_487205, %block_487200
  %5367 = phi i64 [ %.pre164, %block_.L_487205 ], [ %5361, %block_487200 ]
  %5368 = phi i64 [ %.pre163, %block_.L_487205 ], [ %4639, %block_487200 ]
  %MEMORY.70 = phi %struct.Memory* [ %call2_487228, %block_.L_487205 ], [ %MEMORY.55, %block_487200 ]
  %5369 = add i64 %5368, -4
  %5370 = add i64 %5367, 7
  store i64 %5370, i64* %3, align 8
  %5371 = inttoptr i64 %5369 to i32*
  store i32 21, i32* %5371, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_487234

block_.L_487234:                                  ; preds = %block_.L_48736d, %block_.L_48722d
  %5372 = phi i64 [ %.pre165, %block_.L_48722d ], [ %5778, %block_.L_48736d ]
  %MEMORY.71 = phi %struct.Memory* [ %MEMORY.70, %block_.L_48722d ], [ %MEMORY.78, %block_.L_48736d ]
  %5373 = load i64, i64* %RBP.i, align 8
  %5374 = add i64 %5373, -4
  %5375 = add i64 %5372, 7
  store i64 %5375, i64* %3, align 8
  %5376 = inttoptr i64 %5374 to i32*
  %5377 = load i32, i32* %5376, align 4
  %5378 = add i32 %5377, -400
  %5379 = icmp ult i32 %5377, 400
  %5380 = zext i1 %5379 to i8
  store i8 %5380, i8* %14, align 1
  %5381 = and i32 %5378, 255
  %5382 = tail call i32 @llvm.ctpop.i32(i32 %5381)
  %5383 = trunc i32 %5382 to i8
  %5384 = and i8 %5383, 1
  %5385 = xor i8 %5384, 1
  store i8 %5385, i8* %21, align 1
  %5386 = xor i32 %5377, 16
  %5387 = xor i32 %5386, %5378
  %5388 = lshr i32 %5387, 4
  %5389 = trunc i32 %5388 to i8
  %5390 = and i8 %5389, 1
  store i8 %5390, i8* %26, align 1
  %5391 = icmp eq i32 %5378, 0
  %5392 = zext i1 %5391 to i8
  store i8 %5392, i8* %29, align 1
  %5393 = lshr i32 %5378, 31
  %5394 = trunc i32 %5393 to i8
  store i8 %5394, i8* %32, align 1
  %5395 = lshr i32 %5377, 31
  %5396 = xor i32 %5393, %5395
  %5397 = add nuw nsw i32 %5396, %5395
  %5398 = icmp eq i32 %5397, 2
  %5399 = zext i1 %5398 to i8
  store i8 %5399, i8* %38, align 1
  %5400 = icmp ne i8 %5394, 0
  %5401 = xor i1 %5400, %5398
  %.v235 = select i1 %5401, i64 13, i64 327
  %5402 = add i64 %5372, %.v235
  store i64 %5402, i64* %3, align 8
  br i1 %5401, label %block_487241, label %block_.L_48737b

block_487241:                                     ; preds = %block_.L_487234
  %5403 = add i64 %5402, 4
  store i64 %5403, i64* %3, align 8
  %5404 = load i32, i32* %5376, align 4
  %5405 = sext i32 %5404 to i64
  store i64 %5405, i64* %RAX.i2177.pre-phi, align 8
  %5406 = add nsw i64 %5405, 12099168
  %5407 = add i64 %5402, 12
  store i64 %5407, i64* %3, align 8
  %5408 = inttoptr i64 %5406 to i8*
  %5409 = load i8, i8* %5408, align 1
  %5410 = zext i8 %5409 to i64
  store i64 %5410, i64* %RCX.i2175, align 8
  %5411 = zext i8 %5409 to i32
  %5412 = add nsw i32 %5411, -1
  %5413 = icmp eq i8 %5409, 0
  %5414 = zext i1 %5413 to i8
  store i8 %5414, i8* %14, align 1
  %5415 = and i32 %5412, 255
  %5416 = tail call i32 @llvm.ctpop.i32(i32 %5415)
  %5417 = trunc i32 %5416 to i8
  %5418 = and i8 %5417, 1
  %5419 = xor i8 %5418, 1
  store i8 %5419, i8* %21, align 1
  %5420 = xor i32 %5412, %5411
  %5421 = lshr i32 %5420, 4
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  store i8 %5423, i8* %26, align 1
  %5424 = icmp eq i32 %5412, 0
  %5425 = zext i1 %5424 to i8
  store i8 %5425, i8* %29, align 1
  %5426 = lshr i32 %5412, 31
  %5427 = trunc i32 %5426 to i8
  store i8 %5427, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v248 = select i1 %5424, i64 42, i64 21
  %5428 = add i64 %5402, %.v248
  store i64 %5428, i64* %3, align 8
  br i1 %5424, label %block_.L_48726b, label %block_487256

block_487256:                                     ; preds = %block_487241
  %5429 = add i64 %5428, 4
  store i64 %5429, i64* %3, align 8
  %5430 = load i32, i32* %5376, align 4
  %5431 = sext i32 %5430 to i64
  store i64 %5431, i64* %RAX.i2177.pre-phi, align 8
  %5432 = add nsw i64 %5431, 12099168
  %5433 = add i64 %5428, 12
  store i64 %5433, i64* %3, align 8
  %5434 = inttoptr i64 %5432 to i8*
  %5435 = load i8, i8* %5434, align 1
  %5436 = zext i8 %5435 to i64
  store i64 %5436, i64* %RCX.i2175, align 8
  %5437 = zext i8 %5435 to i32
  %5438 = add nsw i32 %5437, -2
  %5439 = icmp ult i8 %5435, 2
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %14, align 1
  %5441 = and i32 %5438, 255
  %5442 = tail call i32 @llvm.ctpop.i32(i32 %5441)
  %5443 = trunc i32 %5442 to i8
  %5444 = and i8 %5443, 1
  %5445 = xor i8 %5444, 1
  store i8 %5445, i8* %21, align 1
  %5446 = xor i32 %5438, %5437
  %5447 = lshr i32 %5446, 4
  %5448 = trunc i32 %5447 to i8
  %5449 = and i8 %5448, 1
  store i8 %5449, i8* %26, align 1
  %5450 = icmp eq i32 %5438, 0
  %5451 = zext i1 %5450 to i8
  store i8 %5451, i8* %29, align 1
  %5452 = lshr i32 %5438, 31
  %5453 = trunc i32 %5452 to i8
  store i8 %5453, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v249 = select i1 %5450, i64 21, i64 41
  %5454 = add i64 %5428, %.v249
  store i64 %5454, i64* %3, align 8
  br i1 %5450, label %block_.L_48726b, label %block_.L_48727f

block_.L_48726b:                                  ; preds = %block_487256, %block_487241
  %5455 = phi i64 [ %5454, %block_487256 ], [ %5428, %block_487241 ]
  %5456 = add i64 %5455, 3
  store i64 %5456, i64* %3, align 8
  %5457 = load i32, i32* %5376, align 4
  %5458 = zext i32 %5457 to i64
  store i64 %5458, i64* %RDI.i2211, align 8
  %5459 = add i64 %5455, 6
  store i64 %5459, i64* %3, align 8
  %5460 = load i32, i32* %5376, align 4
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RSI.i1962, align 8
  %5462 = add i64 %5455, 3717
  %5463 = add i64 %5455, 11
  %5464 = load i64, i64* %6, align 8
  %5465 = add i64 %5464, -8
  %5466 = inttoptr i64 %5465 to i64*
  store i64 %5463, i64* %5466, align 8
  store i64 %5465, i64* %6, align 8
  store i64 %5462, i64* %3, align 8
  %call2_487271 = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %5462, %struct.Memory* %MEMORY.71)
  %5467 = load i32, i32* %EAX.i2208, align 4
  %5468 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5469 = and i32 %5467, 255
  %5470 = tail call i32 @llvm.ctpop.i32(i32 %5469)
  %5471 = trunc i32 %5470 to i8
  %5472 = and i8 %5471, 1
  %5473 = xor i8 %5472, 1
  store i8 %5473, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5474 = icmp eq i32 %5467, 0
  %5475 = zext i1 %5474 to i8
  store i8 %5475, i8* %29, align 1
  %5476 = lshr i32 %5467, 31
  %5477 = trunc i32 %5476 to i8
  store i8 %5477, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v250 = select i1 %5474, i64 9, i64 14
  %5478 = add i64 %5468, %.v250
  store i64 %5478, i64* %3, align 8
  br i1 %5474, label %block_.L_48727f, label %block_.L_487284

block_.L_48727f:                                  ; preds = %block_.L_48726b, %block_487256
  %5479 = phi i64 [ %5478, %block_.L_48726b ], [ %5454, %block_487256 ]
  %5480 = add i64 %5479, 238
  store i64 %5480, i64* %3, align 8
  br label %block_.L_48736d

block_.L_487284:                                  ; preds = %block_.L_48726b
  %5481 = load i64, i64* %RBP.i, align 8
  %5482 = add i64 %5481, -1676
  store i64 %5482, i64* %RSI.i1962, align 8
  %5483 = add i64 %5481, -4
  %5484 = add i64 %5478, 10
  store i64 %5484, i64* %3, align 8
  %5485 = inttoptr i64 %5483 to i32*
  %5486 = load i32, i32* %5485, align 4
  %5487 = zext i32 %5486 to i64
  store i64 %5487, i64* %RDI.i2211, align 8
  %5488 = add i64 %5478, 5628
  %5489 = add i64 %5478, 15
  %5490 = load i64, i64* %6, align 8
  %5491 = add i64 %5490, -8
  %5492 = inttoptr i64 %5491 to i64*
  store i64 %5489, i64* %5492, align 8
  store i64 %5491, i64* %6, align 8
  store i64 %5488, i64* %3, align 8
  %call2_48728e = tail call %struct.Memory* @sub_488880.find_lunch(%struct.State* nonnull %0, i64 %5488, %struct.Memory* %MEMORY.71)
  %5493 = load i32, i32* %EAX.i2208, align 4
  %5494 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5495 = and i32 %5493, 255
  %5496 = tail call i32 @llvm.ctpop.i32(i32 %5495)
  %5497 = trunc i32 %5496 to i8
  %5498 = and i8 %5497, 1
  %5499 = xor i8 %5498, 1
  store i8 %5499, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5500 = icmp eq i32 %5493, 0
  %5501 = zext i1 %5500 to i8
  store i8 %5501, i8* %29, align 1
  %5502 = lshr i32 %5493, 31
  %5503 = trunc i32 %5502 to i8
  store i8 %5503, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v251 = select i1 %5500, i64 179, i64 9
  %5504 = add i64 %5494, %.v251
  store i64 %5504, i64* %3, align 8
  br i1 %5500, label %block_.L_487346, label %block_48729c

block_48729c:                                     ; preds = %block_.L_487284
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5505 = load i64, i64* %RBP.i, align 8
  %5506 = add i64 %5505, -1676
  %5507 = add i64 %5504, 17
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = sext i32 %5509 to i64
  %5511 = mul nsw i64 %5510, 380
  store i64 %5511, i64* %RCX.i2175, align 8
  %5512 = lshr i64 %5511, 63
  %5513 = add i64 %5511, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5513, i64* %RAX.i2177.pre-phi, align 8
  %5514 = icmp ult i64 %5513, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5515 = icmp ult i64 %5513, %5511
  %5516 = or i1 %5514, %5515
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %14, align 1
  %5518 = trunc i64 %5513 to i32
  %5519 = and i32 %5518, 252
  %5520 = tail call i32 @llvm.ctpop.i32(i32 %5519)
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  %5523 = xor i8 %5522, 1
  store i8 %5523, i8* %21, align 1
  %5524 = xor i64 %5511, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5525 = xor i64 %5524, %5513
  %5526 = lshr i64 %5525, 4
  %5527 = trunc i64 %5526 to i8
  %5528 = and i8 %5527, 1
  store i8 %5528, i8* %26, align 1
  %5529 = icmp eq i64 %5513, 0
  %5530 = zext i1 %5529 to i8
  store i8 %5530, i8* %29, align 1
  %5531 = lshr i64 %5513, 63
  %5532 = trunc i64 %5531 to i8
  store i8 %5532, i8* %32, align 1
  %5533 = xor i64 %5531, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5534 = xor i64 %5531, %5512
  %5535 = add nuw nsw i64 %5533, %5534
  %5536 = icmp eq i64 %5535, 2
  %5537 = zext i1 %5536 to i8
  store i8 %5537, i8* %38, align 1
  %5538 = add i64 %5511, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %5539 = add i64 %5504, 31
  store i64 %5539, i64* %3, align 8
  %5540 = inttoptr i64 %5538 to i32*
  %5541 = load i32, i32* %5540, align 4
  %5542 = add i32 %5541, -5
  %5543 = icmp ult i32 %5541, 5
  %5544 = zext i1 %5543 to i8
  store i8 %5544, i8* %14, align 1
  %5545 = and i32 %5542, 255
  %5546 = tail call i32 @llvm.ctpop.i32(i32 %5545)
  %5547 = trunc i32 %5546 to i8
  %5548 = and i8 %5547, 1
  %5549 = xor i8 %5548, 1
  store i8 %5549, i8* %21, align 1
  %5550 = xor i32 %5542, %5541
  %5551 = lshr i32 %5550, 4
  %5552 = trunc i32 %5551 to i8
  %5553 = and i8 %5552, 1
  store i8 %5553, i8* %26, align 1
  %5554 = icmp eq i32 %5542, 0
  %5555 = zext i1 %5554 to i8
  store i8 %5555, i8* %29, align 1
  %5556 = lshr i32 %5542, 31
  %5557 = trunc i32 %5556 to i8
  store i8 %5557, i8* %32, align 1
  %5558 = lshr i32 %5541, 31
  %5559 = xor i32 %5556, %5558
  %5560 = add nuw nsw i32 %5559, %5558
  %5561 = icmp eq i32 %5560, 2
  %5562 = zext i1 %5561 to i8
  store i8 %5562, i8* %38, align 1
  %.v252 = select i1 %5554, i64 74, i64 37
  %5563 = add i64 %5504, %.v252
  store i64 %5563, i64* %3, align 8
  br i1 %5554, label %block_.L_4872e6, label %block_4872c1

block_4872c1:                                     ; preds = %block_48729c
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5564 = load i64, i64* %RBP.i, align 8
  %5565 = add i64 %5564, -1676
  %5566 = add i64 %5563, 17
  store i64 %5566, i64* %3, align 8
  %5567 = inttoptr i64 %5565 to i32*
  %5568 = load i32, i32* %5567, align 4
  %5569 = sext i32 %5568 to i64
  %5570 = mul nsw i64 %5569, 380
  store i64 %5570, i64* %RCX.i2175, align 8
  %5571 = lshr i64 %5570, 63
  %5572 = add i64 %5570, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5572, i64* %RAX.i2177.pre-phi, align 8
  %5573 = icmp ult i64 %5572, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5574 = icmp ult i64 %5572, %5570
  %5575 = or i1 %5573, %5574
  %5576 = zext i1 %5575 to i8
  store i8 %5576, i8* %14, align 1
  %5577 = trunc i64 %5572 to i32
  %5578 = and i32 %5577, 252
  %5579 = tail call i32 @llvm.ctpop.i32(i32 %5578)
  %5580 = trunc i32 %5579 to i8
  %5581 = and i8 %5580, 1
  %5582 = xor i8 %5581, 1
  store i8 %5582, i8* %21, align 1
  %5583 = xor i64 %5570, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5584 = xor i64 %5583, %5572
  %5585 = lshr i64 %5584, 4
  %5586 = trunc i64 %5585 to i8
  %5587 = and i8 %5586, 1
  store i8 %5587, i8* %26, align 1
  %5588 = icmp eq i64 %5572, 0
  %5589 = zext i1 %5588 to i8
  store i8 %5589, i8* %29, align 1
  %5590 = lshr i64 %5572, 63
  %5591 = trunc i64 %5590 to i8
  store i8 %5591, i8* %32, align 1
  %5592 = xor i64 %5590, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5593 = xor i64 %5590, %5571
  %5594 = add nuw nsw i64 %5592, %5593
  %5595 = icmp eq i64 %5594, 2
  %5596 = zext i1 %5595 to i8
  store i8 %5596, i8* %38, align 1
  %5597 = add i64 %5570, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %5598 = add i64 %5563, 31
  store i64 %5598, i64* %3, align 8
  %5599 = inttoptr i64 %5597 to i32*
  %5600 = load i32, i32* %5599, align 4
  %5601 = add i32 %5600, -4
  %5602 = icmp ult i32 %5600, 4
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %14, align 1
  %5604 = and i32 %5601, 255
  %5605 = tail call i32 @llvm.ctpop.i32(i32 %5604)
  %5606 = trunc i32 %5605 to i8
  %5607 = and i8 %5606, 1
  %5608 = xor i8 %5607, 1
  store i8 %5608, i8* %21, align 1
  %5609 = xor i32 %5601, %5600
  %5610 = lshr i32 %5609, 4
  %5611 = trunc i32 %5610 to i8
  %5612 = and i8 %5611, 1
  store i8 %5612, i8* %26, align 1
  %5613 = icmp eq i32 %5601, 0
  %5614 = zext i1 %5613 to i8
  store i8 %5614, i8* %29, align 1
  %5615 = lshr i32 %5601, 31
  %5616 = trunc i32 %5615 to i8
  store i8 %5616, i8* %32, align 1
  %5617 = lshr i32 %5600, 31
  %5618 = xor i32 %5615, %5617
  %5619 = add nuw nsw i32 %5618, %5617
  %5620 = icmp eq i32 %5619, 2
  %5621 = zext i1 %5620 to i8
  store i8 %5621, i8* %38, align 1
  %.v253 = select i1 %5613, i64 37, i64 133
  %5622 = add i64 %5563, %.v253
  store i64 %5622, i64* %3, align 8
  br i1 %5613, label %block_.L_4872e6, label %block_.L_487346

block_.L_4872e6:                                  ; preds = %block_4872c1, %block_48729c
  %5623 = phi i64 [ %5622, %block_4872c1 ], [ %5563, %block_48729c ]
  %5624 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %5625 = and i32 %5624, 1024
  %5626 = zext i32 %5625 to i64
  store i64 %5626, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit216 = lshr exact i32 %5625, 10
  %5627 = trunc i32 %.lobit216 to i8
  %5628 = xor i8 %5627, 1
  store i8 %5628, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %5629 = icmp eq i8 %5628, 0
  %.v254 = select i1 %5629, i64 26, i64 21
  %5630 = add i64 %5623, %.v254
  store i64 %5630, i64* %3, align 8
  br i1 %5629, label %block_.L_487300, label %block_4872fb

block_4872fb:                                     ; preds = %block_.L_4872e6
  %5631 = add i64 %5630, 37
  store i64 %5631, i64* %3, align 8
  br label %block_.L_487320

block_.L_487300:                                  ; preds = %block_.L_4872e6
  store i64 ptrtoint (%G__0x582fdd_type* @G__0x582fdd to i64), i64* %RDI.i2211, align 8
  %5632 = load i64, i64* %RBP.i, align 8
  %5633 = add i64 %5632, -4
  %5634 = add i64 %5630, 13
  store i64 %5634, i64* %3, align 8
  %5635 = inttoptr i64 %5633 to i32*
  %5636 = load i32, i32* %5635, align 4
  %5637 = zext i32 %5636 to i64
  store i64 %5637, i64* %RSI.i1962, align 8
  %5638 = add i64 %5632, -1676
  %5639 = add i64 %5630, 19
  store i64 %5639, i64* %3, align 8
  %5640 = inttoptr i64 %5638 to i32*
  %5641 = load i32, i32* %5640, align 4
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RDX.i1945, align 8
  store i8 0, i8* %AL.i1656, align 1
  %5643 = add i64 %5630, -218448
  %5644 = add i64 %5630, 26
  %5645 = load i64, i64* %6, align 8
  %5646 = add i64 %5645, -8
  %5647 = inttoptr i64 %5646 to i64*
  store i64 %5644, i64* %5647, align 8
  store i64 %5646, i64* %6, align 8
  store i64 %5643, i64* %3, align 8
  %call2_487315 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5643, %struct.Memory* %MEMORY.71)
  %5648 = load i64, i64* %RBP.i, align 8
  %5649 = add i64 %5648, -1724
  %5650 = load i32, i32* %EAX.i2208, align 4
  %5651 = load i64, i64* %3, align 8
  %5652 = add i64 %5651, 6
  store i64 %5652, i64* %3, align 8
  %5653 = inttoptr i64 %5649 to i32*
  store i32 %5650, i32* %5653, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_487320

block_.L_487320:                                  ; preds = %block_.L_487300, %block_4872fb
  %5654 = phi i64 [ %.pre172, %block_.L_487300 ], [ %5631, %block_4872fb ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5655 = load i64, i64* %RBP.i, align 8
  %5656 = add i64 %5655, -1676
  %5657 = add i64 %5654, 16
  store i64 %5657, i64* %3, align 8
  %5658 = inttoptr i64 %5656 to i32*
  %5659 = load i32, i32* %5658, align 4
  %5660 = zext i32 %5659 to i64
  store i64 %5660, i64* %RCX.i2175, align 8
  %5661 = add i64 %5655, -4
  %5662 = add i64 %5654, 20
  store i64 %5662, i64* %3, align 8
  %5663 = inttoptr i64 %5661 to i32*
  %5664 = load i32, i32* %5663, align 4
  %5665 = sext i32 %5664 to i64
  %5666 = mul nsw i64 %5665, 380
  store i64 %5666, i64* %RDX.i1945, align 8
  %5667 = lshr i64 %5666, 63
  %5668 = add i64 %5666, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5668, i64* %RAX.i2177.pre-phi, align 8
  %5669 = icmp ult i64 %5668, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5670 = icmp ult i64 %5668, %5666
  %5671 = or i1 %5669, %5670
  %5672 = zext i1 %5671 to i8
  store i8 %5672, i8* %14, align 1
  %5673 = trunc i64 %5668 to i32
  %5674 = and i32 %5673, 252
  %5675 = tail call i32 @llvm.ctpop.i32(i32 %5674)
  %5676 = trunc i32 %5675 to i8
  %5677 = and i8 %5676, 1
  %5678 = xor i8 %5677, 1
  store i8 %5678, i8* %21, align 1
  %5679 = xor i64 %5666, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5680 = xor i64 %5679, %5668
  %5681 = lshr i64 %5680, 4
  %5682 = trunc i64 %5681 to i8
  %5683 = and i8 %5682, 1
  store i8 %5683, i8* %26, align 1
  %5684 = icmp eq i64 %5668, 0
  %5685 = zext i1 %5684 to i8
  store i8 %5685, i8* %29, align 1
  %5686 = lshr i64 %5668, 63
  %5687 = trunc i64 %5686 to i8
  store i8 %5687, i8* %32, align 1
  %5688 = xor i64 %5686, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5689 = xor i64 %5686, %5667
  %5690 = add nuw nsw i64 %5688, %5689
  %5691 = icmp eq i64 %5690, 2
  %5692 = zext i1 %5691 to i8
  store i8 %5692, i8* %38, align 1
  %5693 = add i64 %5666, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 32)
  %5694 = add i64 %5654, 33
  store i64 %5694, i64* %3, align 8
  %5695 = inttoptr i64 %5693 to i32*
  store i32 %5659, i32* %5695, align 4
  %5696 = load i64, i64* %3, align 8
  %5697 = add i64 %5696, 36
  store i64 %5697, i64* %3, align 8
  br label %block_.L_487365

block_.L_487346:                                  ; preds = %block_4872c1, %block_.L_487284
  %5698 = phi i64 [ %5622, %block_4872c1 ], [ %5504, %block_.L_487284 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5699 = load i64, i64* %RBP.i, align 8
  %5700 = add i64 %5699, -4
  %5701 = add i64 %5698, 14
  store i64 %5701, i64* %3, align 8
  %5702 = inttoptr i64 %5700 to i32*
  %5703 = load i32, i32* %5702, align 4
  %5704 = sext i32 %5703 to i64
  %5705 = mul nsw i64 %5704, 380
  store i64 %5705, i64* %RCX.i2175, align 8
  %5706 = lshr i64 %5705, 63
  %5707 = add i64 %5705, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5707, i64* %RAX.i2177.pre-phi, align 8
  %5708 = icmp ult i64 %5707, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5709 = icmp ult i64 %5707, %5705
  %5710 = or i1 %5708, %5709
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %14, align 1
  %5712 = trunc i64 %5707 to i32
  %5713 = and i32 %5712, 252
  %5714 = tail call i32 @llvm.ctpop.i32(i32 %5713)
  %5715 = trunc i32 %5714 to i8
  %5716 = and i8 %5715, 1
  %5717 = xor i8 %5716, 1
  store i8 %5717, i8* %21, align 1
  %5718 = xor i64 %5705, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5719 = xor i64 %5718, %5707
  %5720 = lshr i64 %5719, 4
  %5721 = trunc i64 %5720 to i8
  %5722 = and i8 %5721, 1
  store i8 %5722, i8* %26, align 1
  %5723 = icmp eq i64 %5707, 0
  %5724 = zext i1 %5723 to i8
  store i8 %5724, i8* %29, align 1
  %5725 = lshr i64 %5707, 63
  %5726 = trunc i64 %5725 to i8
  store i8 %5726, i8* %32, align 1
  %5727 = xor i64 %5725, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5728 = xor i64 %5725, %5706
  %5729 = add nuw nsw i64 %5727, %5728
  %5730 = icmp eq i64 %5729, 2
  %5731 = zext i1 %5730 to i8
  store i8 %5731, i8* %38, align 1
  %5732 = add i64 %5705, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 32)
  %5733 = add i64 %5698, 31
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5732 to i32*
  store i32 0, i32* %5734, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_487365

block_.L_487365:                                  ; preds = %block_.L_487346, %block_.L_487320
  %5735 = phi i64 [ %.pre173, %block_.L_487346 ], [ %5697, %block_.L_487320 ]
  %5736 = load i64, i64* %RBP.i, align 8
  %5737 = add i64 %5736, -4
  %5738 = add i64 %5735, 3
  store i64 %5738, i64* %3, align 8
  %5739 = inttoptr i64 %5737 to i32*
  %5740 = load i32, i32* %5739, align 4
  %5741 = zext i32 %5740 to i64
  store i64 %5741, i64* %RDI.i2211, align 8
  %5742 = add i64 %5735, 4379
  %5743 = add i64 %5735, 8
  %5744 = load i64, i64* %6, align 8
  %5745 = add i64 %5744, -8
  %5746 = inttoptr i64 %5745 to i64*
  store i64 %5743, i64* %5746, align 8
  store i64 %5745, i64* %6, align 8
  store i64 %5742, i64* %3, align 8
  %call2_487368 = tail call %struct.Memory* @sub_488480.propagate_worm(%struct.State* nonnull %0, i64 %5742, %struct.Memory* %MEMORY.71)
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_48736d

block_.L_48736d:                                  ; preds = %block_.L_487365, %block_.L_48727f
  %5747 = phi i64 [ %.pre174, %block_.L_487365 ], [ %5480, %block_.L_48727f ]
  %MEMORY.78 = phi %struct.Memory* [ %call2_487368, %block_.L_487365 ], [ %MEMORY.71, %block_.L_48727f ]
  %5748 = load i64, i64* %RBP.i, align 8
  %5749 = add i64 %5748, -4
  %5750 = add i64 %5747, 3
  store i64 %5750, i64* %3, align 8
  %5751 = inttoptr i64 %5749 to i32*
  %5752 = load i32, i32* %5751, align 4
  %5753 = add i32 %5752, 1
  %5754 = zext i32 %5753 to i64
  store i64 %5754, i64* %RAX.i2177.pre-phi, align 8
  %5755 = icmp eq i32 %5752, -1
  %5756 = icmp eq i32 %5753, 0
  %5757 = or i1 %5755, %5756
  %5758 = zext i1 %5757 to i8
  store i8 %5758, i8* %14, align 1
  %5759 = and i32 %5753, 255
  %5760 = tail call i32 @llvm.ctpop.i32(i32 %5759)
  %5761 = trunc i32 %5760 to i8
  %5762 = and i8 %5761, 1
  %5763 = xor i8 %5762, 1
  store i8 %5763, i8* %21, align 1
  %5764 = xor i32 %5753, %5752
  %5765 = lshr i32 %5764, 4
  %5766 = trunc i32 %5765 to i8
  %5767 = and i8 %5766, 1
  store i8 %5767, i8* %26, align 1
  %5768 = zext i1 %5756 to i8
  store i8 %5768, i8* %29, align 1
  %5769 = lshr i32 %5753, 31
  %5770 = trunc i32 %5769 to i8
  store i8 %5770, i8* %32, align 1
  %5771 = lshr i32 %5752, 31
  %5772 = xor i32 %5769, %5771
  %5773 = add nuw nsw i32 %5772, %5769
  %5774 = icmp eq i32 %5773, 2
  %5775 = zext i1 %5774 to i8
  store i8 %5775, i8* %38, align 1
  %5776 = add i64 %5747, 9
  store i64 %5776, i64* %3, align 8
  store i32 %5753, i32* %5751, align 4
  %5777 = load i64, i64* %3, align 8
  %5778 = add i64 %5777, -322
  store i64 %5778, i64* %3, align 8
  br label %block_.L_487234

block_.L_48737b:                                  ; preds = %block_.L_487234
  %5779 = load i32, i32* bitcast (%G_0xab0fb4_type* @G_0xab0fb4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %5780 = and i32 %5779, 255
  %5781 = tail call i32 @llvm.ctpop.i32(i32 %5780)
  %5782 = trunc i32 %5781 to i8
  %5783 = and i8 %5782, 1
  %5784 = xor i8 %5783, 1
  store i8 %5784, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5785 = icmp eq i32 %5779, 0
  %5786 = zext i1 %5785 to i8
  store i8 %5786, i8* %29, align 1
  %5787 = lshr i32 %5779, 31
  %5788 = trunc i32 %5787 to i8
  store i8 %5788, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v236 = select i1 %5785, i64 14, i64 19
  %5789 = add i64 %5402, %.v236
  store i64 %5789, i64* %3, align 8
  br i1 %5785, label %block_487389, label %block_.L_48738e

block_487389:                                     ; preds = %block_.L_48737b
  %5790 = add i64 %5789, 6135
  %5791 = add i64 %5789, 5
  %5792 = load i64, i64* %6, align 8
  %5793 = add i64 %5792, -8
  %5794 = inttoptr i64 %5793 to i64*
  store i64 %5791, i64* %5794, align 8
  store i64 %5793, i64* %6, align 8
  store i64 %5790, i64* %3, align 8
  %call2_487389 = tail call %struct.Memory* @sub_488b80.find_worm_threats(%struct.State* nonnull %0, i64 %5790, %struct.Memory* %MEMORY.71)
  %.pre166 = load i64, i64* %RBP.i, align 8
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_48738e

block_.L_48738e:                                  ; preds = %block_.L_48737b, %block_487389
  %5795 = phi i64 [ %5789, %block_.L_48737b ], [ %.pre167, %block_487389 ]
  %5796 = phi i64 [ %5373, %block_.L_48737b ], [ %.pre166, %block_487389 ]
  %MEMORY.79 = phi %struct.Memory* [ %MEMORY.71, %block_.L_48737b ], [ %call2_487389, %block_487389 ]
  %5797 = add i64 %5796, -4
  %5798 = add i64 %5795, 7
  store i64 %5798, i64* %3, align 8
  %5799 = inttoptr i64 %5797 to i32*
  store i32 21, i32* %5799, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_487395

block_.L_487395:                                  ; preds = %block_.L_487507, %block_.L_48738e
  %5800 = phi i64 [ %.pre168, %block_.L_48738e ], [ %6302, %block_.L_487507 ]
  %MEMORY.80 = phi %struct.Memory* [ %MEMORY.79, %block_.L_48738e ], [ %MEMORY.84, %block_.L_487507 ]
  %5801 = load i64, i64* %RBP.i, align 8
  %5802 = add i64 %5801, -4
  %5803 = add i64 %5800, 7
  store i64 %5803, i64* %3, align 8
  %5804 = inttoptr i64 %5802 to i32*
  %5805 = load i32, i32* %5804, align 4
  %5806 = add i32 %5805, -400
  %5807 = icmp ult i32 %5805, 400
  %5808 = zext i1 %5807 to i8
  store i8 %5808, i8* %14, align 1
  %5809 = and i32 %5806, 255
  %5810 = tail call i32 @llvm.ctpop.i32(i32 %5809)
  %5811 = trunc i32 %5810 to i8
  %5812 = and i8 %5811, 1
  %5813 = xor i8 %5812, 1
  store i8 %5813, i8* %21, align 1
  %5814 = xor i32 %5805, 16
  %5815 = xor i32 %5814, %5806
  %5816 = lshr i32 %5815, 4
  %5817 = trunc i32 %5816 to i8
  %5818 = and i8 %5817, 1
  store i8 %5818, i8* %26, align 1
  %5819 = icmp eq i32 %5806, 0
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %29, align 1
  %5821 = lshr i32 %5806, 31
  %5822 = trunc i32 %5821 to i8
  store i8 %5822, i8* %32, align 1
  %5823 = lshr i32 %5805, 31
  %5824 = xor i32 %5821, %5823
  %5825 = add nuw nsw i32 %5824, %5823
  %5826 = icmp eq i32 %5825, 2
  %5827 = zext i1 %5826 to i8
  store i8 %5827, i8* %38, align 1
  %5828 = icmp ne i8 %5822, 0
  %5829 = xor i1 %5828, %5826
  %.v237 = select i1 %5829, i64 13, i64 389
  %5830 = add i64 %5800, %.v237
  store i64 %5830, i64* %3, align 8
  br i1 %5829, label %block_4873a2, label %block_.L_48751a.loopexit

block_4873a2:                                     ; preds = %block_.L_487395
  %5831 = add i64 %5830, 4
  store i64 %5831, i64* %3, align 8
  %5832 = load i32, i32* %5804, align 4
  %5833 = sext i32 %5832 to i64
  store i64 %5833, i64* %RAX.i2177.pre-phi, align 8
  %5834 = add nsw i64 %5833, 12099168
  %5835 = add i64 %5830, 12
  store i64 %5835, i64* %3, align 8
  %5836 = inttoptr i64 %5834 to i8*
  %5837 = load i8, i8* %5836, align 1
  %5838 = zext i8 %5837 to i64
  store i64 %5838, i64* %RCX.i2175, align 8
  %5839 = zext i8 %5837 to i32
  %5840 = add nsw i32 %5839, -1
  %5841 = icmp eq i8 %5837, 0
  %5842 = zext i1 %5841 to i8
  store i8 %5842, i8* %14, align 1
  %5843 = and i32 %5840, 255
  %5844 = tail call i32 @llvm.ctpop.i32(i32 %5843)
  %5845 = trunc i32 %5844 to i8
  %5846 = and i8 %5845, 1
  %5847 = xor i8 %5846, 1
  store i8 %5847, i8* %21, align 1
  %5848 = xor i32 %5840, %5839
  %5849 = lshr i32 %5848, 4
  %5850 = trunc i32 %5849 to i8
  %5851 = and i8 %5850, 1
  store i8 %5851, i8* %26, align 1
  %5852 = icmp eq i32 %5840, 0
  %5853 = zext i1 %5852 to i8
  store i8 %5853, i8* %29, align 1
  %5854 = lshr i32 %5840, 31
  %5855 = trunc i32 %5854 to i8
  store i8 %5855, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v238 = select i1 %5852, i64 42, i64 21
  %5856 = add i64 %5830, %.v238
  store i64 %5856, i64* %3, align 8
  br i1 %5852, label %block_.L_4873cc, label %block_4873b7

block_4873b7:                                     ; preds = %block_4873a2
  %5857 = add i64 %5856, 4
  store i64 %5857, i64* %3, align 8
  %5858 = load i32, i32* %5804, align 4
  %5859 = sext i32 %5858 to i64
  store i64 %5859, i64* %RAX.i2177.pre-phi, align 8
  %5860 = add nsw i64 %5859, 12099168
  %5861 = add i64 %5856, 12
  store i64 %5861, i64* %3, align 8
  %5862 = inttoptr i64 %5860 to i8*
  %5863 = load i8, i8* %5862, align 1
  %5864 = zext i8 %5863 to i64
  store i64 %5864, i64* %RCX.i2175, align 8
  %5865 = zext i8 %5863 to i32
  %5866 = add nsw i32 %5865, -2
  %5867 = icmp ult i8 %5863, 2
  %5868 = zext i1 %5867 to i8
  store i8 %5868, i8* %14, align 1
  %5869 = and i32 %5866, 255
  %5870 = tail call i32 @llvm.ctpop.i32(i32 %5869)
  %5871 = trunc i32 %5870 to i8
  %5872 = and i8 %5871, 1
  %5873 = xor i8 %5872, 1
  store i8 %5873, i8* %21, align 1
  %5874 = xor i32 %5866, %5865
  %5875 = lshr i32 %5874, 4
  %5876 = trunc i32 %5875 to i8
  %5877 = and i8 %5876, 1
  store i8 %5877, i8* %26, align 1
  %5878 = icmp eq i32 %5866, 0
  %5879 = zext i1 %5878 to i8
  store i8 %5879, i8* %29, align 1
  %5880 = lshr i32 %5866, 31
  %5881 = trunc i32 %5880 to i8
  store i8 %5881, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v239 = select i1 %5878, i64 21, i64 336
  %5882 = add i64 %5856, %.v239
  store i64 %5882, i64* %3, align 8
  br i1 %5878, label %block_.L_4873cc, label %block_.L_487507

block_.L_4873cc:                                  ; preds = %block_4873b7, %block_4873a2
  %5883 = phi i64 [ %5882, %block_4873b7 ], [ %5856, %block_4873a2 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5884 = add i64 %5883, 14
  store i64 %5884, i64* %3, align 8
  %5885 = load i32, i32* %5804, align 4
  %5886 = sext i32 %5885 to i64
  %5887 = mul nsw i64 %5886, 380
  store i64 %5887, i64* %RCX.i2175, align 8
  %5888 = lshr i64 %5887, 63
  %5889 = add i64 %5887, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5889, i64* %RAX.i2177.pre-phi, align 8
  %5890 = icmp ult i64 %5889, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5891 = icmp ult i64 %5889, %5887
  %5892 = or i1 %5890, %5891
  %5893 = zext i1 %5892 to i8
  store i8 %5893, i8* %14, align 1
  %5894 = trunc i64 %5889 to i32
  %5895 = and i32 %5894, 252
  %5896 = tail call i32 @llvm.ctpop.i32(i32 %5895)
  %5897 = trunc i32 %5896 to i8
  %5898 = and i8 %5897, 1
  %5899 = xor i8 %5898, 1
  store i8 %5899, i8* %21, align 1
  %5900 = xor i64 %5887, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5901 = xor i64 %5900, %5889
  %5902 = lshr i64 %5901, 4
  %5903 = trunc i64 %5902 to i8
  %5904 = and i8 %5903, 1
  store i8 %5904, i8* %26, align 1
  %5905 = icmp eq i64 %5889, 0
  %5906 = zext i1 %5905 to i8
  store i8 %5906, i8* %29, align 1
  %5907 = lshr i64 %5889, 63
  %5908 = trunc i64 %5907 to i8
  store i8 %5908, i8* %32, align 1
  %5909 = xor i64 %5907, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5910 = xor i64 %5907, %5888
  %5911 = add nuw nsw i64 %5909, %5910
  %5912 = icmp eq i64 %5911, 2
  %5913 = zext i1 %5912 to i8
  store i8 %5913, i8* %38, align 1
  %5914 = add i64 %5887, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %5915 = add i64 %5883, 27
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5914 to i32*
  %5917 = load i32, i32* %5916, align 4
  %5918 = zext i32 %5917 to i64
  store i64 %5918, i64* %RDX.i1945, align 8
  %5919 = add i64 %5883, 30
  store i64 %5919, i64* %3, align 8
  %5920 = load i32, i32* %5804, align 4
  %5921 = sub i32 %5917, %5920
  %5922 = icmp ult i32 %5917, %5920
  %5923 = zext i1 %5922 to i8
  store i8 %5923, i8* %14, align 1
  %5924 = and i32 %5921, 255
  %5925 = tail call i32 @llvm.ctpop.i32(i32 %5924)
  %5926 = trunc i32 %5925 to i8
  %5927 = and i8 %5926, 1
  %5928 = xor i8 %5927, 1
  store i8 %5928, i8* %21, align 1
  %5929 = xor i32 %5920, %5917
  %5930 = xor i32 %5929, %5921
  %5931 = lshr i32 %5930, 4
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  store i8 %5933, i8* %26, align 1
  %5934 = icmp eq i32 %5921, 0
  %5935 = zext i1 %5934 to i8
  store i8 %5935, i8* %29, align 1
  %5936 = lshr i32 %5921, 31
  %5937 = trunc i32 %5936 to i8
  store i8 %5937, i8* %32, align 1
  %5938 = lshr i32 %5917, 31
  %5939 = lshr i32 %5920, 31
  %5940 = xor i32 %5939, %5938
  %5941 = xor i32 %5936, %5938
  %5942 = add nuw nsw i32 %5941, %5940
  %5943 = icmp eq i32 %5942, 2
  %5944 = zext i1 %5943 to i8
  store i8 %5944, i8* %38, align 1
  %.v240 = select i1 %5934, i64 36, i64 315
  %5945 = add i64 %5883, %.v240
  store i64 %5945, i64* %3, align 8
  br i1 %5934, label %block_4873f0, label %block_.L_487507

block_4873f0:                                     ; preds = %block_.L_4873cc
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5946 = load i64, i64* %RBP.i, align 8
  %5947 = add i64 %5946, -4
  %5948 = add i64 %5945, 14
  store i64 %5948, i64* %3, align 8
  %5949 = inttoptr i64 %5947 to i32*
  %5950 = load i32, i32* %5949, align 4
  %5951 = sext i32 %5950 to i64
  %5952 = mul nsw i64 %5951, 380
  store i64 %5952, i64* %RCX.i2175, align 8
  %5953 = lshr i64 %5952, 63
  %5954 = add i64 %5952, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5954, i64* %RAX.i2177.pre-phi, align 8
  %5955 = icmp ult i64 %5954, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5956 = icmp ult i64 %5954, %5952
  %5957 = or i1 %5955, %5956
  %5958 = zext i1 %5957 to i8
  store i8 %5958, i8* %14, align 1
  %5959 = trunc i64 %5954 to i32
  %5960 = and i32 %5959, 252
  %5961 = tail call i32 @llvm.ctpop.i32(i32 %5960)
  %5962 = trunc i32 %5961 to i8
  %5963 = and i8 %5962, 1
  %5964 = xor i8 %5963, 1
  store i8 %5964, i8* %21, align 1
  %5965 = xor i64 %5952, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %5966 = xor i64 %5965, %5954
  %5967 = lshr i64 %5966, 4
  %5968 = trunc i64 %5967 to i8
  %5969 = and i8 %5968, 1
  store i8 %5969, i8* %26, align 1
  %5970 = icmp eq i64 %5954, 0
  %5971 = zext i1 %5970 to i8
  store i8 %5971, i8* %29, align 1
  %5972 = lshr i64 %5954, 63
  %5973 = trunc i64 %5972 to i8
  store i8 %5973, i8* %32, align 1
  %5974 = xor i64 %5972, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %5975 = xor i64 %5972, %5953
  %5976 = add nuw nsw i64 %5974, %5975
  %5977 = icmp eq i64 %5976, 2
  %5978 = zext i1 %5977 to i8
  store i8 %5978, i8* %38, align 1
  %5979 = add i64 %5952, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 44)
  %5980 = add i64 %5945, 28
  store i64 %5980, i64* %3, align 8
  %5981 = inttoptr i64 %5979 to i32*
  %5982 = load i32, i32* %5981, align 4
  store i8 0, i8* %14, align 1
  %5983 = and i32 %5982, 255
  %5984 = tail call i32 @llvm.ctpop.i32(i32 %5983)
  %5985 = trunc i32 %5984 to i8
  %5986 = and i8 %5985, 1
  %5987 = xor i8 %5986, 1
  store i8 %5987, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5988 = icmp eq i32 %5982, 0
  %5989 = zext i1 %5988 to i8
  store i8 %5989, i8* %29, align 1
  %5990 = lshr i32 %5982, 31
  %5991 = trunc i32 %5990 to i8
  store i8 %5991, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v241 = select i1 %5988, i64 34, i64 279
  %5992 = add i64 %5945, %.v241
  store i64 %5992, i64* %3, align 8
  br i1 %5988, label %block_487412, label %block_.L_487507

block_487412:                                     ; preds = %block_4873f0
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %5993 = add i64 %5992, 14
  store i64 %5993, i64* %3, align 8
  %5994 = load i32, i32* %5949, align 4
  %5995 = sext i32 %5994 to i64
  %5996 = mul nsw i64 %5995, 380
  store i64 %5996, i64* %RCX.i2175, align 8
  %5997 = lshr i64 %5996, 63
  %5998 = add i64 %5996, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %5998, i64* %RAX.i2177.pre-phi, align 8
  %5999 = icmp ult i64 %5998, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6000 = icmp ult i64 %5998, %5996
  %6001 = or i1 %5999, %6000
  %6002 = zext i1 %6001 to i8
  store i8 %6002, i8* %14, align 1
  %6003 = trunc i64 %5998 to i32
  %6004 = and i32 %6003, 252
  %6005 = tail call i32 @llvm.ctpop.i32(i32 %6004)
  %6006 = trunc i32 %6005 to i8
  %6007 = and i8 %6006, 1
  %6008 = xor i8 %6007, 1
  store i8 %6008, i8* %21, align 1
  %6009 = xor i64 %5996, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6010 = xor i64 %6009, %5998
  %6011 = lshr i64 %6010, 4
  %6012 = trunc i64 %6011 to i8
  %6013 = and i8 %6012, 1
  store i8 %6013, i8* %26, align 1
  %6014 = icmp eq i64 %5998, 0
  %6015 = zext i1 %6014 to i8
  store i8 %6015, i8* %29, align 1
  %6016 = lshr i64 %5998, 63
  %6017 = trunc i64 %6016 to i8
  store i8 %6017, i8* %32, align 1
  %6018 = xor i64 %6016, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %6019 = xor i64 %6016, %5997
  %6020 = add nuw nsw i64 %6018, %6019
  %6021 = icmp eq i64 %6020, 2
  %6022 = zext i1 %6021 to i8
  store i8 %6022, i8* %38, align 1
  %6023 = add i64 %5996, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 20)
  %6024 = add i64 %5992, 28
  store i64 %6024, i64* %3, align 8
  %6025 = inttoptr i64 %6023 to i32*
  %6026 = load i32, i32* %6025, align 4
  store i8 0, i8* %14, align 1
  %6027 = and i32 %6026, 255
  %6028 = tail call i32 @llvm.ctpop.i32(i32 %6027)
  %6029 = trunc i32 %6028 to i8
  %6030 = and i8 %6029, 1
  %6031 = xor i8 %6030, 1
  store i8 %6031, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6032 = icmp eq i32 %6026, 0
  %6033 = zext i1 %6032 to i8
  store i8 %6033, i8* %29, align 1
  %6034 = lshr i32 %6026, 31
  %6035 = trunc i32 %6034 to i8
  store i8 %6035, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v242 = select i1 %6032, i64 34, i64 245
  %6036 = add i64 %5992, %.v242
  store i64 %6036, i64* %3, align 8
  br i1 %6032, label %block_487434, label %block_.L_487507

block_487434:                                     ; preds = %block_487412
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %6037 = add i64 %6036, 14
  store i64 %6037, i64* %3, align 8
  %6038 = load i32, i32* %5949, align 4
  %6039 = sext i32 %6038 to i64
  %6040 = mul nsw i64 %6039, 380
  store i64 %6040, i64* %RCX.i2175, align 8
  %6041 = lshr i64 %6040, 63
  %6042 = add i64 %6040, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %6042, i64* %RAX.i2177.pre-phi, align 8
  %6043 = icmp ult i64 %6042, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6044 = icmp ult i64 %6042, %6040
  %6045 = or i1 %6043, %6044
  %6046 = zext i1 %6045 to i8
  store i8 %6046, i8* %14, align 1
  %6047 = trunc i64 %6042 to i32
  %6048 = and i32 %6047, 252
  %6049 = tail call i32 @llvm.ctpop.i32(i32 %6048)
  %6050 = trunc i32 %6049 to i8
  %6051 = and i8 %6050, 1
  %6052 = xor i8 %6051, 1
  store i8 %6052, i8* %21, align 1
  %6053 = xor i64 %6040, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6054 = xor i64 %6053, %6042
  %6055 = lshr i64 %6054, 4
  %6056 = trunc i64 %6055 to i8
  %6057 = and i8 %6056, 1
  store i8 %6057, i8* %26, align 1
  %6058 = icmp eq i64 %6042, 0
  %6059 = zext i1 %6058 to i8
  store i8 %6059, i8* %29, align 1
  %6060 = lshr i64 %6042, 63
  %6061 = trunc i64 %6060 to i8
  store i8 %6061, i8* %32, align 1
  %6062 = xor i64 %6060, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %6063 = xor i64 %6060, %6041
  %6064 = add nuw nsw i64 %6062, %6063
  %6065 = icmp eq i64 %6064, 2
  %6066 = zext i1 %6065 to i8
  store i8 %6066, i8* %38, align 1
  %6067 = add i64 %6040, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 36)
  %6068 = add i64 %6036, 28
  store i64 %6068, i64* %3, align 8
  %6069 = inttoptr i64 %6067 to i32*
  %6070 = load i32, i32* %6069, align 4
  store i8 0, i8* %14, align 1
  %6071 = and i32 %6070, 255
  %6072 = tail call i32 @llvm.ctpop.i32(i32 %6071)
  %6073 = trunc i32 %6072 to i8
  %6074 = and i8 %6073, 1
  %6075 = xor i8 %6074, 1
  store i8 %6075, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6076 = icmp eq i32 %6070, 0
  %6077 = zext i1 %6076 to i8
  store i8 %6077, i8* %29, align 1
  %6078 = lshr i32 %6070, 31
  %6079 = trunc i32 %6078 to i8
  store i8 %6079, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v243 = select i1 %6076, i64 34, i64 211
  %6080 = add i64 %6036, %.v243
  store i64 %6080, i64* %3, align 8
  br i1 %6076, label %block_487456, label %block_.L_487507

block_487456:                                     ; preds = %block_487434
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %6081 = add i64 %6080, 14
  store i64 %6081, i64* %3, align 8
  %6082 = load i32, i32* %5949, align 4
  %6083 = sext i32 %6082 to i64
  %6084 = mul nsw i64 %6083, 380
  store i64 %6084, i64* %RCX.i2175, align 8
  %6085 = lshr i64 %6084, 63
  %6086 = add i64 %6084, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %6086, i64* %RAX.i2177.pre-phi, align 8
  %6087 = icmp ult i64 %6086, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6088 = icmp ult i64 %6086, %6084
  %6089 = or i1 %6087, %6088
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %14, align 1
  %6091 = trunc i64 %6086 to i32
  %6092 = and i32 %6091, 252
  %6093 = tail call i32 @llvm.ctpop.i32(i32 %6092)
  %6094 = trunc i32 %6093 to i8
  %6095 = and i8 %6094, 1
  %6096 = xor i8 %6095, 1
  store i8 %6096, i8* %21, align 1
  %6097 = xor i64 %6084, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6098 = xor i64 %6097, %6086
  %6099 = lshr i64 %6098, 4
  %6100 = trunc i64 %6099 to i8
  %6101 = and i8 %6100, 1
  store i8 %6101, i8* %26, align 1
  %6102 = icmp eq i64 %6086, 0
  %6103 = zext i1 %6102 to i8
  store i8 %6103, i8* %29, align 1
  %6104 = lshr i64 %6086, 63
  %6105 = trunc i64 %6104 to i8
  store i8 %6105, i8* %32, align 1
  %6106 = xor i64 %6104, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %6107 = xor i64 %6104, %6085
  %6108 = add nuw nsw i64 %6106, %6107
  %6109 = icmp eq i64 %6108, 2
  %6110 = zext i1 %6109 to i8
  store i8 %6110, i8* %38, align 1
  %6111 = add i64 %6084, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 32)
  %6112 = add i64 %6080, 28
  store i64 %6112, i64* %3, align 8
  %6113 = inttoptr i64 %6111 to i32*
  %6114 = load i32, i32* %6113, align 4
  store i8 0, i8* %14, align 1
  %6115 = and i32 %6114, 255
  %6116 = tail call i32 @llvm.ctpop.i32(i32 %6115)
  %6117 = trunc i32 %6116 to i8
  %6118 = and i8 %6117, 1
  %6119 = xor i8 %6118, 1
  store i8 %6119, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6120 = icmp eq i32 %6114, 0
  %6121 = zext i1 %6120 to i8
  store i8 %6121, i8* %29, align 1
  %6122 = lshr i32 %6114, 31
  %6123 = trunc i32 %6122 to i8
  store i8 %6123, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v244 = select i1 %6120, i64 34, i64 177
  %6124 = add i64 %6080, %.v244
  store i64 %6124, i64* %3, align 8
  br i1 %6120, label %block_487478, label %block_.L_487507

block_487478:                                     ; preds = %block_487456
  %6125 = add i64 %5946, -1680
  store i64 %6125, i64* %RSI.i1962, align 8
  %6126 = add i64 %6124, 10
  store i64 %6126, i64* %3, align 8
  %6127 = load i32, i32* %5949, align 4
  %6128 = zext i32 %6127 to i64
  store i64 %6128, i64* %RDI.i2211, align 8
  %6129 = add i64 %6124, 6664
  %6130 = add i64 %6124, 15
  %6131 = load i64, i64* %6, align 8
  %6132 = add i64 %6131, -8
  %6133 = inttoptr i64 %6132 to i64*
  store i64 %6130, i64* %6133, align 8
  store i64 %6132, i64* %6, align 8
  store i64 %6129, i64* %3, align 8
  %call2_487482 = tail call %struct.Memory* @sub_488e80.examine_cavity(%struct.State* nonnull %0, i64 %6129, %struct.Memory* %MEMORY.80)
  %6134 = load i64, i64* %RBP.i, align 8
  %6135 = add i64 %6134, -1684
  %6136 = load i32, i32* %EAX.i2208, align 4
  %6137 = load i64, i64* %3, align 8
  %6138 = add i64 %6137, 6
  store i64 %6138, i64* %3, align 8
  %6139 = inttoptr i64 %6135 to i32*
  store i32 %6136, i32* %6139, align 4
  %6140 = load i64, i64* %RBP.i, align 8
  %6141 = add i64 %6140, -1684
  %6142 = load i64, i64* %3, align 8
  %6143 = add i64 %6142, 7
  store i64 %6143, i64* %3, align 8
  %6144 = inttoptr i64 %6141 to i32*
  %6145 = load i32, i32* %6144, align 4
  %6146 = add i32 %6145, -3
  %6147 = icmp ult i32 %6145, 3
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %14, align 1
  %6149 = and i32 %6146, 255
  %6150 = tail call i32 @llvm.ctpop.i32(i32 %6149)
  %6151 = trunc i32 %6150 to i8
  %6152 = and i8 %6151, 1
  %6153 = xor i8 %6152, 1
  store i8 %6153, i8* %21, align 1
  %6154 = xor i32 %6146, %6145
  %6155 = lshr i32 %6154, 4
  %6156 = trunc i32 %6155 to i8
  %6157 = and i8 %6156, 1
  store i8 %6157, i8* %26, align 1
  %6158 = icmp eq i32 %6146, 0
  %6159 = zext i1 %6158 to i8
  store i8 %6159, i8* %29, align 1
  %6160 = lshr i32 %6146, 31
  %6161 = trunc i32 %6160 to i8
  store i8 %6161, i8* %32, align 1
  %6162 = lshr i32 %6145, 31
  %6163 = xor i32 %6160, %6162
  %6164 = add nuw nsw i32 %6163, %6162
  %6165 = icmp eq i32 %6164, 2
  %6166 = zext i1 %6165 to i8
  store i8 %6166, i8* %38, align 1
  %.v245 = select i1 %6158, i64 117, i64 13
  %6167 = add i64 %6142, %.v245
  store i64 %6167, i64* %3, align 8
  br i1 %6158, label %block_.L_487502, label %block_48749a

block_48749a:                                     ; preds = %block_487478
  %6168 = add i64 %6140, -1680
  %6169 = add i64 %6167, 7
  store i64 %6169, i64* %3, align 8
  %6170 = inttoptr i64 %6168 to i32*
  %6171 = load i32, i32* %6170, align 4
  %6172 = add i32 %6171, -3
  %6173 = icmp ult i32 %6171, 3
  %6174 = zext i1 %6173 to i8
  store i8 %6174, i8* %14, align 1
  %6175 = and i32 %6172, 255
  %6176 = tail call i32 @llvm.ctpop.i32(i32 %6175)
  %6177 = trunc i32 %6176 to i8
  %6178 = and i8 %6177, 1
  %6179 = xor i8 %6178, 1
  store i8 %6179, i8* %21, align 1
  %6180 = xor i32 %6172, %6171
  %6181 = lshr i32 %6180, 4
  %6182 = trunc i32 %6181 to i8
  %6183 = and i8 %6182, 1
  store i8 %6183, i8* %26, align 1
  %6184 = icmp eq i32 %6172, 0
  %6185 = zext i1 %6184 to i8
  store i8 %6185, i8* %29, align 1
  %6186 = lshr i32 %6172, 31
  %6187 = trunc i32 %6186 to i8
  store i8 %6187, i8* %32, align 1
  %6188 = lshr i32 %6171, 31
  %6189 = xor i32 %6186, %6188
  %6190 = add nuw nsw i32 %6189, %6188
  %6191 = icmp eq i32 %6190, 2
  %6192 = zext i1 %6191 to i8
  store i8 %6192, i8* %38, align 1
  %6193 = icmp ne i8 %6187, 0
  %6194 = xor i1 %6193, %6191
  %.v246 = select i1 %6194, i64 13, i64 104
  %6195 = add i64 %6167, %.v246
  store i64 %6195, i64* %3, align 8
  br i1 %6194, label %block_4874a7, label %block_.L_487502

block_4874a7:                                     ; preds = %block_48749a
  %6196 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6197 = and i32 %6196, 1024
  %6198 = zext i32 %6197 to i64
  store i64 %6198, i64* %RAX.i2177.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit215 = lshr exact i32 %6197, 10
  %6199 = trunc i32 %.lobit215 to i8
  %6200 = xor i8 %6199, 1
  store i8 %6200, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %6201 = icmp eq i8 %6200, 0
  %.v247 = select i1 %6201, i64 26, i64 21
  %6202 = add i64 %6195, %.v247
  store i64 %6202, i64* %3, align 8
  br i1 %6201, label %block_.L_4874c1, label %block_4874bc

block_4874bc:                                     ; preds = %block_4874a7
  %6203 = add i64 %6202, 31
  store i64 %6203, i64* %3, align 8
  br label %block_.L_4874db

block_.L_4874c1:                                  ; preds = %block_4874a7
  store i64 ptrtoint (%G__0x582ff9_type* @G__0x582ff9 to i64), i64* %RDI.i2211, align 8
  %6204 = add i64 %6140, -4
  %6205 = add i64 %6202, 13
  store i64 %6205, i64* %3, align 8
  %6206 = inttoptr i64 %6204 to i32*
  %6207 = load i32, i32* %6206, align 4
  %6208 = zext i32 %6207 to i64
  store i64 %6208, i64* %RSI.i1962, align 8
  store i8 0, i8* %AL.i1656, align 1
  %6209 = add i64 %6202, -218897
  %6210 = add i64 %6202, 20
  %6211 = load i64, i64* %6, align 8
  %6212 = add i64 %6211, -8
  %6213 = inttoptr i64 %6212 to i64*
  store i64 %6210, i64* %6213, align 8
  store i64 %6212, i64* %6, align 8
  store i64 %6209, i64* %3, align 8
  %call2_4874d0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %6209, %struct.Memory* %MEMORY.80)
  %6214 = load i64, i64* %RBP.i, align 8
  %6215 = add i64 %6214, -1728
  %6216 = load i32, i32* %EAX.i2208, align 4
  %6217 = load i64, i64* %3, align 8
  %6218 = add i64 %6217, 6
  store i64 %6218, i64* %3, align 8
  %6219 = inttoptr i64 %6215 to i32*
  store i32 %6216, i32* %6219, align 4
  %.pre169 = load i64, i64* %3, align 8
  %.pre170 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4874db

block_.L_4874db:                                  ; preds = %block_.L_4874c1, %block_4874bc
  %6220 = phi i64 [ %.pre170, %block_.L_4874c1 ], [ %6140, %block_4874bc ]
  %6221 = phi i64 [ %.pre169, %block_.L_4874c1 ], [ %6203, %block_4874bc ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2177.pre-phi, align 8
  %6222 = add i64 %6220, -4
  %6223 = add i64 %6221, 14
  store i64 %6223, i64* %3, align 8
  %6224 = inttoptr i64 %6222 to i32*
  %6225 = load i32, i32* %6224, align 4
  %6226 = sext i32 %6225 to i64
  %6227 = mul nsw i64 %6226, 380
  store i64 %6227, i64* %RCX.i2175, align 8
  %6228 = lshr i64 %6227, 63
  %6229 = add i64 %6227, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %6229, i64* %RAX.i2177.pre-phi, align 8
  %6230 = icmp ult i64 %6229, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6231 = icmp ult i64 %6229, %6227
  %6232 = or i1 %6230, %6231
  %6233 = zext i1 %6232 to i8
  store i8 %6233, i8* %14, align 1
  %6234 = trunc i64 %6229 to i32
  %6235 = and i32 %6234, 252
  %6236 = tail call i32 @llvm.ctpop.i32(i32 %6235)
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  %6239 = xor i8 %6238, 1
  store i8 %6239, i8* %21, align 1
  %6240 = xor i64 %6227, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %6241 = xor i64 %6240, %6229
  %6242 = lshr i64 %6241, 4
  %6243 = trunc i64 %6242 to i8
  %6244 = and i8 %6243, 1
  store i8 %6244, i8* %26, align 1
  %6245 = icmp eq i64 %6229, 0
  %6246 = zext i1 %6245 to i8
  store i8 %6246, i8* %29, align 1
  %6247 = lshr i64 %6229, 63
  %6248 = trunc i64 %6247 to i8
  store i8 %6248, i8* %32, align 1
  %6249 = xor i64 %6247, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %6250 = xor i64 %6247, %6228
  %6251 = add nuw nsw i64 %6249, %6250
  %6252 = icmp eq i64 %6251, 2
  %6253 = zext i1 %6252 to i8
  store i8 %6253, i8* %38, align 1
  %6254 = add i64 %6227, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 48)
  %6255 = add i64 %6221, 31
  store i64 %6255, i64* %3, align 8
  %6256 = inttoptr i64 %6254 to i32*
  store i32 1, i32* %6256, align 4
  %6257 = load i64, i64* %RBP.i, align 8
  %6258 = add i64 %6257, -4
  %6259 = load i64, i64* %3, align 8
  %6260 = add i64 %6259, 3
  store i64 %6260, i64* %3, align 8
  %6261 = inttoptr i64 %6258 to i32*
  %6262 = load i32, i32* %6261, align 4
  %6263 = zext i32 %6262 to i64
  store i64 %6263, i64* %RDI.i2211, align 8
  %6264 = add i64 %6259, 3974
  %6265 = add i64 %6259, 8
  %6266 = load i64, i64* %6, align 8
  %6267 = add i64 %6266, -8
  %6268 = inttoptr i64 %6267 to i64*
  store i64 %6265, i64* %6268, align 8
  store i64 %6267, i64* %6, align 8
  store i64 %6264, i64* %3, align 8
  %call2_4874fd = tail call %struct.Memory* @sub_488480.propagate_worm(%struct.State* nonnull %0, i64 %6264, %struct.Memory* %MEMORY.80)
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_487502

block_.L_487502:                                  ; preds = %block_48749a, %block_.L_4874db, %block_487478
  %6269 = phi i64 [ %6167, %block_487478 ], [ %6195, %block_48749a ], [ %.pre171, %block_.L_4874db ]
  %MEMORY.83 = phi %struct.Memory* [ %MEMORY.80, %block_487478 ], [ %MEMORY.80, %block_48749a ], [ %call2_4874fd, %block_.L_4874db ]
  %6270 = add i64 %6269, 5
  store i64 %6270, i64* %3, align 8
  br label %block_.L_487507

block_.L_487507:                                  ; preds = %block_487456, %block_487434, %block_487412, %block_4873f0, %block_.L_4873cc, %block_4873b7, %block_.L_487502
  %6271 = phi i64 [ %5945, %block_.L_4873cc ], [ %5992, %block_4873f0 ], [ %6036, %block_487412 ], [ %6080, %block_487434 ], [ %6124, %block_487456 ], [ %6270, %block_.L_487502 ], [ %5882, %block_4873b7 ]
  %MEMORY.84 = phi %struct.Memory* [ %MEMORY.80, %block_.L_4873cc ], [ %MEMORY.80, %block_4873f0 ], [ %MEMORY.80, %block_487412 ], [ %MEMORY.80, %block_487434 ], [ %MEMORY.80, %block_487456 ], [ %MEMORY.83, %block_.L_487502 ], [ %MEMORY.80, %block_4873b7 ]
  %6272 = load i64, i64* %RBP.i, align 8
  %6273 = add i64 %6272, -4
  %6274 = add i64 %6271, 8
  store i64 %6274, i64* %3, align 8
  %6275 = inttoptr i64 %6273 to i32*
  %6276 = load i32, i32* %6275, align 4
  %6277 = add i32 %6276, 1
  %6278 = zext i32 %6277 to i64
  store i64 %6278, i64* %RAX.i2177.pre-phi, align 8
  %6279 = icmp eq i32 %6276, -1
  %6280 = icmp eq i32 %6277, 0
  %6281 = or i1 %6279, %6280
  %6282 = zext i1 %6281 to i8
  store i8 %6282, i8* %14, align 1
  %6283 = and i32 %6277, 255
  %6284 = tail call i32 @llvm.ctpop.i32(i32 %6283)
  %6285 = trunc i32 %6284 to i8
  %6286 = and i8 %6285, 1
  %6287 = xor i8 %6286, 1
  store i8 %6287, i8* %21, align 1
  %6288 = xor i32 %6277, %6276
  %6289 = lshr i32 %6288, 4
  %6290 = trunc i32 %6289 to i8
  %6291 = and i8 %6290, 1
  store i8 %6291, i8* %26, align 1
  %6292 = zext i1 %6280 to i8
  store i8 %6292, i8* %29, align 1
  %6293 = lshr i32 %6277, 31
  %6294 = trunc i32 %6293 to i8
  store i8 %6294, i8* %32, align 1
  %6295 = lshr i32 %6276, 31
  %6296 = xor i32 %6293, %6295
  %6297 = add nuw nsw i32 %6296, %6293
  %6298 = icmp eq i32 %6297, 2
  %6299 = zext i1 %6298 to i8
  store i8 %6299, i8* %38, align 1
  %6300 = add i64 %6271, 14
  store i64 %6300, i64* %3, align 8
  store i32 %6277, i32* %6275, align 4
  %6301 = load i64, i64* %3, align 8
  %6302 = add i64 %6301, -384
  store i64 %6302, i64* %3, align 8
  br label %block_.L_487395

block_.L_48751a.loopexit:                         ; preds = %block_.L_487395
  br label %block_.L_48751a

block_.L_48751a:                                  ; preds = %block_.L_48751a.loopexit, %block_486153
  %6303 = phi i64 [ %62, %block_486153 ], [ %5830, %block_.L_48751a.loopexit ]
  %MEMORY.85 = phi %struct.Memory* [ %call2_486145, %block_486153 ], [ %MEMORY.80, %block_.L_48751a.loopexit ]
  %6304 = load i64, i64* %6, align 8
  %6305 = add i64 %6304, 1728
  store i64 %6305, i64* %6, align 8
  %6306 = icmp ugt i64 %6304, -1729
  %6307 = zext i1 %6306 to i8
  store i8 %6307, i8* %14, align 1
  %6308 = trunc i64 %6305 to i32
  %6309 = and i32 %6308, 255
  %6310 = tail call i32 @llvm.ctpop.i32(i32 %6309)
  %6311 = trunc i32 %6310 to i8
  %6312 = and i8 %6311, 1
  %6313 = xor i8 %6312, 1
  store i8 %6313, i8* %21, align 1
  %6314 = xor i64 %6305, %6304
  %6315 = lshr i64 %6314, 4
  %6316 = trunc i64 %6315 to i8
  %6317 = and i8 %6316, 1
  store i8 %6317, i8* %26, align 1
  %6318 = icmp eq i64 %6305, 0
  %6319 = zext i1 %6318 to i8
  store i8 %6319, i8* %29, align 1
  %6320 = lshr i64 %6305, 63
  %6321 = trunc i64 %6320 to i8
  store i8 %6321, i8* %32, align 1
  %6322 = lshr i64 %6304, 63
  %6323 = xor i64 %6320, %6322
  %6324 = add nuw nsw i64 %6323, %6320
  %6325 = icmp eq i64 %6324, 2
  %6326 = zext i1 %6325 to i8
  store i8 %6326, i8* %38, align 1
  %6327 = add i64 %6303, 8
  store i64 %6327, i64* %3, align 8
  %6328 = add i64 %6304, 1736
  %6329 = inttoptr i64 %6305 to i64*
  %6330 = load i64, i64* %6329, align 8
  store i64 %6330, i64* %RBP.i, align 8
  store i64 %6328, i64* %6, align 8
  %6331 = add i64 %6303, 9
  store i64 %6331, i64* %3, align 8
  %6332 = inttoptr i64 %6328 to i64*
  %6333 = load i64, i64* %6332, align 8
  store i64 %6333, i64* %3, align 8
  %6334 = add i64 %6304, 1744
  store i64 %6334, i64* %6, align 8
  ret %struct.Memory* %MEMORY.85
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
define %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1728
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1728
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
define %struct.Memory* @routine_callq_.build_worms(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.stones_on_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486158(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48751a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.compute_effective_worm_sizes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.compute_unconditional_status(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.find_worm_attacks_and_defenses(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_48617a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4861a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 108, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jge_.L_4862f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_4861e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_4862e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4862e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ping_cave(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jne_.L_486235(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48625d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x74___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 116, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582eee___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582eee_type* @G__0x582eee to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__ecx__0x14__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__ecx__0x18__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__ecx__0x1c__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x24__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.propagate_worm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4862e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4861a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_486307(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48632f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 126, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_486634(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48637b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48638f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486394(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486626(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jge_.L_48656a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_4863d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48655c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_486557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_486438(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_je_.L_48643d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486549(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_48646f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4864e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xca___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 202, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582f0a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582f0a_type* @G__0x582f0a to i64), i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1688
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
define %struct.Memory* @routine_movq__rdx__MINUS0x6a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1696
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
define %struct.Memory* @routine_movl_MINUS0x698__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x6a0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x6a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1704
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x6a4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1700
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
define %struct.Memory* @routine_movl_MINUS0x6a8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_48650d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jmpq_.L_486544(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_callq_.is_same_worm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48653f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4863db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_48639b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_486621(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_callq_.count_common_libs(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4865c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x400___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1024
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 10
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4865e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48661c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582f2f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582f2f_type* @G__0x582f2f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl_0x24__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 36
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
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486621(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486336(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_486647(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48666f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xe8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 232, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4866ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4866ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4866ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4866ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.genus(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x2c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4866f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486676(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_486712(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48673a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48674d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486775(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 244, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x640___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl__0x15__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48685c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4867cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486849(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_je_.L_486849(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_0x8c__rdi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_MINUS0x670__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x670__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movslq_0x3c__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_MINUS0x670__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x670__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48684e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_486794(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_486dbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48688a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486db1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jg_.L_486dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x670__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1648
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
define %struct.Memory* @routine_andl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
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
define %struct.Memory* @routine_jne_.L_4868b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486d9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4868e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4868fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486918(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582f6a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582f6a_type* @G__0x582f6a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.increase_depth_values(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_486d94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48695b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48696f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486974(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486d86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_486b82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_je_.L_486b82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 180
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
define %struct.Memory* @routine_callq_.find_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1652
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x674__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1652
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb4__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, 180
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
define %struct.Memory* @routine_jge_.L_486b7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_486b0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl_0x8c__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 140
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
define %struct.Memory* @routine_callq_.attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1660
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
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
define %struct.Memory* @routine_cmpl_MINUS0x674__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1652
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
define %struct.Memory* @routine_jle_.L_486b0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x67c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
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
define %struct.Memory* @routine_movl__ecx__MINUS0x674__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1652
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x674__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1652
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
define %struct.Memory* @routine_cmpl_0xb4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 180
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
define %struct.Memory* @routine_jl_.L_486b05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486b0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.popgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_je_.L_486b78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486b36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486b60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582f76___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582f76_type* @G__0x582f76 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_subl_MINUS0x674__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1652
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.change_attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486b7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486d81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jne_.L_486d7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_486d7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1664
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
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
define %struct.Memory* @routine_cmpl_0x64__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, 100
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
define %struct.Memory* @routine_jge_.L_486d77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_486d09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jne_.L_486c97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x688__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486cb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x688__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1672
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
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
define %struct.Memory* @routine_cmpl_MINUS0x680__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1664
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
define %struct.Memory* @routine_jle_.L_486d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x688__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
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
define %struct.Memory* @routine_movl__ecx__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1664
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x680__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
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
define %struct.Memory* @routine_cmpl_0x64__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 100
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
define %struct.Memory* @routine_jl_.L_486cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
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
define %struct.Memory* @routine_je_.L_486d72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486d30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486d5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582fa9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582fa9_type* @G__0x582fa9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x680__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1664
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.change_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486d77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486d7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.decrease_depth_values(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_486891(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486863(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_486dd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_486dfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x17e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 382, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_486ff6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_486e38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_486fe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_486e6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_je_.L_486fde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_486f51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_callq_.does_defend(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_486f51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_486fd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_486fd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jmpq_.L_486fde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486fe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486fe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486e01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4871f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487034(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4871df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487068(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4871da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48714d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48714d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4871d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4871d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4871da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4871df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4871e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_486ffd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_487205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48722d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1bb___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 443, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48737b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48726b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48727f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487284(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48736d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x68c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.find_lunch(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487346(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x68c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_je_.L_4872e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_jne_.L_487346(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487320(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582fdd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582fdd_type* @G__0x582fdd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
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
define %struct.Memory* @routine_movl__eax__MINUS0x6bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
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
define %struct.Memory* @routine_movl__ecx__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487365(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487234(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0fb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fb4_type* @G_0xab0fb4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_48738e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.find_worm_threats(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48751a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4873cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487507(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_leaq_MINUS0x690__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.examine_cavity(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_487502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x690__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_487502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4874c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4874db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582ff9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582ff9_type* @G__0x582ff9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1728
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487507(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48750c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487395(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1728
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1729
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
