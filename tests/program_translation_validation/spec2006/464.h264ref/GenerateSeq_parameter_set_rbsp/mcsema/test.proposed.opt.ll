; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4c2411_type = type <{ [8 x i8] }>
%G__0x4c242b_type = type <{ [8 x i8] }>
%G__0x4c2445_type = type <{ [8 x i8] }>
%G__0x4c2456_type = type <{ [8 x i8] }>
%G__0x4c2471_type = type <{ [8 x i8] }>
%G__0x4c248c_type = type <{ [8 x i8] }>
%G__0x4c24a7_type = type <{ [8 x i8] }>
%G__0x4c24c2_type = type <{ [8 x i8] }>
%G__0x4c24db_type = type <{ [8 x i8] }>
%G__0x4c24ea_type = type <{ [8 x i8] }>
%G__0x4c2504_type = type <{ [8 x i8] }>
%G__0x4c251b_type = type <{ [8 x i8] }>
%G__0x4c2537_type = type <{ [8 x i8] }>
%G__0x4c2552_type = type <{ [8 x i8] }>
%G__0x4c256f_type = type <{ [8 x i8] }>
%G__0x4c2591_type = type <{ [8 x i8] }>
%G__0x4c25b6_type = type <{ [8 x i8] }>
%G__0x4c25d9_type = type <{ [8 x i8] }>
%G__0x4c25f8_type = type <{ [8 x i8] }>
%G__0x4c2610_type = type <{ [8 x i8] }>
%G__0x4c2637_type = type <{ [8 x i8] }>
%G__0x4c265d_type = type <{ [8 x i8] }>
%G__0x4c2679_type = type <{ [8 x i8] }>
%G__0x4c269d_type = type <{ [8 x i8] }>
%G__0x4c26c8_type = type <{ [8 x i8] }>
%G__0x4c26e2_type = type <{ [8 x i8] }>
%G__0x4c26f6_type = type <{ [8 x i8] }>
%G__0x4c2720_type = type <{ [8 x i8] }>
%G__0x4c273d_type = type <{ [8 x i8] }>
%G__0x4c2761_type = type <{ [8 x i8] }>
%G__0x4c277a_type = type <{ [8 x i8] }>
%G__0x4c279c_type = type <{ [8 x i8] }>
%G__0x4c27bb_type = type <{ [8 x i8] }>
%G__0x4c27d4_type = type <{ [8 x i8] }>
%G__0x4c27f9_type = type <{ [8 x i8] }>
%G__0x4c281f_type = type <{ [8 x i8] }>
%G__0x4c2843_type = type <{ [8 x i8] }>
%G__0x4c286a_type = type <{ [8 x i8] }>
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
@G__0x4c2411 = global %G__0x4c2411_type zeroinitializer
@G__0x4c242b = global %G__0x4c242b_type zeroinitializer
@G__0x4c2445 = global %G__0x4c2445_type zeroinitializer
@G__0x4c2456 = global %G__0x4c2456_type zeroinitializer
@G__0x4c2471 = global %G__0x4c2471_type zeroinitializer
@G__0x4c248c = global %G__0x4c248c_type zeroinitializer
@G__0x4c24a7 = global %G__0x4c24a7_type zeroinitializer
@G__0x4c24c2 = global %G__0x4c24c2_type zeroinitializer
@G__0x4c24db = global %G__0x4c24db_type zeroinitializer
@G__0x4c24ea = global %G__0x4c24ea_type zeroinitializer
@G__0x4c2504 = global %G__0x4c2504_type zeroinitializer
@G__0x4c251b = global %G__0x4c251b_type zeroinitializer
@G__0x4c2537 = global %G__0x4c2537_type zeroinitializer
@G__0x4c2552 = global %G__0x4c2552_type zeroinitializer
@G__0x4c256f = global %G__0x4c256f_type zeroinitializer
@G__0x4c2591 = global %G__0x4c2591_type zeroinitializer
@G__0x4c25b6 = global %G__0x4c25b6_type zeroinitializer
@G__0x4c25d9 = global %G__0x4c25d9_type zeroinitializer
@G__0x4c25f8 = global %G__0x4c25f8_type zeroinitializer
@G__0x4c2610 = global %G__0x4c2610_type zeroinitializer
@G__0x4c2637 = global %G__0x4c2637_type zeroinitializer
@G__0x4c265d = global %G__0x4c265d_type zeroinitializer
@G__0x4c2679 = global %G__0x4c2679_type zeroinitializer
@G__0x4c269d = global %G__0x4c269d_type zeroinitializer
@G__0x4c26c8 = global %G__0x4c26c8_type zeroinitializer
@G__0x4c26e2 = global %G__0x4c26e2_type zeroinitializer
@G__0x4c26f6 = global %G__0x4c26f6_type zeroinitializer
@G__0x4c2720 = global %G__0x4c2720_type zeroinitializer
@G__0x4c273d = global %G__0x4c273d_type zeroinitializer
@G__0x4c2761 = global %G__0x4c2761_type zeroinitializer
@G__0x4c277a = global %G__0x4c277a_type zeroinitializer
@G__0x4c279c = global %G__0x4c279c_type zeroinitializer
@G__0x4c27bb = global %G__0x4c27bb_type zeroinitializer
@G__0x4c27d4 = global %G__0x4c27d4_type zeroinitializer
@G__0x4c27f9 = global %G__0x4c27f9_type zeroinitializer
@G__0x4c281f = global %G__0x4c281f_type zeroinitializer
@G__0x4c2843 = global %G__0x4c2843_type zeroinitializer
@G__0x4c286a = global %G__0x4c286a_type zeroinitializer
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

declare %struct.Memory* @sub_4acbc0.u_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_477e20.Scaling_List(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_477fa0.GenerateVUISequenceParameters(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @GenerateSeq_parameter_set_rbsp(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 1, i64* %RCX.i1022, align 8
  store i64 120, i64* %RAX.i999, align 8
  %RDX.i1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 120, i64* %RDX.i1040, align 8
  %RDI.i1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1036, align 8
  %42 = add i64 %10, 25
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i1033, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -28
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* %RCX.i1022, align 8
  %56 = load i64, i64* %3, align 8
  store i64 %55, i64* %RDI.i1036, align 8
  %57 = load i64, i64* %RDX.i1040, align 8
  store i64 %57, i64* %RSI.i1033, align 8
  %58 = add i64 %56, -484773
  %59 = add i64 %56, 11
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %59, i64* %62, align 8
  store i64 %61, i64* %6, align 8
  store i64 %58, i64* %3, align 8
  %63 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -24
  %66 = load i64, i64* %RAX.i999, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %RAX.i999, align 8
  %71 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %72 = trunc i64 %70 to i32
  %73 = and i32 %72, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73)
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %78 = icmp eq i64 %70, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %30, align 1
  %80 = lshr i64 %70, 63
  %81 = trunc i64 %80 to i8
  store i8 %81, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %78, i64 10, i64 25
  %82 = add i64 %71, %.v
  store i64 %82, i64* %3, align 8
  br i1 %78, label %block_47769e, label %block_.L_4776ad

block_47769e:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x4c2411_type* @G__0x4c2411 to i64), i64* %RDI.i1036, align 8
  %83 = add i64 %82, -123566
  %84 = add i64 %82, 15
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %84, i64* %87, align 8
  store i64 %86, i64* %6, align 8
  store i64 %83, i64* %3, align 8
  %call2_4776a8 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %83, %struct.Memory* %63)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4776ad

block_.L_4776ad:                                  ; preds = %entry, %block_47769e
  %88 = phi i64 [ %82, %entry ], [ %.pre, %block_47769e ]
  %MEMORY.0 = phi %struct.Memory* [ %63, %entry ], [ %call2_4776a8, %block_47769e ]
  store i64 1, i64* %RDI.i1036, align 8
  store i64 48, i64* %RAX.i999, align 8
  store i64 48, i64* %RSI.i1033, align 8
  %89 = add i64 %88, -484813
  %90 = add i64 %88, 19
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %90, i64* %93, align 8
  store i64 %92, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  %94 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.0)
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -24
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RSI.i1033, align 8
  %101 = load i64, i64* %RAX.i999, align 8
  %102 = add i64 %97, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %RAX.i999, align 8
  %105 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %106 = trunc i64 %104 to i32
  %107 = and i32 %106, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %112 = icmp eq i64 %104, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %30, align 1
  %114 = lshr i64 %104, 63
  %115 = trunc i64 %114 to i8
  store i8 %115, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v32 = select i1 %112, i64 10, i64 25
  %116 = add i64 %105, %.v32
  store i64 %116, i64* %3, align 8
  br i1 %112, label %block_4776d1, label %block_.L_4776e0

block_4776d1:                                     ; preds = %block_.L_4776ad
  store i64 ptrtoint (%G__0x4c242b_type* @G__0x4c242b to i64), i64* %RDI.i1036, align 8
  %117 = add i64 %116, -123617
  %118 = add i64 %116, 15
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %121, align 8
  store i64 %120, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  %call2_4776db = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %117, %struct.Memory* %94)
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_4776e0

block_.L_4776e0:                                  ; preds = %block_.L_4776ad, %block_4776d1
  %122 = phi i64 [ %116, %block_.L_4776ad ], [ %.pre19, %block_4776d1 ]
  %MEMORY.1 = phi %struct.Memory* [ %94, %block_.L_4776ad ], [ %call2_4776db, %block_4776d1 ]
  store i64 8, i64* %RDI.i1036, align 8
  store i64 ptrtoint (%G__0x4c2445_type* @G__0x4c2445 to i64), i64* %RSI.i1033, align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -16
  %125 = add i64 %122, 19
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX.i999, align 8
  %128 = add i64 %123, -24
  %129 = add i64 %122, 23
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RCX.i1022, align 8
  %132 = add i64 %122, 26
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RCX.i1022, align 8
  %135 = add i64 %134, 32
  %136 = add i64 %122, 30
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i64*
  store i64 %127, i64* %137, align 8
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -24
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %139 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RAX.i999, align 8
  %144 = add i64 %140, 7
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX.i999, align 8
  %147 = add i64 %146, 4
  %148 = add i64 %140, 14
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  store i32 8, i32* %149, align 4
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -8
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 4
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %151 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RAX.i999, align 8
  %156 = add i64 %155, 4
  %157 = add i64 %152, 7
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RDX.i1040, align 8
  %161 = add i64 %150, -24
  %162 = add i64 %152, 11
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RCX.i1022, align 8
  %165 = add i64 %152, 218292
  %166 = add i64 %152, 16
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %166, i64* %169, align 8
  store i64 %168, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  %call2_477717 = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %165, %struct.Memory* %MEMORY.1)
  %170 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2456_type* @G__0x4c2456 to i64), i64* %RDI.i1036, align 8
  %171 = load i64, i64* %RAX.i999, align 8
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -28
  %174 = add i64 %170, 13
  store i64 %174, i64* %3, align 8
  %175 = trunc i64 %171 to i32
  %176 = inttoptr i64 %173 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, %175
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX.i999, align 8
  %180 = icmp ult i32 %178, %175
  %181 = icmp ult i32 %178, %177
  %182 = or i1 %180, %181
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %14, align 1
  %184 = and i32 %178, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1
  %189 = xor i32 %177, %175
  %190 = xor i32 %189, %178
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %27, align 1
  %194 = icmp eq i32 %178, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %30, align 1
  %196 = lshr i32 %178, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %33, align 1
  %198 = lshr i32 %175, 31
  %199 = lshr i32 %177, 31
  %200 = xor i32 %196, %198
  %201 = xor i32 %196, %199
  %202 = add nuw nsw i32 %200, %201
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %39, align 1
  %205 = add i64 %170, 16
  store i64 %205, i64* %3, align 8
  store i32 %178, i32* %176, align 4
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -8
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 4
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %RCX.i1022, align 8
  %212 = add i64 %211, 8
  %213 = add i64 %208, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RSI.i1033, align 8
  %217 = add i64 %206, -24
  %218 = add i64 %208, 11
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RDX.i1040, align 8
  %221 = add i64 %208, 218068
  %222 = add i64 %208, 16
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %222, i64* %225, align 8
  store i64 %224, i64* %6, align 8
  store i64 %221, i64* %3, align 8
  %call2_477737 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %221, %struct.Memory* %call2_477717)
  %226 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2471_type* @G__0x4c2471 to i64), i64* %RDI.i1036, align 8
  %227 = load i64, i64* %RAX.i999, align 8
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -28
  %230 = add i64 %226, 13
  store i64 %230, i64* %3, align 8
  %231 = trunc i64 %227 to i32
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %233, %231
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX.i999, align 8
  %236 = icmp ult i32 %234, %231
  %237 = icmp ult i32 %234, %233
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %14, align 1
  %240 = and i32 %234, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  %245 = xor i32 %233, %231
  %246 = xor i32 %245, %234
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %27, align 1
  %250 = icmp eq i32 %234, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %30, align 1
  %252 = lshr i32 %234, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %33, align 1
  %254 = lshr i32 %231, 31
  %255 = lshr i32 %233, 31
  %256 = xor i32 %252, %254
  %257 = xor i32 %252, %255
  %258 = add nuw nsw i32 %256, %257
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %39, align 1
  %261 = add i64 %226, 16
  store i64 %261, i64* %3, align 8
  store i32 %234, i32* %232, align 4
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -8
  %264 = load i64, i64* %3, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RCX.i1022, align 8
  %268 = add i64 %267, 12
  %269 = add i64 %264, 7
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RSI.i1033, align 8
  %273 = add i64 %262, -24
  %274 = add i64 %264, 11
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RDX.i1040, align 8
  %277 = add i64 %264, 218036
  %278 = add i64 %264, 16
  %279 = load i64, i64* %6, align 8
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %6, align 8
  store i64 %277, i64* %3, align 8
  %call2_477757 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %277, %struct.Memory* %call2_477737)
  %282 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c248c_type* @G__0x4c248c to i64), i64* %RDI.i1036, align 8
  %283 = load i64, i64* %RAX.i999, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -28
  %286 = add i64 %282, 13
  store i64 %286, i64* %3, align 8
  %287 = trunc i64 %283 to i32
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = add i32 %289, %287
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX.i999, align 8
  %292 = icmp ult i32 %290, %287
  %293 = icmp ult i32 %290, %289
  %294 = or i1 %292, %293
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %14, align 1
  %296 = and i32 %290, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %21, align 1
  %301 = xor i32 %289, %287
  %302 = xor i32 %301, %290
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %27, align 1
  %306 = icmp eq i32 %290, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %30, align 1
  %308 = lshr i32 %290, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %33, align 1
  %310 = lshr i32 %287, 31
  %311 = lshr i32 %289, 31
  %312 = xor i32 %308, %310
  %313 = xor i32 %308, %311
  %314 = add nuw nsw i32 %312, %313
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %39, align 1
  %317 = add i64 %282, 16
  store i64 %317, i64* %3, align 8
  store i32 %290, i32* %288, align 4
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -8
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 4
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %319 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RCX.i1022, align 8
  %324 = add i64 %323, 16
  %325 = add i64 %320, 7
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RSI.i1033, align 8
  %329 = add i64 %318, -24
  %330 = add i64 %320, 11
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RDX.i1040, align 8
  %333 = add i64 %320, 218004
  %334 = add i64 %320, 16
  %335 = load i64, i64* %6, align 8
  %336 = add i64 %335, -8
  %337 = inttoptr i64 %336 to i64*
  store i64 %334, i64* %337, align 8
  store i64 %336, i64* %6, align 8
  store i64 %333, i64* %3, align 8
  %call2_477777 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %333, %struct.Memory* %call2_477757)
  %338 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c24a7_type* @G__0x4c24a7 to i64), i64* %RDI.i1036, align 8
  %339 = load i64, i64* %RAX.i999, align 8
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -28
  %342 = add i64 %338, 13
  store i64 %342, i64* %3, align 8
  %343 = trunc i64 %339 to i32
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = add i32 %345, %343
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RAX.i999, align 8
  %348 = icmp ult i32 %346, %343
  %349 = icmp ult i32 %346, %345
  %350 = or i1 %348, %349
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %14, align 1
  %352 = and i32 %346, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352)
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %21, align 1
  %357 = xor i32 %345, %343
  %358 = xor i32 %357, %346
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %27, align 1
  %362 = icmp eq i32 %346, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %30, align 1
  %364 = lshr i32 %346, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %33, align 1
  %366 = lshr i32 %343, 31
  %367 = lshr i32 %345, 31
  %368 = xor i32 %364, %366
  %369 = xor i32 %364, %367
  %370 = add nuw nsw i32 %368, %369
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %39, align 1
  %373 = add i64 %338, 16
  store i64 %373, i64* %3, align 8
  store i32 %346, i32* %344, align 4
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -8
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RCX.i1022, align 8
  %380 = add i64 %379, 20
  %381 = add i64 %376, 7
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RSI.i1033, align 8
  %385 = add i64 %374, -24
  %386 = add i64 %376, 11
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RDX.i1040, align 8
  %389 = add i64 %376, 217972
  %390 = add i64 %376, 16
  %391 = load i64, i64* %6, align 8
  %392 = add i64 %391, -8
  %393 = inttoptr i64 %392 to i64*
  store i64 %390, i64* %393, align 8
  store i64 %392, i64* %6, align 8
  store i64 %389, i64* %3, align 8
  %call2_477797 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %389, %struct.Memory* %call2_477777)
  %394 = load i64, i64* %3, align 8
  store i64 4, i64* %RDI.i1036, align 8
  store i64 ptrtoint (%G__0x4c24c2_type* @G__0x4c24c2 to i64), i64* %RSI.i1033, align 8
  store i64 0, i64* %RDX.i1040, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %395 = load i64, i64* %RAX.i999, align 8
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -28
  %398 = add i64 %394, 20
  store i64 %398, i64* %3, align 8
  %399 = trunc i64 %395 to i32
  %400 = inttoptr i64 %397 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, %399
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX.i999, align 8
  %404 = icmp ult i32 %402, %399
  %405 = icmp ult i32 %402, %401
  %406 = or i1 %404, %405
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %14, align 1
  %408 = and i32 %402, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %21, align 1
  %413 = xor i32 %401, %399
  %414 = xor i32 %413, %402
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %27, align 1
  %418 = icmp eq i32 %402, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %30, align 1
  %420 = lshr i32 %402, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %33, align 1
  %422 = lshr i32 %399, 31
  %423 = lshr i32 %401, 31
  %424 = xor i32 %420, %422
  %425 = xor i32 %420, %423
  %426 = add nuw nsw i32 %424, %425
  %427 = icmp eq i32 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %39, align 1
  %429 = add i64 %394, 23
  store i64 %429, i64* %3, align 8
  store i32 %402, i32* %400, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -24
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RCX.i1022, align 8
  %436 = add i64 %432, 218125
  %437 = add i64 %432, 9
  %438 = load i64, i64* %6, align 8
  %439 = add i64 %438, -8
  %440 = inttoptr i64 %439 to i64*
  store i64 %437, i64* %440, align 8
  store i64 %439, i64* %6, align 8
  store i64 %436, i64* %3, align 8
  %call2_4777b7 = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %436, %struct.Memory* %call2_477797)
  %441 = load i64, i64* %3, align 8
  store i64 8, i64* %RDI.i1036, align 8
  store i64 ptrtoint (%G__0x4c24db_type* @G__0x4c24db to i64), i64* %RSI.i1033, align 8
  %442 = load i64, i64* %RAX.i999, align 8
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -28
  %445 = add i64 %441, 18
  store i64 %445, i64* %3, align 8
  %446 = trunc i64 %442 to i32
  %447 = inttoptr i64 %444 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = add i32 %448, %446
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RAX.i999, align 8
  %451 = icmp ult i32 %449, %446
  %452 = icmp ult i32 %449, %448
  %453 = or i1 %451, %452
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %14, align 1
  %455 = and i32 %449, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i32 %448, %446
  %461 = xor i32 %460, %449
  %462 = lshr i32 %461, 4
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %27, align 1
  %465 = icmp eq i32 %449, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %30, align 1
  %467 = lshr i32 %449, 31
  %468 = trunc i32 %467 to i8
  store i8 %468, i8* %33, align 1
  %469 = lshr i32 %446, 31
  %470 = lshr i32 %448, 31
  %471 = xor i32 %467, %469
  %472 = xor i32 %467, %470
  %473 = add nuw nsw i32 %471, %472
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %39, align 1
  %476 = add i64 %441, 21
  store i64 %476, i64* %3, align 8
  store i32 %449, i32* %447, align 4
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -8
  %479 = load i64, i64* %3, align 8
  %480 = add i64 %479, 4
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %478 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RCX.i1022, align 8
  %483 = add i64 %482, 24
  %484 = add i64 %479, 7
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RDX.i1040, align 8
  %488 = add i64 %477, -24
  %489 = add i64 %479, 11
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %RCX.i1022, align 8
  %492 = add i64 %479, 218095
  %493 = add i64 %479, 16
  %494 = load i64, i64* %6, align 8
  %495 = add i64 %494, -8
  %496 = inttoptr i64 %495 to i64*
  store i64 %493, i64* %496, align 8
  store i64 %495, i64* %6, align 8
  store i64 %492, i64* %3, align 8
  %call2_4777dc = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %492, %struct.Memory* %call2_4777b7)
  %497 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c24ea_type* @G__0x4c24ea to i64), i64* %RDI.i1036, align 8
  %498 = load i64, i64* %RAX.i999, align 8
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -28
  %501 = add i64 %497, 13
  store i64 %501, i64* %3, align 8
  %502 = trunc i64 %498 to i32
  %503 = inttoptr i64 %500 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i32 %504, %502
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i999, align 8
  %507 = icmp ult i32 %505, %502
  %508 = icmp ult i32 %505, %504
  %509 = or i1 %507, %508
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %14, align 1
  %511 = and i32 %505, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  %516 = xor i32 %504, %502
  %517 = xor i32 %516, %505
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %27, align 1
  %521 = icmp eq i32 %505, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %30, align 1
  %523 = lshr i32 %505, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %33, align 1
  %525 = lshr i32 %502, 31
  %526 = lshr i32 %504, 31
  %527 = xor i32 %523, %525
  %528 = xor i32 %523, %526
  %529 = add nuw nsw i32 %527, %528
  %530 = icmp eq i32 %529, 2
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %39, align 1
  %532 = add i64 %497, 16
  store i64 %532, i64* %3, align 8
  store i32 %505, i32* %503, align 4
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -8
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 4
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %RCX.i1022, align 8
  %539 = add i64 %538, 28
  %540 = add i64 %535, 7
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RSI.i1033, align 8
  %544 = add i64 %533, -24
  %545 = add i64 %535, 11
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RDX.i1040, align 8
  %548 = add i64 %535, 216751
  %549 = add i64 %535, 16
  %550 = load i64, i64* %6, align 8
  %551 = add i64 %550, -8
  %552 = inttoptr i64 %551 to i64*
  store i64 %549, i64* %552, align 8
  store i64 %551, i64* %6, align 8
  store i64 %548, i64* %3, align 8
  %call2_4777fc = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %548, %struct.Memory* %call2_4777dc)
  %553 = load i64, i64* %RAX.i999, align 8
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -28
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 3
  store i64 %557, i64* %3, align 8
  %558 = trunc i64 %553 to i32
  %559 = inttoptr i64 %555 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, %558
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RAX.i999, align 8
  %563 = icmp ult i32 %561, %558
  %564 = icmp ult i32 %561, %560
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = and i32 %561, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %21, align 1
  %572 = xor i32 %560, %558
  %573 = xor i32 %572, %561
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %27, align 1
  %577 = icmp eq i32 %561, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %30, align 1
  %579 = lshr i32 %561, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %33, align 1
  %581 = lshr i32 %558, 31
  %582 = lshr i32 %560, 31
  %583 = xor i32 %579, %581
  %584 = xor i32 %579, %582
  %585 = add nuw nsw i32 %583, %584
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %39, align 1
  %588 = add i64 %556, 6
  store i64 %588, i64* %3, align 8
  store i32 %561, i32* %559, align 4
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -8
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 4
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %590 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %RCX.i1022, align 8
  %595 = add i64 %594, 4
  %596 = add i64 %591, 8
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = add i32 %598, -100
  %600 = icmp ult i32 %598, 100
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %14, align 1
  %602 = and i32 %599, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %21, align 1
  %607 = xor i32 %599, %598
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %27, align 1
  %611 = icmp eq i32 %599, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %30, align 1
  %613 = lshr i32 %599, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %33, align 1
  %615 = lshr i32 %598, 31
  %616 = xor i32 %613, %615
  %617 = add nuw nsw i32 %616, %615
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %39, align 1
  %.v33 = select i1 %611, i64 59, i64 14
  %620 = add i64 %591, %.v33
  store i64 %620, i64* %3, align 8
  br i1 %611, label %block_.L_477842, label %block_477815

block_477815:                                     ; preds = %block_.L_4776e0
  %621 = add i64 %620, 4
  store i64 %621, i64* %3, align 8
  %622 = load i64, i64* %593, align 8
  store i64 %622, i64* %RAX.i999, align 8
  %623 = add i64 %622, 4
  %624 = add i64 %620, 8
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, -110
  %628 = icmp ult i32 %626, 110
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %14, align 1
  %630 = and i32 %627, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  %635 = xor i32 %627, %626
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  store i8 %638, i8* %27, align 1
  %639 = icmp eq i32 %627, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %30, align 1
  %641 = lshr i32 %627, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %33, align 1
  %643 = lshr i32 %626, 31
  %644 = xor i32 %641, %643
  %645 = add nuw nsw i32 %644, %643
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %39, align 1
  %.v34 = select i1 %639, i64 45, i64 14
  %648 = add i64 %620, %.v34
  store i64 %648, i64* %3, align 8
  br i1 %639, label %block_.L_477842, label %block_477823

block_477823:                                     ; preds = %block_477815
  %649 = add i64 %648, 4
  store i64 %649, i64* %3, align 8
  %650 = load i64, i64* %593, align 8
  store i64 %650, i64* %RAX.i999, align 8
  %651 = add i64 %650, 4
  %652 = add i64 %648, 8
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = add i32 %654, -122
  %656 = icmp ult i32 %654, 122
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %14, align 1
  %658 = and i32 %655, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %21, align 1
  %663 = xor i32 %654, 16
  %664 = xor i32 %663, %655
  %665 = lshr i32 %664, 4
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  store i8 %667, i8* %27, align 1
  %668 = icmp eq i32 %655, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %30, align 1
  %670 = lshr i32 %655, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %33, align 1
  %672 = lshr i32 %654, 31
  %673 = xor i32 %670, %672
  %674 = add nuw nsw i32 %673, %672
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %39, align 1
  %.v35 = select i1 %668, i64 31, i64 14
  %677 = add i64 %648, %.v35
  store i64 %677, i64* %3, align 8
  br i1 %668, label %block_.L_477842, label %block_477831

block_477831:                                     ; preds = %block_477823
  %678 = add i64 %677, 4
  store i64 %678, i64* %3, align 8
  %679 = load i64, i64* %593, align 8
  store i64 %679, i64* %RAX.i999, align 8
  %680 = add i64 %679, 4
  %681 = add i64 %677, 11
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = add i32 %683, -144
  %685 = icmp ult i32 %683, 144
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %14, align 1
  %687 = and i32 %684, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %21, align 1
  %692 = xor i32 %683, 16
  %693 = xor i32 %692, %684
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %27, align 1
  %697 = icmp eq i32 %684, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %30, align 1
  %699 = lshr i32 %684, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %33, align 1
  %701 = lshr i32 %683, 31
  %702 = xor i32 %699, %701
  %703 = add nuw nsw i32 %702, %701
  %704 = icmp eq i32 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %39, align 1
  %.v36 = select i1 %697, i64 17, i64 593
  %706 = add i64 %677, %.v36
  store i64 %706, i64* %3, align 8
  br i1 %697, label %block_.L_477842, label %block_.L_477a82

block_.L_477842:                                  ; preds = %block_477831, %block_477823, %block_477815, %block_.L_4776e0
  %707 = phi i64 [ %706, %block_477831 ], [ %677, %block_477823 ], [ %648, %block_477815 ], [ %620, %block_.L_4776e0 ]
  store i64 ptrtoint (%G__0x4c2504_type* @G__0x4c2504 to i64), i64* %RDI.i1036, align 8
  %708 = add i64 %707, 14
  store i64 %708, i64* %3, align 8
  %709 = load i64, i64* %593, align 8
  store i64 %709, i64* %RAX.i999, align 8
  %710 = add i64 %709, 32
  %711 = add i64 %707, 17
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RSI.i1033, align 8
  %715 = add i64 %589, -24
  %716 = add i64 %707, 21
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RDX.i1040, align 8
  %719 = add i64 %707, 216670
  %720 = add i64 %707, 26
  %721 = load i64, i64* %6, align 8
  %722 = add i64 %721, -8
  %723 = inttoptr i64 %722 to i64*
  store i64 %720, i64* %723, align 8
  store i64 %722, i64* %6, align 8
  store i64 %719, i64* %3, align 8
  %call2_477857 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %719, %struct.Memory* %call2_4777fc)
  %724 = load i64, i64* %RAX.i999, align 8
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -28
  %727 = load i64, i64* %3, align 8
  %728 = add i64 %727, 3
  store i64 %728, i64* %3, align 8
  %729 = trunc i64 %724 to i32
  %730 = inttoptr i64 %726 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, %729
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RAX.i999, align 8
  %734 = icmp ult i32 %732, %729
  %735 = icmp ult i32 %732, %731
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %14, align 1
  %738 = and i32 %732, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %21, align 1
  %743 = xor i32 %731, %729
  %744 = xor i32 %743, %732
  %745 = lshr i32 %744, 4
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %27, align 1
  %748 = icmp eq i32 %732, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %30, align 1
  %750 = lshr i32 %732, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %33, align 1
  %752 = lshr i32 %729, 31
  %753 = lshr i32 %731, 31
  %754 = xor i32 %750, %752
  %755 = xor i32 %750, %753
  %756 = add nuw nsw i32 %754, %755
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %39, align 1
  %759 = add i64 %727, 6
  store i64 %759, i64* %3, align 8
  store i32 %732, i32* %730, align 4
  %760 = load i64, i64* %3, align 8
  %761 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %761, i64* %RDX.i1040, align 8
  %762 = add i64 %761, 72700
  %763 = add i64 %760, 15
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = add i32 %765, -3
  %767 = icmp ult i32 %765, 3
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %14, align 1
  %769 = and i32 %766, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = xor i32 %766, %765
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %27, align 1
  %778 = icmp eq i32 %766, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %30, align 1
  %780 = lshr i32 %766, 31
  %781 = trunc i32 %780 to i8
  store i8 %781, i8* %33, align 1
  %782 = lshr i32 %765, 31
  %783 = xor i32 %780, %782
  %784 = add nuw nsw i32 %783, %782
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %39, align 1
  %.v43 = select i1 %778, i64 21, i64 60
  %787 = add i64 %760, %.v43
  store i64 %787, i64* %3, align 8
  br i1 %778, label %block_477877, label %block_.L_47789e

block_477877:                                     ; preds = %block_.L_477842
  store i64 ptrtoint (%G__0x4c251b_type* @G__0x4c251b to i64), i64* %RDI.i1036, align 8
  store i64 %761, i64* %RAX.i999, align 8
  %788 = add i64 %761, 72724
  %789 = add i64 %787, 24
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RSI.i1033, align 8
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -24
  %795 = add i64 %787, 28
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i64*
  %797 = load i64, i64* %796, align 8
  store i64 %797, i64* %RDX.i1040, align 8
  %798 = add i64 %787, 217737
  %799 = add i64 %787, 33
  %800 = load i64, i64* %6, align 8
  %801 = add i64 %800, -8
  %802 = inttoptr i64 %801 to i64*
  store i64 %799, i64* %802, align 8
  store i64 %801, i64* %6, align 8
  store i64 %798, i64* %3, align 8
  %call2_477893 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %798, %struct.Memory* %call2_477857)
  %803 = load i64, i64* %RAX.i999, align 8
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -28
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 3
  store i64 %807, i64* %3, align 8
  %808 = trunc i64 %803 to i32
  %809 = inttoptr i64 %805 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = add i32 %810, %808
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RAX.i999, align 8
  %813 = icmp ult i32 %811, %808
  %814 = icmp ult i32 %811, %810
  %815 = or i1 %813, %814
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %14, align 1
  %817 = and i32 %811, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  %822 = xor i32 %810, %808
  %823 = xor i32 %822, %811
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  store i8 %826, i8* %27, align 1
  %827 = icmp eq i32 %811, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %30, align 1
  %829 = lshr i32 %811, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %33, align 1
  %831 = lshr i32 %808, 31
  %832 = lshr i32 %810, 31
  %833 = xor i32 %829, %831
  %834 = xor i32 %829, %832
  %835 = add nuw nsw i32 %833, %834
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %39, align 1
  %838 = add i64 %806, 6
  store i64 %838, i64* %3, align 8
  store i32 %811, i32* %809, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_47789e

block_.L_47789e:                                  ; preds = %block_.L_477842, %block_477877
  %839 = phi i64 [ %787, %block_.L_477842 ], [ %.pre20, %block_477877 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_477857, %block_.L_477842 ], [ %call2_477893, %block_477877 ]
  store i64 ptrtoint (%G__0x4c2537_type* @G__0x4c2537 to i64), i64* %RDI.i1036, align 8
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -8
  %842 = add i64 %839, 14
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RAX.i999, align 8
  %845 = add i64 %844, 72
  %846 = add i64 %839, 17
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RSI.i1033, align 8
  %850 = add i64 %840, -24
  %851 = add i64 %839, 21
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RDX.i1040, align 8
  %854 = add i64 %839, 216578
  %855 = add i64 %839, 26
  %856 = load i64, i64* %6, align 8
  %857 = add i64 %856, -8
  %858 = inttoptr i64 %857 to i64*
  store i64 %855, i64* %858, align 8
  store i64 %857, i64* %6, align 8
  store i64 %854, i64* %3, align 8
  %call2_4778b3 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %854, %struct.Memory* %MEMORY.3)
  %859 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2552_type* @G__0x4c2552 to i64), i64* %RDI.i1036, align 8
  %860 = load i64, i64* %RAX.i999, align 8
  %861 = load i64, i64* %RBP.i, align 8
  %862 = add i64 %861, -28
  %863 = add i64 %859, 13
  store i64 %863, i64* %3, align 8
  %864 = trunc i64 %860 to i32
  %865 = inttoptr i64 %862 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = add i32 %866, %864
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RAX.i999, align 8
  %869 = icmp ult i32 %867, %864
  %870 = icmp ult i32 %867, %866
  %871 = or i1 %869, %870
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %14, align 1
  %873 = and i32 %867, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %21, align 1
  %878 = xor i32 %866, %864
  %879 = xor i32 %878, %867
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %27, align 1
  %883 = icmp eq i32 %867, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %30, align 1
  %885 = lshr i32 %867, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %33, align 1
  %887 = lshr i32 %864, 31
  %888 = lshr i32 %866, 31
  %889 = xor i32 %885, %887
  %890 = xor i32 %885, %888
  %891 = add nuw nsw i32 %889, %890
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %39, align 1
  %894 = add i64 %859, 16
  store i64 %894, i64* %3, align 8
  store i32 %867, i32* %865, align 4
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -8
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 4
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %896 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RDX.i1040, align 8
  %901 = add i64 %900, 76
  %902 = add i64 %897, 7
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RSI.i1033, align 8
  %906 = add i64 %895, -24
  %907 = add i64 %897, 11
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i64*
  %909 = load i64, i64* %908, align 8
  store i64 %909, i64* %RDX.i1040, align 8
  %910 = add i64 %897, 216536
  %911 = add i64 %897, 16
  %912 = load i64, i64* %6, align 8
  %913 = add i64 %912, -8
  %914 = inttoptr i64 %913 to i64*
  store i64 %911, i64* %914, align 8
  store i64 %913, i64* %6, align 8
  store i64 %910, i64* %3, align 8
  %call2_4778d3 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %910, %struct.Memory* %call2_4778b3)
  %915 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c256f_type* @G__0x4c256f to i64), i64* %RDI.i1036, align 8
  %916 = load i64, i64* %RAX.i999, align 8
  %917 = load i64, i64* %RBP.i, align 8
  %918 = add i64 %917, -28
  %919 = add i64 %915, 13
  store i64 %919, i64* %3, align 8
  %920 = trunc i64 %916 to i32
  %921 = inttoptr i64 %918 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = add i32 %922, %920
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %RAX.i999, align 8
  %925 = icmp ult i32 %923, %920
  %926 = icmp ult i32 %923, %922
  %927 = or i1 %925, %926
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %14, align 1
  %929 = and i32 %923, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %21, align 1
  %934 = xor i32 %922, %920
  %935 = xor i32 %934, %923
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %27, align 1
  %939 = icmp eq i32 %923, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %30, align 1
  %941 = lshr i32 %923, 31
  %942 = trunc i32 %941 to i8
  store i8 %942, i8* %33, align 1
  %943 = lshr i32 %920, 31
  %944 = lshr i32 %922, 31
  %945 = xor i32 %941, %943
  %946 = xor i32 %941, %944
  %947 = add nuw nsw i32 %945, %946
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %39, align 1
  %950 = add i64 %915, 16
  store i64 %950, i64* %3, align 8
  store i32 %923, i32* %921, align 4
  %951 = load i64, i64* %3, align 8
  %952 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %952, i64* %RDX.i1040, align 8
  %953 = add i64 %952, 72704
  %954 = add i64 %951, 14
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RSI.i1033, align 8
  %958 = load i64, i64* %RBP.i, align 8
  %959 = add i64 %958, -24
  %960 = add i64 %951, 18
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RDX.i1040, align 8
  %963 = add i64 %951, 217624
  %964 = add i64 %951, 23
  %965 = load i64, i64* %6, align 8
  %966 = add i64 %965, -8
  %967 = inttoptr i64 %966 to i64*
  store i64 %964, i64* %967, align 8
  store i64 %966, i64* %6, align 8
  store i64 %963, i64* %3, align 8
  %call2_4778fa = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %963, %struct.Memory* %call2_4778d3)
  %968 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2591_type* @G__0x4c2591 to i64), i64* %RDI.i1036, align 8
  %969 = load i64, i64* %RAX.i999, align 8
  %970 = load i64, i64* %RBP.i, align 8
  %971 = add i64 %970, -28
  %972 = add i64 %968, 13
  store i64 %972, i64* %3, align 8
  %973 = trunc i64 %969 to i32
  %974 = inttoptr i64 %971 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = add i32 %975, %973
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RAX.i999, align 8
  %978 = icmp ult i32 %976, %973
  %979 = icmp ult i32 %976, %975
  %980 = or i1 %978, %979
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %14, align 1
  %982 = and i32 %976, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %21, align 1
  %987 = xor i32 %975, %973
  %988 = xor i32 %987, %976
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %27, align 1
  %992 = icmp eq i32 %976, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %30, align 1
  %994 = lshr i32 %976, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %33, align 1
  %996 = lshr i32 %973, 31
  %997 = lshr i32 %975, 31
  %998 = xor i32 %994, %996
  %999 = xor i32 %994, %997
  %1000 = add nuw nsw i32 %998, %999
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %39, align 1
  %1003 = add i64 %968, 16
  store i64 %1003, i64* %3, align 8
  store i32 %976, i32* %974, align 4
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -8
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1005 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RDX.i1040, align 8
  %1010 = add i64 %1009, 36
  %1011 = add i64 %1006, 7
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RSI.i1033, align 8
  %1015 = add i64 %1004, -24
  %1016 = add i64 %1006, 11
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i64*
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %RDX.i1040, align 8
  %1019 = add i64 %1006, 217585
  %1020 = add i64 %1006, 16
  %1021 = load i64, i64* %6, align 8
  %1022 = add i64 %1021, -8
  %1023 = inttoptr i64 %1022 to i64*
  store i64 %1020, i64* %1023, align 8
  store i64 %1022, i64* %6, align 8
  store i64 %1019, i64* %3, align 8
  %call2_47791a = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1019, %struct.Memory* %call2_4778fa)
  %1024 = load i64, i64* %RAX.i999, align 8
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -28
  %1027 = load i64, i64* %3, align 8
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %3, align 8
  %1029 = trunc i64 %1024 to i32
  %1030 = inttoptr i64 %1026 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = add i32 %1031, %1029
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RAX.i999, align 8
  %1034 = icmp ult i32 %1032, %1029
  %1035 = icmp ult i32 %1032, %1031
  %1036 = or i1 %1034, %1035
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %14, align 1
  %1038 = and i32 %1032, 255
  %1039 = tail call i32 @llvm.ctpop.i32(i32 %1038)
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = xor i8 %1041, 1
  store i8 %1042, i8* %21, align 1
  %1043 = xor i32 %1031, %1029
  %1044 = xor i32 %1043, %1032
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %27, align 1
  %1048 = icmp eq i32 %1032, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %30, align 1
  %1050 = lshr i32 %1032, 31
  %1051 = trunc i32 %1050 to i8
  store i8 %1051, i8* %33, align 1
  %1052 = lshr i32 %1029, 31
  %1053 = lshr i32 %1031, 31
  %1054 = xor i32 %1050, %1052
  %1055 = xor i32 %1050, %1053
  %1056 = add nuw nsw i32 %1054, %1055
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %39, align 1
  %1059 = add i64 %1027, 6
  store i64 %1059, i64* %3, align 8
  store i32 %1032, i32* %1030, align 4
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -8
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RDX.i1040, align 8
  %1066 = add i64 %1065, 36
  %1067 = add i64 %1062, 8
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  store i8 0, i8* %14, align 1
  %1070 = and i32 %1069, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1075 = icmp eq i32 %1069, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %30, align 1
  %1077 = lshr i32 %1069, 31
  %1078 = trunc i32 %1077 to i8
  store i8 %1078, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v44 = select i1 %1075, i64 344, i64 14
  %1079 = add i64 %1062, %.v44
  store i64 %1079, i64* %3, align 8
  br i1 %1075, label %block_.L_477a7d, label %block_477933

block_477933:                                     ; preds = %block_.L_47789e
  %1080 = add i64 %1060, -36
  %1081 = add i64 %1079, 7
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  store i32 0, i32* %1082, align 4
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_47793a

block_.L_47793a:                                  ; preds = %block_.L_477a65, %block_477933
  %1084 = phi i64 [ %.pre21, %block_477933 ], [ %1535, %block_.L_477a65 ]
  %1085 = load i64, i64* %RBP.i, align 8
  %1086 = add i64 %1085, -36
  %1087 = add i64 %1084, 4
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = add i32 %1089, -8
  %1091 = icmp ult i32 %1089, 8
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %14, align 1
  %1093 = and i32 %1090, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  %1098 = xor i32 %1090, %1089
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %27, align 1
  %1102 = icmp eq i32 %1090, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %30, align 1
  %1104 = lshr i32 %1090, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %33, align 1
  %1106 = lshr i32 %1089, 31
  %1107 = xor i32 %1104, %1106
  %1108 = add nuw nsw i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %39, align 1
  %.v45 = select i1 %1091, i64 10, i64 318
  %1111 = add i64 %1084, %.v45
  store i64 %1111, i64* %3, align 8
  br i1 %1091, label %block_477944, label %block_.L_477a78

block_477944:                                     ; preds = %block_.L_47793a
  store i64 ptrtoint (%G__0x4c25b6_type* @G__0x4c25b6 to i64), i64* %RDI.i1036, align 8
  %1112 = add i64 %1085, -8
  %1113 = add i64 %1111, 14
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %RAX.i999, align 8
  %1116 = add i64 %1111, 17
  store i64 %1116, i64* %3, align 8
  %1117 = load i32, i32* %1088, align 4
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i1022, align 8
  store i64 %1118, i64* %RDX.i1040, align 8
  %1119 = shl nuw nsw i64 %1118, 2
  %1120 = add nuw nsw i64 %1119, 40
  %1121 = add i64 %1120, %1115
  %1122 = add i64 %1111, 23
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RSI.i1033, align 8
  %1126 = add i64 %1085, -24
  %1127 = add i64 %1111, 27
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RDX.i1040, align 8
  %1130 = add i64 %1111, 217532
  %1131 = add i64 %1111, 32
  %1132 = load i64, i64* %6, align 8
  %1133 = add i64 %1132, -8
  %1134 = inttoptr i64 %1133 to i64*
  store i64 %1131, i64* %1134, align 8
  store i64 %1133, i64* %6, align 8
  store i64 %1130, i64* %3, align 8
  %call2_47795f = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1130, %struct.Memory* %call2_47791a)
  %1135 = load i64, i64* %RAX.i999, align 8
  %1136 = load i64, i64* %RBP.i, align 8
  %1137 = add i64 %1136, -28
  %1138 = load i64, i64* %3, align 8
  %1139 = add i64 %1138, 3
  store i64 %1139, i64* %3, align 8
  %1140 = trunc i64 %1135 to i32
  %1141 = inttoptr i64 %1137 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = add i32 %1142, %1140
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i999, align 8
  %1145 = icmp ult i32 %1143, %1140
  %1146 = icmp ult i32 %1143, %1142
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %14, align 1
  %1149 = and i32 %1143, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %21, align 1
  %1154 = xor i32 %1142, %1140
  %1155 = xor i32 %1154, %1143
  %1156 = lshr i32 %1155, 4
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  store i8 %1158, i8* %27, align 1
  %1159 = icmp eq i32 %1143, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %30, align 1
  %1161 = lshr i32 %1143, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %33, align 1
  %1163 = lshr i32 %1140, 31
  %1164 = lshr i32 %1142, 31
  %1165 = xor i32 %1161, %1163
  %1166 = xor i32 %1161, %1164
  %1167 = add nuw nsw i32 %1165, %1166
  %1168 = icmp eq i32 %1167, 2
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %39, align 1
  %1170 = add i64 %1138, 6
  store i64 %1170, i64* %3, align 8
  store i32 %1143, i32* %1141, align 4
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -8
  %1173 = load i64, i64* %3, align 8
  %1174 = add i64 %1173, 4
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1172 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RDX.i1040, align 8
  %1177 = add i64 %1171, -36
  %1178 = add i64 %1173, 7
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RAX.i999, align 8
  store i64 %1181, i64* %RDI.i1036, align 8
  %1182 = shl nuw nsw i64 %1181, 2
  %1183 = add nuw nsw i64 %1182, 40
  %1184 = add i64 %1183, %1176
  %1185 = add i64 %1173, 14
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  store i8 0, i8* %14, align 1
  %1188 = and i32 %1187, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1193 = icmp eq i32 %1187, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %30, align 1
  %1195 = lshr i32 %1187, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v46 = select i1 %1193, i64 251, i64 20
  %1197 = add i64 %1173, %.v46
  store i64 %1197, i64* %3, align 8
  br i1 %1193, label %block_.L_477a65, label %block_47797e

block_47797e:                                     ; preds = %block_477944
  %1198 = add i64 %1197, 4
  store i64 %1198, i64* %3, align 8
  %1199 = load i32, i32* %1179, align 4
  %1200 = add i32 %1199, -6
  %1201 = icmp ult i32 %1199, 6
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %14, align 1
  %1203 = and i32 %1200, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %21, align 1
  %1208 = xor i32 %1200, %1199
  %1209 = lshr i32 %1208, 4
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %27, align 1
  %1212 = icmp eq i32 %1200, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %30, align 1
  %1214 = lshr i32 %1200, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %33, align 1
  %1216 = lshr i32 %1199, 31
  %1217 = xor i32 %1214, %1216
  %1218 = add nuw nsw i32 %1217, %1216
  %1219 = icmp eq i32 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %39, align 1
  %.v47 = select i1 %1201, i64 10, i64 113
  %1221 = add i64 %1197, %.v47
  %1222 = add i64 %1221, 5
  store i64 %1222, i64* %3, align 8
  br i1 %1201, label %block_477988, label %block_.L_4779ef

block_477988:                                     ; preds = %block_47797e
  store i64 16, i64* %RDX.i1040, align 8
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX.i999, align 8
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX.i1022, align 8
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI.i1033, align 8
  %1223 = add i64 %1221, 38
  store i64 %1223, i64* %3, align 8
  %1224 = load i32, i32* %1179, align 4
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RDI.i1036, align 8
  %1226 = shl nuw nsw i64 %1225, 5
  store i64 %1226, i64* %1083, align 8
  %1227 = add i64 %1226, ptrtoint (%G__0x711780_type* @G__0x711780 to i64)
  store i64 %1227, i64* %RSI.i1033, align 8
  %1228 = icmp ult i64 %1227, ptrtoint (%G__0x711780_type* @G__0x711780 to i64)
  %1229 = icmp ult i64 %1227, %1226
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %14, align 1
  %1232 = trunc i64 %1227 to i32
  %1233 = and i32 %1232, 248
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %21, align 1
  %1238 = xor i64 %1227, ptrtoint (%G__0x711780_type* @G__0x711780 to i64)
  %1239 = lshr i64 %1238, 4
  %1240 = trunc i64 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %27, align 1
  %1242 = icmp eq i64 %1227, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %30, align 1
  %1244 = lshr i64 %1227, 63
  %1245 = trunc i64 %1244 to i8
  store i8 %1245, i8* %33, align 1
  %1246 = xor i64 %1244, lshr (i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64 63)
  %1247 = add nuw nsw i64 %1246, %1244
  %1248 = icmp eq i64 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %39, align 1
  %1250 = add i64 %1221, 51
  store i64 %1250, i64* %3, align 8
  %1251 = load i32, i32* %1179, align 4
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RDI.i1036, align 8
  %1253 = shl nuw nsw i64 %1252, 5
  store i64 %1253, i64* %1083, align 8
  %1254 = add i64 %1253, ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64)
  store i64 %1254, i64* %RCX.i1022, align 8
  %1255 = icmp ult i64 %1254, ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64)
  %1256 = icmp ult i64 %1254, %1253
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = trunc i64 %1254 to i32
  %1260 = and i32 %1259, 248
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i64 %1254, ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64)
  %1266 = lshr i64 %1265, 4
  %1267 = trunc i64 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = icmp eq i64 %1254, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %30, align 1
  %1271 = lshr i64 %1254, 63
  %1272 = trunc i64 %1271 to i8
  store i8 %1272, i8* %33, align 1
  %1273 = xor i64 %1271, lshr (i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64 63)
  %1274 = add nuw nsw i64 %1273, %1271
  %1275 = icmp eq i64 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %39, align 1
  %1277 = load i64, i64* %RBP.i, align 8
  %1278 = add i64 %1277, -36
  %1279 = add i64 %1221, 64
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RDI.i1036, align 8
  %1283 = shl nuw nsw i64 %1282, 1
  store i64 %1283, i64* %1083, align 8
  %1284 = load i64, i64* %RAX.i999, align 8
  %1285 = add i64 %1283, %1284
  store i64 %1285, i64* %RAX.i999, align 8
  %1286 = icmp ult i64 %1285, %1284
  %1287 = icmp ult i64 %1285, %1283
  %1288 = or i1 %1286, %1287
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %14, align 1
  %1290 = trunc i64 %1285 to i32
  %1291 = and i32 %1290, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i64 %1283, %1284
  %1297 = xor i64 %1296, %1285
  %1298 = lshr i64 %1297, 4
  %1299 = trunc i64 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %27, align 1
  %1301 = icmp eq i64 %1285, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %30, align 1
  %1303 = lshr i64 %1285, 63
  %1304 = trunc i64 %1303 to i8
  store i8 %1304, i8* %33, align 1
  %1305 = lshr i64 %1284, 63
  %1306 = xor i64 %1303, %1305
  %1307 = add nuw nsw i64 %1306, %1303
  %1308 = icmp eq i64 %1307, 2
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %39, align 1
  %1310 = add i64 %1277, -24
  %1311 = add i64 %1221, 77
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %1083, align 8
  %1314 = load i64, i64* %RSI.i1033, align 8
  store i64 %1314, i64* %RDI.i1036, align 8
  %1315 = load i64, i64* %RCX.i1022, align 8
  store i64 %1315, i64* %RSI.i1033, align 8
  store i64 %1285, i64* %RCX.i1022, align 8
  %1316 = add i64 %1221, 1175
  %1317 = add i64 %1221, 91
  %1318 = load i64, i64* %6, align 8
  %1319 = add i64 %1318, -8
  %1320 = inttoptr i64 %1319 to i64*
  store i64 %1317, i64* %1320, align 8
  store i64 %1319, i64* %6, align 8
  store i64 %1316, i64* %3, align 8
  %call2_4779df = tail call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* nonnull %0, i64 %1316, %struct.Memory* %call2_47791a)
  %1321 = load i64, i64* %RAX.i999, align 8
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -28
  %1324 = load i64, i64* %3, align 8
  %1325 = add i64 %1324, 3
  store i64 %1325, i64* %3, align 8
  %1326 = trunc i64 %1321 to i32
  %1327 = inttoptr i64 %1323 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = add i32 %1328, %1326
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RAX.i999, align 8
  %1331 = icmp ult i32 %1329, %1326
  %1332 = icmp ult i32 %1329, %1328
  %1333 = or i1 %1331, %1332
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %14, align 1
  %1335 = and i32 %1329, 255
  %1336 = tail call i32 @llvm.ctpop.i32(i32 %1335)
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %21, align 1
  %1340 = xor i32 %1328, %1326
  %1341 = xor i32 %1340, %1329
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  store i8 %1344, i8* %27, align 1
  %1345 = icmp eq i32 %1329, 0
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %30, align 1
  %1347 = lshr i32 %1329, 31
  %1348 = trunc i32 %1347 to i8
  store i8 %1348, i8* %33, align 1
  %1349 = lshr i32 %1326, 31
  %1350 = lshr i32 %1328, 31
  %1351 = xor i32 %1347, %1349
  %1352 = xor i32 %1347, %1350
  %1353 = add nuw nsw i32 %1351, %1352
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %39, align 1
  %1356 = add i64 %1324, 6
  store i64 %1356, i64* %3, align 8
  store i32 %1329, i32* %1327, align 4
  %1357 = load i64, i64* %3, align 8
  %1358 = add i64 %1357, 118
  store i64 %1358, i64* %3, align 8
  br label %block_.L_477a60

block_.L_4779ef:                                  ; preds = %block_47797e
  store i64 64, i64* %RDX.i1040, align 8
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX.i999, align 8
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX.i1022, align 8
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI.i1033, align 8
  %1359 = add i64 %1221, 38
  store i64 %1359, i64* %3, align 8
  %1360 = load i32, i32* %1179, align 4
  %1361 = add i32 %1360, -6
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RDI.i1036, align 8
  %1363 = shl nuw nsw i64 %1362, 7
  store i64 %1363, i64* %1083, align 8
  %1364 = add i64 %1363, ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64)
  store i64 %1364, i64* %RSI.i1033, align 8
  %1365 = icmp ult i64 %1364, ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64)
  %1366 = icmp ult i64 %1364, %1363
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = trunc i64 %1364 to i32
  %1370 = and i32 %1369, 248
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i64 %1364, ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64)
  %1376 = lshr i64 %1375, 4
  %1377 = trunc i64 %1376 to i8
  %1378 = and i8 %1377, 1
  store i8 %1378, i8* %27, align 1
  %1379 = icmp eq i64 %1364, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %30, align 1
  %1381 = lshr i64 %1364, 63
  %1382 = trunc i64 %1381 to i8
  store i8 %1382, i8* %33, align 1
  %1383 = xor i64 %1381, lshr (i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64 63)
  %1384 = add nuw nsw i64 %1383, %1381
  %1385 = icmp eq i64 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %39, align 1
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -36
  %1389 = add i64 %1221, 56
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = add i32 %1391, -6
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RDI.i1036, align 8
  %1394 = shl nuw nsw i64 %1393, 7
  store i64 %1394, i64* %1083, align 8
  %1395 = load i64, i64* %RCX.i1022, align 8
  %1396 = add i64 %1394, %1395
  store i64 %1396, i64* %RCX.i1022, align 8
  %1397 = icmp ult i64 %1396, %1395
  %1398 = icmp ult i64 %1396, %1394
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = trunc i64 %1396 to i32
  %1402 = and i32 %1401, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %21, align 1
  %1407 = xor i64 %1395, %1396
  %1408 = lshr i64 %1407, 4
  %1409 = trunc i64 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %27, align 1
  %1411 = icmp eq i64 %1396, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %30, align 1
  %1413 = lshr i64 %1396, 63
  %1414 = trunc i64 %1413 to i8
  store i8 %1414, i8* %33, align 1
  %1415 = lshr i64 %1395, 63
  %1416 = xor i64 %1413, %1415
  %1417 = add nuw nsw i64 %1416, %1413
  %1418 = icmp eq i64 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %39, align 1
  %1420 = load i64, i64* %RBP.i, align 8
  %1421 = add i64 %1420, -36
  %1422 = add i64 %1221, 74
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = add i32 %1424, -6
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RDI.i1036, align 8
  %1427 = shl nuw nsw i64 %1426, 1
  store i64 %1427, i64* %1083, align 8
  %1428 = load i64, i64* %RAX.i999, align 8
  %1429 = add i64 %1427, %1428
  store i64 %1429, i64* %RAX.i999, align 8
  %1430 = icmp ult i64 %1429, %1428
  %1431 = icmp ult i64 %1429, %1427
  %1432 = or i1 %1430, %1431
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %14, align 1
  %1434 = trunc i64 %1429 to i32
  %1435 = and i32 %1434, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  %1440 = xor i64 %1427, %1428
  %1441 = xor i64 %1440, %1429
  %1442 = lshr i64 %1441, 4
  %1443 = trunc i64 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %27, align 1
  %1445 = icmp eq i64 %1429, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %30, align 1
  %1447 = lshr i64 %1429, 63
  %1448 = trunc i64 %1447 to i8
  store i8 %1448, i8* %33, align 1
  %1449 = lshr i64 %1428, 63
  %1450 = xor i64 %1447, %1449
  %1451 = add nuw nsw i64 %1450, %1447
  %1452 = icmp eq i64 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %39, align 1
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -24
  %1456 = add i64 %1221, 92
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %1083, align 8
  %1459 = load i64, i64* %RSI.i1033, align 8
  store i64 %1459, i64* %RDI.i1036, align 8
  %1460 = load i64, i64* %RCX.i1022, align 8
  store i64 %1460, i64* %RSI.i1033, align 8
  store i64 %1429, i64* %RCX.i1022, align 8
  %1461 = add i64 %1221, 1072
  %1462 = add i64 %1221, 106
  %1463 = load i64, i64* %6, align 8
  %1464 = add i64 %1463, -8
  %1465 = inttoptr i64 %1464 to i64*
  store i64 %1462, i64* %1465, align 8
  store i64 %1464, i64* %6, align 8
  store i64 %1461, i64* %3, align 8
  %call2_477a55 = tail call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* nonnull %0, i64 %1461, %struct.Memory* %call2_47791a)
  %1466 = load i64, i64* %RAX.i999, align 8
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -28
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, 3
  store i64 %1470, i64* %3, align 8
  %1471 = trunc i64 %1466 to i32
  %1472 = inttoptr i64 %1468 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = add i32 %1473, %1471
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RAX.i999, align 8
  %1476 = icmp ult i32 %1474, %1471
  %1477 = icmp ult i32 %1474, %1473
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %14, align 1
  %1480 = and i32 %1474, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %21, align 1
  %1485 = xor i32 %1473, %1471
  %1486 = xor i32 %1485, %1474
  %1487 = lshr i32 %1486, 4
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  store i8 %1489, i8* %27, align 1
  %1490 = icmp eq i32 %1474, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %30, align 1
  %1492 = lshr i32 %1474, 31
  %1493 = trunc i32 %1492 to i8
  store i8 %1493, i8* %33, align 1
  %1494 = lshr i32 %1471, 31
  %1495 = lshr i32 %1473, 31
  %1496 = xor i32 %1492, %1494
  %1497 = xor i32 %1492, %1495
  %1498 = add nuw nsw i32 %1496, %1497
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %39, align 1
  %1501 = add i64 %1469, 6
  store i64 %1501, i64* %3, align 8
  store i32 %1474, i32* %1472, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_477a60

block_.L_477a60:                                  ; preds = %block_.L_4779ef, %block_477988
  %1502 = phi i64 [ %.pre22, %block_.L_4779ef ], [ %1358, %block_477988 ]
  %1503 = add i64 %1502, 5
  store i64 %1503, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %block_.L_477a65

block_.L_477a65:                                  ; preds = %block_.L_477a60, %block_477944
  %1504 = phi i64 [ %.pre23, %block_.L_477a60 ], [ %1171, %block_477944 ]
  %1505 = phi i64 [ %1503, %block_.L_477a60 ], [ %1197, %block_477944 ]
  %1506 = add i64 %1504, -36
  %1507 = add i64 %1505, 8
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = add i32 %1509, 1
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i999, align 8
  %1512 = icmp eq i32 %1509, -1
  %1513 = icmp eq i32 %1510, 0
  %1514 = or i1 %1512, %1513
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %14, align 1
  %1516 = and i32 %1510, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %21, align 1
  %1521 = xor i32 %1510, %1509
  %1522 = lshr i32 %1521, 4
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  store i8 %1524, i8* %27, align 1
  %1525 = zext i1 %1513 to i8
  store i8 %1525, i8* %30, align 1
  %1526 = lshr i32 %1510, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %33, align 1
  %1528 = lshr i32 %1509, 31
  %1529 = xor i32 %1526, %1528
  %1530 = add nuw nsw i32 %1529, %1526
  %1531 = icmp eq i32 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %39, align 1
  %1533 = add i64 %1505, 14
  store i64 %1533, i64* %3, align 8
  store i32 %1510, i32* %1508, align 4
  %1534 = load i64, i64* %3, align 8
  %1535 = add i64 %1534, -313
  store i64 %1535, i64* %3, align 8
  br label %block_.L_47793a

block_.L_477a78:                                  ; preds = %block_.L_47793a
  %1536 = add i64 %1111, 5
  store i64 %1536, i64* %3, align 8
  br label %block_.L_477a7d

block_.L_477a7d:                                  ; preds = %block_.L_477a78, %block_.L_47789e
  %1537 = phi i64 [ %1060, %block_.L_47789e ], [ %1085, %block_.L_477a78 ]
  %1538 = phi i64 [ %1079, %block_.L_47789e ], [ %1536, %block_.L_477a78 ]
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %3, align 8
  br label %block_.L_477a82

block_.L_477a82:                                  ; preds = %block_477831, %block_.L_477a7d
  %1540 = phi i64 [ %1537, %block_.L_477a7d ], [ %589, %block_477831 ]
  %1541 = phi i64 [ %1539, %block_.L_477a7d ], [ %706, %block_477831 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_47791a, %block_.L_477a7d ], [ %call2_4777fc, %block_477831 ]
  store i64 ptrtoint (%G__0x4c25d9_type* @G__0x4c25d9 to i64), i64* %RDI.i1036, align 8
  %1542 = add i64 %1540, -8
  %1543 = add i64 %1541, 14
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i64*
  %1545 = load i64, i64* %1544, align 8
  store i64 %1545, i64* %RAX.i999, align 8
  %1546 = add i64 %1545, 80
  %1547 = add i64 %1541, 17
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = zext i32 %1549 to i64
  store i64 %1550, i64* %RSI.i1033, align 8
  %1551 = add i64 %1540, -24
  %1552 = add i64 %1541, 21
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i64*
  %1554 = load i64, i64* %1553, align 8
  store i64 %1554, i64* %RDX.i1040, align 8
  %1555 = add i64 %1541, 216094
  %1556 = add i64 %1541, 26
  %1557 = load i64, i64* %6, align 8
  %1558 = add i64 %1557, -8
  %1559 = inttoptr i64 %1558 to i64*
  store i64 %1556, i64* %1559, align 8
  store i64 %1558, i64* %6, align 8
  store i64 %1555, i64* %3, align 8
  %call2_477a97 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1555, %struct.Memory* %MEMORY.8)
  %1560 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c25f8_type* @G__0x4c25f8 to i64), i64* %RDI.i1036, align 8
  %1561 = load i64, i64* %RAX.i999, align 8
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -28
  %1564 = add i64 %1560, 13
  store i64 %1564, i64* %3, align 8
  %1565 = trunc i64 %1561 to i32
  %1566 = inttoptr i64 %1563 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = add i32 %1567, %1565
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RAX.i999, align 8
  %1570 = icmp ult i32 %1568, %1565
  %1571 = icmp ult i32 %1568, %1567
  %1572 = or i1 %1570, %1571
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %14, align 1
  %1574 = and i32 %1568, 255
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %21, align 1
  %1579 = xor i32 %1567, %1565
  %1580 = xor i32 %1579, %1568
  %1581 = lshr i32 %1580, 4
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %27, align 1
  %1584 = icmp eq i32 %1568, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %30, align 1
  %1586 = lshr i32 %1568, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %33, align 1
  %1588 = lshr i32 %1565, 31
  %1589 = lshr i32 %1567, 31
  %1590 = xor i32 %1586, %1588
  %1591 = xor i32 %1586, %1589
  %1592 = add nuw nsw i32 %1590, %1591
  %1593 = icmp eq i32 %1592, 2
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %39, align 1
  %1595 = add i64 %1560, 16
  store i64 %1595, i64* %3, align 8
  store i32 %1568, i32* %1566, align 4
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -8
  %1598 = load i64, i64* %3, align 8
  %1599 = add i64 %1598, 4
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1597 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %RDX.i1040, align 8
  %1602 = add i64 %1601, 84
  %1603 = add i64 %1598, 7
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = zext i32 %1605 to i64
  store i64 %1606, i64* %RSI.i1033, align 8
  %1607 = add i64 %1596, -24
  %1608 = add i64 %1598, 11
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i64*
  %1610 = load i64, i64* %1609, align 8
  store i64 %1610, i64* %RDX.i1040, align 8
  %1611 = add i64 %1598, 216052
  %1612 = add i64 %1598, 16
  %1613 = load i64, i64* %6, align 8
  %1614 = add i64 %1613, -8
  %1615 = inttoptr i64 %1614 to i64*
  store i64 %1612, i64* %1615, align 8
  store i64 %1614, i64* %6, align 8
  store i64 %1611, i64* %3, align 8
  %call2_477ab7 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1611, %struct.Memory* %call2_477a97)
  %1616 = load i64, i64* %RAX.i999, align 8
  %1617 = load i64, i64* %RBP.i, align 8
  %1618 = add i64 %1617, -28
  %1619 = load i64, i64* %3, align 8
  %1620 = add i64 %1619, 3
  store i64 %1620, i64* %3, align 8
  %1621 = trunc i64 %1616 to i32
  %1622 = inttoptr i64 %1618 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, %1621
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RAX.i999, align 8
  %1626 = icmp ult i32 %1624, %1621
  %1627 = icmp ult i32 %1624, %1623
  %1628 = or i1 %1626, %1627
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %14, align 1
  %1630 = and i32 %1624, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %21, align 1
  %1635 = xor i32 %1623, %1621
  %1636 = xor i32 %1635, %1624
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %27, align 1
  %1640 = icmp eq i32 %1624, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %30, align 1
  %1642 = lshr i32 %1624, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %33, align 1
  %1644 = lshr i32 %1621, 31
  %1645 = lshr i32 %1623, 31
  %1646 = xor i32 %1642, %1644
  %1647 = xor i32 %1642, %1645
  %1648 = add nuw nsw i32 %1646, %1647
  %1649 = icmp eq i32 %1648, 2
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %39, align 1
  %1651 = add i64 %1619, 6
  store i64 %1651, i64* %3, align 8
  store i32 %1624, i32* %1622, align 4
  %1652 = load i64, i64* %RBP.i, align 8
  %1653 = add i64 %1652, -8
  %1654 = load i64, i64* %3, align 8
  %1655 = add i64 %1654, 4
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1653 to i64*
  %1657 = load i64, i64* %1656, align 8
  store i64 %1657, i64* %RDX.i1040, align 8
  %1658 = add i64 %1657, 84
  %1659 = add i64 %1654, 8
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  store i8 0, i8* %14, align 1
  %1662 = and i32 %1661, 255
  %1663 = tail call i32 @llvm.ctpop.i32(i32 %1662)
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  store i8 %1666, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1667 = icmp eq i32 %1661, 0
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %30, align 1
  %1669 = lshr i32 %1661, 31
  %1670 = trunc i32 %1669 to i8
  store i8 %1670, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v37 = select i1 %1667, i64 14, i64 51
  %1671 = add i64 %1654, %.v37
  store i64 %1671, i64* %3, align 8
  br i1 %1667, label %block_477ad0, label %block_.L_477af5

block_477ad0:                                     ; preds = %block_.L_477a82
  store i64 ptrtoint (%G__0x4c2610_type* @G__0x4c2610 to i64), i64* %RDI.i1036, align 8
  %1672 = add i64 %1671, 14
  store i64 %1672, i64* %3, align 8
  %1673 = load i64, i64* %1656, align 8
  store i64 %1673, i64* %RAX.i999, align 8
  %1674 = add i64 %1673, 88
  %1675 = add i64 %1671, 17
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RSI.i1033, align 8
  %1679 = add i64 %1652, -24
  %1680 = add i64 %1671, 21
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i64*
  %1682 = load i64, i64* %1681, align 8
  store i64 %1682, i64* %RDX.i1040, align 8
  %1683 = add i64 %1671, 216016
  %1684 = add i64 %1671, 26
  %1685 = load i64, i64* %6, align 8
  %1686 = add i64 %1685, -8
  %1687 = inttoptr i64 %1686 to i64*
  store i64 %1684, i64* %1687, align 8
  store i64 %1686, i64* %6, align 8
  store i64 %1683, i64* %3, align 8
  %call2_477ae5 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1683, %struct.Memory* %call2_477ab7)
  %1688 = load i64, i64* %RAX.i999, align 8
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -28
  %1691 = load i64, i64* %3, align 8
  %1692 = add i64 %1691, 3
  store i64 %1692, i64* %3, align 8
  %1693 = trunc i64 %1688 to i32
  %1694 = inttoptr i64 %1690 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = add i32 %1695, %1693
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RAX.i999, align 8
  %1698 = icmp ult i32 %1696, %1693
  %1699 = icmp ult i32 %1696, %1695
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %14, align 1
  %1702 = and i32 %1696, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %21, align 1
  %1707 = xor i32 %1695, %1693
  %1708 = xor i32 %1707, %1696
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %27, align 1
  %1712 = icmp eq i32 %1696, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %30, align 1
  %1714 = lshr i32 %1696, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %33, align 1
  %1716 = lshr i32 %1693, 31
  %1717 = lshr i32 %1695, 31
  %1718 = xor i32 %1714, %1716
  %1719 = xor i32 %1714, %1717
  %1720 = add nuw nsw i32 %1718, %1719
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %39, align 1
  %1723 = add i64 %1691, 6
  store i64 %1723, i64* %3, align 8
  store i32 %1696, i32* %1694, align 4
  %1724 = load i64, i64* %3, align 8
  %1725 = add i64 %1724, 232
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %block_.L_477bd8

block_.L_477af5:                                  ; preds = %block_.L_477a82
  %1726 = add i64 %1671, 4
  store i64 %1726, i64* %3, align 8
  %1727 = load i64, i64* %1656, align 8
  store i64 %1727, i64* %RAX.i999, align 8
  %1728 = add i64 %1727, 84
  %1729 = add i64 %1671, 8
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = add i32 %1731, -1
  %1733 = icmp eq i32 %1731, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %14, align 1
  %1735 = and i32 %1732, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  %1740 = xor i32 %1732, %1731
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  store i8 %1743, i8* %27, align 1
  %1744 = icmp eq i32 %1732, 0
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %30, align 1
  %1746 = lshr i32 %1732, 31
  %1747 = trunc i32 %1746 to i8
  store i8 %1747, i8* %33, align 1
  %1748 = lshr i32 %1731, 31
  %1749 = xor i32 %1746, %1748
  %1750 = add nuw nsw i32 %1749, %1748
  %1751 = icmp eq i32 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %39, align 1
  %.v38 = select i1 %1744, i64 14, i64 222
  %1753 = add i64 %1671, %.v38
  store i64 %1753, i64* %3, align 8
  br i1 %1744, label %block_477b03, label %block_.L_477bd3

block_477b03:                                     ; preds = %block_.L_477af5
  store i64 ptrtoint (%G__0x4c2637_type* @G__0x4c2637 to i64), i64* %RDI.i1036, align 8
  %1754 = add i64 %1753, 14
  store i64 %1754, i64* %3, align 8
  %1755 = load i64, i64* %1656, align 8
  store i64 %1755, i64* %RAX.i999, align 8
  %1756 = add i64 %1755, 92
  %1757 = add i64 %1753, 17
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RSI.i1033, align 8
  %1761 = add i64 %1652, -24
  %1762 = add i64 %1753, 21
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %RDX.i1040, align 8
  %1765 = add i64 %1753, 217085
  %1766 = add i64 %1753, 26
  %1767 = load i64, i64* %6, align 8
  %1768 = add i64 %1767, -8
  %1769 = inttoptr i64 %1768 to i64*
  store i64 %1766, i64* %1769, align 8
  store i64 %1768, i64* %6, align 8
  store i64 %1765, i64* %3, align 8
  %call2_477b18 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1765, %struct.Memory* %call2_477ab7)
  %1770 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c265d_type* @G__0x4c265d to i64), i64* %RDI.i1036, align 8
  %1771 = load i64, i64* %RAX.i999, align 8
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -28
  %1774 = add i64 %1770, 13
  store i64 %1774, i64* %3, align 8
  %1775 = trunc i64 %1771 to i32
  %1776 = inttoptr i64 %1773 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = add i32 %1777, %1775
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RAX.i999, align 8
  %1780 = icmp ult i32 %1778, %1775
  %1781 = icmp ult i32 %1778, %1777
  %1782 = or i1 %1780, %1781
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %14, align 1
  %1784 = and i32 %1778, 255
  %1785 = tail call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  store i8 %1788, i8* %21, align 1
  %1789 = xor i32 %1777, %1775
  %1790 = xor i32 %1789, %1778
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %27, align 1
  %1794 = icmp eq i32 %1778, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %30, align 1
  %1796 = lshr i32 %1778, 31
  %1797 = trunc i32 %1796 to i8
  store i8 %1797, i8* %33, align 1
  %1798 = lshr i32 %1775, 31
  %1799 = lshr i32 %1777, 31
  %1800 = xor i32 %1796, %1798
  %1801 = xor i32 %1796, %1799
  %1802 = add nuw nsw i32 %1800, %1801
  %1803 = icmp eq i32 %1802, 2
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %39, align 1
  %1805 = add i64 %1770, 16
  store i64 %1805, i64* %3, align 8
  store i32 %1778, i32* %1776, align 4
  %1806 = load i64, i64* %RBP.i, align 8
  %1807 = add i64 %1806, -8
  %1808 = load i64, i64* %3, align 8
  %1809 = add i64 %1808, 4
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1807 to i64*
  %1811 = load i64, i64* %1810, align 8
  store i64 %1811, i64* %RDX.i1040, align 8
  %1812 = add i64 %1811, 96
  %1813 = add i64 %1808, 7
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RSI.i1033, align 8
  %1817 = add i64 %1806, -24
  %1818 = add i64 %1808, 11
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i64*
  %1820 = load i64, i64* %1819, align 8
  store i64 %1820, i64* %RDX.i1040, align 8
  %1821 = add i64 %1808, 216723
  %1822 = add i64 %1808, 16
  %1823 = load i64, i64* %6, align 8
  %1824 = add i64 %1823, -8
  %1825 = inttoptr i64 %1824 to i64*
  store i64 %1822, i64* %1825, align 8
  store i64 %1824, i64* %6, align 8
  store i64 %1821, i64* %3, align 8
  %call2_477b38 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1821, %struct.Memory* %call2_477b18)
  %1826 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2679_type* @G__0x4c2679 to i64), i64* %RDI.i1036, align 8
  %1827 = load i64, i64* %RAX.i999, align 8
  %1828 = load i64, i64* %RBP.i, align 8
  %1829 = add i64 %1828, -28
  %1830 = add i64 %1826, 13
  store i64 %1830, i64* %3, align 8
  %1831 = trunc i64 %1827 to i32
  %1832 = inttoptr i64 %1829 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = add i32 %1833, %1831
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RAX.i999, align 8
  %1836 = icmp ult i32 %1834, %1831
  %1837 = icmp ult i32 %1834, %1833
  %1838 = or i1 %1836, %1837
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %14, align 1
  %1840 = and i32 %1834, 255
  %1841 = tail call i32 @llvm.ctpop.i32(i32 %1840)
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  store i8 %1844, i8* %21, align 1
  %1845 = xor i32 %1833, %1831
  %1846 = xor i32 %1845, %1834
  %1847 = lshr i32 %1846, 4
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  store i8 %1849, i8* %27, align 1
  %1850 = icmp eq i32 %1834, 0
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %30, align 1
  %1852 = lshr i32 %1834, 31
  %1853 = trunc i32 %1852 to i8
  store i8 %1853, i8* %33, align 1
  %1854 = lshr i32 %1831, 31
  %1855 = lshr i32 %1833, 31
  %1856 = xor i32 %1852, %1854
  %1857 = xor i32 %1852, %1855
  %1858 = add nuw nsw i32 %1856, %1857
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %39, align 1
  %1861 = add i64 %1826, 16
  store i64 %1861, i64* %3, align 8
  store i32 %1834, i32* %1832, align 4
  %1862 = load i64, i64* %RBP.i, align 8
  %1863 = add i64 %1862, -8
  %1864 = load i64, i64* %3, align 8
  %1865 = add i64 %1864, 4
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1863 to i64*
  %1867 = load i64, i64* %1866, align 8
  store i64 %1867, i64* %RDX.i1040, align 8
  %1868 = add i64 %1867, 100
  %1869 = add i64 %1864, 7
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = zext i32 %1871 to i64
  store i64 %1872, i64* %RSI.i1033, align 8
  %1873 = add i64 %1862, -24
  %1874 = add i64 %1864, 11
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i64*
  %1876 = load i64, i64* %1875, align 8
  store i64 %1876, i64* %RDX.i1040, align 8
  %1877 = add i64 %1864, 216691
  %1878 = add i64 %1864, 16
  %1879 = load i64, i64* %6, align 8
  %1880 = add i64 %1879, -8
  %1881 = inttoptr i64 %1880 to i64*
  store i64 %1878, i64* %1881, align 8
  store i64 %1880, i64* %6, align 8
  store i64 %1877, i64* %3, align 8
  %call2_477b58 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1877, %struct.Memory* %call2_477b38)
  %1882 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c269d_type* @G__0x4c269d to i64), i64* %RDI.i1036, align 8
  %1883 = load i64, i64* %RAX.i999, align 8
  %1884 = load i64, i64* %RBP.i, align 8
  %1885 = add i64 %1884, -28
  %1886 = add i64 %1882, 13
  store i64 %1886, i64* %3, align 8
  %1887 = trunc i64 %1883 to i32
  %1888 = inttoptr i64 %1885 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = add i32 %1889, %1887
  %1891 = zext i32 %1890 to i64
  store i64 %1891, i64* %RAX.i999, align 8
  %1892 = icmp ult i32 %1890, %1887
  %1893 = icmp ult i32 %1890, %1889
  %1894 = or i1 %1892, %1893
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %14, align 1
  %1896 = and i32 %1890, 255
  %1897 = tail call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  store i8 %1900, i8* %21, align 1
  %1901 = xor i32 %1889, %1887
  %1902 = xor i32 %1901, %1890
  %1903 = lshr i32 %1902, 4
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  store i8 %1905, i8* %27, align 1
  %1906 = icmp eq i32 %1890, 0
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %30, align 1
  %1908 = lshr i32 %1890, 31
  %1909 = trunc i32 %1908 to i8
  store i8 %1909, i8* %33, align 1
  %1910 = lshr i32 %1887, 31
  %1911 = lshr i32 %1889, 31
  %1912 = xor i32 %1908, %1910
  %1913 = xor i32 %1908, %1911
  %1914 = add nuw nsw i32 %1912, %1913
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %39, align 1
  %1917 = add i64 %1882, 16
  store i64 %1917, i64* %3, align 8
  store i32 %1890, i32* %1888, align 4
  %1918 = load i64, i64* %RBP.i, align 8
  %1919 = add i64 %1918, -8
  %1920 = load i64, i64* %3, align 8
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1919 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RDX.i1040, align 8
  %1924 = add i64 %1923, 104
  %1925 = add i64 %1920, 7
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RSI.i1033, align 8
  %1929 = add i64 %1918, -24
  %1930 = add i64 %1920, 11
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RDX.i1040, align 8
  %1933 = add i64 %1920, 215859
  %1934 = add i64 %1920, 16
  %1935 = load i64, i64* %6, align 8
  %1936 = add i64 %1935, -8
  %1937 = inttoptr i64 %1936 to i64*
  store i64 %1934, i64* %1937, align 8
  store i64 %1936, i64* %6, align 8
  store i64 %1933, i64* %3, align 8
  %call2_477b78 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1933, %struct.Memory* %call2_477b58)
  %1938 = load i64, i64* %RAX.i999, align 8
  %1939 = load i64, i64* %RBP.i, align 8
  %1940 = add i64 %1939, -28
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 3
  store i64 %1942, i64* %3, align 8
  %1943 = trunc i64 %1938 to i32
  %1944 = inttoptr i64 %1940 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = add i32 %1945, %1943
  %1947 = zext i32 %1946 to i64
  store i64 %1947, i64* %RAX.i999, align 8
  %1948 = icmp ult i32 %1946, %1943
  %1949 = icmp ult i32 %1946, %1945
  %1950 = or i1 %1948, %1949
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %14, align 1
  %1952 = and i32 %1946, 255
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %21, align 1
  %1957 = xor i32 %1945, %1943
  %1958 = xor i32 %1957, %1946
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %27, align 1
  %1962 = icmp eq i32 %1946, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %30, align 1
  %1964 = lshr i32 %1946, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %33, align 1
  %1966 = lshr i32 %1943, 31
  %1967 = lshr i32 %1945, 31
  %1968 = xor i32 %1964, %1966
  %1969 = xor i32 %1964, %1967
  %1970 = add nuw nsw i32 %1968, %1969
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %39, align 1
  %1973 = add i64 %1941, 6
  store i64 %1973, i64* %3, align 8
  store i32 %1946, i32* %1944, align 4
  %1974 = load i64, i64* %RBP.i, align 8
  %1975 = add i64 %1974, -36
  %1976 = load i64, i64* %3, align 8
  %1977 = add i64 %1976, 7
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1975 to i32*
  store i32 0, i32* %1978, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_477b8a

block_.L_477b8a:                                  ; preds = %block_477b9a, %block_477b03
  %1979 = phi i64 [ %2107, %block_477b9a ], [ %.pre24, %block_477b03 ]
  %1980 = load i64, i64* %RBP.i, align 8
  %1981 = add i64 %1980, -36
  %1982 = add i64 %1979, 3
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RAX.i999, align 8
  %1986 = add i64 %1980, -8
  %1987 = add i64 %1979, 7
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i64*
  %1989 = load i64, i64* %1988, align 8
  store i64 %1989, i64* %RCX.i1022, align 8
  %1990 = add i64 %1989, 104
  %1991 = add i64 %1979, 10
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = sub i32 %1984, %1993
  %1995 = icmp ult i32 %1984, %1993
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %14, align 1
  %1997 = and i32 %1994, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  %2002 = xor i32 %1993, %1984
  %2003 = xor i32 %2002, %1994
  %2004 = lshr i32 %2003, 4
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  store i8 %2006, i8* %27, align 1
  %2007 = icmp eq i32 %1994, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %30, align 1
  %2009 = lshr i32 %1994, 31
  %2010 = trunc i32 %2009 to i8
  store i8 %2010, i8* %33, align 1
  %2011 = lshr i32 %1984, 31
  %2012 = lshr i32 %1993, 31
  %2013 = xor i32 %2012, %2011
  %2014 = xor i32 %2009, %2011
  %2015 = add nuw nsw i32 %2014, %2013
  %2016 = icmp eq i32 %2015, 2
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %39, align 1
  %.v42 = select i1 %1995, i64 16, i64 68
  %2018 = add i64 %1979, %.v42
  store i64 %2018, i64* %3, align 8
  br i1 %1995, label %block_477b9a, label %block_.L_477bce

block_477b9a:                                     ; preds = %block_.L_477b8a
  store i64 ptrtoint (%G__0x4c26c8_type* @G__0x4c26c8 to i64), i64* %RDI.i1036, align 8
  %2019 = add i64 %2018, 14
  store i64 %2019, i64* %3, align 8
  %2020 = load i64, i64* %1988, align 8
  store i64 %2020, i64* %RAX.i999, align 8
  %2021 = add i64 %2018, 17
  store i64 %2021, i64* %3, align 8
  %2022 = load i32, i32* %1983, align 4
  %2023 = zext i32 %2022 to i64
  store i64 %2023, i64* %RCX.i1022, align 8
  store i64 %2023, i64* %RDX.i1040, align 8
  %2024 = shl nuw nsw i64 %2023, 2
  %2025 = add nuw nsw i64 %2024, 108
  %2026 = add i64 %2025, %2020
  %2027 = add i64 %2018, 23
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RSI.i1033, align 8
  %2031 = add i64 %1980, -24
  %2032 = add i64 %2018, 27
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i64*
  %2034 = load i64, i64* %2033, align 8
  store i64 %2034, i64* %RDX.i1040, align 8
  %2035 = add i64 %2018, 216614
  %2036 = add i64 %2018, 32
  %2037 = load i64, i64* %6, align 8
  %2038 = add i64 %2037, -8
  %2039 = inttoptr i64 %2038 to i64*
  store i64 %2036, i64* %2039, align 8
  store i64 %2038, i64* %6, align 8
  store i64 %2035, i64* %3, align 8
  %call2_477bb5 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %2035, %struct.Memory* %call2_477b78)
  %2040 = load i64, i64* %RAX.i999, align 8
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, -28
  %2043 = load i64, i64* %3, align 8
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %3, align 8
  %2045 = trunc i64 %2040 to i32
  %2046 = inttoptr i64 %2042 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = add i32 %2047, %2045
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RAX.i999, align 8
  %2050 = icmp ult i32 %2048, %2045
  %2051 = icmp ult i32 %2048, %2047
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %14, align 1
  %2054 = and i32 %2048, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %21, align 1
  %2059 = xor i32 %2047, %2045
  %2060 = xor i32 %2059, %2048
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %27, align 1
  %2064 = icmp eq i32 %2048, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %30, align 1
  %2066 = lshr i32 %2048, 31
  %2067 = trunc i32 %2066 to i8
  store i8 %2067, i8* %33, align 1
  %2068 = lshr i32 %2045, 31
  %2069 = lshr i32 %2047, 31
  %2070 = xor i32 %2066, %2068
  %2071 = xor i32 %2066, %2069
  %2072 = add nuw nsw i32 %2070, %2071
  %2073 = icmp eq i32 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %39, align 1
  %2075 = add i64 %2043, 6
  store i64 %2075, i64* %3, align 8
  store i32 %2048, i32* %2046, align 4
  %2076 = load i64, i64* %RBP.i, align 8
  %2077 = add i64 %2076, -36
  %2078 = load i64, i64* %3, align 8
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2077 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = add i32 %2081, 1
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RAX.i999, align 8
  %2084 = icmp eq i32 %2081, -1
  %2085 = icmp eq i32 %2082, 0
  %2086 = or i1 %2084, %2085
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %14, align 1
  %2088 = and i32 %2082, 255
  %2089 = tail call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %21, align 1
  %2093 = xor i32 %2082, %2081
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %27, align 1
  %2097 = zext i1 %2085 to i8
  store i8 %2097, i8* %30, align 1
  %2098 = lshr i32 %2082, 31
  %2099 = trunc i32 %2098 to i8
  store i8 %2099, i8* %33, align 1
  %2100 = lshr i32 %2081, 31
  %2101 = xor i32 %2098, %2100
  %2102 = add nuw nsw i32 %2101, %2098
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %39, align 1
  %2105 = add i64 %2078, 9
  store i64 %2105, i64* %3, align 8
  store i32 %2082, i32* %2080, align 4
  %2106 = load i64, i64* %3, align 8
  %2107 = add i64 %2106, -63
  store i64 %2107, i64* %3, align 8
  br label %block_.L_477b8a

block_.L_477bce:                                  ; preds = %block_.L_477b8a
  %2108 = add i64 %2018, 5
  store i64 %2108, i64* %3, align 8
  br label %block_.L_477bd3

block_.L_477bd3:                                  ; preds = %block_.L_477af5, %block_.L_477bce
  %2109 = phi i64 [ %1652, %block_.L_477af5 ], [ %1980, %block_.L_477bce ]
  %2110 = phi i64 [ %1753, %block_.L_477af5 ], [ %2108, %block_.L_477bce ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_477ab7, %block_.L_477af5 ], [ %call2_477b78, %block_.L_477bce ]
  %2111 = add i64 %2110, 5
  store i64 %2111, i64* %3, align 8
  br label %block_.L_477bd8

block_.L_477bd8:                                  ; preds = %block_.L_477bd3, %block_477ad0
  %2112 = phi i64 [ %.pre25, %block_477ad0 ], [ %2109, %block_.L_477bd3 ]
  %storemerge = phi i64 [ %1725, %block_477ad0 ], [ %2111, %block_.L_477bd3 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_477ae5, %block_477ad0 ], [ %MEMORY.10, %block_.L_477bd3 ]
  store i64 ptrtoint (%G__0x4c26e2_type* @G__0x4c26e2 to i64), i64* %RDI.i1036, align 8
  %2113 = add i64 %2112, -8
  %2114 = add i64 %storemerge, 14
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i64*
  %2116 = load i64, i64* %2115, align 8
  store i64 %2116, i64* %RAX.i999, align 8
  %2117 = add i64 %2116, 1132
  %2118 = add i64 %storemerge, 20
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i32*
  %2120 = load i32, i32* %2119, align 4
  %2121 = zext i32 %2120 to i64
  store i64 %2121, i64* %RSI.i1033, align 8
  %2122 = add i64 %2112, -24
  %2123 = add i64 %storemerge, 24
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %RDX.i1040, align 8
  %2126 = add i64 %storemerge, 215752
  %2127 = add i64 %storemerge, 29
  %2128 = load i64, i64* %6, align 8
  %2129 = add i64 %2128, -8
  %2130 = inttoptr i64 %2129 to i64*
  store i64 %2127, i64* %2130, align 8
  store i64 %2129, i64* %6, align 8
  store i64 %2126, i64* %3, align 8
  %call2_477bf0 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2126, %struct.Memory* %MEMORY.11)
  %2131 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c26f6_type* @G__0x4c26f6 to i64), i64* %RDI.i1036, align 8
  %2132 = load i64, i64* %RAX.i999, align 8
  %2133 = load i64, i64* %RBP.i, align 8
  %2134 = add i64 %2133, -28
  %2135 = add i64 %2131, 13
  store i64 %2135, i64* %3, align 8
  %2136 = trunc i64 %2132 to i32
  %2137 = inttoptr i64 %2134 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = add i32 %2138, %2136
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RAX.i999, align 8
  %2141 = icmp ult i32 %2139, %2136
  %2142 = icmp ult i32 %2139, %2138
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %14, align 1
  %2145 = and i32 %2139, 255
  %2146 = tail call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  store i8 %2149, i8* %21, align 1
  %2150 = xor i32 %2138, %2136
  %2151 = xor i32 %2150, %2139
  %2152 = lshr i32 %2151, 4
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  store i8 %2154, i8* %27, align 1
  %2155 = icmp eq i32 %2139, 0
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %30, align 1
  %2157 = lshr i32 %2139, 31
  %2158 = trunc i32 %2157 to i8
  store i8 %2158, i8* %33, align 1
  %2159 = lshr i32 %2136, 31
  %2160 = lshr i32 %2138, 31
  %2161 = xor i32 %2157, %2159
  %2162 = xor i32 %2157, %2160
  %2163 = add nuw nsw i32 %2161, %2162
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %39, align 1
  %2166 = add i64 %2131, 16
  store i64 %2166, i64* %3, align 8
  store i32 %2139, i32* %2137, align 4
  %2167 = load i64, i64* %RBP.i, align 8
  %2168 = add i64 %2167, -8
  %2169 = load i64, i64* %3, align 8
  %2170 = add i64 %2169, 4
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2168 to i64*
  %2172 = load i64, i64* %2171, align 8
  store i64 %2172, i64* %RDX.i1040, align 8
  %2173 = add i64 %2172, 1136
  %2174 = add i64 %2169, 10
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RSI.i1033, align 8
  %2178 = add i64 %2167, -24
  %2179 = add i64 %2169, 14
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i64*
  %2181 = load i64, i64* %2180, align 8
  store i64 %2181, i64* %RDX.i1040, align 8
  %2182 = add i64 %2169, 216827
  %2183 = add i64 %2169, 19
  %2184 = load i64, i64* %6, align 8
  %2185 = add i64 %2184, -8
  %2186 = inttoptr i64 %2185 to i64*
  store i64 %2183, i64* %2186, align 8
  store i64 %2185, i64* %6, align 8
  store i64 %2182, i64* %3, align 8
  %call2_477c13 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2182, %struct.Memory* %call2_477bf0)
  %2187 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2720_type* @G__0x4c2720 to i64), i64* %RDI.i1036, align 8
  %2188 = load i64, i64* %RAX.i999, align 8
  %2189 = load i64, i64* %RBP.i, align 8
  %2190 = add i64 %2189, -28
  %2191 = add i64 %2187, 13
  store i64 %2191, i64* %3, align 8
  %2192 = trunc i64 %2188 to i32
  %2193 = inttoptr i64 %2190 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = add i32 %2194, %2192
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RAX.i999, align 8
  %2197 = icmp ult i32 %2195, %2192
  %2198 = icmp ult i32 %2195, %2194
  %2199 = or i1 %2197, %2198
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %14, align 1
  %2201 = and i32 %2195, 255
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2201)
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  store i8 %2205, i8* %21, align 1
  %2206 = xor i32 %2194, %2192
  %2207 = xor i32 %2206, %2195
  %2208 = lshr i32 %2207, 4
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  store i8 %2210, i8* %27, align 1
  %2211 = icmp eq i32 %2195, 0
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %30, align 1
  %2213 = lshr i32 %2195, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %33, align 1
  %2215 = lshr i32 %2192, 31
  %2216 = lshr i32 %2194, 31
  %2217 = xor i32 %2213, %2215
  %2218 = xor i32 %2213, %2216
  %2219 = add nuw nsw i32 %2217, %2218
  %2220 = icmp eq i32 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %39, align 1
  %2222 = add i64 %2187, 16
  store i64 %2222, i64* %3, align 8
  store i32 %2195, i32* %2193, align 4
  %2223 = load i64, i64* %RBP.i, align 8
  %2224 = add i64 %2223, -8
  %2225 = load i64, i64* %3, align 8
  %2226 = add i64 %2225, 4
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2224 to i64*
  %2228 = load i64, i64* %2227, align 8
  store i64 %2228, i64* %RDX.i1040, align 8
  %2229 = add i64 %2228, 1140
  %2230 = add i64 %2225, 10
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RSI.i1033, align 8
  %2234 = add i64 %2223, -24
  %2235 = add i64 %2225, 14
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i64*
  %2237 = load i64, i64* %2236, align 8
  store i64 %2237, i64* %RDX.i1040, align 8
  %2238 = add i64 %2225, 215672
  %2239 = add i64 %2225, 19
  %2240 = load i64, i64* %6, align 8
  %2241 = add i64 %2240, -8
  %2242 = inttoptr i64 %2241 to i64*
  store i64 %2239, i64* %2242, align 8
  store i64 %2241, i64* %6, align 8
  store i64 %2238, i64* %3, align 8
  %call2_477c36 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2238, %struct.Memory* %call2_477c13)
  %2243 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c273d_type* @G__0x4c273d to i64), i64* %RDI.i1036, align 8
  %2244 = load i64, i64* %RAX.i999, align 8
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -28
  %2247 = add i64 %2243, 13
  store i64 %2247, i64* %3, align 8
  %2248 = trunc i64 %2244 to i32
  %2249 = inttoptr i64 %2246 to i32*
  %2250 = load i32, i32* %2249, align 4
  %2251 = add i32 %2250, %2248
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RAX.i999, align 8
  %2253 = icmp ult i32 %2251, %2248
  %2254 = icmp ult i32 %2251, %2250
  %2255 = or i1 %2253, %2254
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %14, align 1
  %2257 = and i32 %2251, 255
  %2258 = tail call i32 @llvm.ctpop.i32(i32 %2257)
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  %2261 = xor i8 %2260, 1
  store i8 %2261, i8* %21, align 1
  %2262 = xor i32 %2250, %2248
  %2263 = xor i32 %2262, %2251
  %2264 = lshr i32 %2263, 4
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  store i8 %2266, i8* %27, align 1
  %2267 = icmp eq i32 %2251, 0
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %30, align 1
  %2269 = lshr i32 %2251, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %33, align 1
  %2271 = lshr i32 %2248, 31
  %2272 = lshr i32 %2250, 31
  %2273 = xor i32 %2269, %2271
  %2274 = xor i32 %2269, %2272
  %2275 = add nuw nsw i32 %2273, %2274
  %2276 = icmp eq i32 %2275, 2
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %39, align 1
  %2278 = add i64 %2243, 16
  store i64 %2278, i64* %3, align 8
  store i32 %2251, i32* %2249, align 4
  %2279 = load i64, i64* %RBP.i, align 8
  %2280 = add i64 %2279, -8
  %2281 = load i64, i64* %3, align 8
  %2282 = add i64 %2281, 4
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2280 to i64*
  %2284 = load i64, i64* %2283, align 8
  store i64 %2284, i64* %RDX.i1040, align 8
  %2285 = add i64 %2284, 1144
  %2286 = add i64 %2281, 10
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RSI.i1033, align 8
  %2290 = add i64 %2279, -24
  %2291 = add i64 %2281, 14
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i64*
  %2293 = load i64, i64* %2292, align 8
  store i64 %2293, i64* %RDX.i1040, align 8
  %2294 = add i64 %2281, 215637
  %2295 = add i64 %2281, 19
  %2296 = load i64, i64* %6, align 8
  %2297 = add i64 %2296, -8
  %2298 = inttoptr i64 %2297 to i64*
  store i64 %2295, i64* %2298, align 8
  store i64 %2297, i64* %6, align 8
  store i64 %2294, i64* %3, align 8
  %call2_477c59 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2294, %struct.Memory* %call2_477c36)
  %2299 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2761_type* @G__0x4c2761 to i64), i64* %RDI.i1036, align 8
  %2300 = load i64, i64* %RAX.i999, align 8
  %2301 = load i64, i64* %RBP.i, align 8
  %2302 = add i64 %2301, -28
  %2303 = add i64 %2299, 13
  store i64 %2303, i64* %3, align 8
  %2304 = trunc i64 %2300 to i32
  %2305 = inttoptr i64 %2302 to i32*
  %2306 = load i32, i32* %2305, align 4
  %2307 = add i32 %2306, %2304
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RAX.i999, align 8
  %2309 = icmp ult i32 %2307, %2304
  %2310 = icmp ult i32 %2307, %2306
  %2311 = or i1 %2309, %2310
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %14, align 1
  %2313 = and i32 %2307, 255
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %21, align 1
  %2318 = xor i32 %2306, %2304
  %2319 = xor i32 %2318, %2307
  %2320 = lshr i32 %2319, 4
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  store i8 %2322, i8* %27, align 1
  %2323 = icmp eq i32 %2307, 0
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %30, align 1
  %2325 = lshr i32 %2307, 31
  %2326 = trunc i32 %2325 to i8
  store i8 %2326, i8* %33, align 1
  %2327 = lshr i32 %2304, 31
  %2328 = lshr i32 %2306, 31
  %2329 = xor i32 %2325, %2327
  %2330 = xor i32 %2325, %2328
  %2331 = add nuw nsw i32 %2329, %2330
  %2332 = icmp eq i32 %2331, 2
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %39, align 1
  %2334 = add i64 %2299, 16
  store i64 %2334, i64* %3, align 8
  store i32 %2307, i32* %2305, align 4
  %2335 = load i64, i64* %RBP.i, align 8
  %2336 = add i64 %2335, -8
  %2337 = load i64, i64* %3, align 8
  %2338 = add i64 %2337, 4
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2336 to i64*
  %2340 = load i64, i64* %2339, align 8
  store i64 %2340, i64* %RDX.i1040, align 8
  %2341 = add i64 %2340, 1148
  %2342 = add i64 %2337, 10
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RSI.i1033, align 8
  %2346 = add i64 %2335, -24
  %2347 = add i64 %2337, 14
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i64*
  %2349 = load i64, i64* %2348, align 8
  store i64 %2349, i64* %RDX.i1040, align 8
  %2350 = add i64 %2337, 216722
  %2351 = add i64 %2337, 19
  %2352 = load i64, i64* %6, align 8
  %2353 = add i64 %2352, -8
  %2354 = inttoptr i64 %2353 to i64*
  store i64 %2351, i64* %2354, align 8
  store i64 %2353, i64* %6, align 8
  store i64 %2350, i64* %3, align 8
  %call2_477c7c = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2350, %struct.Memory* %call2_477c59)
  %2355 = load i64, i64* %RAX.i999, align 8
  %2356 = load i64, i64* %RBP.i, align 8
  %2357 = add i64 %2356, -28
  %2358 = load i64, i64* %3, align 8
  %2359 = add i64 %2358, 3
  store i64 %2359, i64* %3, align 8
  %2360 = trunc i64 %2355 to i32
  %2361 = inttoptr i64 %2357 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = add i32 %2362, %2360
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RAX.i999, align 8
  %2365 = icmp ult i32 %2363, %2360
  %2366 = icmp ult i32 %2363, %2362
  %2367 = or i1 %2365, %2366
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %14, align 1
  %2369 = and i32 %2363, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %21, align 1
  %2374 = xor i32 %2362, %2360
  %2375 = xor i32 %2374, %2363
  %2376 = lshr i32 %2375, 4
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  store i8 %2378, i8* %27, align 1
  %2379 = icmp eq i32 %2363, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %30, align 1
  %2381 = lshr i32 %2363, 31
  %2382 = trunc i32 %2381 to i8
  store i8 %2382, i8* %33, align 1
  %2383 = lshr i32 %2360, 31
  %2384 = lshr i32 %2362, 31
  %2385 = xor i32 %2381, %2383
  %2386 = xor i32 %2381, %2384
  %2387 = add nuw nsw i32 %2385, %2386
  %2388 = icmp eq i32 %2387, 2
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %39, align 1
  %2390 = add i64 %2358, 6
  store i64 %2390, i64* %3, align 8
  store i32 %2363, i32* %2361, align 4
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -8
  %2393 = load i64, i64* %3, align 8
  %2394 = add i64 %2393, 4
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2392 to i64*
  %2396 = load i64, i64* %2395, align 8
  store i64 %2396, i64* %RDX.i1040, align 8
  %2397 = add i64 %2396, 1148
  %2398 = add i64 %2393, 11
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  store i8 0, i8* %14, align 1
  %2401 = and i32 %2400, 255
  %2402 = tail call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  store i8 %2405, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2406 = icmp eq i32 %2400, 0
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %30, align 1
  %2408 = lshr i32 %2400, 31
  %2409 = trunc i32 %2408 to i8
  store i8 %2409, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v39 = select i1 %2406, i64 17, i64 52
  %2410 = add i64 %2393, %.v39
  store i64 %2410, i64* %3, align 8
  br i1 %2406, label %block_477c98, label %block_.L_477cbb

block_477c98:                                     ; preds = %block_.L_477bd8
  store i64 ptrtoint (%G__0x4c277a_type* @G__0x4c277a to i64), i64* %RDI.i1036, align 8
  %2411 = add i64 %2410, 14
  store i64 %2411, i64* %3, align 8
  %2412 = load i64, i64* %2395, align 8
  store i64 %2412, i64* %RAX.i999, align 8
  %2413 = add i64 %2412, 1152
  %2414 = add i64 %2410, 20
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RSI.i1033, align 8
  %2418 = add i64 %2391, -24
  %2419 = add i64 %2410, 24
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %RDX.i1040, align 8
  %2422 = add i64 %2410, 216680
  %2423 = add i64 %2410, 29
  %2424 = load i64, i64* %6, align 8
  %2425 = add i64 %2424, -8
  %2426 = inttoptr i64 %2425 to i64*
  store i64 %2423, i64* %2426, align 8
  store i64 %2425, i64* %6, align 8
  store i64 %2422, i64* %3, align 8
  %call2_477cb0 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2422, %struct.Memory* %call2_477c7c)
  %2427 = load i64, i64* %RAX.i999, align 8
  %2428 = load i64, i64* %RBP.i, align 8
  %2429 = add i64 %2428, -28
  %2430 = load i64, i64* %3, align 8
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %3, align 8
  %2432 = trunc i64 %2427 to i32
  %2433 = inttoptr i64 %2429 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = add i32 %2434, %2432
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RAX.i999, align 8
  %2437 = icmp ult i32 %2435, %2432
  %2438 = icmp ult i32 %2435, %2434
  %2439 = or i1 %2437, %2438
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %14, align 1
  %2441 = and i32 %2435, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %21, align 1
  %2446 = xor i32 %2434, %2432
  %2447 = xor i32 %2446, %2435
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %27, align 1
  %2451 = icmp eq i32 %2435, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %30, align 1
  %2453 = lshr i32 %2435, 31
  %2454 = trunc i32 %2453 to i8
  store i8 %2454, i8* %33, align 1
  %2455 = lshr i32 %2432, 31
  %2456 = lshr i32 %2434, 31
  %2457 = xor i32 %2453, %2455
  %2458 = xor i32 %2453, %2456
  %2459 = add nuw nsw i32 %2457, %2458
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %39, align 1
  %2462 = add i64 %2430, 6
  store i64 %2462, i64* %3, align 8
  store i32 %2435, i32* %2433, align 4
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_477cbb

block_.L_477cbb:                                  ; preds = %block_.L_477bd8, %block_477c98
  %2463 = phi i64 [ %2391, %block_.L_477bd8 ], [ %.pre27, %block_477c98 ]
  %2464 = phi i64 [ %2410, %block_.L_477bd8 ], [ %.pre26, %block_477c98 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_477c7c, %block_.L_477bd8 ], [ %call2_477cb0, %block_477c98 ]
  store i64 ptrtoint (%G__0x4c279c_type* @G__0x4c279c to i64), i64* %RDI.i1036, align 8
  %2465 = add i64 %2463, -8
  %2466 = add i64 %2464, 14
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i64*
  %2468 = load i64, i64* %2467, align 8
  store i64 %2468, i64* %RAX.i999, align 8
  %2469 = add i64 %2468, 1156
  %2470 = add i64 %2464, 20
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i32*
  %2472 = load i32, i32* %2471, align 4
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RSI.i1033, align 8
  %2474 = add i64 %2463, -24
  %2475 = add i64 %2464, 24
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i64*
  %2477 = load i64, i64* %2476, align 8
  store i64 %2477, i64* %RDX.i1040, align 8
  %2478 = add i64 %2464, 216645
  %2479 = add i64 %2464, 29
  %2480 = load i64, i64* %6, align 8
  %2481 = add i64 %2480, -8
  %2482 = inttoptr i64 %2481 to i64*
  store i64 %2479, i64* %2482, align 8
  store i64 %2481, i64* %6, align 8
  store i64 %2478, i64* %3, align 8
  %call2_477cd3 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2478, %struct.Memory* %MEMORY.12)
  %2483 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c27bb_type* @G__0x4c27bb to i64), i64* %RDI.i1036, align 8
  %2484 = load i64, i64* %RAX.i999, align 8
  %2485 = load i64, i64* %RBP.i, align 8
  %2486 = add i64 %2485, -28
  %2487 = add i64 %2483, 13
  store i64 %2487, i64* %3, align 8
  %2488 = trunc i64 %2484 to i32
  %2489 = inttoptr i64 %2486 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = add i32 %2490, %2488
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RAX.i999, align 8
  %2493 = icmp ult i32 %2491, %2488
  %2494 = icmp ult i32 %2491, %2490
  %2495 = or i1 %2493, %2494
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %14, align 1
  %2497 = and i32 %2491, 255
  %2498 = tail call i32 @llvm.ctpop.i32(i32 %2497)
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = xor i8 %2500, 1
  store i8 %2501, i8* %21, align 1
  %2502 = xor i32 %2490, %2488
  %2503 = xor i32 %2502, %2491
  %2504 = lshr i32 %2503, 4
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  store i8 %2506, i8* %27, align 1
  %2507 = icmp eq i32 %2491, 0
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %30, align 1
  %2509 = lshr i32 %2491, 31
  %2510 = trunc i32 %2509 to i8
  store i8 %2510, i8* %33, align 1
  %2511 = lshr i32 %2488, 31
  %2512 = lshr i32 %2490, 31
  %2513 = xor i32 %2509, %2511
  %2514 = xor i32 %2509, %2512
  %2515 = add nuw nsw i32 %2513, %2514
  %2516 = icmp eq i32 %2515, 2
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %39, align 1
  %2518 = add i64 %2483, 16
  store i64 %2518, i64* %3, align 8
  store i32 %2491, i32* %2489, align 4
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -8
  %2521 = load i64, i64* %3, align 8
  %2522 = add i64 %2521, 4
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2520 to i64*
  %2524 = load i64, i64* %2523, align 8
  store i64 %2524, i64* %RDX.i1040, align 8
  %2525 = add i64 %2524, 1160
  %2526 = add i64 %2521, 10
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RSI.i1033, align 8
  %2530 = add i64 %2519, -24
  %2531 = add i64 %2521, 14
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i64*
  %2533 = load i64, i64* %2532, align 8
  store i64 %2533, i64* %RDX.i1040, align 8
  %2534 = add i64 %2521, 216600
  %2535 = add i64 %2521, 19
  %2536 = load i64, i64* %6, align 8
  %2537 = add i64 %2536, -8
  %2538 = inttoptr i64 %2537 to i64*
  store i64 %2535, i64* %2538, align 8
  store i64 %2537, i64* %6, align 8
  store i64 %2534, i64* %3, align 8
  %call2_477cf6 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2534, %struct.Memory* %call2_477cd3)
  %2539 = load i64, i64* %RAX.i999, align 8
  %2540 = load i64, i64* %RBP.i, align 8
  %2541 = add i64 %2540, -28
  %2542 = load i64, i64* %3, align 8
  %2543 = add i64 %2542, 3
  store i64 %2543, i64* %3, align 8
  %2544 = trunc i64 %2539 to i32
  %2545 = inttoptr i64 %2541 to i32*
  %2546 = load i32, i32* %2545, align 4
  %2547 = add i32 %2546, %2544
  %2548 = zext i32 %2547 to i64
  store i64 %2548, i64* %RAX.i999, align 8
  %2549 = icmp ult i32 %2547, %2544
  %2550 = icmp ult i32 %2547, %2546
  %2551 = or i1 %2549, %2550
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %14, align 1
  %2553 = and i32 %2547, 255
  %2554 = tail call i32 @llvm.ctpop.i32(i32 %2553)
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  %2557 = xor i8 %2556, 1
  store i8 %2557, i8* %21, align 1
  %2558 = xor i32 %2546, %2544
  %2559 = xor i32 %2558, %2547
  %2560 = lshr i32 %2559, 4
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  store i8 %2562, i8* %27, align 1
  %2563 = icmp eq i32 %2547, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %30, align 1
  %2565 = lshr i32 %2547, 31
  %2566 = trunc i32 %2565 to i8
  store i8 %2566, i8* %33, align 1
  %2567 = lshr i32 %2544, 31
  %2568 = lshr i32 %2546, 31
  %2569 = xor i32 %2565, %2567
  %2570 = xor i32 %2565, %2568
  %2571 = add nuw nsw i32 %2569, %2570
  %2572 = icmp eq i32 %2571, 2
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %39, align 1
  %2574 = add i64 %2542, 6
  store i64 %2574, i64* %3, align 8
  store i32 %2547, i32* %2545, align 4
  %2575 = load i64, i64* %RBP.i, align 8
  %2576 = add i64 %2575, -8
  %2577 = load i64, i64* %3, align 8
  %2578 = add i64 %2577, 4
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2576 to i64*
  %2580 = load i64, i64* %2579, align 8
  store i64 %2580, i64* %RDX.i1040, align 8
  %2581 = add i64 %2580, 1160
  %2582 = add i64 %2577, 11
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i32*
  %2584 = load i32, i32* %2583, align 4
  store i8 0, i8* %14, align 1
  %2585 = and i32 %2584, 255
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2590 = icmp eq i32 %2584, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %30, align 1
  %2592 = lshr i32 %2584, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v40 = select i1 %2590, i64 157, i64 17
  %2594 = add i64 %2577, %.v40
  store i64 %2594, i64* %3, align 8
  br i1 %2590, label %block_.L_477d9e, label %block_477d12

block_477d12:                                     ; preds = %block_.L_477cbb
  store i64 ptrtoint (%G__0x4c27d4_type* @G__0x4c27d4 to i64), i64* %RDI.i1036, align 8
  %2595 = add i64 %2594, 14
  store i64 %2595, i64* %3, align 8
  %2596 = load i64, i64* %2579, align 8
  store i64 %2596, i64* %RAX.i999, align 8
  %2597 = add i64 %2596, 1164
  %2598 = add i64 %2594, 20
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i32*
  %2600 = load i32, i32* %2599, align 4
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RSI.i1033, align 8
  %2602 = add i64 %2575, -24
  %2603 = add i64 %2594, 24
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i64*
  %2605 = load i64, i64* %2604, align 8
  store i64 %2605, i64* %RDX.i1040, align 8
  %2606 = add i64 %2594, 215438
  %2607 = add i64 %2594, 29
  %2608 = load i64, i64* %6, align 8
  %2609 = add i64 %2608, -8
  %2610 = inttoptr i64 %2609 to i64*
  store i64 %2607, i64* %2610, align 8
  store i64 %2609, i64* %6, align 8
  store i64 %2606, i64* %3, align 8
  %call2_477d2a = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2606, %struct.Memory* %call2_477cf6)
  %2611 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c27f9_type* @G__0x4c27f9 to i64), i64* %RDI.i1036, align 8
  %2612 = load i64, i64* %RAX.i999, align 8
  %2613 = load i64, i64* %RBP.i, align 8
  %2614 = add i64 %2613, -28
  %2615 = add i64 %2611, 13
  store i64 %2615, i64* %3, align 8
  %2616 = trunc i64 %2612 to i32
  %2617 = inttoptr i64 %2614 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = add i32 %2618, %2616
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RAX.i999, align 8
  %2621 = icmp ult i32 %2619, %2616
  %2622 = icmp ult i32 %2619, %2618
  %2623 = or i1 %2621, %2622
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %14, align 1
  %2625 = and i32 %2619, 255
  %2626 = tail call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  store i8 %2629, i8* %21, align 1
  %2630 = xor i32 %2618, %2616
  %2631 = xor i32 %2630, %2619
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %27, align 1
  %2635 = icmp eq i32 %2619, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %30, align 1
  %2637 = lshr i32 %2619, 31
  %2638 = trunc i32 %2637 to i8
  store i8 %2638, i8* %33, align 1
  %2639 = lshr i32 %2616, 31
  %2640 = lshr i32 %2618, 31
  %2641 = xor i32 %2637, %2639
  %2642 = xor i32 %2637, %2640
  %2643 = add nuw nsw i32 %2641, %2642
  %2644 = icmp eq i32 %2643, 2
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %39, align 1
  %2646 = add i64 %2611, 16
  store i64 %2646, i64* %3, align 8
  store i32 %2619, i32* %2617, align 4
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -8
  %2649 = load i64, i64* %3, align 8
  %2650 = add i64 %2649, 4
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2648 to i64*
  %2652 = load i64, i64* %2651, align 8
  store i64 %2652, i64* %RDX.i1040, align 8
  %2653 = add i64 %2652, 1168
  %2654 = add i64 %2649, 10
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  %2656 = load i32, i32* %2655, align 4
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RSI.i1033, align 8
  %2658 = add i64 %2647, -24
  %2659 = add i64 %2649, 14
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i64*
  %2661 = load i64, i64* %2660, align 8
  store i64 %2661, i64* %RDX.i1040, align 8
  %2662 = add i64 %2649, 215393
  %2663 = add i64 %2649, 19
  %2664 = load i64, i64* %6, align 8
  %2665 = add i64 %2664, -8
  %2666 = inttoptr i64 %2665 to i64*
  store i64 %2663, i64* %2666, align 8
  store i64 %2665, i64* %6, align 8
  store i64 %2662, i64* %3, align 8
  %call2_477d4d = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2662, %struct.Memory* %call2_477d2a)
  %2667 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c281f_type* @G__0x4c281f to i64), i64* %RDI.i1036, align 8
  %2668 = load i64, i64* %RAX.i999, align 8
  %2669 = load i64, i64* %RBP.i, align 8
  %2670 = add i64 %2669, -28
  %2671 = add i64 %2667, 13
  store i64 %2671, i64* %3, align 8
  %2672 = trunc i64 %2668 to i32
  %2673 = inttoptr i64 %2670 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = add i32 %2674, %2672
  %2676 = zext i32 %2675 to i64
  store i64 %2676, i64* %RAX.i999, align 8
  %2677 = icmp ult i32 %2675, %2672
  %2678 = icmp ult i32 %2675, %2674
  %2679 = or i1 %2677, %2678
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %14, align 1
  %2681 = and i32 %2675, 255
  %2682 = tail call i32 @llvm.ctpop.i32(i32 %2681)
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = xor i8 %2684, 1
  store i8 %2685, i8* %21, align 1
  %2686 = xor i32 %2674, %2672
  %2687 = xor i32 %2686, %2675
  %2688 = lshr i32 %2687, 4
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  store i8 %2690, i8* %27, align 1
  %2691 = icmp eq i32 %2675, 0
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %30, align 1
  %2693 = lshr i32 %2675, 31
  %2694 = trunc i32 %2693 to i8
  store i8 %2694, i8* %33, align 1
  %2695 = lshr i32 %2672, 31
  %2696 = lshr i32 %2674, 31
  %2697 = xor i32 %2693, %2695
  %2698 = xor i32 %2693, %2696
  %2699 = add nuw nsw i32 %2697, %2698
  %2700 = icmp eq i32 %2699, 2
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %39, align 1
  %2702 = add i64 %2667, 16
  store i64 %2702, i64* %3, align 8
  store i32 %2675, i32* %2673, align 4
  %2703 = load i64, i64* %RBP.i, align 8
  %2704 = add i64 %2703, -8
  %2705 = load i64, i64* %3, align 8
  %2706 = add i64 %2705, 4
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2704 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RDX.i1040, align 8
  %2709 = add i64 %2708, 1172
  %2710 = add i64 %2705, 10
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RSI.i1033, align 8
  %2714 = add i64 %2703, -24
  %2715 = add i64 %2705, 14
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i64*
  %2717 = load i64, i64* %2716, align 8
  store i64 %2717, i64* %RDX.i1040, align 8
  %2718 = add i64 %2705, 215358
  %2719 = add i64 %2705, 19
  %2720 = load i64, i64* %6, align 8
  %2721 = add i64 %2720, -8
  %2722 = inttoptr i64 %2721 to i64*
  store i64 %2719, i64* %2722, align 8
  store i64 %2721, i64* %6, align 8
  store i64 %2718, i64* %3, align 8
  %call2_477d70 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2718, %struct.Memory* %call2_477d4d)
  %2723 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c2843_type* @G__0x4c2843 to i64), i64* %RDI.i1036, align 8
  %2724 = load i64, i64* %RAX.i999, align 8
  %2725 = load i64, i64* %RBP.i, align 8
  %2726 = add i64 %2725, -28
  %2727 = add i64 %2723, 13
  store i64 %2727, i64* %3, align 8
  %2728 = trunc i64 %2724 to i32
  %2729 = inttoptr i64 %2726 to i32*
  %2730 = load i32, i32* %2729, align 4
  %2731 = add i32 %2730, %2728
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RAX.i999, align 8
  %2733 = icmp ult i32 %2731, %2728
  %2734 = icmp ult i32 %2731, %2730
  %2735 = or i1 %2733, %2734
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %14, align 1
  %2737 = and i32 %2731, 255
  %2738 = tail call i32 @llvm.ctpop.i32(i32 %2737)
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  store i8 %2741, i8* %21, align 1
  %2742 = xor i32 %2730, %2728
  %2743 = xor i32 %2742, %2731
  %2744 = lshr i32 %2743, 4
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  store i8 %2746, i8* %27, align 1
  %2747 = icmp eq i32 %2731, 0
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %30, align 1
  %2749 = lshr i32 %2731, 31
  %2750 = trunc i32 %2749 to i8
  store i8 %2750, i8* %33, align 1
  %2751 = lshr i32 %2728, 31
  %2752 = lshr i32 %2730, 31
  %2753 = xor i32 %2749, %2751
  %2754 = xor i32 %2749, %2752
  %2755 = add nuw nsw i32 %2753, %2754
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %39, align 1
  %2758 = add i64 %2723, 16
  store i64 %2758, i64* %3, align 8
  store i32 %2731, i32* %2729, align 4
  %2759 = load i64, i64* %RBP.i, align 8
  %2760 = add i64 %2759, -8
  %2761 = load i64, i64* %3, align 8
  %2762 = add i64 %2761, 4
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2760 to i64*
  %2764 = load i64, i64* %2763, align 8
  store i64 %2764, i64* %RDX.i1040, align 8
  %2765 = add i64 %2764, 1176
  %2766 = add i64 %2761, 10
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2765 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RSI.i1033, align 8
  %2770 = add i64 %2759, -24
  %2771 = add i64 %2761, 14
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i64*
  %2773 = load i64, i64* %2772, align 8
  store i64 %2773, i64* %RDX.i1040, align 8
  %2774 = add i64 %2761, 215323
  %2775 = add i64 %2761, 19
  %2776 = load i64, i64* %6, align 8
  %2777 = add i64 %2776, -8
  %2778 = inttoptr i64 %2777 to i64*
  store i64 %2775, i64* %2778, align 8
  store i64 %2777, i64* %6, align 8
  store i64 %2774, i64* %3, align 8
  %call2_477d93 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2774, %struct.Memory* %call2_477d70)
  %2779 = load i64, i64* %RAX.i999, align 8
  %2780 = load i64, i64* %RBP.i, align 8
  %2781 = add i64 %2780, -28
  %2782 = load i64, i64* %3, align 8
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %3, align 8
  %2784 = trunc i64 %2779 to i32
  %2785 = inttoptr i64 %2781 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = add i32 %2786, %2784
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RAX.i999, align 8
  %2789 = icmp ult i32 %2787, %2784
  %2790 = icmp ult i32 %2787, %2786
  %2791 = or i1 %2789, %2790
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %14, align 1
  %2793 = and i32 %2787, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %21, align 1
  %2798 = xor i32 %2786, %2784
  %2799 = xor i32 %2798, %2787
  %2800 = lshr i32 %2799, 4
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  store i8 %2802, i8* %27, align 1
  %2803 = icmp eq i32 %2787, 0
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %30, align 1
  %2805 = lshr i32 %2787, 31
  %2806 = trunc i32 %2805 to i8
  store i8 %2806, i8* %33, align 1
  %2807 = lshr i32 %2784, 31
  %2808 = lshr i32 %2786, 31
  %2809 = xor i32 %2805, %2807
  %2810 = xor i32 %2805, %2808
  %2811 = add nuw nsw i32 %2809, %2810
  %2812 = icmp eq i32 %2811, 2
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %39, align 1
  %2814 = add i64 %2782, 6
  store i64 %2814, i64* %3, align 8
  store i32 %2787, i32* %2785, align 4
  %.pre28 = load i64, i64* %3, align 8
  %.pre29 = load i64, i64* %RBP.i, align 8
  br label %block_.L_477d9e

block_.L_477d9e:                                  ; preds = %block_477d12, %block_.L_477cbb
  %2815 = phi i64 [ %2575, %block_.L_477cbb ], [ %.pre29, %block_477d12 ]
  %2816 = phi i64 [ %2594, %block_.L_477cbb ], [ %.pre28, %block_477d12 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_477cf6, %block_.L_477cbb ], [ %call2_477d93, %block_477d12 ]
  store i64 ptrtoint (%G__0x4c286a_type* @G__0x4c286a to i64), i64* %RDI.i1036, align 8
  %2817 = add i64 %2815, -8
  %2818 = add i64 %2816, 14
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i64*
  %2820 = load i64, i64* %2819, align 8
  store i64 %2820, i64* %RAX.i999, align 8
  %2821 = add i64 %2820, 1180
  %2822 = add i64 %2816, 20
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2821 to i32*
  %2824 = load i32, i32* %2823, align 4
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RSI.i1033, align 8
  %2826 = add i64 %2815, -24
  %2827 = add i64 %2816, 24
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i64*
  %2829 = load i64, i64* %2828, align 8
  store i64 %2829, i64* %RDX.i1040, align 8
  %2830 = add i64 %2816, 216418
  %2831 = add i64 %2816, 29
  %2832 = load i64, i64* %6, align 8
  %2833 = add i64 %2832, -8
  %2834 = inttoptr i64 %2833 to i64*
  store i64 %2831, i64* %2834, align 8
  store i64 %2833, i64* %6, align 8
  store i64 %2830, i64* %3, align 8
  %call2_477db6 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2830, %struct.Memory* %MEMORY.13)
  %2835 = load i64, i64* %RAX.i999, align 8
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -28
  %2838 = load i64, i64* %3, align 8
  %2839 = add i64 %2838, 3
  store i64 %2839, i64* %3, align 8
  %2840 = trunc i64 %2835 to i32
  %2841 = inttoptr i64 %2837 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = add i32 %2842, %2840
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RAX.i999, align 8
  %2845 = icmp ult i32 %2843, %2840
  %2846 = icmp ult i32 %2843, %2842
  %2847 = or i1 %2845, %2846
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %14, align 1
  %2849 = and i32 %2843, 255
  %2850 = tail call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  store i8 %2853, i8* %21, align 1
  %2854 = xor i32 %2842, %2840
  %2855 = xor i32 %2854, %2843
  %2856 = lshr i32 %2855, 4
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  store i8 %2858, i8* %27, align 1
  %2859 = icmp eq i32 %2843, 0
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %30, align 1
  %2861 = lshr i32 %2843, 31
  %2862 = trunc i32 %2861 to i8
  store i8 %2862, i8* %33, align 1
  %2863 = lshr i32 %2840, 31
  %2864 = lshr i32 %2842, 31
  %2865 = xor i32 %2861, %2863
  %2866 = xor i32 %2861, %2864
  %2867 = add nuw nsw i32 %2865, %2866
  %2868 = icmp eq i32 %2867, 2
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %39, align 1
  %2870 = add i64 %2838, 6
  store i64 %2870, i64* %3, align 8
  store i32 %2843, i32* %2841, align 4
  %2871 = load i64, i64* %RBP.i, align 8
  %2872 = add i64 %2871, -8
  %2873 = load i64, i64* %3, align 8
  %2874 = add i64 %2873, 4
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2872 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %RDX.i1040, align 8
  %2877 = add i64 %2876, 1180
  %2878 = add i64 %2873, 11
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  %2880 = load i32, i32* %2879, align 4
  store i8 0, i8* %14, align 1
  %2881 = and i32 %2880, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2886 = icmp eq i32 %2880, 0
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %30, align 1
  %2888 = lshr i32 %2880, 31
  %2889 = trunc i32 %2888 to i8
  store i8 %2889, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v41 = select i1 %2886, i64 32, i64 17
  %2890 = add i64 %2873, %.v41
  store i64 %2890, i64* %3, align 8
  br i1 %2886, label %block_.L_477de1, label %block_477dd2

block_477dd2:                                     ; preds = %block_.L_477d9e
  %2891 = add i64 %2871, -24
  %2892 = add i64 %2890, 4
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i64*
  %2894 = load i64, i64* %2893, align 8
  store i64 %2894, i64* %RDI.i1036, align 8
  %2895 = add i64 %2890, 462
  %2896 = add i64 %2890, 9
  %2897 = load i64, i64* %6, align 8
  %2898 = add i64 %2897, -8
  %2899 = inttoptr i64 %2898 to i64*
  store i64 %2896, i64* %2899, align 8
  store i64 %2898, i64* %6, align 8
  store i64 %2895, i64* %3, align 8
  %call2_477dd6 = tail call %struct.Memory* @sub_477fa0.GenerateVUISequenceParameters(%struct.State* nonnull %0, i64 %2895, %struct.Memory* %call2_477db6)
  %2900 = load i64, i64* %RAX.i999, align 8
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -28
  %2903 = load i64, i64* %3, align 8
  %2904 = add i64 %2903, 3
  store i64 %2904, i64* %3, align 8
  %2905 = trunc i64 %2900 to i32
  %2906 = inttoptr i64 %2902 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = add i32 %2907, %2905
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RAX.i999, align 8
  %2910 = icmp ult i32 %2908, %2905
  %2911 = icmp ult i32 %2908, %2907
  %2912 = or i1 %2910, %2911
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %14, align 1
  %2914 = and i32 %2908, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %21, align 1
  %2919 = xor i32 %2907, %2905
  %2920 = xor i32 %2919, %2908
  %2921 = lshr i32 %2920, 4
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  store i8 %2923, i8* %27, align 1
  %2924 = icmp eq i32 %2908, 0
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %30, align 1
  %2926 = lshr i32 %2908, 31
  %2927 = trunc i32 %2926 to i8
  store i8 %2927, i8* %33, align 1
  %2928 = lshr i32 %2905, 31
  %2929 = lshr i32 %2907, 31
  %2930 = xor i32 %2926, %2928
  %2931 = xor i32 %2926, %2929
  %2932 = add nuw nsw i32 %2930, %2931
  %2933 = icmp eq i32 %2932, 2
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %39, align 1
  %2935 = add i64 %2903, 6
  store i64 %2935, i64* %3, align 8
  store i32 %2908, i32* %2906, align 4
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_477de1

block_.L_477de1:                                  ; preds = %block_477dd2, %block_.L_477d9e
  %2936 = phi i64 [ %2890, %block_.L_477d9e ], [ %.pre31, %block_477dd2 ]
  %2937 = phi i64 [ %2871, %block_.L_477d9e ], [ %.pre30, %block_477dd2 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_477db6, %block_.L_477d9e ], [ %call2_477dd6, %block_477dd2 ]
  %2938 = add i64 %2937, -24
  %2939 = add i64 %2936, 4
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2938 to i64*
  %2941 = load i64, i64* %2940, align 8
  store i64 %2941, i64* %RAX.i999, align 8
  %2942 = add i64 %2936, 7
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i64*
  %2944 = load i64, i64* %2943, align 8
  store i64 %2944, i64* %RDI.i1036, align 8
  %2945 = add i64 %2936, -11329
  %2946 = add i64 %2936, 12
  %2947 = load i64, i64* %6, align 8
  %2948 = add i64 %2947, -8
  %2949 = inttoptr i64 %2948 to i64*
  store i64 %2946, i64* %2949, align 8
  store i64 %2948, i64* %6, align 8
  store i64 %2945, i64* %3, align 8
  %call2_477de8 = tail call %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* nonnull %0, i64 %2945, %struct.Memory* %MEMORY.14)
  %2950 = load i64, i64* %RBP.i, align 8
  %2951 = add i64 %2950, -24
  %2952 = load i64, i64* %3, align 8
  %2953 = add i64 %2952, 4
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2951 to i64*
  %2955 = load i64, i64* %2954, align 8
  store i64 %2955, i64* %RAX.i999, align 8
  %2956 = add i64 %2952, 7
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i64*
  %2958 = load i64, i64* %2957, align 8
  store i64 %2958, i64* %RAX.i999, align 8
  %2959 = add i64 %2952, 9
  store i64 %2959, i64* %3, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RCX.i1022, align 8
  %2963 = add i64 %2950, -32
  %2964 = add i64 %2952, 12
  store i64 %2964, i64* %3, align 8
  %2965 = inttoptr i64 %2963 to i32*
  store i32 %2961, i32* %2965, align 4
  %2966 = load i64, i64* %RBP.i, align 8
  %2967 = add i64 %2966, -24
  %2968 = load i64, i64* %3, align 8
  %2969 = add i64 %2968, 4
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2967 to i64*
  %2971 = load i64, i64* %2970, align 8
  store i64 %2971, i64* %RAX.i999, align 8
  %2972 = add i64 %2968, 7
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %RAX.i999, align 8
  store i64 %2974, i64* %RDI.i1036, align 8
  %2975 = add i64 %2968, -487033
  %2976 = add i64 %2968, 15
  %2977 = load i64, i64* %6, align 8
  %2978 = add i64 %2977, -8
  %2979 = inttoptr i64 %2978 to i64*
  store i64 %2976, i64* %2979, align 8
  store i64 %2978, i64* %6, align 8
  store i64 %2975, i64* %3, align 8
  %2980 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_477de8)
  %2981 = load i64, i64* %RBP.i, align 8
  %2982 = add i64 %2981, -24
  %2983 = load i64, i64* %3, align 8
  %2984 = add i64 %2983, 4
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2982 to i64*
  %2986 = load i64, i64* %2985, align 8
  store i64 %2986, i64* %RAX.i999, align 8
  store i64 %2986, i64* %RDI.i1036, align 8
  %2987 = add i64 %2983, -487048
  %2988 = add i64 %2983, 12
  %2989 = load i64, i64* %6, align 8
  %2990 = add i64 %2989, -8
  %2991 = inttoptr i64 %2990 to i64*
  store i64 %2988, i64* %2991, align 8
  store i64 %2990, i64* %6, align 8
  store i64 %2987, i64* %3, align 8
  %2992 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2980)
  %2993 = load i64, i64* %RBP.i, align 8
  %2994 = add i64 %2993, -32
  %2995 = load i64, i64* %3, align 8
  %2996 = add i64 %2995, 3
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2994 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = zext i32 %2998 to i64
  store i64 %2999, i64* %RAX.i999, align 8
  %3000 = load i64, i64* %6, align 8
  %3001 = add i64 %3000, 48
  store i64 %3001, i64* %6, align 8
  %3002 = icmp ugt i64 %3000, -49
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %14, align 1
  %3004 = trunc i64 %3001 to i32
  %3005 = and i32 %3004, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005)
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %21, align 1
  %3010 = xor i64 %3000, 16
  %3011 = xor i64 %3010, %3001
  %3012 = lshr i64 %3011, 4
  %3013 = trunc i64 %3012 to i8
  %3014 = and i8 %3013, 1
  store i8 %3014, i8* %27, align 1
  %3015 = icmp eq i64 %3001, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %30, align 1
  %3017 = lshr i64 %3001, 63
  %3018 = trunc i64 %3017 to i8
  store i8 %3018, i8* %33, align 1
  %3019 = lshr i64 %3000, 63
  %3020 = xor i64 %3017, %3019
  %3021 = add nuw nsw i64 %3020, %3017
  %3022 = icmp eq i64 %3021, 2
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %39, align 1
  %3024 = add i64 %2995, 8
  store i64 %3024, i64* %3, align 8
  %3025 = add i64 %3000, 56
  %3026 = inttoptr i64 %3001 to i64*
  %3027 = load i64, i64* %3026, align 8
  store i64 %3027, i64* %RBP.i, align 8
  store i64 %3025, i64* %6, align 8
  %3028 = add i64 %2995, 9
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3025 to i64*
  %3030 = load i64, i64* %3029, align 8
  store i64 %3030, i64* %3, align 8
  %3031 = add i64 %3000, 64
  store i64 %3031, i64* %6, align 8
  ret %struct.Memory* %2992
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
define %struct.Memory* @routine_jne_.L_4776ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2411___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2411_type* @G__0x4c2411 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_4776e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c242b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c242b_type* @G__0x4c242b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c2445___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2445_type* @G__0x4c2445 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x4c2456___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2456_type* @G__0x4c2456 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4c2471___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2471_type* @G__0x4c2471 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4c248c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c248c_type* @G__0x4c248c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x4c24a7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c24a7_type* @G__0x4c24a7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c24c2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c24c2_type* @G__0x4c24c2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x4c24db___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c24db_type* @G__0x4c24db to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq__0x4c24ea___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c24ea_type* @G__0x4c24ea to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_477842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6e__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_cmpl__0x7a__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_cmpl__0x90__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_477a82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2504___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2504_type* @G__0x4c2504 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x11bfc__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_jne_.L_47789e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c251b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c251b_type* @G__0x4c251b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x11c14__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_movq__0x4c2537___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2537_type* @G__0x4c2537 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x48__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movq__0x4c2552___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2552_type* @G__0x4c2552 to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4c__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 76
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
define %struct.Memory* @routine_movq__0x4c256f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c256f_type* @G__0x4c256f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11c00__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72704
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
define %struct.Memory* @routine_movq__0x4c2591___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2591_type* @G__0x4c2591 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_cmpl__0x0__0x24__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_477a7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jae_.L_477a78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c25b6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c25b6_type* @G__0x4c25b6 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x28__rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 40
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
define %struct.Memory* @routine_cmpl__0x0__0x28__rdx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 40
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
define %struct.Memory* @routine_je_.L_477a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jae_.L_4779ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_477a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_477a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477a6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47793a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477a7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477a82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c25d9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c25d9_type* @G__0x4c25d9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x50__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_movq__0x4c25f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c25f8_type* @G__0x4c25f8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x54__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 84
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
define %struct.Memory* @routine_cmpl__0x0__0x54__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 84
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
define %struct.Memory* @routine_jne_.L_477af5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2610___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2610_type* @G__0x4c2610 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x58__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_jmpq_.L_477bd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x54__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 84
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
define %struct.Memory* @routine_jne_.L_477bd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c2637___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2637_type* @G__0x4c2637 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 92
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
define %struct.Memory* @routine_movq__0x4c265d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c265d_type* @G__0x4c265d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movq__0x4c2679___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2679_type* @G__0x4c2679 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x64__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_movq__0x4c269d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c269d_type* @G__0x4c269d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x68__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_cmpl_0x68__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 104
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
define %struct.Memory* @routine_jae_.L_477bce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c26c8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c26c8_type* @G__0x4c26c8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6c__rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 108
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
define %struct.Memory* @routine_jmpq_.L_477b8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_477bd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c26e2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c26e2_type* @G__0x4c26e2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x46c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1132
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
define %struct.Memory* @routine_movq__0x4c26f6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c26f6_type* @G__0x4c26f6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x470__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1136
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
define %struct.Memory* @routine_movq__0x4c2720___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2720_type* @G__0x4c2720 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x474__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1140
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
define %struct.Memory* @routine_movq__0x4c273d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c273d_type* @G__0x4c273d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x478__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1144
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
define %struct.Memory* @routine_movq__0x4c2761___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2761_type* @G__0x4c2761 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x47c__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_cmpl__0x0__0x47c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_jne_.L_477cbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c277a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c277a_type* @G__0x4c277a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x480__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1152
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
define %struct.Memory* @routine_movq__0x4c279c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c279c_type* @G__0x4c279c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x484__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1156
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
define %struct.Memory* @routine_movq__0x4c27bb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c27bb_type* @G__0x4c27bb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x488__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1160
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
define %struct.Memory* @routine_cmpl__0x0__0x488__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1160
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
define %struct.Memory* @routine_je_.L_477d9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c27d4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c27d4_type* @G__0x4c27d4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x48c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1164
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
define %struct.Memory* @routine_movq__0x4c27f9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c27f9_type* @G__0x4c27f9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x490__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1168
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
define %struct.Memory* @routine_movq__0x4c281f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c281f_type* @G__0x4c281f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x494__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1172
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
define %struct.Memory* @routine_movq__0x4c2843___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c2843_type* @G__0x4c2843 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x498__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1176
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
define %struct.Memory* @routine_movq__0x4c286a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c286a_type* @G__0x4c286a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x49c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1180
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
define %struct.Memory* @routine_cmpl__0x0__0x49c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1180
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
define %struct.Memory* @routine_je_.L_477de1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.GenerateVUISequenceParameters(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
