; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae530_type = type <{ [4 x i8] }>
%G_0x7b1408_type = type <{ [1 x i8] }>
%G_0x7b21d0_type = type <{ [1 x i8] }>
%G_0x7be180_type = type <{ [1 x i8] }>
%G_0x7c4a48_type = type <{ [1 x i8] }>
%G_0x7c6d58_type = type <{ [1 x i8] }>
%G_0x84b768_type = type <{ [1 x i8] }>
%G_0x869328_type = type <{ [1 x i8] }>
%G_0x919b80_type = type <{ [1 x i8] }>
%G_0x92aa60_type = type <{ [1 x i8] }>
%G_0x941128_type = type <{ [1 x i8] }>
%G_0x9440e8_type = type <{ [1 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G__0x57cb6f_type = type <{ [8 x i8] }>
%G__0x57cb7a_type = type <{ [8 x i8] }>
%G__0x57cb8d_type = type <{ [8 x i8] }>
%G__0x57cbaa_type = type <{ [8 x i8] }>
%G__0x57cbb1_type = type <{ [8 x i8] }>
%G__0x57cbc7_type = type <{ [8 x i8] }>
%G__0x57cbdd_type = type <{ [8 x i8] }>
%G__0x57cbf3_type = type <{ [8 x i8] }>
%G__0x57cc07_type = type <{ [8 x i8] }>
%G__0x57cc23_type = type <{ [8 x i8] }>
%G__0xb8c050_type = type <{ [8 x i8] }>
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
@G_0x7ae530 = local_unnamed_addr global %G_0x7ae530_type zeroinitializer
@G_0x7b1408 = local_unnamed_addr global %G_0x7b1408_type zeroinitializer
@G_0x7b21d0 = local_unnamed_addr global %G_0x7b21d0_type zeroinitializer
@G_0x7be180 = local_unnamed_addr global %G_0x7be180_type zeroinitializer
@G_0x7c4a48 = local_unnamed_addr global %G_0x7c4a48_type zeroinitializer
@G_0x7c6d58 = local_unnamed_addr global %G_0x7c6d58_type zeroinitializer
@G_0x84b768 = local_unnamed_addr global %G_0x84b768_type zeroinitializer
@G_0x869328 = local_unnamed_addr global %G_0x869328_type zeroinitializer
@G_0x919b80 = local_unnamed_addr global %G_0x919b80_type zeroinitializer
@G_0x92aa60 = local_unnamed_addr global %G_0x92aa60_type zeroinitializer
@G_0x941128 = local_unnamed_addr global %G_0x941128_type zeroinitializer
@G_0x9440e8 = local_unnamed_addr global %G_0x9440e8_type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G__0x57cb6f = global %G__0x57cb6f_type zeroinitializer
@G__0x57cb7a = global %G__0x57cb7a_type zeroinitializer
@G__0x57cb8d = global %G__0x57cb8d_type zeroinitializer
@G__0x57cbaa = global %G__0x57cbaa_type zeroinitializer
@G__0x57cbb1 = global %G__0x57cbb1_type zeroinitializer
@G__0x57cbc7 = global %G__0x57cbc7_type zeroinitializer
@G__0x57cbdd = global %G__0x57cbdd_type zeroinitializer
@G__0x57cbf3 = global %G__0x57cbf3_type zeroinitializer
@G__0x57cc07 = global %G__0x57cc07_type zeroinitializer
@G__0x57cc23 = global %G__0x57cc23_type zeroinitializer
@G__0xb8c050 = global %G__0xb8c050_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4a6a40.buildSpiralOrder(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dfa_match_init(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RDI.i213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64* %RDI.i213, align 8
  %40 = add i64 %10, 487903
  %41 = add i64 %10, 22
  %42 = add i64 %7, -64
  %43 = inttoptr i64 %42 to i64*
  store i64 %41, i64* %43, align 8
  store i64 %42, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  %call2_42f872 = tail call %struct.Memory* @sub_4a6a40.buildSpiralOrder(%struct.State* %0, i64 %40, %struct.Memory* %2)
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* bitcast (%G_0x941128_type* @G_0x941128 to i64*), align 8
  store i8 0, i8* %14, align 1
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 255
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47)
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  store i8 %51, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %52 = icmp eq i64 %45, 0
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %30, align 1
  %54 = lshr i64 %45, 63
  %55 = trunc i64 %54 to i8
  store i8 %55, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %52, i64 64, i64 15
  %56 = add i64 %44, %.v
  store i64 %56, i64* %3, align 8
  br i1 %52, label %block_.L_42f8b7, label %block_42f886

block_42f886:                                     ; preds = %entry
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i208 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %59 = and i32 %58, 16
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RAX.i208, align 8
  store i8 0, i8* %14, align 1
  %61 = tail call i32 @llvm.ctpop.i32(i32 %59)
  %62 = trunc i32 %61 to i8
  %63 = xor i8 %62, 1
  store i8 %63, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit42 = lshr exact i32 %59, 4
  %64 = trunc i32 %.lobit42 to i8
  %65 = xor i8 %64, 1
  store i8 %65, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %66 = icmp eq i8 %65, 0
  %.v53 = select i1 %66, i64 24, i64 19
  %67 = add i64 %56, %.v53
  store i64 %67, i64* %3, align 8
  br i1 %66, label %block_.L_42f89e, label %block_42f899

block_42f899:                                     ; preds = %block_42f886
  %68 = add i64 %67, 25
  store i64 %68, i64* %3, align 8
  br label %block_.L_42f8b2

block_.L_42f89e:                                  ; preds = %block_42f886
  %EAX.i204 = bitcast %union.anon* %57 to i32*
  store i64 ptrtoint (%G__0x57cb6f_type* @G__0x57cb6f to i64), i64* %RDI.i213, align 8
  %AL.i198 = bitcast %union.anon* %57 to i8*
  store i8 0, i8* %AL.i198, align 1
  %69 = add i64 %67, 140562
  %70 = add i64 %67, 17
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %6, align 8
  store i64 %69, i64* %3, align 8
  %call2_42f8aa = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %69, %struct.Memory* %call2_42f872)
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -4
  %76 = load i32, i32* %EAX.i204, align 4
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 3
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %75 to i32*
  store i32 %76, i32* %79, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42f8b2

block_.L_42f8b2:                                  ; preds = %block_.L_42f89e, %block_42f899
  %80 = phi i64 [ %.pre, %block_.L_42f89e ], [ %68, %block_42f899 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_42f8aa, %block_.L_42f89e ], [ %call2_42f872, %block_42f899 ]
  %81 = add i64 %80, 5
  store i64 %81, i64* %3, align 8
  br label %block_.L_42f8b7

block_.L_42f8b7:                                  ; preds = %block_.L_42f8b2, %entry
  %82 = phi i64 [ %56, %entry ], [ %81, %block_.L_42f8b2 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_42f872, %entry ], [ %MEMORY.0, %block_.L_42f8b2 ]
  %83 = load i64, i64* bitcast (%G_0x919b80_type* @G_0x919b80 to i64*), align 8
  store i8 0, i8* %14, align 1
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %90 = icmp eq i64 %83, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %30, align 1
  %92 = lshr i64 %83, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v54 = select i1 %90, i64 64, i64 15
  %94 = add i64 %82, %.v54
  store i64 %94, i64* %3, align 8
  br i1 %90, label %block_.L_42f8f7, label %block_42f8c6

block_42f8c6:                                     ; preds = %block_.L_42f8b7
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i189 = getelementptr inbounds %union.anon, %union.anon* %95, i64 0, i32 0
  %96 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %97 = and i32 %96, 16
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RAX.i189, align 8
  store i8 0, i8* %14, align 1
  %99 = tail call i32 @llvm.ctpop.i32(i32 %97)
  %100 = trunc i32 %99 to i8
  %101 = xor i8 %100, 1
  store i8 %101, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit43 = lshr exact i32 %97, 4
  %102 = trunc i32 %.lobit43 to i8
  %103 = xor i8 %102, 1
  store i8 %103, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %104 = icmp eq i8 %103, 0
  %.v55 = select i1 %104, i64 24, i64 19
  %105 = add i64 %94, %.v55
  store i64 %105, i64* %3, align 8
  br i1 %104, label %block_.L_42f8de, label %block_42f8d9

block_42f8d9:                                     ; preds = %block_42f8c6
  %106 = add i64 %105, 25
  store i64 %106, i64* %3, align 8
  br label %block_.L_42f8f2

block_.L_42f8de:                                  ; preds = %block_42f8c6
  %EAX.i185 = bitcast %union.anon* %95 to i32*
  store i64 ptrtoint (%G__0x57cb8d_type* @G__0x57cb8d to i64), i64* %RDI.i213, align 8
  %AL.i179 = bitcast %union.anon* %95 to i8*
  store i8 0, i8* %AL.i179, align 1
  %107 = add i64 %105, 140498
  %108 = add i64 %105, 17
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111, align 8
  store i64 %110, i64* %6, align 8
  store i64 %107, i64* %3, align 8
  %call2_42f8ea = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %107, %struct.Memory* %MEMORY.1)
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -8
  %114 = load i32, i32* %EAX.i185, align 4
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 3
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %117, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_42f8f2

block_.L_42f8f2:                                  ; preds = %block_.L_42f8de, %block_42f8d9
  %118 = phi i64 [ %.pre32, %block_.L_42f8de ], [ %106, %block_42f8d9 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_42f8ea, %block_.L_42f8de ], [ %MEMORY.1, %block_42f8d9 ]
  %119 = add i64 %118, 5
  store i64 %119, i64* %3, align 8
  br label %block_.L_42f8f7

block_.L_42f8f7:                                  ; preds = %block_.L_42f8f2, %block_.L_42f8b7
  %120 = phi i64 [ %94, %block_.L_42f8b7 ], [ %119, %block_.L_42f8f2 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_.L_42f8b7 ], [ %MEMORY.2, %block_.L_42f8f2 ]
  %121 = load i64, i64* bitcast (%G_0x92aa60_type* @G_0x92aa60 to i64*), align 8
  store i8 0, i8* %14, align 1
  %122 = trunc i64 %121 to i32
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %128 = icmp eq i64 %121, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %30, align 1
  %130 = lshr i64 %121, 63
  %131 = trunc i64 %130 to i8
  store i8 %131, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v56 = select i1 %128, i64 64, i64 15
  %132 = add i64 %120, %.v56
  store i64 %132, i64* %3, align 8
  br i1 %128, label %block_.L_42f937, label %block_42f906

block_42f906:                                     ; preds = %block_.L_42f8f7
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i170 = getelementptr inbounds %union.anon, %union.anon* %133, i64 0, i32 0
  %134 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %135 = and i32 %134, 16
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RAX.i170, align 8
  store i8 0, i8* %14, align 1
  %137 = tail call i32 @llvm.ctpop.i32(i32 %135)
  %138 = trunc i32 %137 to i8
  %139 = xor i8 %138, 1
  store i8 %139, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit44 = lshr exact i32 %135, 4
  %140 = trunc i32 %.lobit44 to i8
  %141 = xor i8 %140, 1
  store i8 %141, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %142 = icmp eq i8 %141, 0
  %.v57 = select i1 %142, i64 24, i64 19
  %143 = add i64 %132, %.v57
  store i64 %143, i64* %3, align 8
  br i1 %142, label %block_.L_42f91e, label %block_42f919

block_42f919:                                     ; preds = %block_42f906
  %144 = add i64 %143, 25
  store i64 %144, i64* %3, align 8
  br label %block_.L_42f932

block_.L_42f91e:                                  ; preds = %block_42f906
  %EAX.i166 = bitcast %union.anon* %133 to i32*
  store i64 ptrtoint (%G__0x57cbaa_type* @G__0x57cbaa to i64), i64* %RDI.i213, align 8
  %AL.i160 = bitcast %union.anon* %133 to i8*
  store i8 0, i8* %AL.i160, align 1
  %145 = add i64 %143, 140434
  %146 = add i64 %143, 17
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %147, -8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  store i64 %148, i64* %6, align 8
  store i64 %145, i64* %3, align 8
  %call2_42f92a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %145, %struct.Memory* %MEMORY.3)
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -12
  %152 = load i32, i32* %EAX.i166, align 4
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 3
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %155, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_42f932

block_.L_42f932:                                  ; preds = %block_.L_42f91e, %block_42f919
  %156 = phi i64 [ %.pre33, %block_.L_42f91e ], [ %144, %block_42f919 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_42f92a, %block_.L_42f91e ], [ %MEMORY.3, %block_42f919 ]
  %157 = add i64 %156, 5
  store i64 %157, i64* %3, align 8
  br label %block_.L_42f937

block_.L_42f937:                                  ; preds = %block_.L_42f932, %block_.L_42f8f7
  %158 = phi i64 [ %132, %block_.L_42f8f7 ], [ %157, %block_.L_42f932 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_.L_42f8f7 ], [ %MEMORY.4, %block_.L_42f932 ]
  %159 = load i64, i64* bitcast (%G_0x9440e8_type* @G_0x9440e8 to i64*), align 8
  store i8 0, i8* %14, align 1
  %160 = trunc i64 %159 to i32
  %161 = and i32 %160, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %166 = icmp eq i64 %159, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %30, align 1
  %168 = lshr i64 %159, 63
  %169 = trunc i64 %168 to i8
  store i8 %169, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v58 = select i1 %166, i64 64, i64 15
  %170 = add i64 %158, %.v58
  store i64 %170, i64* %3, align 8
  br i1 %166, label %block_.L_42f977, label %block_42f946

block_42f946:                                     ; preds = %block_.L_42f937
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i151 = getelementptr inbounds %union.anon, %union.anon* %171, i64 0, i32 0
  %172 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %173 = and i32 %172, 16
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX.i151, align 8
  store i8 0, i8* %14, align 1
  %175 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %176 = trunc i32 %175 to i8
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit45 = lshr exact i32 %173, 4
  %178 = trunc i32 %.lobit45 to i8
  %179 = xor i8 %178, 1
  store i8 %179, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %180 = icmp eq i8 %179, 0
  %.v59 = select i1 %180, i64 24, i64 19
  %181 = add i64 %170, %.v59
  store i64 %181, i64* %3, align 8
  br i1 %180, label %block_.L_42f95e, label %block_42f959

block_42f959:                                     ; preds = %block_42f946
  %182 = add i64 %181, 25
  store i64 %182, i64* %3, align 8
  br label %block_.L_42f972

block_.L_42f95e:                                  ; preds = %block_42f946
  %EAX.i147 = bitcast %union.anon* %171 to i32*
  store i64 ptrtoint (%G__0x57cb7a_type* @G__0x57cb7a to i64), i64* %RDI.i213, align 8
  %AL.i141 = bitcast %union.anon* %171 to i8*
  store i8 0, i8* %AL.i141, align 1
  %183 = add i64 %181, 140370
  %184 = add i64 %181, 17
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %call2_42f96a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %183, %struct.Memory* %MEMORY.5)
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -16
  %190 = load i32, i32* %EAX.i147, align 4
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 3
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %193, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_42f972

block_.L_42f972:                                  ; preds = %block_.L_42f95e, %block_42f959
  %194 = phi i64 [ %.pre34, %block_.L_42f95e ], [ %182, %block_42f959 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_42f96a, %block_.L_42f95e ], [ %MEMORY.5, %block_42f959 ]
  %195 = add i64 %194, 5
  store i64 %195, i64* %3, align 8
  br label %block_.L_42f977

block_.L_42f977:                                  ; preds = %block_.L_42f972, %block_.L_42f937
  %196 = phi i64 [ %170, %block_.L_42f937 ], [ %195, %block_.L_42f972 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.5, %block_.L_42f937 ], [ %MEMORY.6, %block_.L_42f972 ]
  %197 = load i64, i64* bitcast (%G_0x7b1408_type* @G_0x7b1408 to i64*), align 8
  store i8 0, i8* %14, align 1
  %198 = trunc i64 %197 to i32
  %199 = and i32 %198, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %204 = icmp eq i64 %197, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %30, align 1
  %206 = lshr i64 %197, 63
  %207 = trunc i64 %206 to i8
  store i8 %207, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v60 = select i1 %204, i64 64, i64 15
  %208 = add i64 %196, %.v60
  store i64 %208, i64* %3, align 8
  br i1 %204, label %block_.L_42f9b7, label %block_42f986

block_42f986:                                     ; preds = %block_.L_42f977
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i132 = getelementptr inbounds %union.anon, %union.anon* %209, i64 0, i32 0
  %210 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %211 = and i32 %210, 16
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX.i132, align 8
  store i8 0, i8* %14, align 1
  %213 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %214 = trunc i32 %213 to i8
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit46 = lshr exact i32 %211, 4
  %216 = trunc i32 %.lobit46 to i8
  %217 = xor i8 %216, 1
  store i8 %217, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %218 = icmp eq i8 %217, 0
  %.v61 = select i1 %218, i64 24, i64 19
  %219 = add i64 %208, %.v61
  store i64 %219, i64* %3, align 8
  br i1 %218, label %block_.L_42f99e, label %block_42f999

block_42f999:                                     ; preds = %block_42f986
  %220 = add i64 %219, 25
  store i64 %220, i64* %3, align 8
  br label %block_.L_42f9b2

block_.L_42f99e:                                  ; preds = %block_42f986
  %EAX.i128 = bitcast %union.anon* %209 to i32*
  store i64 ptrtoint (%G__0x57cbc7_type* @G__0x57cbc7 to i64), i64* %RDI.i213, align 8
  %AL.i122 = bitcast %union.anon* %209 to i8*
  store i8 0, i8* %AL.i122, align 1
  %221 = add i64 %219, 140306
  %222 = add i64 %219, 17
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %222, i64* %225, align 8
  store i64 %224, i64* %6, align 8
  store i64 %221, i64* %3, align 8
  %call2_42f9aa = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %221, %struct.Memory* %MEMORY.7)
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -20
  %228 = load i32, i32* %EAX.i128, align 4
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 3
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %231, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_42f9b2

block_.L_42f9b2:                                  ; preds = %block_.L_42f99e, %block_42f999
  %232 = phi i64 [ %.pre35, %block_.L_42f99e ], [ %220, %block_42f999 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_42f9aa, %block_.L_42f99e ], [ %MEMORY.7, %block_42f999 ]
  %233 = add i64 %232, 5
  store i64 %233, i64* %3, align 8
  br label %block_.L_42f9b7

block_.L_42f9b7:                                  ; preds = %block_.L_42f9b2, %block_.L_42f977
  %234 = phi i64 [ %208, %block_.L_42f977 ], [ %233, %block_.L_42f9b2 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.7, %block_.L_42f977 ], [ %MEMORY.8, %block_.L_42f9b2 ]
  %235 = load i64, i64* bitcast (%G_0x7c4a48_type* @G_0x7c4a48 to i64*), align 8
  store i8 0, i8* %14, align 1
  %236 = trunc i64 %235 to i32
  %237 = and i32 %236, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %242 = icmp eq i64 %235, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %30, align 1
  %244 = lshr i64 %235, 63
  %245 = trunc i64 %244 to i8
  store i8 %245, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v62 = select i1 %242, i64 64, i64 15
  %246 = add i64 %234, %.v62
  store i64 %246, i64* %3, align 8
  br i1 %242, label %block_.L_42f9f7, label %block_42f9c6

block_42f9c6:                                     ; preds = %block_.L_42f9b7
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i113 = getelementptr inbounds %union.anon, %union.anon* %247, i64 0, i32 0
  %248 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %249 = and i32 %248, 16
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i113, align 8
  store i8 0, i8* %14, align 1
  %251 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %252 = trunc i32 %251 to i8
  %253 = xor i8 %252, 1
  store i8 %253, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit47 = lshr exact i32 %249, 4
  %254 = trunc i32 %.lobit47 to i8
  %255 = xor i8 %254, 1
  store i8 %255, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %256 = icmp eq i8 %255, 0
  %.v63 = select i1 %256, i64 24, i64 19
  %257 = add i64 %246, %.v63
  store i64 %257, i64* %3, align 8
  br i1 %256, label %block_.L_42f9de, label %block_42f9d9

block_42f9d9:                                     ; preds = %block_42f9c6
  %258 = add i64 %257, 25
  store i64 %258, i64* %3, align 8
  br label %block_.L_42f9f2

block_.L_42f9de:                                  ; preds = %block_42f9c6
  %EAX.i109 = bitcast %union.anon* %247 to i32*
  store i64 ptrtoint (%G__0x57cbdd_type* @G__0x57cbdd to i64), i64* %RDI.i213, align 8
  %AL.i103 = bitcast %union.anon* %247 to i8*
  store i8 0, i8* %AL.i103, align 1
  %259 = add i64 %257, 140242
  %260 = add i64 %257, 17
  %261 = load i64, i64* %6, align 8
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*
  store i64 %260, i64* %263, align 8
  store i64 %262, i64* %6, align 8
  store i64 %259, i64* %3, align 8
  %call2_42f9ea = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %259, %struct.Memory* %MEMORY.9)
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -24
  %266 = load i32, i32* %EAX.i109, align 4
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, 3
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %265 to i32*
  store i32 %266, i32* %269, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_42f9f2

block_.L_42f9f2:                                  ; preds = %block_.L_42f9de, %block_42f9d9
  %270 = phi i64 [ %.pre36, %block_.L_42f9de ], [ %258, %block_42f9d9 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_42f9ea, %block_.L_42f9de ], [ %MEMORY.9, %block_42f9d9 ]
  %271 = add i64 %270, 5
  store i64 %271, i64* %3, align 8
  br label %block_.L_42f9f7

block_.L_42f9f7:                                  ; preds = %block_.L_42f9f2, %block_.L_42f9b7
  %272 = phi i64 [ %246, %block_.L_42f9b7 ], [ %271, %block_.L_42f9f2 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.9, %block_.L_42f9b7 ], [ %MEMORY.10, %block_.L_42f9f2 ]
  %273 = load i64, i64* bitcast (%G_0x7c6d58_type* @G_0x7c6d58 to i64*), align 8
  store i8 0, i8* %14, align 1
  %274 = trunc i64 %273 to i32
  %275 = and i32 %274, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %280 = icmp eq i64 %273, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %30, align 1
  %282 = lshr i64 %273, 63
  %283 = trunc i64 %282 to i8
  store i8 %283, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v64 = select i1 %280, i64 64, i64 15
  %284 = add i64 %272, %.v64
  store i64 %284, i64* %3, align 8
  br i1 %280, label %block_.L_42fa37, label %block_42fa06

block_42fa06:                                     ; preds = %block_.L_42f9f7
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i94 = getelementptr inbounds %union.anon, %union.anon* %285, i64 0, i32 0
  %286 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %287 = and i32 %286, 16
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i94, align 8
  store i8 0, i8* %14, align 1
  %289 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %290 = trunc i32 %289 to i8
  %291 = xor i8 %290, 1
  store i8 %291, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit48 = lshr exact i32 %287, 4
  %292 = trunc i32 %.lobit48 to i8
  %293 = xor i8 %292, 1
  store i8 %293, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %294 = icmp eq i8 %293, 0
  %.v65 = select i1 %294, i64 24, i64 19
  %295 = add i64 %284, %.v65
  store i64 %295, i64* %3, align 8
  br i1 %294, label %block_.L_42fa1e, label %block_42fa19

block_42fa19:                                     ; preds = %block_42fa06
  %296 = add i64 %295, 25
  store i64 %296, i64* %3, align 8
  br label %block_.L_42fa32

block_.L_42fa1e:                                  ; preds = %block_42fa06
  %EAX.i90 = bitcast %union.anon* %285 to i32*
  store i64 ptrtoint (%G__0x57cbb1_type* @G__0x57cbb1 to i64), i64* %RDI.i213, align 8
  %AL.i84 = bitcast %union.anon* %285 to i8*
  store i8 0, i8* %AL.i84, align 1
  %297 = add i64 %295, 140178
  %298 = add i64 %295, 17
  %299 = load i64, i64* %6, align 8
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %6, align 8
  store i64 %297, i64* %3, align 8
  %call2_42fa2a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %297, %struct.Memory* %MEMORY.11)
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -28
  %304 = load i32, i32* %EAX.i90, align 4
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, 3
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %303 to i32*
  store i32 %304, i32* %307, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_42fa32

block_.L_42fa32:                                  ; preds = %block_.L_42fa1e, %block_42fa19
  %308 = phi i64 [ %.pre37, %block_.L_42fa1e ], [ %296, %block_42fa19 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_42fa2a, %block_.L_42fa1e ], [ %MEMORY.11, %block_42fa19 ]
  %309 = add i64 %308, 5
  store i64 %309, i64* %3, align 8
  br label %block_.L_42fa37

block_.L_42fa37:                                  ; preds = %block_.L_42fa32, %block_.L_42f9f7
  %310 = phi i64 [ %284, %block_.L_42f9f7 ], [ %309, %block_.L_42fa32 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.11, %block_.L_42f9f7 ], [ %MEMORY.12, %block_.L_42fa32 ]
  %311 = load i64, i64* bitcast (%G_0x7be180_type* @G_0x7be180 to i64*), align 8
  store i8 0, i8* %14, align 1
  %312 = trunc i64 %311 to i32
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %318 = icmp eq i64 %311, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %30, align 1
  %320 = lshr i64 %311, 63
  %321 = trunc i64 %320 to i8
  store i8 %321, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v66 = select i1 %318, i64 64, i64 15
  %322 = add i64 %310, %.v66
  store i64 %322, i64* %3, align 8
  br i1 %318, label %block_.L_42fa77, label %block_42fa46

block_42fa46:                                     ; preds = %block_.L_42fa37
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i75 = getelementptr inbounds %union.anon, %union.anon* %323, i64 0, i32 0
  %324 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %325 = and i32 %324, 16
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX.i75, align 8
  store i8 0, i8* %14, align 1
  %327 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %328 = trunc i32 %327 to i8
  %329 = xor i8 %328, 1
  store i8 %329, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit49 = lshr exact i32 %325, 4
  %330 = trunc i32 %.lobit49 to i8
  %331 = xor i8 %330, 1
  store i8 %331, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %332 = icmp eq i8 %331, 0
  %.v67 = select i1 %332, i64 24, i64 19
  %333 = add i64 %322, %.v67
  store i64 %333, i64* %3, align 8
  br i1 %332, label %block_.L_42fa5e, label %block_42fa59

block_42fa59:                                     ; preds = %block_42fa46
  %334 = add i64 %333, 25
  store i64 %334, i64* %3, align 8
  br label %block_.L_42fa72

block_.L_42fa5e:                                  ; preds = %block_42fa46
  %EAX.i71 = bitcast %union.anon* %323 to i32*
  store i64 ptrtoint (%G__0x57cbf3_type* @G__0x57cbf3 to i64), i64* %RDI.i213, align 8
  %AL.i65 = bitcast %union.anon* %323 to i8*
  store i8 0, i8* %AL.i65, align 1
  %335 = add i64 %333, 140114
  %336 = add i64 %333, 17
  %337 = load i64, i64* %6, align 8
  %338 = add i64 %337, -8
  %339 = inttoptr i64 %338 to i64*
  store i64 %336, i64* %339, align 8
  store i64 %338, i64* %6, align 8
  store i64 %335, i64* %3, align 8
  %call2_42fa6a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %335, %struct.Memory* %MEMORY.13)
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -32
  %342 = load i32, i32* %EAX.i71, align 4
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, 3
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %341 to i32*
  store i32 %342, i32* %345, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_42fa72

block_.L_42fa72:                                  ; preds = %block_.L_42fa5e, %block_42fa59
  %346 = phi i64 [ %.pre38, %block_.L_42fa5e ], [ %334, %block_42fa59 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_42fa6a, %block_.L_42fa5e ], [ %MEMORY.13, %block_42fa59 ]
  %347 = add i64 %346, 5
  store i64 %347, i64* %3, align 8
  br label %block_.L_42fa77

block_.L_42fa77:                                  ; preds = %block_.L_42fa72, %block_.L_42fa37
  %348 = phi i64 [ %322, %block_.L_42fa37 ], [ %347, %block_.L_42fa72 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.13, %block_.L_42fa37 ], [ %MEMORY.14, %block_.L_42fa72 ]
  %349 = load i64, i64* bitcast (%G_0x869328_type* @G_0x869328 to i64*), align 8
  store i8 0, i8* %14, align 1
  %350 = trunc i64 %349 to i32
  %351 = and i32 %350, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %356 = icmp eq i64 %349, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %30, align 1
  %358 = lshr i64 %349, 63
  %359 = trunc i64 %358 to i8
  store i8 %359, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v68 = select i1 %356, i64 64, i64 15
  %360 = add i64 %348, %.v68
  store i64 %360, i64* %3, align 8
  br i1 %356, label %block_.L_42fab7, label %block_42fa86

block_42fa86:                                     ; preds = %block_.L_42fa77
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i56 = getelementptr inbounds %union.anon, %union.anon* %361, i64 0, i32 0
  %362 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %363 = and i32 %362, 16
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i56, align 8
  store i8 0, i8* %14, align 1
  %365 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %366 = trunc i32 %365 to i8
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit50 = lshr exact i32 %363, 4
  %368 = trunc i32 %.lobit50 to i8
  %369 = xor i8 %368, 1
  store i8 %369, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %370 = icmp eq i8 %369, 0
  %.v69 = select i1 %370, i64 24, i64 19
  %371 = add i64 %360, %.v69
  store i64 %371, i64* %3, align 8
  br i1 %370, label %block_.L_42fa9e, label %block_42fa99

block_42fa99:                                     ; preds = %block_42fa86
  %372 = add i64 %371, 25
  store i64 %372, i64* %3, align 8
  br label %block_.L_42fab2

block_.L_42fa9e:                                  ; preds = %block_42fa86
  %EAX.i52 = bitcast %union.anon* %361 to i32*
  store i64 ptrtoint (%G__0x57cc07_type* @G__0x57cc07 to i64), i64* %RDI.i213, align 8
  %AL.i46 = bitcast %union.anon* %361 to i8*
  store i8 0, i8* %AL.i46, align 1
  %373 = add i64 %371, 140050
  %374 = add i64 %371, 17
  %375 = load i64, i64* %6, align 8
  %376 = add i64 %375, -8
  %377 = inttoptr i64 %376 to i64*
  store i64 %374, i64* %377, align 8
  store i64 %376, i64* %6, align 8
  store i64 %373, i64* %3, align 8
  %call2_42faaa = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %373, %struct.Memory* %MEMORY.15)
  %378 = load i64, i64* %RBP.i, align 8
  %379 = add i64 %378, -36
  %380 = load i32, i32* %EAX.i52, align 4
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, 3
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %379 to i32*
  store i32 %380, i32* %383, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_42fab2

block_.L_42fab2:                                  ; preds = %block_.L_42fa9e, %block_42fa99
  %384 = phi i64 [ %.pre39, %block_.L_42fa9e ], [ %372, %block_42fa99 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_42faaa, %block_.L_42fa9e ], [ %MEMORY.15, %block_42fa99 ]
  %385 = add i64 %384, 5
  store i64 %385, i64* %3, align 8
  br label %block_.L_42fab7

block_.L_42fab7:                                  ; preds = %block_.L_42fab2, %block_.L_42fa77
  %386 = phi i64 [ %360, %block_.L_42fa77 ], [ %385, %block_.L_42fab2 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_42fa77 ], [ %MEMORY.16, %block_.L_42fab2 ]
  %387 = load i64, i64* bitcast (%G_0x7b21d0_type* @G_0x7b21d0 to i64*), align 8
  store i8 0, i8* %14, align 1
  %388 = trunc i64 %387 to i32
  %389 = and i32 %388, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %394 = icmp eq i64 %387, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %30, align 1
  %396 = lshr i64 %387, 63
  %397 = trunc i64 %396 to i8
  store i8 %397, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v70 = select i1 %394, i64 64, i64 15
  %398 = add i64 %386, %.v70
  store i64 %398, i64* %3, align 8
  br i1 %394, label %block_.L_42faf7, label %block_42fac6

block_42fac6:                                     ; preds = %block_.L_42fab7
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i37 = getelementptr inbounds %union.anon, %union.anon* %399, i64 0, i32 0
  %400 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %401 = and i32 %400, 16
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RAX.i37, align 8
  store i8 0, i8* %14, align 1
  %403 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %404 = trunc i32 %403 to i8
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit51 = lshr exact i32 %401, 4
  %406 = trunc i32 %.lobit51 to i8
  %407 = xor i8 %406, 1
  store i8 %407, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %408 = icmp eq i8 %407, 0
  %.v71 = select i1 %408, i64 24, i64 19
  %409 = add i64 %398, %.v71
  store i64 %409, i64* %3, align 8
  br i1 %408, label %block_.L_42fade, label %block_42fad9

block_42fad9:                                     ; preds = %block_42fac6
  %410 = add i64 %409, 25
  store i64 %410, i64* %3, align 8
  br label %block_.L_42faf2

block_.L_42fade:                                  ; preds = %block_42fac6
  %EAX.i33 = bitcast %union.anon* %399 to i32*
  store i64 ptrtoint (%G__0x57cc23_type* @G__0x57cc23 to i64), i64* %RDI.i213, align 8
  %AL.i27 = bitcast %union.anon* %399 to i8*
  store i8 0, i8* %AL.i27, align 1
  %411 = add i64 %409, 139986
  %412 = add i64 %409, 17
  %413 = load i64, i64* %6, align 8
  %414 = add i64 %413, -8
  %415 = inttoptr i64 %414 to i64*
  store i64 %412, i64* %415, align 8
  store i64 %414, i64* %6, align 8
  store i64 %411, i64* %3, align 8
  %call2_42faea = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %411, %struct.Memory* %MEMORY.17)
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -40
  %418 = load i32, i32* %EAX.i33, align 4
  %419 = load i64, i64* %3, align 8
  %420 = add i64 %419, 3
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %417 to i32*
  store i32 %418, i32* %421, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_42faf2

block_.L_42faf2:                                  ; preds = %block_.L_42fade, %block_42fad9
  %422 = phi i64 [ %.pre40, %block_.L_42fade ], [ %410, %block_42fad9 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_42faea, %block_.L_42fade ], [ %MEMORY.17, %block_42fad9 ]
  %423 = add i64 %422, 5
  store i64 %423, i64* %3, align 8
  br label %block_.L_42faf7

block_.L_42faf7:                                  ; preds = %block_.L_42faf2, %block_.L_42fab7
  %424 = phi i64 [ %398, %block_.L_42fab7 ], [ %423, %block_.L_42faf2 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_42fab7 ], [ %MEMORY.18, %block_.L_42faf2 ]
  %425 = load i64, i64* bitcast (%G_0x84b768_type* @G_0x84b768 to i64*), align 8
  store i8 0, i8* %14, align 1
  %426 = trunc i64 %425 to i32
  %427 = and i32 %426, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %432 = icmp eq i64 %425, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %30, align 1
  %434 = lshr i64 %425, 63
  %435 = trunc i64 %434 to i8
  store i8 %435, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v72 = select i1 %432, i64 64, i64 15
  %436 = add i64 %424, %.v72
  store i64 %436, i64* %3, align 8
  br i1 %432, label %block_.L_42fb37, label %block_42fb06

block_42fb06:                                     ; preds = %block_.L_42faf7
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i18 = getelementptr inbounds %union.anon, %union.anon* %437, i64 0, i32 0
  %438 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %439 = and i32 %438, 16
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RAX.i18, align 8
  store i8 0, i8* %14, align 1
  %441 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %442 = trunc i32 %441 to i8
  %443 = xor i8 %442, 1
  store i8 %443, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit52 = lshr exact i32 %439, 4
  %444 = trunc i32 %.lobit52 to i8
  %445 = xor i8 %444, 1
  store i8 %445, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %446 = icmp eq i8 %445, 0
  %.v73 = select i1 %446, i64 24, i64 19
  %447 = add i64 %436, %.v73
  store i64 %447, i64* %3, align 8
  br i1 %446, label %block_.L_42fb1e, label %block_42fb19

block_42fb19:                                     ; preds = %block_42fb06
  %448 = add i64 %447, 25
  store i64 %448, i64* %3, align 8
  br label %block_.L_42fb32

block_.L_42fb1e:                                  ; preds = %block_42fb06
  %EAX.i15 = bitcast %union.anon* %437 to i32*
  store i64 ptrtoint (%G__0x57cc23_type* @G__0x57cc23 to i64), i64* %RDI.i213, align 8
  %AL.i = bitcast %union.anon* %437 to i8*
  store i8 0, i8* %AL.i, align 1
  %449 = add i64 %447, 139922
  %450 = add i64 %447, 17
  %451 = load i64, i64* %6, align 8
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %450, i64* %453, align 8
  store i64 %452, i64* %6, align 8
  store i64 %449, i64* %3, align 8
  %call2_42fb2a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %449, %struct.Memory* %MEMORY.19)
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -44
  %456 = load i32, i32* %EAX.i15, align 4
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 3
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %455 to i32*
  store i32 %456, i32* %459, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_42fb32

block_.L_42fb32:                                  ; preds = %block_.L_42fb1e, %block_42fb19
  %460 = phi i64 [ %.pre41, %block_.L_42fb1e ], [ %448, %block_42fb19 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_42fb2a, %block_.L_42fb1e ], [ %MEMORY.19, %block_42fb19 ]
  %461 = add i64 %460, 5
  store i64 %461, i64* %3, align 8
  br label %block_.L_42fb37

block_.L_42fb37:                                  ; preds = %block_.L_42fb32, %block_.L_42faf7
  %462 = phi i64 [ %436, %block_.L_42faf7 ], [ %461, %block_.L_42fb32 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_42faf7 ], [ %MEMORY.20, %block_.L_42fb32 ]
  store i32 -1, i32* bitcast (%G_0x7ae530_type* @G_0x7ae530 to i32*), align 8
  %463 = load i64, i64* %6, align 8
  %464 = add i64 %463, 48
  store i64 %464, i64* %6, align 8
  %465 = icmp ugt i64 %463, -49
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = trunc i64 %464 to i32
  %468 = and i32 %467, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i64 %463, 16
  %474 = xor i64 %473, %464
  %475 = lshr i64 %474, 4
  %476 = trunc i64 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %27, align 1
  %478 = icmp eq i64 %464, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %30, align 1
  %480 = lshr i64 %464, 63
  %481 = trunc i64 %480 to i8
  store i8 %481, i8* %33, align 1
  %482 = lshr i64 %463, 63
  %483 = xor i64 %480, %482
  %484 = add nuw nsw i64 %483, %480
  %485 = icmp eq i64 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %39, align 1
  %487 = add i64 %462, 16
  store i64 %487, i64* %3, align 8
  %488 = add i64 %463, 56
  %489 = inttoptr i64 %464 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RBP.i, align 8
  store i64 %488, i64* %6, align 8
  %491 = add i64 %462, 17
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %488 to i64*
  %493 = load i64, i64* %492, align 8
  store i64 %493, i64* %3, align 8
  %494 = add i64 %463, 64
  store i64 %494, i64* %6, align 8
  ret %struct.Memory* %MEMORY.21
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
define %struct.Memory* @routine_movq__0xb8c050___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb8c050_type* @G__0xb8c050 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.buildSpiralOrder(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0x941128(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x941128_type* @G_0x941128 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f8b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 16
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 4
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
define %struct.Memory* @routine_jne_.L_42f89e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f8b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cb6f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cb6f_type* @G__0x57cb6f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42f8b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x919b80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x919b80_type* @G_0x919b80 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f8de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f8f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cb8d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cb8d_type* @G__0x57cb8d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42f8f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x92aa60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x92aa60_type* @G_0x92aa60 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f937(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f91e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f932(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cbaa___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cbaa_type* @G__0x57cbaa to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42f937(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x9440e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x9440e8_type* @G_0x9440e8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f95e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f972(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cb7a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cb7a_type* @G__0x57cb7a to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42f977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x7b1408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7b1408_type* @G_0x7b1408 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f9b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f99e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f9b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cbc7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cbc7_type* @G__0x57cbc7 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42f9b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x7c4a48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7c4a48_type* @G_0x7c4a48 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f9f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f9de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f9f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cbdd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cbdd_type* @G__0x57cbdd to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42f9f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x7c6d58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7c6d58_type* @G_0x7c6d58 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fa37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42fa1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fa32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cbb1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cbb1_type* @G__0x57cbb1 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42fa37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x7be180(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7be180_type* @G_0x7be180 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fa77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42fa5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fa72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cbf3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cbf3_type* @G__0x57cbf3 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42fa77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x869328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x869328_type* @G_0x869328 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fab7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42fa9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fab2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cc07___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cc07_type* @G__0x57cc07 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42fab7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x7b21d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7b21d0_type* @G_0x7b21d0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42faf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42fade(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42faf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cc23___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cc23_type* @G__0x57cc23 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42faf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x84b768(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x84b768_type* @G_0x84b768 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fb37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42fb1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fb32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fb37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__0x7ae530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 -1, i32* bitcast (%G_0x7ae530_type* @G_0x7ae530 to i32*), align 8
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
