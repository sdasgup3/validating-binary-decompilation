; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x582e3b_type = type <{ [8 x i8] }>
%G__0x582f5f_type = type <{ [8 x i8] }>
%G__0x58312b_type = type <{ [8 x i8] }>
%G__0x583146_type = type <{ [8 x i8] }>
%G__0x58316a_type = type <{ [8 x i8] }>
%G__0x583186_type = type <{ [8 x i8] }>
%G__0x5831aa_type = type <{ [8 x i8] }>
%G__0xae4250_type = type <{ [8 x i8] }>
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
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x582e3b = global %G__0x582e3b_type zeroinitializer
@G__0x582f5f = global %G__0x582f5f_type zeroinitializer
@G__0x58312b = global %G__0x58312b_type zeroinitializer
@G__0x583146 = global %G__0x583146_type zeroinitializer
@G__0x58316a = global %G__0x58316a_type zeroinitializer
@G__0x583186 = global %G__0x583186_type zeroinitializer
@G__0x5831aa = global %G__0x5831aa_type zeroinitializer
@G__0xae4250 = global %G__0xae4250_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488740.change_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4898c0.find_attack_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488800.change_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_489900.find_defense_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_489940.attack_move_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4899a0.defense_move_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @find_worm_attacks_and_defenses(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 21, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i788 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %RCX.i786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI.i770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSI.i767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %EAX.i764 = bitcast %union.anon* %42 to i32*
  %AL.i752 = bitcast %union.anon* %42 to i8*
  %RDX.i734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4879cf

block_.L_4879cf:                                  ; preds = %block_.L_487b51, %entry
  %43 = phi i64 [ %.pre, %entry ], [ %554, %block_.L_487b51 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.7, %block_.L_487b51 ]
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -4
  %46 = add i64 %43, 7
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, -400
  %50 = icmp ult i32 %48, 400
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %14, align 1
  %52 = and i32 %49, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52)
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %21, align 1
  %57 = xor i32 %48, 16
  %58 = xor i32 %57, %49
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %26, align 1
  %62 = icmp eq i32 %49, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %29, align 1
  %64 = lshr i32 %49, 31
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %32, align 1
  %66 = lshr i32 %48, 31
  %67 = xor i32 %64, %66
  %68 = add nuw nsw i32 %67, %66
  %69 = icmp eq i32 %68, 2
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %38, align 1
  %71 = icmp ne i8 %65, 0
  %72 = xor i1 %71, %69
  %.v = select i1 %72, i64 13, i64 400
  %73 = add i64 %43, %.v
  store i64 %73, i64* %3, align 8
  br i1 %72, label %block_4879dc, label %block_.L_487b5f

block_4879dc:                                     ; preds = %block_.L_4879cf
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = load i32, i32* %47, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %RAX.i788, align 8
  %77 = add nsw i64 %76, 12099168
  %78 = add i64 %73, 12
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i8*
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i64
  store i64 %81, i64* %RCX.i786, align 8
  %82 = zext i8 %80 to i32
  %83 = add nsw i32 %82, -1
  %84 = icmp eq i8 %80, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %14, align 1
  %86 = and i32 %83, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1
  %91 = xor i32 %83, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %26, align 1
  %95 = icmp eq i32 %83, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %29, align 1
  %97 = lshr i32 %83, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v115 = select i1 %95, i64 42, i64 21
  %99 = add i64 %73, %.v115
  store i64 %99, i64* %3, align 8
  br i1 %95, label %block_.L_487a06, label %block_4879f1

block_4879f1:                                     ; preds = %block_4879dc
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = load i32, i32* %47, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %RAX.i788, align 8
  %103 = add nsw i64 %102, 12099168
  %104 = add i64 %99, 12
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  store i64 %107, i64* %RCX.i786, align 8
  %108 = zext i8 %106 to i32
  %109 = add nsw i32 %108, -2
  %110 = icmp ult i8 %106, 2
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %109, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %26, align 1
  %121 = icmp eq i32 %109, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %29, align 1
  %123 = lshr i32 %109, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v116 = select i1 %121, i64 21, i64 41
  %125 = add i64 %99, %.v116
  store i64 %125, i64* %3, align 8
  br i1 %121, label %block_.L_487a06, label %block_.L_487a1a

block_.L_487a06:                                  ; preds = %block_4879f1, %block_4879dc
  %126 = phi i64 [ %125, %block_4879f1 ], [ %99, %block_4879dc ]
  %127 = add i64 %126, 3
  store i64 %127, i64* %3, align 8
  %128 = load i32, i32* %47, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RDI.i770, align 8
  %130 = add i64 %126, 6
  store i64 %130, i64* %3, align 8
  %131 = load i32, i32* %47, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RSI.i767, align 8
  %133 = add i64 %126, 1770
  %134 = add i64 %126, 11
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %6, align 8
  store i64 %133, i64* %3, align 8
  %call2_487a0c = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %133, %struct.Memory* %MEMORY.0)
  %138 = load i32, i32* %EAX.i764, align 4
  %139 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %140 = and i32 %138, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %145 = icmp eq i32 %138, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %29, align 1
  %147 = lshr i32 %138, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v117 = select i1 %145, i64 9, i64 14
  %149 = add i64 %139, %.v117
  store i64 %149, i64* %3, align 8
  br i1 %145, label %block_.L_487a1a, label %block_.L_487a1f

block_.L_487a1a:                                  ; preds = %block_.L_487a06, %block_4879f1
  %150 = phi i64 [ %149, %block_.L_487a06 ], [ %125, %block_4879f1 ]
  %151 = add i64 %150, 311
  br label %block_.L_487b51

block_.L_487a1f:                                  ; preds = %block_.L_487a06
  %152 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %153 = and i32 %152, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %158 = icmp eq i32 %152, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %29, align 1
  %160 = lshr i32 %152, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v118 = select i1 %158, i64 14, i64 19
  %162 = add i64 %149, %.v118
  store i64 %162, i64* %3, align 8
  br i1 %158, label %block_487a2d, label %block_.L_487a32

block_487a2d:                                     ; preds = %block_.L_487a1f
  %163 = add i64 %162, 28
  store i64 %163, i64* %3, align 8
  br label %block_.L_487a49

block_.L_487a32:                                  ; preds = %block_.L_487a1f
  store i64 ptrtoint (%G__0x58312b_type* @G__0x58312b to i64), i64* %RDI.i770, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -4
  %166 = add i64 %162, 13
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RSI.i767, align 8
  store i8 0, i8* %AL.i752, align 1
  %170 = add i64 %162, -220290
  %171 = add i64 %162, 20
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %6, align 8
  store i64 %170, i64* %3, align 8
  %call2_487a41 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %170, %struct.Memory* %MEMORY.0)
  %175 = load i64, i64* %RBP.i, align 8
  %176 = add i64 %175, -48
  %177 = load i32, i32* %EAX.i764, align 4
  %178 = load i64, i64* %3, align 8
  %179 = add i64 %178, 3
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %176 to i32*
  store i32 %177, i32* %180, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_487a49

block_.L_487a49:                                  ; preds = %block_.L_487a32, %block_487a2d
  %181 = phi i64 [ %.pre74, %block_.L_487a32 ], [ %163, %block_487a2d ]
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -8
  %184 = add i64 %181, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  store i32 0, i32* %185, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_487a50

block_.L_487a50:                                  ; preds = %block_487a5a, %block_.L_487a49
  %186 = phi i64 [ %425, %block_487a5a ], [ %.pre75, %block_.L_487a49 ]
  %187 = load i64, i64* %RBP.i, align 8
  %188 = add i64 %187, -8
  %189 = add i64 %186, 4
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, -10
  %193 = icmp ult i32 %191, 10
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %14, align 1
  %195 = and i32 %192, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %21, align 1
  %200 = xor i32 %192, %191
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %26, align 1
  %204 = icmp eq i32 %192, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %29, align 1
  %206 = lshr i32 %192, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %32, align 1
  %208 = lshr i32 %191, 31
  %209 = xor i32 %206, %208
  %210 = add nuw nsw i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %38, align 1
  %213 = icmp ne i8 %207, 0
  %214 = xor i1 %213, %211
  %.v119 = select i1 %214, i64 10, i64 153
  %215 = add i64 %186, %.v119
  store i64 %215, i64* %3, align 8
  br i1 %214, label %block_487a5a, label %block_.L_487ae9

block_487a5a:                                     ; preds = %block_.L_487a50
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i788, align 8
  %216 = add i64 %187, -4
  %217 = add i64 %215, 14
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %220, 380
  store i64 %221, i64* %RCX.i786, align 8
  %222 = lshr i64 %221, 63
  %223 = add i64 %221, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %223, i64* %RDX.i734, align 8
  %224 = icmp ult i64 %223, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %225 = icmp ult i64 %223, %221
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %14, align 1
  %228 = trunc i64 %223 to i32
  %229 = and i32 %228, 252
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %21, align 1
  %234 = xor i64 %221, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %235 = xor i64 %234, %223
  %236 = lshr i64 %235, 4
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %26, align 1
  %239 = icmp eq i64 %223, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %29, align 1
  %241 = lshr i64 %223, 63
  %242 = trunc i64 %241 to i8
  store i8 %242, i8* %32, align 1
  %243 = xor i64 %241, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %244 = xor i64 %241, %222
  %245 = add nuw nsw i64 %243, %244
  %246 = icmp eq i64 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %38, align 1
  %248 = add i64 %215, 31
  store i64 %248, i64* %3, align 8
  %249 = load i32, i32* %190, align 4
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RCX.i786, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add i64 %221, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %253 = add i64 %252, %251
  %254 = add i64 %215, 39
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  store i32 0, i32* %255, align 4
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -4
  %258 = load i64, i64* %3, align 8
  %259 = add i64 %258, 4
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %262, 380
  store i64 %263, i64* %RCX.i786, align 8
  %264 = lshr i64 %263, 63
  %265 = load i64, i64* %RAX.i788, align 8
  %266 = add i64 %263, %265
  store i64 %266, i64* %RDX.i734, align 8
  %267 = icmp ult i64 %266, %265
  %268 = icmp ult i64 %266, %263
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %14, align 1
  %271 = trunc i64 %266 to i32
  %272 = and i32 %271, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i64 %263, %265
  %278 = xor i64 %277, %266
  %279 = lshr i64 %278, 4
  %280 = trunc i64 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %26, align 1
  %282 = icmp eq i64 %266, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %29, align 1
  %284 = lshr i64 %266, 63
  %285 = trunc i64 %284 to i8
  store i8 %285, i8* %32, align 1
  %286 = lshr i64 %265, 63
  %287 = xor i64 %284, %286
  %288 = xor i64 %284, %264
  %289 = add nuw nsw i64 %287, %288
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %38, align 1
  %292 = add i64 %256, -8
  %293 = add i64 %258, 21
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX.i786, align 8
  %297 = shl nsw i64 %296, 2
  %298 = add i64 %266, 60
  %299 = add i64 %298, %297
  %300 = add i64 %258, 29
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 0, i32* %301, align 4
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -4
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, 4
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = mul nsw i64 %308, 380
  store i64 %309, i64* %RCX.i786, align 8
  %310 = lshr i64 %309, 63
  %311 = load i64, i64* %RAX.i788, align 8
  %312 = add i64 %309, %311
  store i64 %312, i64* %RDX.i734, align 8
  %313 = icmp ult i64 %312, %311
  %314 = icmp ult i64 %312, %309
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %14, align 1
  %317 = trunc i64 %312 to i32
  %318 = and i32 %317, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %21, align 1
  %323 = xor i64 %309, %311
  %324 = xor i64 %323, %312
  %325 = lshr i64 %324, 4
  %326 = trunc i64 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1
  %328 = icmp eq i64 %312, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i64 %312, 63
  %331 = trunc i64 %330 to i8
  store i8 %331, i8* %32, align 1
  %332 = lshr i64 %311, 63
  %333 = xor i64 %330, %332
  %334 = xor i64 %330, %310
  %335 = add nuw nsw i64 %333, %334
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %38, align 1
  %338 = add i64 %302, -8
  %339 = add i64 %304, 21
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  store i64 %342, i64* %RCX.i786, align 8
  %343 = shl nsw i64 %342, 2
  %344 = add i64 %312, 180
  %345 = add i64 %344, %343
  %346 = add i64 %304, 32
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  store i32 0, i32* %347, align 4
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -4
  %350 = load i64, i64* %3, align 8
  %351 = add i64 %350, 4
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %349 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = mul nsw i64 %354, 380
  store i64 %355, i64* %RCX.i786, align 8
  %356 = lshr i64 %355, 63
  %357 = load i64, i64* %RAX.i788, align 8
  %358 = add i64 %355, %357
  store i64 %358, i64* %RAX.i788, align 8
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
  %384 = add i64 %348, -8
  %385 = add i64 %350, 18
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RCX.i786, align 8
  %389 = shl nsw i64 %388, 2
  %390 = add i64 %358, 140
  %391 = add i64 %390, %389
  %392 = add i64 %350, 29
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 0, i32* %393, align 4
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -8
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, 3
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %395 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %399, 1
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RAX.i788, align 8
  %402 = icmp eq i32 %399, -1
  %403 = icmp eq i32 %400, 0
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = and i32 %400, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i32 %400, %399
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %26, align 1
  %415 = zext i1 %403 to i8
  store i8 %415, i8* %29, align 1
  %416 = lshr i32 %400, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %32, align 1
  %418 = lshr i32 %399, 31
  %419 = xor i32 %416, %418
  %420 = add nuw nsw i32 %419, %416
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %38, align 1
  %423 = add i64 %396, 9
  store i64 %423, i64* %3, align 8
  store i32 %400, i32* %398, align 4
  %424 = load i64, i64* %3, align 8
  %425 = add i64 %424, -148
  store i64 %425, i64* %3, align 8
  br label %block_.L_487a50

block_.L_487ae9:                                  ; preds = %block_.L_487a50
  %426 = add i64 %187, -4
  %427 = add i64 %215, 3
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RDI.i770, align 8
  %431 = add i64 %215, 2455
  %432 = add i64 %215, 8
  %433 = load i64, i64* %6, align 8
  %434 = add i64 %433, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 %432, i64* %435, align 8
  store i64 %434, i64* %6, align 8
  store i64 %431, i64* %3, align 8
  %call2_487aec = tail call %struct.Memory* @sub_488480.propagate_worm(%struct.State* nonnull %0, i64 %431, %struct.Memory* %MEMORY.0)
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -20
  %438 = load i64, i64* %3, align 8
  store i64 %437, i64* %RSI.i767, align 8
  %439 = add i64 %436, -4
  %440 = add i64 %438, 7
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RDI.i770, align 8
  %444 = add i64 %438, -171953
  %445 = add i64 %438, 12
  %446 = load i64, i64* %6, align 8
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 %445, i64* %448, align 8
  store i64 %447, i64* %6, align 8
  store i64 %444, i64* %3, align 8
  %call2_487af8 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %444, %struct.Memory* %call2_487aec)
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -12
  %451 = load i32, i32* %EAX.i764, align 4
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 3
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %450 to i32*
  store i32 %451, i32* %454, align 4
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -12
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 4
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459, align 4
  store i8 0, i8* %14, align 1
  %461 = and i32 %460, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %466 = icmp eq i32 %460, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %29, align 1
  %468 = lshr i32 %460, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v120 = select i1 %466, i64 76, i64 10
  %470 = add i64 %457, %.v120
  store i64 %470, i64* %3, align 8
  br i1 %466, label %block_.L_487b4c, label %block_487b0a

block_487b0a:                                     ; preds = %block_.L_487ae9
  %471 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %472 = and i32 %471, 1024
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit80 = lshr exact i32 %472, 10
  %474 = trunc i32 %.lobit80 to i8
  %475 = xor i8 %474, 1
  store i8 %475, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %476 = icmp eq i8 %475, 0
  %.v121 = select i1 %476, i64 26, i64 21
  %477 = add i64 %470, %.v121
  store i64 %477, i64* %3, align 8
  br i1 %476, label %block_.L_487b24, label %block_487b1f

block_487b1f:                                     ; preds = %block_487b0a
  %478 = add i64 %477, 31
  store i64 %478, i64* %3, align 8
  br label %block_.L_487b3e

block_.L_487b24:                                  ; preds = %block_487b0a
  store i64 ptrtoint (%G__0x583146_type* @G__0x583146 to i64), i64* %RDI.i770, align 8
  %479 = add i64 %455, -4
  %480 = add i64 %477, 13
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RSI.i767, align 8
  %484 = add i64 %455, -20
  %485 = add i64 %477, 16
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RDX.i734, align 8
  store i8 0, i8* %AL.i752, align 1
  %489 = add i64 %477, -220532
  %490 = add i64 %477, 23
  %491 = load i64, i64* %6, align 8
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*
  store i64 %490, i64* %493, align 8
  store i64 %492, i64* %6, align 8
  store i64 %489, i64* %3, align 8
  %call2_487b36 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %489, %struct.Memory* %call2_487af8)
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -52
  %496 = load i32, i32* %EAX.i764, align 4
  %497 = load i64, i64* %3, align 8
  %498 = add i64 %497, 3
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %495 to i32*
  store i32 %496, i32* %499, align 4
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_487b3e

block_.L_487b3e:                                  ; preds = %block_.L_487b24, %block_487b1f
  %500 = phi i64 [ %.pre77, %block_.L_487b24 ], [ %478, %block_487b1f ]
  %501 = phi i64 [ %.pre76, %block_.L_487b24 ], [ %455, %block_487b1f ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_487b36, %block_.L_487b24 ], [ %call2_487af8, %block_487b1f ]
  %502 = add i64 %501, -4
  %503 = add i64 %500, 3
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RDI.i770, align 8
  %507 = add i64 %501, -20
  %508 = add i64 %500, 6
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RSI.i767, align 8
  %512 = add i64 %501, -12
  %513 = add i64 %500, 9
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RDX.i734, align 8
  %517 = add i64 %500, 3074
  %518 = add i64 %500, 14
  %519 = load i64, i64* %6, align 8
  %520 = add i64 %519, -8
  %521 = inttoptr i64 %520 to i64*
  store i64 %518, i64* %521, align 8
  store i64 %520, i64* %6, align 8
  store i64 %517, i64* %3, align 8
  %call2_487b47 = tail call %struct.Memory* @sub_488740.change_attack(%struct.State* nonnull %0, i64 %517, %struct.Memory* %MEMORY.5)
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_487b4c

block_.L_487b4c:                                  ; preds = %block_.L_487b3e, %block_.L_487ae9
  %522 = phi i64 [ %470, %block_.L_487ae9 ], [ %.pre78, %block_.L_487b3e ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_487af8, %block_.L_487ae9 ], [ %call2_487b47, %block_.L_487b3e ]
  %523 = add i64 %522, 5
  store i64 %523, i64* %3, align 8
  br label %block_.L_487b51

block_.L_487b51:                                  ; preds = %block_.L_487b4c, %block_.L_487a1a
  %storemerge = phi i64 [ %151, %block_.L_487a1a ], [ %523, %block_.L_487b4c ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_.L_487a1a ], [ %MEMORY.6, %block_.L_487b4c ]
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -4
  %526 = add i64 %storemerge, 3
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %528, 1
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RAX.i788, align 8
  %531 = icmp eq i32 %528, -1
  %532 = icmp eq i32 %529, 0
  %533 = or i1 %531, %532
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %14, align 1
  %535 = and i32 %529, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %21, align 1
  %540 = xor i32 %529, %528
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %26, align 1
  %544 = zext i1 %532 to i8
  store i8 %544, i8* %29, align 1
  %545 = lshr i32 %529, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %32, align 1
  %547 = lshr i32 %528, 31
  %548 = xor i32 %545, %547
  %549 = add nuw nsw i32 %548, %545
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %38, align 1
  %552 = add i64 %storemerge, 9
  store i64 %552, i64* %3, align 8
  store i32 %529, i32* %527, align 4
  %553 = load i64, i64* %3, align 8
  %554 = add i64 %553, -395
  store i64 %554, i64* %3, align 8
  br label %block_.L_4879cf

block_.L_487b5f:                                  ; preds = %block_.L_4879cf
  %555 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %556 = and i32 %555, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %561 = icmp eq i32 %555, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %29, align 1
  %563 = lshr i32 %555, 31
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v81 = select i1 %561, i64 14, i64 19
  %565 = add i64 %73, %.v81
  store i64 %565, i64* %3, align 8
  br i1 %561, label %block_487b6d, label %block_.L_487b72

block_487b6d:                                     ; preds = %block_.L_487b5f
  %566 = add i64 %565, 45
  store i64 %566, i64* %3, align 8
  br label %block_.L_487b9a

block_.L_487b72:                                  ; preds = %block_.L_487b5f
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i770, align 8
  store i64 764, i64* %RSI.i767, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i734, align 8
  store i64 4294967295, i64* %RAX.i788, align 8
  %RCX.i595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i595, align 8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %567, align 8
  %568 = add i64 %565, -219874
  %569 = add i64 %565, 40
  %570 = load i64, i64* %6, align 8
  %571 = add i64 %570, -8
  %572 = inttoptr i64 %571 to i64*
  store i64 %569, i64* %572, align 8
  store i64 %571, i64* %6, align 8
  store i64 %568, i64* %3, align 8
  %call2_487b95 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %568, %struct.Memory* %MEMORY.0)
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_487b9a

block_.L_487b9a:                                  ; preds = %block_.L_487b72, %block_487b6d
  %573 = phi i64 [ %.pre52, %block_.L_487b72 ], [ %566, %block_487b6d ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_487b95, %block_.L_487b72 ], [ %MEMORY.0, %block_487b6d ]
  %574 = add i64 %573, 7462
  %575 = add i64 %573, 5
  %576 = load i64, i64* %6, align 8
  %577 = add i64 %576, -8
  %578 = inttoptr i64 %577 to i64*
  store i64 %575, i64* %578, align 8
  store i64 %577, i64* %6, align 8
  store i64 %574, i64* %3, align 8
  %call2_487b9a = tail call %struct.Memory* @sub_4898c0.find_attack_patterns(%struct.State* nonnull %0, i64 %574, %struct.Memory* %MEMORY.8)
  %579 = load i64, i64* %3, align 8
  %580 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %581 = and i32 %580, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %586 = icmp eq i32 %580, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %29, align 1
  %588 = lshr i32 %580, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v82 = select i1 %586, i64 14, i64 19
  %590 = add i64 %579, %.v82
  store i64 %590, i64* %3, align 8
  br i1 %586, label %block_487bad, label %block_.L_487bb2

block_487bad:                                     ; preds = %block_.L_487b9a
  %591 = add i64 %590, 45
  store i64 %591, i64* %3, align 8
  %.pre79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  br label %block_.L_487bda

block_.L_487bb2:                                  ; preds = %block_.L_487b9a
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i770, align 8
  store i64 768, i64* %RSI.i767, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i734, align 8
  store i64 4294967295, i64* %RAX.i788, align 8
  %RCX.i576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i576, align 8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %592, align 8
  %593 = add i64 %590, -219938
  %594 = add i64 %590, 40
  %595 = load i64, i64* %6, align 8
  %596 = add i64 %595, -8
  %597 = inttoptr i64 %596 to i64*
  store i64 %594, i64* %597, align 8
  store i64 %596, i64* %6, align 8
  store i64 %593, i64* %3, align 8
  %call2_487bd5 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %593, %struct.Memory* %call2_487b9a)
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_487bda

block_.L_487bda:                                  ; preds = %block_.L_487bb2, %block_487bad
  %.pre-phi = phi i64* [ %592, %block_.L_487bb2 ], [ %.pre79, %block_487bad ]
  %598 = phi i64 [ %.pre53, %block_.L_487bb2 ], [ %591, %block_487bad ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_487bd5, %block_.L_487bb2 ], [ %call2_487b9a, %block_487bad ]
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -4
  %601 = add i64 %598, 7
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  store i32 21, i32* %602, align 4
  %RDX.i454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_487be1

block_.L_487be1:                                  ; preds = %block_.L_487dd4, %block_.L_487bda
  %604 = phi i64 [ %.pre54, %block_.L_487bda ], [ %1208, %block_.L_487dd4 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_487bda ], [ %MEMORY.22, %block_.L_487dd4 ]
  %605 = load i64, i64* %RBP.i, align 8
  %606 = add i64 %605, -4
  %607 = add i64 %604, 7
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = add i32 %609, -400
  %611 = icmp ult i32 %609, 400
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %610, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i32 %609, 16
  %619 = xor i32 %618, %610
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %26, align 1
  %623 = icmp eq i32 %610, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %29, align 1
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %32, align 1
  %627 = lshr i32 %609, 31
  %628 = xor i32 %625, %627
  %629 = add nuw nsw i32 %628, %627
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %38, align 1
  %632 = icmp ne i8 %626, 0
  %633 = xor i1 %632, %630
  %.v83 = select i1 %633, i64 13, i64 513
  %634 = add i64 %604, %.v83
  store i64 %634, i64* %3, align 8
  br i1 %633, label %block_487bee, label %block_.L_487de2

block_487bee:                                     ; preds = %block_.L_487be1
  %635 = add i64 %634, 4
  store i64 %635, i64* %3, align 8
  %636 = load i32, i32* %608, align 4
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %RAX.i788, align 8
  %638 = add nsw i64 %637, 12099168
  %639 = add i64 %634, 12
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i8*
  %641 = load i8, i8* %640, align 1
  %642 = zext i8 %641 to i64
  store i64 %642, i64* %RCX.i786, align 8
  %643 = zext i8 %641 to i32
  %644 = add nsw i32 %643, -1
  %645 = icmp eq i8 %641, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %14, align 1
  %647 = and i32 %644, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %21, align 1
  %652 = xor i32 %644, %643
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %26, align 1
  %656 = icmp eq i32 %644, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %29, align 1
  %658 = lshr i32 %644, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %656, i64 42, i64 21
  %660 = add i64 %634, %.v103
  store i64 %660, i64* %3, align 8
  br i1 %656, label %block_.L_487c18, label %block_487c03

block_487c03:                                     ; preds = %block_487bee
  %661 = add i64 %660, 4
  store i64 %661, i64* %3, align 8
  %662 = load i32, i32* %608, align 4
  %663 = sext i32 %662 to i64
  store i64 %663, i64* %RAX.i788, align 8
  %664 = add nsw i64 %663, 12099168
  %665 = add i64 %660, 12
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i8*
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i64
  store i64 %668, i64* %RCX.i786, align 8
  %669 = zext i8 %667 to i32
  %670 = add nsw i32 %669, -2
  %671 = icmp ult i8 %667, 2
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %14, align 1
  %673 = and i32 %670, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i32 %670, %669
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %26, align 1
  %682 = icmp eq i32 %670, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %29, align 1
  %684 = lshr i32 %670, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %682, i64 21, i64 41
  %686 = add i64 %660, %.v104
  store i64 %686, i64* %3, align 8
  br i1 %682, label %block_.L_487c18, label %block_.L_487c2c

block_.L_487c18:                                  ; preds = %block_487c03, %block_487bee
  %687 = phi i64 [ %686, %block_487c03 ], [ %660, %block_487bee ]
  %688 = add i64 %687, 3
  store i64 %688, i64* %3, align 8
  %689 = load i32, i32* %608, align 4
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RDI.i770, align 8
  %691 = add i64 %687, 6
  store i64 %691, i64* %3, align 8
  %692 = load i32, i32* %608, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RSI.i767, align 8
  %694 = add i64 %687, 1240
  %695 = add i64 %687, 11
  %696 = load i64, i64* %6, align 8
  %697 = add i64 %696, -8
  %698 = inttoptr i64 %697 to i64*
  store i64 %695, i64* %698, align 8
  store i64 %697, i64* %6, align 8
  store i64 %694, i64* %3, align 8
  %call2_487c1e = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %694, %struct.Memory* %MEMORY.10)
  %699 = load i32, i32* %EAX.i764, align 4
  %700 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %701 = and i32 %699, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %706 = icmp eq i32 %699, 0
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %29, align 1
  %708 = lshr i32 %699, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v105 = select i1 %706, i64 9, i64 14
  %710 = add i64 %700, %.v105
  store i64 %710, i64* %3, align 8
  br i1 %706, label %block_.L_487c2c, label %block_.L_487c31

block_.L_487c2c:                                  ; preds = %block_.L_487c18, %block_487c03
  %711 = phi i64 [ %710, %block_.L_487c18 ], [ %686, %block_487c03 ]
  %712 = add i64 %711, 424
  br label %block_.L_487dd4

block_.L_487c31:                                  ; preds = %block_.L_487c18
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i788, align 8
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -4
  %715 = add i64 %710, 14
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  %719 = mul nsw i64 %718, 380
  store i64 %719, i64* %RCX.i786, align 8
  %720 = lshr i64 %719, 63
  %721 = add i64 %719, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %721, i64* %RAX.i788, align 8
  %722 = icmp ult i64 %721, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %723 = icmp ult i64 %721, %719
  %724 = or i1 %722, %723
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %14, align 1
  %726 = trunc i64 %721 to i32
  %727 = and i32 %726, 252
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %21, align 1
  %732 = xor i64 %719, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %733 = xor i64 %732, %721
  %734 = lshr i64 %733, 4
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %26, align 1
  %737 = icmp eq i64 %721, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %29, align 1
  %739 = lshr i64 %721, 63
  %740 = trunc i64 %739 to i8
  store i8 %740, i8* %32, align 1
  %741 = xor i64 %739, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %742 = xor i64 %739, %720
  %743 = add nuw nsw i64 %741, %742
  %744 = icmp eq i64 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %38, align 1
  %746 = add i64 %719, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %747 = add i64 %710, 28
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  store i8 0, i8* %14, align 1
  %750 = and i32 %749, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %755 = icmp eq i32 %749, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %29, align 1
  %757 = lshr i32 %749, 31
  %758 = trunc i32 %757 to i8
  store i8 %758, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %755, i64 414, i64 34
  %759 = add i64 %710, %.v106
  store i64 %759, i64* %3, align 8
  br i1 %755, label %block_.L_487dcf, label %block_487c53

block_487c53:                                     ; preds = %block_.L_487c31
  %760 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %761 = and i32 %760, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %766 = icmp eq i32 %760, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %29, align 1
  %768 = lshr i32 %760, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v107 = select i1 %766, i64 14, i64 19
  %770 = add i64 %759, %.v107
  store i64 %770, i64* %3, align 8
  br i1 %766, label %block_487c61, label %block_.L_487c66

block_487c61:                                     ; preds = %block_487c53
  %771 = add i64 %770, 28
  store i64 %771, i64* %3, align 8
  br label %block_.L_487c7d

block_.L_487c66:                                  ; preds = %block_487c53
  store i64 ptrtoint (%G__0x58316a_type* @G__0x58316a to i64), i64* %RDI.i770, align 8
  %772 = add i64 %770, 13
  store i64 %772, i64* %3, align 8
  %773 = load i32, i32* %716, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RSI.i767, align 8
  store i8 0, i8* %AL.i752, align 1
  %775 = add i64 %770, -220854
  %776 = add i64 %770, 20
  %777 = load i64, i64* %6, align 8
  %778 = add i64 %777, -8
  %779 = inttoptr i64 %778 to i64*
  store i64 %776, i64* %779, align 8
  store i64 %778, i64* %6, align 8
  store i64 %775, i64* %3, align 8
  %call2_487c75 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %775, %struct.Memory* %MEMORY.10)
  %780 = load i64, i64* %RBP.i, align 8
  %781 = add i64 %780, -56
  %782 = load i32, i32* %EAX.i764, align 4
  %783 = load i64, i64* %3, align 8
  %784 = add i64 %783, 3
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %781 to i32*
  store i32 %782, i32* %785, align 4
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_487c7d

block_.L_487c7d:                                  ; preds = %block_.L_487c66, %block_487c61
  %786 = phi i64 [ %.pre68, %block_.L_487c66 ], [ %771, %block_487c61 ]
  %787 = phi i64 [ %.pre67, %block_.L_487c66 ], [ %713, %block_487c61 ]
  %788 = add i64 %787, -24
  store i64 %788, i64* %RSI.i767, align 8
  %789 = add i64 %787, -4
  %790 = add i64 %786, 7
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RDI.i770, align 8
  %794 = add i64 %786, -120061
  %795 = add i64 %786, 12
  %796 = load i64, i64* %6, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %795, i64* %798, align 8
  store i64 %797, i64* %6, align 8
  store i64 %794, i64* %3, align 8
  %call2_487c84 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %794, %struct.Memory* %MEMORY.10)
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -16
  %801 = load i32, i32* %EAX.i764, align 4
  %802 = load i64, i64* %3, align 8
  %803 = add i64 %802, 3
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %800 to i32*
  store i32 %801, i32* %804, align 4
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -16
  %807 = load i64, i64* %3, align 8
  %808 = add i64 %807, 4
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809, align 4
  store i8 0, i8* %14, align 1
  %811 = and i32 %810, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %816 = icmp eq i32 %810, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %29, align 1
  %818 = lshr i32 %810, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %816, i64 84, i64 10
  %820 = add i64 %807, %.v108
  store i64 %820, i64* %3, align 8
  br i1 %816, label %block_.L_487ce0, label %block_487c96

block_487c96:                                     ; preds = %block_.L_487c7d
  %821 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %822 = and i32 %821, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %827 = icmp eq i32 %821, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %29, align 1
  %829 = lshr i32 %821, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %827, i64 14, i64 19
  %831 = add i64 %820, %.v109
  store i64 %831, i64* %3, align 8
  br i1 %827, label %block_487ca4, label %block_.L_487ca9

block_487ca4:                                     ; preds = %block_487c96
  %832 = add i64 %831, 31
  store i64 %832, i64* %3, align 8
  br label %block_.L_487cc3

block_.L_487ca9:                                  ; preds = %block_487c96
  store i64 ptrtoint (%G__0x583186_type* @G__0x583186 to i64), i64* %RDI.i770, align 8
  %833 = add i64 %805, -4
  %834 = add i64 %831, 13
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RSI.i767, align 8
  %838 = add i64 %805, -24
  %839 = add i64 %831, 16
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RDX.i734, align 8
  store i8 0, i8* %AL.i752, align 1
  %843 = add i64 %831, -220921
  %844 = add i64 %831, 23
  %845 = load i64, i64* %6, align 8
  %846 = add i64 %845, -8
  %847 = inttoptr i64 %846 to i64*
  store i64 %844, i64* %847, align 8
  store i64 %846, i64* %6, align 8
  store i64 %843, i64* %3, align 8
  %call2_487cbb = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %843, %struct.Memory* %call2_487c84)
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -60
  %850 = load i32, i32* %EAX.i764, align 4
  %851 = load i64, i64* %3, align 8
  %852 = add i64 %851, 3
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %849 to i32*
  store i32 %850, i32* %853, align 4
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_487cc3

block_.L_487cc3:                                  ; preds = %block_.L_487ca9, %block_487ca4
  %854 = phi i64 [ %.pre70, %block_.L_487ca9 ], [ %832, %block_487ca4 ]
  %855 = phi i64 [ %.pre69, %block_.L_487ca9 ], [ %805, %block_487ca4 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_487cbb, %block_.L_487ca9 ], [ %call2_487c84, %block_487ca4 ]
  %856 = add i64 %855, -24
  %857 = add i64 %854, 4
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  store i8 0, i8* %14, align 1
  %860 = and i32 %859, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %865 = icmp eq i32 %859, 0
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %29, align 1
  %867 = lshr i32 %859, 31
  %868 = trunc i32 %867 to i8
  store i8 %868, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %865, i64 24, i64 10
  %869 = add i64 %854, %.v110
  store i64 %869, i64* %3, align 8
  br i1 %865, label %block_.L_487cdb, label %block_487ccd

block_487ccd:                                     ; preds = %block_.L_487cc3
  %870 = add i64 %855, -4
  %871 = add i64 %869, 3
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RDI.i770, align 8
  %875 = add i64 %869, 6
  store i64 %875, i64* %3, align 8
  %876 = load i32, i32* %858, align 4
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RSI.i767, align 8
  %878 = add i64 %855, -16
  %879 = add i64 %869, 9
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RDX.i734, align 8
  %883 = add i64 %869, 2867
  %884 = add i64 %869, 14
  %885 = load i64, i64* %6, align 8
  %886 = add i64 %885, -8
  %887 = inttoptr i64 %886 to i64*
  store i64 %884, i64* %887, align 8
  store i64 %886, i64* %6, align 8
  store i64 %883, i64* %3, align 8
  %call2_487cd6 = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %883, %struct.Memory* %MEMORY.14)
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_487cdb

block_.L_487cdb:                                  ; preds = %block_487ccd, %block_.L_487cc3
  %888 = phi i64 [ %869, %block_.L_487cc3 ], [ %.pre71, %block_487ccd ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_.L_487cc3 ], [ %call2_487cd6, %block_487ccd ]
  %889 = add i64 %888, 239
  br label %block_.L_487dca

block_.L_487ce0:                                  ; preds = %block_.L_487c7d
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i788, align 8
  %890 = add i64 %805, -4
  %891 = add i64 %820, 14
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = sext i32 %893 to i64
  %895 = mul nsw i64 %894, 380
  store i64 %895, i64* %RCX.i786, align 8
  %896 = lshr i64 %895, 63
  %897 = add i64 %895, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %897, i64* %RAX.i788, align 8
  %898 = icmp ult i64 %897, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %899 = icmp ult i64 %897, %895
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %14, align 1
  %902 = trunc i64 %897 to i32
  %903 = and i32 %902, 252
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %21, align 1
  %908 = xor i64 %895, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %909 = xor i64 %908, %897
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  store i8 %912, i8* %26, align 1
  %913 = icmp eq i64 %897, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %29, align 1
  %915 = lshr i64 %897, 63
  %916 = trunc i64 %915 to i8
  store i8 %916, i8* %32, align 1
  %917 = xor i64 %915, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %918 = xor i64 %915, %896
  %919 = add nuw nsw i64 %917, %918
  %920 = icmp eq i64 %919, 2
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %38, align 1
  %922 = add i64 %895, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %923 = add i64 %820, 27
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RDX.i454, align 8
  %927 = add i64 %805, -20
  %928 = add i64 %820, 30
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  store i32 %925, i32* %929, align 4
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -20
  %932 = load i64, i64* %3, align 8
  %933 = add i64 %932, 3
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RDI.i770, align 8
  %937 = add i64 %930, -4
  %938 = add i64 %932, 6
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RSI.i767, align 8
  %942 = add i64 %932, -471630
  %943 = add i64 %932, 11
  %944 = load i64, i64* %6, align 8
  %945 = add i64 %944, -8
  %946 = inttoptr i64 %945 to i64*
  store i64 %943, i64* %946, align 8
  store i64 %945, i64* %6, align 8
  store i64 %942, i64* %3, align 8
  %call2_487d04 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %942, %struct.Memory* %call2_487c84)
  %947 = load i32, i32* %EAX.i764, align 4
  %948 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %949 = and i32 %947, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %954 = icmp eq i32 %947, 0
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %29, align 1
  %956 = lshr i32 %947, 31
  %957 = trunc i32 %956 to i8
  store i8 %957, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v111 = select i1 %954, i64 9, i64 188
  %958 = add i64 %948, %.v111
  store i64 %958, i64* %3, align 8
  br i1 %954, label %block_487d12, label %block_.L_487dc5

block_487d12:                                     ; preds = %block_.L_487ce0
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i454, align 8
  store i64 0, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i786, align 8
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -20
  %961 = add i64 %958, 25
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RDI.i770, align 8
  %965 = add i64 %959, -4
  %966 = add i64 %958, 29
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = sext i32 %968 to i64
  %970 = mul nsw i64 %969, 380
  store i64 %970, i64* %RSI.i767, align 8
  %971 = lshr i64 %970, 63
  %972 = add i64 %970, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %972, i64* %RCX.i786, align 8
  %973 = icmp ult i64 %972, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %974 = icmp ult i64 %972, %970
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %14, align 1
  %977 = trunc i64 %972 to i32
  %978 = and i32 %977, 252
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  %983 = xor i64 %970, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %984 = xor i64 %983, %972
  %985 = lshr i64 %984, 4
  %986 = trunc i64 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %26, align 1
  %988 = icmp eq i64 %972, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %29, align 1
  %990 = lshr i64 %972, 63
  %991 = trunc i64 %990 to i8
  store i8 %991, i8* %32, align 1
  %992 = xor i64 %990, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %993 = xor i64 %990, %971
  %994 = add nuw nsw i64 %992, %993
  %995 = icmp eq i64 %994, 2
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %38, align 1
  %997 = inttoptr i64 %972 to i32*
  %998 = add i64 %958, 41
  store i64 %998, i64* %3, align 8
  %999 = load i32, i32* %997, align 4
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RSI.i767, align 8
  %1001 = load i32, i32* %EAX.i764, align 4
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RCX.i786, align 8
  store i64 %1002, i64* %.pre-phi, align 8
  store i64 %1002, i64* %603, align 8
  %1003 = add i64 %958, -519906
  %1004 = add i64 %958, 54
  %1005 = load i64, i64* %6, align 8
  %1006 = add i64 %1005, -8
  %1007 = inttoptr i64 %1006 to i64*
  store i64 %1004, i64* %1007, align 8
  store i64 %1006, i64* %6, align 8
  store i64 %1003, i64* %3, align 8
  %call2_487d43 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1003, %struct.Memory* %call2_487d04)
  %1008 = load i32, i32* %EAX.i764, align 4
  %1009 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1010 = and i32 %1008, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1015 = icmp eq i32 %1008, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %29, align 1
  %1017 = lshr i32 %1008, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %1015, i64 120, i64 9
  %1019 = add i64 %1009, %.v112
  store i64 %1019, i64* %3, align 8
  br i1 %1015, label %block_.L_487dc0, label %block_487d51

block_487d51:                                     ; preds = %block_487d12
  store i64 0, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RSI.i767, align 8
  %1020 = load i64, i64* %RBP.i, align 8
  %1021 = add i64 %1020, -4
  %1022 = add i64 %1019, 7
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RDI.i770, align 8
  %1026 = add i64 %1019, -172561
  %1027 = add i64 %1019, 12
  %1028 = load i64, i64* %6, align 8
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1027, i64* %1030, align 8
  store i64 %1029, i64* %6, align 8
  store i64 %1026, i64* %3, align 8
  %call2_487d58 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %1026, %struct.Memory* %call2_487d43)
  %1031 = load i64, i64* %RBP.i, align 8
  %1032 = add i64 %1031, -40
  %1033 = load i32, i32* %EAX.i764, align 4
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1032 to i32*
  store i32 %1033, i32* %1036, align 4
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -40
  %1039 = load i64, i64* %3, align 8
  %1040 = add i64 %1039, 4
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1038 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = add i32 %1042, -5
  %1044 = icmp ult i32 %1042, 5
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = and i32 %1043, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i32 %1043, %1042
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %26, align 1
  %1055 = icmp eq i32 %1043, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %29, align 1
  %1057 = lshr i32 %1043, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %32, align 1
  %1059 = lshr i32 %1042, 31
  %1060 = xor i32 %1057, %1059
  %1061 = add nuw nsw i32 %1060, %1059
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %38, align 1
  %.v113 = select i1 %1055, i64 91, i64 10
  %1064 = add i64 %1039, %.v113
  store i64 %1064, i64* %3, align 8
  br i1 %1055, label %block_.L_487dbb, label %block_487d6a

block_487d6a:                                     ; preds = %block_487d51
  store i64 5, i64* %RAX.i788, align 8
  %1065 = add i64 %1037, -4
  %1066 = add i64 %1064, 8
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RDI.i770, align 8
  %1070 = add i64 %1037, -20
  %1071 = add i64 %1064, 11
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RSI.i767, align 8
  %1075 = add i64 %1064, 14
  store i64 %1075, i64* %3, align 8
  %1076 = load i32, i32* %1041, align 4
  %1077 = sub i32 5, %1076
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i788, align 8
  %1079 = icmp ugt i32 %1076, 5
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %14, align 1
  %1081 = and i32 %1077, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  %1086 = xor i32 %1076, %1077
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1
  %1090 = icmp eq i32 %1077, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %29, align 1
  %1092 = lshr i32 %1077, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %32, align 1
  %1094 = lshr i32 %1076, 31
  %1095 = add nuw nsw i32 %1092, %1094
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %38, align 1
  store i64 %1078, i64* %RDX.i454, align 8
  %1098 = add i64 %1064, 2710
  %1099 = add i64 %1064, 21
  %1100 = load i64, i64* %6, align 8
  %1101 = add i64 %1100, -8
  %1102 = inttoptr i64 %1101 to i64*
  store i64 %1099, i64* %1102, align 8
  store i64 %1101, i64* %6, align 8
  store i64 %1098, i64* %3, align 8
  %call2_487d7a = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %1098, %struct.Memory* %call2_487d58)
  %1103 = load i64, i64* %3, align 8
  %1104 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1105 = and i32 %1104, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1110 = icmp eq i32 %1104, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %29, align 1
  %1112 = lshr i32 %1104, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %1110, i64 14, i64 19
  %1114 = add i64 %1103, %.v114
  store i64 %1114, i64* %3, align 8
  br i1 %1110, label %block_487d8d, label %block_.L_487d92

block_487d8d:                                     ; preds = %block_487d6a
  %1115 = add i64 %1114, 41
  store i64 %1115, i64* %3, align 8
  br label %block_.L_487db6

block_.L_487d92:                                  ; preds = %block_487d6a
  store i64 ptrtoint (%G__0x5831aa_type* @G__0x5831aa to i64), i64* %RDI.i770, align 8
  store i64 5, i64* %RAX.i788, align 8
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -4
  %1118 = add i64 %1114, 18
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RSI.i767, align 8
  %1122 = add i64 %1116, -20
  %1123 = add i64 %1114, 21
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %RDX.i454, align 8
  %1127 = add i64 %1116, -40
  %1128 = add i64 %1114, 24
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = sub i32 5, %1130
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RAX.i788, align 8
  %1133 = icmp ugt i32 %1130, 5
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1
  %1135 = and i32 %1131, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1130, %1131
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %26, align 1
  %1144 = icmp eq i32 %1131, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %29, align 1
  %1146 = lshr i32 %1131, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %32, align 1
  %1148 = lshr i32 %1130, 31
  %1149 = add nuw nsw i32 %1146, %1148
  %1150 = icmp eq i32 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %38, align 1
  store i64 %1132, i64* %RCX.i786, align 8
  store i8 0, i8* %AL.i752, align 1
  %1152 = add i64 %1114, -221154
  %1153 = add i64 %1114, 33
  %1154 = load i64, i64* %6, align 8
  %1155 = add i64 %1154, -8
  %1156 = inttoptr i64 %1155 to i64*
  store i64 %1153, i64* %1156, align 8
  store i64 %1155, i64* %6, align 8
  store i64 %1152, i64* %3, align 8
  %call2_487dae = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1152, %struct.Memory* %call2_487d7a)
  %1157 = load i64, i64* %RBP.i, align 8
  %1158 = add i64 %1157, -64
  %1159 = load i32, i32* %EAX.i764, align 4
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1158 to i32*
  store i32 %1159, i32* %1162, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_487db6

block_.L_487db6:                                  ; preds = %block_.L_487d92, %block_487d8d
  %1163 = phi i64 [ %.pre72, %block_.L_487d92 ], [ %1115, %block_487d8d ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_487dae, %block_.L_487d92 ], [ %call2_487d7a, %block_487d8d ]
  %1164 = add i64 %1163, 5
  store i64 %1164, i64* %3, align 8
  br label %block_.L_487dbb

block_.L_487dbb:                                  ; preds = %block_.L_487db6, %block_487d51
  %1165 = phi i64 [ %1064, %block_487d51 ], [ %1164, %block_.L_487db6 ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_487d58, %block_487d51 ], [ %MEMORY.16, %block_.L_487db6 ]
  %1166 = add i64 %1165, -499803
  %1167 = add i64 %1165, 5
  %1168 = load i64, i64* %6, align 8
  %1169 = add i64 %1168, -8
  %1170 = inttoptr i64 %1169 to i64*
  store i64 %1167, i64* %1170, align 8
  store i64 %1169, i64* %6, align 8
  store i64 %1166, i64* %3, align 8
  %call2_487dbb = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1166, %struct.Memory* %MEMORY.17)
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_487dc0

block_.L_487dc0:                                  ; preds = %block_.L_487dbb, %block_487d12
  %1171 = phi i64 [ %1019, %block_487d12 ], [ %.pre73, %block_.L_487dbb ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_487d43, %block_487d12 ], [ %call2_487dbb, %block_.L_487dbb ]
  %1172 = add i64 %1171, 5
  store i64 %1172, i64* %3, align 8
  br label %block_.L_487dc5

block_.L_487dc5:                                  ; preds = %block_.L_487ce0, %block_.L_487dc0
  %1173 = phi i64 [ %958, %block_.L_487ce0 ], [ %1172, %block_.L_487dc0 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_487d04, %block_.L_487ce0 ], [ %MEMORY.18, %block_.L_487dc0 ]
  %1174 = add i64 %1173, 5
  store i64 %1174, i64* %3, align 8
  br label %block_.L_487dca

block_.L_487dca:                                  ; preds = %block_.L_487dc5, %block_.L_487cdb
  %storemerge43 = phi i64 [ %889, %block_.L_487cdb ], [ %1174, %block_.L_487dc5 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.15, %block_.L_487cdb ], [ %MEMORY.19, %block_.L_487dc5 ]
  %1175 = add i64 %storemerge43, 5
  store i64 %1175, i64* %3, align 8
  br label %block_.L_487dcf

block_.L_487dcf:                                  ; preds = %block_.L_487dca, %block_.L_487c31
  %1176 = phi i64 [ %759, %block_.L_487c31 ], [ %1175, %block_.L_487dca ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.10, %block_.L_487c31 ], [ %MEMORY.20, %block_.L_487dca ]
  %1177 = add i64 %1176, 5
  store i64 %1177, i64* %3, align 8
  br label %block_.L_487dd4

block_.L_487dd4:                                  ; preds = %block_.L_487dcf, %block_.L_487c2c
  %storemerge42 = phi i64 [ %712, %block_.L_487c2c ], [ %1177, %block_.L_487dcf ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.10, %block_.L_487c2c ], [ %MEMORY.21, %block_.L_487dcf ]
  %1178 = load i64, i64* %RBP.i, align 8
  %1179 = add i64 %1178, -4
  %1180 = add i64 %storemerge42, 3
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = add i32 %1182, 1
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RAX.i788, align 8
  %1185 = icmp eq i32 %1182, -1
  %1186 = icmp eq i32 %1183, 0
  %1187 = or i1 %1185, %1186
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %14, align 1
  %1189 = and i32 %1183, 255
  %1190 = tail call i32 @llvm.ctpop.i32(i32 %1189)
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  store i8 %1193, i8* %21, align 1
  %1194 = xor i32 %1183, %1182
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %26, align 1
  %1198 = zext i1 %1186 to i8
  store i8 %1198, i8* %29, align 1
  %1199 = lshr i32 %1183, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %32, align 1
  %1201 = lshr i32 %1182, 31
  %1202 = xor i32 %1199, %1201
  %1203 = add nuw nsw i32 %1202, %1199
  %1204 = icmp eq i32 %1203, 2
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %38, align 1
  %1206 = add i64 %storemerge42, 9
  store i64 %1206, i64* %3, align 8
  store i32 %1183, i32* %1181, align 4
  %1207 = load i64, i64* %3, align 8
  %1208 = add i64 %1207, -508
  store i64 %1208, i64* %3, align 8
  br label %block_.L_487be1

block_.L_487de2:                                  ; preds = %block_.L_487be1
  %1209 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1210 = and i32 %1209, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1215 = icmp eq i32 %1209, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %29, align 1
  %1217 = lshr i32 %1209, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v84 = select i1 %1215, i64 14, i64 19
  %1219 = add i64 %634, %.v84
  store i64 %1219, i64* %3, align 8
  br i1 %1215, label %block_487df0, label %block_.L_487df5

block_487df0:                                     ; preds = %block_.L_487de2
  %1220 = add i64 %1219, 45
  store i64 %1220, i64* %3, align 8
  br label %block_.L_487e1d

block_.L_487df5:                                  ; preds = %block_.L_487de2
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i770, align 8
  store i64 804, i64* %RSI.i767, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i734, align 8
  store i64 4294967295, i64* %RAX.i788, align 8
  %RCX.i324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i324, align 8
  store i64 4294967295, i64* %.pre-phi, align 8
  %1221 = add i64 %1219, -220517
  %1222 = add i64 %1219, 40
  %1223 = load i64, i64* %6, align 8
  %1224 = add i64 %1223, -8
  %1225 = inttoptr i64 %1224 to i64*
  store i64 %1222, i64* %1225, align 8
  store i64 %1224, i64* %6, align 8
  store i64 %1221, i64* %3, align 8
  %call2_487e18 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1221, %struct.Memory* %MEMORY.10)
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_487e1d

block_.L_487e1d:                                  ; preds = %block_.L_487df5, %block_487df0
  %1226 = phi i64 [ %.pre55, %block_.L_487df5 ], [ %1220, %block_487df0 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_487e18, %block_.L_487df5 ], [ %MEMORY.10, %block_487df0 ]
  %1227 = add i64 %1226, 6883
  %1228 = add i64 %1226, 5
  %1229 = load i64, i64* %6, align 8
  %1230 = add i64 %1229, -8
  %1231 = inttoptr i64 %1230 to i64*
  store i64 %1228, i64* %1231, align 8
  store i64 %1230, i64* %6, align 8
  store i64 %1227, i64* %3, align 8
  %call2_487e1d = tail call %struct.Memory* @sub_489900.find_defense_patterns(%struct.State* nonnull %0, i64 %1227, %struct.Memory* %MEMORY.23)
  %1232 = load i64, i64* %3, align 8
  %1233 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1234 = and i32 %1233, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1239 = icmp eq i32 %1233, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %29, align 1
  %1241 = lshr i32 %1233, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v85 = select i1 %1239, i64 14, i64 19
  %1243 = add i64 %1232, %.v85
  store i64 %1243, i64* %3, align 8
  br i1 %1239, label %block_487e30, label %block_.L_487e35

block_487e30:                                     ; preds = %block_.L_487e1d
  %1244 = add i64 %1243, 45
  store i64 %1244, i64* %3, align 8
  br label %block_.L_487e5d

block_.L_487e35:                                  ; preds = %block_.L_487e1d
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i770, align 8
  store i64 808, i64* %RSI.i767, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i734, align 8
  store i64 4294967295, i64* %RAX.i788, align 8
  %RCX.i305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i305, align 8
  store i64 4294967295, i64* %.pre-phi, align 8
  %1245 = add i64 %1243, -220581
  %1246 = add i64 %1243, 40
  %1247 = load i64, i64* %6, align 8
  %1248 = add i64 %1247, -8
  %1249 = inttoptr i64 %1248 to i64*
  store i64 %1246, i64* %1249, align 8
  store i64 %1248, i64* %6, align 8
  store i64 %1245, i64* %3, align 8
  %call2_487e58 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1245, %struct.Memory* %call2_487e1d)
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_487e5d

block_.L_487e5d:                                  ; preds = %block_.L_487e35, %block_487e30
  %1250 = phi i64 [ %.pre56, %block_.L_487e35 ], [ %1244, %block_487e30 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_487e58, %block_.L_487e35 ], [ %call2_487e1d, %block_487e30 ]
  %1251 = load i64, i64* %RBP.i, align 8
  %1252 = add i64 %1251, -4
  %1253 = add i64 %1250, 7
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  store i32 21, i32* %1254, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_487e64

block_.L_487e64:                                  ; preds = %block_.L_488095, %block_.L_487e5d
  %1255 = phi i64 [ %.pre57, %block_.L_487e5d ], [ %2028, %block_.L_488095 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_487e5d ], [ %MEMORY.39, %block_.L_488095 ]
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -4
  %1258 = add i64 %1255, 7
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = add i32 %1260, -400
  %1262 = icmp ult i32 %1260, 400
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %14, align 1
  %1264 = and i32 %1261, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %21, align 1
  %1269 = xor i32 %1260, 16
  %1270 = xor i32 %1269, %1261
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %26, align 1
  %1274 = icmp eq i32 %1261, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %29, align 1
  %1276 = lshr i32 %1261, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %32, align 1
  %1278 = lshr i32 %1260, 31
  %1279 = xor i32 %1276, %1278
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %38, align 1
  %1283 = icmp ne i8 %1277, 0
  %1284 = xor i1 %1283, %1281
  %.v86 = select i1 %1284, i64 13, i64 575
  %1285 = add i64 %1255, %.v86
  store i64 %1285, i64* %3, align 8
  br i1 %1284, label %block_487e71, label %block_.L_4880a3

block_487e71:                                     ; preds = %block_.L_487e64
  %1286 = add i64 %1285, 4
  store i64 %1286, i64* %3, align 8
  %1287 = load i32, i32* %1259, align 4
  %1288 = sext i32 %1287 to i64
  store i64 %1288, i64* %RAX.i788, align 8
  %1289 = add nsw i64 %1288, 12099168
  %1290 = add i64 %1285, 12
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i8*
  %1292 = load i8, i8* %1291, align 1
  %1293 = zext i8 %1292 to i64
  store i64 %1293, i64* %RCX.i786, align 8
  %1294 = add i64 %1256, -32
  %1295 = zext i8 %1292 to i32
  %1296 = add i64 %1285, 15
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1294 to i32*
  store i32 %1295, i32* %1297, align 4
  %1298 = load i64, i64* %RBP.i, align 8
  %1299 = add i64 %1298, -32
  %1300 = load i64, i64* %3, align 8
  %1301 = add i64 %1300, 4
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1299 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = add i32 %1303, -1
  %1305 = icmp eq i32 %1303, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %14, align 1
  %1307 = and i32 %1304, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  %1312 = xor i32 %1304, %1303
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %26, align 1
  %1316 = icmp eq i32 %1304, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i32 %1304, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %32, align 1
  %1320 = lshr i32 %1303, 31
  %1321 = xor i32 %1318, %1320
  %1322 = add nuw nsw i32 %1321, %1320
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %38, align 1
  %.v88 = select i1 %1316, i64 20, i64 10
  %1325 = add i64 %1300, %.v88
  store i64 %1325, i64* %3, align 8
  br i1 %1316, label %block_.L_487e94, label %block_487e8a

block_487e8a:                                     ; preds = %block_487e71
  %1326 = add i64 %1325, 4
  store i64 %1326, i64* %3, align 8
  %1327 = load i32, i32* %1302, align 4
  %1328 = add i32 %1327, -2
  %1329 = icmp ult i32 %1327, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %14, align 1
  %1331 = and i32 %1328, 255
  %1332 = tail call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  store i8 %1335, i8* %21, align 1
  %1336 = xor i32 %1328, %1327
  %1337 = lshr i32 %1336, 4
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  store i8 %1339, i8* %26, align 1
  %1340 = icmp eq i32 %1328, 0
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %29, align 1
  %1342 = lshr i32 %1328, 31
  %1343 = trunc i32 %1342 to i8
  store i8 %1343, i8* %32, align 1
  %1344 = lshr i32 %1327, 31
  %1345 = xor i32 %1342, %1344
  %1346 = add nuw nsw i32 %1345, %1344
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %38, align 1
  %.v89 = select i1 %1340, i64 10, i64 30
  %1349 = add i64 %1325, %.v89
  store i64 %1349, i64* %3, align 8
  br i1 %1340, label %block_.L_487e94, label %block_.L_488095

block_.L_487e94:                                  ; preds = %block_487e8a, %block_487e71
  %1350 = phi i64 [ %1349, %block_487e8a ], [ %1325, %block_487e71 ]
  %1351 = add i64 %1298, -4
  %1352 = add i64 %1350, 3
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RDI.i770, align 8
  %1356 = add i64 %1350, 6
  store i64 %1356, i64* %3, align 8
  %1357 = load i32, i32* %1353, align 4
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RSI.i767, align 8
  %1359 = add i64 %1350, 604
  %1360 = add i64 %1350, 11
  %1361 = load i64, i64* %6, align 8
  %1362 = add i64 %1361, -8
  %1363 = inttoptr i64 %1362 to i64*
  store i64 %1360, i64* %1363, align 8
  store i64 %1362, i64* %6, align 8
  store i64 %1359, i64* %3, align 8
  %call2_487e9a = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %1359, %struct.Memory* %MEMORY.25)
  %1364 = load i32, i32* %EAX.i764, align 4
  %1365 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1366 = and i32 %1364, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1371 = icmp eq i32 %1364, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %29, align 1
  %1373 = lshr i32 %1364, 31
  %1374 = trunc i32 %1373 to i8
  store i8 %1374, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %1371, i64 9, i64 14
  %1375 = add i64 %1365, %.v90
  store i64 %1375, i64* %3, align 8
  br i1 %1371, label %block_.L_487e94.block_.L_488095_crit_edge, label %block_.L_487ead

block_.L_487e94.block_.L_488095_crit_edge:        ; preds = %block_.L_487e94
  %.pre60 = load i64, i64* %RBP.i, align 8
  br label %block_.L_488095

block_.L_487ead:                                  ; preds = %block_.L_487e94
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i788, align 8
  store i64 3, i64* %RCX.i786, align 8
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -32
  %1378 = add i64 %1375, 18
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = sub i32 3, %1380
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RCX.i786, align 8
  %1383 = icmp ugt i32 %1380, 3
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %14, align 1
  %1385 = and i32 %1381, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %21, align 1
  %1390 = xor i32 %1381, %1380
  %1391 = lshr i32 %1390, 4
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  store i8 %1393, i8* %26, align 1
  %1394 = icmp eq i32 %1381, 0
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %29, align 1
  %1396 = lshr i32 %1381, 31
  %1397 = trunc i32 %1396 to i8
  store i8 %1397, i8* %32, align 1
  %1398 = lshr i32 %1380, 31
  %1399 = add nuw nsw i32 %1396, %1398
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %38, align 1
  %1402 = add i64 %1376, -36
  %1403 = add i64 %1375, 21
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i32*
  store i32 %1381, i32* %1404, align 4
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -4
  %1407 = load i64, i64* %3, align 8
  %1408 = add i64 %1407, 4
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1406 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = sext i32 %1410 to i64
  %1412 = mul nsw i64 %1411, 380
  store i64 %1412, i64* %RDX.i734, align 8
  %1413 = lshr i64 %1412, 63
  %1414 = load i64, i64* %RAX.i788, align 8
  %1415 = add i64 %1412, %1414
  store i64 %1415, i64* %RAX.i788, align 8
  %1416 = icmp ult i64 %1415, %1414
  %1417 = icmp ult i64 %1415, %1412
  %1418 = or i1 %1416, %1417
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %14, align 1
  %1420 = trunc i64 %1415 to i32
  %1421 = and i32 %1420, 255
  %1422 = tail call i32 @llvm.ctpop.i32(i32 %1421)
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  store i8 %1425, i8* %21, align 1
  %1426 = xor i64 %1412, %1414
  %1427 = xor i64 %1426, %1415
  %1428 = lshr i64 %1427, 4
  %1429 = trunc i64 %1428 to i8
  %1430 = and i8 %1429, 1
  store i8 %1430, i8* %26, align 1
  %1431 = icmp eq i64 %1415, 0
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %29, align 1
  %1433 = lshr i64 %1415, 63
  %1434 = trunc i64 %1433 to i8
  store i8 %1434, i8* %32, align 1
  %1435 = lshr i64 %1414, 63
  %1436 = xor i64 %1433, %1435
  %1437 = xor i64 %1433, %1413
  %1438 = add nuw nsw i64 %1436, %1437
  %1439 = icmp eq i64 %1438, 2
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %38, align 1
  %1441 = add i64 %1415, 100
  %1442 = add i64 %1407, 18
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  store i8 0, i8* %14, align 1
  %1445 = and i32 %1444, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1450 = icmp eq i32 %1444, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %29, align 1
  %1452 = lshr i32 %1444, 31
  %1453 = trunc i32 %1452 to i8
  store i8 %1453, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %1450, i64 24, i64 29
  %1454 = add i64 %1407, %.v91
  store i64 %1454, i64* %3, align 8
  br i1 %1450, label %block_.L_488095, label %block_.L_487edf

block_.L_487edf:                                  ; preds = %block_.L_487ead
  store i64 241, i64* %RSI.i767, align 8
  store i64 ptrtoint (%G__0xae4250_type* @G__0xae4250 to i64), i64* %RDX.i734, align 8
  %1455 = add i64 %1454, 18
  store i64 %1455, i64* %3, align 8
  %1456 = load i32, i32* %1409, align 4
  %1457 = zext i32 %1456 to i64
  store i64 %1457, i64* %RDI.i770, align 8
  %1458 = add i64 %1454, -493215
  %1459 = add i64 %1454, 23
  %1460 = load i64, i64* %6, align 8
  %1461 = add i64 %1460, -8
  %1462 = inttoptr i64 %1461 to i64*
  store i64 %1459, i64* %1462, align 8
  store i64 %1461, i64* %6, align 8
  store i64 %1458, i64* %3, align 8
  %call2_487ef1 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %1458, %struct.Memory* %MEMORY.25)
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -28
  %1465 = load i32, i32* %EAX.i764, align 4
  %1466 = load i64, i64* %3, align 8
  %1467 = add i64 %1466, 3
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1464 to i32*
  store i32 %1465, i32* %1468, align 4
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -8
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, 7
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1470 to i32*
  store i32 0, i32* %1473, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_487f00

block_.L_487f00:                                  ; preds = %block_.L_48807d, %block_.L_487edf
  %1474 = phi i64 [ %.pre59, %block_.L_487edf ], [ %1995, %block_.L_48807d ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.25, %block_.L_487edf ], [ %MEMORY.38, %block_.L_48807d ]
  %1475 = load i64, i64* %RBP.i, align 8
  %1476 = add i64 %1475, -8
  %1477 = add i64 %1474, 3
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  %1479 = load i32, i32* %1478, align 4
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RAX.i788, align 8
  %1481 = add i64 %1475, -28
  %1482 = add i64 %1474, 6
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = sub i32 %1479, %1484
  %1486 = icmp ult i32 %1479, %1484
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %14, align 1
  %1488 = and i32 %1485, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  %1493 = xor i32 %1484, %1479
  %1494 = xor i32 %1493, %1485
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %26, align 1
  %1498 = icmp eq i32 %1485, 0
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %29, align 1
  %1500 = lshr i32 %1485, 31
  %1501 = trunc i32 %1500 to i8
  store i8 %1501, i8* %32, align 1
  %1502 = lshr i32 %1479, 31
  %1503 = lshr i32 %1484, 31
  %1504 = xor i32 %1503, %1502
  %1505 = xor i32 %1500, %1502
  %1506 = add nuw nsw i32 %1505, %1504
  %1507 = icmp eq i32 %1506, 2
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %38, align 1
  %1509 = icmp ne i8 %1501, 0
  %1510 = xor i1 %1509, %1507
  %.v92 = select i1 %1510, i64 12, i64 400
  %1511 = add i64 %1474, %.v92
  store i64 %1511, i64* %3, align 8
  br i1 %1510, label %block_487f0c, label %block_.L_488095.loopexit

block_487f0c:                                     ; preds = %block_.L_487f00
  %1512 = add i64 %1511, 4
  store i64 %1512, i64* %3, align 8
  %1513 = load i32, i32* %1478, align 4
  %1514 = sext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i788, align 8
  %1515 = shl nsw i64 %1514, 2
  %1516 = add nsw i64 %1515, 11420240
  %1517 = add i64 %1511, 11
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = zext i32 %1519 to i64
  store i64 %1520, i64* %RCX.i786, align 8
  %1521 = add i64 %1475, -44
  %1522 = add i64 %1511, 14
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  store i32 %1519, i32* %1523, align 4
  %1524 = load i64, i64* %RBP.i, align 8
  %1525 = add i64 %1524, -44
  %1526 = load i64, i64* %3, align 8
  %1527 = add i64 %1526, 3
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1525 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RDI.i770, align 8
  %1531 = add i64 %1524, -4
  %1532 = add i64 %1526, 6
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RSI.i767, align 8
  %1536 = add i64 %1526, 6694
  %1537 = add i64 %1526, 11
  %1538 = load i64, i64* %6, align 8
  %1539 = add i64 %1538, -8
  %1540 = inttoptr i64 %1539 to i64*
  store i64 %1537, i64* %1540, align 8
  store i64 %1539, i64* %6, align 8
  store i64 %1536, i64* %3, align 8
  %call2_487f20 = tail call %struct.Memory* @sub_489940.attack_move_known(%struct.State* nonnull %0, i64 %1536, %struct.Memory* %MEMORY.28)
  %1541 = load i32, i32* %EAX.i764, align 4
  %1542 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1543 = and i32 %1541, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1548 = icmp eq i32 %1541, 0
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %29, align 1
  %1550 = lshr i32 %1541, 31
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v93 = select i1 %1548, i64 9, i64 186
  %1552 = add i64 %1542, %.v93
  store i64 %1552, i64* %3, align 8
  br i1 %1548, label %block_487f2e, label %block_.L_487fdf

block_487f2e:                                     ; preds = %block_487f0c
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i734, align 8
  store i64 0, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -44
  %1555 = add i64 %1552, 15
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RDI.i770, align 8
  %1559 = add i64 %1553, -36
  %1560 = add i64 %1552, 18
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RSI.i767, align 8
  %1564 = add i64 %1553, -4
  %1565 = add i64 %1552, 21
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RCX.i786, align 8
  store i64 0, i64* %.pre-phi, align 8
  store i64 0, i64* %603, align 8
  %1569 = add i64 %1552, -520446
  %1570 = add i64 %1552, 32
  %1571 = load i64, i64* %6, align 8
  %1572 = add i64 %1571, -8
  %1573 = inttoptr i64 %1572 to i64*
  store i64 %1570, i64* %1573, align 8
  store i64 %1572, i64* %6, align 8
  store i64 %1569, i64* %3, align 8
  %call2_487f49 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1569, %struct.Memory* %MEMORY.28)
  %1574 = load i32, i32* %EAX.i764, align 4
  %1575 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1576 = and i32 %1574, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1581 = icmp eq i32 %1574, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %29, align 1
  %1583 = lshr i32 %1574, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v98 = select i1 %1581, i64 140, i64 9
  %1585 = add i64 %1575, %.v98
  store i64 %1585, i64* %3, align 8
  br i1 %1581, label %block_.L_487fda, label %block_487f57

block_487f57:                                     ; preds = %block_487f2e
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -4
  %1588 = add i64 %1585, 4
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = sext i32 %1590 to i64
  store i64 %1591, i64* %RAX.i788, align 8
  %1592 = add nsw i64 %1591, 12099168
  %1593 = add i64 %1585, 12
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i8*
  %1595 = load i8, i8* %1594, align 1
  %1596 = zext i8 %1595 to i64
  store i64 %1596, i64* %RCX.i786, align 8
  %1597 = zext i8 %1595 to i32
  store i8 0, i8* %14, align 1
  %1598 = tail call i32 @llvm.ctpop.i32(i32 %1597)
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  store i8 %1601, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1602 = icmp eq i8 %1595, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %1602, i64 42, i64 21
  %1604 = add i64 %1585, %.v99
  store i64 %1604, i64* %3, align 8
  br i1 %1602, label %block_.L_487f81, label %block_487f6c

block_487f6c:                                     ; preds = %block_487f57
  %1605 = zext i32 %1590 to i64
  %1606 = xor i64 %1605, %1591
  %1607 = trunc i64 %1606 to i32
  %1608 = and i64 %1606, 4294967295
  store i64 %1608, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  %1609 = and i32 %1607, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %21, align 1
  %1614 = icmp eq i32 %1607, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %29, align 1
  %1616 = lshr i32 %1607, 31
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1618 = and i64 %1606, 4294967295
  store i64 %1618, i64* %RSI.i767, align 8
  %1619 = add i64 %1604, 7
  store i64 %1619, i64* %3, align 8
  %1620 = load i32, i32* %1589, align 4
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %RDI.i770, align 8
  %1622 = add i64 %1604, -173100
  %1623 = add i64 %1604, 12
  %1624 = load i64, i64* %6, align 8
  %1625 = add i64 %1624, -8
  %1626 = inttoptr i64 %1625 to i64*
  store i64 %1623, i64* %1626, align 8
  store i64 %1625, i64* %6, align 8
  store i64 %1622, i64* %3, align 8
  %call2_487f73 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %1622, %struct.Memory* %MEMORY.28)
  %1627 = load i32, i32* %EAX.i764, align 4
  %1628 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1629 = and i32 %1627, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1634 = icmp eq i32 %1627, 0
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %29, align 1
  %1636 = lshr i32 %1627, 31
  %1637 = trunc i32 %1636 to i8
  store i8 %1637, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v100 = select i1 %1634, i64 93, i64 9
  %1638 = add i64 %1628, %.v100
  store i64 %1638, i64* %3, align 8
  br i1 %1634, label %block_.L_487fd5, label %block_487f6c.block_.L_487f81_crit_edge

block_487f6c.block_.L_487f81_crit_edge:           ; preds = %block_487f6c
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %block_.L_487f81

block_.L_487f81:                                  ; preds = %block_487f6c.block_.L_487f81_crit_edge, %block_487f57
  %1639 = phi i64 [ %1638, %block_487f6c.block_.L_487f81_crit_edge ], [ %1604, %block_487f57 ]
  %1640 = phi i64 [ %.pre61, %block_487f6c.block_.L_487f81_crit_edge ], [ %1586, %block_487f57 ]
  %1641 = add i64 %1640, -4
  %1642 = add i64 %1639, 4
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = sext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i788, align 8
  %1646 = add nsw i64 %1645, 12099168
  %1647 = add i64 %1639, 12
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i8*
  %1649 = load i8, i8* %1648, align 1
  %1650 = zext i8 %1649 to i64
  store i64 %1650, i64* %RCX.i786, align 8
  %1651 = zext i8 %1649 to i32
  store i8 0, i8* %14, align 1
  %1652 = tail call i32 @llvm.ctpop.i32(i32 %1651)
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  store i8 %1655, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1656 = icmp eq i8 %1649, 0
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v101 = select i1 %1656, i64 21, i64 33
  %1658 = add i64 %1639, %.v101
  store i64 %1658, i64* %3, align 8
  br i1 %1656, label %block_487f96, label %block_.L_487fa2

block_487f96:                                     ; preds = %block_.L_487f81
  %1659 = add i64 %1640, -16
  %1660 = add i64 %1658, 7
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  store i32 0, i32* %1661, align 4
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1662, 20
  store i64 %1663, i64* %3, align 8
  br label %block_.L_487fb1

block_.L_487fa2:                                  ; preds = %block_.L_487f81
  %1664 = zext i32 %1644 to i64
  %1665 = xor i64 %1664, %1645
  %1666 = trunc i64 %1665 to i32
  %1667 = and i64 %1665, 4294967295
  store i64 %1667, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  %1668 = and i32 %1666, 255
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %21, align 1
  %1673 = icmp eq i32 %1666, 0
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %29, align 1
  %1675 = lshr i32 %1666, 31
  %1676 = trunc i32 %1675 to i8
  store i8 %1676, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1677 = and i64 %1665, 4294967295
  store i64 %1677, i64* %RSI.i767, align 8
  %1678 = add i64 %1658, 7
  store i64 %1678, i64* %3, align 8
  %1679 = load i32, i32* %1643, align 4
  %1680 = zext i32 %1679 to i64
  store i64 %1680, i64* %RDI.i770, align 8
  %1681 = add i64 %1658, -120866
  %1682 = add i64 %1658, 12
  %1683 = load i64, i64* %6, align 8
  %1684 = add i64 %1683, -8
  %1685 = inttoptr i64 %1684 to i64*
  store i64 %1682, i64* %1685, align 8
  store i64 %1684, i64* %6, align 8
  store i64 %1681, i64* %3, align 8
  %call2_487fa9 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %1681, %struct.Memory* %MEMORY.28)
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -16
  %1688 = load i32, i32* %EAX.i764, align 4
  %1689 = load i64, i64* %3, align 8
  %1690 = add i64 %1689, 3
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1687 to i32*
  store i32 %1688, i32* %1691, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_487fb1

block_.L_487fb1:                                  ; preds = %block_.L_487fa2, %block_487f96
  %1692 = phi i64 [ %.pre62, %block_.L_487fa2 ], [ %1663, %block_487f96 ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_487fa9, %block_.L_487fa2 ], [ %MEMORY.28, %block_487f96 ]
  %1693 = load i64, i64* %RBP.i, align 8
  %1694 = add i64 %1693, -16
  %1695 = add i64 %1692, 4
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = add i32 %1697, -5
  %1699 = icmp ult i32 %1697, 5
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %14, align 1
  %1701 = and i32 %1698, 255
  %1702 = tail call i32 @llvm.ctpop.i32(i32 %1701)
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %21, align 1
  %1706 = xor i32 %1698, %1697
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  store i8 %1709, i8* %26, align 1
  %1710 = icmp eq i32 %1698, 0
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %29, align 1
  %1712 = lshr i32 %1698, 31
  %1713 = trunc i32 %1712 to i8
  store i8 %1713, i8* %32, align 1
  %1714 = lshr i32 %1697, 31
  %1715 = xor i32 %1712, %1714
  %1716 = add nuw nsw i32 %1715, %1714
  %1717 = icmp eq i32 %1716, 2
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %38, align 1
  %.v102 = select i1 %1710, i64 31, i64 10
  %1719 = add i64 %1692, %.v102
  store i64 %1719, i64* %3, align 8
  br i1 %1710, label %block_.L_487fd0, label %block_487fbb

block_487fbb:                                     ; preds = %block_.L_487fb1
  store i64 5, i64* %RAX.i788, align 8
  %1720 = add i64 %1693, -4
  %1721 = add i64 %1719, 8
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RDI.i770, align 8
  %1725 = add i64 %1693, -44
  %1726 = add i64 %1719, 11
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RSI.i767, align 8
  %1730 = add i64 %1719, 14
  store i64 %1730, i64* %3, align 8
  %1731 = load i32, i32* %1696, align 4
  %1732 = sub i32 5, %1731
  %1733 = zext i32 %1732 to i64
  store i64 %1733, i64* %RAX.i788, align 8
  %1734 = icmp ugt i32 %1731, 5
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %14, align 1
  %1736 = and i32 %1732, 255
  %1737 = tail call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  store i8 %1740, i8* %21, align 1
  %1741 = xor i32 %1731, %1732
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  store i8 %1744, i8* %26, align 1
  %1745 = icmp eq i32 %1732, 0
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %29, align 1
  %1747 = lshr i32 %1732, 31
  %1748 = trunc i32 %1747 to i8
  store i8 %1748, i8* %32, align 1
  %1749 = lshr i32 %1731, 31
  %1750 = add nuw nsw i32 %1747, %1749
  %1751 = icmp eq i32 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %38, align 1
  store i64 %1733, i64* %RDX.i734, align 8
  %1753 = add i64 %1719, 1925
  %1754 = add i64 %1719, 21
  %1755 = load i64, i64* %6, align 8
  %1756 = add i64 %1755, -8
  %1757 = inttoptr i64 %1756 to i64*
  store i64 %1754, i64* %1757, align 8
  store i64 %1756, i64* %6, align 8
  store i64 %1753, i64* %3, align 8
  %call2_487fcb = tail call %struct.Memory* @sub_488740.change_attack(%struct.State* nonnull %0, i64 %1753, %struct.Memory* %MEMORY.30)
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_487fd0

block_.L_487fd0:                                  ; preds = %block_487fbb, %block_.L_487fb1
  %1758 = phi i64 [ %1719, %block_.L_487fb1 ], [ %.pre63, %block_487fbb ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.30, %block_.L_487fb1 ], [ %call2_487fcb, %block_487fbb ]
  %1759 = add i64 %1758, 5
  store i64 %1759, i64* %3, align 8
  br label %block_.L_487fd5

block_.L_487fd5:                                  ; preds = %block_.L_487fd0, %block_487f6c
  %1760 = phi i64 [ %1759, %block_.L_487fd0 ], [ %1638, %block_487f6c ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.31, %block_.L_487fd0 ], [ %MEMORY.28, %block_487f6c ]
  %1761 = add i64 %1760, -500341
  %1762 = add i64 %1760, 5
  %1763 = load i64, i64* %6, align 8
  %1764 = add i64 %1763, -8
  %1765 = inttoptr i64 %1764 to i64*
  store i64 %1762, i64* %1765, align 8
  store i64 %1764, i64* %6, align 8
  store i64 %1761, i64* %3, align 8
  %call2_487fd5 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1761, %struct.Memory* %MEMORY.32)
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_487fda

block_.L_487fda:                                  ; preds = %block_.L_487fd5, %block_487f2e
  %1766 = phi i64 [ %1585, %block_487f2e ], [ %.pre64, %block_.L_487fd5 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.28, %block_487f2e ], [ %call2_487fd5, %block_.L_487fd5 ]
  %1767 = add i64 %1766, 5
  store i64 %1767, i64* %3, align 8
  br label %block_.L_487fdf

block_.L_487fdf:                                  ; preds = %block_487f0c, %block_.L_487fda
  %1768 = phi i64 [ %1552, %block_487f0c ], [ %1767, %block_.L_487fda ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.28, %block_487f0c ], [ %MEMORY.33, %block_.L_487fda ]
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -44
  %1771 = add i64 %1768, 3
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RDI.i770, align 8
  %1775 = add i64 %1769, -4
  %1776 = add i64 %1768, 6
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RSI.i767, align 8
  %1780 = add i64 %1768, 6593
  %1781 = add i64 %1768, 11
  %1782 = load i64, i64* %6, align 8
  %1783 = add i64 %1782, -8
  %1784 = inttoptr i64 %1783 to i64*
  store i64 %1781, i64* %1784, align 8
  store i64 %1783, i64* %6, align 8
  store i64 %1780, i64* %3, align 8
  %call2_487fe5 = tail call %struct.Memory* @sub_4899a0.defense_move_known(%struct.State* nonnull %0, i64 %1780, %struct.Memory* %MEMORY.34)
  %1785 = load i32, i32* %EAX.i764, align 4
  %1786 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1787 = and i32 %1785, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1792 = icmp eq i32 %1785, 0
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %29, align 1
  %1794 = lshr i32 %1785, 31
  %1795 = trunc i32 %1794 to i8
  store i8 %1795, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v94 = select i1 %1792, i64 9, i64 147
  %1796 = add i64 %1786, %.v94
  store i64 %1796, i64* %3, align 8
  br i1 %1792, label %block_487ff3, label %block_.L_48807d

block_487ff3:                                     ; preds = %block_.L_487fdf
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i788, align 8
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -4
  %1799 = add i64 %1796, 14
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = sext i32 %1801 to i64
  %1803 = mul nsw i64 %1802, 380
  store i64 %1803, i64* %RCX.i786, align 8
  %1804 = lshr i64 %1803, 63
  %1805 = add i64 %1803, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1805, i64* %RAX.i788, align 8
  %1806 = icmp ult i64 %1805, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1807 = icmp ult i64 %1805, %1803
  %1808 = or i1 %1806, %1807
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %14, align 1
  %1810 = trunc i64 %1805 to i32
  %1811 = and i32 %1810, 252
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %21, align 1
  %1816 = xor i64 %1803, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1817 = xor i64 %1816, %1805
  %1818 = lshr i64 %1817, 4
  %1819 = trunc i64 %1818 to i8
  %1820 = and i8 %1819, 1
  store i8 %1820, i8* %26, align 1
  %1821 = icmp eq i64 %1805, 0
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %29, align 1
  %1823 = lshr i64 %1805, 63
  %1824 = trunc i64 %1823 to i8
  store i8 %1824, i8* %32, align 1
  %1825 = xor i64 %1823, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1826 = xor i64 %1823, %1804
  %1827 = add nuw nsw i64 %1825, %1826
  %1828 = icmp eq i64 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %38, align 1
  %1830 = add i64 %1803, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %1831 = add i64 %1796, 31
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  store i8 0, i8* %14, align 1
  %1834 = and i32 %1833, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1839 = icmp eq i32 %1833, 0
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %29, align 1
  %1841 = lshr i32 %1833, 31
  %1842 = trunc i32 %1841 to i8
  store i8 %1842, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %1839, i64 133, i64 37
  %1843 = add i64 %1796, %.v95
  store i64 %1843, i64* %3, align 8
  br i1 %1839, label %block_.L_488078, label %block_488018

block_488018:                                     ; preds = %block_487ff3
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i734, align 8
  store i64 0, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1844 = add i64 %1797, -44
  %1845 = add i64 %1843, 15
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = zext i32 %1847 to i64
  store i64 %1848, i64* %RDI.i770, align 8
  %1849 = add i64 %1797, -32
  %1850 = add i64 %1843, 18
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1849 to i32*
  %1852 = load i32, i32* %1851, align 4
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RSI.i767, align 8
  store i64 0, i64* %RCX.i786, align 8
  store i64 0, i64* %.pre-phi, align 8
  store i64 0, i64* %603, align 8
  %1854 = add i64 %1843, -520680
  %1855 = add i64 %1843, 31
  %1856 = load i64, i64* %6, align 8
  %1857 = add i64 %1856, -8
  %1858 = inttoptr i64 %1857 to i64*
  store i64 %1855, i64* %1858, align 8
  store i64 %1857, i64* %6, align 8
  store i64 %1854, i64* %3, align 8
  %call2_488032 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1854, %struct.Memory* %call2_487fe5)
  %1859 = load i32, i32* %EAX.i764, align 4
  %1860 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1861 = and i32 %1859, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1866 = icmp eq i32 %1859, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %29, align 1
  %1868 = lshr i32 %1859, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %1866, i64 60, i64 9
  %1870 = add i64 %1860, %.v96
  store i64 %1870, i64* %3, align 8
  br i1 %1866, label %block_.L_488073, label %block_488040

block_488040:                                     ; preds = %block_488018
  store i64 0, i64* %RAX.i788, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RSI.i767, align 8
  %1871 = load i64, i64* %RBP.i, align 8
  %1872 = add i64 %1871, -4
  %1873 = add i64 %1870, 7
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = zext i32 %1875 to i64
  store i64 %1876, i64* %RDI.i770, align 8
  %1877 = add i64 %1870, -173312
  %1878 = add i64 %1870, 12
  %1879 = load i64, i64* %6, align 8
  %1880 = add i64 %1879, -8
  %1881 = inttoptr i64 %1880 to i64*
  store i64 %1878, i64* %1881, align 8
  store i64 %1880, i64* %6, align 8
  store i64 %1877, i64* %3, align 8
  %call2_488047 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %1877, %struct.Memory* %call2_488032)
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -12
  %1884 = load i32, i32* %EAX.i764, align 4
  %1885 = load i64, i64* %3, align 8
  %1886 = add i64 %1885, 3
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1883 to i32*
  store i32 %1884, i32* %1887, align 4
  %1888 = load i64, i64* %RBP.i, align 8
  %1889 = add i64 %1888, -12
  %1890 = load i64, i64* %3, align 8
  %1891 = add i64 %1890, 4
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1889 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = add i32 %1893, -5
  %1895 = icmp ult i32 %1893, 5
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %14, align 1
  %1897 = and i32 %1894, 255
  %1898 = tail call i32 @llvm.ctpop.i32(i32 %1897)
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  %1901 = xor i8 %1900, 1
  store i8 %1901, i8* %21, align 1
  %1902 = xor i32 %1894, %1893
  %1903 = lshr i32 %1902, 4
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  store i8 %1905, i8* %26, align 1
  %1906 = icmp eq i32 %1894, 0
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %29, align 1
  %1908 = lshr i32 %1894, 31
  %1909 = trunc i32 %1908 to i8
  store i8 %1909, i8* %32, align 1
  %1910 = lshr i32 %1893, 31
  %1911 = xor i32 %1908, %1910
  %1912 = add nuw nsw i32 %1911, %1910
  %1913 = icmp eq i32 %1912, 2
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %38, align 1
  %.v97 = select i1 %1906, i64 31, i64 10
  %1915 = add i64 %1890, %.v97
  store i64 %1915, i64* %3, align 8
  br i1 %1906, label %block_.L_48806e, label %block_488059

block_488059:                                     ; preds = %block_488040
  store i64 5, i64* %RAX.i788, align 8
  %1916 = add i64 %1888, -4
  %1917 = add i64 %1915, 8
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RDI.i770, align 8
  %1921 = add i64 %1888, -44
  %1922 = add i64 %1915, 11
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RSI.i767, align 8
  %1926 = add i64 %1915, 14
  store i64 %1926, i64* %3, align 8
  %1927 = load i32, i32* %1892, align 4
  %1928 = sub i32 5, %1927
  %1929 = zext i32 %1928 to i64
  store i64 %1929, i64* %RAX.i788, align 8
  %1930 = icmp ugt i32 %1927, 5
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %14, align 1
  %1932 = and i32 %1928, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %21, align 1
  %1937 = xor i32 %1927, %1928
  %1938 = lshr i32 %1937, 4
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  store i8 %1940, i8* %26, align 1
  %1941 = icmp eq i32 %1928, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %29, align 1
  %1943 = lshr i32 %1928, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %32, align 1
  %1945 = lshr i32 %1927, 31
  %1946 = add nuw nsw i32 %1943, %1945
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %38, align 1
  store i64 %1929, i64* %RDX.i734, align 8
  %1949 = add i64 %1915, 1959
  %1950 = add i64 %1915, 21
  %1951 = load i64, i64* %6, align 8
  %1952 = add i64 %1951, -8
  %1953 = inttoptr i64 %1952 to i64*
  store i64 %1950, i64* %1953, align 8
  store i64 %1952, i64* %6, align 8
  store i64 %1949, i64* %3, align 8
  %call2_488069 = tail call %struct.Memory* @sub_488800.change_defense(%struct.State* nonnull %0, i64 %1949, %struct.Memory* %call2_488047)
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_48806e

block_.L_48806e:                                  ; preds = %block_488059, %block_488040
  %1954 = phi i64 [ %1915, %block_488040 ], [ %.pre65, %block_488059 ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_488047, %block_488040 ], [ %call2_488069, %block_488059 ]
  %1955 = add i64 %1954, -500494
  %1956 = add i64 %1954, 5
  %1957 = load i64, i64* %6, align 8
  %1958 = add i64 %1957, -8
  %1959 = inttoptr i64 %1958 to i64*
  store i64 %1956, i64* %1959, align 8
  store i64 %1958, i64* %6, align 8
  store i64 %1955, i64* %3, align 8
  %call2_48806e = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1955, %struct.Memory* %MEMORY.35)
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_488073

block_.L_488073:                                  ; preds = %block_.L_48806e, %block_488018
  %1960 = phi i64 [ %1870, %block_488018 ], [ %.pre66, %block_.L_48806e ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_488032, %block_488018 ], [ %call2_48806e, %block_.L_48806e ]
  %1961 = add i64 %1960, 5
  store i64 %1961, i64* %3, align 8
  br label %block_.L_488078

block_.L_488078:                                  ; preds = %block_.L_488073, %block_487ff3
  %1962 = phi i64 [ %1843, %block_487ff3 ], [ %1961, %block_.L_488073 ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_487fe5, %block_487ff3 ], [ %MEMORY.36, %block_.L_488073 ]
  %1963 = add i64 %1962, 5
  store i64 %1963, i64* %3, align 8
  br label %block_.L_48807d

block_.L_48807d:                                  ; preds = %block_.L_487fdf, %block_.L_488078
  %1964 = phi i64 [ %1796, %block_.L_487fdf ], [ %1963, %block_.L_488078 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_487fe5, %block_.L_487fdf ], [ %MEMORY.37, %block_.L_488078 ]
  %1965 = load i64, i64* %RBP.i, align 8
  %1966 = add i64 %1965, -8
  %1967 = add i64 %1964, 8
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = add i32 %1969, 1
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i788, align 8
  %1972 = icmp eq i32 %1969, -1
  %1973 = icmp eq i32 %1970, 0
  %1974 = or i1 %1972, %1973
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %14, align 1
  %1976 = and i32 %1970, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %21, align 1
  %1981 = xor i32 %1970, %1969
  %1982 = lshr i32 %1981, 4
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  store i8 %1984, i8* %26, align 1
  %1985 = zext i1 %1973 to i8
  store i8 %1985, i8* %29, align 1
  %1986 = lshr i32 %1970, 31
  %1987 = trunc i32 %1986 to i8
  store i8 %1987, i8* %32, align 1
  %1988 = lshr i32 %1969, 31
  %1989 = xor i32 %1986, %1988
  %1990 = add nuw nsw i32 %1989, %1986
  %1991 = icmp eq i32 %1990, 2
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %38, align 1
  %1993 = add i64 %1964, 14
  store i64 %1993, i64* %3, align 8
  store i32 %1970, i32* %1968, align 4
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, -395
  store i64 %1995, i64* %3, align 8
  br label %block_.L_487f00

block_.L_488095.loopexit:                         ; preds = %block_.L_487f00
  br label %block_.L_488095

block_.L_488095:                                  ; preds = %block_.L_488095.loopexit, %block_.L_487ead, %block_487e8a, %block_.L_487e94.block_.L_488095_crit_edge
  %1996 = phi i64 [ %1405, %block_.L_487ead ], [ %.pre60, %block_.L_487e94.block_.L_488095_crit_edge ], [ %1298, %block_487e8a ], [ %1475, %block_.L_488095.loopexit ]
  %1997 = phi i64 [ %1454, %block_.L_487ead ], [ %1375, %block_.L_487e94.block_.L_488095_crit_edge ], [ %1349, %block_487e8a ], [ %1511, %block_.L_488095.loopexit ]
  %.sink45 = phi i64 [ 443, %block_.L_487ead ], [ 493, %block_.L_487e94.block_.L_488095_crit_edge ], [ 493, %block_487e8a ], [ 5, %block_.L_488095.loopexit ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.25, %block_.L_487ead ], [ %MEMORY.25, %block_.L_487e94.block_.L_488095_crit_edge ], [ %MEMORY.25, %block_487e8a ], [ %MEMORY.28, %block_.L_488095.loopexit ]
  %1998 = add i64 %1997, %.sink45
  %1999 = add i64 %1996, -4
  %2000 = add i64 %1998, 3
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = add i32 %2002, 1
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX.i788, align 8
  %2005 = icmp eq i32 %2002, -1
  %2006 = icmp eq i32 %2003, 0
  %2007 = or i1 %2005, %2006
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %14, align 1
  %2009 = and i32 %2003, 255
  %2010 = tail call i32 @llvm.ctpop.i32(i32 %2009)
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  store i8 %2013, i8* %21, align 1
  %2014 = xor i32 %2003, %2002
  %2015 = lshr i32 %2014, 4
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  store i8 %2017, i8* %26, align 1
  %2018 = zext i1 %2006 to i8
  store i8 %2018, i8* %29, align 1
  %2019 = lshr i32 %2003, 31
  %2020 = trunc i32 %2019 to i8
  store i8 %2020, i8* %32, align 1
  %2021 = lshr i32 %2002, 31
  %2022 = xor i32 %2019, %2021
  %2023 = add nuw nsw i32 %2022, %2019
  %2024 = icmp eq i32 %2023, 2
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %38, align 1
  %2026 = add i64 %1998, 9
  store i64 %2026, i64* %3, align 8
  store i32 %2003, i32* %2001, align 4
  %2027 = load i64, i64* %3, align 8
  %2028 = add i64 %2027, -570
  store i64 %2028, i64* %3, align 8
  br label %block_.L_487e64

block_.L_4880a3:                                  ; preds = %block_.L_487e64
  %2029 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2030 = and i32 %2029, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2035 = icmp eq i32 %2029, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %29, align 1
  %2037 = lshr i32 %2029, 31
  %2038 = trunc i32 %2037 to i8
  store i8 %2038, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v87 = select i1 %2035, i64 14, i64 19
  %2039 = add i64 %1285, %.v87
  store i64 %2039, i64* %3, align 8
  br i1 %2035, label %block_4880b1, label %block_.L_4880b6

block_4880b1:                                     ; preds = %block_.L_4880a3
  %2040 = add i64 %2039, 45
  store i64 %2040, i64* %3, align 8
  br label %block_.L_4880de

block_.L_4880b6:                                  ; preds = %block_.L_4880a3
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i770, align 8
  store i64 860, i64* %RSI.i767, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i734, align 8
  store i64 4294967295, i64* %RAX.i788, align 8
  %RCX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i, align 8
  store i64 4294967295, i64* %.pre-phi, align 8
  %2041 = add i64 %2039, -221222
  %2042 = add i64 %2039, 40
  %2043 = load i64, i64* %6, align 8
  %2044 = add i64 %2043, -8
  %2045 = inttoptr i64 %2044 to i64*
  store i64 %2042, i64* %2045, align 8
  store i64 %2044, i64* %6, align 8
  store i64 %2041, i64* %3, align 8
  %call2_4880d9 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %2041, %struct.Memory* %MEMORY.25)
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_4880de

block_.L_4880de:                                  ; preds = %block_.L_4880b6, %block_4880b1
  %2046 = phi i64 [ %.pre58, %block_.L_4880b6 ], [ %2040, %block_4880b1 ]
  %MEMORY.40 = phi %struct.Memory* [ %call2_4880d9, %block_.L_4880b6 ], [ %MEMORY.25, %block_4880b1 ]
  %2047 = load i64, i64* %6, align 8
  %2048 = add i64 %2047, 64
  store i64 %2048, i64* %6, align 8
  %2049 = icmp ugt i64 %2047, -65
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %14, align 1
  %2051 = trunc i64 %2048 to i32
  %2052 = and i32 %2051, 255
  %2053 = tail call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  store i8 %2056, i8* %21, align 1
  %2057 = xor i64 %2048, %2047
  %2058 = lshr i64 %2057, 4
  %2059 = trunc i64 %2058 to i8
  %2060 = and i8 %2059, 1
  store i8 %2060, i8* %26, align 1
  %2061 = icmp eq i64 %2048, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %29, align 1
  %2063 = lshr i64 %2048, 63
  %2064 = trunc i64 %2063 to i8
  store i8 %2064, i8* %32, align 1
  %2065 = lshr i64 %2047, 63
  %2066 = xor i64 %2063, %2065
  %2067 = add nuw nsw i64 %2066, %2063
  %2068 = icmp eq i64 %2067, 2
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %38, align 1
  %2070 = add i64 %2046, 5
  store i64 %2070, i64* %3, align 8
  %2071 = add i64 %2047, 72
  %2072 = inttoptr i64 %2048 to i64*
  %2073 = load i64, i64* %2072, align 8
  store i64 %2073, i64* %RBP.i, align 8
  store i64 %2071, i64* %6, align 8
  %2074 = add i64 %2046, 6
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2071 to i64*
  %2076 = load i64, i64* %2075, align 8
  store i64 %2076, i64* %3, align 8
  %2077 = add i64 %2047, 80
  store i64 %2077, i64* %6, align 8
  ret %struct.Memory* %MEMORY.40
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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
define %struct.Memory* @routine_jge_.L_487b5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487a06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487a1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487b51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_487a32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487a49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58312b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58312b_type* @G__0x58312b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jge_.L_487ae9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x64__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 100
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x3c__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 60
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 180
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
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
define %struct.Memory* @routine_movl__0x0__0x8c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 140
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_487a50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_487b4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487b24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487b3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583146___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583146_type* @G__0x583146 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jmpq_.L_4879cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jne_.L_487b72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487b9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2fc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 764, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.find_attack_patterns(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487bb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487bda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x300___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 768, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_487de2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487c18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487c2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487c31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487dd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_487dcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487c66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487c7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58316a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58316a_type* @G__0x58316a to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_487ce0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487ca9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487cc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x583186___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x583186_type* @G__0x583186 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_je_.L_487cdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jmpq_.L_487dca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487dc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487dc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_487dbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487d92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487db6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5831aa___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5831aa_type* @G__0x5831aa to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487dbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487dc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487dcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487be1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_487df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487e1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x324___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 804, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.find_defense_patterns(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487e35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487e5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x328___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 808, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4880a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_487e94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_487ea8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487ead(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_488095(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_487edf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xae4250___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xae4250_type* @G__0xae4250 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_488090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xae4250___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11420240
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_callq_.attack_move_known(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487fdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_je_.L_487fda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487f81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_487fd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_487fa2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_487fb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_487fd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_jmpq_.L_487fd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487fdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.defense_move_known(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48807d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_488078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_488073(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_48806e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_jmpq_.L_488078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48807d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_488082(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487f00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_487e64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4880b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4880de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x35c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 860, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
