; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x582d00_type = type <{ [8 x i8] }>
%G__0x582d3a_type = type <{ [8 x i8] }>
%G__0x582d63_type = type <{ [8 x i8] }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
%G__0xb01180_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
%G__0xb9a0a0_type = type <{ [8 x i8] }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
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
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G__0x582d00 = global %G__0x582d00_type zeroinitializer
@G__0x582d3a = global %G__0x582d3a_type zeroinitializer
@G__0x582d63 = global %G__0x582d63_type zeroinitializer
@G__0xafdfc0 = global %G__0xafdfc0_type zeroinitializer
@G__0xb01180 = global %G__0xb01180_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer
@G__0xb9a0a0 = global %G__0xb9a0a0_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_439550.find_eye_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431fb0.owl_attack_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432040.owl_defense_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423120.are_neighbor_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @find_more_owl_attack_and_defense_moves(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %18 to i32*
  %19 = add i64 %7, -12
  %20 = load i32, i32* %EDI.i, align 4
  %21 = add i64 %10, 13
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -32
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 7
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %30 = and i32 %29, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %35 = icmp eq i32 %29, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %15, align 1
  %37 = lshr i32 %29, 31
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v132 = select i1 %35, i64 14, i64 19
  %39 = add i64 %28, %.v132
  store i64 %39, i64* %3, align 8
  br i1 %35, label %block_47d193, label %block_.L_47d198

block_47d193:                                     ; preds = %entry
  %40 = add i64 %39, 25
  store i64 %40, i64* %3, align 8
  %.pre120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre121 = bitcast %union.anon* %.pre120 to i32*
  %.pre122 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %.pre123 = bitcast %union.anon* %.pre120 to i8*
  br label %block_.L_47d1ac

block_.L_47d198:                                  ; preds = %entry
  %RDI.i1173 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 ptrtoint (%G__0x582d00_type* @G__0x582d00 to i64), i64* %RDI.i1173, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i1171 = bitcast %union.anon* %41 to i8*
  store i8 0, i8* %AL.i1171, align 1
  %42 = add i64 %39, -177128
  %43 = add i64 %39, 17
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %43, i64* %46, align 8
  store i64 %45, i64* %6, align 8
  store i64 %42, i64* %3, align 8
  %call2_47d1a4 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %42, %struct.Memory* %2)
  %EAX.i1167 = bitcast %union.anon* %41 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -100
  %49 = load i32, i32* %EAX.i1167, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_47d1ac

block_.L_47d1ac:                                  ; preds = %block_.L_47d198, %block_47d193
  %AL.i608.pre-phi = phi i8* [ %AL.i1171, %block_.L_47d198 ], [ %.pre123, %block_47d193 ]
  %RDI.i687.pre-phi = phi i64* [ %RDI.i1173, %block_.L_47d198 ], [ %.pre122, %block_47d193 ]
  %EAX.i1071.pre-phi = phi i32* [ %EAX.i1167, %block_.L_47d198 ], [ %.pre121, %block_47d193 ]
  %53 = phi i64 [ %.pre, %block_.L_47d198 ], [ %40, %block_47d193 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_47d1a4, %block_.L_47d198 ], [ %2, %block_47d193 ]
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -8
  %56 = add i64 %53, 7
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  store i32 21, i32* %57, align 4
  %RAX.i1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_47d1b3

block_.L_47d1b3:                                  ; preds = %block_.L_47d820, %block_.L_47d1ac
  %59 = phi i64 [ %.pre99, %block_.L_47d1ac ], [ %2652, %block_.L_47d820 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_47d1ac ], [ %MEMORY.25, %block_.L_47d820 ]
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -8
  %62 = add i64 %59, 7
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, -400
  %66 = icmp ult i32 %64, 400
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %12, align 1
  %68 = and i32 %65, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %13, align 1
  %73 = xor i32 %64, 16
  %74 = xor i32 %73, %65
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %14, align 1
  %78 = icmp eq i32 %65, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %15, align 1
  %80 = lshr i32 %65, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %16, align 1
  %82 = lshr i32 %64, 31
  %83 = xor i32 %80, %82
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %17, align 1
  %87 = icmp ne i8 %81, 0
  %88 = xor i1 %87, %85
  %.v133 = select i1 %88, i64 13, i64 1659
  %89 = add i64 %59, %.v133
  store i64 %89, i64* %3, align 8
  br i1 %88, label %block_47d1c0, label %block_.L_47d82e

block_47d1c0:                                     ; preds = %block_.L_47d1b3
  %90 = add i64 %89, 4
  store i64 %90, i64* %3, align 8
  %91 = load i32, i32* %63, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %RAX.i1159, align 8
  %93 = add nsw i64 %92, 12099168
  %94 = add i64 %89, 12
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i8*
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  store i64 %97, i64* %RCX.i1157, align 8
  %98 = zext i8 %96 to i32
  %99 = add nsw i32 %98, -3
  %100 = icmp ult i8 %96, 3
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %12, align 1
  %102 = and i32 %99, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %13, align 1
  %107 = xor i32 %99, %98
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %14, align 1
  %111 = icmp eq i32 %99, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %15, align 1
  %113 = lshr i32 %99, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v154 = select i1 %111, i64 21, i64 26
  %115 = add i64 %89, %.v154
  store i64 %115, i64* %3, align 8
  br i1 %111, label %block_47d1d5, label %block_.L_47d1da

block_47d1d5:                                     ; preds = %block_47d1c0
  %116 = add i64 %115, 1611
  br label %block_.L_47d820

block_.L_47d1da:                                  ; preds = %block_47d1c0
  %117 = add i64 %60, -16
  %118 = add i64 %115, 7
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  store i32 0, i32* %119, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_47d1e1

block_.L_47d1e1:                                  ; preds = %block_.L_47d80d, %block_.L_47d1da
  %120 = phi i64 [ %.pre108, %block_.L_47d1da ], [ %2618, %block_.L_47d80d ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_47d1da ], [ %MEMORY.23, %block_.L_47d80d ]
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -16
  %123 = add i64 %120, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, -120
  %127 = icmp ult i32 %125, 120
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %12, align 1
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %13, align 1
  %134 = xor i32 %125, 16
  %135 = xor i32 %134, %126
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %14, align 1
  %139 = icmp eq i32 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %15, align 1
  %141 = lshr i32 %126, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %16, align 1
  %143 = lshr i32 %125, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %17, align 1
  %148 = icmp ne i8 %142, 0
  %149 = xor i1 %148, %146
  %.v155 = select i1 %149, i64 10, i64 1594
  %150 = add i64 %120, %.v155
  store i64 %150, i64* %3, align 8
  br i1 %149, label %block_47d1eb, label %block_.L_47d81b.loopexit

block_47d1eb:                                     ; preds = %block_.L_47d1e1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1159, align 8
  %151 = add i64 %121, -8
  %152 = add i64 %150, 14
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %155, 564
  store i64 %156, i64* %RCX.i1157, align 8
  %157 = lshr i64 %156, 63
  %158 = add i64 %156, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %158, i64* %RAX.i1159, align 8
  %159 = icmp ult i64 %158, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %160 = icmp ult i64 %158, %156
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %12, align 1
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 252
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %13, align 1
  %169 = xor i64 %156, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %170 = xor i64 %169, %158
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %14, align 1
  %174 = icmp eq i64 %158, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %15, align 1
  %176 = lshr i64 %158, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %16, align 1
  %178 = xor i64 %176, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %179 = xor i64 %176, %157
  %180 = add nuw nsw i64 %178, %179
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %17, align 1
  %183 = add i64 %150, 28
  store i64 %183, i64* %3, align 8
  %184 = load i32, i32* %124, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %RCX.i1157, align 8
  %186 = shl nsw i64 %185, 2
  %187 = add i64 %156, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %188 = add i64 %187, %186
  %189 = add i64 %150, 32
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RDX.i1132, align 8
  %193 = add i64 %121, -40
  %194 = add i64 %150, 35
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  store i32 %191, i32* %195, align 4
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -24
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 7
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %197 to i32*
  store i32 0, i32* %200, align 4
  %201 = load i64, i64* %RBP.i, align 8
  %202 = add i64 %201, -28
  %203 = load i64, i64* %3, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %202 to i32*
  store i32 0, i32* %205, align 4
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -40
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 4
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210, align 4
  store i8 0, i8* %12, align 1
  %212 = and i32 %211, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212)
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %217 = icmp eq i32 %211, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %15, align 1
  %219 = lshr i32 %211, 31
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %221 = icmp ne i8 %220, 0
  %.v74 = select i1 %221, i64 6, i64 11
  %222 = add i64 %209, %.v74
  store i64 %222, i64* %3, align 8
  br i1 %221, label %block_47d226, label %block_.L_47d22b

block_47d226:                                     ; preds = %block_47d1eb
  %223 = add i64 %222, 1525
  store i64 %223, i64* %3, align 8
  br label %block_.L_47d81b

block_.L_47d22b:                                  ; preds = %block_47d1eb
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %224 = add i64 %222, 14
  store i64 %224, i64* %3, align 8
  %225 = load i32, i32* %210, align 4
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %226, 12
  store i64 %227, i64* %RCX.i1157, align 8
  %228 = lshr i64 %227, 63
  %229 = add i64 %227, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %229, i64* %RDX.i1132, align 8
  %230 = icmp ult i64 %229, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %231 = icmp ult i64 %229, %227
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %12, align 1
  %234 = trunc i64 %229 to i32
  %235 = and i32 %234, 252
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %13, align 1
  %240 = xor i64 %227, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %241 = xor i64 %240, %229
  %242 = lshr i64 %241, 4
  %243 = trunc i64 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %14, align 1
  %245 = icmp eq i64 %229, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %15, align 1
  %247 = lshr i64 %229, 63
  %248 = trunc i64 %247 to i8
  store i8 %248, i8* %16, align 1
  %249 = xor i64 %247, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %250 = xor i64 %247, %228
  %251 = add nuw nsw i64 %249, %250
  %252 = icmp eq i64 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %17, align 1
  %254 = add i64 %227, add (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 4)
  %255 = add i64 %222, 27
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RSI.i1104, align 8
  %259 = add i64 %206, -44
  %260 = add i64 %222, 30
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  store i32 %257, i32* %261, align 4
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -40
  %264 = load i64, i64* %3, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = mul nsw i64 %268, 12
  store i64 %269, i64* %RCX.i1157, align 8
  %270 = lshr i64 %269, 63
  %271 = load i64, i64* %RAX.i1159, align 8
  %272 = add i64 %269, %271
  store i64 %272, i64* %RAX.i1159, align 8
  %273 = icmp ult i64 %272, %271
  %274 = icmp ult i64 %272, %269
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %12, align 1
  %277 = trunc i64 %272 to i32
  %278 = and i32 %277, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %13, align 1
  %283 = xor i64 %269, %271
  %284 = xor i64 %283, %272
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %14, align 1
  %288 = icmp eq i64 %272, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %15, align 1
  %290 = lshr i64 %272, 63
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %16, align 1
  %292 = lshr i64 %271, 63
  %293 = xor i64 %290, %292
  %294 = xor i64 %290, %270
  %295 = add nuw nsw i64 %293, %294
  %296 = icmp eq i64 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %17, align 1
  %298 = inttoptr i64 %272 to i32*
  %299 = add i64 %264, 14
  store i64 %299, i64* %3, align 8
  %300 = load i32, i32* %298, align 4
  %301 = add i32 %300, -44
  %302 = icmp ult i32 %300, 44
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %12, align 1
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %13, align 1
  %309 = xor i32 %301, %300
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %14, align 1
  %313 = icmp eq i32 %301, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %15, align 1
  %315 = lshr i32 %301, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %16, align 1
  %317 = lshr i32 %300, 31
  %318 = xor i32 %315, %317
  %319 = add nuw nsw i32 %318, %317
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %17, align 1
  %.v156 = select i1 %313, i64 50, i64 20
  %322 = add i64 %264, %.v156
  store i64 %322, i64* %3, align 8
  br i1 %313, label %block_.L_47d27b, label %block_47d25d

block_47d25d:                                     ; preds = %block_.L_47d22b
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -40
  %325 = add i64 %322, 14
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = mul nsw i64 %328, 12
  store i64 %329, i64* %RCX.i1157, align 8
  %330 = lshr i64 %329, 63
  %331 = add i64 %329, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %331, i64* %RAX.i1159, align 8
  %332 = icmp ult i64 %331, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %333 = icmp ult i64 %331, %329
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %12, align 1
  %336 = trunc i64 %331 to i32
  %337 = and i32 %336, 252
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %13, align 1
  %342 = xor i64 %329, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %343 = xor i64 %342, %331
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %14, align 1
  %347 = icmp eq i64 %331, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %15, align 1
  %349 = lshr i64 %331, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %16, align 1
  %351 = xor i64 %349, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %352 = xor i64 %349, %330
  %353 = add nuw nsw i64 %351, %352
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %17, align 1
  %356 = inttoptr i64 %331 to i32*
  %357 = add i64 %322, 24
  store i64 %357, i64* %3, align 8
  %358 = load i32, i32* %356, align 4
  %359 = add i32 %358, -46
  %360 = icmp ult i32 %358, 46
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %12, align 1
  %362 = and i32 %359, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %13, align 1
  %367 = xor i32 %359, %358
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %14, align 1
  %371 = icmp eq i32 %359, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %15, align 1
  %373 = lshr i32 %359, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %16, align 1
  %375 = lshr i32 %358, 31
  %376 = xor i32 %373, %375
  %377 = add nuw nsw i32 %376, %375
  %378 = icmp eq i32 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %17, align 1
  %.v157 = select i1 %371, i64 30, i64 41
  %380 = add i64 %322, %.v157
  store i64 %380, i64* %3, align 8
  br i1 %371, label %block_.L_47d27b, label %block_.L_47d286

block_.L_47d27b:                                  ; preds = %block_47d25d, %block_.L_47d22b
  %381 = phi i64 [ %380, %block_47d25d ], [ %322, %block_.L_47d22b ]
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -44
  %384 = add i64 %381, 3
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX.i1159, align 8
  %388 = add i64 %382, -24
  %389 = add i64 %381, 6
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  store i32 %386, i32* %390, align 4
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, 509
  br label %block_.L_47d47e

block_.L_47d286:                                  ; preds = %block_47d25d
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -40
  %395 = add i64 %380, 14
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = mul nsw i64 %398, 12
  store i64 %399, i64* %RCX.i1157, align 8
  %400 = lshr i64 %399, 63
  %401 = add i64 %399, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %401, i64* %RAX.i1159, align 8
  %402 = icmp ult i64 %401, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %403 = icmp ult i64 %401, %399
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %12, align 1
  %406 = trunc i64 %401 to i32
  %407 = and i32 %406, 252
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %13, align 1
  %412 = xor i64 %399, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %413 = xor i64 %412, %401
  %414 = lshr i64 %413, 4
  %415 = trunc i64 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %14, align 1
  %417 = icmp eq i64 %401, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %15, align 1
  %419 = lshr i64 %401, 63
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %16, align 1
  %421 = xor i64 %419, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %422 = xor i64 %419, %400
  %423 = add nuw nsw i64 %421, %422
  %424 = icmp eq i64 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %17, align 1
  %426 = inttoptr i64 %401 to i32*
  %427 = add i64 %380, 24
  store i64 %427, i64* %3, align 8
  %428 = load i32, i32* %426, align 4
  %429 = add i32 %428, -2
  %430 = icmp ult i32 %428, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %12, align 1
  %432 = and i32 %429, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %13, align 1
  %437 = xor i32 %429, %428
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %14, align 1
  %441 = icmp eq i32 %429, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %15, align 1
  %443 = lshr i32 %429, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %16, align 1
  %445 = lshr i32 %428, 31
  %446 = xor i32 %443, %445
  %447 = add nuw nsw i32 %446, %445
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %17, align 1
  %.v158 = select i1 %441, i64 180, i64 30
  %450 = add i64 %380, %.v158
  store i64 %450, i64* %3, align 8
  br i1 %441, label %block_.L_47d33a, label %block_47d2a4

block_47d2a4:                                     ; preds = %block_.L_47d286
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -40
  %453 = add i64 %450, 14
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = mul nsw i64 %456, 12
  store i64 %457, i64* %RCX.i1157, align 8
  %458 = lshr i64 %457, 63
  %459 = add i64 %457, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %459, i64* %RAX.i1159, align 8
  %460 = icmp ult i64 %459, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %461 = icmp ult i64 %459, %457
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %12, align 1
  %464 = trunc i64 %459 to i32
  %465 = and i32 %464, 252
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %13, align 1
  %470 = xor i64 %457, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %471 = xor i64 %470, %459
  %472 = lshr i64 %471, 4
  %473 = trunc i64 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %14, align 1
  %475 = icmp eq i64 %459, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %15, align 1
  %477 = lshr i64 %459, 63
  %478 = trunc i64 %477 to i8
  store i8 %478, i8* %16, align 1
  %479 = xor i64 %477, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %480 = xor i64 %477, %458
  %481 = add nuw nsw i64 %479, %480
  %482 = icmp eq i64 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %17, align 1
  %484 = inttoptr i64 %459 to i32*
  %485 = add i64 %450, 24
  store i64 %485, i64* %3, align 8
  %486 = load i32, i32* %484, align 4
  %487 = add i32 %486, -4
  %488 = icmp ult i32 %486, 4
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %12, align 1
  %490 = and i32 %487, 255
  %491 = tail call i32 @llvm.ctpop.i32(i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  store i8 %494, i8* %13, align 1
  %495 = xor i32 %487, %486
  %496 = lshr i32 %495, 4
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  store i8 %498, i8* %14, align 1
  %499 = icmp eq i32 %487, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %15, align 1
  %501 = lshr i32 %487, 31
  %502 = trunc i32 %501 to i8
  store i8 %502, i8* %16, align 1
  %503 = lshr i32 %486, 31
  %504 = xor i32 %501, %503
  %505 = add nuw nsw i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %17, align 1
  %.v159 = select i1 %499, i64 150, i64 30
  %508 = add i64 %450, %.v159
  store i64 %508, i64* %3, align 8
  br i1 %499, label %block_.L_47d33a, label %block_47d2c2

block_47d2c2:                                     ; preds = %block_47d2a4
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -40
  %511 = add i64 %508, 14
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  %515 = mul nsw i64 %514, 12
  store i64 %515, i64* %RCX.i1157, align 8
  %516 = lshr i64 %515, 63
  %517 = add i64 %515, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %517, i64* %RAX.i1159, align 8
  %518 = icmp ult i64 %517, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %519 = icmp ult i64 %517, %515
  %520 = or i1 %518, %519
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %12, align 1
  %522 = trunc i64 %517 to i32
  %523 = and i32 %522, 252
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %13, align 1
  %528 = xor i64 %515, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %529 = xor i64 %528, %517
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %14, align 1
  %533 = icmp eq i64 %517, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %15, align 1
  %535 = lshr i64 %517, 63
  %536 = trunc i64 %535 to i8
  store i8 %536, i8* %16, align 1
  %537 = xor i64 %535, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %538 = xor i64 %535, %516
  %539 = add nuw nsw i64 %537, %538
  %540 = icmp eq i64 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %17, align 1
  %542 = inttoptr i64 %517 to i32*
  %543 = add i64 %508, 24
  store i64 %543, i64* %3, align 8
  %544 = load i32, i32* %542, align 4
  %545 = add i32 %544, -6
  %546 = icmp ult i32 %544, 6
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %12, align 1
  %548 = and i32 %545, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %13, align 1
  %553 = xor i32 %545, %544
  %554 = lshr i32 %553, 4
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %14, align 1
  %557 = icmp eq i32 %545, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %15, align 1
  %559 = lshr i32 %545, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %16, align 1
  %561 = lshr i32 %544, 31
  %562 = xor i32 %559, %561
  %563 = add nuw nsw i32 %562, %561
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %17, align 1
  %.v160 = select i1 %557, i64 120, i64 30
  %566 = add i64 %508, %.v160
  store i64 %566, i64* %3, align 8
  br i1 %557, label %block_.L_47d33a, label %block_47d2e0

block_47d2e0:                                     ; preds = %block_47d2c2
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -40
  %569 = add i64 %566, 14
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  %573 = mul nsw i64 %572, 12
  store i64 %573, i64* %RCX.i1157, align 8
  %574 = lshr i64 %573, 63
  %575 = add i64 %573, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %575, i64* %RAX.i1159, align 8
  %576 = icmp ult i64 %575, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %577 = icmp ult i64 %575, %573
  %578 = or i1 %576, %577
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %12, align 1
  %580 = trunc i64 %575 to i32
  %581 = and i32 %580, 252
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %13, align 1
  %586 = xor i64 %573, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %587 = xor i64 %586, %575
  %588 = lshr i64 %587, 4
  %589 = trunc i64 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %14, align 1
  %591 = icmp eq i64 %575, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %15, align 1
  %593 = lshr i64 %575, 63
  %594 = trunc i64 %593 to i8
  store i8 %594, i8* %16, align 1
  %595 = xor i64 %593, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %596 = xor i64 %593, %574
  %597 = add nuw nsw i64 %595, %596
  %598 = icmp eq i64 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %17, align 1
  %600 = inttoptr i64 %575 to i32*
  %601 = add i64 %566, 24
  store i64 %601, i64* %3, align 8
  %602 = load i32, i32* %600, align 4
  %603 = add i32 %602, -8
  %604 = icmp ult i32 %602, 8
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %12, align 1
  %606 = and i32 %603, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %13, align 1
  %611 = xor i32 %603, %602
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %14, align 1
  %615 = icmp eq i32 %603, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %15, align 1
  %617 = lshr i32 %603, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %16, align 1
  %619 = lshr i32 %602, 31
  %620 = xor i32 %617, %619
  %621 = add nuw nsw i32 %620, %619
  %622 = icmp eq i32 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %17, align 1
  %.v161 = select i1 %615, i64 90, i64 30
  %624 = add i64 %566, %.v161
  store i64 %624, i64* %3, align 8
  br i1 %615, label %block_.L_47d33a, label %block_47d2fe

block_47d2fe:                                     ; preds = %block_47d2e0
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -40
  %627 = add i64 %624, 14
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = sext i32 %629 to i64
  %631 = mul nsw i64 %630, 12
  store i64 %631, i64* %RCX.i1157, align 8
  %632 = lshr i64 %631, 63
  %633 = add i64 %631, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %633, i64* %RAX.i1159, align 8
  %634 = icmp ult i64 %633, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %635 = icmp ult i64 %633, %631
  %636 = or i1 %634, %635
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %12, align 1
  %638 = trunc i64 %633 to i32
  %639 = and i32 %638, 252
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %13, align 1
  %644 = xor i64 %631, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %645 = xor i64 %644, %633
  %646 = lshr i64 %645, 4
  %647 = trunc i64 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %14, align 1
  %649 = icmp eq i64 %633, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %15, align 1
  %651 = lshr i64 %633, 63
  %652 = trunc i64 %651 to i8
  store i8 %652, i8* %16, align 1
  %653 = xor i64 %651, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %654 = xor i64 %651, %632
  %655 = add nuw nsw i64 %653, %654
  %656 = icmp eq i64 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %17, align 1
  %658 = inttoptr i64 %633 to i32*
  %659 = add i64 %624, 24
  store i64 %659, i64* %3, align 8
  %660 = load i32, i32* %658, align 4
  %661 = add i32 %660, -10
  %662 = icmp ult i32 %660, 10
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %12, align 1
  %664 = and i32 %661, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %13, align 1
  %669 = xor i32 %661, %660
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %14, align 1
  %673 = icmp eq i32 %661, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %15, align 1
  %675 = lshr i32 %661, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %16, align 1
  %677 = lshr i32 %660, 31
  %678 = xor i32 %675, %677
  %679 = add nuw nsw i32 %678, %677
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %17, align 1
  %.v162 = select i1 %673, i64 60, i64 30
  %682 = add i64 %624, %.v162
  store i64 %682, i64* %3, align 8
  br i1 %673, label %block_.L_47d33a, label %block_47d31c

block_47d31c:                                     ; preds = %block_47d2fe
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -40
  %685 = add i64 %682, 14
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = sext i32 %687 to i64
  %689 = mul nsw i64 %688, 12
  store i64 %689, i64* %RCX.i1157, align 8
  %690 = lshr i64 %689, 63
  %691 = add i64 %689, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %691, i64* %RAX.i1159, align 8
  %692 = icmp ult i64 %691, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %693 = icmp ult i64 %691, %689
  %694 = or i1 %692, %693
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %12, align 1
  %696 = trunc i64 %691 to i32
  %697 = and i32 %696, 252
  %698 = tail call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %13, align 1
  %702 = xor i64 %689, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %703 = xor i64 %702, %691
  %704 = lshr i64 %703, 4
  %705 = trunc i64 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %14, align 1
  %707 = icmp eq i64 %691, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %15, align 1
  %709 = lshr i64 %691, 63
  %710 = trunc i64 %709 to i8
  store i8 %710, i8* %16, align 1
  %711 = xor i64 %709, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %712 = xor i64 %709, %690
  %713 = add nuw nsw i64 %711, %712
  %714 = icmp eq i64 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %17, align 1
  %716 = inttoptr i64 %691 to i32*
  %717 = add i64 %682, 24
  store i64 %717, i64* %3, align 8
  %718 = load i32, i32* %716, align 4
  %719 = add i32 %718, -12
  %720 = icmp ult i32 %718, 12
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %12, align 1
  %722 = and i32 %719, 255
  %723 = tail call i32 @llvm.ctpop.i32(i32 %722)
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  store i8 %726, i8* %13, align 1
  %727 = xor i32 %719, %718
  %728 = lshr i32 %727, 4
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %14, align 1
  %731 = icmp eq i32 %719, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %15, align 1
  %733 = lshr i32 %719, 31
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* %16, align 1
  %735 = lshr i32 %718, 31
  %736 = xor i32 %733, %735
  %737 = add nuw nsw i32 %736, %735
  %738 = icmp eq i32 %737, 2
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %17, align 1
  %.v163 = select i1 %731, i64 30, i64 41
  %740 = add i64 %682, %.v163
  store i64 %740, i64* %3, align 8
  br i1 %731, label %block_.L_47d33a, label %block_.L_47d345

block_.L_47d33a:                                  ; preds = %block_47d31c, %block_47d2fe, %block_47d2e0, %block_47d2c2, %block_47d2a4, %block_.L_47d286
  %741 = phi i64 [ %740, %block_47d31c ], [ %682, %block_47d2fe ], [ %624, %block_47d2e0 ], [ %566, %block_47d2c2 ], [ %508, %block_47d2a4 ], [ %450, %block_.L_47d286 ]
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -44
  %744 = add i64 %741, 3
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i1159, align 8
  %748 = add i64 %742, -24
  %749 = add i64 %741, 6
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  store i32 %746, i32* %750, align 4
  %751 = load i64, i64* %3, align 8
  %752 = add i64 %751, 313
  br label %block_.L_47d479

block_.L_47d345:                                  ; preds = %block_47d31c
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -40
  %755 = add i64 %740, 14
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  %759 = mul nsw i64 %758, 12
  store i64 %759, i64* %RCX.i1157, align 8
  %760 = lshr i64 %759, 63
  %761 = add i64 %759, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %761, i64* %RAX.i1159, align 8
  %762 = icmp ult i64 %761, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %763 = icmp ult i64 %761, %759
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %12, align 1
  %766 = trunc i64 %761 to i32
  %767 = and i32 %766, 252
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %13, align 1
  %772 = xor i64 %759, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %773 = xor i64 %772, %761
  %774 = lshr i64 %773, 4
  %775 = trunc i64 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %14, align 1
  %777 = icmp eq i64 %761, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %15, align 1
  %779 = lshr i64 %761, 63
  %780 = trunc i64 %779 to i8
  store i8 %780, i8* %16, align 1
  %781 = xor i64 %779, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %782 = xor i64 %779, %760
  %783 = add nuw nsw i64 %781, %782
  %784 = icmp eq i64 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %17, align 1
  %786 = inttoptr i64 %761 to i32*
  %787 = add i64 %740, 24
  store i64 %787, i64* %3, align 8
  %788 = load i32, i32* %786, align 4
  %789 = add i32 %788, -54
  %790 = icmp ult i32 %788, 54
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %12, align 1
  %792 = and i32 %789, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %13, align 1
  %797 = xor i32 %788, 16
  %798 = xor i32 %797, %789
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %14, align 1
  %802 = icmp eq i32 %789, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %15, align 1
  %804 = lshr i32 %789, 31
  %805 = trunc i32 %804 to i8
  store i8 %805, i8* %16, align 1
  %806 = lshr i32 %788, 31
  %807 = xor i32 %804, %806
  %808 = add nuw nsw i32 %807, %806
  %809 = icmp eq i32 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %17, align 1
  %.v164 = select i1 %802, i64 30, i64 164
  %811 = add i64 %740, %.v164
  store i64 %811, i64* %3, align 8
  br i1 %802, label %block_47d363, label %block_.L_47d3e9

block_47d363:                                     ; preds = %block_.L_47d345
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -44
  %814 = add i64 %811, 4
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = sext i32 %816 to i64
  store i64 %817, i64* %RAX.i1159, align 8
  %818 = shl nsw i64 %817, 2
  %819 = add nsw i64 %818, 12105088
  %820 = add i64 %811, 11
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RCX.i1157, align 8
  %824 = add i64 %812, -48
  %825 = add i64 %811, 14
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  store i32 %822, i32* %826, align 4
  %827 = load i64, i64* %RBP.i, align 8
  %828 = add i64 %827, -44
  %829 = load i64, i64* %3, align 8
  %830 = add i64 %829, 4
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %828 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = sext i32 %832 to i64
  store i64 %833, i64* %RAX.i1159, align 8
  %834 = shl nsw i64 %833, 2
  %835 = add nsw i64 %834, 11538080
  %836 = add i64 %829, 11
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RCX.i1157, align 8
  %840 = add i64 %827, -52
  %841 = add i64 %829, 14
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  store i32 %838, i32* %842, align 4
  %843 = load i64, i64* %RBP.i, align 8
  %844 = add i64 %843, -52
  %845 = load i64, i64* %3, align 8
  %846 = add i64 %845, 4
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = add i32 %848, -1
  %850 = icmp eq i32 %848, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %12, align 1
  %852 = and i32 %849, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %13, align 1
  %857 = xor i32 %849, %848
  %858 = lshr i32 %857, 4
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  store i8 %860, i8* %14, align 1
  %861 = icmp eq i32 %849, 0
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %15, align 1
  %863 = lshr i32 %849, 31
  %864 = trunc i32 %863 to i8
  store i8 %864, i8* %16, align 1
  %865 = lshr i32 %848, 31
  %866 = xor i32 %863, %865
  %867 = add nuw nsw i32 %866, %865
  %868 = icmp eq i32 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %17, align 1
  %.v189 = select i1 %861, i64 10, i64 50
  %870 = add i64 %845, %.v189
  %871 = add i64 %870, 10
  store i64 %871, i64* %3, align 8
  br i1 %861, label %block_47d389, label %block_.L_47d3b1

block_47d389:                                     ; preds = %block_47d363
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RSI.i1104, align 8
  store i64 1, i64* %RAX.i1159, align 8
  %872 = add i64 %843, -24
  store i64 %872, i64* %RCX.i1157, align 8
  %873 = add i64 %843, -48
  %874 = add i64 %870, 22
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RDI.i687.pre-phi, align 8
  store i64 1, i64* %RDX.i1132, align 8
  store i64 1, i64* %58, align 8
  %878 = add i64 %870, -278073
  %879 = add i64 %870, 32
  %880 = load i64, i64* %6, align 8
  %881 = add i64 %880, -8
  %882 = inttoptr i64 %881 to i64*
  store i64 %879, i64* %882, align 8
  store i64 %881, i64* %6, align 8
  store i64 %878, i64* %3, align 8
  %call2_47d3a4 = tail call %struct.Memory* @sub_439550.find_eye_dragons(%struct.State* nonnull %0, i64 %878, %struct.Memory* %MEMORY.2)
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -104
  %885 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %886 = load i64, i64* %3, align 8
  %887 = add i64 %886, 3
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %884 to i32*
  store i32 %885, i32* %888, align 4
  %889 = load i64, i64* %3, align 8
  %890 = add i64 %889, 41
  store i64 %890, i64* %3, align 8
  br label %block_.L_47d3d5

block_.L_47d3b1:                                  ; preds = %block_47d363
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RSI.i1104, align 8
  store i64 2, i64* %RDX.i1132, align 8
  %891 = add i64 %843, -24
  store i64 %891, i64* %RCX.i1157, align 8
  store i64 1, i64* %58, align 8
  %892 = add i64 %843, -48
  %893 = add i64 %870, 28
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RDI.i687.pre-phi, align 8
  %897 = add i64 %870, -278113
  %898 = add i64 %870, 33
  %899 = load i64, i64* %6, align 8
  %900 = add i64 %899, -8
  %901 = inttoptr i64 %900 to i64*
  store i64 %898, i64* %901, align 8
  store i64 %900, i64* %6, align 8
  store i64 %897, i64* %3, align 8
  %call2_47d3cd = tail call %struct.Memory* @sub_439550.find_eye_dragons(%struct.State* nonnull %0, i64 %897, %struct.Memory* %MEMORY.2)
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -108
  %904 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %905 = load i64, i64* %3, align 8
  %906 = add i64 %905, 3
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %903 to i32*
  store i32 %904, i32* %907, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_47d3d5

block_.L_47d3d5:                                  ; preds = %block_.L_47d3b1, %block_47d389
  %908 = phi i64 [ %.pre109, %block_.L_47d3b1 ], [ %890, %block_47d389 ]
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -24
  %911 = add i64 %908, 4
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  store i8 0, i8* %12, align 1
  %914 = and i32 %913, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %919 = icmp eq i32 %913, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %15, align 1
  %921 = lshr i32 %913, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v190 = select i1 %919, i64 10, i64 15
  %923 = add i64 %908, %.v190
  store i64 %923, i64* %3, align 8
  br i1 %919, label %block_47d3df, label %block_.L_47d3e4

block_47d3df:                                     ; preds = %block_.L_47d3d5
  %924 = add i64 %923, 1070
  br label %block_.L_47d80d

block_.L_47d3e4:                                  ; preds = %block_.L_47d3d5
  %925 = add i64 %923, 144
  br label %block_.L_47d474

block_.L_47d3e9:                                  ; preds = %block_.L_47d345
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -40
  %928 = add i64 %811, 14
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = sext i32 %930 to i64
  %932 = mul nsw i64 %931, 12
  store i64 %932, i64* %RCX.i1157, align 8
  %933 = lshr i64 %932, 63
  %934 = add i64 %932, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %934, i64* %RAX.i1159, align 8
  %935 = icmp ult i64 %934, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %936 = icmp ult i64 %934, %932
  %937 = or i1 %935, %936
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %12, align 1
  %939 = trunc i64 %934 to i32
  %940 = and i32 %939, 252
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %13, align 1
  %945 = xor i64 %932, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %946 = xor i64 %945, %934
  %947 = lshr i64 %946, 4
  %948 = trunc i64 %947 to i8
  %949 = and i8 %948, 1
  store i8 %949, i8* %14, align 1
  %950 = icmp eq i64 %934, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %15, align 1
  %952 = lshr i64 %934, 63
  %953 = trunc i64 %952 to i8
  store i8 %953, i8* %16, align 1
  %954 = xor i64 %952, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %955 = xor i64 %952, %933
  %956 = add nuw nsw i64 %954, %955
  %957 = icmp eq i64 %956, 2
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %17, align 1
  %959 = inttoptr i64 %934 to i32*
  %960 = add i64 %811, 24
  store i64 %960, i64* %3, align 8
  %961 = load i32, i32* %959, align 4
  %962 = add i32 %961, -14
  %963 = icmp ult i32 %961, 14
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %12, align 1
  %965 = and i32 %962, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %13, align 1
  %970 = xor i32 %962, %961
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %14, align 1
  %974 = icmp eq i32 %962, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %15, align 1
  %976 = lshr i32 %962, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %16, align 1
  %978 = lshr i32 %961, 31
  %979 = xor i32 %976, %978
  %980 = add nuw nsw i32 %979, %978
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %17, align 1
  %.v165 = select i1 %974, i64 30, i64 129
  %983 = add i64 %811, %.v165
  store i64 %983, i64* %3, align 8
  br i1 %974, label %block_47d407, label %block_.L_47d46a

block_47d407:                                     ; preds = %block_.L_47d3e9
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1159, align 8
  %984 = load i64, i64* %RBP.i, align 8
  %985 = add i64 %984, -44
  %986 = add i64 %983, 14
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = sext i32 %988 to i64
  store i64 %989, i64* %RCX.i1157, align 8
  %990 = shl nsw i64 %989, 2
  %991 = add nsw i64 %990, 12099600
  %992 = add i64 %983, 21
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RDX.i1132, align 8
  %996 = add i64 %984, -56
  %997 = add i64 %983, 24
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  store i32 %994, i32* %998, align 4
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -44
  %1001 = load i64, i64* %3, align 8
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1000 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = sext i32 %1004 to i64
  store i64 %1005, i64* %RCX.i1157, align 8
  %1006 = shl nsw i64 %1005, 2
  %1007 = add nsw i64 %1006, 11555248
  %1008 = add i64 %1001, 11
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RDX.i1132, align 8
  %1012 = add i64 %999, -60
  %1013 = add i64 %1001, 14
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  store i32 %1010, i32* %1014, align 4
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -56
  %1017 = load i64, i64* %3, align 8
  %1018 = add i64 %1017, 4
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1016 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = mul nsw i64 %1021, 76
  store i64 %1022, i64* %RCX.i1157, align 8
  %1023 = lshr i64 %1022, 63
  %1024 = load i64, i64* %RAX.i1159, align 8
  %1025 = add i64 %1022, %1024
  store i64 %1025, i64* %RSI.i1104, align 8
  %1026 = icmp ult i64 %1025, %1024
  %1027 = icmp ult i64 %1025, %1022
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %12, align 1
  %1030 = trunc i64 %1025 to i32
  %1031 = and i32 %1030, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %13, align 1
  %1036 = xor i64 %1022, %1024
  %1037 = xor i64 %1036, %1025
  %1038 = lshr i64 %1037, 4
  %1039 = trunc i64 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %14, align 1
  %1041 = icmp eq i64 %1025, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %15, align 1
  %1043 = lshr i64 %1025, 63
  %1044 = trunc i64 %1043 to i8
  store i8 %1044, i8* %16, align 1
  %1045 = lshr i64 %1024, 63
  %1046 = xor i64 %1043, %1045
  %1047 = xor i64 %1043, %1023
  %1048 = add nuw nsw i64 %1046, %1047
  %1049 = icmp eq i64 %1048, 2
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %17, align 1
  %1051 = add i64 %1025, 8
  %1052 = add i64 %1017, 17
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RDX.i1132, align 8
  %1056 = add i64 %1015, -24
  %1057 = add i64 %1017, 20
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  store i32 %1054, i32* %1058, align 4
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -60
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, 4
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = sext i32 %1064 to i64
  %1066 = mul nsw i64 %1065, 76
  store i64 %1066, i64* %RCX.i1157, align 8
  %1067 = lshr i64 %1066, 63
  %1068 = load i64, i64* %RAX.i1159, align 8
  %1069 = add i64 %1066, %1068
  store i64 %1069, i64* %RAX.i1159, align 8
  %1070 = icmp ult i64 %1069, %1068
  %1071 = icmp ult i64 %1069, %1066
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %12, align 1
  %1074 = trunc i64 %1069 to i32
  %1075 = and i32 %1074, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %13, align 1
  %1080 = xor i64 %1066, %1068
  %1081 = xor i64 %1080, %1069
  %1082 = lshr i64 %1081, 4
  %1083 = trunc i64 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %14, align 1
  %1085 = icmp eq i64 %1069, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %15, align 1
  %1087 = lshr i64 %1069, 63
  %1088 = trunc i64 %1087 to i8
  store i8 %1088, i8* %16, align 1
  %1089 = lshr i64 %1068, 63
  %1090 = xor i64 %1087, %1089
  %1091 = xor i64 %1087, %1067
  %1092 = add nuw nsw i64 %1090, %1091
  %1093 = icmp eq i64 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %17, align 1
  %1095 = add i64 %1069, 8
  %1096 = add i64 %1061, 14
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RDX.i1132, align 8
  %1100 = add i64 %1059, -28
  %1101 = add i64 %1061, 17
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  store i32 %1098, i32* %1102, align 4
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -24
  %1105 = load i64, i64* %3, align 8
  %1106 = add i64 %1105, 3
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1104 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RDX.i1132, align 8
  %1110 = add i64 %1103, -28
  %1111 = add i64 %1105, 6
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sub i32 %1108, %1113
  %1115 = icmp ult i32 %1108, %1113
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %12, align 1
  %1117 = and i32 %1114, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %13, align 1
  %1122 = xor i32 %1113, %1108
  %1123 = xor i32 %1122, %1114
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  store i8 %1126, i8* %14, align 1
  %1127 = icmp eq i32 %1114, 0
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %15, align 1
  %1129 = lshr i32 %1114, 31
  %1130 = trunc i32 %1129 to i8
  store i8 %1130, i8* %16, align 1
  %1131 = lshr i32 %1108, 31
  %1132 = lshr i32 %1113, 31
  %1133 = xor i32 %1132, %1131
  %1134 = xor i32 %1129, %1131
  %1135 = add nuw nsw i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %17, align 1
  %.v166 = select i1 %1127, i64 12, i64 19
  %1138 = add i64 %1105, %.v166
  store i64 %1138, i64* %3, align 8
  br i1 %1127, label %block_47d45e, label %block_.L_47d465

block_47d45e:                                     ; preds = %block_47d407
  %1139 = add i64 %1138, 7
  store i64 %1139, i64* %3, align 8
  store i32 0, i32* %1112, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_47d465

block_.L_47d465:                                  ; preds = %block_47d407, %block_47d45e
  %1140 = phi i64 [ %.pre110, %block_47d45e ], [ %1138, %block_47d407 ]
  %1141 = add i64 %1140, 15
  store i64 %1141, i64* %3, align 8
  br label %block_.L_47d474

block_.L_47d46a:                                  ; preds = %block_.L_47d3e9
  %1142 = add i64 %983, 931
  %.pre112 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47d80d

block_.L_47d474:                                  ; preds = %block_.L_47d465, %block_.L_47d3e4
  %storemerge71 = phi i64 [ %925, %block_.L_47d3e4 ], [ %1141, %block_.L_47d465 ]
  %1143 = add i64 %storemerge71, 5
  store i64 %1143, i64* %3, align 8
  br label %block_.L_47d479

block_.L_47d479:                                  ; preds = %block_.L_47d474, %block_.L_47d33a
  %storemerge70 = phi i64 [ %752, %block_.L_47d33a ], [ %1143, %block_.L_47d474 ]
  %1144 = add i64 %storemerge70, 5
  store i64 %1144, i64* %3, align 8
  br label %block_.L_47d47e

block_.L_47d47e:                                  ; preds = %block_.L_47d479, %block_.L_47d27b
  %storemerge69 = phi i64 [ %392, %block_.L_47d27b ], [ %1144, %block_.L_47d479 ]
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -20
  %1147 = add i64 %storemerge69, 7
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  store i32 0, i32* %1148, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_47d485

block_.L_47d485:                                  ; preds = %block_.L_47d7fa, %block_.L_47d47e
  %1149 = phi i64 [ %.pre111, %block_.L_47d47e ], [ %2586, %block_.L_47d7fa ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.2, %block_.L_47d47e ], [ %MEMORY.22, %block_.L_47d7fa ]
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -20
  %1152 = add i64 %1149, 4
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = add i32 %1154, -2
  %1156 = icmp ult i32 %1154, 2
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %12, align 1
  %1158 = and i32 %1155, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %13, align 1
  %1163 = xor i32 %1155, %1154
  %1164 = lshr i32 %1163, 4
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %14, align 1
  %1167 = icmp eq i32 %1155, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %15, align 1
  %1169 = lshr i32 %1155, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %16, align 1
  %1171 = lshr i32 %1154, 31
  %1172 = xor i32 %1169, %1171
  %1173 = add nuw nsw i32 %1172, %1171
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %17, align 1
  %1176 = icmp ne i8 %1170, 0
  %1177 = xor i1 %1176, %1174
  %.v167 = select i1 %1177, i64 10, i64 899
  %1178 = add i64 %1149, %.v167
  store i64 %1178, i64* %3, align 8
  br i1 %1177, label %block_47d48f, label %block_.L_47d808

block_47d48f:                                     ; preds = %block_.L_47d485
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %3, align 8
  %1180 = load i32, i32* %1153, align 4
  store i8 0, i8* %12, align 1
  %1181 = and i32 %1180, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1186 = icmp eq i32 %1180, 0
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %15, align 1
  %1188 = lshr i32 %1180, 31
  %1189 = trunc i32 %1188 to i8
  store i8 %1189, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v168 = select i1 %1186, i64 10, i64 21
  %1190 = add i64 %1178, %.v168
  store i64 %1190, i64* %3, align 8
  br i1 %1186, label %block_47d499, label %block_.L_47d4a4

block_47d499:                                     ; preds = %block_47d48f
  %1191 = add i64 %1150, -24
  %1192 = add i64 %1190, 3
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RAX.i1159, align 8
  %1196 = add i64 %1150, -32
  %1197 = add i64 %1190, 6
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  store i32 %1194, i32* %1198, align 4
  %1199 = load i64, i64* %3, align 8
  %1200 = add i64 %1199, 11
  store i64 %1200, i64* %3, align 8
  br label %block_.L_47d4aa

block_.L_47d4a4:                                  ; preds = %block_47d48f
  %1201 = add i64 %1150, -28
  %1202 = add i64 %1190, 3
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RAX.i1159, align 8
  %1206 = add i64 %1150, -32
  %1207 = add i64 %1190, 6
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  store i32 %1204, i32* %1208, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_47d4aa

block_.L_47d4aa:                                  ; preds = %block_.L_47d4a4, %block_47d499
  %1209 = phi i64 [ %.pre113, %block_.L_47d4a4 ], [ %1200, %block_47d499 ]
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -32
  %1212 = add i64 %1209, 4
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  store i8 0, i8* %12, align 1
  %1215 = and i32 %1214, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1220 = icmp eq i32 %1214, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %15, align 1
  %1222 = lshr i32 %1214, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v169 = select i1 %1220, i64 10, i64 15
  %1224 = add i64 %1209, %.v169
  store i64 %1224, i64* %3, align 8
  br i1 %1220, label %block_47d4b4, label %block_.L_47d4b9

block_47d4b4:                                     ; preds = %block_.L_47d4aa
  %1225 = add i64 %1224, 838
  br label %block_.L_47d7fa

block_.L_47d4b9:                                  ; preds = %block_.L_47d4aa
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1159, align 8
  %1226 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1226, i64* %RCX.i1157, align 8
  %1227 = add i64 %1224, 22
  store i64 %1227, i64* %3, align 8
  %1228 = load i32, i32* %1213, align 4
  %1229 = sext i32 %1228 to i64
  %1230 = mul nsw i64 %1229, 76
  store i64 %1230, i64* %RDX.i1132, align 8
  %1231 = lshr i64 %1230, 63
  %1232 = add i64 %1230, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1232, i64* %RAX.i1159, align 8
  %1233 = icmp ult i64 %1232, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1234 = icmp ult i64 %1232, %1230
  %1235 = or i1 %1233, %1234
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %12, align 1
  %1237 = trunc i64 %1232 to i32
  %1238 = and i32 %1237, 252
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %13, align 1
  %1243 = xor i64 %1230, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1244 = xor i64 %1243, %1232
  %1245 = lshr i64 %1244, 4
  %1246 = trunc i64 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %14, align 1
  %1248 = icmp eq i64 %1232, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %15, align 1
  %1250 = lshr i64 %1232, 63
  %1251 = trunc i64 %1250 to i8
  store i8 %1251, i8* %16, align 1
  %1252 = xor i64 %1250, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1253 = xor i64 %1250, %1231
  %1254 = add nuw nsw i64 %1252, %1253
  %1255 = icmp eq i64 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %17, align 1
  %1257 = add i64 %1230, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1258 = add i64 %1224, 33
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = mul nsw i64 %1261, 104
  store i64 %1262, i64* %RAX.i1159, align 8
  %1263 = lshr i64 %1262, 63
  %1264 = add i64 %1262, %1226
  store i64 %1264, i64* %RCX.i1157, align 8
  %1265 = icmp ult i64 %1264, %1226
  %1266 = icmp ult i64 %1264, %1262
  %1267 = or i1 %1265, %1266
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %12, align 1
  %1269 = trunc i64 %1264 to i32
  %1270 = and i32 %1269, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %13, align 1
  %1275 = xor i64 %1262, %1226
  %1276 = xor i64 %1275, %1264
  %1277 = lshr i64 %1276, 4
  %1278 = trunc i64 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %14, align 1
  %1280 = icmp eq i64 %1264, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %15, align 1
  %1282 = lshr i64 %1264, 63
  %1283 = trunc i64 %1282 to i8
  store i8 %1283, i8* %16, align 1
  %1284 = lshr i64 %1226, 63
  %1285 = xor i64 %1282, %1284
  %1286 = xor i64 %1282, %1263
  %1287 = add nuw nsw i64 %1285, %1286
  %1288 = icmp eq i64 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %17, align 1
  %1290 = add i64 %1264, 60
  %1291 = add i64 %1224, 44
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i32*
  %1293 = load i32, i32* %1292, align 4
  %1294 = add i32 %1293, -5
  %1295 = icmp ult i32 %1293, 5
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %12, align 1
  %1297 = and i32 %1294, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %13, align 1
  %1302 = xor i32 %1294, %1293
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %14, align 1
  %1306 = icmp eq i32 %1294, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %15, align 1
  %1308 = lshr i32 %1294, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %16, align 1
  %1310 = lshr i32 %1293, 31
  %1311 = xor i32 %1308, %1310
  %1312 = add nuw nsw i32 %1311, %1310
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %17, align 1
  %.v170 = select i1 %1306, i64 50, i64 55
  %1315 = add i64 %1224, %.v170
  store i64 %1315, i64* %3, align 8
  br i1 %1306, label %block_47d4eb, label %block_.L_47d4f0

block_47d4eb:                                     ; preds = %block_.L_47d4b9
  %1316 = add i64 %1315, 783
  br label %block_.L_47d7fa

block_.L_47d4f0:                                  ; preds = %block_.L_47d4b9
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1159, align 8
  %1317 = load i64, i64* %RBP.i, align 8
  %1318 = add i64 %1317, -32
  %1319 = add i64 %1315, 14
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = sext i32 %1321 to i64
  %1323 = mul nsw i64 %1322, 76
  store i64 %1323, i64* %RCX.i1157, align 8
  %1324 = lshr i64 %1323, 63
  %1325 = add i64 %1323, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1325, i64* %RAX.i1159, align 8
  %1326 = icmp ult i64 %1325, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1327 = icmp ult i64 %1325, %1323
  %1328 = or i1 %1326, %1327
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %12, align 1
  %1330 = trunc i64 %1325 to i32
  %1331 = and i32 %1330, 252
  %1332 = tail call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  store i8 %1335, i8* %13, align 1
  %1336 = xor i64 %1323, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1337 = xor i64 %1336, %1325
  %1338 = lshr i64 %1337, 4
  %1339 = trunc i64 %1338 to i8
  %1340 = and i8 %1339, 1
  store i8 %1340, i8* %14, align 1
  %1341 = icmp eq i64 %1325, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %15, align 1
  %1343 = lshr i64 %1325, 63
  %1344 = trunc i64 %1343 to i8
  store i8 %1344, i8* %16, align 1
  %1345 = xor i64 %1343, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1346 = xor i64 %1343, %1324
  %1347 = add nuw nsw i64 %1345, %1346
  %1348 = icmp eq i64 %1347, 2
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %17, align 1
  %1350 = add i64 %1323, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %1351 = add i64 %1315, 25
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = add i32 %1353, -2
  %1355 = icmp ult i32 %1353, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %12, align 1
  %1357 = and i32 %1354, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %13, align 1
  %1362 = xor i32 %1354, %1353
  %1363 = lshr i32 %1362, 4
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  store i8 %1365, i8* %14, align 1
  %1366 = icmp eq i32 %1354, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %15, align 1
  %1368 = lshr i32 %1354, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %16, align 1
  %1370 = lshr i32 %1353, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1370
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %17, align 1
  %.v171 = select i1 %1366, i64 36, i64 31
  %1375 = add i64 %1315, %.v171
  store i64 %1375, i64* %3, align 8
  br i1 %1366, label %block_.L_47d514, label %block_47d50f

block_47d50f:                                     ; preds = %block_.L_47d4f0
  %1376 = add i64 %1375, 747
  br label %block_.L_47d7fa

block_.L_47d514:                                  ; preds = %block_.L_47d4f0
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -40
  %1379 = add i64 %1375, 14
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = sext i32 %1381 to i64
  %1383 = mul nsw i64 %1382, 12
  store i64 %1383, i64* %RCX.i1157, align 8
  %1384 = lshr i64 %1383, 63
  %1385 = add i64 %1383, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1385, i64* %RAX.i1159, align 8
  %1386 = icmp ult i64 %1385, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1387 = icmp ult i64 %1385, %1383
  %1388 = or i1 %1386, %1387
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %12, align 1
  %1390 = trunc i64 %1385 to i32
  %1391 = and i32 %1390, 252
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %13, align 1
  %1396 = xor i64 %1383, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1397 = xor i64 %1396, %1385
  %1398 = lshr i64 %1397, 4
  %1399 = trunc i64 %1398 to i8
  %1400 = and i8 %1399, 1
  store i8 %1400, i8* %14, align 1
  %1401 = icmp eq i64 %1385, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %15, align 1
  %1403 = lshr i64 %1385, 63
  %1404 = trunc i64 %1403 to i8
  store i8 %1404, i8* %16, align 1
  %1405 = xor i64 %1403, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1406 = xor i64 %1403, %1384
  %1407 = add nuw nsw i64 %1405, %1406
  %1408 = icmp eq i64 %1407, 2
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %17, align 1
  %1410 = inttoptr i64 %1385 to i32*
  %1411 = add i64 %1375, 24
  store i64 %1411, i64* %3, align 8
  %1412 = load i32, i32* %1410, align 4
  %1413 = add i32 %1412, -44
  %1414 = icmp ult i32 %1412, 44
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %12, align 1
  %1416 = and i32 %1413, 255
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416)
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %13, align 1
  %1421 = xor i32 %1413, %1412
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  store i8 %1424, i8* %14, align 1
  %1425 = icmp eq i32 %1413, 0
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %15, align 1
  %1427 = lshr i32 %1413, 31
  %1428 = trunc i32 %1427 to i8
  store i8 %1428, i8* %16, align 1
  %1429 = lshr i32 %1412, 31
  %1430 = xor i32 %1427, %1429
  %1431 = add nuw nsw i32 %1430, %1429
  %1432 = icmp eq i32 %1431, 2
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %17, align 1
  %.v172 = select i1 %1425, i64 178, i64 30
  %1434 = add i64 %1375, %.v172
  store i64 %1434, i64* %3, align 8
  br i1 %1425, label %block_.L_47d5c6, label %block_47d532

block_47d532:                                     ; preds = %block_.L_47d514
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -40
  %1437 = add i64 %1434, 14
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = sext i32 %1439 to i64
  %1441 = mul nsw i64 %1440, 12
  store i64 %1441, i64* %RCX.i1157, align 8
  %1442 = lshr i64 %1441, 63
  %1443 = add i64 %1441, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1443, i64* %RAX.i1159, align 8
  %1444 = icmp ult i64 %1443, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1445 = icmp ult i64 %1443, %1441
  %1446 = or i1 %1444, %1445
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %12, align 1
  %1448 = trunc i64 %1443 to i32
  %1449 = and i32 %1448, 252
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %13, align 1
  %1454 = xor i64 %1441, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1455 = xor i64 %1454, %1443
  %1456 = lshr i64 %1455, 4
  %1457 = trunc i64 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %14, align 1
  %1459 = icmp eq i64 %1443, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %15, align 1
  %1461 = lshr i64 %1443, 63
  %1462 = trunc i64 %1461 to i8
  store i8 %1462, i8* %16, align 1
  %1463 = xor i64 %1461, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1464 = xor i64 %1461, %1442
  %1465 = add nuw nsw i64 %1463, %1464
  %1466 = icmp eq i64 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %17, align 1
  %1468 = inttoptr i64 %1443 to i32*
  %1469 = add i64 %1434, 24
  store i64 %1469, i64* %3, align 8
  %1470 = load i32, i32* %1468, align 4
  %1471 = add i32 %1470, -2
  %1472 = icmp ult i32 %1470, 2
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %12, align 1
  %1474 = and i32 %1471, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %13, align 1
  %1479 = xor i32 %1471, %1470
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %14, align 1
  %1483 = icmp eq i32 %1471, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %15, align 1
  %1485 = lshr i32 %1471, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %16, align 1
  %1487 = lshr i32 %1470, 31
  %1488 = xor i32 %1485, %1487
  %1489 = add nuw nsw i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %17, align 1
  %.v173 = select i1 %1483, i64 148, i64 30
  %1492 = add i64 %1434, %.v173
  store i64 %1492, i64* %3, align 8
  br i1 %1483, label %block_.L_47d5c6, label %block_47d550

block_47d550:                                     ; preds = %block_47d532
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1493 = load i64, i64* %RBP.i, align 8
  %1494 = add i64 %1493, -40
  %1495 = add i64 %1492, 14
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = sext i32 %1497 to i64
  %1499 = mul nsw i64 %1498, 12
  store i64 %1499, i64* %RCX.i1157, align 8
  %1500 = lshr i64 %1499, 63
  %1501 = add i64 %1499, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1501, i64* %RAX.i1159, align 8
  %1502 = icmp ult i64 %1501, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1503 = icmp ult i64 %1501, %1499
  %1504 = or i1 %1502, %1503
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %12, align 1
  %1506 = trunc i64 %1501 to i32
  %1507 = and i32 %1506, 252
  %1508 = tail call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  store i8 %1511, i8* %13, align 1
  %1512 = xor i64 %1499, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1513 = xor i64 %1512, %1501
  %1514 = lshr i64 %1513, 4
  %1515 = trunc i64 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %14, align 1
  %1517 = icmp eq i64 %1501, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %15, align 1
  %1519 = lshr i64 %1501, 63
  %1520 = trunc i64 %1519 to i8
  store i8 %1520, i8* %16, align 1
  %1521 = xor i64 %1519, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1522 = xor i64 %1519, %1500
  %1523 = add nuw nsw i64 %1521, %1522
  %1524 = icmp eq i64 %1523, 2
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %17, align 1
  %1526 = inttoptr i64 %1501 to i32*
  %1527 = add i64 %1492, 24
  store i64 %1527, i64* %3, align 8
  %1528 = load i32, i32* %1526, align 4
  %1529 = add i32 %1528, -4
  %1530 = icmp ult i32 %1528, 4
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %12, align 1
  %1532 = and i32 %1529, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %13, align 1
  %1537 = xor i32 %1529, %1528
  %1538 = lshr i32 %1537, 4
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %14, align 1
  %1541 = icmp eq i32 %1529, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %15, align 1
  %1543 = lshr i32 %1529, 31
  %1544 = trunc i32 %1543 to i8
  store i8 %1544, i8* %16, align 1
  %1545 = lshr i32 %1528, 31
  %1546 = xor i32 %1543, %1545
  %1547 = add nuw nsw i32 %1546, %1545
  %1548 = icmp eq i32 %1547, 2
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %17, align 1
  %.v174 = select i1 %1541, i64 118, i64 30
  %1550 = add i64 %1492, %.v174
  store i64 %1550, i64* %3, align 8
  br i1 %1541, label %block_.L_47d5c6, label %block_47d56e

block_47d56e:                                     ; preds = %block_47d550
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -40
  %1553 = add i64 %1550, 14
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1555 to i64
  %1557 = mul nsw i64 %1556, 12
  store i64 %1557, i64* %RCX.i1157, align 8
  %1558 = lshr i64 %1557, 63
  %1559 = add i64 %1557, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1559, i64* %RAX.i1159, align 8
  %1560 = icmp ult i64 %1559, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1561 = icmp ult i64 %1559, %1557
  %1562 = or i1 %1560, %1561
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %12, align 1
  %1564 = trunc i64 %1559 to i32
  %1565 = and i32 %1564, 252
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %13, align 1
  %1570 = xor i64 %1557, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1571 = xor i64 %1570, %1559
  %1572 = lshr i64 %1571, 4
  %1573 = trunc i64 %1572 to i8
  %1574 = and i8 %1573, 1
  store i8 %1574, i8* %14, align 1
  %1575 = icmp eq i64 %1559, 0
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %15, align 1
  %1577 = lshr i64 %1559, 63
  %1578 = trunc i64 %1577 to i8
  store i8 %1578, i8* %16, align 1
  %1579 = xor i64 %1577, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1580 = xor i64 %1577, %1558
  %1581 = add nuw nsw i64 %1579, %1580
  %1582 = icmp eq i64 %1581, 2
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %17, align 1
  %1584 = inttoptr i64 %1559 to i32*
  %1585 = add i64 %1550, 24
  store i64 %1585, i64* %3, align 8
  %1586 = load i32, i32* %1584, align 4
  %1587 = add i32 %1586, -6
  %1588 = icmp ult i32 %1586, 6
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %12, align 1
  %1590 = and i32 %1587, 255
  %1591 = tail call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  store i8 %1594, i8* %13, align 1
  %1595 = xor i32 %1587, %1586
  %1596 = lshr i32 %1595, 4
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  store i8 %1598, i8* %14, align 1
  %1599 = icmp eq i32 %1587, 0
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %15, align 1
  %1601 = lshr i32 %1587, 31
  %1602 = trunc i32 %1601 to i8
  store i8 %1602, i8* %16, align 1
  %1603 = lshr i32 %1586, 31
  %1604 = xor i32 %1601, %1603
  %1605 = add nuw nsw i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %17, align 1
  %.v175 = select i1 %1599, i64 88, i64 30
  %1608 = add i64 %1550, %.v175
  store i64 %1608, i64* %3, align 8
  br i1 %1599, label %block_.L_47d5c6, label %block_47d58c

block_47d58c:                                     ; preds = %block_47d56e
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1609 = load i64, i64* %RBP.i, align 8
  %1610 = add i64 %1609, -40
  %1611 = add i64 %1608, 14
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i32*
  %1613 = load i32, i32* %1612, align 4
  %1614 = sext i32 %1613 to i64
  %1615 = mul nsw i64 %1614, 12
  store i64 %1615, i64* %RCX.i1157, align 8
  %1616 = lshr i64 %1615, 63
  %1617 = add i64 %1615, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1617, i64* %RAX.i1159, align 8
  %1618 = icmp ult i64 %1617, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1619 = icmp ult i64 %1617, %1615
  %1620 = or i1 %1618, %1619
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %12, align 1
  %1622 = trunc i64 %1617 to i32
  %1623 = and i32 %1622, 252
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %13, align 1
  %1628 = xor i64 %1615, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1629 = xor i64 %1628, %1617
  %1630 = lshr i64 %1629, 4
  %1631 = trunc i64 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %14, align 1
  %1633 = icmp eq i64 %1617, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %15, align 1
  %1635 = lshr i64 %1617, 63
  %1636 = trunc i64 %1635 to i8
  store i8 %1636, i8* %16, align 1
  %1637 = xor i64 %1635, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1638 = xor i64 %1635, %1616
  %1639 = add nuw nsw i64 %1637, %1638
  %1640 = icmp eq i64 %1639, 2
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %17, align 1
  %1642 = inttoptr i64 %1617 to i32*
  %1643 = add i64 %1608, 24
  store i64 %1643, i64* %3, align 8
  %1644 = load i32, i32* %1642, align 4
  %1645 = add i32 %1644, -54
  %1646 = icmp ult i32 %1644, 54
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %12, align 1
  %1648 = and i32 %1645, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %13, align 1
  %1653 = xor i32 %1644, 16
  %1654 = xor i32 %1653, %1645
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  store i8 %1657, i8* %14, align 1
  %1658 = icmp eq i32 %1645, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %15, align 1
  %1660 = lshr i32 %1645, 31
  %1661 = trunc i32 %1660 to i8
  store i8 %1661, i8* %16, align 1
  %1662 = lshr i32 %1644, 31
  %1663 = xor i32 %1660, %1662
  %1664 = add nuw nsw i32 %1663, %1662
  %1665 = icmp eq i32 %1664, 2
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %17, align 1
  %.v176 = select i1 %1658, i64 30, i64 237
  %1667 = add i64 %1608, %.v176
  store i64 %1667, i64* %3, align 8
  br i1 %1658, label %block_47d5aa, label %block_.L_47d679

block_47d5aa:                                     ; preds = %block_47d58c
  store i64 3, i64* %RAX.i1159, align 8
  %1668 = load i64, i64* %RBP.i, align 8
  %1669 = add i64 %1668, -32
  %1670 = add i64 %1667, 9
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = sext i32 %1672 to i64
  store i64 %1673, i64* %RCX.i1157, align 8
  %1674 = add nsw i64 %1673, 12099168
  %1675 = add i64 %1667, 17
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i8*
  %1677 = load i8, i8* %1676, align 1
  %1678 = zext i8 %1677 to i64
  store i64 %1678, i64* %RDX.i1132, align 8
  %1679 = add i64 %1668, -4
  %1680 = add i64 %1667, 20
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = sub i32 3, %1682
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RAX.i1159, align 8
  %1685 = lshr i32 %1683, 31
  %1686 = zext i8 %1677 to i32
  %1687 = sub i32 %1686, %1683
  %1688 = icmp ult i32 %1686, %1683
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %12, align 1
  %1690 = and i32 %1687, 255
  %1691 = tail call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  store i8 %1694, i8* %13, align 1
  %1695 = xor i32 %1683, %1686
  %1696 = xor i32 %1695, %1687
  %1697 = lshr i32 %1696, 4
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  store i8 %1699, i8* %14, align 1
  %1700 = icmp eq i32 %1687, 0
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %15, align 1
  %1702 = lshr i32 %1687, 31
  %1703 = trunc i32 %1702 to i8
  store i8 %1703, i8* %16, align 1
  %1704 = add nuw nsw i32 %1702, %1685
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %17, align 1
  %.v186 = select i1 %1700, i64 28, i64 207
  %1707 = add i64 %1667, %.v186
  store i64 %1707, i64* %3, align 8
  br i1 %1700, label %block_.L_47d5c6, label %block_.L_47d679

block_.L_47d5c6:                                  ; preds = %block_47d5aa, %block_47d56e, %block_47d550, %block_47d532, %block_.L_47d514
  %1708 = phi i64 [ %1707, %block_47d5aa ], [ %1608, %block_47d56e ], [ %1550, %block_47d550 ], [ %1492, %block_47d532 ], [ %1434, %block_.L_47d514 ]
  %1709 = load i64, i64* %RBP.i, align 8
  %1710 = add i64 %1709, -8
  %1711 = add i64 %1708, 3
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RDI.i687.pre-phi, align 8
  %1715 = add i64 %1709, -32
  %1716 = add i64 %1708, 6
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RSI.i1104, align 8
  %1720 = add i64 %1708, -308758
  %1721 = add i64 %1708, 11
  %1722 = load i64, i64* %6, align 8
  %1723 = add i64 %1722, -8
  %1724 = inttoptr i64 %1723 to i64*
  store i64 %1721, i64* %1724, align 8
  store i64 %1723, i64* %6, align 8
  store i64 %1720, i64* %3, align 8
  %call2_47d5cc = tail call %struct.Memory* @sub_431fb0.owl_attack_move_reason_known(%struct.State* nonnull %0, i64 %1720, %struct.Memory* %MEMORY.10)
  %1725 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %1726 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1727 = and i32 %1725, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1732 = icmp eq i32 %1725, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %15, align 1
  %1734 = lshr i32 %1725, 31
  %1735 = trunc i32 %1734 to i8
  store i8 %1735, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v187 = select i1 %1732, i64 9, i64 168
  %1736 = add i64 %1726, %.v187
  store i64 %1736, i64* %3, align 8
  br i1 %1732, label %block_47d5da, label %block_.L_47d679

block_47d5da:                                     ; preds = %block_.L_47d5c6
  %1737 = load i64, i64* %RBP.i, align 8
  %1738 = add i64 %1737, -64
  store i64 %1738, i64* %RDX.i1132, align 8
  %1739 = add i64 %1736, 11
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to i32*
  store i32 0, i32* %1740, align 4
  %1741 = load i64, i64* %RBP.i, align 8
  %1742 = add i64 %1741, -8
  %1743 = load i64, i64* %3, align 8
  %1744 = add i64 %1743, 3
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1742 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RDI.i687.pre-phi, align 8
  %1748 = add i64 %1741, -32
  %1749 = add i64 %1743, 6
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RSI.i1104, align 8
  %1753 = add i64 %1743, -199349
  %1754 = add i64 %1743, 11
  %1755 = load i64, i64* %6, align 8
  %1756 = add i64 %1755, -8
  %1757 = inttoptr i64 %1756 to i64*
  store i64 %1754, i64* %1757, align 8
  store i64 %1756, i64* %6, align 8
  store i64 %1753, i64* %3, align 8
  %call2_47d5eb = tail call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* nonnull %0, i64 %1753, %struct.Memory* %MEMORY.10)
  %1758 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RDX.i1132, align 8
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -68
  %1761 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %1762 = add i64 %1758, 13
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1760 to i32*
  store i32 %1761, i32* %1763, align 4
  %1764 = load i64, i64* %RBP.i, align 8
  %1765 = add i64 %1764, -68
  %1766 = load i64, i64* %3, align 8
  %1767 = add i64 %1766, 3
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1765 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX.i1159, align 8
  %1771 = add i64 %1764, -32
  %1772 = add i64 %1766, 7
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = sext i32 %1774 to i64
  %1776 = mul nsw i64 %1775, 76
  store i64 %1776, i64* %RCX.i1157, align 8
  %1777 = lshr i64 %1776, 63
  %1778 = load i64, i64* %RDX.i1132, align 8
  %1779 = add i64 %1776, %1778
  store i64 %1779, i64* %RDX.i1132, align 8
  %1780 = icmp ult i64 %1779, %1778
  %1781 = icmp ult i64 %1779, %1776
  %1782 = or i1 %1780, %1781
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %12, align 1
  %1784 = trunc i64 %1779 to i32
  %1785 = and i32 %1784, 255
  %1786 = tail call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %13, align 1
  %1790 = xor i64 %1776, %1778
  %1791 = xor i64 %1790, %1779
  %1792 = lshr i64 %1791, 4
  %1793 = trunc i64 %1792 to i8
  %1794 = and i8 %1793, 1
  store i8 %1794, i8* %14, align 1
  %1795 = icmp eq i64 %1779, 0
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %15, align 1
  %1797 = lshr i64 %1779, 63
  %1798 = trunc i64 %1797 to i8
  store i8 %1798, i8* %16, align 1
  %1799 = lshr i64 %1778, 63
  %1800 = xor i64 %1797, %1799
  %1801 = xor i64 %1797, %1777
  %1802 = add nuw nsw i64 %1800, %1801
  %1803 = icmp eq i64 %1802, 2
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %17, align 1
  %1805 = add i64 %1779, 36
  %1806 = add i64 %1766, 17
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = sub i32 %1769, %1808
  %1810 = icmp ult i32 %1769, %1808
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %12, align 1
  %1812 = and i32 %1809, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %13, align 1
  %1817 = xor i32 %1808, %1769
  %1818 = xor i32 %1817, %1809
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %14, align 1
  %1822 = icmp eq i32 %1809, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %15, align 1
  %1824 = lshr i32 %1809, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %16, align 1
  %1826 = lshr i32 %1769, 31
  %1827 = lshr i32 %1808, 31
  %1828 = xor i32 %1827, %1826
  %1829 = xor i32 %1824, %1826
  %1830 = add nuw nsw i32 %1829, %1828
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %17, align 1
  %1833 = icmp ne i8 %1825, 0
  %1834 = xor i1 %1833, %1831
  %.v129 = select i1 %1834, i64 119, i64 23
  %1835 = add i64 %1766, %.v129
  store i64 %1835, i64* %3, align 8
  br i1 %1834, label %block_.L_47d674, label %block_47d614

block_47d614:                                     ; preds = %block_47d5da
  %1836 = load i64, i64* %RBP.i, align 8
  %1837 = add i64 %1836, -68
  %1838 = add i64 %1835, 4
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = add i32 %1840, -3
  %1842 = icmp ult i32 %1840, 3
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %12, align 1
  %1844 = and i32 %1841, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %13, align 1
  %1849 = xor i32 %1841, %1840
  %1850 = lshr i32 %1849, 4
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %14, align 1
  %1853 = icmp eq i32 %1841, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %15, align 1
  %1855 = lshr i32 %1841, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %16, align 1
  %1857 = lshr i32 %1840, 31
  %1858 = xor i32 %1855, %1857
  %1859 = add nuw nsw i32 %1858, %1857
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %17, align 1
  %.v128 = select i1 %1853, i64 10, i64 29
  %1862 = add i64 %1835, %.v128
  %1863 = add i64 %1836, -8
  %1864 = add i64 %1862, 3
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  %1866 = load i32, i32* %1865, align 4
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RDI.i687.pre-phi, align 8
  %1868 = add i64 %1836, -32
  %1869 = add i64 %1862, 6
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = zext i32 %1871 to i64
  store i64 %1872, i64* %RSI.i1104, align 8
  br i1 %1853, label %block_47d61e, label %block_.L_47d631

block_47d61e:                                     ; preds = %block_47d614
  %1873 = add i64 %1836, -64
  %1874 = add i64 %1862, 9
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  %1876 = load i32, i32* %1875, align 4
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RDX.i1132, align 8
  %1878 = add i64 %1862, -300606
  %1879 = add i64 %1862, 14
  %1880 = load i64, i64* %6, align 8
  %1881 = add i64 %1880, -8
  %1882 = inttoptr i64 %1881 to i64*
  store i64 %1879, i64* %1882, align 8
  store i64 %1881, i64* %6, align 8
  store i64 %1878, i64* %3, align 8
  %call2_47d627 = tail call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* nonnull %0, i64 %1878, %struct.Memory* %MEMORY.10)
  %1883 = load i64, i64* %3, align 8
  %1884 = add i64 %1883, 19
  store i64 %1884, i64* %3, align 8
  br label %block_.L_47d63f

block_.L_47d631:                                  ; preds = %block_47d614
  %1885 = add i64 %1862, 9
  store i64 %1885, i64* %3, align 8
  %1886 = load i32, i32* %1839, align 4
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RDX.i1132, align 8
  %1888 = add i64 %1862, -298929
  %1889 = add i64 %1862, 14
  %1890 = load i64, i64* %6, align 8
  %1891 = add i64 %1890, -8
  %1892 = inttoptr i64 %1891 to i64*
  store i64 %1889, i64* %1892, align 8
  store i64 %1891, i64* %6, align 8
  store i64 %1888, i64* %3, align 8
  %call2_47d63a = tail call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* nonnull %0, i64 %1888, %struct.Memory* %MEMORY.10)
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_47d63f

block_.L_47d63f:                                  ; preds = %block_.L_47d631, %block_47d61e
  %1893 = phi i64 [ %.pre114, %block_.L_47d631 ], [ %1884, %block_47d61e ]
  %1894 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1895 = and i32 %1894, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1900 = icmp eq i32 %1894, 0
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %15, align 1
  %1902 = lshr i32 %1894, 31
  %1903 = trunc i32 %1902 to i8
  store i8 %1903, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v188 = select i1 %1900, i64 14, i64 19
  %1904 = add i64 %1893, %.v188
  store i64 %1904, i64* %3, align 8
  br i1 %1900, label %block_47d64d, label %block_.L_47d652

block_47d64d:                                     ; preds = %block_.L_47d63f
  %1905 = add i64 %1904, 34
  store i64 %1905, i64* %3, align 8
  br label %block_.L_47d66f

block_.L_47d652:                                  ; preds = %block_.L_47d63f
  store i64 ptrtoint (%G__0x582d3a_type* @G__0x582d3a to i64), i64* %RDI.i687.pre-phi, align 8
  %1906 = load i64, i64* %RBP.i, align 8
  %1907 = add i64 %1906, -8
  %1908 = add i64 %1904, 13
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RSI.i1104, align 8
  %1912 = add i64 %1906, -32
  %1913 = add i64 %1904, 16
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  %1915 = load i32, i32* %1914, align 4
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RDX.i1132, align 8
  %1917 = add i64 %1906, -68
  %1918 = add i64 %1904, 19
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to i32*
  %1920 = load i32, i32* %1919, align 4
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RCX.i1157, align 8
  store i8 0, i8* %AL.i608.pre-phi, align 1
  %1922 = add i64 %1904, -178338
  %1923 = add i64 %1904, 26
  %1924 = load i64, i64* %6, align 8
  %1925 = add i64 %1924, -8
  %1926 = inttoptr i64 %1925 to i64*
  store i64 %1923, i64* %1926, align 8
  store i64 %1925, i64* %6, align 8
  store i64 %1922, i64* %3, align 8
  %call2_47d667 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1922, %struct.Memory* %MEMORY.10)
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -112
  %1929 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %1930 = load i64, i64* %3, align 8
  %1931 = add i64 %1930, 3
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1928 to i32*
  store i32 %1929, i32* %1932, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_47d66f

block_.L_47d66f:                                  ; preds = %block_.L_47d652, %block_47d64d
  %1933 = phi i64 [ %.pre115, %block_.L_47d652 ], [ %1905, %block_47d64d ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_47d667, %block_.L_47d652 ], [ %MEMORY.10, %block_47d64d ]
  %1934 = add i64 %1933, 5
  store i64 %1934, i64* %3, align 8
  br label %block_.L_47d674

block_.L_47d674:                                  ; preds = %block_.L_47d66f, %block_47d5da
  %1935 = phi i64 [ %1835, %block_47d5da ], [ %1934, %block_.L_47d66f ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_47d5da ], [ %MEMORY.14, %block_.L_47d66f ]
  %1936 = add i64 %1935, 5
  store i64 %1936, i64* %3, align 8
  br label %block_.L_47d679

block_.L_47d679:                                  ; preds = %block_.L_47d5c6, %block_47d5aa, %block_47d58c, %block_.L_47d674
  %1937 = phi i64 [ %1736, %block_.L_47d5c6 ], [ %1936, %block_.L_47d674 ], [ %1667, %block_47d58c ], [ %1707, %block_47d5aa ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.10, %block_.L_47d5c6 ], [ %MEMORY.15, %block_.L_47d674 ], [ %MEMORY.10, %block_47d58c ], [ %MEMORY.10, %block_47d5aa ]
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1938 = load i64, i64* %RBP.i, align 8
  %1939 = add i64 %1938, -40
  %1940 = add i64 %1937, 14
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = sext i32 %1942 to i64
  %1944 = mul nsw i64 %1943, 12
  store i64 %1944, i64* %RCX.i1157, align 8
  %1945 = lshr i64 %1944, 63
  %1946 = add i64 %1944, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1946, i64* %RAX.i1159, align 8
  %1947 = icmp ult i64 %1946, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1948 = icmp ult i64 %1946, %1944
  %1949 = or i1 %1947, %1948
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %12, align 1
  %1951 = trunc i64 %1946 to i32
  %1952 = and i32 %1951, 252
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %13, align 1
  %1957 = xor i64 %1944, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1958 = xor i64 %1957, %1946
  %1959 = lshr i64 %1958, 4
  %1960 = trunc i64 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %14, align 1
  %1962 = icmp eq i64 %1946, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %15, align 1
  %1964 = lshr i64 %1946, 63
  %1965 = trunc i64 %1964 to i8
  store i8 %1965, i8* %16, align 1
  %1966 = xor i64 %1964, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1967 = xor i64 %1964, %1945
  %1968 = add nuw nsw i64 %1966, %1967
  %1969 = icmp eq i64 %1968, 2
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %17, align 1
  %1971 = inttoptr i64 %1946 to i32*
  %1972 = add i64 %1937, 24
  store i64 %1972, i64* %3, align 8
  %1973 = load i32, i32* %1971, align 4
  %1974 = add i32 %1973, -46
  %1975 = icmp ult i32 %1973, 46
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %12, align 1
  %1977 = and i32 %1974, 255
  %1978 = tail call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  store i8 %1981, i8* %13, align 1
  %1982 = xor i32 %1974, %1973
  %1983 = lshr i32 %1982, 4
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  store i8 %1985, i8* %14, align 1
  %1986 = icmp eq i32 %1974, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %15, align 1
  %1988 = lshr i32 %1974, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %16, align 1
  %1990 = lshr i32 %1973, 31
  %1991 = xor i32 %1988, %1990
  %1992 = add nuw nsw i32 %1991, %1990
  %1993 = icmp eq i32 %1992, 2
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %17, align 1
  %.v177 = select i1 %1986, i64 201, i64 30
  %1995 = add i64 %1937, %.v177
  store i64 %1995, i64* %3, align 8
  br i1 %1986, label %block_.L_47d742, label %block_47d697

block_47d697:                                     ; preds = %block_.L_47d679
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -40
  %1998 = add i64 %1995, 14
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = sext i32 %2000 to i64
  %2002 = mul nsw i64 %2001, 12
  store i64 %2002, i64* %RCX.i1157, align 8
  %2003 = lshr i64 %2002, 63
  %2004 = add i64 %2002, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %2004, i64* %RAX.i1159, align 8
  %2005 = icmp ult i64 %2004, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2006 = icmp ult i64 %2004, %2002
  %2007 = or i1 %2005, %2006
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %12, align 1
  %2009 = trunc i64 %2004 to i32
  %2010 = and i32 %2009, 252
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %13, align 1
  %2015 = xor i64 %2002, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2016 = xor i64 %2015, %2004
  %2017 = lshr i64 %2016, 4
  %2018 = trunc i64 %2017 to i8
  %2019 = and i8 %2018, 1
  store i8 %2019, i8* %14, align 1
  %2020 = icmp eq i64 %2004, 0
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %15, align 1
  %2022 = lshr i64 %2004, 63
  %2023 = trunc i64 %2022 to i8
  store i8 %2023, i8* %16, align 1
  %2024 = xor i64 %2022, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %2025 = xor i64 %2022, %2003
  %2026 = add nuw nsw i64 %2024, %2025
  %2027 = icmp eq i64 %2026, 2
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %17, align 1
  %2029 = inttoptr i64 %2004 to i32*
  %2030 = add i64 %1995, 24
  store i64 %2030, i64* %3, align 8
  %2031 = load i32, i32* %2029, align 4
  %2032 = add i32 %2031, -14
  %2033 = icmp ult i32 %2031, 14
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %12, align 1
  %2035 = and i32 %2032, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %13, align 1
  %2040 = xor i32 %2032, %2031
  %2041 = lshr i32 %2040, 4
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  store i8 %2043, i8* %14, align 1
  %2044 = icmp eq i32 %2032, 0
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %15, align 1
  %2046 = lshr i32 %2032, 31
  %2047 = trunc i32 %2046 to i8
  store i8 %2047, i8* %16, align 1
  %2048 = lshr i32 %2031, 31
  %2049 = xor i32 %2046, %2048
  %2050 = add nuw nsw i32 %2049, %2048
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %17, align 1
  %.v178 = select i1 %2044, i64 171, i64 30
  %2053 = add i64 %1995, %.v178
  store i64 %2053, i64* %3, align 8
  br i1 %2044, label %block_.L_47d742, label %block_47d6b5

block_47d6b5:                                     ; preds = %block_47d697
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %2054 = load i64, i64* %RBP.i, align 8
  %2055 = add i64 %2054, -40
  %2056 = add i64 %2053, 14
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = sext i32 %2058 to i64
  %2060 = mul nsw i64 %2059, 12
  store i64 %2060, i64* %RCX.i1157, align 8
  %2061 = lshr i64 %2060, 63
  %2062 = add i64 %2060, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %2062, i64* %RAX.i1159, align 8
  %2063 = icmp ult i64 %2062, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2064 = icmp ult i64 %2062, %2060
  %2065 = or i1 %2063, %2064
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %12, align 1
  %2067 = trunc i64 %2062 to i32
  %2068 = and i32 %2067, 252
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068)
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %13, align 1
  %2073 = xor i64 %2060, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2074 = xor i64 %2073, %2062
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %14, align 1
  %2078 = icmp eq i64 %2062, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %15, align 1
  %2080 = lshr i64 %2062, 63
  %2081 = trunc i64 %2080 to i8
  store i8 %2081, i8* %16, align 1
  %2082 = xor i64 %2080, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %2083 = xor i64 %2080, %2061
  %2084 = add nuw nsw i64 %2082, %2083
  %2085 = icmp eq i64 %2084, 2
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %17, align 1
  %2087 = inttoptr i64 %2062 to i32*
  %2088 = add i64 %2053, 24
  store i64 %2088, i64* %3, align 8
  %2089 = load i32, i32* %2087, align 4
  %2090 = add i32 %2089, -8
  %2091 = icmp ult i32 %2089, 8
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %12, align 1
  %2093 = and i32 %2090, 255
  %2094 = tail call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  store i8 %2097, i8* %13, align 1
  %2098 = xor i32 %2090, %2089
  %2099 = lshr i32 %2098, 4
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  store i8 %2101, i8* %14, align 1
  %2102 = icmp eq i32 %2090, 0
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %15, align 1
  %2104 = lshr i32 %2090, 31
  %2105 = trunc i32 %2104 to i8
  store i8 %2105, i8* %16, align 1
  %2106 = lshr i32 %2089, 31
  %2107 = xor i32 %2104, %2106
  %2108 = add nuw nsw i32 %2107, %2106
  %2109 = icmp eq i32 %2108, 2
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %17, align 1
  %.v179 = select i1 %2102, i64 141, i64 30
  %2111 = add i64 %2053, %.v179
  store i64 %2111, i64* %3, align 8
  br i1 %2102, label %block_.L_47d742, label %block_47d6d3

block_47d6d3:                                     ; preds = %block_47d6b5
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %2112 = load i64, i64* %RBP.i, align 8
  %2113 = add i64 %2112, -40
  %2114 = add i64 %2111, 14
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = sext i32 %2116 to i64
  %2118 = mul nsw i64 %2117, 12
  store i64 %2118, i64* %RCX.i1157, align 8
  %2119 = lshr i64 %2118, 63
  %2120 = add i64 %2118, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %2120, i64* %RAX.i1159, align 8
  %2121 = icmp ult i64 %2120, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2122 = icmp ult i64 %2120, %2118
  %2123 = or i1 %2121, %2122
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %12, align 1
  %2125 = trunc i64 %2120 to i32
  %2126 = and i32 %2125, 252
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %13, align 1
  %2131 = xor i64 %2118, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2132 = xor i64 %2131, %2120
  %2133 = lshr i64 %2132, 4
  %2134 = trunc i64 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %14, align 1
  %2136 = icmp eq i64 %2120, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %15, align 1
  %2138 = lshr i64 %2120, 63
  %2139 = trunc i64 %2138 to i8
  store i8 %2139, i8* %16, align 1
  %2140 = xor i64 %2138, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %2141 = xor i64 %2138, %2119
  %2142 = add nuw nsw i64 %2140, %2141
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %17, align 1
  %2145 = inttoptr i64 %2120 to i32*
  %2146 = add i64 %2111, 24
  store i64 %2146, i64* %3, align 8
  %2147 = load i32, i32* %2145, align 4
  %2148 = add i32 %2147, -10
  %2149 = icmp ult i32 %2147, 10
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %12, align 1
  %2151 = and i32 %2148, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %13, align 1
  %2156 = xor i32 %2148, %2147
  %2157 = lshr i32 %2156, 4
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %14, align 1
  %2160 = icmp eq i32 %2148, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %15, align 1
  %2162 = lshr i32 %2148, 31
  %2163 = trunc i32 %2162 to i8
  store i8 %2163, i8* %16, align 1
  %2164 = lshr i32 %2147, 31
  %2165 = xor i32 %2162, %2164
  %2166 = add nuw nsw i32 %2165, %2164
  %2167 = icmp eq i32 %2166, 2
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %17, align 1
  %.v180 = select i1 %2160, i64 111, i64 30
  %2169 = add i64 %2111, %.v180
  store i64 %2169, i64* %3, align 8
  br i1 %2160, label %block_.L_47d742, label %block_47d6f1

block_47d6f1:                                     ; preds = %block_47d6d3
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -40
  %2172 = add i64 %2169, 14
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = sext i32 %2174 to i64
  %2176 = mul nsw i64 %2175, 12
  store i64 %2176, i64* %RCX.i1157, align 8
  %2177 = lshr i64 %2176, 63
  %2178 = add i64 %2176, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %2178, i64* %RAX.i1159, align 8
  %2179 = icmp ult i64 %2178, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2180 = icmp ult i64 %2178, %2176
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %12, align 1
  %2183 = trunc i64 %2178 to i32
  %2184 = and i32 %2183, 252
  %2185 = tail call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %13, align 1
  %2189 = xor i64 %2176, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2190 = xor i64 %2189, %2178
  %2191 = lshr i64 %2190, 4
  %2192 = trunc i64 %2191 to i8
  %2193 = and i8 %2192, 1
  store i8 %2193, i8* %14, align 1
  %2194 = icmp eq i64 %2178, 0
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %15, align 1
  %2196 = lshr i64 %2178, 63
  %2197 = trunc i64 %2196 to i8
  store i8 %2197, i8* %16, align 1
  %2198 = xor i64 %2196, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %2199 = xor i64 %2196, %2177
  %2200 = add nuw nsw i64 %2198, %2199
  %2201 = icmp eq i64 %2200, 2
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %17, align 1
  %2203 = inttoptr i64 %2178 to i32*
  %2204 = add i64 %2169, 24
  store i64 %2204, i64* %3, align 8
  %2205 = load i32, i32* %2203, align 4
  %2206 = add i32 %2205, -12
  %2207 = icmp ult i32 %2205, 12
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %12, align 1
  %2209 = and i32 %2206, 255
  %2210 = tail call i32 @llvm.ctpop.i32(i32 %2209)
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = xor i8 %2212, 1
  store i8 %2213, i8* %13, align 1
  %2214 = xor i32 %2206, %2205
  %2215 = lshr i32 %2214, 4
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  store i8 %2217, i8* %14, align 1
  %2218 = icmp eq i32 %2206, 0
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %15, align 1
  %2220 = lshr i32 %2206, 31
  %2221 = trunc i32 %2220 to i8
  store i8 %2221, i8* %16, align 1
  %2222 = lshr i32 %2205, 31
  %2223 = xor i32 %2220, %2222
  %2224 = add nuw nsw i32 %2223, %2222
  %2225 = icmp eq i32 %2224, 2
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %17, align 1
  %.v181 = select i1 %2218, i64 81, i64 30
  %2227 = add i64 %2169, %.v181
  store i64 %2227, i64* %3, align 8
  br i1 %2218, label %block_.L_47d742, label %block_47d70f

block_47d70f:                                     ; preds = %block_47d6f1
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %2228 = load i64, i64* %RBP.i, align 8
  %2229 = add i64 %2228, -40
  %2230 = add i64 %2227, 14
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = sext i32 %2232 to i64
  %2234 = mul nsw i64 %2233, 12
  store i64 %2234, i64* %RCX.i1157, align 8
  %2235 = lshr i64 %2234, 63
  %2236 = add i64 %2234, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %2236, i64* %RAX.i1159, align 8
  %2237 = icmp ult i64 %2236, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2238 = icmp ult i64 %2236, %2234
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %12, align 1
  %2241 = trunc i64 %2236 to i32
  %2242 = and i32 %2241, 252
  %2243 = tail call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  store i8 %2246, i8* %13, align 1
  %2247 = xor i64 %2234, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2248 = xor i64 %2247, %2236
  %2249 = lshr i64 %2248, 4
  %2250 = trunc i64 %2249 to i8
  %2251 = and i8 %2250, 1
  store i8 %2251, i8* %14, align 1
  %2252 = icmp eq i64 %2236, 0
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %15, align 1
  %2254 = lshr i64 %2236, 63
  %2255 = trunc i64 %2254 to i8
  store i8 %2255, i8* %16, align 1
  %2256 = xor i64 %2254, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %2257 = xor i64 %2254, %2235
  %2258 = add nuw nsw i64 %2256, %2257
  %2259 = icmp eq i64 %2258, 2
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %17, align 1
  %2261 = inttoptr i64 %2236 to i32*
  %2262 = add i64 %2227, 24
  store i64 %2262, i64* %3, align 8
  %2263 = load i32, i32* %2261, align 4
  %2264 = add i32 %2263, -54
  %2265 = icmp ult i32 %2263, 54
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %12, align 1
  %2267 = and i32 %2264, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %13, align 1
  %2272 = xor i32 %2263, 16
  %2273 = xor i32 %2272, %2264
  %2274 = lshr i32 %2273, 4
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %14, align 1
  %2277 = icmp eq i32 %2264, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %15, align 1
  %2279 = lshr i32 %2264, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %16, align 1
  %2281 = lshr i32 %2263, 31
  %2282 = xor i32 %2279, %2281
  %2283 = add nuw nsw i32 %2282, %2281
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %17, align 1
  %.v182 = select i1 %2277, i64 30, i64 230
  %2286 = add i64 %2227, %.v182
  store i64 %2286, i64* %3, align 8
  br i1 %2277, label %block_47d72d, label %block_.L_47d7f5

block_47d72d:                                     ; preds = %block_47d70f
  %2287 = load i64, i64* %RBP.i, align 8
  %2288 = add i64 %2287, -32
  %2289 = add i64 %2286, 4
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = sext i32 %2291 to i64
  store i64 %2292, i64* %RAX.i1159, align 8
  %2293 = add nsw i64 %2292, 12099168
  %2294 = add i64 %2286, 12
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i8*
  %2296 = load i8, i8* %2295, align 1
  %2297 = zext i8 %2296 to i64
  store i64 %2297, i64* %RCX.i1157, align 8
  %2298 = zext i8 %2296 to i32
  %2299 = add i64 %2287, -4
  %2300 = add i64 %2286, 15
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = sub i32 %2298, %2302
  %2304 = icmp ult i32 %2298, %2302
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %12, align 1
  %2306 = and i32 %2303, 255
  %2307 = tail call i32 @llvm.ctpop.i32(i32 %2306)
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = xor i8 %2309, 1
  store i8 %2310, i8* %13, align 1
  %2311 = xor i32 %2302, %2298
  %2312 = xor i32 %2311, %2303
  %2313 = lshr i32 %2312, 4
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  store i8 %2315, i8* %14, align 1
  %2316 = icmp eq i32 %2303, 0
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %15, align 1
  %2318 = lshr i32 %2303, 31
  %2319 = trunc i32 %2318 to i8
  store i8 %2319, i8* %16, align 1
  %2320 = lshr i32 %2302, 31
  %2321 = add nuw nsw i32 %2318, %2320
  %2322 = icmp eq i32 %2321, 2
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %17, align 1
  %.v183 = select i1 %2316, i64 21, i64 200
  %2324 = add i64 %2286, %.v183
  store i64 %2324, i64* %3, align 8
  br i1 %2316, label %block_.L_47d742, label %block_.L_47d7f5

block_.L_47d742:                                  ; preds = %block_47d72d, %block_47d6f1, %block_47d6d3, %block_47d6b5, %block_47d697, %block_.L_47d679
  %2325 = phi i64 [ %2324, %block_47d72d ], [ %2227, %block_47d6f1 ], [ %2169, %block_47d6d3 ], [ %2111, %block_47d6b5 ], [ %2053, %block_47d697 ], [ %1995, %block_.L_47d679 ]
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -8
  %2328 = add i64 %2325, 3
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RDI.i687.pre-phi, align 8
  %2332 = add i64 %2326, -32
  %2333 = add i64 %2325, 6
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i32*
  %2335 = load i32, i32* %2334, align 4
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RSI.i1104, align 8
  %2337 = add i64 %2325, -308994
  %2338 = add i64 %2325, 11
  %2339 = load i64, i64* %6, align 8
  %2340 = add i64 %2339, -8
  %2341 = inttoptr i64 %2340 to i64*
  store i64 %2338, i64* %2341, align 8
  store i64 %2340, i64* %6, align 8
  store i64 %2337, i64* %3, align 8
  %call2_47d748 = tail call %struct.Memory* @sub_432040.owl_defense_move_reason_known(%struct.State* nonnull %0, i64 %2337, %struct.Memory* %MEMORY.16)
  %2342 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %2343 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2344 = and i32 %2342, 255
  %2345 = tail call i32 @llvm.ctpop.i32(i32 %2344)
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  store i8 %2348, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2349 = icmp eq i32 %2342, 0
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %15, align 1
  %2351 = lshr i32 %2342, 31
  %2352 = trunc i32 %2351 to i8
  store i8 %2352, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v184 = select i1 %2349, i64 9, i64 168
  %2353 = add i64 %2343, %.v184
  store i64 %2353, i64* %3, align 8
  br i1 %2349, label %block_47d756, label %block_.L_47d7f5

block_47d756:                                     ; preds = %block_.L_47d742
  %2354 = load i64, i64* %RBP.i, align 8
  %2355 = add i64 %2354, -72
  store i64 %2355, i64* %RDX.i1132, align 8
  %2356 = add i64 %2353, 11
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  store i32 0, i32* %2357, align 4
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -8
  %2360 = load i64, i64* %3, align 8
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2359 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RDI.i687.pre-phi, align 8
  %2365 = add i64 %2358, -32
  %2366 = add i64 %2360, 6
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RSI.i1104, align 8
  %2370 = add i64 %2360, -201633
  %2371 = add i64 %2360, 11
  %2372 = load i64, i64* %6, align 8
  %2373 = add i64 %2372, -8
  %2374 = inttoptr i64 %2373 to i64*
  store i64 %2371, i64* %2374, align 8
  store i64 %2373, i64* %6, align 8
  store i64 %2370, i64* %3, align 8
  %call2_47d767 = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %2370, %struct.Memory* %call2_47d748)
  %2375 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RDX.i1132, align 8
  %2376 = load i64, i64* %RBP.i, align 8
  %2377 = add i64 %2376, -76
  %2378 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %2379 = add i64 %2375, 13
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2377 to i32*
  store i32 %2378, i32* %2380, align 4
  %2381 = load i64, i64* %RBP.i, align 8
  %2382 = add i64 %2381, -76
  %2383 = load i64, i64* %3, align 8
  %2384 = add i64 %2383, 3
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2382 to i32*
  %2386 = load i32, i32* %2385, align 4
  %2387 = zext i32 %2386 to i64
  store i64 %2387, i64* %RAX.i1159, align 8
  %2388 = add i64 %2381, -32
  %2389 = add i64 %2383, 7
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i32*
  %2391 = load i32, i32* %2390, align 4
  %2392 = sext i32 %2391 to i64
  %2393 = mul nsw i64 %2392, 76
  store i64 %2393, i64* %RCX.i1157, align 8
  %2394 = lshr i64 %2393, 63
  %2395 = load i64, i64* %RDX.i1132, align 8
  %2396 = add i64 %2393, %2395
  store i64 %2396, i64* %RDX.i1132, align 8
  %2397 = icmp ult i64 %2396, %2395
  %2398 = icmp ult i64 %2396, %2393
  %2399 = or i1 %2397, %2398
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %12, align 1
  %2401 = trunc i64 %2396 to i32
  %2402 = and i32 %2401, 255
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %13, align 1
  %2407 = xor i64 %2393, %2395
  %2408 = xor i64 %2407, %2396
  %2409 = lshr i64 %2408, 4
  %2410 = trunc i64 %2409 to i8
  %2411 = and i8 %2410, 1
  store i8 %2411, i8* %14, align 1
  %2412 = icmp eq i64 %2396, 0
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %15, align 1
  %2414 = lshr i64 %2396, 63
  %2415 = trunc i64 %2414 to i8
  store i8 %2415, i8* %16, align 1
  %2416 = lshr i64 %2395, 63
  %2417 = xor i64 %2414, %2416
  %2418 = xor i64 %2414, %2394
  %2419 = add nuw nsw i64 %2417, %2418
  %2420 = icmp eq i64 %2419, 2
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %17, align 1
  %2422 = add i64 %2396, 52
  %2423 = add i64 %2383, 17
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = sub i32 %2386, %2425
  %2427 = icmp ult i32 %2386, %2425
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %12, align 1
  %2429 = and i32 %2426, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %13, align 1
  %2434 = xor i32 %2425, %2386
  %2435 = xor i32 %2434, %2426
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %14, align 1
  %2439 = icmp eq i32 %2426, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %15, align 1
  %2441 = lshr i32 %2426, 31
  %2442 = trunc i32 %2441 to i8
  store i8 %2442, i8* %16, align 1
  %2443 = lshr i32 %2386, 31
  %2444 = lshr i32 %2425, 31
  %2445 = xor i32 %2444, %2443
  %2446 = xor i32 %2441, %2443
  %2447 = add nuw nsw i32 %2446, %2445
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %17, align 1
  %2450 = icmp ne i8 %2442, 0
  %2451 = xor i1 %2450, %2448
  %.v131 = select i1 %2451, i64 119, i64 23
  %2452 = add i64 %2383, %.v131
  store i64 %2452, i64* %3, align 8
  br i1 %2451, label %block_.L_47d7f0, label %block_47d790

block_47d790:                                     ; preds = %block_47d756
  %2453 = load i64, i64* %RBP.i, align 8
  %2454 = add i64 %2453, -76
  %2455 = add i64 %2452, 4
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = add i32 %2457, -2
  %2459 = icmp ult i32 %2457, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %12, align 1
  %2461 = and i32 %2458, 255
  %2462 = tail call i32 @llvm.ctpop.i32(i32 %2461)
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = xor i8 %2464, 1
  store i8 %2465, i8* %13, align 1
  %2466 = xor i32 %2458, %2457
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %14, align 1
  %2470 = icmp eq i32 %2458, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %15, align 1
  %2472 = lshr i32 %2458, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %16, align 1
  %2474 = lshr i32 %2457, 31
  %2475 = xor i32 %2472, %2474
  %2476 = add nuw nsw i32 %2475, %2474
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %17, align 1
  %.v130 = select i1 %2470, i64 10, i64 29
  %2479 = add i64 %2452, %.v130
  %2480 = add i64 %2453, -8
  %2481 = add i64 %2479, 3
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RDI.i687.pre-phi, align 8
  %2485 = add i64 %2453, -32
  %2486 = add i64 %2479, 6
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = zext i32 %2488 to i64
  store i64 %2489, i64* %RSI.i1104, align 8
  br i1 %2470, label %block_47d79a, label %block_.L_47d7ad

block_47d79a:                                     ; preds = %block_47d790
  %2490 = add i64 %2453, -72
  %2491 = add i64 %2479, 9
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RDX.i1132, align 8
  %2495 = add i64 %2479, -300474
  %2496 = add i64 %2479, 14
  %2497 = load i64, i64* %6, align 8
  %2498 = add i64 %2497, -8
  %2499 = inttoptr i64 %2498 to i64*
  store i64 %2496, i64* %2499, align 8
  store i64 %2498, i64* %6, align 8
  store i64 %2495, i64* %3, align 8
  %call2_47d7a3 = tail call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* nonnull %0, i64 %2495, %struct.Memory* %call2_47d767)
  %2500 = load i64, i64* %3, align 8
  %2501 = add i64 %2500, 19
  store i64 %2501, i64* %3, align 8
  br label %block_.L_47d7bb

block_.L_47d7ad:                                  ; preds = %block_47d790
  %2502 = add i64 %2479, 9
  store i64 %2502, i64* %3, align 8
  %2503 = load i32, i32* %2456, align 4
  %2504 = zext i32 %2503 to i64
  store i64 %2504, i64* %RDX.i1132, align 8
  %2505 = add i64 %2479, -299021
  %2506 = add i64 %2479, 14
  %2507 = load i64, i64* %6, align 8
  %2508 = add i64 %2507, -8
  %2509 = inttoptr i64 %2508 to i64*
  store i64 %2506, i64* %2509, align 8
  store i64 %2508, i64* %6, align 8
  store i64 %2505, i64* %3, align 8
  %call2_47d7b6 = tail call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* nonnull %0, i64 %2505, %struct.Memory* %call2_47d767)
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_47d7bb

block_.L_47d7bb:                                  ; preds = %block_.L_47d7ad, %block_47d79a
  %2510 = phi i64 [ %.pre116, %block_.L_47d7ad ], [ %2501, %block_47d79a ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_47d7b6, %block_.L_47d7ad ], [ %call2_47d7a3, %block_47d79a ]
  %2511 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2512 = and i32 %2511, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2517 = icmp eq i32 %2511, 0
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %15, align 1
  %2519 = lshr i32 %2511, 31
  %2520 = trunc i32 %2519 to i8
  store i8 %2520, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v185 = select i1 %2517, i64 14, i64 19
  %2521 = add i64 %2510, %.v185
  store i64 %2521, i64* %3, align 8
  br i1 %2517, label %block_47d7c9, label %block_.L_47d7ce

block_47d7c9:                                     ; preds = %block_.L_47d7bb
  %2522 = add i64 %2521, 34
  store i64 %2522, i64* %3, align 8
  br label %block_.L_47d7eb

block_.L_47d7ce:                                  ; preds = %block_.L_47d7bb
  store i64 ptrtoint (%G__0x582d63_type* @G__0x582d63 to i64), i64* %RDI.i687.pre-phi, align 8
  %2523 = load i64, i64* %RBP.i, align 8
  %2524 = add i64 %2523, -8
  %2525 = add i64 %2521, 13
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i32*
  %2527 = load i32, i32* %2526, align 4
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RSI.i1104, align 8
  %2529 = add i64 %2523, -32
  %2530 = add i64 %2521, 16
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RDX.i1132, align 8
  %2534 = add i64 %2523, -76
  %2535 = add i64 %2521, 19
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RCX.i1157, align 8
  store i8 0, i8* %AL.i608.pre-phi, align 1
  %2539 = add i64 %2521, -178718
  %2540 = add i64 %2521, 26
  %2541 = load i64, i64* %6, align 8
  %2542 = add i64 %2541, -8
  %2543 = inttoptr i64 %2542 to i64*
  store i64 %2540, i64* %2543, align 8
  store i64 %2542, i64* %6, align 8
  store i64 %2539, i64* %3, align 8
  %call2_47d7e3 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2539, %struct.Memory* %MEMORY.18)
  %2544 = load i64, i64* %RBP.i, align 8
  %2545 = add i64 %2544, -116
  %2546 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %2547 = load i64, i64* %3, align 8
  %2548 = add i64 %2547, 3
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2545 to i32*
  store i32 %2546, i32* %2549, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_47d7eb

block_.L_47d7eb:                                  ; preds = %block_.L_47d7ce, %block_47d7c9
  %2550 = phi i64 [ %.pre117, %block_.L_47d7ce ], [ %2522, %block_47d7c9 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_47d7e3, %block_.L_47d7ce ], [ %MEMORY.18, %block_47d7c9 ]
  %2551 = add i64 %2550, 5
  store i64 %2551, i64* %3, align 8
  br label %block_.L_47d7f0

block_.L_47d7f0:                                  ; preds = %block_.L_47d7eb, %block_47d756
  %2552 = phi i64 [ %2452, %block_47d756 ], [ %2551, %block_.L_47d7eb ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_47d767, %block_47d756 ], [ %MEMORY.19, %block_.L_47d7eb ]
  %2553 = add i64 %2552, 5
  store i64 %2553, i64* %3, align 8
  br label %block_.L_47d7f5

block_.L_47d7f5:                                  ; preds = %block_.L_47d742, %block_47d72d, %block_47d70f, %block_.L_47d7f0
  %2554 = phi i64 [ %2353, %block_.L_47d742 ], [ %2553, %block_.L_47d7f0 ], [ %2286, %block_47d70f ], [ %2324, %block_47d72d ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_47d748, %block_.L_47d742 ], [ %MEMORY.20, %block_.L_47d7f0 ], [ %MEMORY.16, %block_47d70f ], [ %MEMORY.16, %block_47d72d ]
  %2555 = add i64 %2554, 5
  br label %block_.L_47d7fa

block_.L_47d7fa:                                  ; preds = %block_.L_47d7f5, %block_47d50f, %block_47d4eb, %block_47d4b4
  %.sink75 = phi i64 [ %2555, %block_.L_47d7f5 ], [ %1376, %block_47d50f ], [ %1316, %block_47d4eb ], [ %1225, %block_47d4b4 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_47d7f5 ], [ %MEMORY.10, %block_47d50f ], [ %MEMORY.10, %block_47d4eb ], [ %MEMORY.10, %block_47d4b4 ]
  %2556 = load i64, i64* %RBP.i, align 8
  %2557 = add i64 %2556, -20
  %2558 = add i64 %.sink75, 3
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i32*
  %2560 = load i32, i32* %2559, align 4
  %2561 = add i32 %2560, 1
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RAX.i1159, align 8
  %2563 = icmp eq i32 %2560, -1
  %2564 = icmp eq i32 %2561, 0
  %2565 = or i1 %2563, %2564
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %12, align 1
  %2567 = and i32 %2561, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %13, align 1
  %2572 = xor i32 %2561, %2560
  %2573 = lshr i32 %2572, 4
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  store i8 %2575, i8* %14, align 1
  %2576 = zext i1 %2564 to i8
  store i8 %2576, i8* %15, align 1
  %2577 = lshr i32 %2561, 31
  %2578 = trunc i32 %2577 to i8
  store i8 %2578, i8* %16, align 1
  %2579 = lshr i32 %2560, 31
  %2580 = xor i32 %2577, %2579
  %2581 = add nuw nsw i32 %2580, %2577
  %2582 = icmp eq i32 %2581, 2
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %17, align 1
  %2584 = add i64 %.sink75, 9
  store i64 %2584, i64* %3, align 8
  store i32 %2561, i32* %2559, align 4
  %2585 = load i64, i64* %3, align 8
  %2586 = add i64 %2585, -894
  store i64 %2586, i64* %3, align 8
  br label %block_.L_47d485

block_.L_47d808:                                  ; preds = %block_.L_47d485
  %2587 = add i64 %1178, 5
  br label %block_.L_47d80d

block_.L_47d80d:                                  ; preds = %block_.L_47d808, %block_.L_47d46a, %block_47d3df
  %2588 = phi i64 [ %1150, %block_.L_47d808 ], [ %.pre112, %block_.L_47d46a ], [ %909, %block_47d3df ]
  %.sink = phi i64 [ %2587, %block_.L_47d808 ], [ %1142, %block_.L_47d46a ], [ %924, %block_47d3df ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.10, %block_.L_47d808 ], [ %MEMORY.2, %block_.L_47d46a ], [ %MEMORY.2, %block_47d3df ]
  %2589 = add i64 %2588, -16
  %2590 = add i64 %.sink, 3
  store i64 %2590, i64* %3, align 8
  %2591 = inttoptr i64 %2589 to i32*
  %2592 = load i32, i32* %2591, align 4
  %2593 = add i32 %2592, 1
  %2594 = zext i32 %2593 to i64
  store i64 %2594, i64* %RAX.i1159, align 8
  %2595 = icmp eq i32 %2592, -1
  %2596 = icmp eq i32 %2593, 0
  %2597 = or i1 %2595, %2596
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %12, align 1
  %2599 = and i32 %2593, 255
  %2600 = tail call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %13, align 1
  %2604 = xor i32 %2593, %2592
  %2605 = lshr i32 %2604, 4
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  store i8 %2607, i8* %14, align 1
  %2608 = zext i1 %2596 to i8
  store i8 %2608, i8* %15, align 1
  %2609 = lshr i32 %2593, 31
  %2610 = trunc i32 %2609 to i8
  store i8 %2610, i8* %16, align 1
  %2611 = lshr i32 %2592, 31
  %2612 = xor i32 %2609, %2611
  %2613 = add nuw nsw i32 %2612, %2609
  %2614 = icmp eq i32 %2613, 2
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %17, align 1
  %2616 = add i64 %.sink, 9
  store i64 %2616, i64* %3, align 8
  store i32 %2593, i32* %2591, align 4
  %2617 = load i64, i64* %3, align 8
  %2618 = add i64 %2617, -1589
  store i64 %2618, i64* %3, align 8
  br label %block_.L_47d1e1

block_.L_47d81b.loopexit:                         ; preds = %block_.L_47d1e1
  br label %block_.L_47d81b

block_.L_47d81b:                                  ; preds = %block_.L_47d81b.loopexit, %block_47d226
  %2619 = phi i64 [ %206, %block_47d226 ], [ %121, %block_.L_47d81b.loopexit ]
  %2620 = phi i64 [ %223, %block_47d226 ], [ %150, %block_.L_47d81b.loopexit ]
  %2621 = add i64 %2620, 5
  store i64 %2621, i64* %3, align 8
  br label %block_.L_47d820

block_.L_47d820:                                  ; preds = %block_.L_47d81b, %block_47d1d5
  %2622 = phi i64 [ %60, %block_47d1d5 ], [ %2619, %block_.L_47d81b ]
  %storemerge = phi i64 [ %116, %block_47d1d5 ], [ %2621, %block_.L_47d81b ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.1, %block_47d1d5 ], [ %MEMORY.2, %block_.L_47d81b ]
  %2623 = add i64 %2622, -8
  %2624 = add i64 %storemerge, 3
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = add i32 %2626, 1
  %2628 = zext i32 %2627 to i64
  store i64 %2628, i64* %RAX.i1159, align 8
  %2629 = icmp eq i32 %2626, -1
  %2630 = icmp eq i32 %2627, 0
  %2631 = or i1 %2629, %2630
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %12, align 1
  %2633 = and i32 %2627, 255
  %2634 = tail call i32 @llvm.ctpop.i32(i32 %2633)
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = xor i8 %2636, 1
  store i8 %2637, i8* %13, align 1
  %2638 = xor i32 %2627, %2626
  %2639 = lshr i32 %2638, 4
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %14, align 1
  %2642 = zext i1 %2630 to i8
  store i8 %2642, i8* %15, align 1
  %2643 = lshr i32 %2627, 31
  %2644 = trunc i32 %2643 to i8
  store i8 %2644, i8* %16, align 1
  %2645 = lshr i32 %2626, 31
  %2646 = xor i32 %2643, %2645
  %2647 = add nuw nsw i32 %2646, %2643
  %2648 = icmp eq i32 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %17, align 1
  %2650 = add i64 %storemerge, 9
  store i64 %2650, i64* %3, align 8
  store i32 %2627, i32* %2625, align 4
  %2651 = load i64, i64* %3, align 8
  %2652 = add i64 %2651, -1654
  store i64 %2652, i64* %3, align 8
  br label %block_.L_47d1b3

block_.L_47d82e:                                  ; preds = %block_.L_47d1b3
  %2653 = add i64 %89, 7
  store i64 %2653, i64* %3, align 8
  store i32 21, i32* %63, align 4
  %RSI.i199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_47d835

block_.L_47d835:                                  ; preds = %block_.L_47db87, %block_.L_47d82e
  %2654 = phi i64 [ %.pre100, %block_.L_47d82e ], [ %4001, %block_.L_47db87 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.1, %block_.L_47d82e ], [ %MEMORY.42, %block_.L_47db87 ]
  %2655 = load i64, i64* %RBP.i, align 8
  %2656 = add i64 %2655, -8
  %2657 = add i64 %2654, 7
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i32*
  %2659 = load i32, i32* %2658, align 4
  %2660 = add i32 %2659, -400
  %2661 = icmp ult i32 %2659, 400
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %12, align 1
  %2663 = and i32 %2660, 255
  %2664 = tail call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  store i8 %2667, i8* %13, align 1
  %2668 = xor i32 %2659, 16
  %2669 = xor i32 %2668, %2660
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %14, align 1
  %2673 = icmp eq i32 %2660, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %15, align 1
  %2675 = lshr i32 %2660, 31
  %2676 = trunc i32 %2675 to i8
  store i8 %2676, i8* %16, align 1
  %2677 = lshr i32 %2659, 31
  %2678 = xor i32 %2675, %2677
  %2679 = add nuw nsw i32 %2678, %2677
  %2680 = icmp eq i32 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %17, align 1
  %2682 = icmp ne i8 %2676, 0
  %2683 = xor i1 %2682, %2680
  %.v134 = select i1 %2683, i64 13, i64 869
  %2684 = add i64 %2654, %.v134
  store i64 %2684, i64* %3, align 8
  br i1 %2683, label %block_47d842, label %block_.L_47db9a

block_47d842:                                     ; preds = %block_.L_47d835
  %2685 = add i64 %2684, 4
  store i64 %2685, i64* %3, align 8
  %2686 = load i32, i32* %2658, align 4
  %2687 = sext i32 %2686 to i64
  store i64 %2687, i64* %RAX.i1159, align 8
  %2688 = add nsw i64 %2687, 12099168
  %2689 = add i64 %2684, 12
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i8*
  %2691 = load i8, i8* %2690, align 1
  %2692 = zext i8 %2691 to i64
  store i64 %2692, i64* %RCX.i1157, align 8
  %2693 = zext i8 %2691 to i32
  %2694 = add nsw i32 %2693, -1
  %2695 = icmp eq i8 %2691, 0
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %12, align 1
  %2697 = and i32 %2694, 255
  %2698 = tail call i32 @llvm.ctpop.i32(i32 %2697)
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = xor i8 %2700, 1
  store i8 %2701, i8* %13, align 1
  %2702 = xor i32 %2694, %2693
  %2703 = lshr i32 %2702, 4
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  store i8 %2705, i8* %14, align 1
  %2706 = icmp eq i32 %2694, 0
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %15, align 1
  %2708 = lshr i32 %2694, 31
  %2709 = trunc i32 %2708 to i8
  store i8 %2709, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v135 = select i1 %2706, i64 42, i64 21
  %2710 = add i64 %2684, %.v135
  store i64 %2710, i64* %3, align 8
  br i1 %2706, label %block_.L_47d86c, label %block_47d857

block_47d857:                                     ; preds = %block_47d842
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %3, align 8
  %2712 = load i32, i32* %2658, align 4
  %2713 = sext i32 %2712 to i64
  store i64 %2713, i64* %RAX.i1159, align 8
  %2714 = add nsw i64 %2713, 12099168
  %2715 = add i64 %2710, 12
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i8*
  %2717 = load i8, i8* %2716, align 1
  %2718 = zext i8 %2717 to i64
  store i64 %2718, i64* %RCX.i1157, align 8
  %2719 = zext i8 %2717 to i32
  %2720 = add nsw i32 %2719, -2
  %2721 = icmp ult i8 %2717, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %12, align 1
  %2723 = and i32 %2720, 255
  %2724 = tail call i32 @llvm.ctpop.i32(i32 %2723)
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = xor i8 %2726, 1
  store i8 %2727, i8* %13, align 1
  %2728 = xor i32 %2720, %2719
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  store i8 %2731, i8* %14, align 1
  %2732 = icmp eq i32 %2720, 0
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %15, align 1
  %2734 = lshr i32 %2720, 31
  %2735 = trunc i32 %2734 to i8
  store i8 %2735, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v136 = select i1 %2732, i64 21, i64 816
  %2736 = add i64 %2710, %.v136
  store i64 %2736, i64* %3, align 8
  br i1 %2732, label %block_.L_47d86c, label %block_.L_47db87

block_.L_47d86c:                                  ; preds = %block_47d857, %block_47d842
  %2737 = phi i64 [ %2736, %block_47d857 ], [ %2710, %block_47d842 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1159, align 8
  %2738 = add i64 %2737, 14
  store i64 %2738, i64* %3, align 8
  %2739 = load i32, i32* %2658, align 4
  %2740 = sext i32 %2739 to i64
  %2741 = mul nsw i64 %2740, 76
  store i64 %2741, i64* %RCX.i1157, align 8
  %2742 = lshr i64 %2741, 63
  %2743 = add i64 %2741, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2743, i64* %RAX.i1159, align 8
  %2744 = icmp ult i64 %2743, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2745 = icmp ult i64 %2743, %2741
  %2746 = or i1 %2744, %2745
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %12, align 1
  %2748 = trunc i64 %2743 to i32
  %2749 = and i32 %2748, 252
  %2750 = tail call i32 @llvm.ctpop.i32(i32 %2749)
  %2751 = trunc i32 %2750 to i8
  %2752 = and i8 %2751, 1
  %2753 = xor i8 %2752, 1
  store i8 %2753, i8* %13, align 1
  %2754 = xor i64 %2741, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2755 = xor i64 %2754, %2743
  %2756 = lshr i64 %2755, 4
  %2757 = trunc i64 %2756 to i8
  %2758 = and i8 %2757, 1
  store i8 %2758, i8* %14, align 1
  %2759 = icmp eq i64 %2743, 0
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %15, align 1
  %2761 = lshr i64 %2743, 63
  %2762 = trunc i64 %2761 to i8
  store i8 %2762, i8* %16, align 1
  %2763 = xor i64 %2761, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2764 = xor i64 %2761, %2742
  %2765 = add nuw nsw i64 %2763, %2764
  %2766 = icmp eq i64 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %17, align 1
  %2768 = add i64 %2741, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %2769 = add i64 %2737, 24
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i32*
  %2771 = load i32, i32* %2770, align 4
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RDX.i1132, align 8
  %2773 = add i64 %2737, 27
  store i64 %2773, i64* %3, align 8
  %2774 = load i32, i32* %2658, align 4
  %2775 = sub i32 %2771, %2774
  %2776 = icmp ult i32 %2771, %2774
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %12, align 1
  %2778 = and i32 %2775, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %13, align 1
  %2783 = xor i32 %2774, %2771
  %2784 = xor i32 %2783, %2775
  %2785 = lshr i32 %2784, 4
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  store i8 %2787, i8* %14, align 1
  %2788 = icmp eq i32 %2775, 0
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %15, align 1
  %2790 = lshr i32 %2775, 31
  %2791 = trunc i32 %2790 to i8
  store i8 %2791, i8* %16, align 1
  %2792 = lshr i32 %2771, 31
  %2793 = lshr i32 %2774, 31
  %2794 = xor i32 %2793, %2792
  %2795 = xor i32 %2790, %2792
  %2796 = add nuw nsw i32 %2795, %2794
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %17, align 1
  %.v137 = select i1 %2788, i64 33, i64 795
  %2799 = add i64 %2737, %.v137
  store i64 %2799, i64* %3, align 8
  br i1 %2788, label %block_47d88d, label %block_.L_47db87

block_47d88d:                                     ; preds = %block_.L_47d86c
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1159, align 8
  %2800 = load i64, i64* %RBP.i, align 8
  %2801 = add i64 %2800, -8
  %2802 = add i64 %2799, 14
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i32*
  %2804 = load i32, i32* %2803, align 4
  %2805 = sext i32 %2804 to i64
  %2806 = mul nsw i64 %2805, 76
  store i64 %2806, i64* %RCX.i1157, align 8
  %2807 = lshr i64 %2806, 63
  %2808 = add i64 %2806, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2808, i64* %RAX.i1159, align 8
  %2809 = icmp ult i64 %2808, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2810 = icmp ult i64 %2808, %2806
  %2811 = or i1 %2809, %2810
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %12, align 1
  %2813 = trunc i64 %2808 to i32
  %2814 = and i32 %2813, 252
  %2815 = tail call i32 @llvm.ctpop.i32(i32 %2814)
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  %2818 = xor i8 %2817, 1
  store i8 %2818, i8* %13, align 1
  %2819 = xor i64 %2806, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2820 = xor i64 %2819, %2808
  %2821 = lshr i64 %2820, 4
  %2822 = trunc i64 %2821 to i8
  %2823 = and i8 %2822, 1
  store i8 %2823, i8* %14, align 1
  %2824 = icmp eq i64 %2808, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %15, align 1
  %2826 = lshr i64 %2808, 63
  %2827 = trunc i64 %2826 to i8
  store i8 %2827, i8* %16, align 1
  %2828 = xor i64 %2826, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2829 = xor i64 %2826, %2807
  %2830 = add nuw nsw i64 %2828, %2829
  %2831 = icmp eq i64 %2830, 2
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %17, align 1
  %2833 = add i64 %2806, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %2834 = add i64 %2799, 25
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = add i32 %2836, -2
  %2838 = icmp ult i32 %2836, 2
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %12, align 1
  %2840 = and i32 %2837, 255
  %2841 = tail call i32 @llvm.ctpop.i32(i32 %2840)
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = xor i8 %2843, 1
  store i8 %2844, i8* %13, align 1
  %2845 = xor i32 %2837, %2836
  %2846 = lshr i32 %2845, 4
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  store i8 %2848, i8* %14, align 1
  %2849 = icmp eq i32 %2837, 0
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %15, align 1
  %2851 = lshr i32 %2837, 31
  %2852 = trunc i32 %2851 to i8
  store i8 %2852, i8* %16, align 1
  %2853 = lshr i32 %2836, 31
  %2854 = xor i32 %2851, %2853
  %2855 = add nuw nsw i32 %2854, %2853
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %17, align 1
  %.v138 = select i1 %2849, i64 31, i64 762
  %2858 = add i64 %2799, %.v138
  store i64 %2858, i64* %3, align 8
  br i1 %2849, label %block_47d8ac, label %block_.L_47db87

block_47d8ac:                                     ; preds = %block_47d88d
  %2859 = load i64, i64* %RBP.i, align 8
  %2860 = add i64 %2859, -12
  %2861 = add i64 %2858, 7
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  store i32 21, i32* %2862, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_47d8b3

block_.L_47d8b3:                                  ; preds = %block_.L_47db74, %block_47d8ac
  %2863 = phi i64 [ %.pre101, %block_47d8ac ], [ %3968, %block_.L_47db74 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.26, %block_47d8ac ], [ %MEMORY.41, %block_.L_47db74 ]
  %2864 = load i64, i64* %RBP.i, align 8
  %2865 = add i64 %2864, -12
  %2866 = add i64 %2863, 7
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i32*
  %2868 = load i32, i32* %2867, align 4
  %2869 = add i32 %2868, -400
  %2870 = icmp ult i32 %2868, 400
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %12, align 1
  %2872 = and i32 %2869, 255
  %2873 = tail call i32 @llvm.ctpop.i32(i32 %2872)
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  %2876 = xor i8 %2875, 1
  store i8 %2876, i8* %13, align 1
  %2877 = xor i32 %2868, 16
  %2878 = xor i32 %2877, %2869
  %2879 = lshr i32 %2878, 4
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  store i8 %2881, i8* %14, align 1
  %2882 = icmp eq i32 %2869, 0
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %15, align 1
  %2884 = lshr i32 %2869, 31
  %2885 = trunc i32 %2884 to i8
  store i8 %2885, i8* %16, align 1
  %2886 = lshr i32 %2868, 31
  %2887 = xor i32 %2884, %2886
  %2888 = add nuw nsw i32 %2887, %2886
  %2889 = icmp eq i32 %2888, 2
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %17, align 1
  %2891 = icmp ne i8 %2885, 0
  %2892 = xor i1 %2891, %2889
  %.v139 = select i1 %2892, i64 13, i64 719
  %2893 = add i64 %2863, %.v139
  store i64 %2893, i64* %3, align 8
  br i1 %2892, label %block_47d8c0, label %block_.L_47db82

block_47d8c0:                                     ; preds = %block_.L_47d8b3
  %2894 = add i64 %2893, 4
  store i64 %2894, i64* %3, align 8
  %2895 = load i32, i32* %2867, align 4
  %2896 = sext i32 %2895 to i64
  store i64 %2896, i64* %RAX.i1159, align 8
  %2897 = add nsw i64 %2896, 12099168
  %2898 = add i64 %2893, 12
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i8*
  %2900 = load i8, i8* %2899, align 1
  %2901 = zext i8 %2900 to i64
  store i64 %2901, i64* %RCX.i1157, align 8
  %2902 = zext i8 %2900 to i32
  store i8 0, i8* %12, align 1
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2907 = icmp eq i8 %2900, 0
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v140 = select i1 %2907, i64 26, i64 21
  %2909 = add i64 %2893, %.v140
  store i64 %2909, i64* %3, align 8
  br i1 %2907, label %block_.L_47d8da, label %block_47d8d5

block_47d8d5:                                     ; preds = %block_47d8c0
  %2910 = add i64 %2909, 671
  br label %block_.L_47db74

block_.L_47d8da:                                  ; preds = %block_47d8c0
  %2911 = add i64 %2864, -36
  %2912 = add i64 %2909, 7
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i32*
  store i32 0, i32* %2913, align 4
  %2914 = load i64, i64* %RBP.i, align 8
  %2915 = add i64 %2914, -16
  %2916 = load i64, i64* %3, align 8
  %2917 = add i64 %2916, 7
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2915 to i32*
  store i32 0, i32* %2918, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_47d8e8

block_.L_47d8e8:                                  ; preds = %block_.L_47da18, %block_.L_47d8da
  %2919 = phi i64 [ %.pre102, %block_.L_47d8da ], [ %3470, %block_.L_47da18 ]
  %2920 = load i64, i64* %RBP.i, align 8
  %2921 = add i64 %2920, -16
  %2922 = add i64 %2919, 4
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i32*
  %2924 = load i32, i32* %2923, align 4
  %2925 = add i32 %2924, -120
  %2926 = icmp ult i32 %2924, 120
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %12, align 1
  %2928 = and i32 %2925, 255
  %2929 = tail call i32 @llvm.ctpop.i32(i32 %2928)
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  store i8 %2932, i8* %13, align 1
  %2933 = xor i32 %2924, 16
  %2934 = xor i32 %2933, %2925
  %2935 = lshr i32 %2934, 4
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  store i8 %2937, i8* %14, align 1
  %2938 = icmp eq i32 %2925, 0
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %15, align 1
  %2940 = lshr i32 %2925, 31
  %2941 = trunc i32 %2940 to i8
  store i8 %2941, i8* %16, align 1
  %2942 = lshr i32 %2924, 31
  %2943 = xor i32 %2940, %2942
  %2944 = add nuw nsw i32 %2943, %2942
  %2945 = icmp eq i32 %2944, 2
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %17, align 1
  %2947 = icmp ne i8 %2941, 0
  %2948 = xor i1 %2947, %2945
  %.v141 = select i1 %2948, i64 10, i64 323
  %2949 = add i64 %2919, %.v141
  store i64 %2949, i64* %3, align 8
  br i1 %2948, label %block_47d8f2, label %block_.L_47da2b.loopexit

block_47d8f2:                                     ; preds = %block_.L_47d8e8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1159, align 8
  %2950 = add i64 %2920, -12
  %2951 = add i64 %2949, 14
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i32*
  %2953 = load i32, i32* %2952, align 4
  %2954 = sext i32 %2953 to i64
  %2955 = mul nsw i64 %2954, 564
  store i64 %2955, i64* %RCX.i1157, align 8
  %2956 = lshr i64 %2955, 63
  %2957 = add i64 %2955, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %2957, i64* %RAX.i1159, align 8
  %2958 = icmp ult i64 %2957, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2959 = icmp ult i64 %2957, %2955
  %2960 = or i1 %2958, %2959
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %12, align 1
  %2962 = trunc i64 %2957 to i32
  %2963 = and i32 %2962, 252
  %2964 = tail call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %13, align 1
  %2968 = xor i64 %2955, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2969 = xor i64 %2968, %2957
  %2970 = lshr i64 %2969, 4
  %2971 = trunc i64 %2970 to i8
  %2972 = and i8 %2971, 1
  store i8 %2972, i8* %14, align 1
  %2973 = icmp eq i64 %2957, 0
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %15, align 1
  %2975 = lshr i64 %2957, 63
  %2976 = trunc i64 %2975 to i8
  store i8 %2976, i8* %16, align 1
  %2977 = xor i64 %2975, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2978 = xor i64 %2975, %2956
  %2979 = add nuw nsw i64 %2977, %2978
  %2980 = icmp eq i64 %2979, 2
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %17, align 1
  %2982 = add i64 %2949, 28
  store i64 %2982, i64* %3, align 8
  %2983 = load i32, i32* %2923, align 4
  %2984 = sext i32 %2983 to i64
  store i64 %2984, i64* %RCX.i1157, align 8
  %2985 = shl nsw i64 %2984, 2
  %2986 = add i64 %2955, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %2987 = add i64 %2986, %2985
  %2988 = add i64 %2949, 32
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i32*
  %2990 = load i32, i32* %2989, align 4
  %2991 = zext i32 %2990 to i64
  store i64 %2991, i64* %RDX.i1132, align 8
  %2992 = add i64 %2920, -80
  %2993 = add i64 %2949, 35
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i32*
  store i32 %2990, i32* %2994, align 4
  %2995 = load i64, i64* %RBP.i, align 8
  %2996 = add i64 %2995, -80
  %2997 = load i64, i64* %3, align 8
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2996 to i32*
  %3000 = load i32, i32* %2999, align 4
  store i8 0, i8* %12, align 1
  %3001 = and i32 %3000, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3006 = icmp eq i32 %3000, 0
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %15, align 1
  %3008 = lshr i32 %3000, 31
  %3009 = trunc i32 %3008 to i8
  store i8 %3009, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3010 = icmp ne i8 %3009, 0
  %.v = select i1 %3010, i64 6, i64 11
  %3011 = add i64 %2998, %.v
  store i64 %3011, i64* %3, align 8
  br i1 %3010, label %block_47d91f, label %block_.L_47d924

block_47d91f:                                     ; preds = %block_47d8f2
  %3012 = add i64 %3011, 268
  br label %block_.L_47da2b.sink.split

block_.L_47d924:                                  ; preds = %block_47d8f2
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3013 = add i64 %3011, 14
  store i64 %3013, i64* %3, align 8
  %3014 = load i32, i32* %2999, align 4
  %3015 = sext i32 %3014 to i64
  %3016 = mul nsw i64 %3015, 12
  store i64 %3016, i64* %RCX.i1157, align 8
  %3017 = lshr i64 %3016, 63
  %3018 = add i64 %3016, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3018, i64* %RAX.i1159, align 8
  %3019 = icmp ult i64 %3018, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3020 = icmp ult i64 %3018, %3016
  %3021 = or i1 %3019, %3020
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %12, align 1
  %3023 = trunc i64 %3018 to i32
  %3024 = and i32 %3023, 252
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %13, align 1
  %3029 = xor i64 %3016, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3030 = xor i64 %3029, %3018
  %3031 = lshr i64 %3030, 4
  %3032 = trunc i64 %3031 to i8
  %3033 = and i8 %3032, 1
  store i8 %3033, i8* %14, align 1
  %3034 = icmp eq i64 %3018, 0
  %3035 = zext i1 %3034 to i8
  store i8 %3035, i8* %15, align 1
  %3036 = lshr i64 %3018, 63
  %3037 = trunc i64 %3036 to i8
  store i8 %3037, i8* %16, align 1
  %3038 = xor i64 %3036, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3039 = xor i64 %3036, %3017
  %3040 = add nuw nsw i64 %3038, %3039
  %3041 = icmp eq i64 %3040, 2
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %17, align 1
  %3043 = inttoptr i64 %3018 to i32*
  %3044 = add i64 %3011, 24
  store i64 %3044, i64* %3, align 8
  %3045 = load i32, i32* %3043, align 4
  %3046 = add i32 %3045, -26
  %3047 = icmp ult i32 %3045, 26
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %12, align 1
  %3049 = and i32 %3046, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %13, align 1
  %3054 = xor i32 %3045, 16
  %3055 = xor i32 %3054, %3046
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %14, align 1
  %3059 = icmp eq i32 %3046, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %15, align 1
  %3061 = lshr i32 %3046, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %16, align 1
  %3063 = lshr i32 %3045, 31
  %3064 = xor i32 %3061, %3063
  %3065 = add nuw nsw i32 %3064, %3063
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %17, align 1
  %.v147 = select i1 %3059, i64 180, i64 30
  %3068 = add i64 %3011, %.v147
  store i64 %3068, i64* %3, align 8
  br i1 %3059, label %block_.L_47d9d8, label %block_47d942

block_47d942:                                     ; preds = %block_.L_47d924
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3069 = load i64, i64* %RBP.i, align 8
  %3070 = add i64 %3069, -80
  %3071 = add i64 %3068, 14
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i32*
  %3073 = load i32, i32* %3072, align 4
  %3074 = sext i32 %3073 to i64
  %3075 = mul nsw i64 %3074, 12
  store i64 %3075, i64* %RCX.i1157, align 8
  %3076 = lshr i64 %3075, 63
  %3077 = add i64 %3075, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3077, i64* %RAX.i1159, align 8
  %3078 = icmp ult i64 %3077, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3079 = icmp ult i64 %3077, %3075
  %3080 = or i1 %3078, %3079
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %12, align 1
  %3082 = trunc i64 %3077 to i32
  %3083 = and i32 %3082, 252
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %13, align 1
  %3088 = xor i64 %3075, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3089 = xor i64 %3088, %3077
  %3090 = lshr i64 %3089, 4
  %3091 = trunc i64 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %14, align 1
  %3093 = icmp eq i64 %3077, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %15, align 1
  %3095 = lshr i64 %3077, 63
  %3096 = trunc i64 %3095 to i8
  store i8 %3096, i8* %16, align 1
  %3097 = xor i64 %3095, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3098 = xor i64 %3095, %3076
  %3099 = add nuw nsw i64 %3097, %3098
  %3100 = icmp eq i64 %3099, 2
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %17, align 1
  %3102 = inttoptr i64 %3077 to i32*
  %3103 = add i64 %3068, 24
  store i64 %3103, i64* %3, align 8
  %3104 = load i32, i32* %3102, align 4
  %3105 = add i32 %3104, -28
  %3106 = icmp ult i32 %3104, 28
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %12, align 1
  %3108 = and i32 %3105, 255
  %3109 = tail call i32 @llvm.ctpop.i32(i32 %3108)
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = xor i8 %3111, 1
  store i8 %3112, i8* %13, align 1
  %3113 = xor i32 %3104, 16
  %3114 = xor i32 %3113, %3105
  %3115 = lshr i32 %3114, 4
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  store i8 %3117, i8* %14, align 1
  %3118 = icmp eq i32 %3105, 0
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %15, align 1
  %3120 = lshr i32 %3105, 31
  %3121 = trunc i32 %3120 to i8
  store i8 %3121, i8* %16, align 1
  %3122 = lshr i32 %3104, 31
  %3123 = xor i32 %3120, %3122
  %3124 = add nuw nsw i32 %3123, %3122
  %3125 = icmp eq i32 %3124, 2
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %17, align 1
  %.v148 = select i1 %3118, i64 150, i64 30
  %3127 = add i64 %3068, %.v148
  store i64 %3127, i64* %3, align 8
  br i1 %3118, label %block_.L_47d9d8, label %block_47d960

block_47d960:                                     ; preds = %block_47d942
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3128 = load i64, i64* %RBP.i, align 8
  %3129 = add i64 %3128, -80
  %3130 = add i64 %3127, 14
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to i32*
  %3132 = load i32, i32* %3131, align 4
  %3133 = sext i32 %3132 to i64
  %3134 = mul nsw i64 %3133, 12
  store i64 %3134, i64* %RCX.i1157, align 8
  %3135 = lshr i64 %3134, 63
  %3136 = add i64 %3134, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3136, i64* %RAX.i1159, align 8
  %3137 = icmp ult i64 %3136, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3138 = icmp ult i64 %3136, %3134
  %3139 = or i1 %3137, %3138
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %12, align 1
  %3141 = trunc i64 %3136 to i32
  %3142 = and i32 %3141, 252
  %3143 = tail call i32 @llvm.ctpop.i32(i32 %3142)
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  %3146 = xor i8 %3145, 1
  store i8 %3146, i8* %13, align 1
  %3147 = xor i64 %3134, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3148 = xor i64 %3147, %3136
  %3149 = lshr i64 %3148, 4
  %3150 = trunc i64 %3149 to i8
  %3151 = and i8 %3150, 1
  store i8 %3151, i8* %14, align 1
  %3152 = icmp eq i64 %3136, 0
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %15, align 1
  %3154 = lshr i64 %3136, 63
  %3155 = trunc i64 %3154 to i8
  store i8 %3155, i8* %16, align 1
  %3156 = xor i64 %3154, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3157 = xor i64 %3154, %3135
  %3158 = add nuw nsw i64 %3156, %3157
  %3159 = icmp eq i64 %3158, 2
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %17, align 1
  %3161 = inttoptr i64 %3136 to i32*
  %3162 = add i64 %3127, 24
  store i64 %3162, i64* %3, align 8
  %3163 = load i32, i32* %3161, align 4
  %3164 = add i32 %3163, -30
  %3165 = icmp ult i32 %3163, 30
  %3166 = zext i1 %3165 to i8
  store i8 %3166, i8* %12, align 1
  %3167 = and i32 %3164, 255
  %3168 = tail call i32 @llvm.ctpop.i32(i32 %3167)
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  %3171 = xor i8 %3170, 1
  store i8 %3171, i8* %13, align 1
  %3172 = xor i32 %3163, 16
  %3173 = xor i32 %3172, %3164
  %3174 = lshr i32 %3173, 4
  %3175 = trunc i32 %3174 to i8
  %3176 = and i8 %3175, 1
  store i8 %3176, i8* %14, align 1
  %3177 = icmp eq i32 %3164, 0
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %15, align 1
  %3179 = lshr i32 %3164, 31
  %3180 = trunc i32 %3179 to i8
  store i8 %3180, i8* %16, align 1
  %3181 = lshr i32 %3163, 31
  %3182 = xor i32 %3179, %3181
  %3183 = add nuw nsw i32 %3182, %3181
  %3184 = icmp eq i32 %3183, 2
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %17, align 1
  %.v149 = select i1 %3177, i64 120, i64 30
  %3186 = add i64 %3127, %.v149
  store i64 %3186, i64* %3, align 8
  br i1 %3177, label %block_.L_47d9d8, label %block_47d97e

block_47d97e:                                     ; preds = %block_47d960
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3187 = load i64, i64* %RBP.i, align 8
  %3188 = add i64 %3187, -80
  %3189 = add i64 %3186, 14
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = sext i32 %3191 to i64
  %3193 = mul nsw i64 %3192, 12
  store i64 %3193, i64* %RCX.i1157, align 8
  %3194 = lshr i64 %3193, 63
  %3195 = add i64 %3193, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3195, i64* %RAX.i1159, align 8
  %3196 = icmp ult i64 %3195, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3197 = icmp ult i64 %3195, %3193
  %3198 = or i1 %3196, %3197
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %12, align 1
  %3200 = trunc i64 %3195 to i32
  %3201 = and i32 %3200, 252
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %13, align 1
  %3206 = xor i64 %3193, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3207 = xor i64 %3206, %3195
  %3208 = lshr i64 %3207, 4
  %3209 = trunc i64 %3208 to i8
  %3210 = and i8 %3209, 1
  store i8 %3210, i8* %14, align 1
  %3211 = icmp eq i64 %3195, 0
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %15, align 1
  %3213 = lshr i64 %3195, 63
  %3214 = trunc i64 %3213 to i8
  store i8 %3214, i8* %16, align 1
  %3215 = xor i64 %3213, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3216 = xor i64 %3213, %3194
  %3217 = add nuw nsw i64 %3215, %3216
  %3218 = icmp eq i64 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %17, align 1
  %3220 = inttoptr i64 %3195 to i32*
  %3221 = add i64 %3186, 24
  store i64 %3221, i64* %3, align 8
  %3222 = load i32, i32* %3220, align 4
  %3223 = add i32 %3222, -32
  %3224 = icmp ult i32 %3222, 32
  %3225 = zext i1 %3224 to i8
  store i8 %3225, i8* %12, align 1
  %3226 = and i32 %3223, 255
  %3227 = tail call i32 @llvm.ctpop.i32(i32 %3226)
  %3228 = trunc i32 %3227 to i8
  %3229 = and i8 %3228, 1
  %3230 = xor i8 %3229, 1
  store i8 %3230, i8* %13, align 1
  %3231 = xor i32 %3223, %3222
  %3232 = lshr i32 %3231, 4
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  store i8 %3234, i8* %14, align 1
  %3235 = icmp eq i32 %3223, 0
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %15, align 1
  %3237 = lshr i32 %3223, 31
  %3238 = trunc i32 %3237 to i8
  store i8 %3238, i8* %16, align 1
  %3239 = lshr i32 %3222, 31
  %3240 = xor i32 %3237, %3239
  %3241 = add nuw nsw i32 %3240, %3239
  %3242 = icmp eq i32 %3241, 2
  %3243 = zext i1 %3242 to i8
  store i8 %3243, i8* %17, align 1
  %.v150 = select i1 %3235, i64 90, i64 30
  %3244 = add i64 %3186, %.v150
  store i64 %3244, i64* %3, align 8
  br i1 %3235, label %block_.L_47d9d8, label %block_47d99c

block_47d99c:                                     ; preds = %block_47d97e
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3245 = load i64, i64* %RBP.i, align 8
  %3246 = add i64 %3245, -80
  %3247 = add i64 %3244, 14
  store i64 %3247, i64* %3, align 8
  %3248 = inttoptr i64 %3246 to i32*
  %3249 = load i32, i32* %3248, align 4
  %3250 = sext i32 %3249 to i64
  %3251 = mul nsw i64 %3250, 12
  store i64 %3251, i64* %RCX.i1157, align 8
  %3252 = lshr i64 %3251, 63
  %3253 = add i64 %3251, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3253, i64* %RAX.i1159, align 8
  %3254 = icmp ult i64 %3253, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3255 = icmp ult i64 %3253, %3251
  %3256 = or i1 %3254, %3255
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %12, align 1
  %3258 = trunc i64 %3253 to i32
  %3259 = and i32 %3258, 252
  %3260 = tail call i32 @llvm.ctpop.i32(i32 %3259)
  %3261 = trunc i32 %3260 to i8
  %3262 = and i8 %3261, 1
  %3263 = xor i8 %3262, 1
  store i8 %3263, i8* %13, align 1
  %3264 = xor i64 %3251, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3265 = xor i64 %3264, %3253
  %3266 = lshr i64 %3265, 4
  %3267 = trunc i64 %3266 to i8
  %3268 = and i8 %3267, 1
  store i8 %3268, i8* %14, align 1
  %3269 = icmp eq i64 %3253, 0
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %15, align 1
  %3271 = lshr i64 %3253, 63
  %3272 = trunc i64 %3271 to i8
  store i8 %3272, i8* %16, align 1
  %3273 = xor i64 %3271, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3274 = xor i64 %3271, %3252
  %3275 = add nuw nsw i64 %3273, %3274
  %3276 = icmp eq i64 %3275, 2
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %17, align 1
  %3278 = inttoptr i64 %3253 to i32*
  %3279 = add i64 %3244, 24
  store i64 %3279, i64* %3, align 8
  %3280 = load i32, i32* %3278, align 4
  %3281 = add i32 %3280, -34
  %3282 = icmp ult i32 %3280, 34
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %12, align 1
  %3284 = and i32 %3281, 255
  %3285 = tail call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  store i8 %3288, i8* %13, align 1
  %3289 = xor i32 %3281, %3280
  %3290 = lshr i32 %3289, 4
  %3291 = trunc i32 %3290 to i8
  %3292 = and i8 %3291, 1
  store i8 %3292, i8* %14, align 1
  %3293 = icmp eq i32 %3281, 0
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %15, align 1
  %3295 = lshr i32 %3281, 31
  %3296 = trunc i32 %3295 to i8
  store i8 %3296, i8* %16, align 1
  %3297 = lshr i32 %3280, 31
  %3298 = xor i32 %3295, %3297
  %3299 = add nuw nsw i32 %3298, %3297
  %3300 = icmp eq i32 %3299, 2
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %17, align 1
  %.v151 = select i1 %3293, i64 60, i64 30
  %3302 = add i64 %3244, %.v151
  store i64 %3302, i64* %3, align 8
  br i1 %3293, label %block_.L_47d9d8, label %block_47d9ba

block_47d9ba:                                     ; preds = %block_47d99c
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3303 = load i64, i64* %RBP.i, align 8
  %3304 = add i64 %3303, -80
  %3305 = add i64 %3302, 14
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i32*
  %3307 = load i32, i32* %3306, align 4
  %3308 = sext i32 %3307 to i64
  %3309 = mul nsw i64 %3308, 12
  store i64 %3309, i64* %RCX.i1157, align 8
  %3310 = lshr i64 %3309, 63
  %3311 = add i64 %3309, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3311, i64* %RAX.i1159, align 8
  %3312 = icmp ult i64 %3311, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3313 = icmp ult i64 %3311, %3309
  %3314 = or i1 %3312, %3313
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %12, align 1
  %3316 = trunc i64 %3311 to i32
  %3317 = and i32 %3316, 252
  %3318 = tail call i32 @llvm.ctpop.i32(i32 %3317)
  %3319 = trunc i32 %3318 to i8
  %3320 = and i8 %3319, 1
  %3321 = xor i8 %3320, 1
  store i8 %3321, i8* %13, align 1
  %3322 = xor i64 %3309, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3323 = xor i64 %3322, %3311
  %3324 = lshr i64 %3323, 4
  %3325 = trunc i64 %3324 to i8
  %3326 = and i8 %3325, 1
  store i8 %3326, i8* %14, align 1
  %3327 = icmp eq i64 %3311, 0
  %3328 = zext i1 %3327 to i8
  store i8 %3328, i8* %15, align 1
  %3329 = lshr i64 %3311, 63
  %3330 = trunc i64 %3329 to i8
  store i8 %3330, i8* %16, align 1
  %3331 = xor i64 %3329, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3332 = xor i64 %3329, %3310
  %3333 = add nuw nsw i64 %3331, %3332
  %3334 = icmp eq i64 %3333, 2
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %17, align 1
  %3336 = inttoptr i64 %3311 to i32*
  %3337 = add i64 %3302, 24
  store i64 %3337, i64* %3, align 8
  %3338 = load i32, i32* %3336, align 4
  %3339 = add i32 %3338, -36
  %3340 = icmp ult i32 %3338, 36
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %12, align 1
  %3342 = and i32 %3339, 255
  %3343 = tail call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  store i8 %3346, i8* %13, align 1
  %3347 = xor i32 %3339, %3338
  %3348 = lshr i32 %3347, 4
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  store i8 %3350, i8* %14, align 1
  %3351 = icmp eq i32 %3339, 0
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %15, align 1
  %3353 = lshr i32 %3339, 31
  %3354 = trunc i32 %3353 to i8
  store i8 %3354, i8* %16, align 1
  %3355 = lshr i32 %3338, 31
  %3356 = xor i32 %3353, %3355
  %3357 = add nuw nsw i32 %3356, %3355
  %3358 = icmp eq i32 %3357, 2
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %17, align 1
  %.v152 = select i1 %3351, i64 30, i64 94
  %3360 = add i64 %3302, %.v152
  store i64 %3360, i64* %3, align 8
  br i1 %3351, label %block_.L_47d9d8, label %block_.L_47da18

block_.L_47d9d8:                                  ; preds = %block_47d9ba, %block_47d99c, %block_47d97e, %block_47d960, %block_47d942, %block_.L_47d924
  %3361 = phi i64 [ %3360, %block_47d9ba ], [ %3302, %block_47d99c ], [ %3244, %block_47d97e ], [ %3186, %block_47d960 ], [ %3127, %block_47d942 ], [ %3068, %block_.L_47d924 ]
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1159, align 8
  %3362 = load i64, i64* %RBP.i, align 8
  %3363 = add i64 %3362, -80
  %3364 = add i64 %3361, 14
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = sext i32 %3366 to i64
  %3368 = mul nsw i64 %3367, 12
  store i64 %3368, i64* %RCX.i1157, align 8
  %3369 = lshr i64 %3368, 63
  %3370 = add i64 %3368, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %3370, i64* %RAX.i1159, align 8
  %3371 = icmp ult i64 %3370, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3372 = icmp ult i64 %3370, %3368
  %3373 = or i1 %3371, %3372
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %12, align 1
  %3375 = trunc i64 %3370 to i32
  %3376 = and i32 %3375, 252
  %3377 = tail call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  store i8 %3380, i8* %13, align 1
  %3381 = xor i64 %3368, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %3382 = xor i64 %3381, %3370
  %3383 = lshr i64 %3382, 4
  %3384 = trunc i64 %3383 to i8
  %3385 = and i8 %3384, 1
  store i8 %3385, i8* %14, align 1
  %3386 = icmp eq i64 %3370, 0
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %15, align 1
  %3388 = lshr i64 %3370, 63
  %3389 = trunc i64 %3388 to i8
  store i8 %3389, i8* %16, align 1
  %3390 = xor i64 %3388, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %3391 = xor i64 %3388, %3369
  %3392 = add nuw nsw i64 %3390, %3391
  %3393 = icmp eq i64 %3392, 2
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %17, align 1
  %3395 = add i64 %3368, add (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 4)
  %3396 = add i64 %3361, 24
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3395 to i32*
  %3398 = load i32, i32* %3397, align 4
  %3399 = zext i32 %3398 to i64
  store i64 %3399, i64* %RDX.i1132, align 8
  %3400 = add i64 %3362, -32
  %3401 = add i64 %3361, 27
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3400 to i32*
  store i32 %3398, i32* %3402, align 4
  %3403 = load i64, i64* %RBP.i, align 8
  %3404 = add i64 %3403, -32
  %3405 = load i64, i64* %3, align 8
  %3406 = add i64 %3405, 3
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3404 to i32*
  %3408 = load i32, i32* %3407, align 4
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RDI.i687.pre-phi, align 8
  %3410 = add i64 %3403, -8
  %3411 = add i64 %3405, 6
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = zext i32 %3413 to i64
  store i64 %3414, i64* %RSI.i199, align 8
  %3415 = add i64 %3405, -370899
  %3416 = add i64 %3405, 11
  %3417 = load i64, i64* %6, align 8
  %3418 = add i64 %3417, -8
  %3419 = inttoptr i64 %3418 to i64*
  store i64 %3416, i64* %3419, align 8
  store i64 %3418, i64* %6, align 8
  store i64 %3415, i64* %3, align 8
  %call2_47d9f9 = tail call %struct.Memory* @sub_423120.are_neighbor_dragons(%struct.State* nonnull %0, i64 %3415, %struct.Memory* %MEMORY.28)
  %3420 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %3421 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3422 = and i32 %3420, 255
  %3423 = tail call i32 @llvm.ctpop.i32(i32 %3422)
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  %3426 = xor i8 %3425, 1
  store i8 %3426, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3427 = icmp eq i32 %3420, 0
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %15, align 1
  %3429 = lshr i32 %3420, 31
  %3430 = trunc i32 %3429 to i8
  store i8 %3430, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v153 = select i1 %3427, i64 21, i64 9
  %3431 = add i64 %3421, %.v153
  store i64 %3431, i64* %3, align 8
  br i1 %3427, label %block_.L_47da13, label %block_47da07

block_47da07:                                     ; preds = %block_.L_47d9d8
  %3432 = load i64, i64* %RBP.i, align 8
  %3433 = add i64 %3432, -36
  %3434 = add i64 %3431, 7
  store i64 %3434, i64* %3, align 8
  %3435 = inttoptr i64 %3433 to i32*
  store i32 1, i32* %3435, align 4
  %3436 = load i64, i64* %3, align 8
  %3437 = add i64 %3436, 29
  %.pre103.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47da2b.sink.split

block_.L_47da13:                                  ; preds = %block_.L_47d9d8
  %3438 = add i64 %3431, 5
  store i64 %3438, i64* %3, align 8
  br label %block_.L_47da18

block_.L_47da18:                                  ; preds = %block_47d9ba, %block_.L_47da13
  %3439 = phi i64 [ %3438, %block_.L_47da13 ], [ %3360, %block_47d9ba ]
  %3440 = load i64, i64* %RBP.i, align 8
  %3441 = add i64 %3440, -16
  %3442 = add i64 %3439, 8
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i32*
  %3444 = load i32, i32* %3443, align 4
  %3445 = add i32 %3444, 1
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RAX.i1159, align 8
  %3447 = icmp eq i32 %3444, -1
  %3448 = icmp eq i32 %3445, 0
  %3449 = or i1 %3447, %3448
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %12, align 1
  %3451 = and i32 %3445, 255
  %3452 = tail call i32 @llvm.ctpop.i32(i32 %3451)
  %3453 = trunc i32 %3452 to i8
  %3454 = and i8 %3453, 1
  %3455 = xor i8 %3454, 1
  store i8 %3455, i8* %13, align 1
  %3456 = xor i32 %3445, %3444
  %3457 = lshr i32 %3456, 4
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  store i8 %3459, i8* %14, align 1
  %3460 = zext i1 %3448 to i8
  store i8 %3460, i8* %15, align 1
  %3461 = lshr i32 %3445, 31
  %3462 = trunc i32 %3461 to i8
  store i8 %3462, i8* %16, align 1
  %3463 = lshr i32 %3444, 31
  %3464 = xor i32 %3461, %3463
  %3465 = add nuw nsw i32 %3464, %3461
  %3466 = icmp eq i32 %3465, 2
  %3467 = zext i1 %3466 to i8
  store i8 %3467, i8* %17, align 1
  %3468 = add i64 %3439, 14
  store i64 %3468, i64* %3, align 8
  store i32 %3445, i32* %3443, align 4
  %3469 = load i64, i64* %3, align 8
  %3470 = add i64 %3469, -318
  store i64 %3470, i64* %3, align 8
  br label %block_.L_47d8e8

block_.L_47da2b.sink.split:                       ; preds = %block_47d91f, %block_47da07
  %.pre103 = phi i64 [ %.pre103.pre, %block_47da07 ], [ %2995, %block_47d91f ]
  %.sink76 = phi i64 [ %3437, %block_47da07 ], [ %3012, %block_47d91f ]
  store i64 %.sink76, i64* %3, align 8
  br label %block_.L_47da2b

block_.L_47da2b.loopexit:                         ; preds = %block_.L_47d8e8
  br label %block_.L_47da2b

block_.L_47da2b:                                  ; preds = %block_.L_47da2b.loopexit, %block_.L_47da2b.sink.split
  %3471 = phi i64 [ %.sink76, %block_.L_47da2b.sink.split ], [ %2949, %block_.L_47da2b.loopexit ]
  %3472 = phi i64 [ %.pre103, %block_.L_47da2b.sink.split ], [ %2920, %block_.L_47da2b.loopexit ]
  %3473 = add i64 %3472, -36
  %3474 = add i64 %3471, 4
  store i64 %3474, i64* %3, align 8
  %3475 = inttoptr i64 %3473 to i32*
  %3476 = load i32, i32* %3475, align 4
  store i8 0, i8* %12, align 1
  %3477 = and i32 %3476, 255
  %3478 = tail call i32 @llvm.ctpop.i32(i32 %3477)
  %3479 = trunc i32 %3478 to i8
  %3480 = and i8 %3479, 1
  %3481 = xor i8 %3480, 1
  store i8 %3481, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3482 = icmp eq i32 %3476, 0
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %15, align 1
  %3484 = lshr i32 %3476, 31
  %3485 = trunc i32 %3484 to i8
  store i8 %3485, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v142 = select i1 %3482, i64 324, i64 10
  %3486 = add i64 %3471, %.v142
  store i64 %3486, i64* %3, align 8
  br i1 %3482, label %block_.L_47db6f, label %block_47da35

block_47da35:                                     ; preds = %block_.L_47da2b
  %3487 = add i64 %3472, -8
  %3488 = add i64 %3486, 4
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  %3491 = sext i32 %3490 to i64
  store i64 %3491, i64* %RAX.i1159, align 8
  %3492 = add nsw i64 %3491, 12099168
  %3493 = add i64 %3486, 12
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3492 to i8*
  %3495 = load i8, i8* %3494, align 1
  %3496 = zext i8 %3495 to i64
  store i64 %3496, i64* %RCX.i1157, align 8
  %3497 = zext i8 %3495 to i32
  %3498 = add i64 %3472, -4
  %3499 = add i64 %3486, 15
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3498 to i32*
  %3501 = load i32, i32* %3500, align 4
  %3502 = sub i32 %3497, %3501
  %3503 = icmp ult i32 %3497, %3501
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %12, align 1
  %3505 = and i32 %3502, 255
  %3506 = tail call i32 @llvm.ctpop.i32(i32 %3505)
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = xor i8 %3508, 1
  store i8 %3509, i8* %13, align 1
  %3510 = xor i32 %3501, %3497
  %3511 = xor i32 %3510, %3502
  %3512 = lshr i32 %3511, 4
  %3513 = trunc i32 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %14, align 1
  %3515 = icmp eq i32 %3502, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %15, align 1
  %3517 = lshr i32 %3502, 31
  %3518 = trunc i32 %3517 to i8
  store i8 %3518, i8* %16, align 1
  %3519 = lshr i32 %3501, 31
  %3520 = add nuw nsw i32 %3517, %3519
  %3521 = icmp eq i32 %3520, 2
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %17, align 1
  %.v143 = select i1 %3515, i64 21, i64 152
  %3523 = add i64 %3486, %.v143
  store i64 %3523, i64* %3, align 8
  br i1 %3515, label %block_47da4a, label %block_.L_47dacd

block_47da4a:                                     ; preds = %block_47da35
  %3524 = add i64 %3472, -12
  %3525 = add i64 %3523, 3
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RDI.i687.pre-phi, align 8
  %3529 = add i64 %3523, 6
  store i64 %3529, i64* %3, align 8
  %3530 = load i32, i32* %3489, align 4
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RSI.i199, align 8
  %3532 = add i64 %3523, -309770
  %3533 = add i64 %3523, 11
  %3534 = load i64, i64* %6, align 8
  %3535 = add i64 %3534, -8
  %3536 = inttoptr i64 %3535 to i64*
  store i64 %3533, i64* %3536, align 8
  store i64 %3535, i64* %6, align 8
  store i64 %3532, i64* %3, align 8
  %call2_47da50 = tail call %struct.Memory* @sub_432040.owl_defense_move_reason_known(%struct.State* nonnull %0, i64 %3532, %struct.Memory* %MEMORY.28)
  %3537 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %3538 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3539 = and i32 %3537, 255
  %3540 = tail call i32 @llvm.ctpop.i32(i32 %3539)
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = xor i8 %3542, 1
  store i8 %3543, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3544 = icmp eq i32 %3537, 0
  %3545 = zext i1 %3544 to i8
  store i8 %3545, i8* %15, align 1
  %3546 = lshr i32 %3537, 31
  %3547 = trunc i32 %3546 to i8
  store i8 %3547, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v146 = select i1 %3544, i64 9, i64 120
  %3548 = add i64 %3538, %.v146
  store i64 %3548, i64* %3, align 8
  %3549 = load i64, i64* %RBP.i, align 8
  br i1 %3544, label %block_47da5e, label %block_.L_47dacd

block_47da5e:                                     ; preds = %block_47da4a
  %3550 = add i64 %3549, -84
  store i64 %3550, i64* %RDX.i1132, align 8
  %3551 = add i64 %3548, 11
  store i64 %3551, i64* %3, align 8
  %3552 = inttoptr i64 %3550 to i32*
  store i32 0, i32* %3552, align 4
  %3553 = load i64, i64* %RBP.i, align 8
  %3554 = add i64 %3553, -12
  %3555 = load i64, i64* %3, align 8
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3554 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RDI.i687.pre-phi, align 8
  %3560 = add i64 %3553, -8
  %3561 = add i64 %3555, 6
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3560 to i32*
  %3563 = load i32, i32* %3562, align 4
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RSI.i199, align 8
  %3565 = add i64 %3555, -202409
  %3566 = add i64 %3555, 11
  %3567 = load i64, i64* %6, align 8
  %3568 = add i64 %3567, -8
  %3569 = inttoptr i64 %3568 to i64*
  store i64 %3566, i64* %3569, align 8
  store i64 %3568, i64* %6, align 8
  store i64 %3565, i64* %3, align 8
  %call2_47da6f = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %3565, %struct.Memory* %call2_47da50)
  %3570 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RDX.i1132, align 8
  %3571 = load i64, i64* %RBP.i, align 8
  %3572 = add i64 %3571, -88
  %3573 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %3574 = add i64 %3570, 13
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3572 to i32*
  store i32 %3573, i32* %3575, align 4
  %3576 = load i64, i64* %RBP.i, align 8
  %3577 = add i64 %3576, -88
  %3578 = load i64, i64* %3, align 8
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3577 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RAX.i1159, align 8
  %3583 = add i64 %3576, -8
  %3584 = add i64 %3578, 7
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3583 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = sext i32 %3586 to i64
  %3588 = mul nsw i64 %3587, 76
  store i64 %3588, i64* %RCX.i1157, align 8
  %3589 = lshr i64 %3588, 63
  %3590 = load i64, i64* %RDX.i1132, align 8
  %3591 = add i64 %3588, %3590
  store i64 %3591, i64* %RDX.i1132, align 8
  %3592 = icmp ult i64 %3591, %3590
  %3593 = icmp ult i64 %3591, %3588
  %3594 = or i1 %3592, %3593
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %12, align 1
  %3596 = trunc i64 %3591 to i32
  %3597 = and i32 %3596, 255
  %3598 = tail call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  store i8 %3601, i8* %13, align 1
  %3602 = xor i64 %3588, %3590
  %3603 = xor i64 %3602, %3591
  %3604 = lshr i64 %3603, 4
  %3605 = trunc i64 %3604 to i8
  %3606 = and i8 %3605, 1
  store i8 %3606, i8* %14, align 1
  %3607 = icmp eq i64 %3591, 0
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %15, align 1
  %3609 = lshr i64 %3591, 63
  %3610 = trunc i64 %3609 to i8
  store i8 %3610, i8* %16, align 1
  %3611 = lshr i64 %3590, 63
  %3612 = xor i64 %3609, %3611
  %3613 = xor i64 %3609, %3589
  %3614 = add nuw nsw i64 %3612, %3613
  %3615 = icmp eq i64 %3614, 2
  %3616 = zext i1 %3615 to i8
  store i8 %3616, i8* %17, align 1
  %3617 = add i64 %3591, 52
  %3618 = add i64 %3578, 17
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = sub i32 %3581, %3620
  %3622 = icmp ult i32 %3581, %3620
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %12, align 1
  %3624 = and i32 %3621, 255
  %3625 = tail call i32 @llvm.ctpop.i32(i32 %3624)
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = xor i8 %3627, 1
  store i8 %3628, i8* %13, align 1
  %3629 = xor i32 %3620, %3581
  %3630 = xor i32 %3629, %3621
  %3631 = lshr i32 %3630, 4
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  store i8 %3633, i8* %14, align 1
  %3634 = icmp eq i32 %3621, 0
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %15, align 1
  %3636 = lshr i32 %3621, 31
  %3637 = trunc i32 %3636 to i8
  store i8 %3637, i8* %16, align 1
  %3638 = lshr i32 %3581, 31
  %3639 = lshr i32 %3620, 31
  %3640 = xor i32 %3639, %3638
  %3641 = xor i32 %3636, %3638
  %3642 = add nuw nsw i32 %3641, %3640
  %3643 = icmp eq i32 %3642, 2
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %17, align 1
  %3645 = icmp ne i8 %3637, 0
  %3646 = xor i1 %3645, %3643
  %.v125 = select i1 %3646, i64 71, i64 23
  %3647 = add i64 %3578, %.v125
  store i64 %3647, i64* %3, align 8
  br i1 %3646, label %block_.L_47dac8, label %block_47da98

block_47da98:                                     ; preds = %block_47da5e
  %3648 = load i64, i64* %RBP.i, align 8
  %3649 = add i64 %3648, -88
  %3650 = add i64 %3647, 4
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i32*
  %3652 = load i32, i32* %3651, align 4
  %3653 = add i32 %3652, -2
  %3654 = icmp ult i32 %3652, 2
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %12, align 1
  %3656 = and i32 %3653, 255
  %3657 = tail call i32 @llvm.ctpop.i32(i32 %3656)
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  %3660 = xor i8 %3659, 1
  store i8 %3660, i8* %13, align 1
  %3661 = xor i32 %3653, %3652
  %3662 = lshr i32 %3661, 4
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  store i8 %3664, i8* %14, align 1
  %3665 = icmp eq i32 %3653, 0
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %15, align 1
  %3667 = lshr i32 %3653, 31
  %3668 = trunc i32 %3667 to i8
  store i8 %3668, i8* %16, align 1
  %3669 = lshr i32 %3652, 31
  %3670 = xor i32 %3667, %3669
  %3671 = add nuw nsw i32 %3670, %3669
  %3672 = icmp eq i32 %3671, 2
  %3673 = zext i1 %3672 to i8
  store i8 %3673, i8* %17, align 1
  %.v124 = select i1 %3665, i64 10, i64 29
  %3674 = add i64 %3647, %.v124
  %3675 = add i64 %3648, -12
  %3676 = add i64 %3674, 3
  store i64 %3676, i64* %3, align 8
  %3677 = inttoptr i64 %3675 to i32*
  %3678 = load i32, i32* %3677, align 4
  %3679 = zext i32 %3678 to i64
  store i64 %3679, i64* %RDI.i687.pre-phi, align 8
  %3680 = add i64 %3648, -8
  %3681 = add i64 %3674, 6
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  %3683 = load i32, i32* %3682, align 4
  %3684 = zext i32 %3683 to i64
  store i64 %3684, i64* %RSI.i199, align 8
  br i1 %3665, label %block_47daa2, label %block_.L_47dab5

block_47daa2:                                     ; preds = %block_47da98
  %3685 = add i64 %3648, -84
  %3686 = add i64 %3674, 9
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i32*
  %3688 = load i32, i32* %3687, align 4
  %3689 = zext i32 %3688 to i64
  store i64 %3689, i64* %RDX.i1132, align 8
  %3690 = add i64 %3674, -301250
  %3691 = add i64 %3674, 14
  %3692 = load i64, i64* %6, align 8
  %3693 = add i64 %3692, -8
  %3694 = inttoptr i64 %3693 to i64*
  store i64 %3691, i64* %3694, align 8
  store i64 %3693, i64* %6, align 8
  store i64 %3690, i64* %3, align 8
  %call2_47daab = tail call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* nonnull %0, i64 %3690, %struct.Memory* %call2_47da6f)
  %3695 = load i64, i64* %3, align 8
  %3696 = add i64 %3695, 19
  store i64 %3696, i64* %3, align 8
  br label %block_.L_47dac3

block_.L_47dab5:                                  ; preds = %block_47da98
  %3697 = add i64 %3674, 9
  store i64 %3697, i64* %3, align 8
  %3698 = load i32, i32* %3651, align 4
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RDX.i1132, align 8
  %3700 = add i64 %3674, -299797
  %3701 = add i64 %3674, 14
  %3702 = load i64, i64* %6, align 8
  %3703 = add i64 %3702, -8
  %3704 = inttoptr i64 %3703 to i64*
  store i64 %3701, i64* %3704, align 8
  store i64 %3703, i64* %6, align 8
  store i64 %3700, i64* %3, align 8
  %call2_47dabe = tail call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* nonnull %0, i64 %3700, %struct.Memory* %call2_47da6f)
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_47dac3

block_.L_47dac3:                                  ; preds = %block_.L_47dab5, %block_47daa2
  %3705 = phi i64 [ %.pre104, %block_.L_47dab5 ], [ %3696, %block_47daa2 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_47dabe, %block_.L_47dab5 ], [ %call2_47daab, %block_47daa2 ]
  %3706 = add i64 %3705, 5
  store i64 %3706, i64* %3, align 8
  br label %block_.L_47dac8

block_.L_47dac8:                                  ; preds = %block_.L_47dac3, %block_47da5e
  %3707 = phi i64 [ %3647, %block_47da5e ], [ %3706, %block_.L_47dac3 ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_47da6f, %block_47da5e ], [ %MEMORY.33, %block_.L_47dac3 ]
  %3708 = add i64 %3707, 162
  br label %block_.L_47db6a

block_.L_47dacd:                                  ; preds = %block_47da4a, %block_47da35
  %3709 = phi i64 [ %3523, %block_47da35 ], [ %3548, %block_47da4a ]
  %3710 = phi i64 [ %3472, %block_47da35 ], [ %3549, %block_47da4a ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.28, %block_47da35 ], [ %call2_47da50, %block_47da4a ]
  %3711 = add i64 %3710, -8
  %3712 = add i64 %3709, 4
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3711 to i32*
  %3714 = load i32, i32* %3713, align 4
  %3715 = sext i32 %3714 to i64
  store i64 %3715, i64* %RAX.i1159, align 8
  %3716 = add nsw i64 %3715, 12099168
  %3717 = add i64 %3709, 12
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i8*
  %3719 = load i8, i8* %3718, align 1
  %3720 = zext i8 %3719 to i64
  store i64 %3720, i64* %RCX.i1157, align 8
  %3721 = zext i8 %3719 to i32
  %3722 = add i64 %3710, -4
  %3723 = add i64 %3709, 15
  store i64 %3723, i64* %3, align 8
  %3724 = inttoptr i64 %3722 to i32*
  %3725 = load i32, i32* %3724, align 4
  %3726 = sub i32 %3721, %3725
  %3727 = icmp ult i32 %3721, %3725
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %12, align 1
  %3729 = and i32 %3726, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %13, align 1
  %3734 = xor i32 %3725, %3721
  %3735 = xor i32 %3734, %3726
  %3736 = lshr i32 %3735, 4
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  store i8 %3738, i8* %14, align 1
  %3739 = icmp eq i32 %3726, 0
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %15, align 1
  %3741 = lshr i32 %3726, 31
  %3742 = trunc i32 %3741 to i8
  store i8 %3742, i8* %16, align 1
  %3743 = lshr i32 %3725, 31
  %3744 = add nuw nsw i32 %3741, %3743
  %3745 = icmp eq i32 %3744, 2
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %17, align 1
  %.v144 = select i1 %3739, i64 152, i64 21
  %3747 = add i64 %3709, %.v144
  store i64 %3747, i64* %3, align 8
  br i1 %3739, label %block_.L_47db65, label %block_47dae2

block_47dae2:                                     ; preds = %block_.L_47dacd
  %3748 = add i64 %3710, -12
  %3749 = add i64 %3747, 3
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3748 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = zext i32 %3751 to i64
  store i64 %3752, i64* %RDI.i687.pre-phi, align 8
  %3753 = add i64 %3747, 6
  store i64 %3753, i64* %3, align 8
  %3754 = load i32, i32* %3713, align 4
  %3755 = zext i32 %3754 to i64
  store i64 %3755, i64* %RSI.i199, align 8
  %3756 = add i64 %3747, -310066
  %3757 = add i64 %3747, 11
  %3758 = load i64, i64* %6, align 8
  %3759 = add i64 %3758, -8
  %3760 = inttoptr i64 %3759 to i64*
  store i64 %3757, i64* %3760, align 8
  store i64 %3759, i64* %6, align 8
  store i64 %3756, i64* %3, align 8
  %call2_47dae8 = tail call %struct.Memory* @sub_431fb0.owl_attack_move_reason_known(%struct.State* nonnull %0, i64 %3756, %struct.Memory* %MEMORY.35)
  %3761 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %3762 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3763 = and i32 %3761, 255
  %3764 = tail call i32 @llvm.ctpop.i32(i32 %3763)
  %3765 = trunc i32 %3764 to i8
  %3766 = and i8 %3765, 1
  %3767 = xor i8 %3766, 1
  store i8 %3767, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3768 = icmp eq i32 %3761, 0
  %3769 = zext i1 %3768 to i8
  store i8 %3769, i8* %15, align 1
  %3770 = lshr i32 %3761, 31
  %3771 = trunc i32 %3770 to i8
  store i8 %3771, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v145 = select i1 %3768, i64 9, i64 120
  %3772 = add i64 %3762, %.v145
  store i64 %3772, i64* %3, align 8
  br i1 %3768, label %block_47daf6, label %block_.L_47db65

block_47daf6:                                     ; preds = %block_47dae2
  %3773 = load i64, i64* %RBP.i, align 8
  %3774 = add i64 %3773, -92
  store i64 %3774, i64* %RDX.i1132, align 8
  %3775 = add i64 %3772, 11
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i32*
  store i32 0, i32* %3776, align 4
  %3777 = load i64, i64* %RBP.i, align 8
  %3778 = add i64 %3777, -12
  %3779 = load i64, i64* %3, align 8
  %3780 = add i64 %3779, 3
  store i64 %3780, i64* %3, align 8
  %3781 = inttoptr i64 %3778 to i32*
  %3782 = load i32, i32* %3781, align 4
  %3783 = zext i32 %3782 to i64
  store i64 %3783, i64* %RDI.i687.pre-phi, align 8
  %3784 = add i64 %3777, -8
  %3785 = add i64 %3779, 6
  store i64 %3785, i64* %3, align 8
  %3786 = inttoptr i64 %3784 to i32*
  %3787 = load i32, i32* %3786, align 4
  %3788 = zext i32 %3787 to i64
  store i64 %3788, i64* %RSI.i199, align 8
  %3789 = add i64 %3779, -200657
  %3790 = add i64 %3779, 11
  %3791 = load i64, i64* %6, align 8
  %3792 = add i64 %3791, -8
  %3793 = inttoptr i64 %3792 to i64*
  store i64 %3790, i64* %3793, align 8
  store i64 %3792, i64* %6, align 8
  store i64 %3789, i64* %3, align 8
  %call2_47db07 = tail call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* nonnull %0, i64 %3789, %struct.Memory* %call2_47dae8)
  %3794 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RDX.i1132, align 8
  %3795 = load i64, i64* %RBP.i, align 8
  %3796 = add i64 %3795, -96
  %3797 = load i32, i32* %EAX.i1071.pre-phi, align 4
  %3798 = add i64 %3794, 13
  store i64 %3798, i64* %3, align 8
  %3799 = inttoptr i64 %3796 to i32*
  store i32 %3797, i32* %3799, align 4
  %3800 = load i64, i64* %RBP.i, align 8
  %3801 = add i64 %3800, -96
  %3802 = load i64, i64* %3, align 8
  %3803 = add i64 %3802, 3
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3801 to i32*
  %3805 = load i32, i32* %3804, align 4
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RAX.i1159, align 8
  %3807 = add i64 %3800, -8
  %3808 = add i64 %3802, 7
  store i64 %3808, i64* %3, align 8
  %3809 = inttoptr i64 %3807 to i32*
  %3810 = load i32, i32* %3809, align 4
  %3811 = sext i32 %3810 to i64
  %3812 = mul nsw i64 %3811, 76
  store i64 %3812, i64* %RCX.i1157, align 8
  %3813 = lshr i64 %3812, 63
  %3814 = load i64, i64* %RDX.i1132, align 8
  %3815 = add i64 %3812, %3814
  store i64 %3815, i64* %RDX.i1132, align 8
  %3816 = icmp ult i64 %3815, %3814
  %3817 = icmp ult i64 %3815, %3812
  %3818 = or i1 %3816, %3817
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %12, align 1
  %3820 = trunc i64 %3815 to i32
  %3821 = and i32 %3820, 255
  %3822 = tail call i32 @llvm.ctpop.i32(i32 %3821)
  %3823 = trunc i32 %3822 to i8
  %3824 = and i8 %3823, 1
  %3825 = xor i8 %3824, 1
  store i8 %3825, i8* %13, align 1
  %3826 = xor i64 %3812, %3814
  %3827 = xor i64 %3826, %3815
  %3828 = lshr i64 %3827, 4
  %3829 = trunc i64 %3828 to i8
  %3830 = and i8 %3829, 1
  store i8 %3830, i8* %14, align 1
  %3831 = icmp eq i64 %3815, 0
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %15, align 1
  %3833 = lshr i64 %3815, 63
  %3834 = trunc i64 %3833 to i8
  store i8 %3834, i8* %16, align 1
  %3835 = lshr i64 %3814, 63
  %3836 = xor i64 %3833, %3835
  %3837 = xor i64 %3833, %3813
  %3838 = add nuw nsw i64 %3836, %3837
  %3839 = icmp eq i64 %3838, 2
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %17, align 1
  %3841 = add i64 %3815, 36
  %3842 = add i64 %3802, 17
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = sub i32 %3805, %3844
  %3846 = icmp ult i32 %3805, %3844
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %12, align 1
  %3848 = and i32 %3845, 255
  %3849 = tail call i32 @llvm.ctpop.i32(i32 %3848)
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  %3852 = xor i8 %3851, 1
  store i8 %3852, i8* %13, align 1
  %3853 = xor i32 %3844, %3805
  %3854 = xor i32 %3853, %3845
  %3855 = lshr i32 %3854, 4
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  store i8 %3857, i8* %14, align 1
  %3858 = icmp eq i32 %3845, 0
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %15, align 1
  %3860 = lshr i32 %3845, 31
  %3861 = trunc i32 %3860 to i8
  store i8 %3861, i8* %16, align 1
  %3862 = lshr i32 %3805, 31
  %3863 = lshr i32 %3844, 31
  %3864 = xor i32 %3863, %3862
  %3865 = xor i32 %3860, %3862
  %3866 = add nuw nsw i32 %3865, %3864
  %3867 = icmp eq i32 %3866, 2
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %17, align 1
  %3869 = icmp ne i8 %3861, 0
  %3870 = xor i1 %3869, %3867
  %.v127 = select i1 %3870, i64 71, i64 23
  %3871 = add i64 %3802, %.v127
  store i64 %3871, i64* %3, align 8
  br i1 %3870, label %block_.L_47db60, label %block_47db30

block_47db30:                                     ; preds = %block_47daf6
  %3872 = load i64, i64* %RBP.i, align 8
  %3873 = add i64 %3872, -96
  %3874 = add i64 %3871, 4
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3873 to i32*
  %3876 = load i32, i32* %3875, align 4
  %3877 = add i32 %3876, -3
  %3878 = icmp ult i32 %3876, 3
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %12, align 1
  %3880 = and i32 %3877, 255
  %3881 = tail call i32 @llvm.ctpop.i32(i32 %3880)
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  %3884 = xor i8 %3883, 1
  store i8 %3884, i8* %13, align 1
  %3885 = xor i32 %3877, %3876
  %3886 = lshr i32 %3885, 4
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  store i8 %3888, i8* %14, align 1
  %3889 = icmp eq i32 %3877, 0
  %3890 = zext i1 %3889 to i8
  store i8 %3890, i8* %15, align 1
  %3891 = lshr i32 %3877, 31
  %3892 = trunc i32 %3891 to i8
  store i8 %3892, i8* %16, align 1
  %3893 = lshr i32 %3876, 31
  %3894 = xor i32 %3891, %3893
  %3895 = add nuw nsw i32 %3894, %3893
  %3896 = icmp eq i32 %3895, 2
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %17, align 1
  %.v126 = select i1 %3889, i64 10, i64 29
  %3898 = add i64 %3871, %.v126
  %3899 = add i64 %3872, -12
  %3900 = add i64 %3898, 3
  store i64 %3900, i64* %3, align 8
  %3901 = inttoptr i64 %3899 to i32*
  %3902 = load i32, i32* %3901, align 4
  %3903 = zext i32 %3902 to i64
  store i64 %3903, i64* %RDI.i687.pre-phi, align 8
  %3904 = add i64 %3872, -8
  %3905 = add i64 %3898, 6
  store i64 %3905, i64* %3, align 8
  %3906 = inttoptr i64 %3904 to i32*
  %3907 = load i32, i32* %3906, align 4
  %3908 = zext i32 %3907 to i64
  store i64 %3908, i64* %RSI.i199, align 8
  br i1 %3889, label %block_47db3a, label %block_.L_47db4d

block_47db3a:                                     ; preds = %block_47db30
  %3909 = add i64 %3872, -92
  %3910 = add i64 %3898, 9
  store i64 %3910, i64* %3, align 8
  %3911 = inttoptr i64 %3909 to i32*
  %3912 = load i32, i32* %3911, align 4
  %3913 = zext i32 %3912 to i64
  store i64 %3913, i64* %RDX.i1132, align 8
  %3914 = add i64 %3898, -301914
  %3915 = add i64 %3898, 14
  %3916 = load i64, i64* %6, align 8
  %3917 = add i64 %3916, -8
  %3918 = inttoptr i64 %3917 to i64*
  store i64 %3915, i64* %3918, align 8
  store i64 %3917, i64* %6, align 8
  store i64 %3914, i64* %3, align 8
  %call2_47db43 = tail call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* nonnull %0, i64 %3914, %struct.Memory* %call2_47db07)
  %3919 = load i64, i64* %3, align 8
  %3920 = add i64 %3919, 19
  store i64 %3920, i64* %3, align 8
  br label %block_.L_47db5b

block_.L_47db4d:                                  ; preds = %block_47db30
  %3921 = add i64 %3898, 9
  store i64 %3921, i64* %3, align 8
  %3922 = load i32, i32* %3875, align 4
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RDX.i1132, align 8
  %3924 = add i64 %3898, -300237
  %3925 = add i64 %3898, 14
  %3926 = load i64, i64* %6, align 8
  %3927 = add i64 %3926, -8
  %3928 = inttoptr i64 %3927 to i64*
  store i64 %3925, i64* %3928, align 8
  store i64 %3927, i64* %6, align 8
  store i64 %3924, i64* %3, align 8
  %call2_47db56 = tail call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* nonnull %0, i64 %3924, %struct.Memory* %call2_47db07)
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_47db5b

block_.L_47db5b:                                  ; preds = %block_.L_47db4d, %block_47db3a
  %3929 = phi i64 [ %.pre106, %block_.L_47db4d ], [ %3920, %block_47db3a ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_47db56, %block_.L_47db4d ], [ %call2_47db43, %block_47db3a ]
  %3930 = add i64 %3929, 5
  store i64 %3930, i64* %3, align 8
  br label %block_.L_47db60

block_.L_47db60:                                  ; preds = %block_.L_47db5b, %block_47daf6
  %3931 = phi i64 [ %3871, %block_47daf6 ], [ %3930, %block_.L_47db5b ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_47db07, %block_47daf6 ], [ %MEMORY.36, %block_.L_47db5b ]
  %3932 = add i64 %3931, 5
  store i64 %3932, i64* %3, align 8
  br label %block_.L_47db65

block_.L_47db65:                                  ; preds = %block_47dae2, %block_.L_47db60, %block_.L_47dacd
  %3933 = phi i64 [ %3747, %block_.L_47dacd ], [ %3772, %block_47dae2 ], [ %3932, %block_.L_47db60 ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.35, %block_.L_47dacd ], [ %call2_47dae8, %block_47dae2 ], [ %MEMORY.37, %block_.L_47db60 ]
  %3934 = add i64 %3933, 5
  store i64 %3934, i64* %3, align 8
  br label %block_.L_47db6a

block_.L_47db6a:                                  ; preds = %block_.L_47db65, %block_.L_47dac8
  %storemerge73 = phi i64 [ %3708, %block_.L_47dac8 ], [ %3934, %block_.L_47db65 ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.34, %block_.L_47dac8 ], [ %MEMORY.38, %block_.L_47db65 ]
  %3935 = add i64 %storemerge73, 5
  store i64 %3935, i64* %3, align 8
  %.pre107.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47db6f

block_.L_47db6f:                                  ; preds = %block_.L_47db6a, %block_.L_47da2b
  %.pre107 = phi i64 [ %3472, %block_.L_47da2b ], [ %.pre107.pre, %block_.L_47db6a ]
  %3936 = phi i64 [ %3486, %block_.L_47da2b ], [ %3935, %block_.L_47db6a ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.28, %block_.L_47da2b ], [ %MEMORY.39, %block_.L_47db6a ]
  %3937 = add i64 %3936, 5
  store i64 %3937, i64* %3, align 8
  br label %block_.L_47db74

block_.L_47db74:                                  ; preds = %block_.L_47db6f, %block_47d8d5
  %3938 = phi i64 [ %2864, %block_47d8d5 ], [ %.pre107, %block_.L_47db6f ]
  %storemerge72 = phi i64 [ %2910, %block_47d8d5 ], [ %3937, %block_.L_47db6f ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.28, %block_47d8d5 ], [ %MEMORY.40, %block_.L_47db6f ]
  %3939 = add i64 %3938, -12
  %3940 = add i64 %storemerge72, 3
  store i64 %3940, i64* %3, align 8
  %3941 = inttoptr i64 %3939 to i32*
  %3942 = load i32, i32* %3941, align 4
  %3943 = add i32 %3942, 1
  %3944 = zext i32 %3943 to i64
  store i64 %3944, i64* %RAX.i1159, align 8
  %3945 = icmp eq i32 %3942, -1
  %3946 = icmp eq i32 %3943, 0
  %3947 = or i1 %3945, %3946
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %12, align 1
  %3949 = and i32 %3943, 255
  %3950 = tail call i32 @llvm.ctpop.i32(i32 %3949)
  %3951 = trunc i32 %3950 to i8
  %3952 = and i8 %3951, 1
  %3953 = xor i8 %3952, 1
  store i8 %3953, i8* %13, align 1
  %3954 = xor i32 %3943, %3942
  %3955 = lshr i32 %3954, 4
  %3956 = trunc i32 %3955 to i8
  %3957 = and i8 %3956, 1
  store i8 %3957, i8* %14, align 1
  %3958 = zext i1 %3946 to i8
  store i8 %3958, i8* %15, align 1
  %3959 = lshr i32 %3943, 31
  %3960 = trunc i32 %3959 to i8
  store i8 %3960, i8* %16, align 1
  %3961 = lshr i32 %3942, 31
  %3962 = xor i32 %3959, %3961
  %3963 = add nuw nsw i32 %3962, %3959
  %3964 = icmp eq i32 %3963, 2
  %3965 = zext i1 %3964 to i8
  store i8 %3965, i8* %17, align 1
  %3966 = add i64 %storemerge72, 9
  store i64 %3966, i64* %3, align 8
  store i32 %3943, i32* %3941, align 4
  %3967 = load i64, i64* %3, align 8
  %3968 = add i64 %3967, -714
  store i64 %3968, i64* %3, align 8
  br label %block_.L_47d8b3

block_.L_47db82:                                  ; preds = %block_.L_47d8b3
  %3969 = add i64 %2893, 5
  store i64 %3969, i64* %3, align 8
  br label %block_.L_47db87

block_.L_47db87:                                  ; preds = %block_47d88d, %block_.L_47d86c, %block_47d857, %block_.L_47db82
  %3970 = phi i64 [ %2799, %block_.L_47d86c ], [ %2858, %block_47d88d ], [ %3969, %block_.L_47db82 ], [ %2736, %block_47d857 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.26, %block_.L_47d86c ], [ %MEMORY.26, %block_47d88d ], [ %MEMORY.28, %block_.L_47db82 ], [ %MEMORY.26, %block_47d857 ]
  %3971 = load i64, i64* %RBP.i, align 8
  %3972 = add i64 %3971, -8
  %3973 = add i64 %3970, 8
  store i64 %3973, i64* %3, align 8
  %3974 = inttoptr i64 %3972 to i32*
  %3975 = load i32, i32* %3974, align 4
  %3976 = add i32 %3975, 1
  %3977 = zext i32 %3976 to i64
  store i64 %3977, i64* %RAX.i1159, align 8
  %3978 = icmp eq i32 %3975, -1
  %3979 = icmp eq i32 %3976, 0
  %3980 = or i1 %3978, %3979
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %12, align 1
  %3982 = and i32 %3976, 255
  %3983 = tail call i32 @llvm.ctpop.i32(i32 %3982)
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = xor i8 %3985, 1
  store i8 %3986, i8* %13, align 1
  %3987 = xor i32 %3976, %3975
  %3988 = lshr i32 %3987, 4
  %3989 = trunc i32 %3988 to i8
  %3990 = and i8 %3989, 1
  store i8 %3990, i8* %14, align 1
  %3991 = zext i1 %3979 to i8
  store i8 %3991, i8* %15, align 1
  %3992 = lshr i32 %3976, 31
  %3993 = trunc i32 %3992 to i8
  store i8 %3993, i8* %16, align 1
  %3994 = lshr i32 %3975, 31
  %3995 = xor i32 %3992, %3994
  %3996 = add nuw nsw i32 %3995, %3992
  %3997 = icmp eq i32 %3996, 2
  %3998 = zext i1 %3997 to i8
  store i8 %3998, i8* %17, align 1
  %3999 = add i64 %3970, 14
  store i64 %3999, i64* %3, align 8
  store i32 %3976, i32* %3974, align 4
  %4000 = load i64, i64* %3, align 8
  %4001 = add i64 %4000, -864
  store i64 %4001, i64* %3, align 8
  br label %block_.L_47d835

block_.L_47db9a:                                  ; preds = %block_.L_47d835
  %4002 = load i64, i64* %6, align 8
  %4003 = add i64 %4002, 128
  store i64 %4003, i64* %6, align 8
  %4004 = icmp ugt i64 %4002, -129
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %12, align 1
  %4006 = trunc i64 %4003 to i32
  %4007 = and i32 %4006, 255
  %4008 = tail call i32 @llvm.ctpop.i32(i32 %4007)
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = xor i8 %4010, 1
  store i8 %4011, i8* %13, align 1
  %4012 = xor i64 %4003, %4002
  %4013 = lshr i64 %4012, 4
  %4014 = trunc i64 %4013 to i8
  %4015 = and i8 %4014, 1
  store i8 %4015, i8* %14, align 1
  %4016 = icmp eq i64 %4003, 0
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %15, align 1
  %4018 = lshr i64 %4003, 63
  %4019 = trunc i64 %4018 to i8
  store i8 %4019, i8* %16, align 1
  %4020 = lshr i64 %4002, 63
  %4021 = xor i64 %4018, %4020
  %4022 = add nuw nsw i64 %4021, %4018
  %4023 = icmp eq i64 %4022, 2
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %17, align 1
  %4025 = add i64 %2684, 8
  store i64 %4025, i64* %3, align 8
  %4026 = add i64 %4002, 136
  %4027 = inttoptr i64 %4003 to i64*
  %4028 = load i64, i64* %4027, align 8
  store i64 %4028, i64* %RBP.i, align 8
  store i64 %4026, i64* %6, align 8
  %4029 = add i64 %2684, 9
  store i64 %4029, i64* %3, align 8
  %4030 = inttoptr i64 %4026 to i64*
  %4031 = load i64, i64* %4030, align 8
  store i64 %4031, i64* %3, align 8
  %4032 = add i64 %4002, 144
  store i64 %4032, i64* %6, align 8
  ret %struct.Memory* %MEMORY.26
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
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_47d198(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d1ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582d00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582d00_type* @G__0x582d00 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jge_.L_47d82e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_47d1da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d820(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x78__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -120
  %10 = icmp ult i32 %8, 120
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
define %struct.Memory* @routine_jge_.L_47d81b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 564
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
define %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 72
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_47d22b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d81b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 12
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2c____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -44
  %9 = icmp ult i32 %7, 44
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47d27b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -46
  %9 = icmp ult i32 %7, 46
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d286(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d47e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -2
  %9 = icmp ult i32 %7, 2
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47d33a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %7, 4
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -6
  %9 = icmp ult i32 %7, 6
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -8
  %9 = icmp ult i32 %7, 8
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -10
  %9 = icmp ult i32 %7, 10
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -12
  %9 = icmp ult i32 %7, 12
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d345(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d479(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x36____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -54
  %9 = icmp ult i32 %7, 54
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
  %18 = xor i32 %7, 16
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
  %30 = lshr i32 %7, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d3e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb8b580___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 12105088
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb00ea0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11538080
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47d3b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb9a0a0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_callq_.find_eye_dragons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d3d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb01180___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
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
define %struct.Memory* @routine_jne_.L_47d3e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d80d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -14
  %9 = icmp ult i32 %7, 14
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d46a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0xb8a010___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 12099600
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb051b0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11555248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_movl_0x8__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jne_.L_47d465(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d46f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jge_.L_47d808(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jne_.L_47d4a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d4aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47d4b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d7fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 104
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47d4f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_je_.L_47d514(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47d5c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d679(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.owl_attack_move_reason_known(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb4bd20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cmpl_0x24__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_jl_.L_47d674(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47d631(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_callq_.add_gain_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d63f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d652(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d66f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582d3a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582d3a_type* @G__0x582d3a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jmpq_.L_47d674(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d679(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47d742(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d7f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.owl_defense_move_reason_known(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x34__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 52
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
define %struct.Memory* @routine_jl_.L_47d7f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_47d7ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_callq_.add_loss_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d7bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d7ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d7eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582d63___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582d63_type* @G__0x582d63 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jmpq_.L_47d7f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d7f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d485(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_47d1e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_47d1b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47db9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47d86c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47db87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl__0x15__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jge_.L_47db82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_47d8da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47db74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_47da2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_47d924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47da2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_cmpl__0x1a____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -26
  %9 = icmp ult i32 %7, 26
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
  %18 = xor i32 %7, 16
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
  %30 = lshr i32 %7, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47d9d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1c____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -28
  %9 = icmp ult i32 %7, 28
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
  %18 = xor i32 %7, 16
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
  %30 = lshr i32 %7, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1e____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -30
  %9 = icmp ult i32 %7, 30
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
  %18 = xor i32 %7, 16
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
  %30 = lshr i32 %7, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -32
  %9 = icmp ult i32 %7, 32
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x22____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -34
  %9 = icmp ult i32 %7, 34
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x24____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -36
  %9 = icmp ult i32 %7, 36
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47da18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.are_neighbor_dragons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47da13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47da18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47da1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d8e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_je_.L_47db6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47dacd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_jl_.L_47dac8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jne_.L_47dab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_jmpq_.L_47dac3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jmpq_.L_47dac8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47db6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47db65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47db65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jl_.L_47db60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_jne_.L_47db4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jmpq_.L_47db5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_jmpq_.L_47db60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47db65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47db6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d8b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47db87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47db8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d835(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
