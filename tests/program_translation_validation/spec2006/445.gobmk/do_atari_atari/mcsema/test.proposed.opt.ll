; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb54ce8_type = type <{ [4 x i8] }>
%G__0x57aa39_type = type <{ [8 x i8] }>
%G__0x57aa4c_type = type <{ [8 x i8] }>
%G__0x57aa60_type = type <{ [8 x i8] }>
%G__0x57aa67_type = type <{ [8 x i8] }>
%G__0x57aa74_type = type <{ [8 x i8] }>
%G__0x57aa85_type = type <{ [8 x i8] }>
%G__0x57aaad_type = type <{ [8 x i8] }>
%G__0x57aabe_type = type <{ [8 x i8] }>
%G__0x57aaeb_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
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
@G_0xab0eec = local_unnamed_addr global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb54ce8 = local_unnamed_addr global %G_0xb54ce8_type zeroinitializer
@G__0x57aa39 = global %G__0x57aa39_type zeroinitializer
@G__0x57aa4c = global %G__0x57aa4c_type zeroinitializer
@G__0x57aa60 = global %G__0x57aa60_type zeroinitializer
@G__0x57aa67 = global %G__0x57aa67_type zeroinitializer
@G__0x57aa74 = global %G__0x57aa74_type zeroinitializer
@G__0x57aa85 = global %G__0x57aa85_type zeroinitializer
@G__0x57aaad = global %G__0x57aaad_type zeroinitializer
@G__0x57aabe = global %G__0x57aabe_type zeroinitializer
@G__0x57aaeb = global %G__0x57aaeb_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409930.dump_stack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_419dd0.atari_atari_succeeded(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a090.atari_atari_find_attack_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a230.get_aa_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a2d0.atari_atari_find_defense_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4774d0.modify_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41a7a0.update_aa_goal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_419630.do_atari_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_atari_atari(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RBX.i768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i768, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -9288
  store i64 %16, i64* %6, align 8
  %17 = icmp ult i64 %13, 9272
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, 16
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %13, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i763 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, 24
  %48 = add i64 %15, 11
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %RAX.i763, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i760 = bitcast %union.anon* %51 to i32*
  %52 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %53 = add i64 %46, 16
  %54 = add i64 %15, 15
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %52, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i758 = bitcast %union.anon* %58 to i32*
  %59 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  store i64 3, i64* %59, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i755 = bitcast %union.anon* %60 to i32*
  %61 = add i64 %46, -16
  %62 = load i32, i32* %EDI.i755, align 4
  %63 = add i64 %15, 24
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %64, align 4
  %RSI.i752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -24
  %67 = load i64, i64* %RSI.i752, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %RDX.i749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -32
  %73 = load i64, i64* %RDX.i749, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %76, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i746 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -40
  %80 = load i64, i64* %RCX.i746, align 8
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i743 = bitcast %union.anon* %84 to i32*
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -44
  %87 = load i32, i32* %R8D.i743, align 4
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i740 = bitcast %union.anon* %91 to i32*
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -48
  %94 = load i32, i32* %R9D.i740, align 4
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -52
  %100 = load i32, i32* %R10D.i760, align 4
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -64
  %106 = load i64, i64* %RAX.i763, align 8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109, align 8
  %110 = load i32, i32* %R11D.i758, align 4
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -16
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %110, %116
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %59, align 8
  %119 = add i64 %111, -68
  %120 = add i64 %113, 8
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 %117, i32* %121, align 4
  %RDI.i726 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %122 = load i64, i64* %3, align 8
  %123 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %124 = and i32 %123, 262144
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RDI.i726, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %126 = icmp eq i32 %124, 0
  %.lobit84 = lshr exact i32 %124, 18
  %127 = trunc i32 %.lobit84 to i8
  %128 = xor i8 %127, 1
  store i8 %128, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v88 = select i1 %126, i64 221, i64 22
  %129 = add i64 %122, %.v88
  store i64 %129, i64* %3, align 8
  br i1 %126, label %block_.L_41974e, label %block_419687

block_419687:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x57aa39_type* @G__0x57aa39 to i64), i64* %RDI.i726, align 8
  %AL.i718 = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %AL.i718, align 1
  %130 = add i64 %129, 231209
  %131 = add i64 %129, 17
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, -8
  %134 = inttoptr i64 %133 to i64*
  store i64 %131, i64* %134, align 8
  store i64 %133, i64* %6, align 8
  store i64 %130, i64* %3, align 8
  %call2_419693 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %130, %struct.Memory* %2)
  %EAX.i714 = bitcast %union.anon* %45 to i32*
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -9220
  %137 = load i32, i32* %EAX.i714, align 4
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 6
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %140, align 4
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, -64878
  %143 = add i64 %141, 5
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %6, align 8
  store i64 %142, i64* %3, align 8
  %call2_41969e = tail call %struct.Memory* @sub_409930.dump_stack(%struct.State* nonnull %0, i64 %142, %struct.Memory* %call2_419693)
  %147 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57aa4c_type* @G__0x57aa4c to i64), i64* %RDI.i726, align 8
  store i8 0, i8* %AL.i718, align 1
  %148 = add i64 %147, 231181
  %149 = add i64 %147, 17
  %150 = load i64, i64* %6, align 8
  %151 = add i64 %150, -8
  %152 = inttoptr i64 %151 to i64*
  store i64 %149, i64* %152, align 8
  store i64 %151, i64* %6, align 8
  store i64 %148, i64* %3, align 8
  %call2_4196af = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %148, %struct.Memory* %call2_41969e)
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -8756
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 10
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %154 to i32*
  store i32 21, i32* %157, align 4
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -9224
  %160 = load i32, i32* %EAX.i714, align 4
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 6
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %159 to i32*
  store i32 %160, i32* %163, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4196c4

block_.L_4196c4:                                  ; preds = %block_.L_41971e, %block_419687
  %164 = phi i64 [ %.pre, %block_419687 ], [ %284, %block_.L_41971e ]
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -8756
  %167 = add i64 %164, 10
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, -400
  %171 = icmp ult i32 %169, 400
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %19, align 1
  %173 = and i32 %170, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %26, align 1
  %178 = xor i32 %169, 16
  %179 = xor i32 %178, %170
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %32, align 1
  %183 = icmp eq i32 %170, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %35, align 1
  %185 = lshr i32 %170, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %38, align 1
  %187 = lshr i32 %169, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %44, align 1
  %192 = icmp ne i8 %186, 0
  %193 = xor i1 %192, %190
  %.v89 = select i1 %193, i64 16, i64 115
  %194 = add i64 %164, %.v89
  store i64 %194, i64* %3, align 8
  br i1 %193, label %block_4196d4, label %block_.L_419737

block_4196d4:                                     ; preds = %block_.L_4196c4
  %195 = add i64 %194, 7
  store i64 %195, i64* %3, align 8
  %196 = load i32, i32* %168, align 4
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %RAX.i763, align 8
  %198 = add nsw i64 %197, 12099168
  %199 = add i64 %194, 15
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i8*
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i64
  store i64 %202, i64* %RCX.i746, align 8
  %203 = zext i8 %201 to i32
  %204 = add nsw i32 %203, -3
  %205 = icmp ult i8 %201, 3
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %19, align 1
  %207 = and i32 %204, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %26, align 1
  %212 = xor i32 %204, %203
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %32, align 1
  %216 = icmp eq i32 %204, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %35, align 1
  %218 = lshr i32 %204, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v119 = select i1 %216, i64 74, i64 24
  %220 = add i64 %194, %.v119
  store i64 %220, i64* %3, align 8
  br i1 %216, label %block_.L_41971e, label %block_4196ec

block_4196ec:                                     ; preds = %block_4196d4
  %221 = add i64 %220, 7
  store i64 %221, i64* %3, align 8
  %222 = load i32, i32* %168, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %RAX.i763, align 8
  %224 = shl nsw i64 %223, 2
  %225 = add nsw i64 %224, 11196224
  %226 = add i64 %220, 15
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  store i8 0, i8* %19, align 1
  %229 = and i32 %228, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %234 = icmp eq i32 %228, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %35, align 1
  %236 = lshr i32 %228, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v120 = select i1 %234, i64 50, i64 21
  %238 = add i64 %220, %.v120
  store i64 %238, i64* %3, align 8
  br i1 %234, label %block_.L_41971e, label %block_419701

block_419701:                                     ; preds = %block_4196ec
  store i64 ptrtoint (%G__0x57aa60_type* @G__0x57aa60 to i64), i64* %RDI.i726, align 8
  %239 = add i64 %238, 16
  store i64 %239, i64* %3, align 8
  %240 = load i32, i32* %168, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RSI.i752, align 8
  store i8 0, i8* %AL.i718, align 1
  %242 = add i64 %238, 231087
  %243 = add i64 %238, 23
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, -8
  %246 = inttoptr i64 %245 to i64*
  store i64 %243, i64* %246, align 8
  store i64 %245, i64* %6, align 8
  store i64 %242, i64* %3, align 8
  %call2_419713 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %242, %struct.Memory* %call2_4196af)
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -9228
  %249 = load i32, i32* %EAX.i714, align 4
  %250 = load i64, i64* %3, align 8
  %251 = add i64 %250, 6
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %248 to i32*
  store i32 %249, i32* %252, align 4
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41971e

block_.L_41971e:                                  ; preds = %block_419701, %block_4196ec, %block_4196d4
  %253 = phi i64 [ %.pre58, %block_419701 ], [ %165, %block_4196ec ], [ %165, %block_4196d4 ]
  %254 = phi i64 [ %.pre57, %block_419701 ], [ %238, %block_4196ec ], [ %220, %block_4196d4 ]
  %255 = add i64 %253, -8756
  %256 = add i64 %254, 11
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, 1
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RAX.i763, align 8
  %261 = icmp eq i32 %258, -1
  %262 = icmp eq i32 %259, 0
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %19, align 1
  %265 = and i32 %259, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %26, align 1
  %270 = xor i32 %259, %258
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %32, align 1
  %274 = zext i1 %262 to i8
  store i8 %274, i8* %35, align 1
  %275 = lshr i32 %259, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %38, align 1
  %277 = lshr i32 %258, 31
  %278 = xor i32 %275, %277
  %279 = add nuw nsw i32 %278, %275
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %44, align 1
  %282 = add i64 %254, 20
  store i64 %282, i64* %3, align 8
  store i32 %259, i32* %257, align 4
  %283 = load i64, i64* %3, align 8
  %284 = add i64 %283, -110
  store i64 %284, i64* %3, align 8
  br label %block_.L_4196c4

block_.L_419737:                                  ; preds = %block_.L_4196c4
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i726, align 8
  store i8 0, i8* %AL.i718, align 1
  %285 = add i64 %194, 231033
  %286 = add i64 %194, 17
  %287 = load i64, i64* %6, align 8
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %286, i64* %289, align 8
  store i64 %288, i64* %6, align 8
  store i64 %285, i64* %3, align 8
  %call2_419743 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %285, %struct.Memory* %call2_4196af)
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -9232
  %292 = load i32, i32* %EAX.i714, align 4
  %293 = load i64, i64* %3, align 8
  %294 = add i64 %293, 6
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %295, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_41974e

block_.L_41974e:                                  ; preds = %block_.L_419737, %entry
  %296 = phi i64 [ %129, %entry ], [ %.pre59, %block_.L_419737 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %entry ], [ %call2_419743, %block_.L_419737 ]
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -44
  %299 = add i64 %296, 4
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  store i8 0, i8* %19, align 1
  %302 = and i32 %301, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %307 = icmp eq i32 %301, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %35, align 1
  %309 = lshr i32 %301, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v90 = select i1 %307, i64 192, i64 10
  %311 = add i64 %296, %.v90
  store i64 %311, i64* %3, align 8
  br i1 %307, label %block_.L_41974e.block_.L_41980e_crit_edge, label %block_419758

block_.L_41974e.block_.L_41980e_crit_edge:        ; preds = %block_.L_41974e
  %.pre83 = bitcast %union.anon* %45 to i32*
  br label %block_.L_41980e

block_419758:                                     ; preds = %block_.L_41974e
  %312 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %312, i64* %RAX.i763, align 8
  %313 = add i64 %297, -8768
  %314 = add i64 %311, 15
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  store i64 %312, i64* %315, align 8
  %316 = load i64, i64* %3, align 8
  %317 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i746, align 8
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -8772
  %321 = add i64 %316, 13
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  store i32 %317, i32* %322, align 4
  %323 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -16
  %326 = add i64 %323, 26
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RDI.i726, align 8
  %330 = add i64 %324, -24
  %331 = add i64 %323, 30
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RSI.i752, align 8
  %334 = add i64 %324, -32
  %335 = add i64 %323, 34
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RDX.i749, align 8
  %338 = add i64 %324, -44
  %339 = add i64 %323, 37
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RCX.i746, align 8
  %343 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %344 = add i64 %324, -48
  %345 = add i64 %323, 41
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %343, align 8
  %349 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0
  %350 = add i64 %324, -52
  %351 = add i64 %323, 45
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %349, align 8
  %355 = add i64 %323, 1628
  %356 = add i64 %323, 50
  %357 = load i64, i64* %6, align 8
  %358 = add i64 %357, -8
  %359 = inttoptr i64 %358 to i64*
  store i64 %356, i64* %359, align 8
  store i64 %358, i64* %6, align 8
  store i64 %355, i64* %3, align 8
  %call2_4197a1 = tail call %struct.Memory* @sub_419dd0.atari_atari_succeeded(%struct.State* nonnull %0, i64 %355, %struct.Memory* %MEMORY.2)
  %EAX.i619 = bitcast %union.anon* %45 to i32*
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -8776
  %362 = load i32, i32* %EAX.i619, align 4
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 6
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %361 to i32*
  store i32 %362, i32* %365, align 4
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -8768
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 7
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RDX.i749, align 8
  store i64 %371, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %372 = add i64 %366, -8772
  %373 = add i64 %368, 21
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i763, align 8
  store i32 %375, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %377 = add i64 %366, -8776
  %378 = add i64 %368, 35
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  store i8 0, i8* %19, align 1
  %381 = and i32 %380, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %386 = icmp eq i32 %380, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %35, align 1
  %388 = lshr i32 %380, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v91 = select i1 %386, i64 93, i64 41
  %390 = add i64 %368, %.v91
  store i64 %390, i64* %3, align 8
  br i1 %386, label %block_.L_419809, label %block_4197d5

block_4197d5:                                     ; preds = %block_419758
  store i8 0, i8* %19, align 1
  %391 = trunc i64 %371 to i32
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %397 = icmp eq i64 %371, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %35, align 1
  %399 = lshr i64 %371, 63
  %400 = trunc i64 %399 to i8
  store i8 %400, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v92 = select i1 %397, i64 38, i64 15
  %401 = add i64 %390, %.v92
  store i64 %401, i64* %3, align 8
  br i1 %397, label %block_.L_4197fb, label %block_4197e4

block_4197e4:                                     ; preds = %block_4197d5
  store i64 ptrtoint (%G__0x57aa67_type* @G__0x57aa67 to i64), i64* %RSI.i752, align 8
  store i64 %371, i64* %RDI.i726, align 8
  %402 = add i64 %401, -86260
  %403 = add i64 %401, 23
  %404 = load i64, i64* %6, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %406, align 8
  store i64 %405, i64* %6, align 8
  store i64 %402, i64* %3, align 8
  %call2_4197f6 = tail call %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* nonnull %0, i64 %402, %struct.Memory* %call2_4197a1)
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4197fb

block_.L_4197fb:                                  ; preds = %block_4197e4, %block_4197d5
  %407 = phi i64 [ %401, %block_4197d5 ], [ %.pre61, %block_4197e4 ]
  %408 = phi i64 [ %366, %block_4197d5 ], [ %.pre60, %block_4197e4 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4197a1, %block_4197d5 ], [ %call2_4197f6, %block_4197e4 ]
  %409 = add i64 %408, -8776
  %410 = add i64 %407, 6
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i763, align 8
  %414 = add i64 %408, -12
  %415 = add i64 %407, 9
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  store i32 %412, i32* %416, align 4
  %417 = load i64, i64* %3, align 8
  %418 = add i64 %417, 1464
  store i64 %418, i64* %3, align 8
  br label %block_.L_419dbc

block_.L_419809:                                  ; preds = %block_419758
  %419 = add i64 %390, 5
  store i64 %419, i64* %3, align 8
  br label %block_.L_41980e

block_.L_41980e:                                  ; preds = %block_.L_41974e.block_.L_41980e_crit_edge, %block_.L_419809
  %EAX.i587.pre-phi = phi i32* [ %.pre83, %block_.L_41974e.block_.L_41980e_crit_edge ], [ %EAX.i619, %block_.L_419809 ]
  %420 = phi i64 [ %297, %block_.L_41974e.block_.L_41980e_crit_edge ], [ %366, %block_.L_419809 ]
  %421 = phi i64 [ %311, %block_.L_41974e.block_.L_41980e_crit_edge ], [ %419, %block_.L_419809 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_41974e.block_.L_41980e_crit_edge ], [ %call2_4197a1, %block_.L_419809 ]
  %422 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX.i763, align 8
  %424 = load i32, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*), align 8
  %425 = sub i32 %422, %424
  %426 = icmp ult i32 %422, %424
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %19, align 1
  %428 = and i32 %425, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %26, align 1
  %433 = xor i32 %424, %422
  %434 = xor i32 %433, %425
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  store i8 %437, i8* %32, align 1
  %438 = icmp eq i32 %425, 0
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %35, align 1
  %440 = lshr i32 %425, 31
  %441 = trunc i32 %440 to i8
  store i8 %441, i8* %38, align 1
  %442 = lshr i32 %422, 31
  %443 = lshr i32 %424, 31
  %444 = xor i32 %443, %442
  %445 = xor i32 %440, %442
  %446 = add nuw nsw i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %44, align 1
  %449 = icmp ne i8 %441, 0
  %450 = xor i1 %449, %447
  %451 = or i1 %438, %450
  %.v93 = select i1 %451, i64 32, i64 20
  %452 = add i64 %421, %.v93
  store i64 %452, i64* %3, align 8
  br i1 %451, label %block_.L_41982e, label %block_419822

block_419822:                                     ; preds = %block_.L_41980e
  %453 = add i64 %420, -12
  %454 = add i64 %452, 7
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  store i32 0, i32* %455, align 4
  %456 = load i64, i64* %3, align 8
  %457 = add i64 %456, 1427
  store i64 %457, i64* %3, align 8
  br label %block_.L_419dbc

block_.L_41982e:                                  ; preds = %block_.L_41980e
  %458 = add i64 %420, -7296
  store i64 %458, i64* %RDX.i749, align 8
  %459 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %459, i64* %RAX.i763, align 8
  %460 = add i64 %420, -8768
  %461 = add i64 %452, 22
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  store i64 %459, i64* %462, align 8
  %463 = load i64, i64* %3, align 8
  %464 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RCX.i746, align 8
  %ECX.i570 = bitcast %union.anon* %77 to i32*
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -8772
  %468 = add i64 %463, 13
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  store i32 %464, i32* %469, align 4
  %470 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -16
  %473 = add i64 %470, 26
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RDI.i726, align 8
  %477 = add i64 %471, -52
  %478 = add i64 %470, 29
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RSI.i752, align 8
  %482 = add i64 %471, -64
  %483 = add i64 %470, 33
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RCX.i746, align 8
  %486 = add i64 %470, 2111
  %487 = add i64 %470, 38
  %488 = load i64, i64* %6, align 8
  %489 = add i64 %488, -8
  %490 = inttoptr i64 %489 to i64*
  store i64 %487, i64* %490, align 8
  store i64 %489, i64* %6, align 8
  store i64 %486, i64* %3, align 8
  %call2_419872 = tail call %struct.Memory* @sub_41a090.atari_atari_find_attack_moves(%struct.State* nonnull %0, i64 %486, %struct.Memory* %MEMORY.4)
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -8768
  %493 = load i64, i64* %3, align 8
  %494 = add i64 %493, 7
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %492 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i763, align 8
  store i64 %496, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %497 = add i64 %491, -8772
  %498 = add i64 %493, 21
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RSI.i752, align 8
  store i32 %500, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %502 = add i64 %491, -72
  %503 = add i64 %493, 35
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  store i32 0, i32* %504, align 4
  %505 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %506 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0
  %507 = bitcast i64* %6 to i32**
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_41989a

block_.L_41989a:                                  ; preds = %block_.L_419da7, %block_.L_41982e
  %508 = phi i64 [ %.pre62, %block_.L_41982e ], [ %1687, %block_.L_419da7 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_419872, %block_.L_41982e ], [ %MEMORY.27, %block_.L_419da7 ]
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -7296
  store i64 %510, i64* %RAX.i763, align 8
  %511 = add i64 %509, -72
  %512 = add i64 %508, 11
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %514 to i64
  %516 = mul nsw i64 %515, 20
  store i64 %516, i64* %RCX.i746, align 8
  %517 = lshr i64 %516, 63
  %518 = add i64 %516, %510
  store i64 %518, i64* %RAX.i763, align 8
  %519 = icmp ult i64 %518, %510
  %520 = icmp ult i64 %518, %516
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %19, align 1
  %523 = trunc i64 %518 to i32
  %524 = and i32 %523, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %26, align 1
  %529 = xor i64 %516, %510
  %530 = xor i64 %529, %518
  %531 = lshr i64 %530, 4
  %532 = trunc i64 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %32, align 1
  %534 = icmp eq i64 %518, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %35, align 1
  %536 = lshr i64 %518, 63
  %537 = trunc i64 %536 to i8
  store i8 %537, i8* %38, align 1
  %538 = lshr i64 %510, 63
  %539 = xor i64 %536, %538
  %540 = xor i64 %536, %517
  %541 = add nuw nsw i64 %539, %540
  %542 = icmp eq i64 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %44, align 1
  %544 = inttoptr i64 %518 to i32*
  %545 = add i64 %508, 21
  store i64 %545, i64* %3, align 8
  %546 = load i32, i32* %544, align 4
  store i8 0, i8* %19, align 1
  %547 = and i32 %546, 255
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %552 = icmp eq i32 %546, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %35, align 1
  %554 = lshr i32 %546, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v94 = select i1 %552, i64 1307, i64 27
  %556 = add i64 %508, %.v94
  store i64 %556, i64* %3, align 8
  br i1 %552, label %block_.L_419db5, label %block_4198b5

block_4198b5:                                     ; preds = %block_.L_41989a
  store i64 ptrtoint (%G__0x57aa74_type* @G__0x57aa74 to i64), i64* %RDX.i749, align 8
  store i64 0, i64* %RAX.i763, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  store i64 %510, i64* %RCX.i746, align 8
  %557 = add i64 %556, 23
  store i64 %557, i64* %3, align 8
  %558 = load i32, i32* %513, align 4
  %559 = sext i32 %558 to i64
  %560 = mul nsw i64 %559, 20
  store i64 %560, i64* %RSI.i752, align 8
  %561 = lshr i64 %560, 63
  %562 = add i64 %560, %510
  store i64 %562, i64* %RDI.i726, align 8
  %563 = icmp ult i64 %562, %510
  %564 = icmp ult i64 %562, %560
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %19, align 1
  %567 = trunc i64 %562 to i32
  %568 = and i32 %567, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %26, align 1
  %573 = xor i64 %560, %510
  %574 = xor i64 %573, %562
  %575 = lshr i64 %574, 4
  %576 = trunc i64 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %32, align 1
  %578 = icmp eq i64 %562, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %35, align 1
  %580 = lshr i64 %562, 63
  %581 = trunc i64 %580 to i8
  store i8 %581, i8* %38, align 1
  %582 = xor i64 %580, %538
  %583 = xor i64 %580, %561
  %584 = add nuw nsw i64 %582, %583
  %585 = icmp eq i64 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %44, align 1
  %587 = add i64 %562, 4
  %588 = add i64 %556, 37
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %505, align 8
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -8784
  %594 = add i64 %556, 44
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  store i32 %590, i32* %595, align 4
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -72
  %598 = load i64, i64* %3, align 8
  %599 = add i64 %598, 4
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %597 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  %603 = mul nsw i64 %602, 20
  store i64 %603, i64* %RSI.i752, align 8
  %604 = lshr i64 %603, 63
  %605 = load i64, i64* %RCX.i746, align 8
  %606 = add i64 %603, %605
  store i64 %606, i64* %RCX.i746, align 8
  %607 = icmp ult i64 %606, %605
  %608 = icmp ult i64 %606, %603
  %609 = or i1 %607, %608
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %19, align 1
  %611 = trunc i64 %606 to i32
  %612 = and i32 %611, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %26, align 1
  %617 = xor i64 %603, %605
  %618 = xor i64 %617, %606
  %619 = lshr i64 %618, 4
  %620 = trunc i64 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %32, align 1
  %622 = icmp eq i64 %606, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %35, align 1
  %624 = lshr i64 %606, 63
  %625 = trunc i64 %624 to i8
  store i8 %625, i8* %38, align 1
  %626 = lshr i64 %605, 63
  %627 = xor i64 %624, %626
  %628 = xor i64 %624, %604
  %629 = add nuw nsw i64 %627, %628
  %630 = icmp eq i64 %629, 2
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %44, align 1
  %632 = inttoptr i64 %606 to i32*
  %633 = add i64 %598, 14
  store i64 %633, i64* %3, align 8
  %634 = load i32, i32* %632, align 4
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %505, align 8
  %636 = add i64 %596, -8788
  %637 = add i64 %598, 21
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  store i32 %634, i32* %638, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -8788
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 6
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RDI.i726, align 8
  %646 = add i64 %639, -16
  %647 = add i64 %641, 9
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RSI.i752, align 8
  %651 = add i64 %639, -8784
  %652 = add i64 %641, 15
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RCX.i746, align 8
  %656 = load i32, i32* %EAX.i587.pre-phi, align 4
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %505, align 8
  store i64 %657, i64* %506, align 8
  %658 = add i64 %641, -68294
  %659 = add i64 %641, 26
  %660 = load i64, i64* %6, align 8
  %661 = add i64 %660, -8
  %662 = inttoptr i64 %661 to i64*
  store i64 %659, i64* %662, align 8
  store i64 %661, i64* %6, align 8
  store i64 %658, i64* %3, align 8
  %call2_41990b = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %658, %struct.Memory* %MEMORY.5)
  %663 = load i32, i32* %EAX.i587.pre-phi, align 4
  %664 = load i64, i64* %3, align 8
  store i8 0, i8* %19, align 1
  %665 = and i32 %663, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %670 = icmp eq i32 %663, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %35, align 1
  %672 = lshr i32 %663, 31
  %673 = trunc i32 %672 to i8
  store i8 %673, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v95 = select i1 %670, i64 9, i64 14
  %674 = add i64 %664, %.v95
  store i64 %674, i64* %3, align 8
  br i1 %670, label %block_419919, label %block_.L_41991e

block_419919:                                     ; preds = %block_4198b5
  %675 = add i64 %674, 1166
  %.pre71 = load i64, i64* %RBP.i, align 8
  br label %block_.L_419da7

block_.L_41991e:                                  ; preds = %block_4198b5
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -40
  %678 = add i64 %674, 5
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i8 0, i8* %19, align 1
  %681 = trunc i64 %680 to i32
  %682 = and i32 %681, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %687 = icmp eq i64 %680, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %35, align 1
  %689 = lshr i64 %680, 63
  %690 = trunc i64 %689 to i8
  store i8 %690, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v96 = select i1 %687, i64 128, i64 11
  %691 = add i64 %674, %.v96
  store i64 %691, i64* %3, align 8
  br i1 %687, label %block_.L_41999e, label %block_419929

block_419929:                                     ; preds = %block_.L_41991e
  %692 = add i64 %691, 4
  store i64 %692, i64* %3, align 8
  %693 = load i64, i64* %679, align 8
  store i64 %693, i64* %RAX.i763, align 8
  %694 = add i64 %676, -8788
  %695 = add i64 %691, 11
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  store i64 %698, i64* %RCX.i746, align 8
  %699 = add i64 %693, %698
  %700 = add i64 %691, 15
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i8*
  store i8 1, i8* %701, align 1
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -8788
  %704 = load i64, i64* %3, align 8
  %705 = add i64 %704, 6
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %703 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RDI.i726, align 8
  %709 = add i64 %704, -41400
  %710 = add i64 %704, 11
  %711 = load i64, i64* %6, align 8
  %712 = add i64 %711, -8
  %713 = inttoptr i64 %712 to i64*
  store i64 %710, i64* %713, align 8
  store i64 %712, i64* %6, align 8
  store i64 %709, i64* %3, align 8
  %call2_41993e = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %709, %struct.Memory* %MEMORY.5)
  %714 = load i32, i32* %EAX.i587.pre-phi, align 4
  %715 = load i64, i64* %3, align 8
  %716 = add i32 %714, -2
  %717 = icmp ult i32 %714, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %19, align 1
  %719 = and i32 %716, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %26, align 1
  %724 = xor i32 %716, %714
  %725 = lshr i32 %724, 4
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %32, align 1
  %728 = icmp eq i32 %716, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %35, align 1
  %730 = lshr i32 %716, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %38, align 1
  %732 = lshr i32 %714, 31
  %733 = xor i32 %730, %732
  %734 = add nuw nsw i32 %733, %732
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %44, align 1
  %737 = icmp ne i8 %731, 0
  %738 = xor i1 %737, %735
  %.demorgan = or i1 %728, %738
  %.v97 = select i1 %.demorgan, i64 9, i64 86
  %739 = add i64 %715, %.v97
  store i64 %739, i64* %3, align 8
  br i1 %.demorgan, label %block_41994c, label %block_.L_419999

block_41994c:                                     ; preds = %block_419929
  store i64 2, i64* %RSI.i752, align 8
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -8804
  store i64 %741, i64* %RDX.i749, align 8
  %742 = add i64 %740, -8788
  %743 = add i64 %739, 18
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RDI.i726, align 8
  %747 = add i64 %739, -41228
  %748 = add i64 %739, 23
  %749 = load i64, i64* %6, align 8
  %750 = add i64 %749, -8
  %751 = inttoptr i64 %750 to i64*
  store i64 %748, i64* %751, align 8
  store i64 %750, i64* %6, align 8
  store i64 %747, i64* %3, align 8
  %call2_41995e = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %747, %struct.Memory* %MEMORY.5)
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -8808
  %754 = load i32, i32* %EAX.i587.pre-phi, align 4
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, 6
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %753 to i32*
  store i32 %754, i32* %757, align 4
  %758 = load i64, i64* %RBP.i, align 8
  %759 = add i64 %758, -40
  %760 = load i64, i64* %3, align 8
  %761 = add i64 %760, 4
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %759 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RDX.i749, align 8
  %764 = add i64 %758, -8804
  %765 = add i64 %760, 11
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = sext i32 %767 to i64
  store i64 %768, i64* %RCX.i746, align 8
  %769 = add i64 %763, %768
  %770 = add i64 %760, 15
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i8*
  store i8 1, i8* %771, align 1
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -8808
  %774 = load i64, i64* %3, align 8
  %775 = add i64 %774, 7
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = add i32 %777, -2
  %779 = icmp ult i32 %777, 2
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %19, align 1
  %781 = and i32 %778, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = xor i32 %778, %777
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %32, align 1
  %790 = icmp eq i32 %778, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %35, align 1
  %792 = lshr i32 %778, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %38, align 1
  %794 = lshr i32 %777, 31
  %795 = xor i32 %792, %794
  %796 = add nuw nsw i32 %795, %794
  %797 = icmp eq i32 %796, 2
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %44, align 1
  %.v118 = select i1 %790, i64 13, i64 28
  %799 = add i64 %774, %.v118
  store i64 %799, i64* %3, align 8
  br i1 %790, label %block_419985, label %block_.L_419994

block_419985:                                     ; preds = %block_41994c
  %800 = add i64 %772, -40
  %801 = add i64 %799, 4
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %RAX.i763, align 8
  %804 = add i64 %772, -8800
  %805 = add i64 %799, 11
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = sext i32 %807 to i64
  store i64 %808, i64* %RCX.i746, align 8
  %809 = add i64 %803, %808
  %810 = add i64 %799, 15
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i8*
  store i8 1, i8* %811, align 1
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_419994

block_.L_419994:                                  ; preds = %block_41994c, %block_419985
  %812 = phi i64 [ %.pre63, %block_419985 ], [ %799, %block_41994c ]
  %813 = add i64 %812, 5
  store i64 %813, i64* %3, align 8
  br label %block_.L_419999

block_.L_419999:                                  ; preds = %block_419929, %block_.L_419994
  %814 = phi i64 [ %813, %block_.L_419994 ], [ %739, %block_419929 ]
  %815 = add i64 %814, 5
  store i64 %815, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41999e

block_.L_41999e:                                  ; preds = %block_.L_419999, %block_.L_41991e
  %816 = phi i64 [ %815, %block_.L_419999 ], [ %691, %block_.L_41991e ]
  %817 = phi i64 [ %.pre64, %block_.L_419999 ], [ %676, %block_.L_41991e ]
  %818 = add i64 %817, -8784
  %819 = add i64 %816, 7
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RAX.i763, align 8
  %823 = add nsw i64 %822, 12099168
  %824 = add i64 %816, 15
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i8*
  %826 = load i8, i8* %825, align 1
  %827 = zext i8 %826 to i64
  store i64 %827, i64* %RCX.i746, align 8
  %828 = zext i8 %826 to i32
  %829 = add nsw i32 %828, -1
  %830 = icmp eq i8 %826, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %19, align 1
  %832 = and i32 %829, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %26, align 1
  %837 = xor i32 %829, %828
  %838 = lshr i32 %837, 4
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %32, align 1
  %841 = icmp eq i32 %829, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %35, align 1
  %843 = lshr i32 %829, 31
  %844 = trunc i32 %843 to i8
  store i8 %844, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v98 = select i1 %841, i64 119, i64 24
  %845 = add i64 %816, %.v98
  store i64 %845, i64* %3, align 8
  br i1 %841, label %block_.L_419a15, label %block_4199b6

block_4199b6:                                     ; preds = %block_.L_41999e
  %846 = add i64 %845, 7
  store i64 %846, i64* %3, align 8
  %847 = load i32, i32* %820, align 4
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RAX.i763, align 8
  %849 = add nsw i64 %848, 12099168
  %850 = add i64 %845, 15
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i8*
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i64
  store i64 %853, i64* %RCX.i746, align 8
  %854 = zext i8 %852 to i32
  %855 = add nsw i32 %854, -2
  %856 = icmp ult i8 %852, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %19, align 1
  %858 = and i32 %855, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %26, align 1
  %863 = xor i32 %855, %854
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %32, align 1
  %867 = icmp eq i32 %855, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %35, align 1
  %869 = lshr i32 %855, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v99 = select i1 %867, i64 95, i64 24
  %871 = add i64 %845, %.v99
  store i64 %871, i64* %3, align 8
  br i1 %867, label %block_.L_419a15, label %block_4199ce

block_4199ce:                                     ; preds = %block_4199b6
  %872 = add i64 %817, -48
  %873 = add i64 %871, 4
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  store i8 0, i8* %19, align 1
  %876 = and i32 %875, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %881 = icmp eq i32 %875, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %35, align 1
  %883 = lshr i32 %875, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v100 = select i1 %881, i64 10, i64 31
  %885 = add i64 %871, %.v100
  store i64 %885, i64* %3, align 8
  br i1 %881, label %block_4199d8, label %block_.L_4199ed

block_4199d8:                                     ; preds = %block_4199ce
  %886 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %887 = and i32 %886, 262144
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i763, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %889 = icmp eq i32 %887, 0
  %.lobit85 = lshr exact i32 %887, 18
  %890 = trunc i32 %.lobit85 to i8
  %891 = xor i8 %890, 1
  store i8 %891, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v101 = select i1 %889, i64 44, i64 21
  %892 = add i64 %885, %.v101
  store i64 %892, i64* %3, align 8
  br i1 %889, label %block_.L_419a04, label %block_.L_4199ed

block_.L_4199ed:                                  ; preds = %block_4199ce, %block_4199d8
  %893 = phi i64 [ %892, %block_4199d8 ], [ %885, %block_4199ce ]
  store i64 ptrtoint (%G__0x57aa85_type* @G__0x57aa85 to i64), i64* %RDI.i726, align 8
  %AL.i388 = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %AL.i388, align 1
  %894 = add i64 %893, 230339
  %895 = add i64 %893, 17
  %896 = load i64, i64* %6, align 8
  %897 = add i64 %896, -8
  %898 = inttoptr i64 %897 to i64*
  store i64 %895, i64* %898, align 8
  store i64 %897, i64* %6, align 8
  store i64 %894, i64* %3, align 8
  %call2_4199f9 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %894, %struct.Memory* %MEMORY.5)
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -9236
  %901 = load i32, i32* %EAX.i587.pre-phi, align 4
  %902 = load i64, i64* %3, align 8
  %903 = add i64 %902, 6
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %900 to i32*
  store i32 %901, i32* %904, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_419a04

block_.L_419a04:                                  ; preds = %block_.L_4199ed, %block_4199d8
  %905 = phi i64 [ %.pre65, %block_.L_4199ed ], [ %892, %block_4199d8 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_4199f9, %block_.L_4199ed ], [ %MEMORY.5, %block_4199d8 ]
  %906 = add i64 %905, -48292
  %907 = add i64 %905, 5
  %908 = load i64, i64* %6, align 8
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %907, i64* %910, align 8
  store i64 %909, i64* %6, align 8
  store i64 %906, i64* %3, align 8
  %call2_419a04 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %906, %struct.Memory* %MEMORY.10)
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -12
  %913 = load i64, i64* %3, align 8
  %914 = add i64 %913, 7
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %912 to i32*
  store i32 0, i32* %915, align 4
  %916 = load i64, i64* %3, align 8
  %917 = add i64 %916, 940
  store i64 %917, i64* %3, align 8
  br label %block_.L_419dbc

block_.L_419a15:                                  ; preds = %block_4199b6, %block_.L_41999e
  %918 = phi i64 [ %871, %block_4199b6 ], [ %845, %block_.L_41999e ]
  %919 = add i64 %918, 6
  store i64 %919, i64* %3, align 8
  %920 = load i32, i32* %820, align 4
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RDI.i726, align 8
  %922 = add i64 %918, 2075
  %923 = add i64 %918, 11
  %924 = load i64, i64* %6, align 8
  %925 = add i64 %924, -8
  %926 = inttoptr i64 %925 to i64*
  store i64 %923, i64* %926, align 8
  store i64 %925, i64* %6, align 8
  store i64 %922, i64* %3, align 8
  %call2_419a1b = tail call %struct.Memory* @sub_41a230.get_aa_value(%struct.State* nonnull %0, i64 %922, %struct.Memory* %MEMORY.5)
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -8752
  %929 = load i64, i64* %3, align 8
  store i64 %928, i64* %RSI.i752, align 8
  %930 = add i64 %927, -7296
  store i64 %930, i64* %RCX.i746, align 8
  %931 = add i64 %927, -8780
  %932 = load i32, i32* %EAX.i587.pre-phi, align 4
  %933 = add i64 %929, 20
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i32*
  store i32 %932, i32* %934, align 4
  %935 = load i64, i64* %3, align 8
  %936 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %936, i64* %RDX.i749, align 8
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -8768
  %939 = add i64 %935, 15
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i64*
  store i64 %936, i64* %940, align 8
  %941 = load i64, i64* %3, align 8
  %942 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX.i763, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -8772
  %946 = add i64 %941, 13
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  store i32 %942, i32* %947, align 4
  %948 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -72
  %951 = add i64 %948, 27
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = sext i32 %953 to i64
  %955 = mul nsw i64 %954, 20
  store i64 %955, i64* %RDX.i749, align 8
  %956 = load i64, i64* %RCX.i746, align 8
  %957 = add i64 %955, %956
  %958 = lshr i64 %957, 63
  %959 = add i64 %957, 4
  store i64 %959, i64* %RCX.i746, align 8
  %960 = icmp ugt i64 %957, -5
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %19, align 1
  %962 = trunc i64 %959 to i32
  %963 = and i32 %962, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %26, align 1
  %968 = xor i64 %959, %957
  %969 = lshr i64 %968, 4
  %970 = trunc i64 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %32, align 1
  %972 = icmp eq i64 %959, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %35, align 1
  %974 = lshr i64 %959, 63
  %975 = trunc i64 %974 to i8
  store i8 %975, i8* %38, align 1
  %976 = xor i64 %974, %958
  %977 = add nuw nsw i64 %976, %974
  %978 = icmp eq i64 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %44, align 1
  store i64 %959, i64* %RDI.i726, align 8
  %980 = add i64 %948, 2176
  %981 = add i64 %948, 46
  %982 = load i64, i64* %6, align 8
  %983 = add i64 %982, -8
  %984 = inttoptr i64 %983 to i64*
  store i64 %981, i64* %984, align 8
  store i64 %983, i64* %6, align 8
  store i64 %980, i64* %3, align 8
  %call2_419a79 = tail call %struct.Memory* @sub_41a2d0.atari_atari_find_defense_moves(%struct.State* nonnull %0, i64 %980, %struct.Memory* %call2_419a1b)
  %985 = load i64, i64* %RBP.i, align 8
  %986 = add i64 %985, -7300
  %987 = load i32, i32* %EAX.i587.pre-phi, align 4
  %988 = load i64, i64* %3, align 8
  %989 = add i64 %988, 6
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %986 to i32*
  store i32 %987, i32* %990, align 4
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -8768
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 7
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %992 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %RCX.i746, align 8
  store i64 %996, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %997 = add i64 %991, -8772
  %998 = add i64 %993, 21
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i763, align 8
  store i32 %1000, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1002 = add i64 %991, -8796
  %1003 = add i64 %993, 38
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  store i32 0, i32* %1004, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_419aaa

block_.L_419aaa:                                  ; preds = %block_.L_419bd3, %block_.L_419a15
  %1005 = phi i64 [ %.pre66, %block_.L_419a15 ], [ %1317, %block_.L_419bd3 ]
  %1006 = load i64, i64* %RBP.i, align 8
  %1007 = add i64 %1006, -8796
  %1008 = add i64 %1005, 6
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RAX.i763, align 8
  %1012 = add i64 %1006, -7300
  %1013 = add i64 %1005, 12
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = sub i32 %1010, %1015
  %1017 = icmp ult i32 %1010, %1015
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %19, align 1
  %1019 = and i32 %1016, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %26, align 1
  %1024 = xor i32 %1015, %1010
  %1025 = xor i32 %1024, %1016
  %1026 = lshr i32 %1025, 4
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %32, align 1
  %1029 = icmp eq i32 %1016, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %35, align 1
  %1031 = lshr i32 %1016, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %38, align 1
  %1033 = lshr i32 %1010, 31
  %1034 = lshr i32 %1015, 31
  %1035 = xor i32 %1034, %1033
  %1036 = xor i32 %1031, %1033
  %1037 = add nuw nsw i32 %1036, %1035
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %44, align 1
  %1040 = icmp ne i8 %1032, 0
  %1041 = xor i1 %1040, %1038
  %.v102 = select i1 %1041, i64 18, i64 322
  %1042 = add i64 %1005, %.v102
  store i64 %1042, i64* %3, align 8
  br i1 %1041, label %block_419abc, label %block_.L_419bec.loopexit

block_419abc:                                     ; preds = %block_.L_419aaa
  %1043 = add i64 %1042, 7
  store i64 %1043, i64* %3, align 8
  %1044 = load i32, i32* %1009, align 4
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i763, align 8
  %1046 = shl nsw i64 %1045, 2
  %1047 = add i64 %1006, -8752
  %1048 = add i64 %1047, %1046
  %1049 = add i64 %1042, 14
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RCX.i746, align 8
  %1053 = add i64 %1006, -8792
  %1054 = add i64 %1042, 20
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  store i32 %1051, i32* %1055, align 4
  %1056 = load i64, i64* %RBP.i, align 8
  %1057 = add i64 %1056, -40
  %1058 = load i64, i64* %3, align 8
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1057 to i64*
  %1061 = load i64, i64* %1060, align 8
  store i8 0, i8* %19, align 1
  %1062 = trunc i64 %1061 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1068 = icmp eq i64 %1061, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %35, align 1
  %1070 = lshr i64 %1061, 63
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v115 = select i1 %1068, i64 26, i64 11
  %1072 = add i64 %1058, %.v115
  store i64 %1072, i64* %3, align 8
  br i1 %1068, label %block_.L_419aea, label %block_419adb

block_419adb:                                     ; preds = %block_419abc
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %3, align 8
  %1074 = load i64, i64* %1060, align 8
  store i64 %1074, i64* %RAX.i763, align 8
  %1075 = add i64 %1056, -8792
  %1076 = add i64 %1072, 11
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = sext i32 %1078 to i64
  store i64 %1079, i64* %RCX.i746, align 8
  %1080 = add i64 %1074, %1079
  %1081 = add i64 %1072, 15
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i8*
  store i8 1, i8* %1082, align 1
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %block_.L_419aea

block_.L_419aea:                                  ; preds = %block_419adb, %block_419abc
  %1083 = phi i64 [ %.pre68, %block_419adb ], [ %1056, %block_419abc ]
  %1084 = phi i64 [ %.pre67, %block_419adb ], [ %1072, %block_419abc ]
  store i64 ptrtoint (%G__0x57aaad_type* @G__0x57aaad to i64), i64* %RDX.i749, align 8
  store i64 0, i64* %RAX.i763, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %1085 = add i64 %1083, -8792
  %1086 = add i64 %1084, 18
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RDI.i726, align 8
  %1090 = add i64 %1083, -68
  %1091 = add i64 %1084, 21
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RSI.i752, align 8
  %1095 = add i64 %1083, -8784
  %1096 = add i64 %1084, 27
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i746, align 8
  store i64 0, i64* %505, align 8
  store i64 0, i64* %506, align 8
  %1100 = add i64 %1084, -68794
  %1101 = add i64 %1084, 38
  %1102 = load i64, i64* %6, align 8
  %1103 = add i64 %1102, -8
  %1104 = inttoptr i64 %1103 to i64*
  store i64 %1101, i64* %1104, align 8
  store i64 %1103, i64* %6, align 8
  store i64 %1100, i64* %3, align 8
  %call2_419b0b = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1100, %struct.Memory* %call2_419a79)
  %1105 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1106 = load i64, i64* %3, align 8
  store i8 0, i8* %19, align 1
  %1107 = and i32 %1105, 255
  %1108 = tail call i32 @llvm.ctpop.i32(i32 %1107)
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  %1111 = xor i8 %1110, 1
  store i8 %1111, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1112 = icmp eq i32 %1105, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %35, align 1
  %1114 = lshr i32 %1105, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v116 = select i1 %1112, i64 177, i64 9
  %1116 = add i64 %1106, %.v116
  store i64 %1116, i64* %3, align 8
  br i1 %1112, label %block_.L_419bc1, label %block_419b19

block_419b19:                                     ; preds = %block_.L_419aea
  store i64 2, i64* %RDI.i726, align 8
  %1117 = add i64 %1116, 383415
  %1118 = add i64 %1116, 10
  %1119 = load i64, i64* %6, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1118, i64* %1121, align 8
  store i64 %1120, i64* %6, align 8
  store i64 %1117, i64* %3, align 8
  %call2_419b1e = tail call %struct.Memory* @sub_4774d0.modify_depth_values(%struct.State* nonnull %0, i64 %1117, %struct.Memory* %call2_419a79)
  %1122 = load i64, i64* %RBP.i, align 8
  %1123 = add i64 %1122, -9216
  %1124 = load i64, i64* %3, align 8
  store i64 %1123, i64* %RSI.i752, align 8
  %1125 = add i64 %1122, -64
  %1126 = add i64 %1124, 11
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %RDI.i726, align 8
  %1129 = add i64 %1122, -8788
  %1130 = add i64 %1124, 17
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RDX.i749, align 8
  %1134 = add i64 %1122, -16
  %1135 = add i64 %1124, 20
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RCX.i746, align 8
  %1139 = add i64 %1124, 3197
  %1140 = add i64 %1124, 25
  %1141 = load i64, i64* %6, align 8
  %1142 = add i64 %1141, -8
  %1143 = inttoptr i64 %1142 to i64*
  store i64 %1140, i64* %1143, align 8
  store i64 %1142, i64* %6, align 8
  store i64 %1139, i64* %3, align 8
  %call2_419b37 = tail call %struct.Memory* @sub_41a7a0.update_aa_goal(%struct.State* nonnull %0, i64 %1139, %struct.Memory* %call2_419a79)
  %1144 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i746, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  store i64 0, i64* %RSI.i752, align 8
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -9216
  store i64 %1146, i64* %RDI.i726, align 8
  %1147 = add i64 %1145, -16
  %1148 = add i64 %1144, 14
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RCX.i746, align 8
  %1152 = add i64 %1145, -32
  %1153 = add i64 %1144, 18
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i64*
  %1155 = load i64, i64* %1154, align 8
  store i64 %1155, i64* %RDX.i749, align 8
  %1156 = add i64 %1145, -40
  %1157 = add i64 %1144, 22
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i64*
  %1159 = load i64, i64* %1158, align 8
  store i64 %1159, i64* %505, align 8
  %1160 = add i64 %1145, -8788
  %1161 = add i64 %1144, 29
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %506, align 8
  %1165 = add i64 %1145, -48
  %1166 = add i64 %1144, 33
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %52, align 8
  %1170 = add i64 %1145, -52
  %1171 = add i64 %1144, 37
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %59, align 8
  %1175 = add i64 %1145, -9248
  %1176 = add i64 %1144, 44
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  store i64 %1146, i64* %1177, align 8
  %1178 = load i32, i32* %ECX.i570, align 4
  %1179 = zext i32 %1178 to i64
  %1180 = load i64, i64* %3, align 8
  store i64 %1179, i64* %RDI.i726, align 8
  %1181 = load i64, i64* %505, align 8
  store i64 %1181, i64* %RCX.i746, align 8
  %1182 = load i32, i32* %R9D.i740, align 4
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %505, align 8
  %1184 = load i32, i32* %R10D.i760, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %506, align 8
  %1186 = load i32*, i32** %507, align 8
  %1187 = load i32, i32* %R11D.i758, align 4
  %1188 = add i64 %1180, 15
  store i64 %1188, i64* %3, align 8
  store i32 %1187, i32* %1186, align 4
  %1189 = load i64, i64* %RBP.i, align 8
  %1190 = add i64 %1189, -9248
  %1191 = load i64, i64* %3, align 8
  %1192 = add i64 %1191, 7
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1190 to i64*
  %1194 = load i64, i64* %1193, align 8
  store i64 %1194, i64* %RBX.i768, align 8
  %1195 = load i64, i64* %6, align 8
  %1196 = add i64 %1195, 8
  %1197 = add i64 %1191, 12
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  store i64 %1194, i64* %1198, align 8
  %1199 = load i64, i64* %RBP.i, align 8
  %1200 = add i64 %1199, -9252
  %1201 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1202 = load i64, i64* %3, align 8
  %1203 = add i64 %1202, 6
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1200 to i32*
  store i32 %1201, i32* %1204, align 4
  %1205 = load i64, i64* %3, align 8
  %1206 = add i64 %1205, -1369
  %1207 = add i64 %1205, 5
  %1208 = load i64, i64* %6, align 8
  %1209 = add i64 %1208, -8
  %1210 = inttoptr i64 %1209 to i64*
  store i64 %1207, i64* %1210, align 8
  store i64 %1209, i64* %6, align 8
  store i64 %1206, i64* %3, align 8
  %call2_419b89 = tail call %struct.Memory* @sub_419630.do_atari_atari(%struct.State* nonnull %0, i64 %1206, %struct.Memory* %call2_419a79)
  %1211 = load i64, i64* %3, align 8
  store i64 4294967294, i64* %RDI.i726, align 8
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -8812
  %1214 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1215 = add i64 %1211, 11
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1213 to i32*
  store i32 %1214, i32* %1216, align 4
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, 383287
  %1219 = add i64 %1217, 5
  %1220 = load i64, i64* %6, align 8
  %1221 = add i64 %1220, -8
  %1222 = inttoptr i64 %1221 to i64*
  store i64 %1219, i64* %1222, align 8
  store i64 %1221, i64* %6, align 8
  store i64 %1218, i64* %3, align 8
  %call2_419b99 = tail call %struct.Memory* @sub_4774d0.modify_depth_values(%struct.State* nonnull %0, i64 %1218, %struct.Memory* %call2_419a79)
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -8812
  %1225 = load i64, i64* %3, align 8
  %1226 = add i64 %1225, 6
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RAX.i763, align 8
  %1230 = add i64 %1223, -8780
  %1231 = add i64 %1225, 12
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = sub i32 %1228, %1233
  %1235 = icmp ult i32 %1228, %1233
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %19, align 1
  %1237 = and i32 %1234, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %26, align 1
  %1242 = xor i32 %1233, %1228
  %1243 = xor i32 %1242, %1234
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %32, align 1
  %1247 = icmp eq i32 %1234, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %35, align 1
  %1249 = lshr i32 %1234, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %38, align 1
  %1251 = lshr i32 %1228, 31
  %1252 = lshr i32 %1233, 31
  %1253 = xor i32 %1252, %1251
  %1254 = xor i32 %1249, %1251
  %1255 = add nuw nsw i32 %1254, %1253
  %1256 = icmp eq i32 %1255, 2
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %44, align 1
  %1258 = icmp ne i8 %1250, 0
  %1259 = xor i1 %1258, %1256
  %.v117 = select i1 %1259, i64 18, i64 30
  %1260 = add i64 %1225, %.v117
  store i64 %1260, i64* %3, align 8
  br i1 %1259, label %block_419bb0, label %block_.L_419bbc

block_419bb0:                                     ; preds = %block_419b19
  %1261 = add i64 %1260, 6
  store i64 %1261, i64* %3, align 8
  %1262 = load i32, i32* %1227, align 4
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RAX.i763, align 8
  %1264 = add i64 %1260, 12
  store i64 %1264, i64* %3, align 8
  store i32 %1262, i32* %1232, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_419bbc

block_.L_419bbc:                                  ; preds = %block_419b19, %block_419bb0
  %1265 = phi i64 [ %1260, %block_419b19 ], [ %.pre69, %block_419bb0 ]
  %1266 = add i64 %1265, -48732
  %1267 = add i64 %1265, 5
  %1268 = load i64, i64* %6, align 8
  %1269 = add i64 %1268, -8
  %1270 = inttoptr i64 %1269 to i64*
  store i64 %1267, i64* %1270, align 8
  store i64 %1269, i64* %6, align 8
  store i64 %1266, i64* %3, align 8
  %call2_419bbc = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1266, %struct.Memory* %call2_419a79)
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_419bc1

block_.L_419bc1:                                  ; preds = %block_.L_419bbc, %block_.L_419aea
  %1271 = phi i64 [ %.pre70, %block_.L_419bbc ], [ %1116, %block_.L_419aea ]
  %1272 = load i64, i64* %RBP.i, align 8
  %1273 = add i64 %1272, -8780
  %1274 = add i64 %1271, 7
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  store i8 0, i8* %19, align 1
  %1277 = and i32 %1276, 255
  %1278 = tail call i32 @llvm.ctpop.i32(i32 %1277)
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1282 = icmp eq i32 %1276, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %35, align 1
  %1284 = lshr i32 %1276, 31
  %1285 = trunc i32 %1284 to i8
  store i8 %1285, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v = select i1 %1282, i64 13, i64 18
  %1286 = add i64 %1271, %.v
  store i64 %1286, i64* %3, align 8
  br i1 %1282, label %block_419bce, label %block_.L_419bd3

block_419bce:                                     ; preds = %block_.L_419bc1
  %1287 = add i64 %1286, 30
  store i64 %1287, i64* %3, align 8
  br label %block_.L_419bec

block_.L_419bd3:                                  ; preds = %block_.L_419bc1
  %1288 = add i64 %1272, -8796
  %1289 = add i64 %1286, 11
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = add i32 %1291, 1
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i763, align 8
  %1294 = icmp eq i32 %1291, -1
  %1295 = icmp eq i32 %1292, 0
  %1296 = or i1 %1294, %1295
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %19, align 1
  %1298 = and i32 %1292, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %26, align 1
  %1303 = xor i32 %1292, %1291
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %32, align 1
  %1307 = zext i1 %1295 to i8
  store i8 %1307, i8* %35, align 1
  %1308 = lshr i32 %1292, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %38, align 1
  %1310 = lshr i32 %1291, 31
  %1311 = xor i32 %1308, %1310
  %1312 = add nuw nsw i32 %1311, %1308
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %44, align 1
  %1315 = add i64 %1286, 20
  store i64 %1315, i64* %3, align 8
  store i32 %1292, i32* %1290, align 4
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, -317
  store i64 %1317, i64* %3, align 8
  br label %block_.L_419aaa

block_.L_419bec.loopexit:                         ; preds = %block_.L_419aaa
  br label %block_.L_419bec

block_.L_419bec:                                  ; preds = %block_.L_419bec.loopexit, %block_419bce
  %1318 = phi i64 [ %1287, %block_419bce ], [ %1042, %block_.L_419bec.loopexit ]
  %1319 = add i64 %1318, -48780
  %1320 = add i64 %1318, 5
  %1321 = load i64, i64* %6, align 8
  %1322 = add i64 %1321, -8
  %1323 = inttoptr i64 %1322 to i64*
  store i64 %1320, i64* %1323, align 8
  store i64 %1322, i64* %6, align 8
  store i64 %1319, i64* %3, align 8
  %call2_419bec = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1319, %struct.Memory* %call2_419a79)
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -8780
  %1326 = load i64, i64* %3, align 8
  %1327 = add i64 %1326, 7
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1325 to i32*
  %1329 = load i32, i32* %1328, align 4
  store i8 0, i8* %19, align 1
  %1330 = and i32 %1329, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1335 = icmp eq i32 %1329, 0
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %35, align 1
  %1337 = lshr i32 %1329, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v103 = select i1 %1335, i64 13, i64 18
  %1339 = add i64 %1326, %.v103
  store i64 %1339, i64* %3, align 8
  br i1 %1335, label %block_419bfe, label %block_.L_419c03

block_419bfe:                                     ; preds = %block_.L_419bec
  %1340 = add i64 %1339, 425
  %1341 = add i64 %1339, 5
  store i64 %1341, i64* %3, align 8
  br label %block_.L_419da7

block_.L_419c03:                                  ; preds = %block_.L_419bec
  %1342 = add i64 %1324, -7300
  %1343 = add i64 %1339, 7
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  store i8 0, i8* %19, align 1
  %1346 = and i32 %1345, 255
  %1347 = tail call i32 @llvm.ctpop.i32(i32 %1346)
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  store i8 %1350, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1351 = icmp eq i32 %1345, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %35, align 1
  %1353 = lshr i32 %1345, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v104 = select i1 %1351, i64 13, i64 127
  %1355 = add i64 %1339, %.v104
  store i64 %1355, i64* %3, align 8
  br i1 %1351, label %block_419c10, label %block_.L_419c82

block_419c10:                                     ; preds = %block_.L_419c03
  %1356 = add i64 %1324, -48
  %1357 = add i64 %1355, 4
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  store i8 0, i8* %19, align 1
  %1360 = and i32 %1359, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1365 = icmp eq i32 %1359, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %35, align 1
  %1367 = lshr i32 %1359, 31
  %1368 = trunc i32 %1367 to i8
  store i8 %1368, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v112 = select i1 %1365, i64 10, i64 31
  %1369 = add i64 %1355, %.v112
  store i64 %1369, i64* %3, align 8
  br i1 %1365, label %block_419c1a, label %block_.L_419c2f

block_419c1a:                                     ; preds = %block_419c10
  %1370 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1371 = and i32 %1370, 262144
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX.i763, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1373 = icmp eq i32 %1371, 0
  %.lobit86 = lshr exact i32 %1371, 18
  %1374 = trunc i32 %.lobit86 to i8
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v114 = select i1 %1373, i64 61, i64 21
  %1376 = add i64 %1369, %.v114
  store i64 %1376, i64* %3, align 8
  br i1 %1373, label %block_.L_419c57, label %block_.L_419c2f

block_.L_419c2f:                                  ; preds = %block_419c10, %block_419c1a
  %1377 = phi i64 [ %1376, %block_419c1a ], [ %1369, %block_419c10 ]
  store i64 ptrtoint (%G__0x57aabe_type* @G__0x57aabe to i64), i64* %RDI.i726, align 8
  %1378 = add i64 %1324, -8784
  %1379 = add i64 %1377, 16
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RSI.i752, align 8
  %1383 = add i64 %1324, -8788
  %1384 = add i64 %1377, 22
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RDX.i749, align 8
  %AL.i145 = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %AL.i145, align 1
  %1388 = add i64 %1377, 229761
  %1389 = add i64 %1377, 29
  %1390 = load i64, i64* %6, align 8
  %1391 = add i64 %1390, -8
  %1392 = inttoptr i64 %1391 to i64*
  store i64 %1389, i64* %1392, align 8
  store i64 %1391, i64* %6, align 8
  store i64 %1388, i64* %3, align 8
  %call2_419c47 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1388, %struct.Memory* %call2_419bec)
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -9256
  %1395 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1396 = load i64, i64* %3, align 8
  %1397 = add i64 %1396, 6
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1394 to i32*
  store i32 %1395, i32* %1398, align 4
  %1399 = load i64, i64* %3, align 8
  %1400 = add i64 %1399, -66338
  %1401 = add i64 %1399, 5
  %1402 = load i64, i64* %6, align 8
  %1403 = add i64 %1402, -8
  %1404 = inttoptr i64 %1403 to i64*
  store i64 %1401, i64* %1404, align 8
  store i64 %1403, i64* %6, align 8
  store i64 %1400, i64* %3, align 8
  %call2_419c52 = tail call %struct.Memory* @sub_409930.dump_stack(%struct.State* nonnull %0, i64 %1400, %struct.Memory* %call2_419c47)
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_419c57

block_.L_419c57:                                  ; preds = %block_.L_419c2f, %block_419c1a
  %1405 = phi i64 [ %.pre72, %block_.L_419c2f ], [ %1376, %block_419c1a ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_419c52, %block_.L_419c2f ], [ %call2_419bec, %block_419c1a ]
  %1406 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %19, align 1
  %1407 = trunc i64 %1406 to i32
  %1408 = and i32 %1407, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1413 = icmp eq i64 %1406, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %35, align 1
  %1415 = lshr i64 %1406, 63
  %1416 = trunc i64 %1415 to i8
  store i8 %1416, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v113 = select i1 %1413, i64 38, i64 15
  %1417 = add i64 %1405, %.v113
  store i64 %1417, i64* %3, align 8
  br i1 %1413, label %block_.L_419c7d, label %block_419c66

block_419c66:                                     ; preds = %block_.L_419c57
  store i64 ptrtoint (%G__0x57aa67_type* @G__0x57aa67 to i64), i64* %RSI.i752, align 8
  store i64 %1406, i64* %RDI.i726, align 8
  %1418 = add i64 %1417, -87414
  %1419 = add i64 %1417, 23
  %1420 = load i64, i64* %6, align 8
  %1421 = add i64 %1420, -8
  %1422 = inttoptr i64 %1421 to i64*
  store i64 %1419, i64* %1422, align 8
  store i64 %1421, i64* %6, align 8
  store i64 %1418, i64* %3, align 8
  %call2_419c78 = tail call %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* nonnull %0, i64 %1418, %struct.Memory* %MEMORY.18)
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_419c7d

block_.L_419c7d:                                  ; preds = %block_419c66, %block_.L_419c57
  %1423 = phi i64 [ %1417, %block_.L_419c57 ], [ %.pre73, %block_419c66 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_419c57 ], [ %call2_419c78, %block_419c66 ]
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %block_.L_419c82

block_.L_419c82:                                  ; preds = %block_.L_419c03, %block_.L_419c7d
  %1425 = phi i64 [ %1355, %block_.L_419c03 ], [ %1424, %block_.L_419c7d ]
  %1426 = phi i64 [ %1324, %block_.L_419c03 ], [ %.pre74, %block_.L_419c7d ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_419bec, %block_.L_419c03 ], [ %MEMORY.19, %block_.L_419c7d ]
  %1427 = add i64 %1426, -24
  %1428 = add i64 %1425, 5
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i8 0, i8* %19, align 1
  %1431 = trunc i64 %1430 to i32
  %1432 = and i32 %1431, 255
  %1433 = tail call i32 @llvm.ctpop.i32(i32 %1432)
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  store i8 %1436, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1437 = icmp eq i64 %1430, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %35, align 1
  %1439 = lshr i64 %1430, 63
  %1440 = trunc i64 %1439 to i8
  store i8 %1440, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v105 = select i1 %1437, i64 23, i64 11
  %1441 = add i64 %1425, %.v105
  store i64 %1441, i64* %3, align 8
  br i1 %1437, label %block_.L_419c99, label %block_419c8d

block_419c8d:                                     ; preds = %block_.L_419c82
  %1442 = add i64 %1426, -8788
  %1443 = add i64 %1441, 6
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RAX.i763, align 8
  %1447 = add i64 %1441, 10
  store i64 %1447, i64* %3, align 8
  %1448 = load i64, i64* %1429, align 8
  store i64 %1448, i64* %RCX.i746, align 8
  %1449 = add i64 %1441, 12
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  store i32 %1445, i32* %1450, align 4
  %.pre75 = load i64, i64* %RBP.i, align 8
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_419c99

block_.L_419c99:                                  ; preds = %block_419c8d, %block_.L_419c82
  %1451 = phi i64 [ %.pre76, %block_419c8d ], [ %1441, %block_.L_419c82 ]
  %1452 = phi i64 [ %.pre75, %block_419c8d ], [ %1426, %block_.L_419c82 ]
  %1453 = add i64 %1452, -32
  %1454 = add i64 %1451, 5
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i8 0, i8* %19, align 1
  %1457 = trunc i64 %1456 to i32
  %1458 = and i32 %1457, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1463 = icmp eq i64 %1456, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %35, align 1
  %1465 = lshr i64 %1456, 63
  %1466 = trunc i64 %1465 to i8
  store i8 %1466, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v106 = select i1 %1463, i64 195, i64 11
  %1467 = add i64 %1451, %.v106
  store i64 %1467, i64* %3, align 8
  br i1 %1463, label %block_.L_419d5c, label %block_419ca4

block_419ca4:                                     ; preds = %block_.L_419c99
  %1468 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %1468, i64* %RAX.i763, align 8
  %1469 = add i64 %1452, -8768
  %1470 = add i64 %1467, 15
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i64*
  store i64 %1468, i64* %1471, align 8
  %1472 = load i64, i64* %3, align 8
  %1473 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RCX.i746, align 8
  %1475 = load i64, i64* %RBP.i, align 8
  %1476 = add i64 %1475, -8772
  %1477 = add i64 %1472, 13
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  store i32 %1473, i32* %1478, align 4
  %1479 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1480 = load i64, i64* %RBP.i, align 8
  %1481 = add i64 %1480, -8784
  %1482 = add i64 %1479, 29
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = zext i32 %1484 to i64
  store i64 %1485, i64* %RDI.i726, align 8
  %1486 = add i64 %1480, -32
  %1487 = add i64 %1479, 33
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RSI.i752, align 8
  %1490 = add i64 %1479, 330432
  %1491 = add i64 %1479, 38
  %1492 = load i64, i64* %6, align 8
  %1493 = add i64 %1492, -8
  %1494 = inttoptr i64 %1493 to i64*
  store i64 %1491, i64* %1494, align 8
  store i64 %1493, i64* %6, align 8
  store i64 %1490, i64* %3, align 8
  %call2_419ce1 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %1490, %struct.Memory* %MEMORY.20)
  %1495 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1496 = load i64, i64* %3, align 8
  store i8 0, i8* %19, align 1
  %1497 = and i32 %1495, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1502 = icmp eq i32 %1495, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %35, align 1
  %1504 = lshr i32 %1495, 31
  %1505 = trunc i32 %1504 to i8
  store i8 %1505, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v107 = select i1 %1502, i64 9, i64 19
  %1506 = add i64 %1496, %.v107
  store i64 %1506, i64* %3, align 8
  br i1 %1502, label %block_419cef, label %block_.L_419cf9

block_419cef:                                     ; preds = %block_419ca4
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -32
  %1509 = add i64 %1506, 4
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i64*
  %1511 = load i64, i64* %1510, align 8
  store i64 %1511, i64* %RAX.i763, align 8
  %1512 = add i64 %1506, 10
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  store i32 0, i32* %1513, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_419cf9

block_.L_419cf9:                                  ; preds = %block_419ca4, %block_419cef
  %1514 = phi i64 [ %.pre77, %block_419cef ], [ %1506, %block_419ca4 ]
  %1515 = load i64, i64* %RBP.i, align 8
  %1516 = add i64 %1515, -32
  %1517 = add i64 %1514, 4
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i64*
  %1519 = load i64, i64* %1518, align 8
  store i64 %1519, i64* %RAX.i763, align 8
  %1520 = add i64 %1514, 7
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  store i8 0, i8* %19, align 1
  %1523 = and i32 %1522, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1528 = icmp eq i32 %1522, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %35, align 1
  %1530 = lshr i32 %1522, 31
  %1531 = trunc i32 %1530 to i8
  store i8 %1531, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v108 = select i1 %1528, i64 36, i64 13
  %1532 = add i64 %1514, %.v108
  store i64 %1532, i64* %3, align 8
  br i1 %1528, label %block_.L_419d1d, label %block_419d06

block_419d06:                                     ; preds = %block_.L_419cf9
  %1533 = add i64 %1532, 4
  store i64 %1533, i64* %3, align 8
  %1534 = load i64, i64* %1518, align 8
  store i64 %1534, i64* %RAX.i763, align 8
  %1535 = add i64 %1532, 6
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RDI.i726, align 8
  %1539 = add i64 %1515, -68
  %1540 = add i64 %1532, 9
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RSI.i752, align 8
  %1544 = add i64 %1532, 335658
  %1545 = add i64 %1532, 14
  %1546 = load i64, i64* %6, align 8
  %1547 = add i64 %1546, -8
  %1548 = inttoptr i64 %1547 to i64*
  store i64 %1545, i64* %1548, align 8
  store i64 %1547, i64* %6, align 8
  store i64 %1544, i64* %3, align 8
  %call2_419d0f = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %1544, %struct.Memory* %call2_419ce1)
  %1549 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1550 = load i64, i64* %3, align 8
  store i8 0, i8* %19, align 1
  %1551 = and i32 %1549, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1556 = icmp eq i32 %1549, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %35, align 1
  %1558 = lshr i32 %1549, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v109 = select i1 %1556, i64 9, i64 44
  %1560 = add i64 %1550, %.v109
  store i64 %1560, i64* %3, align 8
  br i1 %1556, label %block_419d06.block_.L_419d1d_crit_edge, label %block_.L_419d40

block_419d06.block_.L_419d1d_crit_edge:           ; preds = %block_419d06
  %.pre78 = load i64, i64* %RBP.i, align 8
  br label %block_.L_419d1d

block_.L_419d1d:                                  ; preds = %block_419d06.block_.L_419d1d_crit_edge, %block_.L_419cf9
  %1561 = phi i64 [ %1532, %block_.L_419cf9 ], [ %1560, %block_419d06.block_.L_419d1d_crit_edge ]
  %1562 = phi i64 [ %1515, %block_.L_419cf9 ], [ %.pre78, %block_419d06.block_.L_419d1d_crit_edge ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_419ce1, %block_.L_419cf9 ], [ %call2_419d0f, %block_419d06.block_.L_419d1d_crit_edge ]
  %1563 = add i64 %1562, -8788
  %1564 = add i64 %1561, 6
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RDI.i726, align 8
  %1568 = add i64 %1562, -68
  %1569 = add i64 %1561, 9
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RSI.i752, align 8
  %1573 = add i64 %1561, 335635
  %1574 = add i64 %1561, 14
  %1575 = load i64, i64* %6, align 8
  %1576 = add i64 %1575, -8
  %1577 = inttoptr i64 %1576 to i64*
  store i64 %1574, i64* %1577, align 8
  store i64 %1576, i64* %6, align 8
  store i64 %1573, i64* %3, align 8
  %call2_419d26 = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %1573, %struct.Memory* %MEMORY.23)
  %1578 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1579 = load i64, i64* %3, align 8
  store i8 0, i8* %19, align 1
  %1580 = and i32 %1578, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1585 = icmp eq i32 %1578, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %35, align 1
  %1587 = lshr i32 %1578, 31
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v111 = select i1 %1585, i64 21, i64 9
  %1589 = add i64 %1579, %.v111
  store i64 %1589, i64* %3, align 8
  br i1 %1585, label %block_.L_419d40, label %block_419d34

block_419d34:                                     ; preds = %block_.L_419d1d
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -8788
  %1592 = add i64 %1589, 6
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i763, align 8
  %1596 = add i64 %1590, -32
  %1597 = add i64 %1589, 10
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  %1599 = load i64, i64* %1598, align 8
  store i64 %1599, i64* %RCX.i746, align 8
  %1600 = add i64 %1589, 12
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  store i32 %1594, i32* %1601, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_419d40

block_.L_419d40:                                  ; preds = %block_419d06, %block_419d34, %block_.L_419d1d
  %1602 = phi i64 [ %1589, %block_.L_419d1d ], [ %.pre79, %block_419d34 ], [ %1560, %block_419d06 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_419d26, %block_.L_419d1d ], [ %call2_419d26, %block_419d34 ], [ %call2_419d0f, %block_419d06 ]
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -8768
  %1605 = add i64 %1602, 7
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i64*
  %1607 = load i64, i64* %1606, align 8
  store i64 %1607, i64* %RAX.i763, align 8
  store i64 %1607, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %1608 = add i64 %1603, -8772
  %1609 = add i64 %1602, 21
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i32*
  %1611 = load i32, i32* %1610, align 4
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %RCX.i746, align 8
  %1613 = add i64 %1602, 28
  store i64 %1613, i64* %3, align 8
  store i32 %1611, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  br label %block_.L_419d5c

block_.L_419d5c:                                  ; preds = %block_.L_419d40, %block_.L_419c99
  %1614 = phi i64 [ %1452, %block_.L_419c99 ], [ %1603, %block_.L_419d40 ]
  %1615 = phi i64 [ %1467, %block_.L_419c99 ], [ %1613, %block_.L_419d40 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.20, %block_.L_419c99 ], [ %MEMORY.24, %block_.L_419d40 ]
  %1616 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1617 = and i32 %1616, 262144
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i763, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %.lobit87 = lshr exact i32 %1617, 18
  %1619 = trunc i32 %.lobit87 to i8
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1621 = icmp eq i8 %1620, 0
  %.v110 = select i1 %1621, i64 26, i64 21
  %1622 = add i64 %1615, %.v110
  store i64 %1622, i64* %3, align 8
  br i1 %1621, label %block_.L_419d76, label %block_419d71

block_419d71:                                     ; preds = %block_.L_419d5c
  %1623 = add i64 %1622, 40
  store i64 %1623, i64* %3, align 8
  br label %block_.L_419d99

block_.L_419d76:                                  ; preds = %block_.L_419d5c
  store i64 ptrtoint (%G__0x57aaeb_type* @G__0x57aaeb to i64), i64* %RDI.i726, align 8
  %1624 = add i64 %1614, -8780
  %1625 = add i64 %1622, 16
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RSI.i752, align 8
  %1629 = add i64 %1614, -8784
  %1630 = add i64 %1622, 22
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RDX.i749, align 8
  %AL.i = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %AL.i, align 1
  %1634 = add i64 %1622, 229434
  %1635 = add i64 %1622, 29
  %1636 = load i64, i64* %6, align 8
  %1637 = add i64 %1636, -8
  %1638 = inttoptr i64 %1637 to i64*
  store i64 %1635, i64* %1638, align 8
  store i64 %1637, i64* %6, align 8
  store i64 %1634, i64* %3, align 8
  %call2_419d8e = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1634, %struct.Memory* %MEMORY.25)
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -9260
  %1641 = load i32, i32* %EAX.i587.pre-phi, align 4
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1640 to i32*
  store i32 %1641, i32* %1644, align 4
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_419d99

block_.L_419d99:                                  ; preds = %block_.L_419d76, %block_419d71
  %1645 = phi i64 [ %.pre81, %block_.L_419d76 ], [ %1623, %block_419d71 ]
  %1646 = phi i64 [ %.pre80, %block_.L_419d76 ], [ %1614, %block_419d71 ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_419d8e, %block_.L_419d76 ], [ %MEMORY.25, %block_419d71 ]
  %1647 = add i64 %1646, -8780
  %1648 = add i64 %1645, 6
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RAX.i763, align 8
  %1652 = add i64 %1646, -12
  %1653 = add i64 %1645, 9
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  store i32 %1650, i32* %1654, align 4
  %1655 = load i64, i64* %3, align 8
  %1656 = add i64 %1655, 26
  store i64 %1656, i64* %3, align 8
  br label %block_.L_419dbc

block_.L_419da7:                                  ; preds = %block_419bfe, %block_419919
  %1657 = phi i64 [ %.pre71, %block_419919 ], [ %1324, %block_419bfe ]
  %storemerge = phi i64 [ %675, %block_419919 ], [ %1340, %block_419bfe ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.5, %block_419919 ], [ %call2_419bec, %block_419bfe ]
  %1658 = add i64 %1657, -72
  %1659 = add i64 %storemerge, 3
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = add i32 %1661, 1
  %1663 = zext i32 %1662 to i64
  store i64 %1663, i64* %RAX.i763, align 8
  %1664 = icmp eq i32 %1661, -1
  %1665 = icmp eq i32 %1662, 0
  %1666 = or i1 %1664, %1665
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %19, align 1
  %1668 = and i32 %1662, 255
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %26, align 1
  %1673 = xor i32 %1662, %1661
  %1674 = lshr i32 %1673, 4
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %32, align 1
  %1677 = zext i1 %1665 to i8
  store i8 %1677, i8* %35, align 1
  %1678 = lshr i32 %1662, 31
  %1679 = trunc i32 %1678 to i8
  store i8 %1679, i8* %38, align 1
  %1680 = lshr i32 %1661, 31
  %1681 = xor i32 %1678, %1680
  %1682 = add nuw nsw i32 %1681, %1678
  %1683 = icmp eq i32 %1682, 2
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %44, align 1
  %1685 = add i64 %storemerge, 9
  store i64 %1685, i64* %3, align 8
  store i32 %1662, i32* %1660, align 4
  %1686 = load i64, i64* %3, align 8
  %1687 = add i64 %1686, -1302
  store i64 %1687, i64* %3, align 8
  br label %block_.L_41989a

block_.L_419db5:                                  ; preds = %block_.L_41989a
  %1688 = add i64 %509, -12
  %1689 = add i64 %556, 7
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i32*
  store i32 0, i32* %1690, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_419dbc

block_.L_419dbc:                                  ; preds = %block_.L_419db5, %block_.L_419d99, %block_.L_419a04, %block_419822, %block_.L_4197fb
  %1691 = phi i64 [ %.pre82, %block_.L_419db5 ], [ %1656, %block_.L_419d99 ], [ %917, %block_.L_419a04 ], [ %457, %block_419822 ], [ %418, %block_.L_4197fb ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.5, %block_.L_419db5 ], [ %MEMORY.26, %block_.L_419d99 ], [ %call2_419a04, %block_.L_419a04 ], [ %MEMORY.4, %block_419822 ], [ %MEMORY.3, %block_.L_4197fb ]
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -12
  %1694 = add i64 %1691, 3
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RAX.i763, align 8
  %1698 = load i64, i64* %6, align 8
  %1699 = add i64 %1698, 9272
  store i64 %1699, i64* %6, align 8
  %1700 = icmp ugt i64 %1698, -9273
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %19, align 1
  %1702 = trunc i64 %1699 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %26, align 1
  %1708 = xor i64 %1698, 16
  %1709 = xor i64 %1708, %1699
  %1710 = lshr i64 %1709, 4
  %1711 = trunc i64 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %32, align 1
  %1713 = icmp eq i64 %1699, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %35, align 1
  %1715 = lshr i64 %1699, 63
  %1716 = trunc i64 %1715 to i8
  store i8 %1716, i8* %38, align 1
  %1717 = lshr i64 %1698, 63
  %1718 = xor i64 %1715, %1717
  %1719 = add nuw nsw i64 %1718, %1715
  %1720 = icmp eq i64 %1719, 2
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %44, align 1
  %1722 = add i64 %1691, 11
  store i64 %1722, i64* %3, align 8
  %1723 = add i64 %1698, 9280
  %1724 = inttoptr i64 %1699 to i64*
  %1725 = load i64, i64* %1724, align 8
  store i64 %1725, i64* %RBX.i768, align 8
  store i64 %1723, i64* %6, align 8
  %1726 = add i64 %1691, 12
  store i64 %1726, i64* %3, align 8
  %1727 = add i64 %1698, 9288
  %1728 = inttoptr i64 %1723 to i64*
  %1729 = load i64, i64* %1728, align 8
  store i64 %1729, i64* %RBP.i, align 8
  store i64 %1727, i64* %6, align 8
  %1730 = add i64 %1691, 13
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1727 to i64*
  %1732 = load i64, i64* %1731, align 8
  store i64 %1732, i64* %3, align 8
  %1733 = add i64 %1698, 9296
  store i64 %1733, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x2438___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -9272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 9272
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
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movl__0x3___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x10__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R11D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -16
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x40000___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 262144
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 18
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_je_.L_41974e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57aa39___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aa39_type* @G__0x57aa39 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x2404__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dump_stack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57aa4c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aa4c_type* @G__0x57aa4c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x2234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8756
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x2234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8756
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
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
define %struct.Memory* @routine_jge_.L_419737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2234__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8756
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
define %struct.Memory* @routine_je_.L_41971e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xaad740___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11196224
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
define %struct.Memory* @routine_movq__0x57aa60___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aa60_type* @G__0x57aa60 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2234__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8756
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
define %struct.Memory* @routine_movl__eax__MINUS0x240c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419723(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2234__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8756
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
define %struct.Memory* @routine_movl__eax__MINUS0x2234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8756
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4196c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2410__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_41980e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xab0ef8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x2240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8768
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0eec___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8772
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_callq_.atari_atari_succeeded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8776
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2240__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2244__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8772
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
define %struct.Memory* @routine_movl__eax__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8776
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
define %struct.Memory* @routine_je_.L_419809(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
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
define %struct.Memory* @routine_je_.L_4197fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57aa67___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aa67_type* @G__0x57aa67 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0ef8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgftreeAddComment(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2248__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8776
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
define %struct.Memory* @routine_jmpq_.L_419dbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41980e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb54ce8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_41982e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1c80__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_callq_.atari_atari_find_attack_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x2240__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2244__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8772
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
define %struct.Memory* @routine_movl__esi__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
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
define %struct.Memory* @routine_leaq_MINUS0x1c80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_imulq__0x14___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419db5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57aa74___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aa74_type* @G__0x57aa74 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x1c80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_imulq__0x14___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x4__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_movl__r8d__MINUS0x2250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8784
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl___rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2254__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8788
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2254__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8788
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl_MINUS0x2250__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8784
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
define %struct.Memory* @routine_jne_.L_41991e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419da7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41999e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2254__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8788
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
define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_419999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2264__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8804
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x2268__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8808
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2264__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8804
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
define %struct.Memory* @routine_movb__0x1____rdx__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x2268__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8808
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
define %struct.Memory* @routine_jne_.L_419994(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2260__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8800
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
define %struct.Memory* @routine_jmpq_.L_419999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41999e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2250__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8784
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
define %struct.Memory* @routine_je_.L_419a15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jne_.L_4199ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x40000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 262144
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 18
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
define %struct.Memory* @routine_je_.L_419a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57aa85___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aa85_type* @G__0x57aa85 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2414__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x2250__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8784
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
define %struct.Memory* @routine_callq_.get_aa_value(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2230__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x224c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8780
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0ef8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x2240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8768
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0eec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8772
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_imulq__0x14___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_callq_.atari_atari_find_defense_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -7300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2240__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x225c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8796
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x225c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8796
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
define %struct.Memory* @routine_cmpl_MINUS0x1c84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -7300
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
define %struct.Memory* @routine_jge_.L_419bec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x225c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8796
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
define %struct.Memory* @routine_movl_MINUS0x2230__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -8752
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8792
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419aea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2258__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8792
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
define %struct.Memory* @routine_movq__0x57aaad___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aaad_type* @G__0x57aaad to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2258__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8792
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_je_.L_419bc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.modify_depth_values(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2400__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -9216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2254__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8788
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
define %struct.Memory* @routine_callq_.update_aa_goal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2400__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -9216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2254__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8788
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movq__rdi__MINUS0x2420__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -9248
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2420__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -9248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2424__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.do_atari_atari(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xfffffffe___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967294, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x226c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8812
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x226c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8812
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
define %struct.Memory* @routine_cmpl_MINUS0x224c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8780
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
define %struct.Memory* @routine_jge_.L_419bbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x224c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8780
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
define %struct.Memory* @routine_jne_.L_419bd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419bec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419bd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x225c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8796
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419aaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419c03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -7300
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
define %struct.Memory* @routine_jne_.L_419c82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419c2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_419c57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57aabe___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aabe_type* @G__0x57aabe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2250__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8784
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
define %struct.Memory* @routine_movl__eax__MINUS0x2428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419c7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419c82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419c99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2254__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8788
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
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419d5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419cf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_419d1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.safe_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419d40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_419d40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2244__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8772
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
define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419d76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419d99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57aaeb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57aaeb_type* @G__0x57aaeb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x224c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8780
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
define %struct.Memory* @routine_movl_MINUS0x2250__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8784
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
define %struct.Memory* @routine_movl__eax__MINUS0x242c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -9260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x224c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8780
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41989a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2438___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 9272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -9273
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
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
