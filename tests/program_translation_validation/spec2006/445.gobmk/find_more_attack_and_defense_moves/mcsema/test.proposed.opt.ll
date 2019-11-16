; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57c2fd_type = type <{ [8 x i8] }>
%G__0x581d46_type = type <{ [8 x i8] }>
%G__0x582d8c_type = type <{ [8 x i8] }>
%G__0x582dd0_type = type <{ [8 x i8] }>
%G__0x582e06_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x57c2fd = global %G__0x57c2fd_type zeroinitializer
@G__0x581d46 = global %G__0x581d46_type zeroinitializer
@G__0x582d8c = global %G__0x582d8c_type zeroinitializer
@G__0x582dd0 = global %G__0x582dd0_type zeroinitializer
@G__0x582e06 = global %G__0x582e06_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0xafdfc0 = global %G__0xafdfc0_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431e70.defense_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432520.add_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431d30.attack_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432120.add_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @find_more_attack_and_defense_moves(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1080
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1072
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
  %RAX.i862 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 3, i64* %RAX.i862, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i859 = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -12
  %43 = load i32, i32* %EDI.i859, align 4
  %44 = add i64 %10, 18
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -980
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 10
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i64, i64* %RAX.i862, align 8
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = trunc i64 %51 to i32
  %57 = inttoptr i64 %53 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %56, %58
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RAX.i862, align 8
  %EAX.i851 = bitcast %union.anon* %40 to i32*
  %61 = add i64 %52, -1000
  %62 = add i64 %54, 9
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  store i32 %59, i32* %63, align 4
  %64 = load i64, i64* %3, align 8
  %65 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %66 = and i32 %65, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66)
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %71 = icmp eq i32 %65, 0
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %30, align 1
  %73 = lshr i32 %65, 31
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v83 = select i1 %71, i64 14, i64 19
  %75 = add i64 %64, %.v83
  store i64 %75, i64* %3, align 8
  br i1 %71, label %block_47c8a4, label %block_.L_47c8a9

block_47c8a4:                                     ; preds = %entry
  %76 = add i64 %75, 28
  store i64 %76, i64* %3, align 8
  br label %block_.L_47c8c0

block_.L_47c8a9:                                  ; preds = %entry
  %RDI.i846 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 ptrtoint (%G__0x582d8c_type* @G__0x582d8c to i64), i64* %RDI.i846, align 8
  %AL.i844 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i844, align 1
  %77 = add i64 %75, -174841
  %78 = add i64 %75, 17
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %81, align 8
  store i64 %80, i64* %6, align 8
  store i64 %77, i64* %3, align 8
  %call2_47c8b5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %77, %struct.Memory* %2)
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -1044
  %84 = load i32, i32* %EAX.i851, align 4
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 6
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %83 to i32*
  store i32 %84, i32* %87, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_47c8c0

block_.L_47c8c0:                                  ; preds = %block_.L_47c8a9, %block_47c8a4
  %88 = phi i64 [ %.pre, %block_.L_47c8a9 ], [ %76, %block_47c8a4 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_47c8b5, %block_.L_47c8a9 ], [ %2, %block_47c8a4 ]
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -984
  %91 = add i64 %88, 10
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 0, i32* %92, align 4
  %RCX.i810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_47c8ca

block_.L_47c8ca:                                  ; preds = %block_.L_47c9db, %block_.L_47c8c0
  %93 = phi i64 [ %499, %block_.L_47c9db ], [ %.pre59, %block_.L_47c8c0 ]
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -984
  %96 = add i64 %93, 6
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX.i862, align 8
  %100 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %101 = sub i32 %98, %100
  %102 = icmp ult i32 %98, %100
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %14, align 1
  %104 = and i32 %101, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104)
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %21, align 1
  %109 = xor i32 %100, %98
  %110 = xor i32 %109, %101
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %27, align 1
  %114 = icmp eq i32 %101, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %30, align 1
  %116 = lshr i32 %101, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %33, align 1
  %118 = lshr i32 %98, 31
  %119 = lshr i32 %100, 31
  %120 = xor i32 %119, %118
  %121 = xor i32 %116, %118
  %122 = add nuw nsw i32 %121, %120
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %39, align 1
  %125 = icmp ne i8 %117, 0
  %126 = xor i1 %125, %123
  %.v84 = select i1 %126, i64 19, i64 298
  %127 = add i64 %93, %.v84
  store i64 %127, i64* %3, align 8
  br i1 %126, label %block_47c8dd, label %block_.L_47c9f4

block_47c8dd:                                     ; preds = %block_.L_47c8ca
  %128 = add i64 %94, -988
  %129 = add i64 %127, 10
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  store i32 0, i32* %130, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_47c8e7

block_.L_47c8e7:                                  ; preds = %block_.L_47c9c2, %block_47c8dd
  %131 = phi i64 [ %470, %block_.L_47c9c2 ], [ %.pre78, %block_47c8dd ]
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -988
  %134 = add i64 %131, 6
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX.i862, align 8
  %138 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %139 = sub i32 %136, %138
  %140 = icmp ult i32 %136, %138
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1
  %142 = and i32 %139, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  %147 = xor i32 %138, %136
  %148 = xor i32 %147, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %27, align 1
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %30, align 1
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %33, align 1
  %156 = lshr i32 %136, 31
  %157 = lshr i32 %138, 31
  %158 = xor i32 %157, %156
  %159 = xor i32 %154, %156
  %160 = add nuw nsw i32 %159, %158
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %39, align 1
  %163 = icmp ne i8 %155, 0
  %164 = xor i1 %163, %161
  %.v82 = select i1 %164, i64 19, i64 244
  %165 = add i64 %131, %.v82
  store i64 %165, i64* %3, align 8
  %166 = add i64 %132, -984
  br i1 %164, label %block_47c8fa, label %block_.L_47c9db

block_47c8fa:                                     ; preds = %block_.L_47c8e7
  %167 = add i64 %165, 7
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = mul i32 %169, 20
  %171 = add i32 %170, 21
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX.i862, align 8
  %173 = icmp ugt i32 %170, -22
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %14, align 1
  %175 = and i32 %171, 253
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %21, align 1
  %180 = xor i32 %170, 16
  %181 = xor i32 %180, %171
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %185 = lshr i32 %171, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %33, align 1
  %187 = lshr i32 %170, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %185
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %39, align 1
  %192 = add i64 %165, 16
  store i64 %192, i64* %3, align 8
  %193 = load i32, i32* %135, align 4
  %194 = add i32 %193, %171
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i862, align 8
  %196 = icmp ult i32 %194, %171
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
  %205 = xor i32 %193, %171
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
  %214 = lshr i32 %193, 31
  %215 = xor i32 %212, %185
  %216 = xor i32 %212, %214
  %217 = add nuw nsw i32 %215, %216
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %39, align 1
  %220 = add i64 %132, -992
  %221 = add i64 %165, 22
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  store i32 %194, i32* %222, align 4
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -992
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 7
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RCX.i810, align 8
  %230 = add nsw i64 %229, 12099168
  %231 = add i64 %225, 15
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i8*
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i64
  store i64 %234, i64* %RAX.i862, align 8
  %235 = zext i8 %233 to i32
  store i8 0, i8* %14, align 1
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %240 = icmp eq i8 %233, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %240, i64 178, i64 24
  %242 = add i64 %225, %.v122
  store i64 %242, i64* %3, align 8
  br i1 %240, label %block_.L_47c9c2, label %block_47c928

block_47c928:                                     ; preds = %block_47c8fa
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i862, align 8
  %243 = add i64 %242, 17
  store i64 %243, i64* %3, align 8
  %244 = load i32, i32* %227, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 380
  store i64 %246, i64* %RCX.i810, align 8
  %247 = lshr i64 %246, 63
  %248 = add i64 %246, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %248, i64* %RAX.i862, align 8
  %249 = icmp ult i64 %248, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %250 = icmp ult i64 %248, %246
  %251 = or i1 %249, %250
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %14, align 1
  %253 = trunc i64 %248 to i32
  %254 = and i32 %253, 252
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %21, align 1
  %259 = xor i64 %246, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %260 = xor i64 %259, %248
  %261 = lshr i64 %260, 4
  %262 = trunc i64 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %27, align 1
  %264 = icmp eq i64 %248, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1
  %266 = lshr i64 %248, 63
  %267 = trunc i64 %266 to i8
  store i8 %267, i8* %33, align 1
  %268 = xor i64 %266, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %269 = xor i64 %266, %247
  %270 = add nuw nsw i64 %268, %269
  %271 = icmp eq i64 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %39, align 1
  %273 = add i64 %246, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %274 = add i64 %242, 30
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RDX.i792, align 8
  %278 = add i64 %242, 36
  store i64 %278, i64* %3, align 8
  %279 = load i32, i32* %227, align 4
  %280 = sub i32 %276, %279
  %281 = icmp ult i32 %276, %279
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %14, align 1
  %283 = and i32 %280, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %21, align 1
  %288 = xor i32 %279, %276
  %289 = xor i32 %288, %280
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %27, align 1
  %293 = icmp eq i32 %280, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %30, align 1
  %295 = lshr i32 %280, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %33, align 1
  %297 = lshr i32 %276, 31
  %298 = lshr i32 %279, 31
  %299 = xor i32 %298, %297
  %300 = xor i32 %295, %297
  %301 = add nuw nsw i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %39, align 1
  %.v123 = select i1 %293, i64 42, i64 154
  %304 = add i64 %242, %.v123
  store i64 %304, i64* %3, align 8
  br i1 %293, label %block_47c952, label %block_.L_47c9c2

block_47c952:                                     ; preds = %block_47c928
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i862, align 8
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -992
  %307 = add i64 %304, 17
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = mul nsw i64 %310, 380
  store i64 %311, i64* %RCX.i810, align 8
  %312 = lshr i64 %311, 63
  %313 = add i64 %311, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %313, i64* %RAX.i862, align 8
  %314 = icmp ult i64 %313, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %315 = icmp ult i64 %313, %311
  %316 = or i1 %314, %315
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %14, align 1
  %318 = trunc i64 %313 to i32
  %319 = and i32 %318, 252
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %21, align 1
  %324 = xor i64 %311, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %325 = xor i64 %324, %313
  %326 = lshr i64 %325, 4
  %327 = trunc i64 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %27, align 1
  %329 = icmp eq i64 %313, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i64 %313, 63
  %332 = trunc i64 %331 to i8
  store i8 %332, i8* %33, align 1
  %333 = xor i64 %331, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %334 = xor i64 %331, %312
  %335 = add nuw nsw i64 %333, %334
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %39, align 1
  %338 = add i64 %311, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %339 = add i64 %304, 31
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  store i8 0, i8* %14, align 1
  %342 = and i32 %341, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %347 = icmp eq i32 %341, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %30, align 1
  %349 = lshr i32 %341, 31
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v124 = select i1 %347, i64 112, i64 37
  %351 = add i64 %304, %.v124
  store i64 %351, i64* %3, align 8
  br i1 %347, label %block_.L_47c9c2, label %block_47c977

block_47c977:                                     ; preds = %block_47c952
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i862, align 8
  %352 = add i64 %351, 17
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %308, align 4
  %354 = sext i32 %353 to i64
  %355 = mul nsw i64 %354, 380
  store i64 %355, i64* %RCX.i810, align 8
  %356 = lshr i64 %355, 63
  %357 = add i64 %355, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %357, i64* %RAX.i862, align 8
  %358 = icmp ult i64 %357, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %359 = icmp ult i64 %357, %355
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %14, align 1
  %362 = trunc i64 %357 to i32
  %363 = and i32 %362, 252
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i64 %355, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %369 = xor i64 %368, %357
  %370 = lshr i64 %369, 4
  %371 = trunc i64 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %27, align 1
  %373 = icmp eq i64 %357, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %30, align 1
  %375 = lshr i64 %357, 63
  %376 = trunc i64 %375 to i8
  store i8 %376, i8* %33, align 1
  %377 = xor i64 %375, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %378 = xor i64 %375, %356
  %379 = add nuw nsw i64 %377, %378
  %380 = icmp eq i64 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %39, align 1
  %382 = add i64 %355, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %383 = add i64 %351, 34
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  store i8 0, i8* %14, align 1
  %386 = and i32 %385, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %391 = icmp eq i32 %385, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %30, align 1
  %393 = lshr i32 %385, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %391, i64 75, i64 40
  %395 = add i64 %351, %.v125
  store i64 %395, i64* %3, align 8
  br i1 %391, label %block_.L_47c9c2, label %block_47c99f

block_47c99f:                                     ; preds = %block_47c977
  %396 = add i64 %395, 6
  store i64 %396, i64* %3, align 8
  %397 = load i32, i32* %308, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX.i862, align 8
  %399 = add i64 %305, -980
  %400 = add i64 %395, 13
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %RCX.i810, align 8
  %404 = shl nsw i64 %403, 2
  %405 = add i64 %305, -976
  %406 = add i64 %405, %404
  %407 = add i64 %395, 20
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  store i32 %397, i32* %408, align 4
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -980
  %411 = load i64, i64* %3, align 8
  %412 = add i64 %411, 6
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %410 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = add i32 %414, 1
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RAX.i862, align 8
  %417 = icmp eq i32 %414, -1
  %418 = icmp eq i32 %415, 0
  %419 = or i1 %417, %418
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1
  %421 = and i32 %415, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  %426 = xor i32 %415, %414
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %27, align 1
  %430 = zext i1 %418 to i8
  store i8 %430, i8* %30, align 1
  %431 = lshr i32 %415, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %33, align 1
  %433 = lshr i32 %414, 31
  %434 = xor i32 %431, %433
  %435 = add nuw nsw i32 %434, %431
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %39, align 1
  %438 = add i64 %411, 15
  store i64 %438, i64* %3, align 8
  store i32 %415, i32* %413, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_47c9c2

block_.L_47c9c2:                                  ; preds = %block_47c928, %block_47c99f, %block_47c977, %block_47c952, %block_47c8fa
  %439 = phi i64 [ %.pre79, %block_47c99f ], [ %395, %block_47c977 ], [ %351, %block_47c952 ], [ %304, %block_47c928 ], [ %242, %block_47c8fa ]
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -988
  %442 = add i64 %439, 11
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = add i32 %444, 1
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX.i862, align 8
  %447 = icmp eq i32 %444, -1
  %448 = icmp eq i32 %445, 0
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %14, align 1
  %451 = and i32 %445, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %21, align 1
  %456 = xor i32 %445, %444
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %27, align 1
  %460 = zext i1 %448 to i8
  store i8 %460, i8* %30, align 1
  %461 = lshr i32 %445, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %33, align 1
  %463 = lshr i32 %444, 31
  %464 = xor i32 %461, %463
  %465 = add nuw nsw i32 %464, %461
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %39, align 1
  %468 = add i64 %439, 20
  store i64 %468, i64* %3, align 8
  store i32 %445, i32* %443, align 4
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %469, -239
  store i64 %470, i64* %3, align 8
  br label %block_.L_47c8e7

block_.L_47c9db:                                  ; preds = %block_.L_47c8e7
  %471 = add i64 %165, 11
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %166 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = add i32 %473, 1
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RAX.i862, align 8
  %476 = icmp eq i32 %473, -1
  %477 = icmp eq i32 %474, 0
  %478 = or i1 %476, %477
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %14, align 1
  %480 = and i32 %474, 255
  %481 = tail call i32 @llvm.ctpop.i32(i32 %480)
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  store i8 %484, i8* %21, align 1
  %485 = xor i32 %474, %473
  %486 = lshr i32 %485, 4
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  store i8 %488, i8* %27, align 1
  %489 = zext i1 %477 to i8
  store i8 %489, i8* %30, align 1
  %490 = lshr i32 %474, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %33, align 1
  %492 = lshr i32 %473, 31
  %493 = xor i32 %490, %492
  %494 = add nuw nsw i32 %493, %490
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %39, align 1
  %497 = add i64 %165, 20
  store i64 %497, i64* %3, align 8
  store i32 %474, i32* %472, align 4
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, -293
  store i64 %499, i64* %3, align 8
  br label %block_.L_47c8ca

block_.L_47c9f4:                                  ; preds = %block_.L_47c8ca
  %500 = add i64 %127, -21828
  %501 = add i64 %127, 5
  %502 = load i64, i64* %6, align 8
  %503 = add i64 %502, -8
  %504 = inttoptr i64 %503 to i64*
  store i64 %501, i64* %504, align 8
  store i64 %503, i64* %6, align 8
  store i64 %500, i64* %3, align 8
  %call2_47c9f4 = tail call %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* nonnull %0, i64 %500, %struct.Memory* %MEMORY.0)
  %505 = load i64, i64* %RBP.i, align 8
  %506 = add i64 %505, -984
  %507 = load i64, i64* %3, align 8
  %508 = add i64 %507, 10
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %506 to i32*
  store i32 0, i32* %509, align 4
  %RSI.i652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RCX.i528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI.i508 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %RSI.i505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %AL.i503 = bitcast %union.anon* %40 to i8*
  %RDX.i497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_47ca03

block_.L_47ca03:                                  ; preds = %block_.L_47d11c, %block_.L_47c9f4
  %512 = phi i64 [ %.pre60, %block_.L_47c9f4 ], [ %2764, %block_.L_47d11c ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_47c9f4, %block_.L_47c9f4 ], [ %MEMORY.5, %block_.L_47d11c ]
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -984
  %515 = add i64 %512, 6
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i862, align 8
  %519 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %520 = sub i32 %517, %519
  %521 = icmp ult i32 %517, %519
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %14, align 1
  %523 = and i32 %520, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %21, align 1
  %528 = xor i32 %519, %517
  %529 = xor i32 %528, %520
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %27, align 1
  %533 = icmp eq i32 %520, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %30, align 1
  %535 = lshr i32 %520, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %33, align 1
  %537 = lshr i32 %517, 31
  %538 = lshr i32 %519, 31
  %539 = xor i32 %538, %537
  %540 = xor i32 %535, %537
  %541 = add nuw nsw i32 %540, %539
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %39, align 1
  %544 = icmp ne i8 %536, 0
  %545 = xor i1 %544, %542
  %.v85 = select i1 %545, i64 19, i64 1842
  %546 = add i64 %512, %.v85
  store i64 %546, i64* %3, align 8
  br i1 %545, label %block_47ca16, label %block_.L_47d135

block_47ca16:                                     ; preds = %block_.L_47ca03
  %547 = add i64 %513, -988
  %548 = add i64 %546, 10
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  store i32 0, i32* %549, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_47ca20

block_.L_47ca20:                                  ; preds = %block_.L_47d108, %block_47ca16
  %550 = phi i64 [ %.pre62, %block_47ca16 ], [ %2735, %block_.L_47d108 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_47ca16 ], [ %MEMORY.32, %block_.L_47d108 ]
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -988
  %553 = add i64 %550, 6
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RAX.i862, align 8
  %557 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %558 = sub i32 %555, %557
  %559 = icmp ult i32 %555, %557
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %14, align 1
  %561 = and i32 %558, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %21, align 1
  %566 = xor i32 %557, %555
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
  %575 = lshr i32 %555, 31
  %576 = lshr i32 %557, 31
  %577 = xor i32 %576, %575
  %578 = xor i32 %573, %575
  %579 = add nuw nsw i32 %578, %577
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %39, align 1
  %582 = icmp ne i8 %574, 0
  %583 = xor i1 %582, %580
  %.v81 = select i1 %583, i64 19, i64 1788
  %584 = add i64 %550, %.v81
  store i64 %584, i64* %3, align 8
  %585 = add i64 %551, -984
  br i1 %583, label %block_47ca33, label %block_.L_47d11c

block_47ca33:                                     ; preds = %block_.L_47ca20
  %586 = add i64 %584, 7
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = mul i32 %588, 20
  %590 = add i32 %589, 21
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RAX.i862, align 8
  %592 = icmp ugt i32 %589, -22
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %14, align 1
  %594 = and i32 %590, 253
  %595 = tail call i32 @llvm.ctpop.i32(i32 %594)
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = xor i8 %597, 1
  store i8 %598, i8* %21, align 1
  %599 = xor i32 %589, 16
  %600 = xor i32 %599, %590
  %601 = lshr i32 %600, 4
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %604 = lshr i32 %590, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %33, align 1
  %606 = lshr i32 %589, 31
  %607 = xor i32 %604, %606
  %608 = add nuw nsw i32 %607, %604
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %39, align 1
  %611 = add i64 %584, 16
  store i64 %611, i64* %3, align 8
  %612 = load i32, i32* %554, align 4
  %613 = add i32 %612, %590
  %614 = zext i32 %613 to i64
  store i64 %614, i64* %RAX.i862, align 8
  %615 = icmp ult i32 %613, %590
  %616 = icmp ult i32 %613, %612
  %617 = or i1 %615, %616
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = and i32 %613, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %21, align 1
  %624 = xor i32 %612, %590
  %625 = xor i32 %624, %613
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %27, align 1
  %629 = icmp eq i32 %613, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i32 %613, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %33, align 1
  %633 = lshr i32 %612, 31
  %634 = xor i32 %631, %604
  %635 = xor i32 %631, %633
  %636 = add nuw nsw i32 %634, %635
  %637 = icmp eq i32 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %39, align 1
  %639 = add i64 %551, -992
  %640 = add i64 %584, 22
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  store i32 %613, i32* %641, align 4
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -996
  %644 = load i64, i64* %3, align 8
  %645 = add i64 %644, 10
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %643 to i32*
  store i32 0, i32* %646, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_47ca53

block_.L_47ca53:                                  ; preds = %block_.L_47cbc5, %block_47ca33
  %647 = phi i64 [ %1279, %block_.L_47cbc5 ], [ %.pre63, %block_47ca33 ]
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -996
  %650 = add i64 %647, 7
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = add i32 %652, -120
  %654 = icmp ult i32 %652, 120
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %14, align 1
  %656 = and i32 %653, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i32 %652, 16
  %662 = xor i32 %661, %653
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %27, align 1
  %666 = icmp eq i32 %653, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %30, align 1
  %668 = lshr i32 %653, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %33, align 1
  %670 = lshr i32 %652, 31
  %671 = xor i32 %668, %670
  %672 = add nuw nsw i32 %671, %670
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %39, align 1
  %675 = icmp ne i8 %669, 0
  %676 = xor i1 %675, %673
  %.v87 = select i1 %676, i64 13, i64 395
  %677 = add i64 %647, %.v87
  store i64 %677, i64* %3, align 8
  br i1 %676, label %block_47ca60, label %block_.L_47cbde.loopexit

block_47ca60:                                     ; preds = %block_.L_47ca53
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i862, align 8
  %678 = add i64 %648, -992
  %679 = add i64 %677, 17
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = sext i32 %681 to i64
  %683 = mul nsw i64 %682, 564
  store i64 %683, i64* %RCX.i810, align 8
  %684 = lshr i64 %683, 63
  %685 = add i64 %683, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %685, i64* %RAX.i862, align 8
  %686 = icmp ult i64 %685, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %687 = icmp ult i64 %685, %683
  %688 = or i1 %686, %687
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %14, align 1
  %690 = trunc i64 %685 to i32
  %691 = and i32 %690, 252
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %21, align 1
  %696 = xor i64 %683, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %697 = xor i64 %696, %685
  %698 = lshr i64 %697, 4
  %699 = trunc i64 %698 to i8
  %700 = and i8 %699, 1
  store i8 %700, i8* %27, align 1
  %701 = icmp eq i64 %685, 0
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %30, align 1
  %703 = lshr i64 %685, 63
  %704 = trunc i64 %703 to i8
  store i8 %704, i8* %33, align 1
  %705 = xor i64 %703, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %706 = xor i64 %703, %684
  %707 = add nuw nsw i64 %705, %706
  %708 = icmp eq i64 %707, 2
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %39, align 1
  %710 = add i64 %677, 34
  store i64 %710, i64* %3, align 8
  %711 = load i32, i32* %651, align 4
  %712 = sext i32 %711 to i64
  store i64 %712, i64* %RCX.i810, align 8
  %713 = shl nsw i64 %712, 2
  %714 = add i64 %683, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %715 = add i64 %714, %713
  %716 = add i64 %677, 38
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RDX.i792, align 8
  %720 = add i64 %648, -1008
  %721 = add i64 %677, 44
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  store i32 %718, i32* %722, align 4
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -1008
  %725 = load i64, i64* %3, align 8
  %726 = add i64 %725, 7
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727, align 4
  store i8 0, i8* %14, align 1
  %729 = and i32 %728, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %734 = icmp eq i32 %728, 0
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %30, align 1
  %736 = lshr i32 %728, 31
  %737 = trunc i32 %736 to i8
  store i8 %737, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %738 = icmp ne i8 %737, 0
  %.v = select i1 %738, i64 6, i64 11
  %739 = add i64 %726, %.v
  store i64 %739, i64* %3, align 8
  br i1 %738, label %block_47ca99, label %block_.L_47ca9e

block_47ca99:                                     ; preds = %block_47ca60
  %740 = add i64 %739, 325
  br label %block_.L_47cbde.sink.split

block_.L_47ca9e:                                  ; preds = %block_47ca60
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %741 = add i64 %739, 17
  store i64 %741, i64* %3, align 8
  %742 = load i32, i32* %727, align 4
  %743 = sext i32 %742 to i64
  %744 = mul nsw i64 %743, 12
  store i64 %744, i64* %RCX.i810, align 8
  %745 = lshr i64 %744, 63
  %746 = add i64 %744, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %746, i64* %RDX.i792, align 8
  %747 = icmp ult i64 %746, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %748 = icmp ult i64 %746, %744
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %14, align 1
  %751 = trunc i64 %746 to i32
  %752 = and i32 %751, 252
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %21, align 1
  %757 = xor i64 %744, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %758 = xor i64 %757, %746
  %759 = lshr i64 %758, 4
  %760 = trunc i64 %759 to i8
  %761 = and i8 %760, 1
  store i8 %761, i8* %27, align 1
  %762 = icmp eq i64 %746, 0
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %30, align 1
  %764 = lshr i64 %746, 63
  %765 = trunc i64 %764 to i8
  store i8 %765, i8* %33, align 1
  %766 = xor i64 %764, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %767 = xor i64 %764, %745
  %768 = add nuw nsw i64 %766, %767
  %769 = icmp eq i64 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %39, align 1
  %771 = add i64 %744, add (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 4)
  %772 = add i64 %739, 30
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RSI.i652, align 8
  %776 = add i64 %723, -1012
  %777 = add i64 %739, 36
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  store i32 %774, i32* %778, align 4
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -1008
  %781 = load i64, i64* %3, align 8
  %782 = add i64 %781, 7
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = sext i32 %784 to i64
  %786 = mul nsw i64 %785, 12
  store i64 %786, i64* %RCX.i810, align 8
  %787 = lshr i64 %786, 63
  %788 = load i64, i64* %RAX.i862, align 8
  %789 = add i64 %786, %788
  store i64 %789, i64* %RAX.i862, align 8
  %790 = icmp ult i64 %789, %788
  %791 = icmp ult i64 %789, %786
  %792 = or i1 %790, %791
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %14, align 1
  %794 = trunc i64 %789 to i32
  %795 = and i32 %794, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  %800 = xor i64 %786, %788
  %801 = xor i64 %800, %789
  %802 = lshr i64 %801, 4
  %803 = trunc i64 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %27, align 1
  %805 = icmp eq i64 %789, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %30, align 1
  %807 = lshr i64 %789, 63
  %808 = trunc i64 %807 to i8
  store i8 %808, i8* %33, align 1
  %809 = lshr i64 %788, 63
  %810 = xor i64 %807, %809
  %811 = xor i64 %807, %787
  %812 = add nuw nsw i64 %810, %811
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %39, align 1
  %815 = inttoptr i64 %789 to i32*
  %816 = add i64 %781, 17
  store i64 %816, i64* %3, align 8
  %817 = load i32, i32* %815, align 4
  %818 = add i32 %817, -2
  %819 = icmp ult i32 %817, 2
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %14, align 1
  %821 = and i32 %818, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i32 %818, %817
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %27, align 1
  %830 = icmp eq i32 %818, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %30, align 1
  %832 = lshr i32 %818, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %33, align 1
  %834 = lshr i32 %817, 31
  %835 = xor i32 %832, %834
  %836 = add nuw nsw i32 %835, %834
  %837 = icmp eq i32 %836, 2
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %39, align 1
  %.v114 = select i1 %830, i64 254, i64 23
  %839 = add i64 %781, %.v114
  store i64 %839, i64* %3, align 8
  br i1 %830, label %block_.L_47cbc0, label %block_47cad9

block_47cad9:                                     ; preds = %block_.L_47ca9e
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -1008
  %842 = add i64 %839, 17
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  %846 = mul nsw i64 %845, 12
  store i64 %846, i64* %RCX.i810, align 8
  %847 = lshr i64 %846, 63
  %848 = add i64 %846, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %848, i64* %RAX.i862, align 8
  %849 = icmp ult i64 %848, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %850 = icmp ult i64 %848, %846
  %851 = or i1 %849, %850
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %14, align 1
  %853 = trunc i64 %848 to i32
  %854 = and i32 %853, 252
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %21, align 1
  %859 = xor i64 %846, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %860 = xor i64 %859, %848
  %861 = lshr i64 %860, 4
  %862 = trunc i64 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %27, align 1
  %864 = icmp eq i64 %848, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %30, align 1
  %866 = lshr i64 %848, 63
  %867 = trunc i64 %866 to i8
  store i8 %867, i8* %33, align 1
  %868 = xor i64 %866, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %869 = xor i64 %866, %847
  %870 = add nuw nsw i64 %868, %869
  %871 = icmp eq i64 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %39, align 1
  %873 = inttoptr i64 %848 to i32*
  %874 = add i64 %839, 27
  store i64 %874, i64* %3, align 8
  %875 = load i32, i32* %873, align 4
  %876 = add i32 %875, -4
  %877 = icmp ult i32 %875, 4
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %14, align 1
  %879 = and i32 %876, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %21, align 1
  %884 = xor i32 %876, %875
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %27, align 1
  %888 = icmp eq i32 %876, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %30, align 1
  %890 = lshr i32 %876, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %33, align 1
  %892 = lshr i32 %875, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %39, align 1
  %.v115 = select i1 %888, i64 231, i64 33
  %897 = add i64 %839, %.v115
  store i64 %897, i64* %3, align 8
  br i1 %888, label %block_.L_47cbc0, label %block_47cafa

block_47cafa:                                     ; preds = %block_47cad9
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -1008
  %900 = add i64 %897, 17
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = sext i32 %902 to i64
  %904 = mul nsw i64 %903, 12
  store i64 %904, i64* %RCX.i810, align 8
  %905 = lshr i64 %904, 63
  %906 = add i64 %904, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %906, i64* %RAX.i862, align 8
  %907 = icmp ult i64 %906, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %908 = icmp ult i64 %906, %904
  %909 = or i1 %907, %908
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %14, align 1
  %911 = trunc i64 %906 to i32
  %912 = and i32 %911, 252
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %21, align 1
  %917 = xor i64 %904, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %918 = xor i64 %917, %906
  %919 = lshr i64 %918, 4
  %920 = trunc i64 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %27, align 1
  %922 = icmp eq i64 %906, 0
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %30, align 1
  %924 = lshr i64 %906, 63
  %925 = trunc i64 %924 to i8
  store i8 %925, i8* %33, align 1
  %926 = xor i64 %924, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %927 = xor i64 %924, %905
  %928 = add nuw nsw i64 %926, %927
  %929 = icmp eq i64 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %39, align 1
  %931 = inttoptr i64 %906 to i32*
  %932 = add i64 %897, 27
  store i64 %932, i64* %3, align 8
  %933 = load i32, i32* %931, align 4
  %934 = add i32 %933, -6
  %935 = icmp ult i32 %933, 6
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %14, align 1
  %937 = and i32 %934, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %21, align 1
  %942 = xor i32 %934, %933
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %27, align 1
  %946 = icmp eq i32 %934, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %30, align 1
  %948 = lshr i32 %934, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %33, align 1
  %950 = lshr i32 %933, 31
  %951 = xor i32 %948, %950
  %952 = add nuw nsw i32 %951, %950
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %39, align 1
  %.v116 = select i1 %946, i64 198, i64 33
  %955 = add i64 %897, %.v116
  store i64 %955, i64* %3, align 8
  br i1 %946, label %block_.L_47cbc0, label %block_47cb1b

block_47cb1b:                                     ; preds = %block_47cafa
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -1008
  %958 = add i64 %955, 17
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sext i32 %960 to i64
  %962 = mul nsw i64 %961, 12
  store i64 %962, i64* %RCX.i810, align 8
  %963 = lshr i64 %962, 63
  %964 = add i64 %962, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %964, i64* %RAX.i862, align 8
  %965 = icmp ult i64 %964, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %966 = icmp ult i64 %964, %962
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %14, align 1
  %969 = trunc i64 %964 to i32
  %970 = and i32 %969, 252
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %21, align 1
  %975 = xor i64 %962, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %976 = xor i64 %975, %964
  %977 = lshr i64 %976, 4
  %978 = trunc i64 %977 to i8
  %979 = and i8 %978, 1
  store i8 %979, i8* %27, align 1
  %980 = icmp eq i64 %964, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %30, align 1
  %982 = lshr i64 %964, 63
  %983 = trunc i64 %982 to i8
  store i8 %983, i8* %33, align 1
  %984 = xor i64 %982, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %985 = xor i64 %982, %963
  %986 = add nuw nsw i64 %984, %985
  %987 = icmp eq i64 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %39, align 1
  %989 = inttoptr i64 %964 to i32*
  %990 = add i64 %955, 27
  store i64 %990, i64* %3, align 8
  %991 = load i32, i32* %989, align 4
  %992 = add i32 %991, -8
  %993 = icmp ult i32 %991, 8
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %14, align 1
  %995 = and i32 %992, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  %1000 = xor i32 %992, %991
  %1001 = lshr i32 %1000, 4
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %27, align 1
  %1004 = icmp eq i32 %992, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %30, align 1
  %1006 = lshr i32 %992, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %33, align 1
  %1008 = lshr i32 %991, 31
  %1009 = xor i32 %1006, %1008
  %1010 = add nuw nsw i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %39, align 1
  %.v117 = select i1 %1004, i64 165, i64 33
  %1013 = add i64 %955, %.v117
  store i64 %1013, i64* %3, align 8
  br i1 %1004, label %block_.L_47cbc0, label %block_47cb3c

block_47cb3c:                                     ; preds = %block_47cb1b
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -1008
  %1016 = add i64 %1013, 17
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = mul nsw i64 %1019, 12
  store i64 %1020, i64* %RCX.i810, align 8
  %1021 = lshr i64 %1020, 63
  %1022 = add i64 %1020, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1022, i64* %RAX.i862, align 8
  %1023 = icmp ult i64 %1022, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1024 = icmp ult i64 %1022, %1020
  %1025 = or i1 %1023, %1024
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %14, align 1
  %1027 = trunc i64 %1022 to i32
  %1028 = and i32 %1027, 252
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %21, align 1
  %1033 = xor i64 %1020, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1034 = xor i64 %1033, %1022
  %1035 = lshr i64 %1034, 4
  %1036 = trunc i64 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %27, align 1
  %1038 = icmp eq i64 %1022, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %30, align 1
  %1040 = lshr i64 %1022, 63
  %1041 = trunc i64 %1040 to i8
  store i8 %1041, i8* %33, align 1
  %1042 = xor i64 %1040, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1043 = xor i64 %1040, %1021
  %1044 = add nuw nsw i64 %1042, %1043
  %1045 = icmp eq i64 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %39, align 1
  %1047 = inttoptr i64 %1022 to i32*
  %1048 = add i64 %1013, 27
  store i64 %1048, i64* %3, align 8
  %1049 = load i32, i32* %1047, align 4
  %1050 = add i32 %1049, -10
  %1051 = icmp ult i32 %1049, 10
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %14, align 1
  %1053 = and i32 %1050, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %21, align 1
  %1058 = xor i32 %1050, %1049
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %27, align 1
  %1062 = icmp eq i32 %1050, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %30, align 1
  %1064 = lshr i32 %1050, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %33, align 1
  %1066 = lshr i32 %1049, 31
  %1067 = xor i32 %1064, %1066
  %1068 = add nuw nsw i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %39, align 1
  %.v118 = select i1 %1062, i64 132, i64 33
  %1071 = add i64 %1013, %.v118
  store i64 %1071, i64* %3, align 8
  br i1 %1062, label %block_.L_47cbc0, label %block_47cb5d

block_47cb5d:                                     ; preds = %block_47cb3c
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -1008
  %1074 = add i64 %1071, 17
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = mul nsw i64 %1077, 12
  store i64 %1078, i64* %RCX.i810, align 8
  %1079 = lshr i64 %1078, 63
  %1080 = add i64 %1078, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1080, i64* %RAX.i862, align 8
  %1081 = icmp ult i64 %1080, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1082 = icmp ult i64 %1080, %1078
  %1083 = or i1 %1081, %1082
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %14, align 1
  %1085 = trunc i64 %1080 to i32
  %1086 = and i32 %1085, 252
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %21, align 1
  %1091 = xor i64 %1078, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1092 = xor i64 %1091, %1080
  %1093 = lshr i64 %1092, 4
  %1094 = trunc i64 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %27, align 1
  %1096 = icmp eq i64 %1080, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %30, align 1
  %1098 = lshr i64 %1080, 63
  %1099 = trunc i64 %1098 to i8
  store i8 %1099, i8* %33, align 1
  %1100 = xor i64 %1098, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1101 = xor i64 %1098, %1079
  %1102 = add nuw nsw i64 %1100, %1101
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %39, align 1
  %1105 = inttoptr i64 %1080 to i32*
  %1106 = add i64 %1071, 27
  store i64 %1106, i64* %3, align 8
  %1107 = load i32, i32* %1105, align 4
  %1108 = add i32 %1107, -12
  %1109 = icmp ult i32 %1107, 12
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %14, align 1
  %1111 = and i32 %1108, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i32 %1108, %1107
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %27, align 1
  %1120 = icmp eq i32 %1108, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %30, align 1
  %1122 = lshr i32 %1108, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %33, align 1
  %1124 = lshr i32 %1107, 31
  %1125 = xor i32 %1122, %1124
  %1126 = add nuw nsw i32 %1125, %1124
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %39, align 1
  %.v119 = select i1 %1120, i64 99, i64 33
  %1129 = add i64 %1071, %.v119
  store i64 %1129, i64* %3, align 8
  br i1 %1120, label %block_.L_47cbc0, label %block_47cb7e

block_47cb7e:                                     ; preds = %block_47cb5d
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -1008
  %1132 = add i64 %1129, 17
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = mul nsw i64 %1135, 12
  store i64 %1136, i64* %RCX.i810, align 8
  %1137 = lshr i64 %1136, 63
  %1138 = add i64 %1136, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1138, i64* %RAX.i862, align 8
  %1139 = icmp ult i64 %1138, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1140 = icmp ult i64 %1138, %1136
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %14, align 1
  %1143 = trunc i64 %1138 to i32
  %1144 = and i32 %1143, 252
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %21, align 1
  %1149 = xor i64 %1136, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1150 = xor i64 %1149, %1138
  %1151 = lshr i64 %1150, 4
  %1152 = trunc i64 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %27, align 1
  %1154 = icmp eq i64 %1138, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %30, align 1
  %1156 = lshr i64 %1138, 63
  %1157 = trunc i64 %1156 to i8
  store i8 %1157, i8* %33, align 1
  %1158 = xor i64 %1156, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1159 = xor i64 %1156, %1137
  %1160 = add nuw nsw i64 %1158, %1159
  %1161 = icmp eq i64 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %39, align 1
  %1163 = inttoptr i64 %1138 to i32*
  %1164 = add i64 %1129, 27
  store i64 %1164, i64* %3, align 8
  %1165 = load i32, i32* %1163, align 4
  %1166 = add i32 %1165, -14
  %1167 = icmp ult i32 %1165, 14
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %14, align 1
  %1169 = and i32 %1166, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %21, align 1
  %1174 = xor i32 %1166, %1165
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %27, align 1
  %1178 = icmp eq i32 %1166, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %30, align 1
  %1180 = lshr i32 %1166, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %33, align 1
  %1182 = lshr i32 %1165, 31
  %1183 = xor i32 %1180, %1182
  %1184 = add nuw nsw i32 %1183, %1182
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %39, align 1
  %.v120 = select i1 %1178, i64 66, i64 33
  %1187 = add i64 %1129, %.v120
  store i64 %1187, i64* %3, align 8
  br i1 %1178, label %block_.L_47cbc0, label %block_47cb9f

block_47cb9f:                                     ; preds = %block_47cb7e
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i862, align 8
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -1008
  %1190 = add i64 %1187, 17
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = mul nsw i64 %1193, 12
  store i64 %1194, i64* %RCX.i810, align 8
  %1195 = lshr i64 %1194, 63
  %1196 = add i64 %1194, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1196, i64* %RAX.i862, align 8
  %1197 = icmp ult i64 %1196, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1198 = icmp ult i64 %1196, %1194
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %14, align 1
  %1201 = trunc i64 %1196 to i32
  %1202 = and i32 %1201, 252
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %21, align 1
  %1207 = xor i64 %1194, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1208 = xor i64 %1207, %1196
  %1209 = lshr i64 %1208, 4
  %1210 = trunc i64 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %27, align 1
  %1212 = icmp eq i64 %1196, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %30, align 1
  %1214 = lshr i64 %1196, 63
  %1215 = trunc i64 %1214 to i8
  store i8 %1215, i8* %33, align 1
  %1216 = xor i64 %1214, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1217 = xor i64 %1214, %1195
  %1218 = add nuw nsw i64 %1216, %1217
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %39, align 1
  %1221 = inttoptr i64 %1196 to i32*
  %1222 = add i64 %1187, 27
  store i64 %1222, i64* %3, align 8
  %1223 = load i32, i32* %1221, align 4
  %1224 = add i32 %1223, -16
  %1225 = icmp ult i32 %1223, 16
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %14, align 1
  %1227 = and i32 %1224, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  %1232 = xor i32 %1223, 16
  %1233 = xor i32 %1232, %1224
  %1234 = lshr i32 %1233, 4
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  store i8 %1236, i8* %27, align 1
  %1237 = icmp eq i32 %1224, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %30, align 1
  %1239 = lshr i32 %1224, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %33, align 1
  %1241 = lshr i32 %1223, 31
  %1242 = xor i32 %1239, %1241
  %1243 = add nuw nsw i32 %1242, %1241
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %39, align 1
  %.v121 = select i1 %1237, i64 33, i64 38
  %1246 = add i64 %1187, %.v121
  store i64 %1246, i64* %3, align 8
  br i1 %1237, label %block_.L_47cbc0, label %block_.L_47cbc5

block_.L_47cbc0:                                  ; preds = %block_47cb9f, %block_47cb7e, %block_47cb5d, %block_47cb3c, %block_47cb1b, %block_47cafa, %block_47cad9, %block_.L_47ca9e
  %1247 = phi i64 [ %1246, %block_47cb9f ], [ %1187, %block_47cb7e ], [ %1129, %block_47cb5d ], [ %1071, %block_47cb3c ], [ %1013, %block_47cb1b ], [ %955, %block_47cafa ], [ %897, %block_47cad9 ], [ %839, %block_.L_47ca9e ]
  %1248 = add i64 %1247, 30
  %.pre64.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47cbde.sink.split

block_.L_47cbc5:                                  ; preds = %block_47cb9f
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -996
  %1251 = add i64 %1246, 11
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = add i32 %1253, 1
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RAX.i862, align 8
  %1256 = icmp eq i32 %1253, -1
  %1257 = icmp eq i32 %1254, 0
  %1258 = or i1 %1256, %1257
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = and i32 %1254, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i32 %1254, %1253
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = zext i1 %1257 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i32 %1254, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i32 %1253, 31
  %1273 = xor i32 %1270, %1272
  %1274 = add nuw nsw i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %39, align 1
  %1277 = add i64 %1246, 20
  store i64 %1277, i64* %3, align 8
  store i32 %1254, i32* %1252, align 4
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, -390
  store i64 %1279, i64* %3, align 8
  br label %block_.L_47ca53

block_.L_47cbde.sink.split:                       ; preds = %block_47ca99, %block_.L_47cbc0
  %.pre64 = phi i64 [ %.pre64.pre, %block_.L_47cbc0 ], [ %723, %block_47ca99 ]
  %.sink = phi i64 [ %1248, %block_.L_47cbc0 ], [ %740, %block_47ca99 ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_47cbde

block_.L_47cbde.loopexit:                         ; preds = %block_.L_47ca53
  br label %block_.L_47cbde

block_.L_47cbde:                                  ; preds = %block_.L_47cbde.loopexit, %block_.L_47cbde.sink.split
  %1280 = phi i64 [ %.sink, %block_.L_47cbde.sink.split ], [ %677, %block_.L_47cbde.loopexit ]
  %1281 = phi i64 [ %.pre64, %block_.L_47cbde.sink.split ], [ %648, %block_.L_47cbde.loopexit ]
  %1282 = add i64 %1281, -996
  %1283 = add i64 %1280, 7
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = add i32 %1285, -120
  %1287 = icmp ult i32 %1285, 120
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %14, align 1
  %1289 = and i32 %1286, 255
  %1290 = tail call i32 @llvm.ctpop.i32(i32 %1289)
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  store i8 %1293, i8* %21, align 1
  %1294 = xor i32 %1285, 16
  %1295 = xor i32 %1294, %1286
  %1296 = lshr i32 %1295, 4
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  store i8 %1298, i8* %27, align 1
  %1299 = icmp eq i32 %1286, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %30, align 1
  %1301 = lshr i32 %1286, 31
  %1302 = trunc i32 %1301 to i8
  store i8 %1302, i8* %33, align 1
  %1303 = lshr i32 %1285, 31
  %1304 = xor i32 %1301, %1303
  %1305 = add nuw nsw i32 %1304, %1303
  %1306 = icmp eq i32 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %39, align 1
  %.v88 = select i1 %1299, i64 58, i64 13
  %1308 = add i64 %1280, %.v88
  store i64 %1308, i64* %3, align 8
  br i1 %1299, label %block_.L_47cc18, label %block_47cbeb

block_47cbeb:                                     ; preds = %block_.L_47cbde
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i862, align 8
  %1309 = add i64 %1281, -992
  %1310 = add i64 %1308, 17
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = sext i32 %1312 to i64
  %1314 = mul nsw i64 %1313, 564
  store i64 %1314, i64* %RCX.i528, align 8
  %1315 = lshr i64 %1314, 63
  %1316 = add i64 %1314, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1316, i64* %RAX.i862, align 8
  %1317 = icmp ult i64 %1316, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1318 = icmp ult i64 %1316, %1314
  %1319 = or i1 %1317, %1318
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %14, align 1
  %1321 = trunc i64 %1316 to i32
  %1322 = and i32 %1321, 252
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %21, align 1
  %1327 = xor i64 %1314, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1328 = xor i64 %1327, %1316
  %1329 = lshr i64 %1328, 4
  %1330 = trunc i64 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %27, align 1
  %1332 = icmp eq i64 %1316, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %30, align 1
  %1334 = lshr i64 %1316, 63
  %1335 = trunc i64 %1334 to i8
  store i8 %1335, i8* %33, align 1
  %1336 = xor i64 %1334, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1337 = xor i64 %1334, %1315
  %1338 = add nuw nsw i64 %1336, %1337
  %1339 = icmp eq i64 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %39, align 1
  %1341 = add i64 %1308, 34
  store i64 %1341, i64* %3, align 8
  %1342 = load i32, i32* %1284, align 4
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RCX.i528, align 8
  %1344 = shl nsw i64 %1343, 2
  %1345 = add i64 %1314, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %1346 = add i64 %1345, %1344
  %1347 = add i64 %1308, 39
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = add i32 %1349, 1
  %1351 = icmp ne i32 %1349, -1
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %14, align 1
  %1353 = and i32 %1350, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  %1358 = xor i32 %1349, 16
  %1359 = xor i32 %1358, %1350
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %27, align 1
  %1363 = icmp eq i32 %1350, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %30, align 1
  %1365 = lshr i32 %1350, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %33, align 1
  %1367 = lshr i32 %1349, 31
  %1368 = xor i32 %1367, 1
  %1369 = xor i32 %1365, %1367
  %1370 = add nuw nsw i32 %1369, %1368
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %39, align 1
  %.v89 = select i1 %1363, i64 45, i64 50
  %1373 = add i64 %1308, %.v89
  store i64 %1373, i64* %3, align 8
  br i1 %1363, label %block_.L_47cc18, label %block_.L_47cc1d

block_.L_47cc18:                                  ; preds = %block_47cbeb, %block_.L_47cbde
  %1374 = phi i64 [ %1373, %block_47cbeb ], [ %1308, %block_.L_47cbde ]
  %1375 = add i64 %1374, 1264
  br label %block_.L_47d108

block_.L_47cc1d:                                  ; preds = %block_47cbeb
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -1004
  %1378 = add i64 %1373, 10
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  store i32 0, i32* %1379, align 4
  %1380 = load i64, i64* %3, align 8
  %1381 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1382 = and i32 %1381, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1387 = icmp eq i32 %1381, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %30, align 1
  %1389 = lshr i32 %1381, 31
  %1390 = trunc i32 %1389 to i8
  store i8 %1390, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v90 = select i1 %1387, i64 14, i64 19
  %1391 = add i64 %1380, %.v90
  store i64 %1391, i64* %3, align 8
  br i1 %1387, label %block_47cc35, label %block_.L_47cc3a

block_47cc35:                                     ; preds = %block_.L_47cc1d
  %1392 = add i64 %1391, 34
  store i64 %1392, i64* %3, align 8
  br label %block_.L_47cc57

block_.L_47cc3a:                                  ; preds = %block_.L_47cc1d
  store i64 ptrtoint (%G__0x57c2fd_type* @G__0x57c2fd to i64), i64* %RDI.i508, align 8
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -992
  %1395 = add i64 %1391, 16
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RSI.i505, align 8
  store i8 0, i8* %AL.i503, align 1
  %1399 = add i64 %1391, -175754
  %1400 = add i64 %1391, 23
  %1401 = load i64, i64* %6, align 8
  %1402 = add i64 %1401, -8
  %1403 = inttoptr i64 %1402 to i64*
  store i64 %1400, i64* %1403, align 8
  store i64 %1402, i64* %6, align 8
  store i64 %1399, i64* %3, align 8
  %call2_47cc4c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1399, %struct.Memory* %MEMORY.5)
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -1048
  %1406 = load i32, i32* %EAX.i851, align 4
  %1407 = load i64, i64* %3, align 8
  %1408 = add i64 %1407, 6
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1405 to i32*
  store i32 %1406, i32* %1409, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_47cc57

block_.L_47cc57:                                  ; preds = %block_.L_47cc3a, %block_47cc35
  %1410 = phi i64 [ %.pre65, %block_.L_47cc3a ], [ %1392, %block_47cc35 ]
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX.i497, align 8
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -992
  %1413 = add i64 %1410, 18
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = zext i32 %1415 to i64
  store i64 %1416, i64* %RDI.i508, align 8
  %1417 = add i64 %1411, -4
  %1418 = add i64 %1410, 21
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = zext i32 %1420 to i64
  store i64 %1421, i64* %RSI.i505, align 8
  store i64 0, i64* %RCX.i528, align 8
  store i64 0, i64* %510, align 8
  store i64 0, i64* %511, align 8
  %1422 = add i64 %1410, -474663
  %1423 = add i64 %1410, 34
  %1424 = load i64, i64* %6, align 8
  %1425 = add i64 %1424, -8
  %1426 = inttoptr i64 %1425 to i64*
  store i64 %1423, i64* %1426, align 8
  store i64 %1425, i64* %6, align 8
  store i64 %1422, i64* %3, align 8
  %call2_47cc74 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1422, %struct.Memory* %MEMORY.5)
  %1427 = load i32, i32* %EAX.i851, align 4
  %1428 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1429 = and i32 %1427, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1434 = icmp eq i32 %1427, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %30, align 1
  %1436 = lshr i32 %1427, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v91 = select i1 %1434, i64 1162, i64 9
  %1438 = add i64 %1428, %.v91
  store i64 %1438, i64* %3, align 8
  br i1 %1434, label %block_.L_47d103, label %block_47cc82

block_47cc82:                                     ; preds = %block_.L_47cc57
  %1439 = load i64, i64* %RBP.i, align 8
  %1440 = add i64 %1439, -996
  %1441 = add i64 %1438, 10
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  store i32 0, i32* %1442, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_47cc8c

block_.L_47cc8c:                                  ; preds = %block_.L_47d0e5, %block_47cc82
  %1443 = phi i64 [ %.pre66, %block_47cc82 ], [ %2697, %block_.L_47d0e5 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_47cc74, %block_47cc82 ], [ %MEMORY.30, %block_.L_47d0e5 ]
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = add i64 %1444, -996
  %1446 = add i64 %1443, 6
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RAX.i862, align 8
  %1450 = add i64 %1444, -980
  %1451 = add i64 %1443, 12
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sub i32 %1448, %1453
  %1455 = icmp ult i32 %1448, %1453
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %14, align 1
  %1457 = and i32 %1454, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %21, align 1
  %1462 = xor i32 %1453, %1448
  %1463 = xor i32 %1462, %1454
  %1464 = lshr i32 %1463, 4
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %27, align 1
  %1467 = icmp eq i32 %1454, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %30, align 1
  %1469 = lshr i32 %1454, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %33, align 1
  %1471 = lshr i32 %1448, 31
  %1472 = lshr i32 %1453, 31
  %1473 = xor i32 %1472, %1471
  %1474 = xor i32 %1469, %1471
  %1475 = add nuw nsw i32 %1474, %1473
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %39, align 1
  %1478 = icmp ne i8 %1470, 0
  %1479 = xor i1 %1478, %1476
  %.v92 = select i1 %1479, i64 18, i64 1138
  %1480 = add i64 %1443, %.v92
  store i64 %1480, i64* %3, align 8
  br i1 %1479, label %block_47cc9e, label %block_.L_47d0fe

block_47cc9e:                                     ; preds = %block_.L_47cc8c
  %1481 = add i64 %1480, 7
  store i64 %1481, i64* %3, align 8
  %1482 = load i32, i32* %1447, align 4
  %1483 = sext i32 %1482 to i64
  store i64 %1483, i64* %RAX.i862, align 8
  %1484 = shl nsw i64 %1483, 2
  %1485 = add i64 %1444, -976
  %1486 = add i64 %1485, %1484
  %1487 = add i64 %1480, 14
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  %1490 = zext i32 %1489 to i64
  store i64 %1490, i64* %RCX.i528, align 8
  %1491 = add i64 %1444, -1016
  %1492 = add i64 %1480, 20
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  store i32 %1489, i32* %1493, align 4
  %1494 = load i64, i64* %RBP.i, align 8
  %1495 = add i64 %1494, -1016
  %1496 = load i64, i64* %3, align 8
  %1497 = add i64 %1496, 7
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1495 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = sext i32 %1499 to i64
  store i64 %1500, i64* %RAX.i862, align 8
  %1501 = add nsw i64 %1500, 12099168
  %1502 = add i64 %1496, 15
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i8*
  %1504 = load i8, i8* %1503, align 1
  %1505 = zext i8 %1504 to i64
  store i64 %1505, i64* %RCX.i528, align 8
  %1506 = zext i8 %1504 to i32
  %1507 = add i64 %1494, -4
  %1508 = add i64 %1496, 18
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = sub i32 %1506, %1510
  %1512 = icmp ult i32 %1506, %1510
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %14, align 1
  %1514 = and i32 %1511, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i32 %1510, %1506
  %1520 = xor i32 %1519, %1511
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  store i8 %1523, i8* %27, align 1
  %1524 = icmp eq i32 %1511, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %30, align 1
  %1526 = lshr i32 %1511, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %33, align 1
  %1528 = lshr i32 %1510, 31
  %1529 = add nuw nsw i32 %1526, %1528
  %1530 = icmp eq i32 %1529, 2
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %39, align 1
  %.v93 = select i1 %1524, i64 24, i64 552
  %1532 = add i64 %1496, %.v93
  store i64 %1532, i64* %3, align 8
  br i1 %1524, label %block_47ccca, label %block_.L_47ceda

block_47ccca:                                     ; preds = %block_47cc9e
  %1533 = add i64 %1494, -992
  %1534 = add i64 %1532, 6
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RDI.i508, align 8
  %1538 = add i64 %1494, -996
  %1539 = add i64 %1532, 13
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = sext i32 %1541 to i64
  store i64 %1542, i64* %RAX.i862, align 8
  %1543 = shl nsw i64 %1542, 2
  %1544 = add i64 %1494, -976
  %1545 = add i64 %1544, %1543
  %1546 = add i64 %1532, 20
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RSI.i505, align 8
  %1550 = add i64 %1532, -306778
  %1551 = add i64 %1532, 25
  %1552 = load i64, i64* %6, align 8
  %1553 = add i64 %1552, -8
  %1554 = inttoptr i64 %1553 to i64*
  store i64 %1551, i64* %1554, align 8
  store i64 %1553, i64* %6, align 8
  store i64 %1550, i64* %3, align 8
  %call2_47ccde = tail call %struct.Memory* @sub_431e70.defense_move_reason_known(%struct.State* nonnull %0, i64 %1550, %struct.Memory* %MEMORY.11)
  %1555 = load i32, i32* %EAX.i851, align 4
  %1556 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1557 = and i32 %1555, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1562 = icmp eq i32 %1555, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %30, align 1
  %1564 = lshr i32 %1555, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v104 = select i1 %1562, i64 9, i64 503
  %1566 = add i64 %1556, %.v104
  store i64 %1566, i64* %3, align 8
  br i1 %1562, label %block_47ccec, label %block_.L_47ceda

block_47ccec:                                     ; preds = %block_47ccca
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RSI.i505, align 8
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -1016
  %1569 = add i64 %1566, 10
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RDI.i508, align 8
  %1573 = add i64 %1566, -127404
  %1574 = add i64 %1566, 15
  %1575 = load i64, i64* %6, align 8
  %1576 = add i64 %1575, -8
  %1577 = inttoptr i64 %1576 to i64*
  store i64 %1574, i64* %1577, align 8
  store i64 %1576, i64* %6, align 8
  store i64 %1573, i64* %3, align 8
  %call2_47ccf6 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %1573, %struct.Memory* %MEMORY.11)
  %1578 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i505, align 8
  %1579 = load i64, i64* %RBP.i, align 8
  %1580 = add i64 %1579, -1020
  %1581 = load i32, i32* %EAX.i851, align 4
  %1582 = add i64 %1578, 16
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1580 to i32*
  store i32 %1581, i32* %1583, align 4
  %1584 = load i64, i64* %RBP.i, align 8
  %1585 = add i64 %1584, -1020
  %1586 = load i64, i64* %3, align 8
  %1587 = add i64 %1586, 6
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1585 to i32*
  %1589 = load i32, i32* %1588, align 4
  %1590 = zext i32 %1589 to i64
  store i64 %1590, i64* %RAX.i862, align 8
  %1591 = add i64 %1584, -1016
  %1592 = add i64 %1586, 13
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = sext i32 %1594 to i64
  %1596 = mul nsw i64 %1595, 380
  store i64 %1596, i64* %RCX.i528, align 8
  %1597 = lshr i64 %1596, 63
  %1598 = load i64, i64* %RSI.i505, align 8
  %1599 = add i64 %1596, %1598
  store i64 %1599, i64* %RSI.i505, align 8
  %1600 = icmp ult i64 %1599, %1598
  %1601 = icmp ult i64 %1599, %1596
  %1602 = or i1 %1600, %1601
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %14, align 1
  %1604 = trunc i64 %1599 to i32
  %1605 = and i32 %1604, 255
  %1606 = tail call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  store i8 %1609, i8* %21, align 1
  %1610 = xor i64 %1596, %1598
  %1611 = xor i64 %1610, %1599
  %1612 = lshr i64 %1611, 4
  %1613 = trunc i64 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %27, align 1
  %1615 = icmp eq i64 %1599, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %30, align 1
  %1617 = lshr i64 %1599, 63
  %1618 = trunc i64 %1617 to i8
  store i8 %1618, i8* %33, align 1
  %1619 = lshr i64 %1598, 63
  %1620 = xor i64 %1617, %1619
  %1621 = xor i64 %1617, %1597
  %1622 = add nuw nsw i64 %1620, %1621
  %1623 = icmp eq i64 %1622, 2
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %39, align 1
  %1625 = add i64 %1599, 100
  %1626 = add i64 %1586, 26
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sub i32 %1589, %1628
  %1630 = icmp ult i32 %1589, %1628
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %14, align 1
  %1632 = and i32 %1629, 255
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %21, align 1
  %1637 = xor i32 %1628, %1589
  %1638 = xor i32 %1637, %1629
  %1639 = lshr i32 %1638, 4
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %27, align 1
  %1642 = icmp eq i32 %1629, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %30, align 1
  %1644 = lshr i32 %1629, 31
  %1645 = trunc i32 %1644 to i8
  store i8 %1645, i8* %33, align 1
  %1646 = lshr i32 %1589, 31
  %1647 = lshr i32 %1628, 31
  %1648 = xor i32 %1647, %1646
  %1649 = xor i32 %1644, %1646
  %1650 = add nuw nsw i32 %1649, %1648
  %1651 = icmp eq i32 %1650, 2
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %39, align 1
  %1653 = icmp ne i8 %1645, 0
  %1654 = xor i1 %1653, %1651
  %.v105 = select i1 %1654, i64 32, i64 458
  %1655 = add i64 %1586, %.v105
  store i64 %1655, i64* %3, align 8
  br i1 %1654, label %block_47cd2b, label %block_.L_47ced5

block_47cd2b:                                     ; preds = %block_47ccec
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX.i497, align 8
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i528, align 8
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -1024
  %1658 = add i64 %1655, 32
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  store i32 1, i32* %1659, align 4
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -1016
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1662, 7
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1661 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = sext i32 %1665 to i64
  %1667 = mul nsw i64 %1666, 380
  store i64 %1667, i64* %RSI.i505, align 8
  %1668 = lshr i64 %1667, 63
  %1669 = load i64, i64* %RCX.i528, align 8
  %1670 = add i64 %1667, %1669
  store i64 %1670, i64* %RCX.i528, align 8
  %1671 = icmp ult i64 %1670, %1669
  %1672 = icmp ult i64 %1670, %1667
  %1673 = or i1 %1671, %1672
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %14, align 1
  %1675 = trunc i64 %1670 to i32
  %1676 = and i32 %1675, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %21, align 1
  %1681 = xor i64 %1667, %1669
  %1682 = xor i64 %1681, %1670
  %1683 = lshr i64 %1682, 4
  %1684 = trunc i64 %1683 to i8
  %1685 = and i8 %1684, 1
  store i8 %1685, i8* %27, align 1
  %1686 = icmp eq i64 %1670, 0
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %30, align 1
  %1688 = lshr i64 %1670, 63
  %1689 = trunc i64 %1688 to i8
  store i8 %1689, i8* %33, align 1
  %1690 = lshr i64 %1669, 63
  %1691 = xor i64 %1688, %1690
  %1692 = xor i64 %1688, %1668
  %1693 = add nuw nsw i64 %1691, %1692
  %1694 = icmp eq i64 %1693, 2
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %39, align 1
  %1696 = add i64 %1670, 60
  %1697 = add i64 %1662, 20
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = zext i32 %1699 to i64
  store i64 %1700, i64* %RDI.i508, align 8
  %1701 = add i64 %1660, -1000
  %1702 = add i64 %1662, 26
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i32*
  %1704 = load i32, i32* %1703, align 4
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RSI.i505, align 8
  %1706 = load i32, i32* %EAX.i851, align 4
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RCX.i528, align 8
  store i64 %1707, i64* %510, align 8
  store i64 %1707, i64* %511, align 8
  %1708 = add i64 %1662, -474907
  %1709 = add i64 %1662, 39
  %1710 = load i64, i64* %6, align 8
  %1711 = add i64 %1710, -8
  %1712 = inttoptr i64 %1711 to i64*
  store i64 %1709, i64* %1712, align 8
  store i64 %1711, i64* %6, align 8
  store i64 %1708, i64* %3, align 8
  %call2_47cd6d = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1708, %struct.Memory* %MEMORY.11)
  %1713 = load i32, i32* %EAX.i851, align 4
  %1714 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1715 = and i32 %1713, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715)
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1720 = icmp eq i32 %1713, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %30, align 1
  %1722 = lshr i32 %1713, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v106 = select i1 %1720, i64 170, i64 9
  %1724 = add i64 %1714, %.v106
  store i64 %1724, i64* %3, align 8
  br i1 %1720, label %block_.L_47ce1c, label %block_47cd7b

block_47cd7b:                                     ; preds = %block_47cd2b
  %1725 = load i64, i64* %RBP.i, align 8
  %1726 = add i64 %1725, -1016
  %1727 = add i64 %1724, 7
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = sext i32 %1729 to i64
  store i64 %1730, i64* %RAX.i862, align 8
  %1731 = add nsw i64 %1730, 12099168
  %1732 = add i64 %1724, 15
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i8*
  %1734 = load i8, i8* %1733, align 1
  store i8 0, i8* %14, align 1
  %1735 = zext i8 %1734 to i32
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1740 = icmp eq i8 %1734, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %30, align 1
  %1742 = lshr i8 %1734, 7
  store i8 %1742, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v107 = select i1 %1740, i64 21, i64 36
  %1743 = add i64 %1724, %.v107
  store i64 %1743, i64* %3, align 8
  br i1 %1740, label %block_47cd90, label %block_.L_47cd9f

block_47cd90:                                     ; preds = %block_47cd7b
  %1744 = add i64 %1725, -1024
  %1745 = add i64 %1743, 10
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  store i32 0, i32* %1746, align 4
  %1747 = load i64, i64* %3, align 8
  %1748 = add i64 %1747, 125
  br label %block_.L_47ce17

block_.L_47cd9f:                                  ; preds = %block_47cd7b
  %1749 = zext i32 %1729 to i64
  %1750 = xor i64 %1749, %1730
  %1751 = trunc i64 %1750 to i32
  %1752 = and i64 %1750, 4294967295
  store i64 %1752, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  %1753 = and i32 %1751, 255
  %1754 = tail call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  store i8 %1757, i8* %21, align 1
  %1758 = icmp eq i32 %1751, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %30, align 1
  %1760 = lshr i32 %1751, 31
  %1761 = trunc i32 %1760 to i8
  store i8 %1761, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1762 = and i64 %1750, 4294967295
  store i64 %1762, i64* %RSI.i505, align 8
  %1763 = add i64 %1743, 10
  store i64 %1763, i64* %3, align 8
  %1764 = load i32, i32* %1728, align 4
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RDI.i508, align 8
  %1766 = add i64 %1743, -75295
  %1767 = add i64 %1743, 15
  %1768 = load i64, i64* %6, align 8
  %1769 = add i64 %1768, -8
  %1770 = inttoptr i64 %1769 to i64*
  store i64 %1767, i64* %1770, align 8
  store i64 %1769, i64* %6, align 8
  store i64 %1766, i64* %3, align 8
  %call2_47cda9 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %1766, %struct.Memory* %MEMORY.11)
  %1771 = load i64, i64* %3, align 8
  %1772 = load i32, i32* %EAX.i851, align 4
  %1773 = sub i32 5, %1772
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RDI.i508, align 8
  %1775 = icmp ugt i32 %1772, 5
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %14, align 1
  %1777 = and i32 %1773, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %21, align 1
  %1782 = xor i32 %1773, %1772
  %1783 = lshr i32 %1782, 4
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  store i8 %1785, i8* %27, align 1
  %1786 = icmp eq i32 %1773, 0
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %30, align 1
  %1788 = lshr i32 %1773, 31
  %1789 = trunc i32 %1788 to i8
  store i8 %1789, i8* %33, align 1
  %1790 = lshr i32 %1772, 31
  %1791 = add nuw nsw i32 %1788, %1790
  %1792 = icmp eq i32 %1791, 2
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %39, align 1
  %1794 = load i64, i64* %RBP.i, align 8
  %1795 = add i64 %1794, -1028
  %1796 = add i64 %1771, 13
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  store i32 %1773, i32* %1797, align 4
  %1798 = load i64, i64* %RBP.i, align 8
  %1799 = add i64 %1798, -1028
  %1800 = load i64, i64* %3, align 8
  %1801 = add i64 %1800, 6
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1799 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i862, align 8
  %1805 = add i64 %1798, -1020
  %1806 = add i64 %1800, 12
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = sub i32 %1803, %1808
  %1810 = icmp ult i32 %1803, %1808
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %14, align 1
  %1812 = and i32 %1809, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %21, align 1
  %1817 = xor i32 %1808, %1803
  %1818 = xor i32 %1817, %1809
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %27, align 1
  %1822 = icmp eq i32 %1809, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %30, align 1
  %1824 = lshr i32 %1809, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %33, align 1
  %1826 = lshr i32 %1803, 31
  %1827 = lshr i32 %1808, 31
  %1828 = xor i32 %1827, %1826
  %1829 = xor i32 %1824, %1826
  %1830 = add nuw nsw i32 %1829, %1828
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %39, align 1
  %1833 = icmp ne i8 %1825, 0
  %1834 = xor i1 %1833, %1831
  %1835 = or i1 %1822, %1834
  %.v108 = select i1 %1835, i64 87, i64 18
  %1836 = add i64 %1800, %.v108
  store i64 %1836, i64* %3, align 8
  br i1 %1835, label %block_.L_47ce12, label %block_47cdcd

block_47cdcd:                                     ; preds = %block_.L_47cd9f
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i862, align 8
  %1837 = add i64 %1836, 16
  store i64 %1837, i64* %3, align 8
  %1838 = load i32, i32* %1802, align 4
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RCX.i528, align 8
  %1840 = add i64 %1836, 22
  store i64 %1840, i64* %3, align 8
  store i32 %1838, i32* %1807, align 4
  %1841 = load i64, i64* %RBP.i, align 8
  %1842 = add i64 %1841, -1020
  %1843 = load i64, i64* %3, align 8
  %1844 = add i64 %1843, 6
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1842 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RCX.i528, align 8
  %1848 = add i64 %1841, -1016
  %1849 = add i64 %1843, 13
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = sext i32 %1851 to i64
  %1853 = mul nsw i64 %1852, 380
  store i64 %1853, i64* %RDX.i497, align 8
  %1854 = lshr i64 %1853, 63
  %1855 = load i64, i64* %RAX.i862, align 8
  %1856 = add i64 %1853, %1855
  store i64 %1856, i64* %RAX.i862, align 8
  %1857 = icmp ult i64 %1856, %1855
  %1858 = icmp ult i64 %1856, %1853
  %1859 = or i1 %1857, %1858
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %14, align 1
  %1861 = trunc i64 %1856 to i32
  %1862 = and i32 %1861, 255
  %1863 = tail call i32 @llvm.ctpop.i32(i32 %1862)
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  %1866 = xor i8 %1865, 1
  store i8 %1866, i8* %21, align 1
  %1867 = xor i64 %1853, %1855
  %1868 = xor i64 %1867, %1856
  %1869 = lshr i64 %1868, 4
  %1870 = trunc i64 %1869 to i8
  %1871 = and i8 %1870, 1
  store i8 %1871, i8* %27, align 1
  %1872 = icmp eq i64 %1856, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %30, align 1
  %1874 = lshr i64 %1856, 63
  %1875 = trunc i64 %1874 to i8
  store i8 %1875, i8* %33, align 1
  %1876 = lshr i64 %1855, 63
  %1877 = xor i64 %1874, %1876
  %1878 = xor i64 %1874, %1854
  %1879 = add nuw nsw i64 %1877, %1878
  %1880 = icmp eq i64 %1879, 2
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %39, align 1
  %1882 = add i64 %1856, 100
  %1883 = add i64 %1843, 26
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = sub i32 %1846, %1885
  %1887 = icmp ult i32 %1846, %1885
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %14, align 1
  %1889 = and i32 %1886, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %21, align 1
  %1894 = xor i32 %1885, %1846
  %1895 = xor i32 %1894, %1886
  %1896 = lshr i32 %1895, 4
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  store i8 %1898, i8* %27, align 1
  %1899 = icmp eq i32 %1886, 0
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %30, align 1
  %1901 = lshr i32 %1886, 31
  %1902 = trunc i32 %1901 to i8
  store i8 %1902, i8* %33, align 1
  %1903 = lshr i32 %1846, 31
  %1904 = lshr i32 %1885, 31
  %1905 = xor i32 %1904, %1903
  %1906 = xor i32 %1901, %1903
  %1907 = add nuw nsw i32 %1906, %1905
  %1908 = icmp eq i32 %1907, 2
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %39, align 1
  %1910 = icmp ne i8 %1902, 0
  %1911 = xor i1 %1910, %1908
  %.v109 = select i1 %1911, i64 42, i64 32
  %1912 = add i64 %1843, %.v109
  store i64 %1912, i64* %3, align 8
  br i1 %1911, label %block_.L_47ce0d, label %block_47ce03

block_47ce03:                                     ; preds = %block_47cdcd
  %1913 = load i64, i64* %RBP.i, align 8
  %1914 = add i64 %1913, -1024
  %1915 = add i64 %1912, 10
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  store i32 0, i32* %1916, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_47ce0d

block_.L_47ce0d:                                  ; preds = %block_47ce03, %block_47cdcd
  %1917 = phi i64 [ %.pre67, %block_47ce03 ], [ %1912, %block_47cdcd ]
  %1918 = add i64 %1917, 5
  store i64 %1918, i64* %3, align 8
  br label %block_.L_47ce12

block_.L_47ce12:                                  ; preds = %block_.L_47ce0d, %block_.L_47cd9f
  %1919 = phi i64 [ %1918, %block_.L_47ce0d ], [ %1836, %block_.L_47cd9f ]
  %1920 = add i64 %1919, 5
  store i64 %1920, i64* %3, align 8
  br label %block_.L_47ce17

block_.L_47ce17:                                  ; preds = %block_.L_47ce12, %block_47cd90
  %storemerge46 = phi i64 [ %1748, %block_47cd90 ], [ %1920, %block_.L_47ce12 ]
  %1921 = add i64 %storemerge46, -454839
  %1922 = add i64 %storemerge46, 5
  %1923 = load i64, i64* %6, align 8
  %1924 = add i64 %1923, -8
  %1925 = inttoptr i64 %1924 to i64*
  store i64 %1922, i64* %1925, align 8
  store i64 %1924, i64* %6, align 8
  store i64 %1921, i64* %3, align 8
  %call2_47ce17 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1921, %struct.Memory* %MEMORY.11)
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_47ce1c

block_.L_47ce1c:                                  ; preds = %block_.L_47ce17, %block_47cd2b
  %1926 = phi i64 [ %1724, %block_47cd2b ], [ %.pre68, %block_.L_47ce17 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.11, %block_47cd2b ], [ %call2_47ce17, %block_.L_47ce17 ]
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -1024
  %1929 = add i64 %1926, 7
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  store i8 0, i8* %14, align 1
  %1932 = and i32 %1931, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1937 = icmp eq i32 %1931, 0
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %30, align 1
  %1939 = lshr i32 %1931, 31
  %1940 = trunc i32 %1939 to i8
  store i8 %1940, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v110 = select i1 %1937, i64 180, i64 13
  %1941 = add i64 %1926, %.v110
  store i64 %1941, i64* %3, align 8
  br i1 %1937, label %block_.L_47ced0, label %block_47ce29

block_47ce29:                                     ; preds = %block_.L_47ce1c
  %1942 = add i64 %1927, -1004
  %1943 = add i64 %1941, 7
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  store i8 0, i8* %14, align 1
  %1946 = and i32 %1945, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1951 = icmp eq i32 %1945, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %30, align 1
  %1953 = lshr i32 %1945, 31
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v111 = select i1 %1951, i64 13, i64 60
  %1955 = add i64 %1941, %.v111
  store i64 %1955, i64* %3, align 8
  br i1 %1951, label %block_47ce36, label %block_.L_47ce65

block_47ce36:                                     ; preds = %block_47ce29
  %1956 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1962 = icmp eq i32 %1956, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %30, align 1
  %1964 = lshr i32 %1956, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v113 = select i1 %1962, i64 14, i64 19
  %1966 = add i64 %1955, %.v113
  store i64 %1966, i64* %3, align 8
  br i1 %1962, label %block_47ce44, label %block_.L_47ce49

block_47ce44:                                     ; preds = %block_47ce36
  %1967 = add i64 %1966, 28
  store i64 %1967, i64* %3, align 8
  br label %block_.L_47ce60

block_.L_47ce49:                                  ; preds = %block_47ce36
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i508, align 8
  store i8 0, i8* %AL.i503, align 1
  %1968 = add i64 %1966, -176281
  %1969 = add i64 %1966, 17
  %1970 = load i64, i64* %6, align 8
  %1971 = add i64 %1970, -8
  %1972 = inttoptr i64 %1971 to i64*
  store i64 %1969, i64* %1972, align 8
  store i64 %1971, i64* %6, align 8
  store i64 %1968, i64* %3, align 8
  %call2_47ce55 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1968, %struct.Memory* %MEMORY.15)
  %1973 = load i64, i64* %RBP.i, align 8
  %1974 = add i64 %1973, -1052
  %1975 = load i32, i32* %EAX.i851, align 4
  %1976 = load i64, i64* %3, align 8
  %1977 = add i64 %1976, 6
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1974 to i32*
  store i32 %1975, i32* %1978, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_47ce60

block_.L_47ce60:                                  ; preds = %block_.L_47ce49, %block_47ce44
  %1979 = phi i64 [ %.pre69, %block_.L_47ce49 ], [ %1967, %block_47ce44 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_47ce55, %block_.L_47ce49 ], [ %MEMORY.15, %block_47ce44 ]
  %1980 = add i64 %1979, 5
  store i64 %1980, i64* %3, align 8
  br label %block_.L_47ce65

block_.L_47ce65:                                  ; preds = %block_47ce29, %block_.L_47ce60
  %1981 = phi i64 [ %1955, %block_47ce29 ], [ %1980, %block_.L_47ce60 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_47ce29 ], [ %MEMORY.16, %block_.L_47ce60 ]
  %1982 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1983 = and i32 %1982, 255
  %1984 = tail call i32 @llvm.ctpop.i32(i32 %1983)
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = xor i8 %1986, 1
  store i8 %1987, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1988 = icmp eq i32 %1982, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %30, align 1
  %1990 = lshr i32 %1982, 31
  %1991 = trunc i32 %1990 to i8
  store i8 %1991, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v112 = select i1 %1988, i64 14, i64 19
  %1992 = add i64 %1981, %.v112
  store i64 %1992, i64* %3, align 8
  br i1 %1988, label %block_47ce73, label %block_.L_47ce78

block_47ce73:                                     ; preds = %block_.L_47ce65
  %1993 = add i64 %1992, 53
  store i64 %1993, i64* %3, align 8
  br label %block_.L_47cea8

block_.L_47ce78:                                  ; preds = %block_.L_47ce65
  store i64 ptrtoint (%G__0x582dd0_type* @G__0x582dd0 to i64), i64* %RDI.i508, align 8
  store i64 5, i64* %RAX.i862, align 8
  %1994 = load i64, i64* %RBP.i, align 8
  %1995 = add i64 %1994, -1016
  %1996 = add i64 %1992, 21
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  %1998 = load i32, i32* %1997, align 4
  %1999 = zext i32 %1998 to i64
  store i64 %1999, i64* %RSI.i505, align 8
  %2000 = add i64 %1994, -992
  %2001 = add i64 %1992, 27
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RDX.i497, align 8
  %2005 = add i64 %1994, -1020
  %2006 = add i64 %1992, 33
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = sub i32 5, %2008
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RAX.i862, align 8
  %2011 = icmp ugt i32 %2008, 5
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %14, align 1
  %2013 = and i32 %2009, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013)
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %21, align 1
  %2018 = xor i32 %2008, %2009
  %2019 = lshr i32 %2018, 4
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %27, align 1
  %2022 = icmp eq i32 %2009, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %30, align 1
  %2024 = lshr i32 %2009, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %33, align 1
  %2026 = lshr i32 %2008, 31
  %2027 = add nuw nsw i32 %2024, %2026
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %39, align 1
  store i64 %2010, i64* %RCX.i528, align 8
  store i8 0, i8* %AL.i503, align 1
  %2030 = add i64 %1992, -176328
  %2031 = add i64 %1992, 42
  %2032 = load i64, i64* %6, align 8
  %2033 = add i64 %2032, -8
  %2034 = inttoptr i64 %2033 to i64*
  store i64 %2031, i64* %2034, align 8
  store i64 %2033, i64* %6, align 8
  store i64 %2030, i64* %3, align 8
  %call2_47ce9d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2030, %struct.Memory* %MEMORY.17)
  %2035 = load i64, i64* %RBP.i, align 8
  %2036 = add i64 %2035, -1056
  %2037 = load i32, i32* %EAX.i851, align 4
  %2038 = load i64, i64* %3, align 8
  %2039 = add i64 %2038, 6
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2036 to i32*
  store i32 %2037, i32* %2040, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_47cea8

block_.L_47cea8:                                  ; preds = %block_.L_47ce78, %block_47ce73
  %2041 = phi i64 [ %.pre70, %block_.L_47ce78 ], [ %1993, %block_47ce73 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_47ce9d, %block_.L_47ce78 ], [ %MEMORY.17, %block_47ce73 ]
  store i64 5, i64* %RAX.i862, align 8
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -1004
  %2044 = add i64 %2041, 15
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  store i32 1, i32* %2045, align 4
  %2046 = load i64, i64* %RBP.i, align 8
  %2047 = add i64 %2046, -992
  %2048 = load i64, i64* %3, align 8
  %2049 = add i64 %2048, 6
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2047 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RDI.i508, align 8
  %2053 = add i64 %2046, -1016
  %2054 = add i64 %2048, 12
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RSI.i505, align 8
  %2058 = load i64, i64* %RAX.i862, align 8
  %2059 = add i64 %2046, -1020
  %2060 = add i64 %2048, 18
  store i64 %2060, i64* %3, align 8
  %2061 = trunc i64 %2058 to i32
  %2062 = inttoptr i64 %2059 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = sub i32 %2061, %2063
  %2065 = zext i32 %2064 to i64
  store i64 %2065, i64* %RAX.i862, align 8
  %2066 = icmp ult i32 %2061, %2063
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %14, align 1
  %2068 = and i32 %2064, 255
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068)
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %21, align 1
  %2073 = xor i32 %2063, %2061
  %2074 = xor i32 %2073, %2064
  %2075 = lshr i32 %2074, 4
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %27, align 1
  %2078 = icmp eq i32 %2064, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %30, align 1
  %2080 = lshr i32 %2064, 31
  %2081 = trunc i32 %2080 to i8
  store i8 %2081, i8* %33, align 1
  %2082 = lshr i32 %2061, 31
  %2083 = lshr i32 %2063, 31
  %2084 = xor i32 %2083, %2082
  %2085 = xor i32 %2080, %2082
  %2086 = add nuw nsw i32 %2085, %2084
  %2087 = icmp eq i32 %2086, 2
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %39, align 1
  store i64 %2065, i64* %RDX.i497, align 8
  %2089 = add i64 %2048, -305559
  %2090 = add i64 %2048, 25
  %2091 = load i64, i64* %6, align 8
  %2092 = add i64 %2091, -8
  %2093 = inttoptr i64 %2092 to i64*
  store i64 %2090, i64* %2093, align 8
  store i64 %2092, i64* %6, align 8
  store i64 %2089, i64* %3, align 8
  %call2_47cecb = tail call %struct.Memory* @sub_432520.add_defense_move(%struct.State* nonnull %0, i64 %2089, %struct.Memory* %MEMORY.18)
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_47ced0

block_.L_47ced0:                                  ; preds = %block_.L_47cea8, %block_.L_47ce1c
  %2094 = phi i64 [ %1941, %block_.L_47ce1c ], [ %.pre71, %block_.L_47cea8 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.15, %block_.L_47ce1c ], [ %call2_47cecb, %block_.L_47cea8 ]
  %2095 = add i64 %2094, 5
  store i64 %2095, i64* %3, align 8
  br label %block_.L_47ced5

block_.L_47ced5:                                  ; preds = %block_47ccec, %block_.L_47ced0
  %2096 = phi i64 [ %1655, %block_47ccec ], [ %2095, %block_.L_47ced0 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.11, %block_47ccec ], [ %MEMORY.19, %block_.L_47ced0 ]
  %2097 = add i64 %2096, 5
  store i64 %2097, i64* %3, align 8
  br label %block_.L_47ceda

block_.L_47ceda:                                  ; preds = %block_47ccca, %block_47cc9e, %block_.L_47ced5
  %2098 = phi i64 [ %1532, %block_47cc9e ], [ %1566, %block_47ccca ], [ %2097, %block_.L_47ced5 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.11, %block_47cc9e ], [ %MEMORY.11, %block_47ccca ], [ %MEMORY.20, %block_.L_47ced5 ]
  %2099 = load i64, i64* %RBP.i, align 8
  %2100 = add i64 %2099, -1016
  %2101 = add i64 %2098, 7
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = sext i32 %2103 to i64
  store i64 %2104, i64* %RAX.i862, align 8
  %2105 = add nsw i64 %2104, 12099168
  %2106 = add i64 %2098, 15
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i8*
  %2108 = load i8, i8* %2107, align 1
  %2109 = zext i8 %2108 to i64
  store i64 %2109, i64* %RCX.i528, align 8
  %2110 = zext i8 %2108 to i32
  %2111 = add i64 %2099, -1000
  %2112 = add i64 %2098, 21
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = sub i32 %2110, %2114
  %2116 = icmp ult i32 %2110, %2114
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %14, align 1
  %2118 = and i32 %2115, 255
  %2119 = tail call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  store i8 %2122, i8* %21, align 1
  %2123 = xor i32 %2114, %2110
  %2124 = xor i32 %2123, %2115
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  store i8 %2127, i8* %27, align 1
  %2128 = icmp eq i32 %2115, 0
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %30, align 1
  %2130 = lshr i32 %2115, 31
  %2131 = trunc i32 %2130 to i8
  store i8 %2131, i8* %33, align 1
  %2132 = lshr i32 %2114, 31
  %2133 = add nuw nsw i32 %2130, %2132
  %2134 = icmp eq i32 %2133, 2
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %39, align 1
  %.v94 = select i1 %2128, i64 27, i64 523
  %2136 = add i64 %2098, %.v94
  store i64 %2136, i64* %3, align 8
  br i1 %2128, label %block_47cef5, label %block_.L_47d0e5

block_47cef5:                                     ; preds = %block_.L_47ceda
  %2137 = add i64 %2099, -992
  %2138 = add i64 %2136, 6
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = zext i32 %2140 to i64
  store i64 %2141, i64* %RDI.i508, align 8
  %2142 = add i64 %2099, -996
  %2143 = add i64 %2136, 13
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i32*
  %2145 = load i32, i32* %2144, align 4
  %2146 = sext i32 %2145 to i64
  store i64 %2146, i64* %RAX.i862, align 8
  %2147 = shl nsw i64 %2146, 2
  %2148 = add i64 %2099, -976
  %2149 = add i64 %2148, %2147
  %2150 = add i64 %2136, 20
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  %2152 = load i32, i32* %2151, align 4
  %2153 = zext i32 %2152 to i64
  store i64 %2153, i64* %RSI.i505, align 8
  %2154 = add i64 %2136, -307653
  %2155 = add i64 %2136, 25
  %2156 = load i64, i64* %6, align 8
  %2157 = add i64 %2156, -8
  %2158 = inttoptr i64 %2157 to i64*
  store i64 %2155, i64* %2158, align 8
  store i64 %2157, i64* %6, align 8
  store i64 %2154, i64* %3, align 8
  %call2_47cf09 = tail call %struct.Memory* @sub_431d30.attack_move_reason_known(%struct.State* nonnull %0, i64 %2154, %struct.Memory* %MEMORY.21)
  %2159 = load i32, i32* %EAX.i851, align 4
  %2160 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2161 = and i32 %2159, 255
  %2162 = tail call i32 @llvm.ctpop.i32(i32 %2161)
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  %2165 = xor i8 %2164, 1
  store i8 %2165, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2166 = icmp eq i32 %2159, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %30, align 1
  %2168 = lshr i32 %2159, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v95 = select i1 %2166, i64 9, i64 471
  %2170 = add i64 %2160, %.v95
  store i64 %2170, i64* %3, align 8
  br i1 %2166, label %block_47cf17, label %block_.L_47d0e5

block_47cf17:                                     ; preds = %block_47cef5
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RSI.i505, align 8
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -1016
  %2173 = add i64 %2170, 10
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RDI.i508, align 8
  %2177 = add i64 %2170, -75671
  %2178 = add i64 %2170, 15
  %2179 = load i64, i64* %6, align 8
  %2180 = add i64 %2179, -8
  %2181 = inttoptr i64 %2180 to i64*
  store i64 %2178, i64* %2181, align 8
  store i64 %2180, i64* %6, align 8
  store i64 %2177, i64* %3, align 8
  %call2_47cf21 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %2177, %struct.Memory* %call2_47cf09)
  %2182 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i505, align 8
  %2183 = load i64, i64* %RBP.i, align 8
  %2184 = add i64 %2183, -1032
  %2185 = load i32, i32* %EAX.i851, align 4
  %2186 = add i64 %2182, 16
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2184 to i32*
  store i32 %2185, i32* %2187, align 4
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -1032
  %2190 = load i64, i64* %3, align 8
  %2191 = add i64 %2190, 6
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2189 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = zext i32 %2193 to i64
  store i64 %2194, i64* %RAX.i862, align 8
  %2195 = add i64 %2188, -1016
  %2196 = add i64 %2190, 13
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  %2198 = load i32, i32* %2197, align 4
  %2199 = sext i32 %2198 to i64
  %2200 = mul nsw i64 %2199, 380
  store i64 %2200, i64* %RCX.i528, align 8
  %2201 = lshr i64 %2200, 63
  %2202 = load i64, i64* %RSI.i505, align 8
  %2203 = add i64 %2200, %2202
  store i64 %2203, i64* %RSI.i505, align 8
  %2204 = icmp ult i64 %2203, %2202
  %2205 = icmp ult i64 %2203, %2200
  %2206 = or i1 %2204, %2205
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %14, align 1
  %2208 = trunc i64 %2203 to i32
  %2209 = and i32 %2208, 255
  %2210 = tail call i32 @llvm.ctpop.i32(i32 %2209)
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = xor i8 %2212, 1
  store i8 %2213, i8* %21, align 1
  %2214 = xor i64 %2200, %2202
  %2215 = xor i64 %2214, %2203
  %2216 = lshr i64 %2215, 4
  %2217 = trunc i64 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %27, align 1
  %2219 = icmp eq i64 %2203, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %30, align 1
  %2221 = lshr i64 %2203, 63
  %2222 = trunc i64 %2221 to i8
  store i8 %2222, i8* %33, align 1
  %2223 = lshr i64 %2202, 63
  %2224 = xor i64 %2221, %2223
  %2225 = xor i64 %2221, %2201
  %2226 = add nuw nsw i64 %2224, %2225
  %2227 = icmp eq i64 %2226, 2
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %39, align 1
  %2229 = add i64 %2203, 180
  %2230 = add i64 %2190, 29
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = sub i32 %2193, %2232
  %2234 = icmp ult i32 %2193, %2232
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %14, align 1
  %2236 = and i32 %2233, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1
  %2241 = xor i32 %2232, %2193
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
  %2250 = lshr i32 %2193, 31
  %2251 = lshr i32 %2232, 31
  %2252 = xor i32 %2251, %2250
  %2253 = xor i32 %2248, %2250
  %2254 = add nuw nsw i32 %2253, %2252
  %2255 = icmp eq i32 %2254, 2
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %39, align 1
  %2257 = icmp ne i8 %2249, 0
  %2258 = xor i1 %2257, %2255
  %.v96 = select i1 %2258, i64 35, i64 426
  %2259 = add i64 %2190, %.v96
  store i64 %2259, i64* %3, align 8
  br i1 %2258, label %block_47cf59, label %block_.L_47d0e0

block_47cf59:                                     ; preds = %block_47cf17
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX.i497, align 8
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i528, align 8
  %2260 = load i64, i64* %RBP.i, align 8
  %2261 = add i64 %2260, -1036
  %2262 = add i64 %2259, 32
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  store i32 1, i32* %2263, align 4
  %2264 = load i64, i64* %RBP.i, align 8
  %2265 = add i64 %2264, -1016
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, 7
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268, align 4
  %2270 = sext i32 %2269 to i64
  %2271 = mul nsw i64 %2270, 380
  store i64 %2271, i64* %RSI.i505, align 8
  %2272 = lshr i64 %2271, 63
  %2273 = load i64, i64* %RCX.i528, align 8
  %2274 = add i64 %2271, %2273
  store i64 %2274, i64* %RCX.i528, align 8
  %2275 = icmp ult i64 %2274, %2273
  %2276 = icmp ult i64 %2274, %2271
  %2277 = or i1 %2275, %2276
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %14, align 1
  %2279 = trunc i64 %2274 to i32
  %2280 = and i32 %2279, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %21, align 1
  %2285 = xor i64 %2271, %2273
  %2286 = xor i64 %2285, %2274
  %2287 = lshr i64 %2286, 4
  %2288 = trunc i64 %2287 to i8
  %2289 = and i8 %2288, 1
  store i8 %2289, i8* %27, align 1
  %2290 = icmp eq i64 %2274, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %30, align 1
  %2292 = lshr i64 %2274, 63
  %2293 = trunc i64 %2292 to i8
  store i8 %2293, i8* %33, align 1
  %2294 = lshr i64 %2273, 63
  %2295 = xor i64 %2292, %2294
  %2296 = xor i64 %2292, %2272
  %2297 = add nuw nsw i64 %2295, %2296
  %2298 = icmp eq i64 %2297, 2
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %39, align 1
  %2300 = add i64 %2274, 140
  %2301 = add i64 %2266, 23
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i32*
  %2303 = load i32, i32* %2302, align 4
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RDI.i508, align 8
  %2305 = add i64 %2264, -1000
  %2306 = add i64 %2266, 29
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RSI.i505, align 8
  %2310 = load i32, i32* %EAX.i851, align 4
  %2311 = zext i32 %2310 to i64
  store i64 %2311, i64* %RCX.i528, align 8
  store i64 %2311, i64* %510, align 8
  store i64 %2311, i64* %511, align 8
  %2312 = add i64 %2266, -475465
  %2313 = add i64 %2266, 42
  %2314 = load i64, i64* %6, align 8
  %2315 = add i64 %2314, -8
  %2316 = inttoptr i64 %2315 to i64*
  store i64 %2313, i64* %2316, align 8
  store i64 %2315, i64* %6, align 8
  store i64 %2312, i64* %3, align 8
  %call2_47cf9e = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %2312, %struct.Memory* %call2_47cf21)
  %2317 = load i32, i32* %EAX.i851, align 4
  %2318 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2319 = and i32 %2317, 255
  %2320 = tail call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  store i8 %2323, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2324 = icmp eq i32 %2317, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %30, align 1
  %2326 = lshr i32 %2317, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v97 = select i1 %2324, i64 132, i64 9
  %2328 = add i64 %2318, %.v97
  store i64 %2328, i64* %3, align 8
  br i1 %2324, label %block_.L_47d027, label %block_47cfac

block_47cfac:                                     ; preds = %block_47cf59
  store i64 0, i64* %RAX.i862, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RSI.i505, align 8
  %2329 = load i64, i64* %RBP.i, align 8
  %2330 = add i64 %2329, -1016
  %2331 = add i64 %2328, 10
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  %2333 = load i32, i32* %2332, align 4
  %2334 = zext i32 %2333 to i64
  store i64 %2334, i64* %RDI.i508, align 8
  %2335 = add i64 %2328, -128108
  %2336 = add i64 %2328, 15
  %2337 = load i64, i64* %6, align 8
  %2338 = add i64 %2337, -8
  %2339 = inttoptr i64 %2338 to i64*
  store i64 %2336, i64* %2339, align 8
  store i64 %2338, i64* %6, align 8
  store i64 %2335, i64* %3, align 8
  %call2_47cfb6 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %2335, %struct.Memory* %call2_47cf9e)
  %2340 = load i64, i64* %3, align 8
  %2341 = load i32, i32* %EAX.i851, align 4
  %2342 = sub i32 5, %2341
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RDI.i508, align 8
  %2344 = icmp ugt i32 %2341, 5
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %14, align 1
  %2346 = and i32 %2342, 255
  %2347 = tail call i32 @llvm.ctpop.i32(i32 %2346)
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = xor i8 %2349, 1
  store i8 %2350, i8* %21, align 1
  %2351 = xor i32 %2342, %2341
  %2352 = lshr i32 %2351, 4
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %27, align 1
  %2355 = icmp eq i32 %2342, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %30, align 1
  %2357 = lshr i32 %2342, 31
  %2358 = trunc i32 %2357 to i8
  store i8 %2358, i8* %33, align 1
  %2359 = lshr i32 %2341, 31
  %2360 = add nuw nsw i32 %2357, %2359
  %2361 = icmp eq i32 %2360, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %39, align 1
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -1040
  %2365 = add i64 %2340, 13
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i32*
  store i32 %2342, i32* %2366, align 4
  %2367 = load i64, i64* %RBP.i, align 8
  %2368 = add i64 %2367, -1040
  %2369 = load i64, i64* %3, align 8
  %2370 = add i64 %2369, 6
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2368 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RAX.i862, align 8
  %2374 = add i64 %2367, -1032
  %2375 = add i64 %2369, 12
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = sub i32 %2372, %2377
  %2379 = icmp ult i32 %2372, %2377
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %14, align 1
  %2381 = and i32 %2378, 255
  %2382 = tail call i32 @llvm.ctpop.i32(i32 %2381)
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = xor i8 %2384, 1
  store i8 %2385, i8* %21, align 1
  %2386 = xor i32 %2377, %2372
  %2387 = xor i32 %2386, %2378
  %2388 = lshr i32 %2387, 4
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  store i8 %2390, i8* %27, align 1
  %2391 = icmp eq i32 %2378, 0
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %30, align 1
  %2393 = lshr i32 %2378, 31
  %2394 = trunc i32 %2393 to i8
  store i8 %2394, i8* %33, align 1
  %2395 = lshr i32 %2372, 31
  %2396 = lshr i32 %2377, 31
  %2397 = xor i32 %2396, %2395
  %2398 = xor i32 %2393, %2395
  %2399 = add nuw nsw i32 %2398, %2397
  %2400 = icmp eq i32 %2399, 2
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %39, align 1
  %2402 = icmp ne i8 %2394, 0
  %2403 = xor i1 %2402, %2400
  %2404 = or i1 %2391, %2403
  %.v98 = select i1 %2404, i64 90, i64 18
  %2405 = add i64 %2369, %.v98
  store i64 %2405, i64* %3, align 8
  br i1 %2404, label %block_.L_47d022, label %block_47cfda

block_47cfda:                                     ; preds = %block_47cfac
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i862, align 8
  %2406 = add i64 %2405, 16
  store i64 %2406, i64* %3, align 8
  %2407 = load i32, i32* %2371, align 4
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RCX.i528, align 8
  %2409 = add i64 %2405, 22
  store i64 %2409, i64* %3, align 8
  store i32 %2407, i32* %2376, align 4
  %2410 = load i64, i64* %RBP.i, align 8
  %2411 = add i64 %2410, -1032
  %2412 = load i64, i64* %3, align 8
  %2413 = add i64 %2412, 6
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2411 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i528, align 8
  %2417 = add i64 %2410, -1016
  %2418 = add i64 %2412, 13
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  %2420 = load i32, i32* %2419, align 4
  %2421 = sext i32 %2420 to i64
  %2422 = mul nsw i64 %2421, 380
  store i64 %2422, i64* %RDX.i497, align 8
  %2423 = lshr i64 %2422, 63
  %2424 = load i64, i64* %RAX.i862, align 8
  %2425 = add i64 %2422, %2424
  store i64 %2425, i64* %RAX.i862, align 8
  %2426 = icmp ult i64 %2425, %2424
  %2427 = icmp ult i64 %2425, %2422
  %2428 = or i1 %2426, %2427
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %14, align 1
  %2430 = trunc i64 %2425 to i32
  %2431 = and i32 %2430, 255
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %21, align 1
  %2436 = xor i64 %2422, %2424
  %2437 = xor i64 %2436, %2425
  %2438 = lshr i64 %2437, 4
  %2439 = trunc i64 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %27, align 1
  %2441 = icmp eq i64 %2425, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %30, align 1
  %2443 = lshr i64 %2425, 63
  %2444 = trunc i64 %2443 to i8
  store i8 %2444, i8* %33, align 1
  %2445 = lshr i64 %2424, 63
  %2446 = xor i64 %2443, %2445
  %2447 = xor i64 %2443, %2423
  %2448 = add nuw nsw i64 %2446, %2447
  %2449 = icmp eq i64 %2448, 2
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %39, align 1
  %2451 = add i64 %2425, 180
  %2452 = add i64 %2412, 29
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = sub i32 %2415, %2454
  %2456 = icmp ult i32 %2415, %2454
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %14, align 1
  %2458 = and i32 %2455, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %21, align 1
  %2463 = xor i32 %2454, %2415
  %2464 = xor i32 %2463, %2455
  %2465 = lshr i32 %2464, 4
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  store i8 %2467, i8* %27, align 1
  %2468 = icmp eq i32 %2455, 0
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %30, align 1
  %2470 = lshr i32 %2455, 31
  %2471 = trunc i32 %2470 to i8
  store i8 %2471, i8* %33, align 1
  %2472 = lshr i32 %2415, 31
  %2473 = lshr i32 %2454, 31
  %2474 = xor i32 %2473, %2472
  %2475 = xor i32 %2470, %2472
  %2476 = add nuw nsw i32 %2475, %2474
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %39, align 1
  %2479 = icmp ne i8 %2471, 0
  %2480 = xor i1 %2479, %2477
  %.v99 = select i1 %2480, i64 45, i64 35
  %2481 = add i64 %2412, %.v99
  store i64 %2481, i64* %3, align 8
  br i1 %2480, label %block_.L_47d01d, label %block_47d013

block_47d013:                                     ; preds = %block_47cfda
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -1036
  %2484 = add i64 %2481, 10
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  store i32 0, i32* %2485, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_47d01d

block_.L_47d01d:                                  ; preds = %block_47d013, %block_47cfda
  %2486 = phi i64 [ %.pre72, %block_47d013 ], [ %2481, %block_47cfda ]
  %2487 = add i64 %2486, 5
  store i64 %2487, i64* %3, align 8
  br label %block_.L_47d022

block_.L_47d022:                                  ; preds = %block_.L_47d01d, %block_47cfac
  %2488 = phi i64 [ %2487, %block_.L_47d01d ], [ %2405, %block_47cfac ]
  %2489 = add i64 %2488, -455362
  %2490 = add i64 %2488, 5
  %2491 = load i64, i64* %6, align 8
  %2492 = add i64 %2491, -8
  %2493 = inttoptr i64 %2492 to i64*
  store i64 %2490, i64* %2493, align 8
  store i64 %2492, i64* %6, align 8
  store i64 %2489, i64* %3, align 8
  %call2_47d022 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2489, %struct.Memory* %call2_47cfb6)
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_47d027

block_.L_47d027:                                  ; preds = %block_.L_47d022, %block_47cf59
  %2494 = phi i64 [ %2328, %block_47cf59 ], [ %.pre73, %block_.L_47d022 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_47cf9e, %block_47cf59 ], [ %call2_47d022, %block_.L_47d022 ]
  %2495 = load i64, i64* %RBP.i, align 8
  %2496 = add i64 %2495, -1036
  %2497 = add i64 %2494, 7
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  store i8 0, i8* %14, align 1
  %2500 = and i32 %2499, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2505 = icmp eq i32 %2499, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %30, align 1
  %2507 = lshr i32 %2499, 31
  %2508 = trunc i32 %2507 to i8
  store i8 %2508, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v100 = select i1 %2505, i64 180, i64 13
  %2509 = add i64 %2494, %.v100
  store i64 %2509, i64* %3, align 8
  br i1 %2505, label %block_.L_47d0db, label %block_47d034

block_47d034:                                     ; preds = %block_.L_47d027
  %2510 = add i64 %2495, -1004
  %2511 = add i64 %2509, 7
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  store i8 0, i8* %14, align 1
  %2514 = and i32 %2513, 255
  %2515 = tail call i32 @llvm.ctpop.i32(i32 %2514)
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  store i8 %2518, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2519 = icmp eq i32 %2513, 0
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %30, align 1
  %2521 = lshr i32 %2513, 31
  %2522 = trunc i32 %2521 to i8
  store i8 %2522, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v101 = select i1 %2519, i64 13, i64 60
  %2523 = add i64 %2509, %.v101
  store i64 %2523, i64* %3, align 8
  br i1 %2519, label %block_47d041, label %block_.L_47d070

block_47d041:                                     ; preds = %block_47d034
  %2524 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2525 = and i32 %2524, 255
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2530 = icmp eq i32 %2524, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %30, align 1
  %2532 = lshr i32 %2524, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v103 = select i1 %2530, i64 14, i64 19
  %2534 = add i64 %2523, %.v103
  store i64 %2534, i64* %3, align 8
  br i1 %2530, label %block_47d04f, label %block_.L_47d054

block_47d04f:                                     ; preds = %block_47d041
  %2535 = add i64 %2534, 28
  store i64 %2535, i64* %3, align 8
  br label %block_.L_47d06b

block_.L_47d054:                                  ; preds = %block_47d041
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i508, align 8
  store i8 0, i8* %AL.i503, align 1
  %2536 = add i64 %2534, -176804
  %2537 = add i64 %2534, 17
  %2538 = load i64, i64* %6, align 8
  %2539 = add i64 %2538, -8
  %2540 = inttoptr i64 %2539 to i64*
  store i64 %2537, i64* %2540, align 8
  store i64 %2539, i64* %6, align 8
  store i64 %2536, i64* %3, align 8
  %call2_47d060 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2536, %struct.Memory* %MEMORY.24)
  %2541 = load i64, i64* %RBP.i, align 8
  %2542 = add i64 %2541, -1060
  %2543 = load i32, i32* %EAX.i851, align 4
  %2544 = load i64, i64* %3, align 8
  %2545 = add i64 %2544, 6
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2542 to i32*
  store i32 %2543, i32* %2546, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_47d06b

block_.L_47d06b:                                  ; preds = %block_.L_47d054, %block_47d04f
  %2547 = phi i64 [ %.pre74, %block_.L_47d054 ], [ %2535, %block_47d04f ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_47d060, %block_.L_47d054 ], [ %MEMORY.24, %block_47d04f ]
  %2548 = add i64 %2547, 5
  store i64 %2548, i64* %3, align 8
  br label %block_.L_47d070

block_.L_47d070:                                  ; preds = %block_47d034, %block_.L_47d06b
  %2549 = phi i64 [ %2523, %block_47d034 ], [ %2548, %block_.L_47d06b ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.24, %block_47d034 ], [ %MEMORY.25, %block_.L_47d06b ]
  %2550 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2551 = and i32 %2550, 255
  %2552 = tail call i32 @llvm.ctpop.i32(i32 %2551)
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = xor i8 %2554, 1
  store i8 %2555, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2556 = icmp eq i32 %2550, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %30, align 1
  %2558 = lshr i32 %2550, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v102 = select i1 %2556, i64 14, i64 19
  %2560 = add i64 %2549, %.v102
  store i64 %2560, i64* %3, align 8
  br i1 %2556, label %block_47d07e, label %block_.L_47d083

block_47d07e:                                     ; preds = %block_.L_47d070
  %2561 = add i64 %2560, 53
  store i64 %2561, i64* %3, align 8
  br label %block_.L_47d0b3

block_.L_47d083:                                  ; preds = %block_.L_47d070
  store i64 ptrtoint (%G__0x582e06_type* @G__0x582e06 to i64), i64* %RDI.i508, align 8
  store i64 5, i64* %RAX.i862, align 8
  %2562 = load i64, i64* %RBP.i, align 8
  %2563 = add i64 %2562, -1016
  %2564 = add i64 %2560, 21
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RSI.i505, align 8
  %2568 = add i64 %2562, -992
  %2569 = add i64 %2560, 27
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i32*
  %2571 = load i32, i32* %2570, align 4
  %2572 = zext i32 %2571 to i64
  store i64 %2572, i64* %RDX.i497, align 8
  %2573 = add i64 %2562, -1032
  %2574 = add i64 %2560, 33
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = sub i32 5, %2576
  %2578 = zext i32 %2577 to i64
  store i64 %2578, i64* %RAX.i862, align 8
  %2579 = icmp ugt i32 %2576, 5
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %14, align 1
  %2581 = and i32 %2577, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %21, align 1
  %2586 = xor i32 %2576, %2577
  %2587 = lshr i32 %2586, 4
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  store i8 %2589, i8* %27, align 1
  %2590 = icmp eq i32 %2577, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %30, align 1
  %2592 = lshr i32 %2577, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %33, align 1
  %2594 = lshr i32 %2576, 31
  %2595 = add nuw nsw i32 %2592, %2594
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %39, align 1
  store i64 %2578, i64* %RCX.i528, align 8
  store i8 0, i8* %AL.i503, align 1
  %2598 = add i64 %2560, -176851
  %2599 = add i64 %2560, 42
  %2600 = load i64, i64* %6, align 8
  %2601 = add i64 %2600, -8
  %2602 = inttoptr i64 %2601 to i64*
  store i64 %2599, i64* %2602, align 8
  store i64 %2601, i64* %6, align 8
  store i64 %2598, i64* %3, align 8
  %call2_47d0a8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2598, %struct.Memory* %MEMORY.26)
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -1064
  %2605 = load i32, i32* %EAX.i851, align 4
  %2606 = load i64, i64* %3, align 8
  %2607 = add i64 %2606, 6
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2604 to i32*
  store i32 %2605, i32* %2608, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_47d0b3

block_.L_47d0b3:                                  ; preds = %block_.L_47d083, %block_47d07e
  %2609 = phi i64 [ %.pre75, %block_.L_47d083 ], [ %2561, %block_47d07e ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_47d0a8, %block_.L_47d083 ], [ %MEMORY.26, %block_47d07e ]
  store i64 5, i64* %RAX.i862, align 8
  %2610 = load i64, i64* %RBP.i, align 8
  %2611 = add i64 %2610, -1004
  %2612 = add i64 %2609, 15
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  store i32 1, i32* %2613, align 4
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -992
  %2616 = load i64, i64* %3, align 8
  %2617 = add i64 %2616, 6
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618, align 4
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RDI.i508, align 8
  %2621 = add i64 %2614, -1016
  %2622 = add i64 %2616, 12
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2621 to i32*
  %2624 = load i32, i32* %2623, align 4
  %2625 = zext i32 %2624 to i64
  store i64 %2625, i64* %RSI.i505, align 8
  %2626 = load i64, i64* %RAX.i862, align 8
  %2627 = add i64 %2614, -1032
  %2628 = add i64 %2616, 18
  store i64 %2628, i64* %3, align 8
  %2629 = trunc i64 %2626 to i32
  %2630 = inttoptr i64 %2627 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = sub i32 %2629, %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RAX.i862, align 8
  %2634 = icmp ult i32 %2629, %2631
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %14, align 1
  %2636 = and i32 %2632, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %21, align 1
  %2641 = xor i32 %2631, %2629
  %2642 = xor i32 %2641, %2632
  %2643 = lshr i32 %2642, 4
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  store i8 %2645, i8* %27, align 1
  %2646 = icmp eq i32 %2632, 0
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %30, align 1
  %2648 = lshr i32 %2632, 31
  %2649 = trunc i32 %2648 to i8
  store i8 %2649, i8* %33, align 1
  %2650 = lshr i32 %2629, 31
  %2651 = lshr i32 %2631, 31
  %2652 = xor i32 %2651, %2650
  %2653 = xor i32 %2648, %2650
  %2654 = add nuw nsw i32 %2653, %2652
  %2655 = icmp eq i32 %2654, 2
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %39, align 1
  store i64 %2633, i64* %RDX.i497, align 8
  %2657 = add i64 %2616, -307106
  %2658 = add i64 %2616, 25
  %2659 = load i64, i64* %6, align 8
  %2660 = add i64 %2659, -8
  %2661 = inttoptr i64 %2660 to i64*
  store i64 %2658, i64* %2661, align 8
  store i64 %2660, i64* %6, align 8
  store i64 %2657, i64* %3, align 8
  %call2_47d0d6 = tail call %struct.Memory* @sub_432120.add_attack_move(%struct.State* nonnull %0, i64 %2657, %struct.Memory* %MEMORY.27)
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_47d0db

block_.L_47d0db:                                  ; preds = %block_.L_47d0b3, %block_.L_47d027
  %2662 = phi i64 [ %2509, %block_.L_47d027 ], [ %.pre76, %block_.L_47d0b3 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.24, %block_.L_47d027 ], [ %call2_47d0d6, %block_.L_47d0b3 ]
  %2663 = add i64 %2662, 5
  store i64 %2663, i64* %3, align 8
  br label %block_.L_47d0e0

block_.L_47d0e0:                                  ; preds = %block_47cf17, %block_.L_47d0db
  %2664 = phi i64 [ %2259, %block_47cf17 ], [ %2663, %block_.L_47d0db ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_47cf21, %block_47cf17 ], [ %MEMORY.28, %block_.L_47d0db ]
  %2665 = add i64 %2664, 5
  store i64 %2665, i64* %3, align 8
  br label %block_.L_47d0e5

block_.L_47d0e5:                                  ; preds = %block_47cef5, %block_.L_47ceda, %block_.L_47d0e0
  %2666 = phi i64 [ %2136, %block_.L_47ceda ], [ %2170, %block_47cef5 ], [ %2665, %block_.L_47d0e0 ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.21, %block_.L_47ceda ], [ %call2_47cf09, %block_47cef5 ], [ %MEMORY.29, %block_.L_47d0e0 ]
  %2667 = load i64, i64* %RBP.i, align 8
  %2668 = add i64 %2667, -996
  %2669 = add i64 %2666, 11
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i32*
  %2671 = load i32, i32* %2670, align 4
  %2672 = add i32 %2671, 1
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i862, align 8
  %2674 = icmp eq i32 %2671, -1
  %2675 = icmp eq i32 %2672, 0
  %2676 = or i1 %2674, %2675
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %14, align 1
  %2678 = and i32 %2672, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  %2683 = xor i32 %2672, %2671
  %2684 = lshr i32 %2683, 4
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  store i8 %2686, i8* %27, align 1
  %2687 = zext i1 %2675 to i8
  store i8 %2687, i8* %30, align 1
  %2688 = lshr i32 %2672, 31
  %2689 = trunc i32 %2688 to i8
  store i8 %2689, i8* %33, align 1
  %2690 = lshr i32 %2671, 31
  %2691 = xor i32 %2688, %2690
  %2692 = add nuw nsw i32 %2691, %2688
  %2693 = icmp eq i32 %2692, 2
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %39, align 1
  %2695 = add i64 %2666, 20
  store i64 %2695, i64* %3, align 8
  store i32 %2672, i32* %2670, align 4
  %2696 = load i64, i64* %3, align 8
  %2697 = add i64 %2696, -1133
  store i64 %2697, i64* %3, align 8
  br label %block_.L_47cc8c

block_.L_47d0fe:                                  ; preds = %block_.L_47cc8c
  %2698 = add i64 %1480, -455582
  %2699 = add i64 %1480, 5
  %2700 = load i64, i64* %6, align 8
  %2701 = add i64 %2700, -8
  %2702 = inttoptr i64 %2701 to i64*
  store i64 %2699, i64* %2702, align 8
  store i64 %2701, i64* %6, align 8
  store i64 %2698, i64* %3, align 8
  %call2_47d0fe = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2698, %struct.Memory* %MEMORY.11)
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_47d103

block_.L_47d103:                                  ; preds = %block_.L_47d0fe, %block_.L_47cc57
  %2703 = phi i64 [ %1438, %block_.L_47cc57 ], [ %.pre77, %block_.L_47d0fe ]
  %MEMORY.31 = phi %struct.Memory* [ %call2_47cc74, %block_.L_47cc57 ], [ %call2_47d0fe, %block_.L_47d0fe ]
  %2704 = add i64 %2703, 5
  store i64 %2704, i64* %3, align 8
  br label %block_.L_47d108

block_.L_47d108:                                  ; preds = %block_.L_47d103, %block_.L_47cc18
  %storemerge = phi i64 [ %1375, %block_.L_47cc18 ], [ %2704, %block_.L_47d103 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.5, %block_.L_47cc18 ], [ %MEMORY.31, %block_.L_47d103 ]
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -988
  %2707 = add i64 %storemerge, 6
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = add i32 %2709, 1
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RAX.i862, align 8
  %2712 = icmp eq i32 %2709, -1
  %2713 = icmp eq i32 %2710, 0
  %2714 = or i1 %2712, %2713
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %14, align 1
  %2716 = and i32 %2710, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %21, align 1
  %2721 = xor i32 %2710, %2709
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  store i8 %2724, i8* %27, align 1
  %2725 = zext i1 %2713 to i8
  store i8 %2725, i8* %30, align 1
  %2726 = lshr i32 %2710, 31
  %2727 = trunc i32 %2726 to i8
  store i8 %2727, i8* %33, align 1
  %2728 = lshr i32 %2709, 31
  %2729 = xor i32 %2726, %2728
  %2730 = add nuw nsw i32 %2729, %2726
  %2731 = icmp eq i32 %2730, 2
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %39, align 1
  %2733 = add i64 %storemerge, 15
  store i64 %2733, i64* %3, align 8
  store i32 %2710, i32* %2708, align 4
  %2734 = load i64, i64* %3, align 8
  %2735 = add i64 %2734, -1783
  store i64 %2735, i64* %3, align 8
  br label %block_.L_47ca20

block_.L_47d11c:                                  ; preds = %block_.L_47ca20
  %2736 = add i64 %584, 11
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %585 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = add i32 %2738, 1
  %2740 = zext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i862, align 8
  %2741 = icmp eq i32 %2738, -1
  %2742 = icmp eq i32 %2739, 0
  %2743 = or i1 %2741, %2742
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %14, align 1
  %2745 = and i32 %2739, 255
  %2746 = tail call i32 @llvm.ctpop.i32(i32 %2745)
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  store i8 %2749, i8* %21, align 1
  %2750 = xor i32 %2739, %2738
  %2751 = lshr i32 %2750, 4
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  store i8 %2753, i8* %27, align 1
  %2754 = zext i1 %2742 to i8
  store i8 %2754, i8* %30, align 1
  %2755 = lshr i32 %2739, 31
  %2756 = trunc i32 %2755 to i8
  store i8 %2756, i8* %33, align 1
  %2757 = lshr i32 %2738, 31
  %2758 = xor i32 %2755, %2757
  %2759 = add nuw nsw i32 %2758, %2755
  %2760 = icmp eq i32 %2759, 2
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %39, align 1
  %2762 = add i64 %584, 20
  store i64 %2762, i64* %3, align 8
  store i32 %2739, i32* %2737, align 4
  %2763 = load i64, i64* %3, align 8
  %2764 = add i64 %2763, -1837
  store i64 %2764, i64* %3, align 8
  br label %block_.L_47ca03

block_.L_47d135:                                  ; preds = %block_.L_47ca03
  %2765 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2766 = and i32 %2765, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2771 = icmp eq i32 %2765, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %30, align 1
  %2773 = lshr i32 %2765, 31
  %2774 = trunc i32 %2773 to i8
  store i8 %2774, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v86 = select i1 %2771, i64 14, i64 19
  %2775 = add i64 %546, %.v86
  store i64 %2775, i64* %3, align 8
  br i1 %2771, label %block_47d143, label %block_.L_47d148

block_47d143:                                     ; preds = %block_.L_47d135
  %2776 = add i64 %2775, 28
  store i64 %2776, i64* %3, align 8
  br label %block_.L_47d15f

block_.L_47d148:                                  ; preds = %block_.L_47d135
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i508, align 8
  store i8 0, i8* %AL.i503, align 1
  %2777 = add i64 %2775, -177048
  %2778 = add i64 %2775, 17
  %2779 = load i64, i64* %6, align 8
  %2780 = add i64 %2779, -8
  %2781 = inttoptr i64 %2780 to i64*
  store i64 %2778, i64* %2781, align 8
  store i64 %2780, i64* %6, align 8
  store i64 %2777, i64* %3, align 8
  %call2_47d154 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2777, %struct.Memory* %MEMORY.4)
  %2782 = load i64, i64* %RBP.i, align 8
  %2783 = add i64 %2782, -1068
  %2784 = load i32, i32* %EAX.i851, align 4
  %2785 = load i64, i64* %3, align 8
  %2786 = add i64 %2785, 6
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2783 to i32*
  store i32 %2784, i32* %2787, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_47d15f

block_.L_47d15f:                                  ; preds = %block_.L_47d148, %block_47d143
  %2788 = phi i64 [ %.pre61, %block_.L_47d148 ], [ %2776, %block_47d143 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_47d154, %block_.L_47d148 ], [ %MEMORY.4, %block_47d143 ]
  %2789 = add i64 %2788, -23711
  %2790 = add i64 %2788, 5
  %2791 = load i64, i64* %6, align 8
  %2792 = add i64 %2791, -8
  %2793 = inttoptr i64 %2792 to i64*
  store i64 %2790, i64* %2793, align 8
  store i64 %2792, i64* %6, align 8
  store i64 %2789, i64* %3, align 8
  %call2_47d15f = tail call %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* nonnull %0, i64 %2789, %struct.Memory* %MEMORY.33)
  %2794 = load i64, i64* %6, align 8
  %2795 = load i64, i64* %3, align 8
  %2796 = add i64 %2794, 1072
  store i64 %2796, i64* %6, align 8
  %2797 = icmp ugt i64 %2794, -1073
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %14, align 1
  %2799 = trunc i64 %2796 to i32
  %2800 = and i32 %2799, 255
  %2801 = tail call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  store i8 %2804, i8* %21, align 1
  %2805 = xor i64 %2794, 16
  %2806 = xor i64 %2805, %2796
  %2807 = lshr i64 %2806, 4
  %2808 = trunc i64 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %27, align 1
  %2810 = icmp eq i64 %2796, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %30, align 1
  %2812 = lshr i64 %2796, 63
  %2813 = trunc i64 %2812 to i8
  store i8 %2813, i8* %33, align 1
  %2814 = lshr i64 %2794, 63
  %2815 = xor i64 %2812, %2814
  %2816 = add nuw nsw i64 %2815, %2812
  %2817 = icmp eq i64 %2816, 2
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %39, align 1
  %2819 = add i64 %2795, 8
  store i64 %2819, i64* %3, align 8
  %2820 = add i64 %2794, 1080
  %2821 = inttoptr i64 %2796 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RBP.i, align 8
  store i64 %2820, i64* %6, align 8
  %2823 = add i64 %2795, 9
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2820 to i64*
  %2825 = load i64, i64* %2824, align 8
  store i64 %2825, i64* %3, align 8
  %2826 = add i64 %2794, 1088
  store i64 %2826, i64* %6, align 8
  ret %struct.Memory* %call2_47d15f
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
define %struct.Memory* @routine_subq__0x430___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1072
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1072
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -980
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1000
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_47c8a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47c8c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582d8c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582d8c_type* @G__0x582d8c to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1044
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
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
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_47c9f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -988
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -988
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
define %struct.Memory* @routine_jge_.L_47c9db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x3d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
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
define %struct.Memory* @routine_addl_MINUS0x3dc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -992
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
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
define %struct.Memory* @routine_je_.L_47c9c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3e0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -992
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
define %struct.Memory* @routine_jne_.L_47c9c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
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
define %struct.Memory* @routine_movslq_MINUS0x3d4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -980
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
define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -976
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -980
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
define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -980
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c9c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c8e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -984
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c8ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_47d135(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47d11c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x78__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_47cbde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
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
define %struct.Memory* @routine_movl__edx__MINUS0x3f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1008
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
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
define %struct.Memory* @routine_jge_.L_47ca9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cbde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
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
define %struct.Memory* @routine_movl__esi__MINUS0x3f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1012
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_47cbc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -16
  %9 = icmp ult i32 %7, 16
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
define %struct.Memory* @routine_jne_.L_47cbc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cbca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
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
define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -996
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ca53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47cc18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__0x48__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 72
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47cc1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d108(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47cc3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cc57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c2fd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c2fd_type* @G__0x57c2fd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
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
define %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581d46___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
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
define %struct.Memory* @routine_je_.L_47d103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x3d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -980
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
define %struct.Memory* @routine_jge_.L_47d0fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
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
define %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -976
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x3f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1016
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_jne_.L_47ceda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -976
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.defense_move_reason_known(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1020
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1020
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
define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_jge_.L_47ced5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x3c__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3e8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
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
define %struct.Memory* @routine_je_.L_47ce1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jne_.L_47cd9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ce17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1028
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x404__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1028
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
define %struct.Memory* @routine_cmpl_MINUS0x3fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1020
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
define %struct.Memory* @routine_jle_.L_47ce12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x404__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1028
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1020
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3fc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1020
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
define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_jl_.L_47ce0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ce12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
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
define %struct.Memory* @routine_je_.L_47ced0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
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
define %struct.Memory* @routine_jne_.L_47ce65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47ce49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ce60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ce65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47ce78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47cea8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582dd0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582dd0_type* @G__0x582dd0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
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
define %struct.Memory* @routine_subl_MINUS0x3fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1020
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
define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1056
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x3ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_callq_.add_defense_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ced5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ceda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3e8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1000
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
define %struct.Memory* @routine_callq_.attack_move_reason_known(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1032
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1032
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
define %struct.Memory* @routine_jge_.L_47d0e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x40c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1036
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8c__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_47d027(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edi__MINUS0x410__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1040
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
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
define %struct.Memory* @routine_cmpl_MINUS0x408__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1032
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
define %struct.Memory* @routine_jle_.L_47d022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x410__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
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
define %struct.Memory* @routine_movl__ecx__MINUS0x408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1032
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x408__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1032
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
define %struct.Memory* @routine_jl_.L_47d01d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x40c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1036
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1036
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
define %struct.Memory* @routine_je_.L_47d0db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47d054(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d06b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1060
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d083(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d0b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582e06___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582e06_type* @G__0x582e06 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x408__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1032
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
define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1064
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.add_attack_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d0e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d0e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d0ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47cc8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ca20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47d121(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ca03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47d148(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47d15f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1068
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x430___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1072
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1073
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
