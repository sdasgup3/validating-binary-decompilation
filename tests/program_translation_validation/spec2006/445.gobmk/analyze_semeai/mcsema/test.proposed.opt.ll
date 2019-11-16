; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x58062f_type = type <{ [8 x i8] }>
%G__0x580658_type = type <{ [8 x i8] }>
%G__0x580685_type = type <{ [8 x i8] }>
%G__0x5806b3_type = type <{ [8 x i8] }>
%G__0x5806e5_type = type <{ [8 x i8] }>
%G__0x580718_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G__0x58062f = global %G__0x58062f_type zeroinitializer
@G__0x580658 = global %G__0x580658_type zeroinitializer
@G__0x580685 = global %G__0x580685_type zeroinitializer
@G__0x5806b3 = global %G__0x5806b3_type zeroinitializer
@G__0x5806e5 = global %G__0x5806e5_type zeroinitializer
@G__0x580718 = global %G__0x580718_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d3c0.owl_substantial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_470290.update_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @analyze_semeai(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -776
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 768
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2282 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i2282, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -12
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 1, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -16
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 1, i32* %60, align 4
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -20
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 7
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %62 to i32*
  store i32 0, i32* %65, align 4
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  store i32 0, i32* %70, align 4
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -28
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2269 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %RAX.i2269, align 8
  %RSI.i2267 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %84 = add nsw i64 %83, 12099168
  %85 = add i64 %79, 12
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i8*
  %87 = load i8, i8* %86, align 1
  %88 = add i64 %77, -32
  %89 = zext i8 %87 to i32
  %90 = add i64 %79, 15
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -36
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 7
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 3, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -40
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 7
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 3, i32* %101, align 4
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -44
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 7
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i32*
  store i32 0, i32* %106, align 4
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -48
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 7
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i32*
  store i32 0, i32* %111, align 4
  %112 = load i64, i64* %3, align 8
  %113 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %114 = and i32 %113, 64
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RSI.i2267, align 8
  store i8 0, i8* %14, align 1
  %116 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %117 = trunc i32 %116 to i8
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit224 = lshr exact i32 %114, 6
  %119 = trunc i32 %.lobit224 to i8
  %120 = xor i8 %119, 1
  store i8 %120, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %121 = icmp eq i8 %120, 0
  %.v238 = select i1 %121, i64 24, i64 19
  %122 = add i64 %112, %.v238
  store i64 %122, i64* %3, align 8
  br i1 %121, label %block_.L_46ee47, label %block_46ee42

block_46ee42:                                     ; preds = %entry
  %123 = add i64 %122, 34
  store i64 %123, i64* %3, align 8
  br label %block_.L_46ee64

block_.L_46ee47:                                  ; preds = %entry
  %RDI.i2245 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x58062f_type* @G__0x58062f to i64), i64* %RDI.i2245, align 8
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -4
  %126 = add i64 %122, 13
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RSI.i2267, align 8
  %RDX.i2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %130 = add i64 %124, -8
  %131 = add i64 %122, 16
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RDX.i2239, align 8
  %AL.i2237 = bitcast %union.anon* %76 to i8*
  store i8 0, i8* %AL.i2237, align 1
  %135 = add i64 %122, -118935
  %136 = add i64 %122, 23
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %6, align 8
  store i64 %135, i64* %3, align 8
  %call2_46ee59 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %135, %struct.Memory* %2)
  %EAX.i2233 = bitcast %union.anon* %76 to i32*
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -736
  %142 = load i32, i32* %EAX.i2233, align 4
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 6
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %141 to i32*
  store i32 %142, i32* %145, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_46ee64

block_.L_46ee64:                                  ; preds = %block_.L_46ee47, %block_46ee42
  %146 = phi i64 [ %.pre, %block_.L_46ee47 ], [ %123, %block_46ee42 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_46ee59, %block_.L_46ee47 ], [ %2, %block_46ee42 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %RCX.i2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -4
  %149 = add i64 %146, 14
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, 76
  store i64 %153, i64* %RCX.i2228, align 8
  %154 = lshr i64 %153, 63
  %155 = add i64 %153, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %155, i64* %RAX.i2269, align 8
  %156 = icmp ult i64 %155, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %157 = icmp ult i64 %155, %153
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %14, align 1
  %160 = trunc i64 %155 to i32
  %161 = and i32 %160, 252
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %21, align 1
  %166 = xor i64 %153, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %167 = xor i64 %166, %155
  %168 = lshr i64 %167, 4
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %26, align 1
  %171 = icmp eq i64 %155, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %29, align 1
  %173 = lshr i64 %155, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %32, align 1
  %175 = xor i64 %173, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %176 = xor i64 %173, %154
  %177 = add nuw nsw i64 %175, %176
  %178 = icmp eq i64 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %38, align 1
  %180 = add i64 %153, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %181 = add i64 %146, 25
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, -2
  %185 = icmp ult i32 %183, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %184, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %184, %183
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %26, align 1
  %196 = icmp eq i32 %184, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %29, align 1
  %198 = lshr i32 %184, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %32, align 1
  %200 = lshr i32 %183, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %200
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %38, align 1
  %.v239 = select i1 %196, i64 31, i64 323
  %205 = add i64 %146, %.v239
  store i64 %205, i64* %3, align 8
  br i1 %196, label %block_46ee83, label %block_.L_46efa7

block_46ee83:                                     ; preds = %block_.L_46ee64
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -8
  %208 = add i64 %205, 14
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %211, 76
  store i64 %212, i64* %RCX.i2228, align 8
  %213 = lshr i64 %212, 63
  %214 = add i64 %212, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %214, i64* %RAX.i2269, align 8
  %215 = icmp ult i64 %214, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %216 = icmp ult i64 %214, %212
  %217 = or i1 %215, %216
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %14, align 1
  %219 = trunc i64 %214 to i32
  %220 = and i32 %219, 252
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %21, align 1
  %225 = xor i64 %212, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %226 = xor i64 %225, %214
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %26, align 1
  %230 = icmp eq i64 %214, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %29, align 1
  %232 = lshr i64 %214, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %32, align 1
  %234 = xor i64 %232, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %235 = xor i64 %232, %213
  %236 = add nuw nsw i64 %234, %235
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1
  %239 = add i64 %212, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %240 = add i64 %205, 25
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, -2
  %244 = icmp ult i32 %242, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %14, align 1
  %246 = and i32 %243, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %21, align 1
  %251 = xor i32 %243, %242
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %26, align 1
  %255 = icmp eq i32 %243, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %29, align 1
  %257 = lshr i32 %243, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %32, align 1
  %259 = lshr i32 %242, 31
  %260 = xor i32 %257, %259
  %261 = add nuw nsw i32 %260, %259
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %38, align 1
  %.v341 = select i1 %255, i64 31, i64 292
  %264 = add i64 %205, %.v341
  store i64 %264, i64* %3, align 8
  br i1 %255, label %block_46eea2, label %block_.L_46efa7

block_46eea2:                                     ; preds = %block_46ee83
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -8
  %267 = add i64 %264, 14
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = mul nsw i64 %270, 76
  store i64 %271, i64* %RCX.i2228, align 8
  %272 = lshr i64 %271, 63
  %RDX.i2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %273 = add i64 %271, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %273, i64* %RDX.i2198, align 8
  %274 = icmp ult i64 %273, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %275 = icmp ult i64 %273, %271
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = trunc i64 %273 to i32
  %279 = and i32 %278, 252
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %21, align 1
  %284 = xor i64 %271, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %285 = xor i64 %284, %273
  %286 = lshr i64 %285, 4
  %287 = trunc i64 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %26, align 1
  %289 = icmp eq i64 %273, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %29, align 1
  %291 = lshr i64 %273, 63
  %292 = trunc i64 %291 to i8
  store i8 %292, i8* %32, align 1
  %293 = xor i64 %291, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %294 = xor i64 %291, %272
  %295 = add nuw nsw i64 %293, %294
  %296 = icmp eq i64 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %38, align 1
  %298 = add i64 %271, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %299 = add i64 %264, 27
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RSI.i2267, align 8
  %303 = add i64 %265, -4
  %304 = add i64 %264, 31
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = mul nsw i64 %307, 76
  store i64 %308, i64* %RCX.i2228, align 8
  %309 = lshr i64 %308, 63
  %310 = load i64, i64* %RAX.i2269, align 8
  %311 = add i64 %308, %310
  store i64 %311, i64* %RAX.i2269, align 8
  %312 = icmp ult i64 %311, %310
  %313 = icmp ult i64 %311, %308
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %14, align 1
  %316 = trunc i64 %311 to i32
  %317 = and i32 %316, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %21, align 1
  %322 = xor i64 %308, %310
  %323 = xor i64 %322, %311
  %324 = lshr i64 %323, 4
  %325 = trunc i64 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %26, align 1
  %327 = icmp eq i64 %311, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %29, align 1
  %329 = lshr i64 %311, 63
  %330 = trunc i64 %329 to i8
  store i8 %330, i8* %32, align 1
  %331 = lshr i64 %310, 63
  %332 = xor i64 %329, %331
  %333 = xor i64 %329, %309
  %334 = add nuw nsw i64 %332, %333
  %335 = icmp eq i64 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %38, align 1
  %337 = add i64 %311, 48
  %338 = add i64 %264, 41
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = sub i32 %301, %340
  %342 = icmp ult i32 %301, %340
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = and i32 %341, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %21, align 1
  %349 = xor i32 %340, %301
  %350 = xor i32 %349, %341
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %26, align 1
  %354 = icmp eq i32 %341, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %29, align 1
  %356 = lshr i32 %341, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %32, align 1
  %358 = lshr i32 %301, 31
  %359 = lshr i32 %340, 31
  %360 = xor i32 %359, %358
  %361 = xor i32 %356, %358
  %362 = add nuw nsw i32 %361, %360
  %363 = icmp eq i32 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %38, align 1
  %.v342 = select i1 %354, i64 47, i64 52
  %365 = add i64 %264, %.v342
  store i64 %365, i64* %3, align 8
  br i1 %354, label %block_46eed1, label %block_.L_46eed6

block_46eed1:                                     ; preds = %block_46eea2
  %366 = add i64 %365, 4691
  br label %block_.L_470124.sink.split

block_.L_46eed6:                                  ; preds = %block_46eea2
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -4
  %369 = add i64 %365, 14
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = mul nsw i64 %372, 76
  store i64 %373, i64* %RCX.i2228, align 8
  %374 = lshr i64 %373, 63
  %375 = add i64 %373, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %375, i64* %RAX.i2269, align 8
  %376 = icmp ult i64 %375, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %377 = icmp ult i64 %375, %373
  %378 = or i1 %376, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1
  %380 = trunc i64 %375 to i32
  %381 = and i32 %380, 252
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %21, align 1
  %386 = xor i64 %373, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %387 = xor i64 %386, %375
  %388 = lshr i64 %387, 4
  %389 = trunc i64 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %26, align 1
  %391 = icmp eq i64 %375, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %29, align 1
  %393 = lshr i64 %375, 63
  %394 = trunc i64 %393 to i8
  store i8 %394, i8* %32, align 1
  %395 = xor i64 %393, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %396 = xor i64 %393, %374
  %397 = add nuw nsw i64 %395, %396
  %398 = icmp eq i64 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %38, align 1
  %400 = add i64 %373, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %401 = add i64 %365, 25
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  store i8 0, i8* %14, align 1
  %404 = and i32 %403, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %409 = icmp eq i32 %403, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %29, align 1
  %411 = lshr i32 %403, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v343 = select i1 %409, i64 204, i64 31
  %413 = add i64 %365, %.v343
  store i64 %413, i64* %3, align 8
  br i1 %409, label %block_.L_46efa2, label %block_46eef5

block_46eef5:                                     ; preds = %block_.L_46eed6
  %EAX.i2162 = bitcast %union.anon* %76 to i32*
  store i64 0, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i2198, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i2228, align 8
  %414 = add i64 %413, 18
  store i64 %414, i64* %3, align 8
  %415 = load i32, i32* %370, align 4
  %416 = sext i32 %415 to i64
  %417 = mul nsw i64 %416, 76
  store i64 %417, i64* %RSI.i2267, align 8
  %418 = lshr i64 %417, 63
  %419 = add i64 %417, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %419, i64* %RCX.i2228, align 8
  %420 = icmp ult i64 %419, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %421 = icmp ult i64 %419, %417
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = trunc i64 %419 to i32
  %425 = and i32 %424, 252
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  %430 = xor i64 %417, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %431 = xor i64 %430, %419
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %26, align 1
  %435 = icmp eq i64 %419, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %29, align 1
  %437 = lshr i64 %419, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %32, align 1
  %439 = xor i64 %437, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %440 = xor i64 %437, %418
  %441 = add nuw nsw i64 %439, %440
  %442 = icmp eq i64 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %38, align 1
  %RDI.i2147 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %444 = add i64 %417, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %445 = add i64 %413, 28
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RDI.i2147, align 8
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -8
  %451 = add i64 %413, 31
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RSI.i2267, align 8
  %455 = add i64 %413, -140229
  %456 = add i64 %413, 36
  %457 = load i64, i64* %6, align 8
  %458 = add i64 %457, -8
  %459 = inttoptr i64 %458 to i64*
  store i64 %456, i64* %459, align 8
  store i64 %458, i64* %6, align 8
  store i64 %455, i64* %3, align 8
  %call2_46ef14 = tail call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* nonnull %0, i64 %455, %struct.Memory* %MEMORY.0)
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -56
  %462 = load i32, i32* %EAX.i2162, align 4
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 3
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %461 to i32*
  store i32 %462, i32* %465, align 4
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -56
  %468 = load i64, i64* %3, align 8
  %469 = add i64 %468, 4
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470, align 4
  store i8 0, i8* %14, align 1
  %472 = and i32 %471, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %477 = icmp eq i32 %471, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %29, align 1
  %479 = lshr i32 %471, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v344 = select i1 %477, i64 129, i64 10
  %481 = add i64 %468, %.v344
  store i64 %481, i64* %3, align 8
  br i1 %477, label %block_.L_46ef9d, label %block_46ef26

block_46ef26:                                     ; preds = %block_46eef5
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %482 = add i64 %466, -4
  %483 = add i64 %481, 14
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  %487 = mul nsw i64 %486, 76
  store i64 %487, i64* %RCX.i2228, align 8
  %488 = lshr i64 %487, 63
  %489 = add i64 %487, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %489, i64* %RAX.i2269, align 8
  %490 = icmp ult i64 %489, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %491 = icmp ult i64 %489, %487
  %492 = or i1 %490, %491
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %14, align 1
  %494 = trunc i64 %489 to i32
  %495 = and i32 %494, 252
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  %500 = xor i64 %487, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %501 = xor i64 %500, %489
  %502 = lshr i64 %501, 4
  %503 = trunc i64 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %26, align 1
  %505 = icmp eq i64 %489, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %29, align 1
  %507 = lshr i64 %489, 63
  %508 = trunc i64 %507 to i8
  store i8 %508, i8* %32, align 1
  %509 = xor i64 %507, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %510 = xor i64 %507, %488
  %511 = add nuw nsw i64 %509, %510
  %512 = icmp eq i64 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %38, align 1
  %514 = add i64 %487, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %515 = add i64 %481, 24
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RDI.i2147, align 8
  %519 = add i64 %466, -8
  %520 = add i64 %481, 27
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RSI.i2267, align 8
  %524 = add i64 %481, 30
  store i64 %524, i64* %3, align 8
  %525 = load i32, i32* %470, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RDX.i2198, align 8
  %527 = add i64 %481, -239782
  %528 = add i64 %481, 35
  %529 = load i64, i64* %6, align 8
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %528, i64* %531, align 8
  store i64 %530, i64* %6, align 8
  store i64 %527, i64* %3, align 8
  %call2_46ef44 = tail call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* nonnull %0, i64 %527, %struct.Memory* %call2_46ef14)
  %532 = load i64, i64* %3, align 8
  %533 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %534 = and i32 %533, 64
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RDX.i2198, align 8
  store i8 0, i8* %14, align 1
  %536 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %537 = trunc i32 %536 to i8
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit225 = lshr exact i32 %534, 6
  %539 = trunc i32 %.lobit225 to i8
  %540 = xor i8 %539, 1
  store i8 %540, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %541 = icmp eq i8 %540, 0
  %.v345 = select i1 %541, i64 24, i64 19
  %542 = add i64 %532, %.v345
  store i64 %542, i64* %3, align 8
  br i1 %541, label %block_.L_46ef61, label %block_46ef5c

block_46ef5c:                                     ; preds = %block_46ef26
  %543 = add i64 %542, 58
  store i64 %543, i64* %3, align 8
  br label %block_.L_46ef96

block_.L_46ef61:                                  ; preds = %block_46ef26
  store i64 ptrtoint (%G__0x580658_type* @G__0x580658 to i64), i64* %RDI.i2147, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -8
  %546 = add i64 %542, 23
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RSI.i2267, align 8
  %550 = add i64 %544, -4
  %551 = add i64 %542, 27
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = mul nsw i64 %554, 76
  store i64 %555, i64* %RCX.i2228, align 8
  %556 = lshr i64 %555, 63
  %557 = add i64 %555, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %557, i64* %RAX.i2269, align 8
  %558 = icmp ult i64 %557, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %559 = icmp ult i64 %557, %555
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %14, align 1
  %562 = trunc i64 %557 to i32
  %563 = and i32 %562, 252
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %21, align 1
  %568 = xor i64 %555, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %569 = xor i64 %568, %557
  %570 = lshr i64 %569, 4
  %571 = trunc i64 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %26, align 1
  %573 = icmp eq i64 %557, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %29, align 1
  %575 = lshr i64 %557, 63
  %576 = trunc i64 %575 to i8
  store i8 %576, i8* %32, align 1
  %577 = xor i64 %575, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %578 = xor i64 %575, %556
  %579 = add nuw nsw i64 %577, %578
  %580 = icmp eq i64 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %38, align 1
  %582 = add i64 %555, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %583 = add i64 %542, 37
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RDX.i2198, align 8
  %587 = add i64 %544, -56
  %588 = add i64 %542, 40
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RCX.i2228, align 8
  %AL.i2085 = bitcast %union.anon* %76 to i8*
  store i8 0, i8* %AL.i2085, align 1
  %592 = add i64 %542, -119217
  %593 = add i64 %542, 47
  %594 = load i64, i64* %6, align 8
  %595 = add i64 %594, -8
  %596 = inttoptr i64 %595 to i64*
  store i64 %593, i64* %596, align 8
  store i64 %595, i64* %6, align 8
  store i64 %592, i64* %3, align 8
  %call2_46ef8b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %592, %struct.Memory* %call2_46ef44)
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -740
  %599 = load i32, i32* %EAX.i2162, align 4
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, 6
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %598 to i32*
  store i32 %599, i32* %602, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_46ef96

block_.L_46ef96:                                  ; preds = %block_.L_46ef61, %block_46ef5c
  %603 = phi i64 [ %.pre178, %block_.L_46ef61 ], [ %543, %block_46ef5c ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_46ef8b, %block_.L_46ef61 ], [ %call2_46ef44, %block_46ef5c ]
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -48
  %606 = add i64 %603, 7
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  store i32 1, i32* %607, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_46ef9d

block_.L_46ef9d:                                  ; preds = %block_.L_46ef96, %block_46eef5
  %608 = phi i64 [ %481, %block_46eef5 ], [ %.pre179, %block_.L_46ef96 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_46ef14, %block_46eef5 ], [ %MEMORY.1, %block_.L_46ef96 ]
  %609 = add i64 %608, 5
  store i64 %609, i64* %3, align 8
  br label %block_.L_46efa2

block_.L_46efa2:                                  ; preds = %block_.L_46ef9d, %block_.L_46eed6
  %610 = phi i64 [ %413, %block_.L_46eed6 ], [ %609, %block_.L_46ef9d ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_46eed6 ], [ %MEMORY.2, %block_.L_46ef9d ]
  %611 = add i64 %610, 5
  store i64 %611, i64* %3, align 8
  br label %block_.L_46efa7

block_.L_46efa7:                                  ; preds = %block_46ee83, %block_.L_46ee64, %block_.L_46efa2
  %612 = phi i64 [ %205, %block_.L_46ee64 ], [ %264, %block_46ee83 ], [ %611, %block_.L_46efa2 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_.L_46ee64 ], [ %MEMORY.0, %block_46ee83 ], [ %MEMORY.3, %block_.L_46efa2 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -4
  %615 = add i64 %612, 14
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = mul nsw i64 %618, 76
  store i64 %619, i64* %RCX.i2228, align 8
  %620 = lshr i64 %619, 63
  %621 = add i64 %619, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %621, i64* %RAX.i2269, align 8
  %622 = icmp ult i64 %621, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %623 = icmp ult i64 %621, %619
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = trunc i64 %621 to i32
  %627 = and i32 %626, 252
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %21, align 1
  %632 = xor i64 %619, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %633 = xor i64 %632, %621
  %634 = lshr i64 %633, 4
  %635 = trunc i64 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %26, align 1
  %637 = icmp eq i64 %621, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %29, align 1
  %639 = lshr i64 %621, 63
  %640 = trunc i64 %639 to i8
  store i8 %640, i8* %32, align 1
  %641 = xor i64 %639, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %642 = xor i64 %639, %620
  %643 = add nuw nsw i64 %641, %642
  %644 = icmp eq i64 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %38, align 1
  %646 = add i64 %619, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %647 = add i64 %612, 25
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = add i32 %649, -2
  %651 = icmp ult i32 %649, 2
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = and i32 %650, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i32 %650, %649
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %26, align 1
  %662 = icmp eq i32 %650, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i32 %650, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %32, align 1
  %666 = lshr i32 %649, 31
  %667 = xor i32 %664, %666
  %668 = add nuw nsw i32 %667, %666
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %38, align 1
  %.v240 = select i1 %662, i64 62, i64 31
  %671 = add i64 %612, %.v240
  store i64 %671, i64* %3, align 8
  br i1 %662, label %block_.L_46efa7.block_.L_46efe5_crit_edge, label %block_46efc6

block_.L_46efa7.block_.L_46efe5_crit_edge:        ; preds = %block_.L_46efa7
  %.pre180 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46efe5

block_46efc6:                                     ; preds = %block_.L_46efa7
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -4
  %674 = add i64 %671, 14
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = sext i32 %676 to i64
  %678 = mul nsw i64 %677, 76
  store i64 %678, i64* %RCX.i2228, align 8
  %679 = lshr i64 %678, 63
  %680 = add i64 %678, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %680, i64* %RAX.i2269, align 8
  %681 = icmp ult i64 %680, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %682 = icmp ult i64 %680, %678
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %14, align 1
  %685 = trunc i64 %680 to i32
  %686 = and i32 %685, 252
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  %691 = xor i64 %678, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %692 = xor i64 %691, %680
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %26, align 1
  %696 = icmp eq i64 %680, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %29, align 1
  %698 = lshr i64 %680, 63
  %699 = trunc i64 %698 to i8
  store i8 %699, i8* %32, align 1
  %700 = xor i64 %698, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %701 = xor i64 %698, %679
  %702 = add nuw nsw i64 %700, %701
  %703 = icmp eq i64 %702, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %38, align 1
  %705 = add i64 %678, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %706 = add i64 %671, 25
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  store i8 0, i8* %14, align 1
  %709 = and i32 %708, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %714 = icmp eq i32 %708, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %29, align 1
  %716 = lshr i32 %708, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v241 = select i1 %714, i64 31, i64 575
  %718 = add i64 %671, %.v241
  store i64 %718, i64* %3, align 8
  br i1 %714, label %block_.L_46efe5, label %block_.L_46f205

block_.L_46efe5:                                  ; preds = %block_46efc6, %block_.L_46efa7.block_.L_46efe5_crit_edge
  %719 = phi i64 [ %672, %block_46efc6 ], [ %.pre180, %block_.L_46efa7.block_.L_46efe5_crit_edge ]
  %720 = phi i64 [ %718, %block_46efc6 ], [ %671, %block_.L_46efa7.block_.L_46efe5_crit_edge ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %721 = add i64 %719, -8
  %722 = add i64 %720, 14
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = sext i32 %724 to i64
  %726 = mul nsw i64 %725, 76
  store i64 %726, i64* %RCX.i2228, align 8
  %727 = lshr i64 %726, 63
  %728 = add i64 %726, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %728, i64* %RAX.i2269, align 8
  %729 = icmp ult i64 %728, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %730 = icmp ult i64 %728, %726
  %731 = or i1 %729, %730
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %14, align 1
  %733 = trunc i64 %728 to i32
  %734 = and i32 %733, 252
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %21, align 1
  %739 = xor i64 %726, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %740 = xor i64 %739, %728
  %741 = lshr i64 %740, 4
  %742 = trunc i64 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %26, align 1
  %744 = icmp eq i64 %728, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %29, align 1
  %746 = lshr i64 %728, 63
  %747 = trunc i64 %746 to i8
  store i8 %747, i8* %32, align 1
  %748 = xor i64 %746, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %749 = xor i64 %746, %727
  %750 = add nuw nsw i64 %748, %749
  %751 = icmp eq i64 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %38, align 1
  %753 = add i64 %726, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %754 = add i64 %720, 25
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = add i32 %756, -2
  %758 = icmp ult i32 %756, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %14, align 1
  %760 = and i32 %757, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %21, align 1
  %765 = xor i32 %757, %756
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %26, align 1
  %769 = icmp eq i32 %757, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %29, align 1
  %771 = lshr i32 %757, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %32, align 1
  %773 = lshr i32 %756, 31
  %774 = xor i32 %771, %773
  %775 = add nuw nsw i32 %774, %773
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %38, align 1
  %.v330 = select i1 %769, i64 31, i64 544
  %778 = add i64 %720, %.v330
  store i64 %778, i64* %3, align 8
  br i1 %769, label %block_46f004, label %block_.L_46f205

block_46f004:                                     ; preds = %block_.L_46efe5
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -8
  %781 = add i64 %778, 14
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = sext i32 %783 to i64
  %785 = mul nsw i64 %784, 76
  store i64 %785, i64* %RCX.i2228, align 8
  %786 = lshr i64 %785, 63
  %RDX.i2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %787 = add i64 %785, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %787, i64* %RDX.i2029, align 8
  %788 = icmp ult i64 %787, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %789 = icmp ult i64 %787, %785
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %14, align 1
  %792 = trunc i64 %787 to i32
  %793 = and i32 %792, 252
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %21, align 1
  %798 = xor i64 %785, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %799 = xor i64 %798, %787
  %800 = lshr i64 %799, 4
  %801 = trunc i64 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %26, align 1
  %803 = icmp eq i64 %787, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %29, align 1
  %805 = lshr i64 %787, 63
  %806 = trunc i64 %805 to i8
  store i8 %806, i8* %32, align 1
  %807 = xor i64 %805, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %808 = xor i64 %805, %786
  %809 = add nuw nsw i64 %807, %808
  %810 = icmp eq i64 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %38, align 1
  %812 = add i64 %785, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %813 = add i64 %778, 27
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RSI.i2267, align 8
  %817 = add i64 %779, -4
  %818 = add i64 %778, 31
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = sext i32 %820 to i64
  %822 = mul nsw i64 %821, 76
  store i64 %822, i64* %RCX.i2228, align 8
  %823 = lshr i64 %822, 63
  %824 = load i64, i64* %RAX.i2269, align 8
  %825 = add i64 %822, %824
  store i64 %825, i64* %RAX.i2269, align 8
  %826 = icmp ult i64 %825, %824
  %827 = icmp ult i64 %825, %822
  %828 = or i1 %826, %827
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %14, align 1
  %830 = trunc i64 %825 to i32
  %831 = and i32 %830, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831)
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %21, align 1
  %836 = xor i64 %822, %824
  %837 = xor i64 %836, %825
  %838 = lshr i64 %837, 4
  %839 = trunc i64 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %26, align 1
  %841 = icmp eq i64 %825, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %29, align 1
  %843 = lshr i64 %825, 63
  %844 = trunc i64 %843 to i8
  store i8 %844, i8* %32, align 1
  %845 = lshr i64 %824, 63
  %846 = xor i64 %843, %845
  %847 = xor i64 %843, %823
  %848 = add nuw nsw i64 %846, %847
  %849 = icmp eq i64 %848, 2
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %38, align 1
  %851 = add i64 %825, 48
  %852 = add i64 %778, 41
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = sub i32 %815, %854
  %856 = icmp ult i32 %815, %854
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %14, align 1
  %858 = and i32 %855, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %21, align 1
  %863 = xor i32 %854, %815
  %864 = xor i32 %863, %855
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %26, align 1
  %868 = icmp eq i32 %855, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %29, align 1
  %870 = lshr i32 %855, 31
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %32, align 1
  %872 = lshr i32 %815, 31
  %873 = lshr i32 %854, 31
  %874 = xor i32 %873, %872
  %875 = xor i32 %870, %872
  %876 = add nuw nsw i32 %875, %874
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %38, align 1
  %.v331 = select i1 %868, i64 47, i64 52
  %879 = add i64 %778, %.v331
  store i64 %879, i64* %3, align 8
  br i1 %868, label %block_46f033, label %block_.L_46f038

block_46f033:                                     ; preds = %block_46f004
  %880 = add i64 %879, 4337
  br label %block_.L_470124.sink.split

block_.L_46f038:                                  ; preds = %block_46f004
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -8
  %883 = add i64 %879, 14
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = sext i32 %885 to i64
  %887 = mul nsw i64 %886, 76
  store i64 %887, i64* %RCX.i2228, align 8
  %888 = lshr i64 %887, 63
  %889 = add i64 %887, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %889, i64* %RAX.i2269, align 8
  %890 = icmp ult i64 %889, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %891 = icmp ult i64 %889, %887
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %14, align 1
  %894 = trunc i64 %889 to i32
  %895 = and i32 %894, 252
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %21, align 1
  %900 = xor i64 %887, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %901 = xor i64 %900, %889
  %902 = lshr i64 %901, 4
  %903 = trunc i64 %902 to i8
  %904 = and i8 %903, 1
  store i8 %904, i8* %26, align 1
  %905 = icmp eq i64 %889, 0
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %29, align 1
  %907 = lshr i64 %889, 63
  %908 = trunc i64 %907 to i8
  store i8 %908, i8* %32, align 1
  %909 = xor i64 %907, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %910 = xor i64 %907, %888
  %911 = add nuw nsw i64 %909, %910
  %912 = icmp eq i64 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %38, align 1
  %914 = add i64 %887, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %915 = add i64 %879, 25
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  store i8 0, i8* %14, align 1
  %918 = and i32 %917, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %923 = icmp eq i32 %917, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %29, align 1
  %925 = lshr i32 %917, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v332 = select i1 %923, i64 456, i64 31
  %927 = add i64 %879, %.v332
  store i64 %927, i64* %3, align 8
  br i1 %923, label %block_.L_46f200, label %block_46f057

block_46f057:                                     ; preds = %block_.L_46f038
  %EAX.i1994 = bitcast %union.anon* %76 to i32*
  store i64 0, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i2029, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i2228, align 8
  %928 = add i64 %927, 18
  store i64 %928, i64* %3, align 8
  %929 = load i32, i32* %884, align 4
  %930 = sext i32 %929 to i64
  %931 = mul nsw i64 %930, 76
  store i64 %931, i64* %RSI.i2267, align 8
  %932 = lshr i64 %931, 63
  %933 = add i64 %931, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %933, i64* %RCX.i2228, align 8
  %934 = icmp ult i64 %933, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %935 = icmp ult i64 %933, %931
  %936 = or i1 %934, %935
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %14, align 1
  %938 = trunc i64 %933 to i32
  %939 = and i32 %938, 252
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %21, align 1
  %944 = xor i64 %931, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %945 = xor i64 %944, %933
  %946 = lshr i64 %945, 4
  %947 = trunc i64 %946 to i8
  %948 = and i8 %947, 1
  store i8 %948, i8* %26, align 1
  %949 = icmp eq i64 %933, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %29, align 1
  %951 = lshr i64 %933, 63
  %952 = trunc i64 %951 to i8
  store i8 %952, i8* %32, align 1
  %953 = xor i64 %951, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %954 = xor i64 %951, %932
  %955 = add nuw nsw i64 %953, %954
  %956 = icmp eq i64 %955, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %38, align 1
  %RDI.i1979 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %958 = add i64 %931, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %959 = add i64 %927, 28
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RDI.i1979, align 8
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -4
  %965 = add i64 %927, 31
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = zext i32 %967 to i64
  store i64 %968, i64* %RSI.i2267, align 8
  %969 = add i64 %927, -142487
  %970 = add i64 %927, 36
  %971 = load i64, i64* %6, align 8
  %972 = add i64 %971, -8
  %973 = inttoptr i64 %972 to i64*
  store i64 %970, i64* %973, align 8
  store i64 %972, i64* %6, align 8
  store i64 %969, i64* %3, align 8
  %call2_46f076 = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %969, %struct.Memory* %MEMORY.4)
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -60
  %976 = load i32, i32* %EAX.i1994, align 4
  %977 = load i64, i64* %3, align 8
  %978 = add i64 %977, 3
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %975 to i32*
  store i32 %976, i32* %979, align 4
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -60
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 4
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984, align 4
  store i8 0, i8* %14, align 1
  %986 = and i32 %985, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %991 = icmp eq i32 %985, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %29, align 1
  %993 = lshr i32 %985, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v333 = select i1 %991, i64 381, i64 10
  %995 = add i64 %982, %.v333
  store i64 %995, i64* %3, align 8
  br i1 %991, label %block_.L_46f1fb, label %block_46f088

block_46f088:                                     ; preds = %block_46f057
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %996 = add i64 %980, -8
  %997 = add i64 %995, 14
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = sext i32 %999 to i64
  %1001 = mul nsw i64 %1000, 76
  store i64 %1001, i64* %RCX.i2228, align 8
  %1002 = lshr i64 %1001, 63
  %1003 = add i64 %1001, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1003, i64* %RAX.i2269, align 8
  %1004 = icmp ult i64 %1003, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1005 = icmp ult i64 %1003, %1001
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %14, align 1
  %1008 = trunc i64 %1003 to i32
  %1009 = and i32 %1008, 252
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %21, align 1
  %1014 = xor i64 %1001, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1015 = xor i64 %1014, %1003
  %1016 = lshr i64 %1015, 4
  %1017 = trunc i64 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %26, align 1
  %1019 = icmp eq i64 %1003, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %29, align 1
  %1021 = lshr i64 %1003, 63
  %1022 = trunc i64 %1021 to i8
  store i8 %1022, i8* %32, align 1
  %1023 = xor i64 %1021, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1024 = xor i64 %1021, %1002
  %1025 = add nuw nsw i64 %1023, %1024
  %1026 = icmp eq i64 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %38, align 1
  %1028 = add i64 %1001, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %1029 = add i64 %995, 24
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RDI.i1979, align 8
  %1033 = add i64 %980, -4
  %1034 = add i64 %995, 27
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RSI.i2267, align 8
  %1038 = add i64 %995, 30
  store i64 %1038, i64* %3, align 8
  %1039 = load i32, i32* %984, align 4
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RDX.i2029, align 8
  %1041 = add i64 %995, -239848
  %1042 = add i64 %995, 35
  %1043 = load i64, i64* %6, align 8
  %1044 = add i64 %1043, -8
  %1045 = inttoptr i64 %1044 to i64*
  store i64 %1042, i64* %1045, align 8
  store i64 %1044, i64* %6, align 8
  store i64 %1041, i64* %3, align 8
  %call2_46f0a6 = tail call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* nonnull %0, i64 %1041, %struct.Memory* %call2_46f076)
  %1046 = load i64, i64* %3, align 8
  %1047 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1048 = and i32 %1047, 64
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RDX.i2029, align 8
  store i8 0, i8* %14, align 1
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1048)
  %1051 = trunc i32 %1050 to i8
  %1052 = xor i8 %1051, 1
  store i8 %1052, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit226 = lshr exact i32 %1048, 6
  %1053 = trunc i32 %.lobit226 to i8
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1055 = icmp eq i8 %1054, 0
  %.v334 = select i1 %1055, i64 24, i64 19
  %1056 = add i64 %1046, %.v334
  store i64 %1056, i64* %3, align 8
  br i1 %1055, label %block_.L_46f0c3, label %block_46f0be

block_46f0be:                                     ; preds = %block_46f088
  %1057 = add i64 %1056, 58
  store i64 %1057, i64* %3, align 8
  br label %block_.L_46f0f8

block_.L_46f0c3:                                  ; preds = %block_46f088
  store i64 ptrtoint (%G__0x580685_type* @G__0x580685 to i64), i64* %RDI.i1979, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -4
  %1060 = add i64 %1056, 23
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RSI.i2267, align 8
  %1064 = add i64 %1058, -8
  %1065 = add i64 %1056, 27
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = mul nsw i64 %1068, 76
  store i64 %1069, i64* %RCX.i2228, align 8
  %1070 = lshr i64 %1069, 63
  %1071 = add i64 %1069, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1071, i64* %RAX.i2269, align 8
  %1072 = icmp ult i64 %1071, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1073 = icmp ult i64 %1071, %1069
  %1074 = or i1 %1072, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %14, align 1
  %1076 = trunc i64 %1071 to i32
  %1077 = and i32 %1076, 252
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %21, align 1
  %1082 = xor i64 %1069, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1083 = xor i64 %1082, %1071
  %1084 = lshr i64 %1083, 4
  %1085 = trunc i64 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %26, align 1
  %1087 = icmp eq i64 %1071, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %29, align 1
  %1089 = lshr i64 %1071, 63
  %1090 = trunc i64 %1089 to i8
  store i8 %1090, i8* %32, align 1
  %1091 = xor i64 %1089, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1092 = xor i64 %1089, %1070
  %1093 = add nuw nsw i64 %1091, %1092
  %1094 = icmp eq i64 %1093, 2
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %38, align 1
  %1096 = add i64 %1069, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %1097 = add i64 %1056, 37
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RDX.i2029, align 8
  %1101 = add i64 %1058, -60
  %1102 = add i64 %1056, 40
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i2228, align 8
  %AL.i1917 = bitcast %union.anon* %76 to i8*
  store i8 0, i8* %AL.i1917, align 1
  %1106 = add i64 %1056, -119571
  %1107 = add i64 %1056, 47
  %1108 = load i64, i64* %6, align 8
  %1109 = add i64 %1108, -8
  %1110 = inttoptr i64 %1109 to i64*
  store i64 %1107, i64* %1110, align 8
  store i64 %1109, i64* %6, align 8
  store i64 %1106, i64* %3, align 8
  %call2_46f0ed = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1106, %struct.Memory* %call2_46f0a6)
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -744
  %1113 = load i32, i32* %EAX.i1994, align 4
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, 6
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1112 to i32*
  store i32 %1113, i32* %1116, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_46f0f8

block_.L_46f0f8:                                  ; preds = %block_.L_46f0c3, %block_46f0be
  %1117 = phi i64 [ %.pre181, %block_.L_46f0c3 ], [ %1057, %block_46f0be ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_46f0ed, %block_.L_46f0c3 ], [ %call2_46f0a6, %block_46f0be ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1118 = load i64, i64* %RBP.i, align 8
  %1119 = add i64 %1118, -4
  %1120 = add i64 %1117, 14
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = sext i32 %1122 to i64
  %1124 = mul nsw i64 %1123, 76
  store i64 %1124, i64* %RCX.i2228, align 8
  %1125 = lshr i64 %1124, 63
  %1126 = add i64 %1124, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1126, i64* %RAX.i2269, align 8
  %1127 = icmp ult i64 %1126, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1128 = icmp ult i64 %1126, %1124
  %1129 = or i1 %1127, %1128
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %14, align 1
  %1131 = trunc i64 %1126 to i32
  %1132 = and i32 %1131, 252
  %1133 = tail call i32 @llvm.ctpop.i32(i32 %1132)
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  %1136 = xor i8 %1135, 1
  store i8 %1136, i8* %21, align 1
  %1137 = xor i64 %1124, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1138 = xor i64 %1137, %1126
  %1139 = lshr i64 %1138, 4
  %1140 = trunc i64 %1139 to i8
  %1141 = and i8 %1140, 1
  store i8 %1141, i8* %26, align 1
  %1142 = icmp eq i64 %1126, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %29, align 1
  %1144 = lshr i64 %1126, 63
  %1145 = trunc i64 %1144 to i8
  store i8 %1145, i8* %32, align 1
  %1146 = xor i64 %1144, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1147 = xor i64 %1144, %1125
  %1148 = add nuw nsw i64 %1146, %1147
  %1149 = icmp eq i64 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %38, align 1
  %1151 = add i64 %1124, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %1152 = add i64 %1117, 25
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  store i8 0, i8* %14, align 1
  %1155 = and i32 %1154, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1160 = icmp eq i32 %1154, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %29, align 1
  %1162 = lshr i32 %1154, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v335 = select i1 %1160, i64 31, i64 252
  %1164 = add i64 %1117, %.v335
  store i64 %1164, i64* %3, align 8
  br i1 %1160, label %block_46f117, label %block_.L_46f1f4

block_46f117:                                     ; preds = %block_.L_46f0f8
  %1165 = add i64 %1118, -64
  %1166 = add i64 %1164, 7
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  store i32 21, i32* %1167, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_46f11e

block_.L_46f11e:                                  ; preds = %block_.L_46f1af, %block_46f117
  %1168 = phi i64 [ %.pre182, %block_46f117 ], [ %1395, %block_.L_46f1af ]
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -64
  %1171 = add i64 %1168, 7
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, -400
  %1175 = icmp ult i32 %1173, 400
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %14, align 1
  %1177 = and i32 %1174, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %21, align 1
  %1182 = xor i32 %1173, 16
  %1183 = xor i32 %1182, %1174
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %26, align 1
  %1187 = icmp eq i32 %1174, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %29, align 1
  %1189 = lshr i32 %1174, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %32, align 1
  %1191 = lshr i32 %1173, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1191
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %38, align 1
  %1196 = icmp ne i8 %1190, 0
  %1197 = xor i1 %1196, %1194
  %.v336 = select i1 %1197, i64 13, i64 159
  %1198 = add i64 %1168, %.v336
  store i64 %1198, i64* %3, align 8
  br i1 %1197, label %block_46f12b, label %block_.L_46f1bd

block_46f12b:                                     ; preds = %block_.L_46f11e
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %3, align 8
  %1200 = load i32, i32* %1172, align 4
  %1201 = sext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i2269, align 8
  %1202 = add nsw i64 %1201, 12099168
  %1203 = add i64 %1198, 12
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i8*
  %1205 = load i8, i8* %1204, align 1
  %1206 = zext i8 %1205 to i64
  store i64 %1206, i64* %RCX.i2228, align 8
  %1207 = zext i8 %1205 to i32
  %1208 = add nsw i32 %1207, -3
  %1209 = icmp ult i8 %1205, 3
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %14, align 1
  %1211 = and i32 %1208, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %21, align 1
  %1216 = xor i32 %1208, %1207
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %26, align 1
  %1220 = icmp eq i32 %1208, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %29, align 1
  %1222 = lshr i32 %1208, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v338 = select i1 %1220, i64 21, i64 26
  %1224 = add i64 %1198, %.v338
  store i64 %1224, i64* %3, align 8
  br i1 %1220, label %block_46f140, label %block_.L_46f145

block_46f140:                                     ; preds = %block_46f12b
  %1225 = add i64 %1224, 111
  br label %block_.L_46f1af

block_.L_46f145:                                  ; preds = %block_46f12b
  %1226 = add i64 %1224, 4
  store i64 %1226, i64* %3, align 8
  %1227 = load i32, i32* %1172, align 4
  %1228 = sext i32 %1227 to i64
  store i64 %1228, i64* %RAX.i2269, align 8
  %1229 = add nsw i64 %1228, 12099168
  %1230 = add i64 %1224, 12
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i8*
  %1232 = load i8, i8* %1231, align 1
  %1233 = zext i8 %1232 to i64
  store i64 %1233, i64* %RCX.i2228, align 8
  %1234 = add i64 %1169, -4
  %1235 = add i64 %1224, 16
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = sext i32 %1237 to i64
  store i64 %1238, i64* %RAX.i2269, align 8
  %1239 = add nsw i64 %1238, 12099168
  %1240 = add i64 %1224, 24
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i8*
  %1242 = load i8, i8* %1241, align 1
  %1243 = zext i8 %1242 to i64
  store i64 %1243, i64* %RDX.i2029, align 8
  %1244 = zext i8 %1232 to i32
  %1245 = zext i8 %1242 to i32
  %1246 = sub nsw i32 %1244, %1245
  %1247 = icmp ult i8 %1232, %1242
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1246, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i8 %1242, %1232
  %1255 = zext i8 %1254 to i32
  %1256 = xor i32 %1255, %1246
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %26, align 1
  %1260 = icmp eq i32 %1246, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %29, align 1
  %1262 = lshr i32 %1246, 31
  %1263 = trunc i32 %1262 to i8
  store i8 %1263, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v339 = select i1 %1260, i64 32, i64 101
  %1264 = add i64 %1224, %.v339
  store i64 %1264, i64* %3, align 8
  br i1 %1260, label %block_46f165, label %block_.L_46f1aa

block_46f165:                                     ; preds = %block_.L_46f145
  %1265 = add i64 %1264, 3
  store i64 %1265, i64* %3, align 8
  %1266 = load i32, i32* %1172, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RDI.i1979, align 8
  %1268 = add i64 %1264, 6
  store i64 %1268, i64* %3, align 8
  %1269 = load i32, i32* %1236, align 4
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RSI.i2267, align 8
  %1271 = add i64 %1264, -324917
  %1272 = add i64 %1264, 11
  %1273 = load i64, i64* %6, align 8
  %1274 = add i64 %1273, -8
  %1275 = inttoptr i64 %1274 to i64*
  store i64 %1272, i64* %1275, align 8
  store i64 %1274, i64* %6, align 8
  store i64 %1271, i64* %3, align 8
  %call2_46f16b = tail call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* nonnull %0, i64 %1271, %struct.Memory* %MEMORY.6)
  %1276 = load i32, i32* %EAX.i1994, align 4
  %1277 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1278 = and i32 %1276, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1283 = icmp eq i32 %1276, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %29, align 1
  %1285 = lshr i32 %1276, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v340 = select i1 %1283, i64 58, i64 9
  %1287 = add i64 %1277, %.v340
  store i64 %1287, i64* %3, align 8
  br i1 %1283, label %block_.L_46f1aa, label %block_46f179

block_46f179:                                     ; preds = %block_46f165
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1288 = load i64, i64* %RBP.i, align 8
  %1289 = add i64 %1288, -64
  %1290 = add i64 %1287, 14
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = mul nsw i64 %1293, 76
  store i64 %1294, i64* %RCX.i2228, align 8
  %1295 = lshr i64 %1294, 63
  %1296 = add i64 %1294, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1296, i64* %RDX.i2029, align 8
  %1297 = icmp ult i64 %1296, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1298 = icmp ult i64 %1296, %1294
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = trunc i64 %1296 to i32
  %1302 = and i32 %1301, 252
  %1303 = tail call i32 @llvm.ctpop.i32(i32 %1302)
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  %1306 = xor i8 %1305, 1
  store i8 %1306, i8* %21, align 1
  %1307 = xor i64 %1294, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1308 = xor i64 %1307, %1296
  %1309 = lshr i64 %1308, 4
  %1310 = trunc i64 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %26, align 1
  %1312 = icmp eq i64 %1296, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %29, align 1
  %1314 = lshr i64 %1296, 63
  %1315 = trunc i64 %1314 to i8
  store i8 %1315, i8* %32, align 1
  %1316 = xor i64 %1314, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1317 = xor i64 %1314, %1295
  %1318 = add nuw nsw i64 %1316, %1317
  %1319 = icmp eq i64 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %38, align 1
  %1321 = add i64 %1294, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %1322 = add i64 %1287, 31
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  store i32 2, i32* %1323, align 4
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -64
  %1326 = load i64, i64* %3, align 8
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1325 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = sext i32 %1329 to i64
  %1331 = mul nsw i64 %1330, 76
  store i64 %1331, i64* %RCX.i2228, align 8
  %1332 = lshr i64 %1331, 63
  %1333 = load i64, i64* %RAX.i2269, align 8
  %1334 = add i64 %1331, %1333
  store i64 %1334, i64* %RAX.i2269, align 8
  %1335 = icmp ult i64 %1334, %1333
  %1336 = icmp ult i64 %1334, %1331
  %1337 = or i1 %1335, %1336
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %14, align 1
  %1339 = trunc i64 %1334 to i32
  %1340 = and i32 %1339, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %21, align 1
  %1345 = xor i64 %1331, %1333
  %1346 = xor i64 %1345, %1334
  %1347 = lshr i64 %1346, 4
  %1348 = trunc i64 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %26, align 1
  %1350 = icmp eq i64 %1334, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %29, align 1
  %1352 = lshr i64 %1334, 63
  %1353 = trunc i64 %1352 to i8
  store i8 %1353, i8* %32, align 1
  %1354 = lshr i64 %1333, 63
  %1355 = xor i64 %1352, %1354
  %1356 = xor i64 %1352, %1332
  %1357 = add nuw nsw i64 %1355, %1356
  %1358 = icmp eq i64 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %38, align 1
  %1360 = add i64 %1334, 64
  %1361 = add i64 %1326, 18
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  store i32 2, i32* %1362, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_46f1aa

block_.L_46f1aa:                                  ; preds = %block_.L_46f145, %block_46f179, %block_46f165
  %1363 = phi i64 [ %.pre184, %block_46f179 ], [ %1287, %block_46f165 ], [ %1264, %block_.L_46f145 ]
  %1364 = add i64 %1363, 5
  store i64 %1364, i64* %3, align 8
  %.pre185 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46f1af

block_.L_46f1af:                                  ; preds = %block_.L_46f1aa, %block_46f140
  %1365 = phi i64 [ %1169, %block_46f140 ], [ %.pre185, %block_.L_46f1aa ]
  %storemerge = phi i64 [ %1225, %block_46f140 ], [ %1364, %block_.L_46f1aa ]
  %1366 = add i64 %1365, -64
  %1367 = add i64 %storemerge, 3
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = add i32 %1369, 1
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RAX.i2269, align 8
  %1372 = icmp eq i32 %1369, -1
  %1373 = icmp eq i32 %1370, 0
  %1374 = or i1 %1372, %1373
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %14, align 1
  %1376 = and i32 %1370, 255
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %21, align 1
  %1381 = xor i32 %1370, %1369
  %1382 = lshr i32 %1381, 4
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %26, align 1
  %1385 = zext i1 %1373 to i8
  store i8 %1385, i8* %29, align 1
  %1386 = lshr i32 %1370, 31
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %32, align 1
  %1388 = lshr i32 %1369, 31
  %1389 = xor i32 %1386, %1388
  %1390 = add nuw nsw i32 %1389, %1386
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %38, align 1
  %1393 = add i64 %storemerge, 9
  store i64 %1393, i64* %3, align 8
  store i32 %1370, i32* %1368, align 4
  %1394 = load i64, i64* %3, align 8
  %1395 = add i64 %1394, -154
  store i64 %1395, i64* %3, align 8
  br label %block_.L_46f11e

block_.L_46f1bd:                                  ; preds = %block_.L_46f11e
  %1396 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1397 = and i32 %1396, 64
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1400 = trunc i32 %1399 to i8
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit227 = lshr exact i32 %1397, 6
  %1402 = trunc i32 %.lobit227 to i8
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1404 = icmp eq i8 %1403, 0
  %.v337 = select i1 %1404, i64 24, i64 19
  %1405 = add i64 %1198, %.v337
  store i64 %1405, i64* %3, align 8
  br i1 %1404, label %block_.L_46f1d5, label %block_46f1d0

block_46f1d0:                                     ; preds = %block_.L_46f1bd
  %1406 = add i64 %1405, 31
  store i64 %1406, i64* %3, align 8
  br label %block_.L_46f1ef

block_.L_46f1d5:                                  ; preds = %block_.L_46f1bd
  store i64 ptrtoint (%G__0x5806b3_type* @G__0x5806b3 to i64), i64* %RDI.i1979, align 8
  %1407 = add i64 %1169, -4
  %1408 = add i64 %1405, 13
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RSI.i2267, align 8
  %AL.i1809 = bitcast %union.anon* %76 to i8*
  store i8 0, i8* %AL.i1809, align 1
  %1412 = add i64 %1405, -119845
  %1413 = add i64 %1405, 20
  %1414 = load i64, i64* %6, align 8
  %1415 = add i64 %1414, -8
  %1416 = inttoptr i64 %1415 to i64*
  store i64 %1413, i64* %1416, align 8
  store i64 %1415, i64* %6, align 8
  store i64 %1412, i64* %3, align 8
  %call2_46f1e4 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1412, %struct.Memory* %MEMORY.6)
  %1417 = load i64, i64* %RBP.i, align 8
  %1418 = add i64 %1417, -748
  %1419 = load i32, i32* %EAX.i1994, align 4
  %1420 = load i64, i64* %3, align 8
  %1421 = add i64 %1420, 6
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1418 to i32*
  store i32 %1419, i32* %1422, align 4
  %.pre183 = load i64, i64* %3, align 8
  %.pre186.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_46f1ef

block_.L_46f1ef:                                  ; preds = %block_.L_46f1d5, %block_46f1d0
  %.pre186 = phi i64 [ %.pre186.pre, %block_.L_46f1d5 ], [ %1169, %block_46f1d0 ]
  %1423 = phi i64 [ %.pre183, %block_.L_46f1d5 ], [ %1406, %block_46f1d0 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_46f1e4, %block_.L_46f1d5 ], [ %MEMORY.6, %block_46f1d0 ]
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %3, align 8
  br label %block_.L_46f1f4

block_.L_46f1f4:                                  ; preds = %block_.L_46f0f8, %block_.L_46f1ef
  %1425 = phi i64 [ %1164, %block_.L_46f0f8 ], [ %1424, %block_.L_46f1ef ]
  %1426 = phi i64 [ %1118, %block_.L_46f0f8 ], [ %.pre186, %block_.L_46f1ef ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_.L_46f0f8 ], [ %MEMORY.10, %block_.L_46f1ef ]
  %1427 = add i64 %1426, -48
  %1428 = add i64 %1425, 7
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  store i32 1, i32* %1429, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_46f1fb

block_.L_46f1fb:                                  ; preds = %block_.L_46f1f4, %block_46f057
  %1430 = phi i64 [ %995, %block_46f057 ], [ %.pre187, %block_.L_46f1f4 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_46f076, %block_46f057 ], [ %MEMORY.11, %block_.L_46f1f4 ]
  %1431 = add i64 %1430, 5
  store i64 %1431, i64* %3, align 8
  br label %block_.L_46f200

block_.L_46f200:                                  ; preds = %block_.L_46f1fb, %block_.L_46f038
  %1432 = phi i64 [ %927, %block_.L_46f038 ], [ %1431, %block_.L_46f1fb ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.4, %block_.L_46f038 ], [ %MEMORY.12, %block_.L_46f1fb ]
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %3, align 8
  br label %block_.L_46f205

block_.L_46f205:                                  ; preds = %block_.L_46efe5, %block_46efc6, %block_.L_46f200
  %1434 = phi i64 [ %778, %block_.L_46efe5 ], [ %1433, %block_.L_46f200 ], [ %718, %block_46efc6 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.4, %block_.L_46efe5 ], [ %MEMORY.13, %block_.L_46f200 ], [ %MEMORY.4, %block_46efc6 ]
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -48
  %1437 = add i64 %1434, 4
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  store i8 0, i8* %14, align 1
  %1440 = and i32 %1439, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1445 = icmp eq i32 %1439, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %29, align 1
  %1447 = lshr i32 %1439, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v242 = select i1 %1445, i64 62, i64 10
  %1449 = add i64 %1434, %.v242
  store i64 %1449, i64* %3, align 8
  br i1 %1445, label %block_.L_46f243, label %block_46f20f

block_46f20f:                                     ; preds = %block_.L_46f205
  %1450 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1451 = and i32 %1450, 64
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1454 = trunc i32 %1453 to i8
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit228 = lshr exact i32 %1451, 6
  %1456 = trunc i32 %.lobit228 to i8
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1458 = icmp eq i8 %1457, 0
  %.v243 = select i1 %1458, i64 24, i64 19
  %1459 = add i64 %1449, %.v243
  store i64 %1459, i64* %3, align 8
  br i1 %1458, label %block_.L_46f227, label %block_46f222

block_46f222:                                     ; preds = %block_46f20f
  %1460 = add i64 %1459, 28
  store i64 %1460, i64* %3, align 8
  br label %block_.L_46f23e

block_.L_46f227:                                  ; preds = %block_46f20f
  %EAX.i1791 = bitcast %union.anon* %76 to i32*
  %RDI.i1787 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x5806e5_type* @G__0x5806e5 to i64), i64* %RDI.i1787, align 8
  %AL.i1785 = bitcast %union.anon* %76 to i8*
  store i8 0, i8* %AL.i1785, align 1
  %1461 = add i64 %1459, -119927
  %1462 = add i64 %1459, 17
  %1463 = load i64, i64* %6, align 8
  %1464 = add i64 %1463, -8
  %1465 = inttoptr i64 %1464 to i64*
  store i64 %1462, i64* %1465, align 8
  store i64 %1464, i64* %6, align 8
  store i64 %1461, i64* %3, align 8
  %call2_46f233 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1461, %struct.Memory* %MEMORY.14)
  %1466 = load i64, i64* %RBP.i, align 8
  %1467 = add i64 %1466, -752
  %1468 = load i32, i32* %EAX.i1791, align 4
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, 6
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1467 to i32*
  store i32 %1468, i32* %1471, align 4
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_46f23e

block_.L_46f23e:                                  ; preds = %block_.L_46f227, %block_46f222
  %1472 = phi i64 [ %.pre188, %block_.L_46f227 ], [ %1460, %block_46f222 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_46f233, %block_.L_46f227 ], [ %MEMORY.14, %block_46f222 ]
  %1473 = add i64 %1472, 3814
  br label %block_.L_470124.sink.split

block_.L_46f243:                                  ; preds = %block_.L_46f205
  %1474 = add i64 %1435, -52
  %1475 = add i64 %1449, 7
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  store i32 21, i32* %1476, align 4
  %RDX.i1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i1695 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %EAX.i1691 = bitcast %union.anon* %76 to i32*
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_46f24a

block_.L_46f24a:                                  ; preds = %block_.L_46f3f2, %block_.L_46f243
  %1477 = phi i64 [ %.pre189, %block_.L_46f243 ], [ %2118, %block_.L_46f3f2 ]
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -52
  %1480 = add i64 %1477, 7
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = add i32 %1482, -400
  %1484 = icmp ult i32 %1482, 400
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %14, align 1
  %1486 = and i32 %1483, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %21, align 1
  %1491 = xor i32 %1482, 16
  %1492 = xor i32 %1491, %1483
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %26, align 1
  %1496 = icmp eq i32 %1483, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %29, align 1
  %1498 = lshr i32 %1483, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %32, align 1
  %1500 = lshr i32 %1482, 31
  %1501 = xor i32 %1498, %1500
  %1502 = add nuw nsw i32 %1501, %1500
  %1503 = icmp eq i32 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %38, align 1
  %1505 = icmp ne i8 %1499, 0
  %1506 = xor i1 %1505, %1503
  %.v244 = select i1 %1506, i64 13, i64 438
  %1507 = add i64 %1477, %.v244
  store i64 %1507, i64* %3, align 8
  br i1 %1506, label %block_46f257, label %block_.L_46f400

block_46f257:                                     ; preds = %block_.L_46f24a
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %3, align 8
  %1509 = load i32, i32* %1481, align 4
  %1510 = sext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i2269, align 8
  %1511 = add nsw i64 %1510, 12099168
  %1512 = add i64 %1507, 12
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i8*
  %1514 = load i8, i8* %1513, align 1
  %1515 = zext i8 %1514 to i64
  store i64 %1515, i64* %RCX.i2228, align 8
  %1516 = zext i8 %1514 to i32
  %1517 = add nsw i32 %1516, -3
  %1518 = icmp ult i8 %1514, 3
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %14, align 1
  %1520 = and i32 %1517, 255
  %1521 = tail call i32 @llvm.ctpop.i32(i32 %1520)
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = xor i8 %1523, 1
  store i8 %1524, i8* %21, align 1
  %1525 = xor i32 %1517, %1516
  %1526 = lshr i32 %1525, 4
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  store i8 %1528, i8* %26, align 1
  %1529 = icmp eq i32 %1517, 0
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %29, align 1
  %1531 = lshr i32 %1517, 31
  %1532 = trunc i32 %1531 to i8
  store i8 %1532, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v320 = select i1 %1529, i64 21, i64 26
  %1533 = add i64 %1507, %.v320
  store i64 %1533, i64* %3, align 8
  br i1 %1529, label %block_46f26c, label %block_.L_46f271

block_46f26c:                                     ; preds = %block_46f257
  %1534 = add i64 %1533, 390
  br label %block_.L_46f3f2

block_.L_46f271:                                  ; preds = %block_46f257
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2269, align 8
  %1535 = add i64 %1533, 14
  store i64 %1535, i64* %3, align 8
  %1536 = load i32, i32* %1481, align 4
  %1537 = sext i32 %1536 to i64
  %1538 = mul nsw i64 %1537, 380
  store i64 %1538, i64* %RCX.i2228, align 8
  %1539 = lshr i64 %1538, 63
  %1540 = add i64 %1538, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1540, i64* %RAX.i2269, align 8
  %1541 = icmp ult i64 %1540, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1542 = icmp ult i64 %1540, %1538
  %1543 = or i1 %1541, %1542
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %14, align 1
  %1545 = trunc i64 %1540 to i32
  %1546 = and i32 %1545, 252
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %21, align 1
  %1551 = xor i64 %1538, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1552 = xor i64 %1551, %1540
  %1553 = lshr i64 %1552, 4
  %1554 = trunc i64 %1553 to i8
  %1555 = and i8 %1554, 1
  store i8 %1555, i8* %26, align 1
  %1556 = icmp eq i64 %1540, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %29, align 1
  %1558 = lshr i64 %1540, 63
  %1559 = trunc i64 %1558 to i8
  store i8 %1559, i8* %32, align 1
  %1560 = xor i64 %1558, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1561 = xor i64 %1558, %1539
  %1562 = add nuw nsw i64 %1560, %1561
  %1563 = icmp eq i64 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %38, align 1
  %1565 = add i64 %1538, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %1566 = add i64 %1533, 27
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  %1568 = load i32, i32* %1567, align 4
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RDX.i1753, align 8
  %1570 = add i64 %1533, 30
  store i64 %1570, i64* %3, align 8
  %1571 = load i32, i32* %1481, align 4
  %1572 = sub i32 %1568, %1571
  %1573 = icmp ult i32 %1568, %1571
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %14, align 1
  %1575 = and i32 %1572, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %21, align 1
  %1580 = xor i32 %1571, %1568
  %1581 = xor i32 %1580, %1572
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %26, align 1
  %1585 = icmp eq i32 %1572, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %29, align 1
  %1587 = lshr i32 %1572, 31
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %32, align 1
  %1589 = lshr i32 %1568, 31
  %1590 = lshr i32 %1571, 31
  %1591 = xor i32 %1590, %1589
  %1592 = xor i32 %1587, %1589
  %1593 = add nuw nsw i32 %1592, %1591
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %38, align 1
  %.v321 = select i1 %1585, i64 36, i64 380
  %1596 = add i64 %1533, %.v321
  store i64 %1596, i64* %3, align 8
  br i1 %1585, label %block_46f295, label %block_.L_46f3ed

block_46f295:                                     ; preds = %block_.L_46f271
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2269, align 8
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -52
  %1599 = add i64 %1596, 14
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = mul nsw i64 %1602, 380
  store i64 %1603, i64* %RCX.i2228, align 8
  %1604 = lshr i64 %1603, 63
  %1605 = add i64 %1603, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1605, i64* %RAX.i2269, align 8
  %1606 = icmp ult i64 %1605, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1607 = icmp ult i64 %1605, %1603
  %1608 = or i1 %1606, %1607
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = trunc i64 %1605 to i32
  %1611 = and i32 %1610, 252
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i64 %1603, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1617 = xor i64 %1616, %1605
  %1618 = lshr i64 %1617, 4
  %1619 = trunc i64 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %26, align 1
  %1621 = icmp eq i64 %1605, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %29, align 1
  %1623 = lshr i64 %1605, 63
  %1624 = trunc i64 %1623 to i8
  store i8 %1624, i8* %32, align 1
  %1625 = xor i64 %1623, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1626 = xor i64 %1623, %1604
  %1627 = add nuw nsw i64 %1625, %1626
  %1628 = icmp eq i64 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %38, align 1
  %1630 = add i64 %1603, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %1631 = add i64 %1596, 28
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = add i32 %1633, -5
  %1635 = icmp ult i32 %1633, 5
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %14, align 1
  %1637 = and i32 %1634, 255
  %1638 = tail call i32 @llvm.ctpop.i32(i32 %1637)
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  %1641 = xor i8 %1640, 1
  store i8 %1641, i8* %21, align 1
  %1642 = xor i32 %1634, %1633
  %1643 = lshr i32 %1642, 4
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  store i8 %1645, i8* %26, align 1
  %1646 = icmp eq i32 %1634, 0
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %29, align 1
  %1648 = lshr i32 %1634, 31
  %1649 = trunc i32 %1648 to i8
  store i8 %1649, i8* %32, align 1
  %1650 = lshr i32 %1633, 31
  %1651 = xor i32 %1648, %1650
  %1652 = add nuw nsw i32 %1651, %1650
  %1653 = icmp eq i32 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %38, align 1
  %.v322 = select i1 %1646, i64 34, i64 344
  %1655 = add i64 %1596, %.v322
  store i64 %1655, i64* %3, align 8
  br i1 %1646, label %block_46f2b7, label %block_.L_46f3ed

block_46f2b7:                                     ; preds = %block_46f295
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -52
  %1658 = add i64 %1655, 14
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = sext i32 %1660 to i64
  %1662 = mul nsw i64 %1661, 76
  store i64 %1662, i64* %RCX.i2228, align 8
  %1663 = lshr i64 %1662, 63
  %1664 = add i64 %1662, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1664, i64* %RAX.i2269, align 8
  %1665 = icmp ult i64 %1664, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1666 = icmp ult i64 %1664, %1662
  %1667 = or i1 %1665, %1666
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %14, align 1
  %1669 = trunc i64 %1664 to i32
  %1670 = and i32 %1669, 252
  %1671 = tail call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  store i8 %1674, i8* %21, align 1
  %1675 = xor i64 %1662, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1676 = xor i64 %1675, %1664
  %1677 = lshr i64 %1676, 4
  %1678 = trunc i64 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %26, align 1
  %1680 = icmp eq i64 %1664, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %29, align 1
  %1682 = lshr i64 %1664, 63
  %1683 = trunc i64 %1682 to i8
  store i8 %1683, i8* %32, align 1
  %1684 = xor i64 %1682, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1685 = xor i64 %1682, %1663
  %1686 = add nuw nsw i64 %1684, %1685
  %1687 = icmp eq i64 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %38, align 1
  %1689 = add i64 %1662, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %1690 = add i64 %1655, 24
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RDX.i1753, align 8
  %1694 = add i64 %1656, -4
  %1695 = add i64 %1655, 27
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = sub i32 %1692, %1697
  %1699 = icmp ult i32 %1692, %1697
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %14, align 1
  %1701 = and i32 %1698, 255
  %1702 = tail call i32 @llvm.ctpop.i32(i32 %1701)
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %21, align 1
  %1706 = xor i32 %1697, %1692
  %1707 = xor i32 %1706, %1698
  %1708 = lshr i32 %1707, 4
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  store i8 %1710, i8* %26, align 1
  %1711 = icmp eq i32 %1698, 0
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %29, align 1
  %1713 = lshr i32 %1698, 31
  %1714 = trunc i32 %1713 to i8
  store i8 %1714, i8* %32, align 1
  %1715 = lshr i32 %1692, 31
  %1716 = lshr i32 %1697, 31
  %1717 = xor i32 %1716, %1715
  %1718 = xor i32 %1713, %1715
  %1719 = add nuw nsw i32 %1718, %1717
  %1720 = icmp eq i32 %1719, 2
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %38, align 1
  %.v323 = select i1 %1711, i64 66, i64 33
  %1722 = add i64 %1655, %.v323
  store i64 %1722, i64* %3, align 8
  br i1 %1711, label %block_.L_46f2f9, label %block_46f2d8

block_46f2d8:                                     ; preds = %block_46f2b7
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1723 = load i64, i64* %RBP.i, align 8
  %1724 = add i64 %1723, -52
  %1725 = add i64 %1722, 14
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sext i32 %1727 to i64
  %1729 = mul nsw i64 %1728, 76
  store i64 %1729, i64* %RCX.i2228, align 8
  %1730 = lshr i64 %1729, 63
  %1731 = add i64 %1729, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1731, i64* %RAX.i2269, align 8
  %1732 = icmp ult i64 %1731, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1733 = icmp ult i64 %1731, %1729
  %1734 = or i1 %1732, %1733
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %14, align 1
  %1736 = trunc i64 %1731 to i32
  %1737 = and i32 %1736, 252
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %21, align 1
  %1742 = xor i64 %1729, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1743 = xor i64 %1742, %1731
  %1744 = lshr i64 %1743, 4
  %1745 = trunc i64 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %26, align 1
  %1747 = icmp eq i64 %1731, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %29, align 1
  %1749 = lshr i64 %1731, 63
  %1750 = trunc i64 %1749 to i8
  store i8 %1750, i8* %32, align 1
  %1751 = xor i64 %1749, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1752 = xor i64 %1749, %1730
  %1753 = add nuw nsw i64 %1751, %1752
  %1754 = icmp eq i64 %1753, 2
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %38, align 1
  %1756 = add i64 %1729, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %1757 = add i64 %1722, 24
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RDX.i1753, align 8
  %1761 = add i64 %1723, -8
  %1762 = add i64 %1722, 27
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = sub i32 %1759, %1764
  %1766 = icmp ult i32 %1759, %1764
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %14, align 1
  %1768 = and i32 %1765, 255
  %1769 = tail call i32 @llvm.ctpop.i32(i32 %1768)
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = xor i8 %1771, 1
  store i8 %1772, i8* %21, align 1
  %1773 = xor i32 %1764, %1759
  %1774 = xor i32 %1773, %1765
  %1775 = lshr i32 %1774, 4
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  store i8 %1777, i8* %26, align 1
  %1778 = icmp eq i32 %1765, 0
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %29, align 1
  %1780 = lshr i32 %1765, 31
  %1781 = trunc i32 %1780 to i8
  store i8 %1781, i8* %32, align 1
  %1782 = lshr i32 %1759, 31
  %1783 = lshr i32 %1764, 31
  %1784 = xor i32 %1783, %1782
  %1785 = xor i32 %1780, %1782
  %1786 = add nuw nsw i32 %1785, %1784
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %38, align 1
  %.v324 = select i1 %1778, i64 33, i64 272
  %1789 = add i64 %1722, %.v324
  store i64 %1789, i64* %3, align 8
  br i1 %1778, label %block_.L_46f2f9, label %block_.L_46f3e8

block_.L_46f2f9:                                  ; preds = %block_46f2d8, %block_46f2b7
  %1790 = phi i64 [ %1789, %block_46f2d8 ], [ %1722, %block_46f2b7 ]
  %1791 = load i64, i64* %RBP.i, align 8
  %1792 = add i64 %1791, -720
  store i64 %1792, i64* %RSI.i2267, align 8
  %1793 = add i64 %1791, -52
  %1794 = add i64 %1790, 10
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i32*
  %1796 = load i32, i32* %1795, align 4
  %1797 = zext i32 %1796 to i64
  store i64 %1797, i64* %RDI.i1695, align 8
  %1798 = add i64 %1790, -374777
  %1799 = add i64 %1790, 15
  %1800 = load i64, i64* %6, align 8
  %1801 = add i64 %1800, -8
  %1802 = inttoptr i64 %1801 to i64*
  store i64 %1799, i64* %1802, align 8
  store i64 %1801, i64* %6, align 8
  store i64 %1798, i64* %3, align 8
  %call2_46f303 = tail call %struct.Memory* @sub_413b00.chainlinks(%struct.State* nonnull %0, i64 %1798, %struct.Memory* %MEMORY.14)
  %1803 = load i64, i64* %RBP.i, align 8
  %1804 = add i64 %1803, -68
  %1805 = load i32, i32* %EAX.i1691, align 4
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1804 to i32*
  store i32 %1805, i32* %1808, align 4
  %1809 = load i64, i64* %RBP.i, align 8
  %1810 = add i64 %1809, -724
  %1811 = load i64, i64* %3, align 8
  %1812 = add i64 %1811, 10
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1810 to i32*
  store i32 0, i32* %1813, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_46f315

block_.L_46f315:                                  ; preds = %block_.L_46f3ca, %block_.L_46f2f9
  %1814 = phi i64 [ %.pre220, %block_.L_46f2f9 ], [ %2082, %block_.L_46f3ca ]
  %1815 = load i64, i64* %RBP.i, align 8
  %1816 = add i64 %1815, -724
  %1817 = add i64 %1814, 6
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i32*
  %1819 = load i32, i32* %1818, align 4
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RAX.i2269, align 8
  %1821 = add i64 %1815, -68
  %1822 = add i64 %1814, 9
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i32*
  %1824 = load i32, i32* %1823, align 4
  %1825 = sub i32 %1819, %1824
  %1826 = icmp ult i32 %1819, %1824
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %14, align 1
  %1828 = and i32 %1825, 255
  %1829 = tail call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  store i8 %1832, i8* %21, align 1
  %1833 = xor i32 %1824, %1819
  %1834 = xor i32 %1833, %1825
  %1835 = lshr i32 %1834, 4
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  store i8 %1837, i8* %26, align 1
  %1838 = icmp eq i32 %1825, 0
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %29, align 1
  %1840 = lshr i32 %1825, 31
  %1841 = trunc i32 %1840 to i8
  store i8 %1841, i8* %32, align 1
  %1842 = lshr i32 %1819, 31
  %1843 = lshr i32 %1824, 31
  %1844 = xor i32 %1843, %1842
  %1845 = xor i32 %1840, %1842
  %1846 = add nuw nsw i32 %1845, %1844
  %1847 = icmp eq i32 %1846, 2
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %38, align 1
  %1849 = icmp ne i8 %1841, 0
  %1850 = xor i1 %1849, %1847
  %.v325 = select i1 %1850, i64 15, i64 206
  %1851 = add i64 %1814, %.v325
  store i64 %1851, i64* %3, align 8
  br i1 %1850, label %block_46f324, label %block_.L_46f3e3

block_46f324:                                     ; preds = %block_.L_46f315
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1852 = add i64 %1851, 17
  store i64 %1852, i64* %3, align 8
  %1853 = load i32, i32* %1818, align 4
  %1854 = sext i32 %1853 to i64
  store i64 %1854, i64* %RCX.i2228, align 8
  %1855 = shl nsw i64 %1854, 2
  %1856 = add i64 %1815, -720
  %1857 = add i64 %1856, %1855
  %1858 = add i64 %1851, 24
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RDX.i1753, align 8
  %1862 = add i64 %1815, -728
  %1863 = add i64 %1851, 30
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  store i32 %1860, i32* %1864, align 4
  %1865 = load i64, i64* %RBP.i, align 8
  %1866 = add i64 %1865, -728
  %1867 = load i64, i64* %3, align 8
  %1868 = add i64 %1867, 7
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1866 to i32*
  %1870 = load i32, i32* %1869, align 4
  %1871 = sext i32 %1870 to i64
  %1872 = mul nsw i64 %1871, 76
  store i64 %1872, i64* %RCX.i2228, align 8
  %1873 = lshr i64 %1872, 63
  %1874 = load i64, i64* %RAX.i2269, align 8
  %1875 = add i64 %1872, %1874
  store i64 %1875, i64* %RAX.i2269, align 8
  %1876 = icmp ult i64 %1875, %1874
  %1877 = icmp ult i64 %1875, %1872
  %1878 = or i1 %1876, %1877
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %14, align 1
  %1880 = trunc i64 %1875 to i32
  %1881 = and i32 %1880, 255
  %1882 = tail call i32 @llvm.ctpop.i32(i32 %1881)
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = xor i8 %1884, 1
  store i8 %1885, i8* %21, align 1
  %1886 = xor i64 %1872, %1874
  %1887 = xor i64 %1886, %1875
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %26, align 1
  %1891 = icmp eq i64 %1875, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %29, align 1
  %1893 = lshr i64 %1875, 63
  %1894 = trunc i64 %1893 to i8
  store i8 %1894, i8* %32, align 1
  %1895 = lshr i64 %1874, 63
  %1896 = xor i64 %1893, %1895
  %1897 = xor i64 %1893, %1873
  %1898 = add nuw nsw i64 %1896, %1897
  %1899 = icmp eq i64 %1898, 2
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %38, align 1
  %1901 = add i64 %1875, 8
  %1902 = add i64 %1867, 17
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RDX.i1753, align 8
  %1906 = add i64 %1865, -4
  %1907 = add i64 %1867, 20
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = sub i32 %1904, %1909
  %1911 = icmp ult i32 %1904, %1909
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1910, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1909, %1904
  %1919 = xor i32 %1918, %1910
  %1920 = lshr i32 %1919, 4
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  store i8 %1922, i8* %26, align 1
  %1923 = icmp eq i32 %1910, 0
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %29, align 1
  %1925 = lshr i32 %1910, 31
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %32, align 1
  %1927 = lshr i32 %1904, 31
  %1928 = lshr i32 %1909, 31
  %1929 = xor i32 %1928, %1927
  %1930 = xor i32 %1925, %1927
  %1931 = add nuw nsw i32 %1930, %1929
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %38, align 1
  %.v326 = select i1 %1923, i64 62, i64 26
  %1934 = add i64 %1867, %.v326
  store i64 %1934, i64* %3, align 8
  br i1 %1923, label %block_.L_46f380, label %block_46f35c

block_46f35c:                                     ; preds = %block_46f324
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %1935 = load i64, i64* %RBP.i, align 8
  %1936 = add i64 %1935, -728
  %1937 = add i64 %1934, 17
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = sext i32 %1939 to i64
  %1941 = mul nsw i64 %1940, 76
  store i64 %1941, i64* %RCX.i2228, align 8
  %1942 = lshr i64 %1941, 63
  %1943 = add i64 %1941, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1943, i64* %RAX.i2269, align 8
  %1944 = icmp ult i64 %1943, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1945 = icmp ult i64 %1943, %1941
  %1946 = or i1 %1944, %1945
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %14, align 1
  %1948 = trunc i64 %1943 to i32
  %1949 = and i32 %1948, 252
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i64 %1941, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1955 = xor i64 %1954, %1943
  %1956 = lshr i64 %1955, 4
  %1957 = trunc i64 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %26, align 1
  %1959 = icmp eq i64 %1943, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %29, align 1
  %1961 = lshr i64 %1943, 63
  %1962 = trunc i64 %1961 to i8
  store i8 %1962, i8* %32, align 1
  %1963 = xor i64 %1961, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1964 = xor i64 %1961, %1942
  %1965 = add nuw nsw i64 %1963, %1964
  %1966 = icmp eq i64 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %38, align 1
  %1968 = add i64 %1941, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %1969 = add i64 %1934, 27
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RDX.i1753, align 8
  %1973 = add i64 %1935, -8
  %1974 = add i64 %1934, 30
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = sub i32 %1971, %1976
  %1978 = icmp ult i32 %1971, %1976
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %14, align 1
  %1980 = and i32 %1977, 255
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  store i8 %1984, i8* %21, align 1
  %1985 = xor i32 %1976, %1971
  %1986 = xor i32 %1985, %1977
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  store i8 %1989, i8* %26, align 1
  %1990 = icmp eq i32 %1977, 0
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %29, align 1
  %1992 = lshr i32 %1977, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %32, align 1
  %1994 = lshr i32 %1971, 31
  %1995 = lshr i32 %1976, 31
  %1996 = xor i32 %1995, %1994
  %1997 = xor i32 %1992, %1994
  %1998 = add nuw nsw i32 %1997, %1996
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %38, align 1
  %.v327 = select i1 %1990, i64 36, i64 110
  %2001 = add i64 %1934, %.v327
  store i64 %2001, i64* %3, align 8
  br i1 %1990, label %block_.L_46f380, label %block_.L_46f3ca

block_.L_46f380:                                  ; preds = %block_46f35c, %block_46f324
  %2002 = phi i64 [ %2001, %block_46f35c ], [ %1934, %block_46f324 ]
  %2003 = load i64, i64* %RBP.i, align 8
  %2004 = add i64 %2003, -52
  %2005 = add i64 %2002, 3
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RDI.i1695, align 8
  %2009 = add i64 %2002, -139200
  %2010 = add i64 %2002, 8
  %2011 = load i64, i64* %6, align 8
  %2012 = add i64 %2011, -8
  %2013 = inttoptr i64 %2012 to i64*
  store i64 %2010, i64* %2013, align 8
  store i64 %2012, i64* %6, align 8
  store i64 %2009, i64* %3, align 8
  %call2_46f383 = tail call %struct.Memory* @sub_44d3c0.owl_substantial(%struct.State* nonnull %0, i64 %2009, %struct.Memory* %MEMORY.14)
  %2014 = load i32, i32* %EAX.i1691, align 4
  %2015 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2016 = and i32 %2014, 255
  %2017 = tail call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  store i8 %2020, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2021 = icmp eq i32 %2014, 0
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %29, align 1
  %2023 = lshr i32 %2014, 31
  %2024 = trunc i32 %2023 to i8
  store i8 %2024, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v328 = select i1 %2021, i64 61, i64 9
  %2025 = add i64 %2015, %.v328
  store i64 %2025, i64* %3, align 8
  br i1 %2021, label %block_.L_46f3c5, label %block_46f391

block_46f391:                                     ; preds = %block_.L_46f380
  %2026 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2027 = and i32 %2026, 64
  %2028 = zext i32 %2027 to i64
  store i64 %2028, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2030 = trunc i32 %2029 to i8
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit237 = lshr exact i32 %2027, 6
  %2032 = trunc i32 %.lobit237 to i8
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2034 = icmp eq i8 %2033, 0
  %.v329 = select i1 %2034, i64 24, i64 19
  %2035 = add i64 %2025, %.v329
  store i64 %2035, i64* %3, align 8
  br i1 %2034, label %block_.L_46f3a9, label %block_46f3a4

block_46f3a4:                                     ; preds = %block_46f391
  %2036 = add i64 %2035, 28
  store i64 %2036, i64* %3, align 8
  br label %block_.L_46f3c0

block_.L_46f3a9:                                  ; preds = %block_46f391
  store i64 ptrtoint (%G__0x580718_type* @G__0x580718 to i64), i64* %RDI.i1695, align 8
  %AL.i = bitcast %union.anon* %76 to i8*
  store i8 0, i8* %AL.i, align 1
  %2037 = add i64 %2035, -120313
  %2038 = add i64 %2035, 17
  %2039 = load i64, i64* %6, align 8
  %2040 = add i64 %2039, -8
  %2041 = inttoptr i64 %2040 to i64*
  store i64 %2038, i64* %2041, align 8
  store i64 %2040, i64* %6, align 8
  store i64 %2037, i64* %3, align 8
  %call2_46f3b5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2037, %struct.Memory* %MEMORY.14)
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -756
  %2044 = load i32, i32* %EAX.i1691, align 4
  %2045 = load i64, i64* %3, align 8
  %2046 = add i64 %2045, 6
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2043 to i32*
  store i32 %2044, i32* %2047, align 4
  %.pre221 = load i64, i64* %3, align 8
  br label %block_.L_46f3c0

block_.L_46f3c0:                                  ; preds = %block_.L_46f3a9, %block_46f3a4
  %2048 = phi i64 [ %.pre221, %block_.L_46f3a9 ], [ %2036, %block_46f3a4 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_46f3b5, %block_.L_46f3a9 ], [ %MEMORY.14, %block_46f3a4 ]
  %2049 = add i64 %2048, 3428
  br label %block_.L_470124.sink.split

block_.L_46f3c5:                                  ; preds = %block_.L_46f380
  %2050 = add i64 %2025, 5
  store i64 %2050, i64* %3, align 8
  br label %block_.L_46f3ca

block_.L_46f3ca:                                  ; preds = %block_46f35c, %block_.L_46f3c5
  %2051 = phi i64 [ %2050, %block_.L_46f3c5 ], [ %2001, %block_46f35c ]
  %2052 = load i64, i64* %RBP.i, align 8
  %2053 = add i64 %2052, -724
  %2054 = add i64 %2051, 11
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = add i32 %2056, 1
  %2058 = zext i32 %2057 to i64
  store i64 %2058, i64* %RAX.i2269, align 8
  %2059 = icmp eq i32 %2056, -1
  %2060 = icmp eq i32 %2057, 0
  %2061 = or i1 %2059, %2060
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %14, align 1
  %2063 = and i32 %2057, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %21, align 1
  %2068 = xor i32 %2057, %2056
  %2069 = lshr i32 %2068, 4
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %26, align 1
  %2072 = zext i1 %2060 to i8
  store i8 %2072, i8* %29, align 1
  %2073 = lshr i32 %2057, 31
  %2074 = trunc i32 %2073 to i8
  store i8 %2074, i8* %32, align 1
  %2075 = lshr i32 %2056, 31
  %2076 = xor i32 %2073, %2075
  %2077 = add nuw nsw i32 %2076, %2073
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %38, align 1
  %2080 = add i64 %2051, 20
  store i64 %2080, i64* %3, align 8
  store i32 %2057, i32* %2055, align 4
  %2081 = load i64, i64* %3, align 8
  %2082 = add i64 %2081, -201
  store i64 %2082, i64* %3, align 8
  br label %block_.L_46f315

block_.L_46f3e3:                                  ; preds = %block_.L_46f315
  %2083 = add i64 %1851, 5
  store i64 %2083, i64* %3, align 8
  br label %block_.L_46f3e8

block_.L_46f3e8:                                  ; preds = %block_46f2d8, %block_.L_46f3e3
  %2084 = phi i64 [ %2083, %block_.L_46f3e3 ], [ %1789, %block_46f2d8 ]
  %2085 = add i64 %2084, 5
  store i64 %2085, i64* %3, align 8
  br label %block_.L_46f3ed

block_.L_46f3ed:                                  ; preds = %block_46f295, %block_.L_46f271, %block_.L_46f3e8
  %2086 = phi i64 [ %1596, %block_.L_46f271 ], [ %1655, %block_46f295 ], [ %2085, %block_.L_46f3e8 ]
  %2087 = add i64 %2086, 5
  store i64 %2087, i64* %3, align 8
  %.pre222 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46f3f2

block_.L_46f3f2:                                  ; preds = %block_.L_46f3ed, %block_46f26c
  %2088 = phi i64 [ %1478, %block_46f26c ], [ %.pre222, %block_.L_46f3ed ]
  %storemerge121 = phi i64 [ %1534, %block_46f26c ], [ %2087, %block_.L_46f3ed ]
  %2089 = add i64 %2088, -52
  %2090 = add i64 %storemerge121, 3
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = add i32 %2092, 1
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RAX.i2269, align 8
  %2095 = icmp eq i32 %2092, -1
  %2096 = icmp eq i32 %2093, 0
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %14, align 1
  %2099 = and i32 %2093, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %21, align 1
  %2104 = xor i32 %2093, %2092
  %2105 = lshr i32 %2104, 4
  %2106 = trunc i32 %2105 to i8
  %2107 = and i8 %2106, 1
  store i8 %2107, i8* %26, align 1
  %2108 = zext i1 %2096 to i8
  store i8 %2108, i8* %29, align 1
  %2109 = lshr i32 %2093, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %32, align 1
  %2111 = lshr i32 %2092, 31
  %2112 = xor i32 %2109, %2111
  %2113 = add nuw nsw i32 %2112, %2109
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = add i64 %storemerge121, 9
  store i64 %2116, i64* %3, align 8
  store i32 %2093, i32* %2091, align 4
  %2117 = load i64, i64* %3, align 8
  %2118 = add i64 %2117, -433
  store i64 %2118, i64* %3, align 8
  br label %block_.L_46f24a

block_.L_46f400:                                  ; preds = %block_.L_46f24a
  %2119 = add i64 %1507, 7
  store i64 %2119, i64* %3, align 8
  store i32 21, i32* %1481, align 4
  %RDX.i1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_46f407

block_.L_46f407:                                  ; preds = %block_.L_46f480, %block_.L_46f400
  %2120 = phi i64 [ %.pre190, %block_.L_46f400 ], [ %2333, %block_.L_46f480 ]
  %2121 = load i64, i64* %RBP.i, align 8
  %2122 = add i64 %2121, -52
  %2123 = add i64 %2120, 7
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = add i32 %2125, -400
  %2127 = icmp ult i32 %2125, 400
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %14, align 1
  %2129 = and i32 %2126, 255
  %2130 = tail call i32 @llvm.ctpop.i32(i32 %2129)
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = xor i8 %2132, 1
  store i8 %2133, i8* %21, align 1
  %2134 = xor i32 %2125, 16
  %2135 = xor i32 %2134, %2126
  %2136 = lshr i32 %2135, 4
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  store i8 %2138, i8* %26, align 1
  %2139 = icmp eq i32 %2126, 0
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %29, align 1
  %2141 = lshr i32 %2126, 31
  %2142 = trunc i32 %2141 to i8
  store i8 %2142, i8* %32, align 1
  %2143 = lshr i32 %2125, 31
  %2144 = xor i32 %2141, %2143
  %2145 = add nuw nsw i32 %2144, %2143
  %2146 = icmp eq i32 %2145, 2
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %38, align 1
  %2148 = icmp ne i8 %2142, 0
  %2149 = xor i1 %2148, %2146
  %.v245 = select i1 %2149, i64 13, i64 140
  %2150 = add i64 %2120, %.v245
  store i64 %2150, i64* %3, align 8
  br i1 %2149, label %block_46f414, label %block_.L_46f493

block_46f414:                                     ; preds = %block_.L_46f407
  %2151 = add i64 %2150, 4
  store i64 %2151, i64* %3, align 8
  %2152 = load i32, i32* %2124, align 4
  %2153 = sext i32 %2152 to i64
  store i64 %2153, i64* %RAX.i2269, align 8
  %2154 = add nsw i64 %2153, 12099168
  %2155 = add i64 %2150, 12
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2154 to i8*
  %2157 = load i8, i8* %2156, align 1
  %2158 = zext i8 %2157 to i64
  store i64 %2158, i64* %RCX.i2228, align 8
  %2159 = zext i8 %2157 to i32
  %2160 = add nsw i32 %2159, -3
  %2161 = icmp ult i8 %2157, 3
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
  store i8 %2171, i8* %26, align 1
  %2172 = icmp eq i32 %2160, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %29, align 1
  %2174 = lshr i32 %2160, 31
  %2175 = trunc i32 %2174 to i8
  store i8 %2175, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v317 = select i1 %2172, i64 108, i64 21
  %2176 = add i64 %2150, %.v317
  store i64 %2176, i64* %3, align 8
  br i1 %2172, label %block_.L_46f480, label %block_46f429

block_46f429:                                     ; preds = %block_46f414
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %3, align 8
  %2178 = load i32, i32* %2124, align 4
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RDI.i1695, align 8
  %2180 = add i64 %2121, -4
  %2181 = add i64 %2176, 6
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = zext i32 %2183 to i64
  store i64 %2184, i64* %RSI.i2267, align 8
  %2185 = add i64 %2176, -325625
  %2186 = add i64 %2176, 11
  %2187 = load i64, i64* %6, align 8
  %2188 = add i64 %2187, -8
  %2189 = inttoptr i64 %2188 to i64*
  store i64 %2186, i64* %2189, align 8
  store i64 %2188, i64* %6, align 8
  store i64 %2185, i64* %3, align 8
  %call2_46f42f = tail call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* nonnull %0, i64 %2185, %struct.Memory* %MEMORY.14)
  %2190 = load i32, i32* %EAX.i1691, align 4
  %2191 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2192 = and i32 %2190, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2197 = icmp eq i32 %2190, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %29, align 1
  %2199 = lshr i32 %2190, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v318 = select i1 %2197, i64 9, i64 29
  %2201 = add i64 %2191, %.v318
  store i64 %2201, i64* %3, align 8
  br i1 %2197, label %block_46f43d, label %block_.L_46f451

block_46f43d:                                     ; preds = %block_46f429
  %2202 = load i64, i64* %RBP.i, align 8
  %2203 = add i64 %2202, -52
  %2204 = add i64 %2201, 3
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RDI.i1695, align 8
  %2208 = add i64 %2202, -8
  %2209 = add i64 %2201, 6
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  %2211 = load i32, i32* %2210, align 4
  %2212 = zext i32 %2211 to i64
  store i64 %2212, i64* %RSI.i2267, align 8
  %2213 = add i64 %2201, -325645
  %2214 = add i64 %2201, 11
  %2215 = load i64, i64* %6, align 8
  %2216 = add i64 %2215, -8
  %2217 = inttoptr i64 %2216 to i64*
  store i64 %2214, i64* %2217, align 8
  store i64 %2216, i64* %6, align 8
  store i64 %2213, i64* %3, align 8
  %call2_46f443 = tail call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* nonnull %0, i64 %2213, %struct.Memory* %MEMORY.14)
  %2218 = load i32, i32* %EAX.i1691, align 4
  %2219 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2220 = and i32 %2218, 255
  %2221 = tail call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  store i8 %2224, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2225 = icmp eq i32 %2218, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %29, align 1
  %2227 = lshr i32 %2218, 31
  %2228 = trunc i32 %2227 to i8
  store i8 %2228, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v319 = select i1 %2225, i64 56, i64 9
  %2229 = add i64 %2219, %.v319
  store i64 %2229, i64* %3, align 8
  br i1 %2225, label %block_.L_46f480, label %block_.L_46f451

block_.L_46f451:                                  ; preds = %block_46f429, %block_46f43d
  %2230 = phi i64 [ %2229, %block_46f43d ], [ %2201, %block_46f429 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %2231 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %2231, i64* %RCX.i2228, align 8
  %2232 = load i64, i64* %RBP.i, align 8
  %2233 = add i64 %2232, -52
  %2234 = add i64 %2230, 22
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  %2236 = load i32, i32* %2235, align 4
  %2237 = sext i32 %2236 to i64
  %2238 = mul nsw i64 %2237, 76
  store i64 %2238, i64* %RDX.i1551, align 8
  %2239 = lshr i64 %2238, 63
  %2240 = add i64 %2238, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2240, i64* %RAX.i2269, align 8
  %2241 = icmp ult i64 %2240, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2242 = icmp ult i64 %2240, %2238
  %2243 = or i1 %2241, %2242
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = trunc i64 %2240 to i32
  %2246 = and i32 %2245, 252
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %21, align 1
  %2251 = xor i64 %2238, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2252 = xor i64 %2251, %2240
  %2253 = lshr i64 %2252, 4
  %2254 = trunc i64 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %26, align 1
  %2256 = icmp eq i64 %2240, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %29, align 1
  %2258 = lshr i64 %2240, 63
  %2259 = trunc i64 %2258 to i8
  store i8 %2259, i8* %32, align 1
  %2260 = xor i64 %2258, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2261 = xor i64 %2258, %2239
  %2262 = add nuw nsw i64 %2260, %2261
  %2263 = icmp eq i64 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %38, align 1
  %2265 = add i64 %2238, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %2266 = add i64 %2230, 33
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = sext i32 %2268 to i64
  %2270 = mul nsw i64 %2269, 104
  store i64 %2270, i64* %RAX.i2269, align 8
  %2271 = lshr i64 %2270, 63
  %2272 = load i64, i64* %RCX.i2228, align 8
  %2273 = add i64 %2270, %2272
  store i64 %2273, i64* %RCX.i2228, align 8
  %2274 = icmp ult i64 %2273, %2272
  %2275 = icmp ult i64 %2273, %2270
  %2276 = or i1 %2274, %2275
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %14, align 1
  %2278 = trunc i64 %2273 to i32
  %2279 = and i32 %2278, 255
  %2280 = tail call i32 @llvm.ctpop.i32(i32 %2279)
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  %2283 = xor i8 %2282, 1
  store i8 %2283, i8* %21, align 1
  %2284 = xor i64 %2270, %2272
  %2285 = xor i64 %2284, %2273
  %2286 = lshr i64 %2285, 4
  %2287 = trunc i64 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %26, align 1
  %2289 = icmp eq i64 %2273, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %29, align 1
  %2291 = lshr i64 %2273, 63
  %2292 = trunc i64 %2291 to i8
  store i8 %2292, i8* %32, align 1
  %2293 = lshr i64 %2272, 63
  %2294 = xor i64 %2291, %2293
  %2295 = xor i64 %2291, %2271
  %2296 = add nuw nsw i64 %2294, %2295
  %2297 = icmp eq i64 %2296, 2
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %38, align 1
  %2299 = add i64 %2273, 88
  %2300 = add i64 %2230, 47
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i32*
  store i32 1, i32* %2301, align 4
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_46f480

block_.L_46f480:                                  ; preds = %block_.L_46f451, %block_46f43d, %block_46f414
  %2302 = phi i64 [ %.pre219, %block_.L_46f451 ], [ %2229, %block_46f43d ], [ %2176, %block_46f414 ]
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -52
  %2305 = add i64 %2302, 8
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = add i32 %2307, 1
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RAX.i2269, align 8
  %2310 = icmp eq i32 %2307, -1
  %2311 = icmp eq i32 %2308, 0
  %2312 = or i1 %2310, %2311
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %14, align 1
  %2314 = and i32 %2308, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %21, align 1
  %2319 = xor i32 %2308, %2307
  %2320 = lshr i32 %2319, 4
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  store i8 %2322, i8* %26, align 1
  %2323 = zext i1 %2311 to i8
  store i8 %2323, i8* %29, align 1
  %2324 = lshr i32 %2308, 31
  %2325 = trunc i32 %2324 to i8
  store i8 %2325, i8* %32, align 1
  %2326 = lshr i32 %2307, 31
  %2327 = xor i32 %2324, %2326
  %2328 = add nuw nsw i32 %2327, %2324
  %2329 = icmp eq i32 %2328, 2
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %38, align 1
  %2331 = add i64 %2302, 14
  store i64 %2331, i64* %3, align 8
  store i32 %2308, i32* %2306, align 4
  %2332 = load i64, i64* %3, align 8
  %2333 = add i64 %2332, -135
  store i64 %2333, i64* %3, align 8
  br label %block_.L_46f407

block_.L_46f493:                                  ; preds = %block_.L_46f407
  %2334 = add i64 %2150, 7
  store i64 %2334, i64* %3, align 8
  store i32 21, i32* %2124, align 4
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_46f49a

block_.L_46f49a:                                  ; preds = %block_.L_46f5ed, %block_.L_46f493
  %2335 = phi i64 [ %.pre191, %block_.L_46f493 ], [ %2903, %block_.L_46f5ed ]
  %2336 = load i64, i64* %RBP.i, align 8
  %2337 = add i64 %2336, -52
  %2338 = add i64 %2335, 7
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i32*
  %2340 = load i32, i32* %2339, align 4
  %2341 = add i32 %2340, -400
  %2342 = icmp ult i32 %2340, 400
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %14, align 1
  %2344 = and i32 %2341, 255
  %2345 = tail call i32 @llvm.ctpop.i32(i32 %2344)
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  store i8 %2348, i8* %21, align 1
  %2349 = xor i32 %2340, 16
  %2350 = xor i32 %2349, %2341
  %2351 = lshr i32 %2350, 4
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  store i8 %2353, i8* %26, align 1
  %2354 = icmp eq i32 %2341, 0
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %29, align 1
  %2356 = lshr i32 %2341, 31
  %2357 = trunc i32 %2356 to i8
  store i8 %2357, i8* %32, align 1
  %2358 = lshr i32 %2340, 31
  %2359 = xor i32 %2356, %2358
  %2360 = add nuw nsw i32 %2359, %2358
  %2361 = icmp eq i32 %2360, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %38, align 1
  %2363 = icmp ne i8 %2357, 0
  %2364 = xor i1 %2363, %2361
  %.v246 = select i1 %2364, i64 13, i64 353
  %2365 = add i64 %2335, %.v246
  store i64 %2365, i64* %3, align 8
  br i1 %2364, label %block_46f4a7, label %block_.L_46f5fb

block_46f4a7:                                     ; preds = %block_.L_46f49a
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %3, align 8
  %2367 = load i32, i32* %2339, align 4
  %2368 = sext i32 %2367 to i64
  store i64 %2368, i64* %RAX.i2269, align 8
  %2369 = add nsw i64 %2368, 12099168
  %2370 = add i64 %2365, 12
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i8*
  %2372 = load i8, i8* %2371, align 1
  %2373 = zext i8 %2372 to i64
  store i64 %2373, i64* %RCX.i2228, align 8
  %2374 = zext i8 %2372 to i32
  %2375 = add nsw i32 %2374, -3
  %2376 = icmp ult i8 %2372, 3
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %14, align 1
  %2378 = and i32 %2375, 255
  %2379 = tail call i32 @llvm.ctpop.i32(i32 %2378)
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  store i8 %2382, i8* %21, align 1
  %2383 = xor i32 %2375, %2374
  %2384 = lshr i32 %2383, 4
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  store i8 %2386, i8* %26, align 1
  %2387 = icmp eq i32 %2375, 0
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %29, align 1
  %2389 = lshr i32 %2375, 31
  %2390 = trunc i32 %2389 to i8
  store i8 %2390, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v307 = select i1 %2387, i64 21, i64 26
  %2391 = add i64 %2365, %.v307
  store i64 %2391, i64* %3, align 8
  br i1 %2387, label %block_46f4bc, label %block_.L_46f4c1

block_46f4bc:                                     ; preds = %block_46f4a7
  %2392 = add i64 %2391, 305
  br label %block_.L_46f5ed

block_.L_46f4c1:                                  ; preds = %block_46f4a7
  %2393 = add i64 %2391, 4
  store i64 %2393, i64* %3, align 8
  %2394 = load i32, i32* %2339, align 4
  %2395 = sext i32 %2394 to i64
  store i64 %2395, i64* %RAX.i2269, align 8
  %2396 = add nsw i64 %2395, 12099168
  %2397 = add i64 %2391, 12
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i8*
  %2399 = load i8, i8* %2398, align 1
  %2400 = zext i8 %2399 to i64
  store i64 %2400, i64* %RCX.i2228, align 8
  %2401 = zext i8 %2399 to i32
  %2402 = add nsw i32 %2401, -1
  %2403 = icmp eq i8 %2399, 0
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %14, align 1
  %2405 = and i32 %2402, 255
  %2406 = tail call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  store i8 %2409, i8* %21, align 1
  %2410 = xor i32 %2402, %2401
  %2411 = lshr i32 %2410, 4
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  store i8 %2413, i8* %26, align 1
  %2414 = icmp eq i32 %2402, 0
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %29, align 1
  %2416 = lshr i32 %2402, 31
  %2417 = trunc i32 %2416 to i8
  store i8 %2417, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v308 = select i1 %2414, i64 42, i64 21
  %2418 = add i64 %2391, %.v308
  store i64 %2418, i64* %3, align 8
  br i1 %2414, label %block_.L_46f4eb, label %block_46f4d6

block_46f4d6:                                     ; preds = %block_.L_46f4c1
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %3, align 8
  %2420 = load i32, i32* %2339, align 4
  %2421 = sext i32 %2420 to i64
  store i64 %2421, i64* %RAX.i2269, align 8
  %2422 = add nsw i64 %2421, 12099168
  %2423 = add i64 %2418, 12
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i8*
  %2425 = load i8, i8* %2424, align 1
  %2426 = zext i8 %2425 to i64
  store i64 %2426, i64* %RCX.i2228, align 8
  %2427 = zext i8 %2425 to i32
  %2428 = add nsw i32 %2427, -2
  %2429 = icmp ult i8 %2425, 2
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %14, align 1
  %2431 = and i32 %2428, 255
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %21, align 1
  %2436 = xor i32 %2428, %2427
  %2437 = lshr i32 %2436, 4
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  store i8 %2439, i8* %26, align 1
  %2440 = icmp eq i32 %2428, 0
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %29, align 1
  %2442 = lshr i32 %2428, 31
  %2443 = trunc i32 %2442 to i8
  store i8 %2443, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v309 = select i1 %2440, i64 21, i64 120
  %2444 = add i64 %2418, %.v309
  store i64 %2444, i64* %3, align 8
  br i1 %2440, label %block_.L_46f4eb, label %block_.L_46f54e

block_.L_46f4eb:                                  ; preds = %block_46f4d6, %block_.L_46f4c1
  %2445 = phi i64 [ %2444, %block_46f4d6 ], [ %2418, %block_.L_46f4c1 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i2269, align 8
  %2446 = add i64 %2445, 14
  store i64 %2446, i64* %3, align 8
  %2447 = load i32, i32* %2339, align 4
  %2448 = sext i32 %2447 to i64
  %2449 = mul nsw i64 %2448, 380
  store i64 %2449, i64* %RCX.i2228, align 8
  %2450 = lshr i64 %2449, 63
  %2451 = add i64 %2449, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2451, i64* %RAX.i2269, align 8
  %2452 = icmp ult i64 %2451, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2453 = icmp ult i64 %2451, %2449
  %2454 = or i1 %2452, %2453
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %14, align 1
  %2456 = trunc i64 %2451 to i32
  %2457 = and i32 %2456, 252
  %2458 = tail call i32 @llvm.ctpop.i32(i32 %2457)
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  %2461 = xor i8 %2460, 1
  store i8 %2461, i8* %21, align 1
  %2462 = xor i64 %2449, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2463 = xor i64 %2462, %2451
  %2464 = lshr i64 %2463, 4
  %2465 = trunc i64 %2464 to i8
  %2466 = and i8 %2465, 1
  store i8 %2466, i8* %26, align 1
  %2467 = icmp eq i64 %2451, 0
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %29, align 1
  %2469 = lshr i64 %2451, 63
  %2470 = trunc i64 %2469 to i8
  store i8 %2470, i8* %32, align 1
  %2471 = xor i64 %2469, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2472 = xor i64 %2469, %2450
  %2473 = add nuw nsw i64 %2471, %2472
  %2474 = icmp eq i64 %2473, 2
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %38, align 1
  %2476 = add i64 %2449, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 12)
  %2477 = add i64 %2445, 27
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RDX.i1753, align 8
  %2481 = add i64 %2445, 30
  store i64 %2481, i64* %3, align 8
  %2482 = load i32, i32* %2339, align 4
  %2483 = sub i32 %2479, %2482
  %2484 = icmp ult i32 %2479, %2482
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %14, align 1
  %2486 = and i32 %2483, 255
  %2487 = tail call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  store i8 %2490, i8* %21, align 1
  %2491 = xor i32 %2482, %2479
  %2492 = xor i32 %2491, %2483
  %2493 = lshr i32 %2492, 4
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %26, align 1
  %2496 = icmp eq i32 %2483, 0
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %29, align 1
  %2498 = lshr i32 %2483, 31
  %2499 = trunc i32 %2498 to i8
  store i8 %2499, i8* %32, align 1
  %2500 = lshr i32 %2479, 31
  %2501 = lshr i32 %2482, 31
  %2502 = xor i32 %2501, %2500
  %2503 = xor i32 %2498, %2500
  %2504 = add nuw nsw i32 %2503, %2502
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %38, align 1
  %.v314 = select i1 %2496, i64 36, i64 99
  %2507 = add i64 %2445, %.v314
  store i64 %2507, i64* %3, align 8
  %2508 = load i64, i64* %RBP.i, align 8
  br i1 %2496, label %block_46f50f, label %block_.L_46f54e

block_46f50f:                                     ; preds = %block_.L_46f4eb
  %2509 = add i64 %2508, -52
  %2510 = add i64 %2507, 3
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  %2513 = zext i32 %2512 to i64
  store i64 %2513, i64* %RDI.i1695, align 8
  %2514 = add i64 %2508, -4
  %2515 = add i64 %2507, 6
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2514 to i32*
  %2517 = load i32, i32* %2516, align 4
  %2518 = zext i32 %2517 to i64
  store i64 %2518, i64* %RSI.i2267, align 8
  %2519 = add i64 %2507, -325855
  %2520 = add i64 %2507, 11
  %2521 = load i64, i64* %6, align 8
  %2522 = add i64 %2521, -8
  %2523 = inttoptr i64 %2522 to i64*
  store i64 %2520, i64* %2523, align 8
  store i64 %2522, i64* %6, align 8
  store i64 %2519, i64* %3, align 8
  %call2_46f515 = tail call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* nonnull %0, i64 %2519, %struct.Memory* %MEMORY.14)
  %2524 = load i32, i32* %EAX.i1691, align 4
  %2525 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2526 = and i32 %2524, 255
  %2527 = tail call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  store i8 %2530, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2531 = icmp eq i32 %2524, 0
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %29, align 1
  %2533 = lshr i32 %2524, 31
  %2534 = trunc i32 %2533 to i8
  store i8 %2534, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v315 = select i1 %2531, i64 18, i64 9
  %2535 = add i64 %2525, %.v315
  store i64 %2535, i64* %3, align 8
  br i1 %2531, label %block_.L_46f52c, label %block_46f523

block_46f523:                                     ; preds = %block_46f50f
  %2536 = load i64, i64* %RBP.i, align 8
  %2537 = add i64 %2536, -12
  %2538 = add i64 %2535, 3
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = add i32 %2540, -1
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RAX.i2269, align 8
  %2543 = icmp ne i32 %2540, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %14, align 1
  %2545 = and i32 %2541, 255
  %2546 = tail call i32 @llvm.ctpop.i32(i32 %2545)
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  store i8 %2549, i8* %21, align 1
  %2550 = xor i32 %2540, 16
  %2551 = xor i32 %2550, %2541
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %26, align 1
  %2555 = icmp eq i32 %2541, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %29, align 1
  %2557 = lshr i32 %2541, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %32, align 1
  %2559 = lshr i32 %2540, 31
  %2560 = xor i32 %2557, %2559
  %2561 = xor i32 %2557, 1
  %2562 = add nuw nsw i32 %2560, %2561
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %38, align 1
  %2565 = add i64 %2535, 9
  store i64 %2565, i64* %3, align 8
  store i32 %2541, i32* %2539, align 4
  %.pre213 = load i64, i64* %3, align 8
  br label %block_.L_46f52c

block_.L_46f52c:                                  ; preds = %block_46f523, %block_46f50f
  %2566 = phi i64 [ %.pre213, %block_46f523 ], [ %2535, %block_46f50f ]
  %2567 = load i64, i64* %RBP.i, align 8
  %2568 = add i64 %2567, -52
  %2569 = add i64 %2566, 3
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i32*
  %2571 = load i32, i32* %2570, align 4
  %2572 = zext i32 %2571 to i64
  store i64 %2572, i64* %RDI.i1695, align 8
  %2573 = add i64 %2567, -8
  %2574 = add i64 %2566, 6
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RSI.i2267, align 8
  %2578 = add i64 %2566, -325884
  %2579 = add i64 %2566, 11
  %2580 = load i64, i64* %6, align 8
  %2581 = add i64 %2580, -8
  %2582 = inttoptr i64 %2581 to i64*
  store i64 %2579, i64* %2582, align 8
  store i64 %2581, i64* %6, align 8
  store i64 %2578, i64* %3, align 8
  %call2_46f532 = tail call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* nonnull %0, i64 %2578, %struct.Memory* %MEMORY.14)
  %2583 = load i32, i32* %EAX.i1691, align 4
  %2584 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2585 = and i32 %2583, 255
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2590 = icmp eq i32 %2583, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %29, align 1
  %2592 = lshr i32 %2583, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v316 = select i1 %2590, i64 18, i64 9
  %2594 = add i64 %2584, %.v316
  store i64 %2594, i64* %3, align 8
  br i1 %2590, label %block_.L_46f549, label %block_46f540

block_46f540:                                     ; preds = %block_.L_46f52c
  %2595 = load i64, i64* %RBP.i, align 8
  %2596 = add i64 %2595, -16
  %2597 = add i64 %2594, 3
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = add i32 %2599, -1
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RAX.i2269, align 8
  %2602 = icmp ne i32 %2599, 0
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %14, align 1
  %2604 = and i32 %2600, 255
  %2605 = tail call i32 @llvm.ctpop.i32(i32 %2604)
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  %2608 = xor i8 %2607, 1
  store i8 %2608, i8* %21, align 1
  %2609 = xor i32 %2599, 16
  %2610 = xor i32 %2609, %2600
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %26, align 1
  %2614 = icmp eq i32 %2600, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %29, align 1
  %2616 = lshr i32 %2600, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %32, align 1
  %2618 = lshr i32 %2599, 31
  %2619 = xor i32 %2616, %2618
  %2620 = xor i32 %2616, 1
  %2621 = add nuw nsw i32 %2619, %2620
  %2622 = icmp eq i32 %2621, 2
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %38, align 1
  %2624 = add i64 %2594, 9
  store i64 %2624, i64* %3, align 8
  store i32 %2600, i32* %2598, align 4
  %.pre214 = load i64, i64* %3, align 8
  br label %block_.L_46f549

block_.L_46f549:                                  ; preds = %block_46f540, %block_.L_46f52c
  %2625 = phi i64 [ %.pre214, %block_46f540 ], [ %2594, %block_.L_46f52c ]
  %2626 = add i64 %2625, 159
  br label %block_.L_46f5e8

block_.L_46f54e:                                  ; preds = %block_.L_46f4eb, %block_46f4d6
  %2627 = phi i64 [ %2444, %block_46f4d6 ], [ %2507, %block_.L_46f4eb ]
  %2628 = phi i64 [ %2336, %block_46f4d6 ], [ %2508, %block_.L_46f4eb ]
  %2629 = add i64 %2628, -52
  %2630 = add i64 %2627, 4
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = sext i32 %2632 to i64
  store i64 %2633, i64* %RAX.i2269, align 8
  %2634 = add nsw i64 %2633, 12099168
  %2635 = add i64 %2627, 12
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i8*
  %2637 = load i8, i8* %2636, align 1
  %2638 = zext i8 %2637 to i64
  store i64 %2638, i64* %RCX.i2228, align 8
  %2639 = zext i8 %2637 to i32
  store i8 0, i8* %14, align 1
  %2640 = tail call i32 @llvm.ctpop.i32(i32 %2639)
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = xor i8 %2642, 1
  store i8 %2643, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2644 = icmp eq i8 %2637, 0
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v310 = select i1 %2644, i64 21, i64 149
  %2646 = add i64 %2627, %.v310
  store i64 %2646, i64* %3, align 8
  br i1 %2644, label %block_46f563, label %block_.L_46f5e3

block_46f563:                                     ; preds = %block_.L_46f54e
  %2647 = add i64 %2646, 3
  store i64 %2647, i64* %3, align 8
  %2648 = load i32, i32* %2631, align 4
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RDI.i1695, align 8
  %2650 = add i64 %2628, -8
  %2651 = add i64 %2646, 6
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = zext i32 %2653 to i64
  store i64 %2654, i64* %RSI.i2267, align 8
  %2655 = add i64 %2646, 3021
  %2656 = add i64 %2646, 11
  %2657 = load i64, i64* %6, align 8
  %2658 = add i64 %2657, -8
  %2659 = inttoptr i64 %2658 to i64*
  store i64 %2656, i64* %2659, align 8
  store i64 %2658, i64* %6, align 8
  store i64 %2655, i64* %3, align 8
  %call2_46f569 = tail call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* nonnull %0, i64 %2655, %struct.Memory* %MEMORY.14)
  %2660 = load i32, i32* %EAX.i1691, align 4
  %2661 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2662 = and i32 %2660, 255
  %2663 = tail call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  store i8 %2666, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2667 = icmp eq i32 %2660, 0
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %29, align 1
  %2669 = lshr i32 %2660, 31
  %2670 = trunc i32 %2669 to i8
  store i8 %2670, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v311 = select i1 %2667, i64 78, i64 9
  %2671 = add i64 %2661, %.v311
  store i64 %2671, i64* %3, align 8
  %2672 = load i64, i64* %RBP.i, align 8
  br i1 %2667, label %block_.L_46f5bc, label %block_46f577

block_46f577:                                     ; preds = %block_46f563
  %2673 = add i64 %2672, -16
  %2674 = add i64 %2671, 3
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i32*
  %2676 = load i32, i32* %2675, align 4
  %2677 = add i32 %2676, 1
  %2678 = zext i32 %2677 to i64
  store i64 %2678, i64* %RAX.i2269, align 8
  %2679 = icmp eq i32 %2676, -1
  %2680 = icmp eq i32 %2677, 0
  %2681 = or i1 %2679, %2680
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %14, align 1
  %2683 = and i32 %2677, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %21, align 1
  %2688 = xor i32 %2677, %2676
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %26, align 1
  %2692 = zext i1 %2680 to i8
  store i8 %2692, i8* %29, align 1
  %2693 = lshr i32 %2677, 31
  %2694 = trunc i32 %2693 to i8
  store i8 %2694, i8* %32, align 1
  %2695 = lshr i32 %2676, 31
  %2696 = xor i32 %2693, %2695
  %2697 = add nuw nsw i32 %2696, %2693
  %2698 = icmp eq i32 %2697, 2
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %38, align 1
  %2700 = add i64 %2671, 9
  store i64 %2700, i64* %3, align 8
  store i32 %2677, i32* %2675, align 4
  %2701 = load i64, i64* %RBP.i, align 8
  %2702 = add i64 %2701, -52
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2702 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RDI.i1695, align 8
  %2708 = add i64 %2701, -4
  %2709 = add i64 %2703, 6
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i32*
  %2711 = load i32, i32* %2710, align 4
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RSI.i2267, align 8
  %2713 = add i64 %2703, 2992
  %2714 = add i64 %2703, 11
  %2715 = load i64, i64* %6, align 8
  %2716 = add i64 %2715, -8
  %2717 = inttoptr i64 %2716 to i64*
  store i64 %2714, i64* %2717, align 8
  store i64 %2716, i64* %6, align 8
  store i64 %2713, i64* %3, align 8
  %call2_46f586 = tail call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* nonnull %0, i64 %2713, %struct.Memory* %MEMORY.14)
  %2718 = load i32, i32* %EAX.i1691, align 4
  %2719 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2720 = and i32 %2718, 255
  %2721 = tail call i32 @llvm.ctpop.i32(i32 %2720)
  %2722 = trunc i32 %2721 to i8
  %2723 = and i8 %2722, 1
  %2724 = xor i8 %2723, 1
  store i8 %2724, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2725 = icmp eq i32 %2718, 0
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %29, align 1
  %2727 = lshr i32 %2718, 31
  %2728 = trunc i32 %2727 to i8
  store i8 %2728, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v312 = select i1 %2725, i64 38, i64 9
  %2729 = add i64 %2719, %.v312
  store i64 %2729, i64* %3, align 8
  %2730 = load i64, i64* %RBP.i, align 8
  br i1 %2725, label %block_.L_46f5b1, label %block_46f594

block_46f594:                                     ; preds = %block_46f577
  %2731 = add i64 %2730, -20
  %2732 = add i64 %2729, 3
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2731 to i32*
  %2734 = load i32, i32* %2733, align 4
  %2735 = add i32 %2734, 1
  %2736 = zext i32 %2735 to i64
  store i64 %2736, i64* %RAX.i2269, align 8
  %2737 = icmp eq i32 %2734, -1
  %2738 = icmp eq i32 %2735, 0
  %2739 = or i1 %2737, %2738
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %14, align 1
  %2741 = and i32 %2735, 255
  %2742 = tail call i32 @llvm.ctpop.i32(i32 %2741)
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  %2745 = xor i8 %2744, 1
  store i8 %2745, i8* %21, align 1
  %2746 = xor i32 %2735, %2734
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %26, align 1
  %2750 = zext i1 %2738 to i8
  store i8 %2750, i8* %29, align 1
  %2751 = lshr i32 %2735, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %32, align 1
  %2753 = lshr i32 %2734, 31
  %2754 = xor i32 %2751, %2753
  %2755 = add nuw nsw i32 %2754, %2751
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %38, align 1
  %2758 = add i64 %2729, 9
  store i64 %2758, i64* %3, align 8
  store i32 %2735, i32* %2733, align 4
  %2759 = load i64, i64* %RBP.i, align 8
  %2760 = add i64 %2759, -12
  %2761 = load i64, i64* %3, align 8
  %2762 = add i64 %2761, 3
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2760 to i32*
  %2764 = load i32, i32* %2763, align 4
  %2765 = add i32 %2764, 1
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RAX.i2269, align 8
  %2767 = icmp eq i32 %2764, -1
  %2768 = icmp eq i32 %2765, 0
  %2769 = or i1 %2767, %2768
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %14, align 1
  %2771 = and i32 %2765, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %21, align 1
  %2776 = xor i32 %2765, %2764
  %2777 = lshr i32 %2776, 4
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  store i8 %2779, i8* %26, align 1
  %2780 = zext i1 %2768 to i8
  store i8 %2780, i8* %29, align 1
  %2781 = lshr i32 %2765, 31
  %2782 = trunc i32 %2781 to i8
  store i8 %2782, i8* %32, align 1
  %2783 = lshr i32 %2764, 31
  %2784 = xor i32 %2781, %2783
  %2785 = add nuw nsw i32 %2784, %2781
  %2786 = icmp eq i32 %2785, 2
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %38, align 1
  %2788 = add i64 %2761, 9
  store i64 %2788, i64* %3, align 8
  store i32 %2765, i32* %2763, align 4
  %2789 = load i64, i64* %RBP.i, align 8
  %2790 = add i64 %2789, -52
  %2791 = load i64, i64* %3, align 8
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2790 to i32*
  %2794 = load i32, i32* %2793, align 4
  %2795 = zext i32 %2794 to i64
  store i64 %2795, i64* %RAX.i2269, align 8
  %2796 = add i64 %2789, -28
  %2797 = add i64 %2791, 6
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2796 to i32*
  store i32 %2794, i32* %2798, align 4
  %2799 = load i64, i64* %3, align 8
  %2800 = add i64 %2799, 11
  store i64 %2800, i64* %3, align 8
  br label %block_.L_46f5b7

block_.L_46f5b1:                                  ; preds = %block_46f577
  %2801 = add i64 %2730, -52
  %2802 = add i64 %2729, 3
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i32*
  %2804 = load i32, i32* %2803, align 4
  %2805 = zext i32 %2804 to i64
  store i64 %2805, i64* %RAX.i2269, align 8
  %2806 = add i64 %2730, -24
  %2807 = add i64 %2729, 6
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i32*
  store i32 %2804, i32* %2808, align 4
  %.pre216 = load i64, i64* %3, align 8
  br label %block_.L_46f5b7

block_.L_46f5b7:                                  ; preds = %block_.L_46f5b1, %block_46f594
  %2809 = phi i64 [ %.pre216, %block_.L_46f5b1 ], [ %2800, %block_46f594 ]
  %2810 = add i64 %2809, 39
  br label %block_.L_46f5de

block_.L_46f5bc:                                  ; preds = %block_46f563
  %2811 = add i64 %2672, -52
  %2812 = add i64 %2671, 3
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %RDI.i1695, align 8
  %2816 = add i64 %2672, -4
  %2817 = add i64 %2671, 6
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i32*
  %2819 = load i32, i32* %2818, align 4
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RSI.i2267, align 8
  %2821 = add i64 %2671, 2932
  %2822 = add i64 %2671, 11
  %2823 = load i64, i64* %6, align 8
  %2824 = add i64 %2823, -8
  %2825 = inttoptr i64 %2824 to i64*
  store i64 %2822, i64* %2825, align 8
  store i64 %2824, i64* %6, align 8
  store i64 %2821, i64* %3, align 8
  %call2_46f5c2 = tail call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* nonnull %0, i64 %2821, %struct.Memory* %MEMORY.14)
  %2826 = load i32, i32* %EAX.i1691, align 4
  %2827 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2828 = and i32 %2826, 255
  %2829 = tail call i32 @llvm.ctpop.i32(i32 %2828)
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  %2832 = xor i8 %2831, 1
  store i8 %2832, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2833 = icmp eq i32 %2826, 0
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %29, align 1
  %2835 = lshr i32 %2826, 31
  %2836 = trunc i32 %2835 to i8
  store i8 %2836, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v313 = select i1 %2833, i64 18, i64 9
  %2837 = add i64 %2827, %.v313
  store i64 %2837, i64* %3, align 8
  br i1 %2833, label %block_.L_46f5d9, label %block_46f5d0

block_46f5d0:                                     ; preds = %block_.L_46f5bc
  %2838 = load i64, i64* %RBP.i, align 8
  %2839 = add i64 %2838, -12
  %2840 = add i64 %2837, 3
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = add i32 %2842, 1
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RAX.i2269, align 8
  %2845 = icmp eq i32 %2842, -1
  %2846 = icmp eq i32 %2843, 0
  %2847 = or i1 %2845, %2846
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %14, align 1
  %2849 = and i32 %2843, 255
  %2850 = tail call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  store i8 %2853, i8* %21, align 1
  %2854 = xor i32 %2843, %2842
  %2855 = lshr i32 %2854, 4
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  store i8 %2857, i8* %26, align 1
  %2858 = zext i1 %2846 to i8
  store i8 %2858, i8* %29, align 1
  %2859 = lshr i32 %2843, 31
  %2860 = trunc i32 %2859 to i8
  store i8 %2860, i8* %32, align 1
  %2861 = lshr i32 %2842, 31
  %2862 = xor i32 %2859, %2861
  %2863 = add nuw nsw i32 %2862, %2859
  %2864 = icmp eq i32 %2863, 2
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %38, align 1
  %2866 = add i64 %2837, 9
  store i64 %2866, i64* %3, align 8
  store i32 %2843, i32* %2841, align 4
  %.pre217 = load i64, i64* %3, align 8
  br label %block_.L_46f5d9

block_.L_46f5d9:                                  ; preds = %block_46f5d0, %block_.L_46f5bc
  %2867 = phi i64 [ %.pre217, %block_46f5d0 ], [ %2837, %block_.L_46f5bc ]
  %2868 = add i64 %2867, 5
  store i64 %2868, i64* %3, align 8
  br label %block_.L_46f5de

block_.L_46f5de:                                  ; preds = %block_.L_46f5d9, %block_.L_46f5b7
  %storemerge125 = phi i64 [ %2810, %block_.L_46f5b7 ], [ %2868, %block_.L_46f5d9 ]
  %2869 = add i64 %storemerge125, 5
  store i64 %2869, i64* %3, align 8
  br label %block_.L_46f5e3

block_.L_46f5e3:                                  ; preds = %block_.L_46f54e, %block_.L_46f5de
  %2870 = phi i64 [ %2869, %block_.L_46f5de ], [ %2646, %block_.L_46f54e ]
  %2871 = add i64 %2870, 5
  store i64 %2871, i64* %3, align 8
  br label %block_.L_46f5e8

block_.L_46f5e8:                                  ; preds = %block_.L_46f5e3, %block_.L_46f549
  %storemerge124 = phi i64 [ %2626, %block_.L_46f549 ], [ %2871, %block_.L_46f5e3 ]
  %2872 = add i64 %storemerge124, 5
  store i64 %2872, i64* %3, align 8
  %.pre218 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46f5ed

block_.L_46f5ed:                                  ; preds = %block_.L_46f5e8, %block_46f4bc
  %2873 = phi i64 [ %2336, %block_46f4bc ], [ %.pre218, %block_.L_46f5e8 ]
  %storemerge123 = phi i64 [ %2392, %block_46f4bc ], [ %2872, %block_.L_46f5e8 ]
  %2874 = add i64 %2873, -52
  %2875 = add i64 %storemerge123, 3
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i32*
  %2877 = load i32, i32* %2876, align 4
  %2878 = add i32 %2877, 1
  %2879 = zext i32 %2878 to i64
  store i64 %2879, i64* %RAX.i2269, align 8
  %2880 = icmp eq i32 %2877, -1
  %2881 = icmp eq i32 %2878, 0
  %2882 = or i1 %2880, %2881
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %14, align 1
  %2884 = and i32 %2878, 255
  %2885 = tail call i32 @llvm.ctpop.i32(i32 %2884)
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  %2888 = xor i8 %2887, 1
  store i8 %2888, i8* %21, align 1
  %2889 = xor i32 %2878, %2877
  %2890 = lshr i32 %2889, 4
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  store i8 %2892, i8* %26, align 1
  %2893 = zext i1 %2881 to i8
  store i8 %2893, i8* %29, align 1
  %2894 = lshr i32 %2878, 31
  %2895 = trunc i32 %2894 to i8
  store i8 %2895, i8* %32, align 1
  %2896 = lshr i32 %2877, 31
  %2897 = xor i32 %2894, %2896
  %2898 = add nuw nsw i32 %2897, %2894
  %2899 = icmp eq i32 %2898, 2
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %38, align 1
  %2901 = add i64 %storemerge123, 9
  store i64 %2901, i64* %3, align 8
  store i32 %2878, i32* %2876, align 4
  %2902 = load i64, i64* %3, align 8
  %2903 = add i64 %2902, -348
  store i64 %2903, i64* %3, align 8
  br label %block_.L_46f49a

block_.L_46f5fb:                                  ; preds = %block_.L_46f49a
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %2904 = add i64 %2336, -4
  %2905 = add i64 %2365, 14
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = sext i32 %2907 to i64
  %2909 = mul nsw i64 %2908, 76
  store i64 %2909, i64* %RCX.i2228, align 8
  %2910 = lshr i64 %2909, 63
  %2911 = add i64 %2909, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2911, i64* %RAX.i2269, align 8
  %2912 = icmp ult i64 %2911, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2913 = icmp ult i64 %2911, %2909
  %2914 = or i1 %2912, %2913
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %14, align 1
  %2916 = trunc i64 %2911 to i32
  %2917 = and i32 %2916, 252
  %2918 = tail call i32 @llvm.ctpop.i32(i32 %2917)
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  %2921 = xor i8 %2920, 1
  store i8 %2921, i8* %21, align 1
  %2922 = xor i64 %2909, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2923 = xor i64 %2922, %2911
  %2924 = lshr i64 %2923, 4
  %2925 = trunc i64 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %26, align 1
  %2927 = icmp eq i64 %2911, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %29, align 1
  %2929 = lshr i64 %2911, 63
  %2930 = trunc i64 %2929 to i8
  store i8 %2930, i8* %32, align 1
  %2931 = xor i64 %2929, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2932 = xor i64 %2929, %2910
  %2933 = add nuw nsw i64 %2931, %2932
  %2934 = icmp eq i64 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %38, align 1
  %2936 = add i64 %2909, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %2937 = add i64 %2365, 25
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  %2939 = load i32, i32* %2938, align 4
  %2940 = add i32 %2939, -2
  %2941 = icmp ult i32 %2939, 2
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %14, align 1
  %2943 = and i32 %2940, 255
  %2944 = tail call i32 @llvm.ctpop.i32(i32 %2943)
  %2945 = trunc i32 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = xor i8 %2946, 1
  store i8 %2947, i8* %21, align 1
  %2948 = xor i32 %2940, %2939
  %2949 = lshr i32 %2948, 4
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  store i8 %2951, i8* %26, align 1
  %2952 = icmp eq i32 %2940, 0
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %29, align 1
  %2954 = lshr i32 %2940, 31
  %2955 = trunc i32 %2954 to i8
  store i8 %2955, i8* %32, align 1
  %2956 = lshr i32 %2939, 31
  %2957 = xor i32 %2954, %2956
  %2958 = add nuw nsw i32 %2957, %2956
  %2959 = icmp eq i32 %2958, 2
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %38, align 1
  %.v247 = select i1 %2952, i64 31, i64 112
  %2961 = add i64 %2365, %.v247
  store i64 %2961, i64* %3, align 8
  br i1 %2952, label %block_46f61a, label %block_.L_46f66b

block_46f61a:                                     ; preds = %block_.L_46f5fb
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %2962 = load i64, i64* %RBP.i, align 8
  %2963 = add i64 %2962, -4
  %2964 = add i64 %2961, 14
  store i64 %2964, i64* %3, align 8
  %2965 = inttoptr i64 %2963 to i32*
  %2966 = load i32, i32* %2965, align 4
  %2967 = sext i32 %2966 to i64
  %2968 = mul nsw i64 %2967, 76
  store i64 %2968, i64* %RCX.i2228, align 8
  %2969 = lshr i64 %2968, 63
  %2970 = add i64 %2968, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2970, i64* %RAX.i2269, align 8
  %2971 = icmp ult i64 %2970, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2972 = icmp ult i64 %2970, %2968
  %2973 = or i1 %2971, %2972
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %14, align 1
  %2975 = trunc i64 %2970 to i32
  %2976 = and i32 %2975, 252
  %2977 = tail call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  store i8 %2980, i8* %21, align 1
  %2981 = xor i64 %2968, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2982 = xor i64 %2981, %2970
  %2983 = lshr i64 %2982, 4
  %2984 = trunc i64 %2983 to i8
  %2985 = and i8 %2984, 1
  store i8 %2985, i8* %26, align 1
  %2986 = icmp eq i64 %2970, 0
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %29, align 1
  %2988 = lshr i64 %2970, 63
  %2989 = trunc i64 %2988 to i8
  store i8 %2989, i8* %32, align 1
  %2990 = xor i64 %2988, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2991 = xor i64 %2988, %2969
  %2992 = add nuw nsw i64 %2990, %2991
  %2993 = icmp eq i64 %2992, 2
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %38, align 1
  %2995 = add i64 %2968, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %2996 = add i64 %2961, 25
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  store i8 0, i8* %14, align 1
  %2999 = and i32 %2998, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3004 = icmp eq i32 %2998, 0
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %29, align 1
  %3006 = lshr i32 %2998, 31
  %3007 = trunc i32 %3006 to i8
  store i8 %3007, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v305 = select i1 %3004, i64 81, i64 31
  %3008 = add i64 %2961, %.v305
  store i64 %3008, i64* %3, align 8
  br i1 %3004, label %block_.L_46f66b, label %block_46f639

block_46f639:                                     ; preds = %block_46f61a
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %3009 = add i64 %3008, 14
  store i64 %3009, i64* %3, align 8
  %3010 = load i32, i32* %2965, align 4
  %3011 = sext i32 %3010 to i64
  %3012 = mul nsw i64 %3011, 76
  store i64 %3012, i64* %RCX.i2228, align 8
  %3013 = lshr i64 %3012, 63
  %3014 = add i64 %3012, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3014, i64* %RAX.i2269, align 8
  %3015 = icmp ult i64 %3014, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3016 = icmp ult i64 %3014, %3012
  %3017 = or i1 %3015, %3016
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %14, align 1
  %3019 = trunc i64 %3014 to i32
  %3020 = and i32 %3019, 252
  %3021 = tail call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  store i8 %3024, i8* %21, align 1
  %3025 = xor i64 %3012, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3026 = xor i64 %3025, %3014
  %3027 = lshr i64 %3026, 4
  %3028 = trunc i64 %3027 to i8
  %3029 = and i8 %3028, 1
  store i8 %3029, i8* %26, align 1
  %3030 = icmp eq i64 %3014, 0
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %29, align 1
  %3032 = lshr i64 %3014, 63
  %3033 = trunc i64 %3032 to i8
  store i8 %3033, i8* %32, align 1
  %3034 = xor i64 %3032, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3035 = xor i64 %3032, %3013
  %3036 = add nuw nsw i64 %3034, %3035
  %3037 = icmp eq i64 %3036, 2
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %38, align 1
  %3039 = add i64 %3012, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3040 = add i64 %3008, 24
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i32*
  %3042 = load i32, i32* %3041, align 4
  %3043 = zext i32 %3042 to i64
  store i64 %3043, i64* %RDI.i1695, align 8
  %3044 = add i64 %3008, 27
  store i64 %3044, i64* %3, align 8
  %3045 = load i32, i32* %2965, align 4
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RSI.i2267, align 8
  %3047 = add i64 %3008, -371593
  %3048 = add i64 %3008, 32
  %3049 = load i64, i64* %6, align 8
  %3050 = add i64 %3049, -8
  %3051 = inttoptr i64 %3050 to i64*
  store i64 %3048, i64* %3051, align 8
  store i64 %3050, i64* %6, align 8
  store i64 %3047, i64* %3, align 8
  %call2_46f654 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %3047, %struct.Memory* %MEMORY.14)
  %3052 = load i32, i32* %EAX.i1691, align 4
  %3053 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3054 = and i32 %3052, 255
  %3055 = tail call i32 @llvm.ctpop.i32(i32 %3054)
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  store i8 %3058, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3059 = icmp eq i32 %3052, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %29, align 1
  %3061 = lshr i32 %3052, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v306 = select i1 %3059, i64 9, i64 18
  %3063 = add i64 %3053, %.v306
  store i64 %3063, i64* %3, align 8
  br i1 %3059, label %block_46f662, label %block_.L_46f66b

block_46f662:                                     ; preds = %block_46f639
  %3064 = load i64, i64* %RBP.i, align 8
  %3065 = add i64 %3064, -12
  %3066 = add i64 %3063, 3
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i32*
  %3068 = load i32, i32* %3067, align 4
  %3069 = add i32 %3068, 1
  %3070 = zext i32 %3069 to i64
  store i64 %3070, i64* %RAX.i2269, align 8
  %3071 = icmp eq i32 %3068, -1
  %3072 = icmp eq i32 %3069, 0
  %3073 = or i1 %3071, %3072
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %14, align 1
  %3075 = and i32 %3069, 255
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %21, align 1
  %3080 = xor i32 %3069, %3068
  %3081 = lshr i32 %3080, 4
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  store i8 %3083, i8* %26, align 1
  %3084 = zext i1 %3072 to i8
  store i8 %3084, i8* %29, align 1
  %3085 = lshr i32 %3069, 31
  %3086 = trunc i32 %3085 to i8
  store i8 %3086, i8* %32, align 1
  %3087 = lshr i32 %3068, 31
  %3088 = xor i32 %3085, %3087
  %3089 = add nuw nsw i32 %3088, %3085
  %3090 = icmp eq i32 %3089, 2
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %38, align 1
  %3092 = add i64 %3063, 9
  store i64 %3092, i64* %3, align 8
  store i32 %3069, i32* %3067, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_46f66b

block_.L_46f66b:                                  ; preds = %block_46f639, %block_.L_46f5fb, %block_46f662, %block_46f61a
  %3093 = phi i64 [ %2961, %block_.L_46f5fb ], [ %3008, %block_46f61a ], [ %3063, %block_46f639 ], [ %.pre192, %block_46f662 ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.14, %block_.L_46f5fb ], [ %MEMORY.14, %block_46f61a ], [ %call2_46f654, %block_46f639 ], [ %call2_46f654, %block_46f662 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %3094 = load i64, i64* %RBP.i, align 8
  %3095 = add i64 %3094, -8
  %3096 = add i64 %3093, 14
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  %3098 = load i32, i32* %3097, align 4
  %3099 = sext i32 %3098 to i64
  %3100 = mul nsw i64 %3099, 76
  store i64 %3100, i64* %RCX.i2228, align 8
  %3101 = lshr i64 %3100, 63
  %3102 = add i64 %3100, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3102, i64* %RAX.i2269, align 8
  %3103 = icmp ult i64 %3102, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3104 = icmp ult i64 %3102, %3100
  %3105 = or i1 %3103, %3104
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %14, align 1
  %3107 = trunc i64 %3102 to i32
  %3108 = and i32 %3107, 252
  %3109 = tail call i32 @llvm.ctpop.i32(i32 %3108)
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = xor i8 %3111, 1
  store i8 %3112, i8* %21, align 1
  %3113 = xor i64 %3100, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3114 = xor i64 %3113, %3102
  %3115 = lshr i64 %3114, 4
  %3116 = trunc i64 %3115 to i8
  %3117 = and i8 %3116, 1
  store i8 %3117, i8* %26, align 1
  %3118 = icmp eq i64 %3102, 0
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %29, align 1
  %3120 = lshr i64 %3102, 63
  %3121 = trunc i64 %3120 to i8
  store i8 %3121, i8* %32, align 1
  %3122 = xor i64 %3120, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3123 = xor i64 %3120, %3101
  %3124 = add nuw nsw i64 %3122, %3123
  %3125 = icmp eq i64 %3124, 2
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %38, align 1
  %3127 = add i64 %3100, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %3128 = add i64 %3093, 25
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = add i32 %3130, -2
  %3132 = icmp ult i32 %3130, 2
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %14, align 1
  %3134 = and i32 %3131, 255
  %3135 = tail call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  store i8 %3138, i8* %21, align 1
  %3139 = xor i32 %3131, %3130
  %3140 = lshr i32 %3139, 4
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  store i8 %3142, i8* %26, align 1
  %3143 = icmp eq i32 %3131, 0
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %29, align 1
  %3145 = lshr i32 %3131, 31
  %3146 = trunc i32 %3145 to i8
  store i8 %3146, i8* %32, align 1
  %3147 = lshr i32 %3130, 31
  %3148 = xor i32 %3145, %3147
  %3149 = add nuw nsw i32 %3148, %3147
  %3150 = icmp eq i32 %3149, 2
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %38, align 1
  %.v248 = select i1 %3143, i64 31, i64 112
  %3152 = add i64 %3093, %.v248
  store i64 %3152, i64* %3, align 8
  br i1 %3143, label %block_46f68a, label %block_.L_46f6db

block_46f68a:                                     ; preds = %block_.L_46f66b
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %3153 = load i64, i64* %RBP.i, align 8
  %3154 = add i64 %3153, -8
  %3155 = add i64 %3152, 14
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3154 to i32*
  %3157 = load i32, i32* %3156, align 4
  %3158 = sext i32 %3157 to i64
  %3159 = mul nsw i64 %3158, 76
  store i64 %3159, i64* %RCX.i2228, align 8
  %3160 = lshr i64 %3159, 63
  %3161 = add i64 %3159, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3161, i64* %RAX.i2269, align 8
  %3162 = icmp ult i64 %3161, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3163 = icmp ult i64 %3161, %3159
  %3164 = or i1 %3162, %3163
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %14, align 1
  %3166 = trunc i64 %3161 to i32
  %3167 = and i32 %3166, 252
  %3168 = tail call i32 @llvm.ctpop.i32(i32 %3167)
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  %3171 = xor i8 %3170, 1
  store i8 %3171, i8* %21, align 1
  %3172 = xor i64 %3159, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3173 = xor i64 %3172, %3161
  %3174 = lshr i64 %3173, 4
  %3175 = trunc i64 %3174 to i8
  %3176 = and i8 %3175, 1
  store i8 %3176, i8* %26, align 1
  %3177 = icmp eq i64 %3161, 0
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %29, align 1
  %3179 = lshr i64 %3161, 63
  %3180 = trunc i64 %3179 to i8
  store i8 %3180, i8* %32, align 1
  %3181 = xor i64 %3179, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3182 = xor i64 %3179, %3160
  %3183 = add nuw nsw i64 %3181, %3182
  %3184 = icmp eq i64 %3183, 2
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %38, align 1
  %3186 = add i64 %3159, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3187 = add i64 %3152, 25
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i32*
  %3189 = load i32, i32* %3188, align 4
  store i8 0, i8* %14, align 1
  %3190 = and i32 %3189, 255
  %3191 = tail call i32 @llvm.ctpop.i32(i32 %3190)
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = xor i8 %3193, 1
  store i8 %3194, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3195 = icmp eq i32 %3189, 0
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %29, align 1
  %3197 = lshr i32 %3189, 31
  %3198 = trunc i32 %3197 to i8
  store i8 %3198, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v303 = select i1 %3195, i64 81, i64 31
  %3199 = add i64 %3152, %.v303
  store i64 %3199, i64* %3, align 8
  br i1 %3195, label %block_.L_46f6db, label %block_46f6a9

block_46f6a9:                                     ; preds = %block_46f68a
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %3200 = add i64 %3199, 14
  store i64 %3200, i64* %3, align 8
  %3201 = load i32, i32* %3156, align 4
  %3202 = sext i32 %3201 to i64
  %3203 = mul nsw i64 %3202, 76
  store i64 %3203, i64* %RCX.i2228, align 8
  %3204 = lshr i64 %3203, 63
  %3205 = add i64 %3203, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3205, i64* %RAX.i2269, align 8
  %3206 = icmp ult i64 %3205, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3207 = icmp ult i64 %3205, %3203
  %3208 = or i1 %3206, %3207
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %14, align 1
  %3210 = trunc i64 %3205 to i32
  %3211 = and i32 %3210, 252
  %3212 = tail call i32 @llvm.ctpop.i32(i32 %3211)
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  %3215 = xor i8 %3214, 1
  store i8 %3215, i8* %21, align 1
  %3216 = xor i64 %3203, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3217 = xor i64 %3216, %3205
  %3218 = lshr i64 %3217, 4
  %3219 = trunc i64 %3218 to i8
  %3220 = and i8 %3219, 1
  store i8 %3220, i8* %26, align 1
  %3221 = icmp eq i64 %3205, 0
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %29, align 1
  %3223 = lshr i64 %3205, 63
  %3224 = trunc i64 %3223 to i8
  store i8 %3224, i8* %32, align 1
  %3225 = xor i64 %3223, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3226 = xor i64 %3223, %3204
  %3227 = add nuw nsw i64 %3225, %3226
  %3228 = icmp eq i64 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %38, align 1
  %3230 = add i64 %3203, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3231 = add i64 %3199, 24
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i32*
  %3233 = load i32, i32* %3232, align 4
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RDI.i1695, align 8
  %3235 = add i64 %3199, 27
  store i64 %3235, i64* %3, align 8
  %3236 = load i32, i32* %3156, align 4
  %3237 = zext i32 %3236 to i64
  store i64 %3237, i64* %RSI.i2267, align 8
  %3238 = add i64 %3199, -371705
  %3239 = add i64 %3199, 32
  %3240 = load i64, i64* %6, align 8
  %3241 = add i64 %3240, -8
  %3242 = inttoptr i64 %3241 to i64*
  store i64 %3239, i64* %3242, align 8
  store i64 %3241, i64* %6, align 8
  store i64 %3238, i64* %3, align 8
  %call2_46f6c4 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %3238, %struct.Memory* %MEMORY.39)
  %3243 = load i32, i32* %EAX.i1691, align 4
  %3244 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3245 = and i32 %3243, 255
  %3246 = tail call i32 @llvm.ctpop.i32(i32 %3245)
  %3247 = trunc i32 %3246 to i8
  %3248 = and i8 %3247, 1
  %3249 = xor i8 %3248, 1
  store i8 %3249, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3250 = icmp eq i32 %3243, 0
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %29, align 1
  %3252 = lshr i32 %3243, 31
  %3253 = trunc i32 %3252 to i8
  store i8 %3253, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v304 = select i1 %3250, i64 9, i64 18
  %3254 = add i64 %3244, %.v304
  store i64 %3254, i64* %3, align 8
  br i1 %3250, label %block_46f6d2, label %block_.L_46f6db

block_46f6d2:                                     ; preds = %block_46f6a9
  %3255 = load i64, i64* %RBP.i, align 8
  %3256 = add i64 %3255, -16
  %3257 = add i64 %3254, 3
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i32*
  %3259 = load i32, i32* %3258, align 4
  %3260 = add i32 %3259, 1
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RAX.i2269, align 8
  %3262 = icmp eq i32 %3259, -1
  %3263 = icmp eq i32 %3260, 0
  %3264 = or i1 %3262, %3263
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %14, align 1
  %3266 = and i32 %3260, 255
  %3267 = tail call i32 @llvm.ctpop.i32(i32 %3266)
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  %3270 = xor i8 %3269, 1
  store i8 %3270, i8* %21, align 1
  %3271 = xor i32 %3260, %3259
  %3272 = lshr i32 %3271, 4
  %3273 = trunc i32 %3272 to i8
  %3274 = and i8 %3273, 1
  store i8 %3274, i8* %26, align 1
  %3275 = zext i1 %3263 to i8
  store i8 %3275, i8* %29, align 1
  %3276 = lshr i32 %3260, 31
  %3277 = trunc i32 %3276 to i8
  store i8 %3277, i8* %32, align 1
  %3278 = lshr i32 %3259, 31
  %3279 = xor i32 %3276, %3278
  %3280 = add nuw nsw i32 %3279, %3276
  %3281 = icmp eq i32 %3280, 2
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %38, align 1
  %3283 = add i64 %3254, 9
  store i64 %3283, i64* %3, align 8
  store i32 %3260, i32* %3258, align 4
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_46f6db

block_.L_46f6db:                                  ; preds = %block_46f6a9, %block_.L_46f66b, %block_46f6d2, %block_46f68a
  %3284 = phi i64 [ %3152, %block_.L_46f66b ], [ %3199, %block_46f68a ], [ %3254, %block_46f6a9 ], [ %.pre193, %block_46f6d2 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.39, %block_.L_46f66b ], [ %MEMORY.39, %block_46f68a ], [ %call2_46f6c4, %block_46f6a9 ], [ %call2_46f6c4, %block_46f6d2 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %3285 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %3285, i64* %RCX.i2228, align 8
  %3286 = load i64, i64* %RBP.i, align 8
  %3287 = add i64 %3286, -4
  %3288 = add i64 %3284, 22
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i32*
  %3290 = load i32, i32* %3289, align 4
  %3291 = sext i32 %3290 to i64
  %3292 = mul nsw i64 %3291, 76
  store i64 %3292, i64* %RDX.i1551, align 8
  %3293 = lshr i64 %3292, 63
  %3294 = add i64 %3292, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3294, i64* %RAX.i2269, align 8
  %3295 = icmp ult i64 %3294, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3296 = icmp ult i64 %3294, %3292
  %3297 = or i1 %3295, %3296
  %3298 = zext i1 %3297 to i8
  store i8 %3298, i8* %14, align 1
  %3299 = trunc i64 %3294 to i32
  %3300 = and i32 %3299, 252
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %21, align 1
  %3305 = xor i64 %3292, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3306 = xor i64 %3305, %3294
  %3307 = lshr i64 %3306, 4
  %3308 = trunc i64 %3307 to i8
  %3309 = and i8 %3308, 1
  store i8 %3309, i8* %26, align 1
  %3310 = icmp eq i64 %3294, 0
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %29, align 1
  %3312 = lshr i64 %3294, 63
  %3313 = trunc i64 %3312 to i8
  store i8 %3313, i8* %32, align 1
  %3314 = xor i64 %3312, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3315 = xor i64 %3312, %3293
  %3316 = add nuw nsw i64 %3314, %3315
  %3317 = icmp eq i64 %3316, 2
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %38, align 1
  %3319 = add i64 %3292, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %3320 = add i64 %3284, 33
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  %3322 = load i32, i32* %3321, align 4
  %3323 = sext i32 %3322 to i64
  %3324 = mul nsw i64 %3323, 104
  store i64 %3324, i64* %RAX.i2269, align 8
  %3325 = load i64, i64* %RCX.i2228, align 8
  %3326 = add i64 %3324, %3325
  %3327 = lshr i64 %3326, 63
  %3328 = add i64 %3326, 76
  store i64 %3328, i64* %RCX.i2228, align 8
  %3329 = icmp ugt i64 %3326, -77
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %14, align 1
  %3331 = trunc i64 %3328 to i32
  %3332 = and i32 %3331, 255
  %3333 = tail call i32 @llvm.ctpop.i32(i32 %3332)
  %3334 = trunc i32 %3333 to i8
  %3335 = and i8 %3334, 1
  %3336 = xor i8 %3335, 1
  store i8 %3336, i8* %21, align 1
  %3337 = xor i64 %3328, %3326
  %3338 = lshr i64 %3337, 4
  %3339 = trunc i64 %3338 to i8
  %3340 = and i8 %3339, 1
  store i8 %3340, i8* %26, align 1
  %3341 = icmp eq i64 %3328, 0
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %29, align 1
  %3343 = lshr i64 %3328, 63
  %3344 = trunc i64 %3343 to i8
  store i8 %3344, i8* %32, align 1
  %3345 = xor i64 %3343, %3327
  %3346 = add nuw nsw i64 %3345, %3343
  %3347 = icmp eq i64 %3346, 2
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %38, align 1
  store i64 %3328, i64* %RDI.i1695, align 8
  %3349 = add i64 %3284, -211947
  %3350 = add i64 %3284, 52
  %3351 = load i64, i64* %6, align 8
  %3352 = add i64 %3351, -8
  %3353 = inttoptr i64 %3352 to i64*
  store i64 %3350, i64* %3353, align 8
  store i64 %3352, i64* %6, align 8
  store i64 %3349, i64* %3, align 8
  %call2_46f70a = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %3349, %struct.Memory* %MEMORY.40)
  %3354 = load i32, i32* %EAX.i1691, align 4
  %3355 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3356 = and i32 %3354, 255
  %3357 = tail call i32 @llvm.ctpop.i32(i32 %3356)
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  store i8 %3360, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3361 = icmp eq i32 %3354, 0
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %29, align 1
  %3363 = lshr i32 %3354, 31
  %3364 = trunc i32 %3363 to i8
  store i8 %3364, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v249 = select i1 %3361, i64 9, i64 509
  %3365 = add i64 %3355, %.v249
  store i64 %3365, i64* %3, align 8
  br i1 %3361, label %block_46f718, label %block_.L_46f90c

block_46f718:                                     ; preds = %block_.L_46f6db
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %3366 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %3366, i64* %RCX.i2228, align 8
  %3367 = load i64, i64* %RBP.i, align 8
  %3368 = add i64 %3367, -8
  %3369 = add i64 %3365, 22
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3368 to i32*
  %3371 = load i32, i32* %3370, align 4
  %3372 = sext i32 %3371 to i64
  %3373 = mul nsw i64 %3372, 76
  store i64 %3373, i64* %RDX.i1551, align 8
  %3374 = lshr i64 %3373, 63
  %3375 = add i64 %3373, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3375, i64* %RAX.i2269, align 8
  %3376 = icmp ult i64 %3375, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3377 = icmp ult i64 %3375, %3373
  %3378 = or i1 %3376, %3377
  %3379 = zext i1 %3378 to i8
  store i8 %3379, i8* %14, align 1
  %3380 = trunc i64 %3375 to i32
  %3381 = and i32 %3380, 252
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %21, align 1
  %3386 = xor i64 %3373, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3387 = xor i64 %3386, %3375
  %3388 = lshr i64 %3387, 4
  %3389 = trunc i64 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1
  %3391 = icmp eq i64 %3375, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1
  %3393 = lshr i64 %3375, 63
  %3394 = trunc i64 %3393 to i8
  store i8 %3394, i8* %32, align 1
  %3395 = xor i64 %3393, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3396 = xor i64 %3393, %3374
  %3397 = add nuw nsw i64 %3395, %3396
  %3398 = icmp eq i64 %3397, 2
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %38, align 1
  %3400 = add i64 %3373, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %3401 = add i64 %3365, 33
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3400 to i32*
  %3403 = load i32, i32* %3402, align 4
  %3404 = sext i32 %3403 to i64
  %3405 = mul nsw i64 %3404, 104
  store i64 %3405, i64* %RAX.i2269, align 8
  %3406 = load i64, i64* %RCX.i2228, align 8
  %3407 = add i64 %3405, %3406
  %3408 = lshr i64 %3407, 63
  %3409 = add i64 %3407, 76
  store i64 %3409, i64* %RCX.i2228, align 8
  %3410 = icmp ugt i64 %3407, -77
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %14, align 1
  %3412 = trunc i64 %3409 to i32
  %3413 = and i32 %3412, 255
  %3414 = tail call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  store i8 %3417, i8* %21, align 1
  %3418 = xor i64 %3409, %3407
  %3419 = lshr i64 %3418, 4
  %3420 = trunc i64 %3419 to i8
  %3421 = and i8 %3420, 1
  store i8 %3421, i8* %26, align 1
  %3422 = icmp eq i64 %3409, 0
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %29, align 1
  %3424 = lshr i64 %3409, 63
  %3425 = trunc i64 %3424 to i8
  store i8 %3425, i8* %32, align 1
  %3426 = xor i64 %3424, %3408
  %3427 = add nuw nsw i64 %3426, %3424
  %3428 = icmp eq i64 %3427, 2
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %38, align 1
  store i64 %3409, i64* %RDI.i1695, align 8
  %3430 = add i64 %3365, -212008
  %3431 = add i64 %3365, 52
  %3432 = load i64, i64* %6, align 8
  %3433 = add i64 %3432, -8
  %3434 = inttoptr i64 %3433 to i64*
  store i64 %3431, i64* %3434, align 8
  store i64 %3433, i64* %6, align 8
  store i64 %3430, i64* %3, align 8
  %call2_46f747 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %3430, %struct.Memory* %call2_46f70a)
  %3435 = load i32, i32* %EAX.i1691, align 4
  %3436 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3437 = and i32 %3435, 255
  %3438 = tail call i32 @llvm.ctpop.i32(i32 %3437)
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  %3441 = xor i8 %3440, 1
  store i8 %3441, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3442 = icmp eq i32 %3435, 0
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %29, align 1
  %3444 = lshr i32 %3435, 31
  %3445 = trunc i32 %3444 to i8
  store i8 %3445, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v229 = select i1 %3442, i64 9, i64 448
  %3446 = add i64 %3436, %.v229
  store i64 %3446, i64* %3, align 8
  br i1 %3442, label %block_46f755, label %block_.L_46f90c

block_46f755:                                     ; preds = %block_46f718
  %3447 = load i64, i64* %RBP.i, align 8
  %3448 = add i64 %3447, -20
  %3449 = add i64 %3446, 4
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  store i8 0, i8* %14, align 1
  %3452 = and i32 %3451, 255
  %3453 = tail call i32 @llvm.ctpop.i32(i32 %3452)
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = xor i8 %3455, 1
  store i8 %3456, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3457 = icmp eq i32 %3451, 0
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %29, align 1
  %3459 = lshr i32 %3451, 31
  %3460 = trunc i32 %3459 to i8
  store i8 %3460, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %3457, i64 10, i64 121
  %3461 = add i64 %3446, %.v
  %3462 = add i64 %3447, -12
  %3463 = add i64 %3461, 3
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3462 to i32*
  %3465 = load i32, i32* %3464, align 4
  %3466 = zext i32 %3465 to i64
  store i64 %3466, i64* %RAX.i2269, align 8
  %3467 = add i64 %3447, -16
  %3468 = add i64 %3461, 6
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i32*
  %3470 = load i32, i32* %3469, align 4
  br i1 %3457, label %block_46f75f, label %block_.L_46f7ce

block_46f75f:                                     ; preds = %block_46f755
  %3471 = sub i32 %3465, %3470
  %3472 = icmp ult i32 %3465, %3470
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %14, align 1
  %3474 = and i32 %3471, 255
  %3475 = tail call i32 @llvm.ctpop.i32(i32 %3474)
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = xor i8 %3477, 1
  store i8 %3478, i8* %21, align 1
  %3479 = xor i32 %3470, %3465
  %3480 = xor i32 %3479, %3471
  %3481 = lshr i32 %3480, 4
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  store i8 %3483, i8* %26, align 1
  %3484 = icmp eq i32 %3471, 0
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %29, align 1
  %3486 = lshr i32 %3471, 31
  %3487 = trunc i32 %3486 to i8
  store i8 %3487, i8* %32, align 1
  %3488 = lshr i32 %3465, 31
  %3489 = lshr i32 %3470, 31
  %3490 = xor i32 %3489, %3488
  %3491 = xor i32 %3486, %3488
  %3492 = add nuw nsw i32 %3491, %3490
  %3493 = icmp eq i32 %3492, 2
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %38, align 1
  %3495 = icmp ne i8 %3487, 0
  %3496 = xor i1 %3495, %3493
  %3497 = or i1 %3484, %3496
  %.v231 = select i1 %3497, i64 40, i64 12
  %3498 = add i64 %3461, %.v231
  store i64 %3498, i64* %3, align 8
  br i1 %3497, label %block_.L_46f787, label %block_46f76b

block_46f76b:                                     ; preds = %block_46f75f
  %3499 = add i64 %3447, -36
  %3500 = add i64 %3498, 7
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  store i32 1, i32* %3501, align 4
  %3502 = load i64, i64* %RBP.i, align 8
  %3503 = add i64 %3502, -40
  %3504 = load i64, i64* %3, align 8
  %3505 = add i64 %3504, 7
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3503 to i32*
  store i32 0, i32* %3506, align 4
  %3507 = load i64, i64* %RBP.i, align 8
  %3508 = add i64 %3507, -12
  %3509 = load i64, i64* %3, align 8
  %3510 = add i64 %3509, 3
  store i64 %3510, i64* %3, align 8
  %3511 = inttoptr i64 %3508 to i32*
  %3512 = load i32, i32* %3511, align 4
  %3513 = zext i32 %3512 to i64
  store i64 %3513, i64* %RAX.i2269, align 8
  %3514 = add i64 %3507, -16
  %3515 = add i64 %3509, 6
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i32*
  %3517 = load i32, i32* %3516, align 4
  %3518 = sub i32 %3512, %3517
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RAX.i2269, align 8
  %3520 = icmp ult i32 %3512, %3517
  %3521 = zext i1 %3520 to i8
  store i8 %3521, i8* %14, align 1
  %3522 = and i32 %3518, 255
  %3523 = tail call i32 @llvm.ctpop.i32(i32 %3522)
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = xor i8 %3525, 1
  store i8 %3526, i8* %21, align 1
  %3527 = xor i32 %3517, %3512
  %3528 = xor i32 %3527, %3518
  %3529 = lshr i32 %3528, 4
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  store i8 %3531, i8* %26, align 1
  %3532 = icmp eq i32 %3518, 0
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %29, align 1
  %3534 = lshr i32 %3518, 31
  %3535 = trunc i32 %3534 to i8
  store i8 %3535, i8* %32, align 1
  %3536 = lshr i32 %3512, 31
  %3537 = lshr i32 %3517, 31
  %3538 = xor i32 %3537, %3536
  %3539 = xor i32 %3534, %3536
  %3540 = add nuw nsw i32 %3539, %3538
  %3541 = icmp eq i32 %3540, 2
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %38, align 1
  %3543 = add i64 %3507, -44
  %3544 = add i64 %3509, 9
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i32*
  store i32 %3518, i32* %3545, align 4
  %3546 = load i64, i64* %3, align 8
  %3547 = add i64 %3546, 71
  br label %block_.L_46f7c9

block_.L_46f787:                                  ; preds = %block_46f75f
  %3548 = add i64 %3498, 3
  store i64 %3548, i64* %3, align 8
  %3549 = load i32, i32* %3464, align 4
  %3550 = zext i32 %3549 to i64
  store i64 %3550, i64* %RAX.i2269, align 8
  %3551 = add i64 %3498, 6
  store i64 %3551, i64* %3, align 8
  %3552 = load i32, i32* %3469, align 4
  %3553 = sub i32 %3549, %3552
  %3554 = icmp ult i32 %3549, %3552
  %3555 = zext i1 %3554 to i8
  store i8 %3555, i8* %14, align 1
  %3556 = and i32 %3553, 255
  %3557 = tail call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  store i8 %3560, i8* %21, align 1
  %3561 = xor i32 %3552, %3549
  %3562 = xor i32 %3561, %3553
  %3563 = lshr i32 %3562, 4
  %3564 = trunc i32 %3563 to i8
  %3565 = and i8 %3564, 1
  store i8 %3565, i8* %26, align 1
  %3566 = icmp eq i32 %3553, 0
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %29, align 1
  %3568 = lshr i32 %3553, 31
  %3569 = trunc i32 %3568 to i8
  store i8 %3569, i8* %32, align 1
  %3570 = lshr i32 %3549, 31
  %3571 = lshr i32 %3552, 31
  %3572 = xor i32 %3571, %3570
  %3573 = xor i32 %3568, %3570
  %3574 = add nuw nsw i32 %3573, %3572
  %3575 = icmp eq i32 %3574, 2
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %38, align 1
  %3577 = icmp ne i8 %3569, 0
  %3578 = xor i1 %3577, %3575
  %.v230 = select i1 %3578, i64 12, i64 40
  %3579 = add i64 %3498, %.v230
  %3580 = add i64 %3447, -36
  %3581 = add i64 %3579, 7
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i32*
  br i1 %3578, label %block_46f793, label %block_.L_46f7af

block_46f793:                                     ; preds = %block_.L_46f787
  store i32 0, i32* %3582, align 4
  %3583 = load i64, i64* %RBP.i, align 8
  %3584 = add i64 %3583, -40
  %3585 = load i64, i64* %3, align 8
  %3586 = add i64 %3585, 7
  store i64 %3586, i64* %3, align 8
  %3587 = inttoptr i64 %3584 to i32*
  store i32 1, i32* %3587, align 4
  %3588 = load i64, i64* %RBP.i, align 8
  %3589 = add i64 %3588, -16
  %3590 = load i64, i64* %3, align 8
  %3591 = add i64 %3590, 3
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3589 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = zext i32 %3593 to i64
  store i64 %3594, i64* %RAX.i2269, align 8
  %3595 = add i64 %3588, -12
  %3596 = add i64 %3590, 6
  store i64 %3596, i64* %3, align 8
  %3597 = inttoptr i64 %3595 to i32*
  %3598 = load i32, i32* %3597, align 4
  %3599 = sub i32 %3593, %3598
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RAX.i2269, align 8
  %3601 = icmp ult i32 %3593, %3598
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %14, align 1
  %3603 = and i32 %3599, 255
  %3604 = tail call i32 @llvm.ctpop.i32(i32 %3603)
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  %3607 = xor i8 %3606, 1
  store i8 %3607, i8* %21, align 1
  %3608 = xor i32 %3598, %3593
  %3609 = xor i32 %3608, %3599
  %3610 = lshr i32 %3609, 4
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  store i8 %3612, i8* %26, align 1
  %3613 = icmp eq i32 %3599, 0
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %29, align 1
  %3615 = lshr i32 %3599, 31
  %3616 = trunc i32 %3615 to i8
  store i8 %3616, i8* %32, align 1
  %3617 = lshr i32 %3593, 31
  %3618 = lshr i32 %3598, 31
  %3619 = xor i32 %3618, %3617
  %3620 = xor i32 %3615, %3617
  %3621 = add nuw nsw i32 %3620, %3619
  %3622 = icmp eq i32 %3621, 2
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %38, align 1
  %3624 = add i64 %3588, -44
  %3625 = add i64 %3590, 9
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3624 to i32*
  store i32 %3599, i32* %3626, align 4
  %3627 = load i64, i64* %3, align 8
  %3628 = add i64 %3627, 26
  store i64 %3628, i64* %3, align 8
  br label %block_.L_46f7c4

block_.L_46f7af:                                  ; preds = %block_.L_46f787
  store i32 2, i32* %3582, align 4
  %3629 = load i64, i64* %RBP.i, align 8
  %3630 = add i64 %3629, -40
  %3631 = load i64, i64* %3, align 8
  %3632 = add i64 %3631, 7
  store i64 %3632, i64* %3, align 8
  %3633 = inttoptr i64 %3630 to i32*
  store i32 2, i32* %3633, align 4
  %3634 = load i64, i64* %RBP.i, align 8
  %3635 = add i64 %3634, -44
  %3636 = load i64, i64* %3, align 8
  %3637 = add i64 %3636, 7
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3635 to i32*
  store i32 0, i32* %3638, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_46f7c4

block_.L_46f7c4:                                  ; preds = %block_.L_46f7af, %block_46f793
  %3639 = phi i64 [ %.pre194, %block_.L_46f7af ], [ %3628, %block_46f793 ]
  %3640 = add i64 %3639, 5
  store i64 %3640, i64* %3, align 8
  br label %block_.L_46f7c9

block_.L_46f7c9:                                  ; preds = %block_.L_46f7c4, %block_46f76b
  %storemerge126 = phi i64 [ %3547, %block_46f76b ], [ %3640, %block_.L_46f7c4 ]
  %3641 = add i64 %storemerge126, 318
  br label %block_.L_46f907

block_.L_46f7ce:                                  ; preds = %block_46f755
  %3642 = zext i32 %3470 to i64
  store i64 %3642, i64* %RCX.i2228, align 8
  %3643 = add i64 %3461, 9
  store i64 %3643, i64* %3, align 8
  %3644 = load i32, i32* %3450, align 4
  %3645 = add i32 %3644, %3470
  %3646 = add i32 %3645, -1
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RCX.i2228, align 8
  %3648 = lshr i32 %3646, 31
  %3649 = sub i32 %3465, %3646
  %3650 = icmp ult i32 %3465, %3646
  %3651 = zext i1 %3650 to i8
  store i8 %3651, i8* %14, align 1
  %3652 = and i32 %3649, 255
  %3653 = tail call i32 @llvm.ctpop.i32(i32 %3652)
  %3654 = trunc i32 %3653 to i8
  %3655 = and i8 %3654, 1
  %3656 = xor i8 %3655, 1
  store i8 %3656, i8* %21, align 1
  %3657 = xor i32 %3646, %3465
  %3658 = xor i32 %3657, %3649
  %3659 = lshr i32 %3658, 4
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  store i8 %3661, i8* %26, align 1
  %3662 = icmp eq i32 %3649, 0
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %29, align 1
  %3664 = lshr i32 %3649, 31
  %3665 = trunc i32 %3664 to i8
  store i8 %3665, i8* %32, align 1
  %3666 = lshr i32 %3465, 31
  %3667 = xor i32 %3648, %3666
  %3668 = xor i32 %3664, %3666
  %3669 = add nuw nsw i32 %3668, %3667
  %3670 = icmp eq i32 %3669, 2
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %38, align 1
  %.v233 = select i1 %3662, i64 20, i64 82
  %3672 = add i64 %3461, %.v233
  store i64 %3672, i64* %3, align 8
  %3673 = load i64, i64* %RBP.i, align 8
  %3674 = add i64 %3673, -12
  br i1 %3662, label %block_46f7e2, label %block_.L_46f820

block_46f7e2:                                     ; preds = %block_.L_46f7ce
  %3675 = add i64 %3672, 4
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3674 to i32*
  %3677 = load i32, i32* %3676, align 4
  store i8 0, i8* %14, align 1
  %3678 = and i32 %3677, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3683 = icmp eq i32 %3677, 0
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %29, align 1
  %3685 = lshr i32 %3677, 31
  %3686 = trunc i32 %3685 to i8
  store i8 %3686, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v232 = select i1 %3683, i64 10, i64 36
  %3687 = add i64 %3672, %.v232
  %3688 = add i64 %3673, -36
  %3689 = add i64 %3687, 7
  store i64 %3689, i64* %3, align 8
  %3690 = inttoptr i64 %3688 to i32*
  br i1 %3683, label %block_46f7ec, label %block_.L_46f806

block_46f7ec:                                     ; preds = %block_46f7e2
  store i32 2, i32* %3690, align 4
  %3691 = load i64, i64* %RBP.i, align 8
  %3692 = add i64 %3691, -40
  %3693 = load i64, i64* %3, align 8
  %3694 = add i64 %3693, 7
  store i64 %3694, i64* %3, align 8
  %3695 = inttoptr i64 %3692 to i32*
  store i32 2, i32* %3695, align 4
  %3696 = load i64, i64* %RBP.i, align 8
  %3697 = add i64 %3696, -44
  %3698 = load i64, i64* %3, align 8
  %3699 = add i64 %3698, 7
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3697 to i32*
  store i32 0, i32* %3700, align 4
  %3701 = load i64, i64* %3, align 8
  %3702 = add i64 %3701, 26
  store i64 %3702, i64* %3, align 8
  br label %block_.L_46f81b

block_.L_46f806:                                  ; preds = %block_46f7e2
  store i32 1, i32* %3690, align 4
  %3703 = load i64, i64* %RBP.i, align 8
  %3704 = add i64 %3703, -40
  %3705 = load i64, i64* %3, align 8
  %3706 = add i64 %3705, 7
  store i64 %3706, i64* %3, align 8
  %3707 = inttoptr i64 %3704 to i32*
  store i32 2, i32* %3707, align 4
  %3708 = load i64, i64* %RBP.i, align 8
  %3709 = add i64 %3708, -44
  %3710 = load i64, i64* %3, align 8
  %3711 = add i64 %3710, 7
  store i64 %3711, i64* %3, align 8
  %3712 = inttoptr i64 %3709 to i32*
  store i32 0, i32* %3712, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_46f81b

block_.L_46f81b:                                  ; preds = %block_.L_46f806, %block_46f7ec
  %3713 = phi i64 [ %.pre195, %block_.L_46f806 ], [ %3702, %block_46f7ec ]
  %3714 = add i64 %3713, 231
  br label %block_.L_46f902

block_.L_46f820:                                  ; preds = %block_.L_46f7ce
  %3715 = add i64 %3672, 3
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3674 to i32*
  %3717 = load i32, i32* %3716, align 4
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RAX.i2269, align 8
  %3719 = add i64 %3673, -16
  %3720 = add i64 %3672, 6
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  %3722 = load i32, i32* %3721, align 4
  %3723 = zext i32 %3722 to i64
  store i64 %3723, i64* %RCX.i2228, align 8
  %3724 = add i64 %3673, -20
  %3725 = add i64 %3672, 9
  store i64 %3725, i64* %3, align 8
  %3726 = inttoptr i64 %3724 to i32*
  %3727 = load i32, i32* %3726, align 4
  %3728 = add i32 %3727, %3722
  %3729 = add i32 %3728, -1
  %3730 = zext i32 %3729 to i64
  store i64 %3730, i64* %RCX.i2228, align 8
  %3731 = lshr i32 %3729, 31
  %3732 = sub i32 %3717, %3729
  %3733 = icmp ult i32 %3717, %3729
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %14, align 1
  %3735 = and i32 %3732, 255
  %3736 = tail call i32 @llvm.ctpop.i32(i32 %3735)
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  %3739 = xor i8 %3738, 1
  store i8 %3739, i8* %21, align 1
  %3740 = xor i32 %3729, %3717
  %3741 = xor i32 %3740, %3732
  %3742 = lshr i32 %3741, 4
  %3743 = trunc i32 %3742 to i8
  %3744 = and i8 %3743, 1
  store i8 %3744, i8* %26, align 1
  %3745 = icmp eq i32 %3732, 0
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %29, align 1
  %3747 = lshr i32 %3732, 31
  %3748 = trunc i32 %3747 to i8
  store i8 %3748, i8* %32, align 1
  %3749 = lshr i32 %3717, 31
  %3750 = xor i32 %3731, %3749
  %3751 = xor i32 %3747, %3749
  %3752 = add nuw nsw i32 %3751, %3750
  %3753 = icmp eq i32 %3752, 2
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %38, align 1
  %3755 = icmp ne i8 %3748, 0
  %3756 = xor i1 %3755, %3753
  %.v299 = select i1 %3756, i64 20, i64 66
  %3757 = add i64 %3672, %.v299
  store i64 %3757, i64* %3, align 8
  br i1 %3756, label %block_46f834, label %block_.L_46f862

block_46f834:                                     ; preds = %block_.L_46f820
  %3758 = load i64, i64* %RBP.i, align 8
  %3759 = add i64 %3758, -16
  %3760 = add i64 %3757, 3
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  %3762 = load i32, i32* %3761, align 4
  %3763 = zext i32 %3762 to i64
  store i64 %3763, i64* %RAX.i2269, align 8
  %3764 = add i64 %3758, -12
  %3765 = add i64 %3757, 6
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3764 to i32*
  %3767 = load i32, i32* %3766, align 4
  %3768 = zext i32 %3767 to i64
  store i64 %3768, i64* %RCX.i2228, align 8
  %3769 = add i64 %3758, -20
  %3770 = add i64 %3757, 9
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = add i32 %3772, %3767
  %3774 = add i32 %3773, -1
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RCX.i2228, align 8
  %3776 = lshr i32 %3774, 31
  %3777 = sub i32 %3762, %3774
  %3778 = icmp ult i32 %3762, %3774
  %3779 = zext i1 %3778 to i8
  store i8 %3779, i8* %14, align 1
  %3780 = and i32 %3777, 255
  %3781 = tail call i32 @llvm.ctpop.i32(i32 %3780)
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  %3784 = xor i8 %3783, 1
  store i8 %3784, i8* %21, align 1
  %3785 = xor i32 %3774, %3762
  %3786 = xor i32 %3785, %3777
  %3787 = lshr i32 %3786, 4
  %3788 = trunc i32 %3787 to i8
  %3789 = and i8 %3788, 1
  store i8 %3789, i8* %26, align 1
  %3790 = icmp eq i32 %3777, 0
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %29, align 1
  %3792 = lshr i32 %3777, 31
  %3793 = trunc i32 %3792 to i8
  store i8 %3793, i8* %32, align 1
  %3794 = lshr i32 %3762, 31
  %3795 = xor i32 %3776, %3794
  %3796 = xor i32 %3792, %3794
  %3797 = add nuw nsw i32 %3796, %3795
  %3798 = icmp eq i32 %3797, 2
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %38, align 1
  %3800 = icmp ne i8 %3793, 0
  %3801 = xor i1 %3800, %3798
  %.v302 = select i1 %3801, i64 20, i64 46
  %3802 = add i64 %3757, %.v302
  store i64 %3802, i64* %3, align 8
  br i1 %3801, label %block_46f848, label %block_.L_46f862

block_46f848:                                     ; preds = %block_46f834
  %3803 = load i64, i64* %RBP.i, align 8
  %3804 = add i64 %3803, -36
  %3805 = add i64 %3802, 7
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3804 to i32*
  store i32 1, i32* %3806, align 4
  %3807 = load i64, i64* %RBP.i, align 8
  %3808 = add i64 %3807, -40
  %3809 = load i64, i64* %3, align 8
  %3810 = add i64 %3809, 7
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3808 to i32*
  store i32 1, i32* %3811, align 4
  %3812 = load i64, i64* %RBP.i, align 8
  %3813 = add i64 %3812, -44
  %3814 = load i64, i64* %3, align 8
  %3815 = add i64 %3814, 7
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3813 to i32*
  store i32 1000, i32* %3816, align 4
  %3817 = load i64, i64* %3, align 8
  %3818 = add i64 %3817, 160
  br label %block_.L_46f8fd

block_.L_46f862:                                  ; preds = %block_46f834, %block_.L_46f820
  %3819 = phi i64 [ %3802, %block_46f834 ], [ %3757, %block_.L_46f820 ]
  %3820 = load i64, i64* %RBP.i, align 8
  %3821 = add i64 %3820, -20
  %3822 = add i64 %3819, 4
  store i64 %3822, i64* %3, align 8
  %3823 = inttoptr i64 %3821 to i32*
  %3824 = load i32, i32* %3823, align 4
  store i8 0, i8* %14, align 1
  %3825 = and i32 %3824, 255
  %3826 = tail call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  store i8 %3829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3830 = icmp eq i32 %3824, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %29, align 1
  %3832 = lshr i32 %3824, 31
  %3833 = trunc i32 %3832 to i8
  store i8 %3833, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3834 = icmp ne i8 %3833, 0
  %3835 = or i1 %3830, %3834
  %.v236 = select i1 %3835, i64 92, i64 10
  %3836 = add i64 %3819, %.v236
  store i64 %3836, i64* %3, align 8
  br i1 %3835, label %block_.L_46f8be, label %block_46f86c

block_46f86c:                                     ; preds = %block_.L_46f862
  %3837 = add i64 %3820, -16
  %3838 = add i64 %3836, 3
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i32*
  %3840 = load i32, i32* %3839, align 4
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RAX.i2269, align 8
  %3842 = add i64 %3820, -12
  %3843 = add i64 %3836, 6
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3842 to i32*
  %3845 = load i32, i32* %3844, align 4
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RCX.i2228, align 8
  %3847 = add i64 %3836, 9
  store i64 %3847, i64* %3, align 8
  %3848 = load i32, i32* %3823, align 4
  %3849 = add i32 %3848, %3845
  %3850 = add i32 %3849, -1
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RCX.i2228, align 8
  %3852 = lshr i32 %3850, 31
  %3853 = sub i32 %3840, %3850
  %3854 = icmp ult i32 %3840, %3850
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %14, align 1
  %3856 = and i32 %3853, 255
  %3857 = tail call i32 @llvm.ctpop.i32(i32 %3856)
  %3858 = trunc i32 %3857 to i8
  %3859 = and i8 %3858, 1
  %3860 = xor i8 %3859, 1
  store i8 %3860, i8* %21, align 1
  %3861 = xor i32 %3850, %3840
  %3862 = xor i32 %3861, %3853
  %3863 = lshr i32 %3862, 4
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  store i8 %3865, i8* %26, align 1
  %3866 = icmp eq i32 %3853, 0
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %29, align 1
  %3868 = lshr i32 %3853, 31
  %3869 = trunc i32 %3868 to i8
  store i8 %3869, i8* %32, align 1
  %3870 = lshr i32 %3840, 31
  %3871 = xor i32 %3852, %3870
  %3872 = xor i32 %3868, %3870
  %3873 = add nuw nsw i32 %3872, %3871
  %3874 = icmp eq i32 %3873, 2
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %38, align 1
  %.v235 = select i1 %3866, i64 20, i64 82
  %3876 = add i64 %3836, %.v235
  store i64 %3876, i64* %3, align 8
  %3877 = load i64, i64* %RBP.i, align 8
  br i1 %3866, label %block_46f880, label %block_.L_46f8be

block_46f880:                                     ; preds = %block_46f86c
  %3878 = add i64 %3877, -16
  %3879 = add i64 %3876, 4
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i32*
  %3881 = load i32, i32* %3880, align 4
  store i8 0, i8* %14, align 1
  %3882 = and i32 %3881, 255
  %3883 = tail call i32 @llvm.ctpop.i32(i32 %3882)
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = xor i8 %3885, 1
  store i8 %3886, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3887 = icmp eq i32 %3881, 0
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %29, align 1
  %3889 = lshr i32 %3881, 31
  %3890 = trunc i32 %3889 to i8
  store i8 %3890, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v234 = select i1 %3887, i64 10, i64 36
  %3891 = add i64 %3876, %.v234
  %3892 = add i64 %3877, -36
  %3893 = add i64 %3891, 7
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i32*
  store i32 2, i32* %3894, align 4
  %3895 = load i64, i64* %RBP.i, align 8
  %3896 = add i64 %3895, -40
  %3897 = load i64, i64* %3, align 8
  %3898 = add i64 %3897, 7
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3896 to i32*
  br i1 %3887, label %block_46f88a, label %block_.L_46f8a4

block_46f88a:                                     ; preds = %block_46f880
  store i32 2, i32* %3899, align 4
  %3900 = load i64, i64* %RBP.i, align 8
  %3901 = add i64 %3900, -44
  %3902 = load i64, i64* %3, align 8
  %3903 = add i64 %3902, 7
  store i64 %3903, i64* %3, align 8
  %3904 = inttoptr i64 %3901 to i32*
  store i32 0, i32* %3904, align 4
  %3905 = load i64, i64* %3, align 8
  %3906 = add i64 %3905, 26
  store i64 %3906, i64* %3, align 8
  br label %block_.L_46f8b9

block_.L_46f8a4:                                  ; preds = %block_46f880
  store i32 1, i32* %3899, align 4
  %3907 = load i64, i64* %RBP.i, align 8
  %3908 = add i64 %3907, -44
  %3909 = load i64, i64* %3, align 8
  %3910 = add i64 %3909, 7
  store i64 %3910, i64* %3, align 8
  %3911 = inttoptr i64 %3908 to i32*
  store i32 0, i32* %3911, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_46f8b9

block_.L_46f8b9:                                  ; preds = %block_.L_46f8a4, %block_46f88a
  %3912 = phi i64 [ %.pre196, %block_.L_46f8a4 ], [ %3906, %block_46f88a ]
  %3913 = add i64 %3912, 63
  br label %block_.L_46f8f8

block_.L_46f8be:                                  ; preds = %block_46f86c, %block_.L_46f862
  %3914 = phi i64 [ %3836, %block_.L_46f862 ], [ %3876, %block_46f86c ]
  %3915 = phi i64 [ %3820, %block_.L_46f862 ], [ %3877, %block_46f86c ]
  %3916 = add i64 %3915, -20
  %3917 = add i64 %3914, 4
  store i64 %3917, i64* %3, align 8
  %3918 = inttoptr i64 %3916 to i32*
  %3919 = load i32, i32* %3918, align 4
  store i8 0, i8* %14, align 1
  %3920 = and i32 %3919, 255
  %3921 = tail call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  store i8 %3924, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3925 = icmp eq i32 %3919, 0
  %3926 = zext i1 %3925 to i8
  store i8 %3926, i8* %29, align 1
  %3927 = lshr i32 %3919, 31
  %3928 = trunc i32 %3927 to i8
  store i8 %3928, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3929 = icmp ne i8 %3928, 0
  %3930 = or i1 %3925, %3929
  %.v300 = select i1 %3930, i64 53, i64 10
  %3931 = add i64 %3914, %.v300
  store i64 %3931, i64* %3, align 8
  br i1 %3930, label %block_.L_46f8f3, label %block_46f8c8

block_46f8c8:                                     ; preds = %block_.L_46f8be
  %3932 = add i64 %3915, -16
  %3933 = add i64 %3931, 3
  store i64 %3933, i64* %3, align 8
  %3934 = inttoptr i64 %3932 to i32*
  %3935 = load i32, i32* %3934, align 4
  %3936 = zext i32 %3935 to i64
  store i64 %3936, i64* %RAX.i2269, align 8
  %3937 = add i64 %3915, -12
  %3938 = add i64 %3931, 6
  store i64 %3938, i64* %3, align 8
  %3939 = inttoptr i64 %3937 to i32*
  %3940 = load i32, i32* %3939, align 4
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RCX.i2228, align 8
  %3942 = add i64 %3931, 9
  store i64 %3942, i64* %3, align 8
  %3943 = load i32, i32* %3918, align 4
  %3944 = add i32 %3943, %3940
  %3945 = zext i32 %3944 to i64
  store i64 %3945, i64* %RCX.i2228, align 8
  %3946 = lshr i32 %3944, 31
  %3947 = sub i32 %3935, %3944
  %3948 = icmp ult i32 %3935, %3944
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %14, align 1
  %3950 = and i32 %3947, 255
  %3951 = tail call i32 @llvm.ctpop.i32(i32 %3950)
  %3952 = trunc i32 %3951 to i8
  %3953 = and i8 %3952, 1
  %3954 = xor i8 %3953, 1
  store i8 %3954, i8* %21, align 1
  %3955 = xor i32 %3944, %3935
  %3956 = xor i32 %3955, %3947
  %3957 = lshr i32 %3956, 4
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  store i8 %3959, i8* %26, align 1
  %3960 = icmp eq i32 %3947, 0
  %3961 = zext i1 %3960 to i8
  store i8 %3961, i8* %29, align 1
  %3962 = lshr i32 %3947, 31
  %3963 = trunc i32 %3962 to i8
  store i8 %3963, i8* %32, align 1
  %3964 = lshr i32 %3935, 31
  %3965 = xor i32 %3946, %3964
  %3966 = xor i32 %3962, %3964
  %3967 = add nuw nsw i32 %3966, %3965
  %3968 = icmp eq i32 %3967, 2
  %3969 = zext i1 %3968 to i8
  store i8 %3969, i8* %38, align 1
  %3970 = icmp ne i8 %3963, 0
  %3971 = xor i1 %3970, %3968
  %3972 = or i1 %3960, %3971
  %.v301 = select i1 %3972, i64 43, i64 17
  %3973 = add i64 %3931, %.v301
  store i64 %3973, i64* %3, align 8
  br i1 %3972, label %block_.L_46f8f3, label %block_46f8d9

block_46f8d9:                                     ; preds = %block_46f8c8
  %3974 = add i64 %3915, -36
  %3975 = add i64 %3973, 7
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i32*
  store i32 0, i32* %3976, align 4
  %3977 = load i64, i64* %RBP.i, align 8
  %3978 = add i64 %3977, -40
  %3979 = load i64, i64* %3, align 8
  %3980 = add i64 %3979, 7
  store i64 %3980, i64* %3, align 8
  %3981 = inttoptr i64 %3978 to i32*
  store i32 1, i32* %3981, align 4
  %3982 = load i64, i64* %RBP.i, align 8
  %3983 = add i64 %3982, -16
  %3984 = load i64, i64* %3, align 8
  %3985 = add i64 %3984, 3
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3983 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = zext i32 %3987 to i64
  store i64 %3988, i64* %RAX.i2269, align 8
  %3989 = add i64 %3982, -12
  %3990 = add i64 %3984, 6
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3989 to i32*
  %3992 = load i32, i32* %3991, align 4
  %3993 = sub i32 %3987, %3992
  %3994 = zext i32 %3993 to i64
  store i64 %3994, i64* %RAX.i2269, align 8
  %3995 = icmp ult i32 %3987, %3992
  %3996 = zext i1 %3995 to i8
  store i8 %3996, i8* %14, align 1
  %3997 = and i32 %3993, 255
  %3998 = tail call i32 @llvm.ctpop.i32(i32 %3997)
  %3999 = trunc i32 %3998 to i8
  %4000 = and i8 %3999, 1
  %4001 = xor i8 %4000, 1
  store i8 %4001, i8* %21, align 1
  %4002 = xor i32 %3992, %3987
  %4003 = xor i32 %4002, %3993
  %4004 = lshr i32 %4003, 4
  %4005 = trunc i32 %4004 to i8
  %4006 = and i8 %4005, 1
  store i8 %4006, i8* %26, align 1
  %4007 = icmp eq i32 %3993, 0
  %4008 = zext i1 %4007 to i8
  store i8 %4008, i8* %29, align 1
  %4009 = lshr i32 %3993, 31
  %4010 = trunc i32 %4009 to i8
  store i8 %4010, i8* %32, align 1
  %4011 = lshr i32 %3987, 31
  %4012 = lshr i32 %3992, 31
  %4013 = xor i32 %4012, %4011
  %4014 = xor i32 %4009, %4011
  %4015 = add nuw nsw i32 %4014, %4013
  %4016 = icmp eq i32 %4015, 2
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %38, align 1
  %4018 = add i64 %3982, -20
  %4019 = add i64 %3984, 9
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4018 to i32*
  %4021 = load i32, i32* %4020, align 4
  %4022 = sub i32 %3993, %4021
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RAX.i2269, align 8
  %4024 = icmp ult i32 %3993, %4021
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %14, align 1
  %4026 = and i32 %4022, 255
  %4027 = tail call i32 @llvm.ctpop.i32(i32 %4026)
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  %4030 = xor i8 %4029, 1
  store i8 %4030, i8* %21, align 1
  %4031 = xor i32 %4021, %3993
  %4032 = xor i32 %4031, %4022
  %4033 = lshr i32 %4032, 4
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  store i8 %4035, i8* %26, align 1
  %4036 = icmp eq i32 %4022, 0
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %29, align 1
  %4038 = lshr i32 %4022, 31
  %4039 = trunc i32 %4038 to i8
  store i8 %4039, i8* %32, align 1
  %4040 = lshr i32 %4021, 31
  %4041 = xor i32 %4040, %4009
  %4042 = xor i32 %4038, %4009
  %4043 = add nuw nsw i32 %4042, %4041
  %4044 = icmp eq i32 %4043, 2
  %4045 = zext i1 %4044 to i8
  store i8 %4045, i8* %38, align 1
  %4046 = add i64 %3982, -44
  %4047 = add i64 %3984, 12
  store i64 %4047, i64* %3, align 8
  %4048 = inttoptr i64 %4046 to i32*
  store i32 %4022, i32* %4048, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_46f8f3

block_.L_46f8f3:                                  ; preds = %block_46f8d9, %block_46f8c8, %block_.L_46f8be
  %4049 = phi i64 [ %.pre198, %block_46f8d9 ], [ %3973, %block_46f8c8 ], [ %3931, %block_.L_46f8be ]
  %4050 = add i64 %4049, 5
  store i64 %4050, i64* %3, align 8
  br label %block_.L_46f8f8

block_.L_46f8f8:                                  ; preds = %block_.L_46f8f3, %block_.L_46f8b9
  %storemerge147 = phi i64 [ %3913, %block_.L_46f8b9 ], [ %4050, %block_.L_46f8f3 ]
  %4051 = add i64 %storemerge147, 5
  store i64 %4051, i64* %3, align 8
  br label %block_.L_46f8fd

block_.L_46f8fd:                                  ; preds = %block_.L_46f8f8, %block_46f848
  %storemerge146 = phi i64 [ %3818, %block_46f848 ], [ %4051, %block_.L_46f8f8 ]
  %4052 = add i64 %storemerge146, 5
  store i64 %4052, i64* %3, align 8
  br label %block_.L_46f902

block_.L_46f902:                                  ; preds = %block_.L_46f8fd, %block_.L_46f81b
  %storemerge145 = phi i64 [ %3714, %block_.L_46f81b ], [ %4052, %block_.L_46f8fd ]
  %4053 = add i64 %storemerge145, 5
  store i64 %4053, i64* %3, align 8
  br label %block_.L_46f907

block_.L_46f907:                                  ; preds = %block_.L_46f902, %block_.L_46f7c9
  %storemerge127 = phi i64 [ %3641, %block_.L_46f7c9 ], [ %4053, %block_.L_46f902 ]
  %4054 = add i64 %storemerge127, 5
  store i64 %4054, i64* %3, align 8
  br label %block_.L_46f90c

block_.L_46f90c:                                  ; preds = %block_46f718, %block_.L_46f6db, %block_.L_46f907
  %4055 = phi i64 [ %3365, %block_.L_46f6db ], [ %3446, %block_46f718 ], [ %4054, %block_.L_46f907 ]
  %MEMORY.52 = phi %struct.Memory* [ %call2_46f70a, %block_.L_46f6db ], [ %call2_46f747, %block_46f718 ], [ %call2_46f747, %block_.L_46f907 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %4056 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %4056, i64* %RCX.i2228, align 8
  %4057 = load i64, i64* %RBP.i, align 8
  %4058 = add i64 %4057, -4
  %4059 = add i64 %4055, 22
  store i64 %4059, i64* %3, align 8
  %4060 = inttoptr i64 %4058 to i32*
  %4061 = load i32, i32* %4060, align 4
  %4062 = sext i32 %4061 to i64
  %4063 = mul nsw i64 %4062, 76
  store i64 %4063, i64* %RDX.i1551, align 8
  %4064 = lshr i64 %4063, 63
  %4065 = add i64 %4063, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4065, i64* %RAX.i2269, align 8
  %4066 = icmp ult i64 %4065, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4067 = icmp ult i64 %4065, %4063
  %4068 = or i1 %4066, %4067
  %4069 = zext i1 %4068 to i8
  store i8 %4069, i8* %14, align 1
  %4070 = trunc i64 %4065 to i32
  %4071 = and i32 %4070, 252
  %4072 = tail call i32 @llvm.ctpop.i32(i32 %4071)
  %4073 = trunc i32 %4072 to i8
  %4074 = and i8 %4073, 1
  %4075 = xor i8 %4074, 1
  store i8 %4075, i8* %21, align 1
  %4076 = xor i64 %4063, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4077 = xor i64 %4076, %4065
  %4078 = lshr i64 %4077, 4
  %4079 = trunc i64 %4078 to i8
  %4080 = and i8 %4079, 1
  store i8 %4080, i8* %26, align 1
  %4081 = icmp eq i64 %4065, 0
  %4082 = zext i1 %4081 to i8
  store i8 %4082, i8* %29, align 1
  %4083 = lshr i64 %4065, 63
  %4084 = trunc i64 %4083 to i8
  store i8 %4084, i8* %32, align 1
  %4085 = xor i64 %4083, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4086 = xor i64 %4083, %4064
  %4087 = add nuw nsw i64 %4085, %4086
  %4088 = icmp eq i64 %4087, 2
  %4089 = zext i1 %4088 to i8
  store i8 %4089, i8* %38, align 1
  %4090 = add i64 %4063, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %4091 = add i64 %4055, 33
  store i64 %4091, i64* %3, align 8
  %4092 = inttoptr i64 %4090 to i32*
  %4093 = load i32, i32* %4092, align 4
  %4094 = sext i32 %4093 to i64
  %4095 = mul nsw i64 %4094, 104
  store i64 %4095, i64* %RAX.i2269, align 8
  %4096 = load i64, i64* %RCX.i2228, align 8
  %4097 = add i64 %4095, %4096
  %4098 = lshr i64 %4097, 63
  %4099 = add i64 %4097, 76
  store i64 %4099, i64* %RCX.i2228, align 8
  %4100 = icmp ugt i64 %4097, -77
  %4101 = zext i1 %4100 to i8
  store i8 %4101, i8* %14, align 1
  %4102 = trunc i64 %4099 to i32
  %4103 = and i32 %4102, 255
  %4104 = tail call i32 @llvm.ctpop.i32(i32 %4103)
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  %4107 = xor i8 %4106, 1
  store i8 %4107, i8* %21, align 1
  %4108 = xor i64 %4099, %4097
  %4109 = lshr i64 %4108, 4
  %4110 = trunc i64 %4109 to i8
  %4111 = and i8 %4110, 1
  store i8 %4111, i8* %26, align 1
  %4112 = icmp eq i64 %4099, 0
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %29, align 1
  %4114 = lshr i64 %4099, 63
  %4115 = trunc i64 %4114 to i8
  store i8 %4115, i8* %32, align 1
  %4116 = xor i64 %4114, %4098
  %4117 = add nuw nsw i64 %4116, %4114
  %4118 = icmp eq i64 %4117, 2
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %38, align 1
  store i64 %4099, i64* %RDI.i1695, align 8
  %4120 = add i64 %4055, -212508
  %4121 = add i64 %4055, 52
  %4122 = load i64, i64* %6, align 8
  %4123 = add i64 %4122, -8
  %4124 = inttoptr i64 %4123 to i64*
  store i64 %4121, i64* %4124, align 8
  store i64 %4123, i64* %6, align 8
  store i64 %4120, i64* %3, align 8
  %call2_46f93b = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %4120, %struct.Memory* %MEMORY.52)
  %4125 = load i32, i32* %EAX.i1691, align 4
  %4126 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4127 = and i32 %4125, 255
  %4128 = tail call i32 @llvm.ctpop.i32(i32 %4127)
  %4129 = trunc i32 %4128 to i8
  %4130 = and i8 %4129, 1
  %4131 = xor i8 %4130, 1
  store i8 %4131, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4132 = icmp eq i32 %4125, 0
  %4133 = zext i1 %4132 to i8
  store i8 %4133, i8* %29, align 1
  %4134 = lshr i32 %4125, 31
  %4135 = trunc i32 %4134 to i8
  store i8 %4135, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4136 = icmp ne i8 %4135, 0
  %4137 = or i1 %4132, %4136
  %.v250 = select i1 %4137, i64 415, i64 9
  %4138 = add i64 %4126, %.v250
  store i64 %4138, i64* %3, align 8
  br i1 %4137, label %block_.L_46fadf, label %block_46f949

block_46f949:                                     ; preds = %block_.L_46f90c
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %4139 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %4139, i64* %RCX.i2228, align 8
  %4140 = load i64, i64* %RBP.i, align 8
  %4141 = add i64 %4140, -8
  %4142 = add i64 %4138, 22
  store i64 %4142, i64* %3, align 8
  %4143 = inttoptr i64 %4141 to i32*
  %4144 = load i32, i32* %4143, align 4
  %4145 = sext i32 %4144 to i64
  %4146 = mul nsw i64 %4145, 76
  store i64 %4146, i64* %RDX.i1551, align 8
  %4147 = lshr i64 %4146, 63
  %4148 = add i64 %4146, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4148, i64* %RAX.i2269, align 8
  %4149 = icmp ult i64 %4148, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4150 = icmp ult i64 %4148, %4146
  %4151 = or i1 %4149, %4150
  %4152 = zext i1 %4151 to i8
  store i8 %4152, i8* %14, align 1
  %4153 = trunc i64 %4148 to i32
  %4154 = and i32 %4153, 252
  %4155 = tail call i32 @llvm.ctpop.i32(i32 %4154)
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = xor i8 %4157, 1
  store i8 %4158, i8* %21, align 1
  %4159 = xor i64 %4146, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4160 = xor i64 %4159, %4148
  %4161 = lshr i64 %4160, 4
  %4162 = trunc i64 %4161 to i8
  %4163 = and i8 %4162, 1
  store i8 %4163, i8* %26, align 1
  %4164 = icmp eq i64 %4148, 0
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %29, align 1
  %4166 = lshr i64 %4148, 63
  %4167 = trunc i64 %4166 to i8
  store i8 %4167, i8* %32, align 1
  %4168 = xor i64 %4166, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4169 = xor i64 %4166, %4147
  %4170 = add nuw nsw i64 %4168, %4169
  %4171 = icmp eq i64 %4170, 2
  %4172 = zext i1 %4171 to i8
  store i8 %4172, i8* %38, align 1
  %4173 = add i64 %4146, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %4174 = add i64 %4138, 33
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i32*
  %4176 = load i32, i32* %4175, align 4
  %4177 = sext i32 %4176 to i64
  %4178 = mul nsw i64 %4177, 104
  store i64 %4178, i64* %RAX.i2269, align 8
  %4179 = load i64, i64* %RCX.i2228, align 8
  %4180 = add i64 %4178, %4179
  %4181 = lshr i64 %4180, 63
  %4182 = add i64 %4180, 76
  store i64 %4182, i64* %RCX.i2228, align 8
  %4183 = icmp ugt i64 %4180, -77
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %14, align 1
  %4185 = trunc i64 %4182 to i32
  %4186 = and i32 %4185, 255
  %4187 = tail call i32 @llvm.ctpop.i32(i32 %4186)
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = xor i8 %4189, 1
  store i8 %4190, i8* %21, align 1
  %4191 = xor i64 %4182, %4180
  %4192 = lshr i64 %4191, 4
  %4193 = trunc i64 %4192 to i8
  %4194 = and i8 %4193, 1
  store i8 %4194, i8* %26, align 1
  %4195 = icmp eq i64 %4182, 0
  %4196 = zext i1 %4195 to i8
  store i8 %4196, i8* %29, align 1
  %4197 = lshr i64 %4182, 63
  %4198 = trunc i64 %4197 to i8
  store i8 %4198, i8* %32, align 1
  %4199 = xor i64 %4197, %4181
  %4200 = add nuw nsw i64 %4199, %4197
  %4201 = icmp eq i64 %4200, 2
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %38, align 1
  store i64 %4182, i64* %RDI.i1695, align 8
  %4203 = add i64 %4138, -212569
  %4204 = add i64 %4138, 52
  %4205 = load i64, i64* %6, align 8
  %4206 = add i64 %4205, -8
  %4207 = inttoptr i64 %4206 to i64*
  store i64 %4204, i64* %4207, align 8
  store i64 %4206, i64* %6, align 8
  store i64 %4203, i64* %3, align 8
  %call2_46f978 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %4203, %struct.Memory* %call2_46f93b)
  %4208 = load i32, i32* %EAX.i1691, align 4
  %4209 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4210 = and i32 %4208, 255
  %4211 = tail call i32 @llvm.ctpop.i32(i32 %4210)
  %4212 = trunc i32 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = xor i8 %4213, 1
  store i8 %4214, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4215 = icmp eq i32 %4208, 0
  %4216 = zext i1 %4215 to i8
  store i8 %4216, i8* %29, align 1
  %4217 = lshr i32 %4208, 31
  %4218 = trunc i32 %4217 to i8
  store i8 %4218, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4219 = icmp ne i8 %4218, 0
  %4220 = or i1 %4215, %4219
  %.v251 = select i1 %4220, i64 354, i64 9
  %4221 = add i64 %4209, %.v251
  store i64 %4221, i64* %3, align 8
  br i1 %4220, label %block_.L_46fadf, label %block_46f986

block_46f986:                                     ; preds = %block_46f949
  %4222 = load i64, i64* %RBP.i, align 8
  %4223 = add i64 %4222, -12
  %4224 = add i64 %4221, 3
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i32*
  %4226 = load i32, i32* %4225, align 4
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RAX.i2269, align 8
  %4228 = add i64 %4222, -16
  %4229 = add i64 %4221, 6
  store i64 %4229, i64* %3, align 8
  %4230 = inttoptr i64 %4228 to i32*
  %4231 = load i32, i32* %4230, align 4
  %4232 = zext i32 %4231 to i64
  store i64 %4232, i64* %RCX.i2228, align 8
  %4233 = add i64 %4222, -20
  %4234 = add i64 %4221, 9
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  %4236 = load i32, i32* %4235, align 4
  %4237 = add i32 %4236, %4231
  %4238 = zext i32 %4237 to i64
  store i64 %4238, i64* %RCX.i2228, align 8
  %4239 = lshr i32 %4237, 31
  %4240 = sub i32 %4226, %4237
  %4241 = icmp ult i32 %4226, %4237
  %4242 = zext i1 %4241 to i8
  store i8 %4242, i8* %14, align 1
  %4243 = and i32 %4240, 255
  %4244 = tail call i32 @llvm.ctpop.i32(i32 %4243)
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  %4247 = xor i8 %4246, 1
  store i8 %4247, i8* %21, align 1
  %4248 = xor i32 %4237, %4226
  %4249 = xor i32 %4248, %4240
  %4250 = lshr i32 %4249, 4
  %4251 = trunc i32 %4250 to i8
  %4252 = and i8 %4251, 1
  store i8 %4252, i8* %26, align 1
  %4253 = icmp eq i32 %4240, 0
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %29, align 1
  %4255 = lshr i32 %4240, 31
  %4256 = trunc i32 %4255 to i8
  store i8 %4256, i8* %32, align 1
  %4257 = lshr i32 %4226, 31
  %4258 = xor i32 %4239, %4257
  %4259 = xor i32 %4255, %4257
  %4260 = add nuw nsw i32 %4259, %4258
  %4261 = icmp eq i32 %4260, 2
  %4262 = zext i1 %4261 to i8
  store i8 %4262, i8* %38, align 1
  %4263 = icmp ne i8 %4256, 0
  %4264 = xor i1 %4263, %4261
  %4265 = or i1 %4253, %4264
  %.v252 = select i1 %4265, i64 48, i64 17
  %4266 = add i64 %4221, %.v252
  store i64 %4266, i64* %3, align 8
  br i1 %4265, label %block_.L_46f9b6, label %block_46f997

block_46f997:                                     ; preds = %block_46f986
  %4267 = add i64 %4222, -36
  %4268 = add i64 %4266, 7
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i32*
  store i32 1, i32* %4269, align 4
  %4270 = load i64, i64* %RBP.i, align 8
  %4271 = add i64 %4270, -40
  %4272 = load i64, i64* %3, align 8
  %4273 = add i64 %4272, 7
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4271 to i32*
  store i32 0, i32* %4274, align 4
  %4275 = load i64, i64* %RBP.i, align 8
  %4276 = add i64 %4275, -12
  %4277 = load i64, i64* %3, align 8
  %4278 = add i64 %4277, 3
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4276 to i32*
  %4280 = load i32, i32* %4279, align 4
  %4281 = zext i32 %4280 to i64
  store i64 %4281, i64* %RAX.i2269, align 8
  %4282 = add i64 %4275, -16
  %4283 = add i64 %4277, 6
  store i64 %4283, i64* %3, align 8
  %4284 = inttoptr i64 %4282 to i32*
  %4285 = load i32, i32* %4284, align 4
  %4286 = sub i32 %4280, %4285
  %4287 = zext i32 %4286 to i64
  store i64 %4287, i64* %RAX.i2269, align 8
  %4288 = icmp ult i32 %4280, %4285
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %14, align 1
  %4290 = and i32 %4286, 255
  %4291 = tail call i32 @llvm.ctpop.i32(i32 %4290)
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  %4294 = xor i8 %4293, 1
  store i8 %4294, i8* %21, align 1
  %4295 = xor i32 %4285, %4280
  %4296 = xor i32 %4295, %4286
  %4297 = lshr i32 %4296, 4
  %4298 = trunc i32 %4297 to i8
  %4299 = and i8 %4298, 1
  store i8 %4299, i8* %26, align 1
  %4300 = icmp eq i32 %4286, 0
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %29, align 1
  %4302 = lshr i32 %4286, 31
  %4303 = trunc i32 %4302 to i8
  store i8 %4303, i8* %32, align 1
  %4304 = lshr i32 %4280, 31
  %4305 = lshr i32 %4285, 31
  %4306 = xor i32 %4305, %4304
  %4307 = xor i32 %4302, %4304
  %4308 = add nuw nsw i32 %4307, %4306
  %4309 = icmp eq i32 %4308, 2
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %38, align 1
  %4311 = add i64 %4275, -20
  %4312 = add i64 %4277, 9
  store i64 %4312, i64* %3, align 8
  %4313 = inttoptr i64 %4311 to i32*
  %4314 = load i32, i32* %4313, align 4
  %4315 = sub i32 %4286, %4314
  %4316 = zext i32 %4315 to i64
  store i64 %4316, i64* %RAX.i2269, align 8
  %4317 = icmp ult i32 %4286, %4314
  %4318 = zext i1 %4317 to i8
  store i8 %4318, i8* %14, align 1
  %4319 = and i32 %4315, 255
  %4320 = tail call i32 @llvm.ctpop.i32(i32 %4319)
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = xor i8 %4322, 1
  store i8 %4323, i8* %21, align 1
  %4324 = xor i32 %4314, %4286
  %4325 = xor i32 %4324, %4315
  %4326 = lshr i32 %4325, 4
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  store i8 %4328, i8* %26, align 1
  %4329 = icmp eq i32 %4315, 0
  %4330 = zext i1 %4329 to i8
  store i8 %4330, i8* %29, align 1
  %4331 = lshr i32 %4315, 31
  %4332 = trunc i32 %4331 to i8
  store i8 %4332, i8* %32, align 1
  %4333 = lshr i32 %4314, 31
  %4334 = xor i32 %4333, %4302
  %4335 = xor i32 %4331, %4302
  %4336 = add nuw nsw i32 %4335, %4334
  %4337 = icmp eq i32 %4336, 2
  %4338 = zext i1 %4337 to i8
  store i8 %4338, i8* %38, align 1
  %4339 = add i64 %4275, -44
  %4340 = add i64 %4277, 12
  store i64 %4340, i64* %3, align 8
  %4341 = inttoptr i64 %4339 to i32*
  store i32 %4315, i32* %4341, align 4
  %4342 = load i64, i64* %3, align 8
  %4343 = add i64 %4342, 297
  br label %block_.L_46fada

block_.L_46f9b6:                                  ; preds = %block_46f986
  %4344 = add i64 %4266, 3
  store i64 %4344, i64* %3, align 8
  %4345 = load i32, i32* %4230, align 4
  %4346 = zext i32 %4345 to i64
  store i64 %4346, i64* %RAX.i2269, align 8
  %4347 = add i64 %4266, 6
  store i64 %4347, i64* %3, align 8
  %4348 = load i32, i32* %4225, align 4
  %4349 = zext i32 %4348 to i64
  store i64 %4349, i64* %RCX.i2228, align 8
  %4350 = add i64 %4266, 9
  store i64 %4350, i64* %3, align 8
  %4351 = load i32, i32* %4235, align 4
  %4352 = add i32 %4351, %4348
  %4353 = zext i32 %4352 to i64
  store i64 %4353, i64* %RCX.i2228, align 8
  %4354 = lshr i32 %4352, 31
  %4355 = sub i32 %4345, %4352
  %4356 = icmp ult i32 %4345, %4352
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %14, align 1
  %4358 = and i32 %4355, 255
  %4359 = tail call i32 @llvm.ctpop.i32(i32 %4358)
  %4360 = trunc i32 %4359 to i8
  %4361 = and i8 %4360, 1
  %4362 = xor i8 %4361, 1
  store i8 %4362, i8* %21, align 1
  %4363 = xor i32 %4352, %4345
  %4364 = xor i32 %4363, %4355
  %4365 = lshr i32 %4364, 4
  %4366 = trunc i32 %4365 to i8
  %4367 = and i8 %4366, 1
  store i8 %4367, i8* %26, align 1
  %4368 = icmp eq i32 %4355, 0
  %4369 = zext i1 %4368 to i8
  store i8 %4369, i8* %29, align 1
  %4370 = lshr i32 %4355, 31
  %4371 = trunc i32 %4370 to i8
  store i8 %4371, i8* %32, align 1
  %4372 = lshr i32 %4345, 31
  %4373 = xor i32 %4354, %4372
  %4374 = xor i32 %4370, %4372
  %4375 = add nuw nsw i32 %4374, %4373
  %4376 = icmp eq i32 %4375, 2
  %4377 = zext i1 %4376 to i8
  store i8 %4377, i8* %38, align 1
  %4378 = icmp ne i8 %4371, 0
  %4379 = xor i1 %4378, %4376
  %4380 = or i1 %4368, %4379
  %.v289 = select i1 %4380, i64 48, i64 17
  %4381 = add i64 %4266, %.v289
  store i64 %4381, i64* %3, align 8
  br i1 %4380, label %block_.L_46f9e6, label %block_46f9c7

block_46f9c7:                                     ; preds = %block_.L_46f9b6
  %4382 = add i64 %4222, -36
  %4383 = add i64 %4381, 7
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  store i32 0, i32* %4384, align 4
  %4385 = load i64, i64* %RBP.i, align 8
  %4386 = add i64 %4385, -40
  %4387 = load i64, i64* %3, align 8
  %4388 = add i64 %4387, 7
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4386 to i32*
  store i32 1, i32* %4389, align 4
  %4390 = load i64, i64* %RBP.i, align 8
  %4391 = add i64 %4390, -16
  %4392 = load i64, i64* %3, align 8
  %4393 = add i64 %4392, 3
  store i64 %4393, i64* %3, align 8
  %4394 = inttoptr i64 %4391 to i32*
  %4395 = load i32, i32* %4394, align 4
  %4396 = zext i32 %4395 to i64
  store i64 %4396, i64* %RAX.i2269, align 8
  %4397 = add i64 %4390, -12
  %4398 = add i64 %4392, 6
  store i64 %4398, i64* %3, align 8
  %4399 = inttoptr i64 %4397 to i32*
  %4400 = load i32, i32* %4399, align 4
  %4401 = sub i32 %4395, %4400
  %4402 = zext i32 %4401 to i64
  store i64 %4402, i64* %RAX.i2269, align 8
  %4403 = icmp ult i32 %4395, %4400
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %14, align 1
  %4405 = and i32 %4401, 255
  %4406 = tail call i32 @llvm.ctpop.i32(i32 %4405)
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  store i8 %4409, i8* %21, align 1
  %4410 = xor i32 %4400, %4395
  %4411 = xor i32 %4410, %4401
  %4412 = lshr i32 %4411, 4
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  store i8 %4414, i8* %26, align 1
  %4415 = icmp eq i32 %4401, 0
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %29, align 1
  %4417 = lshr i32 %4401, 31
  %4418 = trunc i32 %4417 to i8
  store i8 %4418, i8* %32, align 1
  %4419 = lshr i32 %4395, 31
  %4420 = lshr i32 %4400, 31
  %4421 = xor i32 %4420, %4419
  %4422 = xor i32 %4417, %4419
  %4423 = add nuw nsw i32 %4422, %4421
  %4424 = icmp eq i32 %4423, 2
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %38, align 1
  %4426 = add i64 %4390, -20
  %4427 = add i64 %4392, 9
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4426 to i32*
  %4429 = load i32, i32* %4428, align 4
  %4430 = sub i32 %4401, %4429
  %4431 = zext i32 %4430 to i64
  store i64 %4431, i64* %RAX.i2269, align 8
  %4432 = icmp ult i32 %4401, %4429
  %4433 = zext i1 %4432 to i8
  store i8 %4433, i8* %14, align 1
  %4434 = and i32 %4430, 255
  %4435 = tail call i32 @llvm.ctpop.i32(i32 %4434)
  %4436 = trunc i32 %4435 to i8
  %4437 = and i8 %4436, 1
  %4438 = xor i8 %4437, 1
  store i8 %4438, i8* %21, align 1
  %4439 = xor i32 %4429, %4401
  %4440 = xor i32 %4439, %4430
  %4441 = lshr i32 %4440, 4
  %4442 = trunc i32 %4441 to i8
  %4443 = and i8 %4442, 1
  store i8 %4443, i8* %26, align 1
  %4444 = icmp eq i32 %4430, 0
  %4445 = zext i1 %4444 to i8
  store i8 %4445, i8* %29, align 1
  %4446 = lshr i32 %4430, 31
  %4447 = trunc i32 %4446 to i8
  store i8 %4447, i8* %32, align 1
  %4448 = lshr i32 %4429, 31
  %4449 = xor i32 %4448, %4417
  %4450 = xor i32 %4446, %4417
  %4451 = add nuw nsw i32 %4450, %4449
  %4452 = icmp eq i32 %4451, 2
  %4453 = zext i1 %4452 to i8
  store i8 %4453, i8* %38, align 1
  %4454 = add i64 %4390, -44
  %4455 = add i64 %4392, 12
  store i64 %4455, i64* %3, align 8
  %4456 = inttoptr i64 %4454 to i32*
  store i32 %4430, i32* %4456, align 4
  %4457 = load i64, i64* %3, align 8
  %4458 = add i64 %4457, 244
  br label %block_.L_46fad5

block_.L_46f9e6:                                  ; preds = %block_.L_46f9b6
  %4459 = add i64 %4381, 4
  store i64 %4459, i64* %3, align 8
  %4460 = load i32, i32* %4235, align 4
  store i8 0, i8* %14, align 1
  %4461 = and i32 %4460, 255
  %4462 = tail call i32 @llvm.ctpop.i32(i32 %4461)
  %4463 = trunc i32 %4462 to i8
  %4464 = and i8 %4463, 1
  %4465 = xor i8 %4464, 1
  store i8 %4465, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4466 = icmp eq i32 %4460, 0
  %4467 = zext i1 %4466 to i8
  store i8 %4467, i8* %29, align 1
  %4468 = lshr i32 %4460, 31
  %4469 = trunc i32 %4468 to i8
  store i8 %4469, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v290 = select i1 %4466, i64 10, i64 48
  %4470 = add i64 %4381, %.v290
  store i64 %4470, i64* %3, align 8
  br i1 %4466, label %block_46f9f0, label %block_.L_46fa16

block_46f9f0:                                     ; preds = %block_.L_46f9e6
  %4471 = add i64 %4470, 3
  store i64 %4471, i64* %3, align 8
  %4472 = load i32, i32* %4225, align 4
  %4473 = zext i32 %4472 to i64
  store i64 %4473, i64* %RAX.i2269, align 8
  %4474 = add i64 %4470, 6
  store i64 %4474, i64* %3, align 8
  %4475 = load i32, i32* %4230, align 4
  %4476 = sub i32 %4472, %4475
  %4477 = icmp ult i32 %4472, %4475
  %4478 = zext i1 %4477 to i8
  store i8 %4478, i8* %14, align 1
  %4479 = and i32 %4476, 255
  %4480 = tail call i32 @llvm.ctpop.i32(i32 %4479)
  %4481 = trunc i32 %4480 to i8
  %4482 = and i8 %4481, 1
  %4483 = xor i8 %4482, 1
  store i8 %4483, i8* %21, align 1
  %4484 = xor i32 %4475, %4472
  %4485 = xor i32 %4484, %4476
  %4486 = lshr i32 %4485, 4
  %4487 = trunc i32 %4486 to i8
  %4488 = and i8 %4487, 1
  store i8 %4488, i8* %26, align 1
  %4489 = icmp eq i32 %4476, 0
  %4490 = zext i1 %4489 to i8
  store i8 %4490, i8* %29, align 1
  %4491 = lshr i32 %4476, 31
  %4492 = trunc i32 %4491 to i8
  store i8 %4492, i8* %32, align 1
  %4493 = lshr i32 %4472, 31
  %4494 = lshr i32 %4475, 31
  %4495 = xor i32 %4494, %4493
  %4496 = xor i32 %4491, %4493
  %4497 = add nuw nsw i32 %4496, %4495
  %4498 = icmp eq i32 %4497, 2
  %4499 = zext i1 %4498 to i8
  store i8 %4499, i8* %38, align 1
  %.v298 = select i1 %4489, i64 12, i64 38
  %4500 = add i64 %4470, %.v298
  store i64 %4500, i64* %3, align 8
  br i1 %4489, label %block_46f9fc, label %block_.L_46fa16

block_46f9fc:                                     ; preds = %block_46f9f0
  %4501 = add i64 %4222, -36
  %4502 = add i64 %4500, 7
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i32*
  store i32 2, i32* %4503, align 4
  %4504 = load i64, i64* %RBP.i, align 8
  %4505 = add i64 %4504, -40
  %4506 = load i64, i64* %3, align 8
  %4507 = add i64 %4506, 7
  store i64 %4507, i64* %3, align 8
  %4508 = inttoptr i64 %4505 to i32*
  store i32 2, i32* %4508, align 4
  %4509 = load i64, i64* %RBP.i, align 8
  %4510 = add i64 %4509, -44
  %4511 = load i64, i64* %3, align 8
  %4512 = add i64 %4511, 7
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4510 to i32*
  store i32 0, i32* %4513, align 4
  %4514 = load i64, i64* %3, align 8
  %4515 = add i64 %4514, 191
  br label %block_.L_46fad0

block_.L_46fa16:                                  ; preds = %block_46f9f0, %block_.L_46f9e6
  %4516 = phi i64 [ %4500, %block_46f9f0 ], [ %4470, %block_.L_46f9e6 ]
  %4517 = add i64 %4516, 4
  store i64 %4517, i64* %3, align 8
  %4518 = load i32, i32* %4235, align 4
  store i8 0, i8* %14, align 1
  %4519 = and i32 %4518, 255
  %4520 = tail call i32 @llvm.ctpop.i32(i32 %4519)
  %4521 = trunc i32 %4520 to i8
  %4522 = and i8 %4521, 1
  %4523 = xor i8 %4522, 1
  store i8 %4523, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4524 = icmp eq i32 %4518, 0
  %4525 = zext i1 %4524 to i8
  store i8 %4525, i8* %29, align 1
  %4526 = lshr i32 %4518, 31
  %4527 = trunc i32 %4526 to i8
  store i8 %4527, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4528 = icmp ne i8 %4527, 0
  %4529 = or i1 %4524, %4528
  %.v291 = select i1 %4529, i64 53, i64 10
  %4530 = add i64 %4516, %.v291
  store i64 %4530, i64* %3, align 8
  br i1 %4529, label %block_.L_46fa4b, label %block_46fa20

block_46fa20:                                     ; preds = %block_.L_46fa16
  %4531 = add i64 %4530, 3
  store i64 %4531, i64* %3, align 8
  %4532 = load i32, i32* %4225, align 4
  %4533 = zext i32 %4532 to i64
  store i64 %4533, i64* %RAX.i2269, align 8
  %4534 = add i64 %4530, 6
  store i64 %4534, i64* %3, align 8
  %4535 = load i32, i32* %4235, align 4
  %4536 = zext i32 %4535 to i64
  store i64 %4536, i64* %RCX.i2228, align 8
  %4537 = add i64 %4530, 9
  store i64 %4537, i64* %3, align 8
  %4538 = load i32, i32* %4230, align 4
  %4539 = add i32 %4538, %4535
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %RCX.i2228, align 8
  %4541 = lshr i32 %4539, 31
  %4542 = sub i32 %4532, %4539
  %4543 = icmp ult i32 %4532, %4539
  %4544 = zext i1 %4543 to i8
  store i8 %4544, i8* %14, align 1
  %4545 = and i32 %4542, 255
  %4546 = tail call i32 @llvm.ctpop.i32(i32 %4545)
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  %4549 = xor i8 %4548, 1
  store i8 %4549, i8* %21, align 1
  %4550 = xor i32 %4539, %4532
  %4551 = xor i32 %4550, %4542
  %4552 = lshr i32 %4551, 4
  %4553 = trunc i32 %4552 to i8
  %4554 = and i8 %4553, 1
  store i8 %4554, i8* %26, align 1
  %4555 = icmp eq i32 %4542, 0
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %29, align 1
  %4557 = lshr i32 %4542, 31
  %4558 = trunc i32 %4557 to i8
  store i8 %4558, i8* %32, align 1
  %4559 = lshr i32 %4532, 31
  %4560 = xor i32 %4541, %4559
  %4561 = xor i32 %4557, %4559
  %4562 = add nuw nsw i32 %4561, %4560
  %4563 = icmp eq i32 %4562, 2
  %4564 = zext i1 %4563 to i8
  store i8 %4564, i8* %38, align 1
  %.v292 = select i1 %4555, i64 17, i64 43
  %4565 = add i64 %4530, %.v292
  store i64 %4565, i64* %3, align 8
  br i1 %4555, label %block_46fa31, label %block_.L_46fa4b

block_46fa31:                                     ; preds = %block_46fa20
  %4566 = add i64 %4222, -36
  %4567 = add i64 %4565, 7
  store i64 %4567, i64* %3, align 8
  %4568 = inttoptr i64 %4566 to i32*
  store i32 1, i32* %4568, align 4
  %4569 = load i64, i64* %RBP.i, align 8
  %4570 = add i64 %4569, -40
  %4571 = load i64, i64* %3, align 8
  %4572 = add i64 %4571, 7
  store i64 %4572, i64* %3, align 8
  %4573 = inttoptr i64 %4570 to i32*
  store i32 2, i32* %4573, align 4
  %4574 = load i64, i64* %RBP.i, align 8
  %4575 = add i64 %4574, -44
  %4576 = load i64, i64* %3, align 8
  %4577 = add i64 %4576, 7
  store i64 %4577, i64* %3, align 8
  %4578 = inttoptr i64 %4575 to i32*
  store i32 0, i32* %4578, align 4
  %4579 = load i64, i64* %3, align 8
  %4580 = add i64 %4579, 133
  br label %block_.L_46facb

block_.L_46fa4b:                                  ; preds = %block_46fa20, %block_.L_46fa16
  %4581 = phi i64 [ %4565, %block_46fa20 ], [ %4530, %block_.L_46fa16 ]
  %4582 = add i64 %4581, 4
  store i64 %4582, i64* %3, align 8
  %4583 = load i32, i32* %4235, align 4
  store i8 0, i8* %14, align 1
  %4584 = and i32 %4583, 255
  %4585 = tail call i32 @llvm.ctpop.i32(i32 %4584)
  %4586 = trunc i32 %4585 to i8
  %4587 = and i8 %4586, 1
  %4588 = xor i8 %4587, 1
  store i8 %4588, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4589 = icmp eq i32 %4583, 0
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %29, align 1
  %4591 = lshr i32 %4583, 31
  %4592 = trunc i32 %4591 to i8
  store i8 %4592, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4593 = icmp ne i8 %4592, 0
  %4594 = or i1 %4589, %4593
  %.v293 = select i1 %4594, i64 70, i64 10
  %4595 = add i64 %4581, %.v293
  store i64 %4595, i64* %3, align 8
  br i1 %4594, label %block_.L_46fa91, label %block_46fa55

block_46fa55:                                     ; preds = %block_.L_46fa4b
  %4596 = add i64 %4595, 3
  store i64 %4596, i64* %3, align 8
  %4597 = load i32, i32* %4225, align 4
  %4598 = zext i32 %4597 to i64
  store i64 %4598, i64* %RAX.i2269, align 8
  %4599 = add i64 %4595, 6
  store i64 %4599, i64* %3, align 8
  %4600 = load i32, i32* %4235, align 4
  %4601 = zext i32 %4600 to i64
  store i64 %4601, i64* %RCX.i2228, align 8
  %4602 = add i64 %4595, 9
  store i64 %4602, i64* %3, align 8
  %4603 = load i32, i32* %4230, align 4
  %4604 = add i32 %4603, %4600
  %4605 = zext i32 %4604 to i64
  store i64 %4605, i64* %RCX.i2228, align 8
  %4606 = lshr i32 %4604, 31
  %4607 = sub i32 %4597, %4604
  %4608 = icmp ult i32 %4597, %4604
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %14, align 1
  %4610 = and i32 %4607, 255
  %4611 = tail call i32 @llvm.ctpop.i32(i32 %4610)
  %4612 = trunc i32 %4611 to i8
  %4613 = and i8 %4612, 1
  %4614 = xor i8 %4613, 1
  store i8 %4614, i8* %21, align 1
  %4615 = xor i32 %4604, %4597
  %4616 = xor i32 %4615, %4607
  %4617 = lshr i32 %4616, 4
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  store i8 %4619, i8* %26, align 1
  %4620 = icmp eq i32 %4607, 0
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %29, align 1
  %4622 = lshr i32 %4607, 31
  %4623 = trunc i32 %4622 to i8
  store i8 %4623, i8* %32, align 1
  %4624 = lshr i32 %4597, 31
  %4625 = xor i32 %4606, %4624
  %4626 = xor i32 %4622, %4624
  %4627 = add nuw nsw i32 %4626, %4625
  %4628 = icmp eq i32 %4627, 2
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %38, align 1
  %4630 = icmp ne i8 %4623, 0
  %4631 = xor i1 %4630, %4628
  %.v294 = select i1 %4631, i64 17, i64 60
  %4632 = add i64 %4595, %.v294
  store i64 %4632, i64* %3, align 8
  br i1 %4631, label %block_46fa66, label %block_.L_46fa91

block_46fa66:                                     ; preds = %block_46fa55
  %4633 = add i64 %4632, 3
  store i64 %4633, i64* %3, align 8
  %4634 = load i32, i32* %4230, align 4
  %4635 = zext i32 %4634 to i64
  store i64 %4635, i64* %RAX.i2269, align 8
  %4636 = add i64 %4632, 6
  store i64 %4636, i64* %3, align 8
  %4637 = load i32, i32* %4235, align 4
  %4638 = zext i32 %4637 to i64
  store i64 %4638, i64* %RCX.i2228, align 8
  %4639 = add i64 %4632, 9
  store i64 %4639, i64* %3, align 8
  %4640 = load i32, i32* %4225, align 4
  %4641 = add i32 %4640, %4637
  %4642 = zext i32 %4641 to i64
  store i64 %4642, i64* %RCX.i2228, align 8
  %4643 = lshr i32 %4641, 31
  %4644 = sub i32 %4634, %4641
  %4645 = icmp ult i32 %4634, %4641
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %14, align 1
  %4647 = and i32 %4644, 255
  %4648 = tail call i32 @llvm.ctpop.i32(i32 %4647)
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  %4651 = xor i8 %4650, 1
  store i8 %4651, i8* %21, align 1
  %4652 = xor i32 %4641, %4634
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
  %4661 = lshr i32 %4634, 31
  %4662 = xor i32 %4643, %4661
  %4663 = xor i32 %4659, %4661
  %4664 = add nuw nsw i32 %4663, %4662
  %4665 = icmp eq i32 %4664, 2
  %4666 = zext i1 %4665 to i8
  store i8 %4666, i8* %38, align 1
  %4667 = icmp ne i8 %4660, 0
  %4668 = xor i1 %4667, %4665
  %.v297 = select i1 %4668, i64 17, i64 43
  %4669 = add i64 %4632, %.v297
  store i64 %4669, i64* %3, align 8
  br i1 %4668, label %block_46fa77, label %block_.L_46fa91

block_46fa77:                                     ; preds = %block_46fa66
  %4670 = add i64 %4222, -36
  %4671 = add i64 %4669, 7
  store i64 %4671, i64* %3, align 8
  %4672 = inttoptr i64 %4670 to i32*
  store i32 1, i32* %4672, align 4
  %4673 = load i64, i64* %RBP.i, align 8
  %4674 = add i64 %4673, -40
  %4675 = load i64, i64* %3, align 8
  %4676 = add i64 %4675, 7
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4674 to i32*
  store i32 1, i32* %4677, align 4
  %4678 = load i64, i64* %RBP.i, align 8
  %4679 = add i64 %4678, -44
  %4680 = load i64, i64* %3, align 8
  %4681 = add i64 %4680, 7
  store i64 %4681, i64* %3, align 8
  %4682 = inttoptr i64 %4679 to i32*
  store i32 1000, i32* %4682, align 4
  %4683 = load i64, i64* %3, align 8
  %4684 = add i64 %4683, 58
  br label %block_.L_46fac6

block_.L_46fa91:                                  ; preds = %block_46fa66, %block_46fa55, %block_.L_46fa4b
  %4685 = phi i64 [ %4669, %block_46fa66 ], [ %4632, %block_46fa55 ], [ %4595, %block_.L_46fa4b ]
  %4686 = add i64 %4685, 4
  store i64 %4686, i64* %3, align 8
  %4687 = load i32, i32* %4235, align 4
  store i8 0, i8* %14, align 1
  %4688 = and i32 %4687, 255
  %4689 = tail call i32 @llvm.ctpop.i32(i32 %4688)
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  %4692 = xor i8 %4691, 1
  store i8 %4692, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4693 = icmp eq i32 %4687, 0
  %4694 = zext i1 %4693 to i8
  store i8 %4694, i8* %29, align 1
  %4695 = lshr i32 %4687, 31
  %4696 = trunc i32 %4695 to i8
  store i8 %4696, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4697 = icmp ne i8 %4696, 0
  %4698 = or i1 %4693, %4697
  %.v295 = select i1 %4698, i64 48, i64 10
  %4699 = add i64 %4685, %.v295
  store i64 %4699, i64* %3, align 8
  br i1 %4698, label %block_.L_46fac1, label %block_46fa9b

block_46fa9b:                                     ; preds = %block_.L_46fa91
  %4700 = add i64 %4699, 3
  store i64 %4700, i64* %3, align 8
  %4701 = load i32, i32* %4230, align 4
  %4702 = zext i32 %4701 to i64
  store i64 %4702, i64* %RAX.i2269, align 8
  %4703 = add i64 %4699, 6
  store i64 %4703, i64* %3, align 8
  %4704 = load i32, i32* %4235, align 4
  %4705 = zext i32 %4704 to i64
  store i64 %4705, i64* %RCX.i2228, align 8
  %4706 = add i64 %4699, 9
  store i64 %4706, i64* %3, align 8
  %4707 = load i32, i32* %4225, align 4
  %4708 = add i32 %4707, %4704
  %4709 = zext i32 %4708 to i64
  store i64 %4709, i64* %RCX.i2228, align 8
  %4710 = lshr i32 %4708, 31
  %4711 = sub i32 %4701, %4708
  %4712 = icmp ult i32 %4701, %4708
  %4713 = zext i1 %4712 to i8
  store i8 %4713, i8* %14, align 1
  %4714 = and i32 %4711, 255
  %4715 = tail call i32 @llvm.ctpop.i32(i32 %4714)
  %4716 = trunc i32 %4715 to i8
  %4717 = and i8 %4716, 1
  %4718 = xor i8 %4717, 1
  store i8 %4718, i8* %21, align 1
  %4719 = xor i32 %4708, %4701
  %4720 = xor i32 %4719, %4711
  %4721 = lshr i32 %4720, 4
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  store i8 %4723, i8* %26, align 1
  %4724 = icmp eq i32 %4711, 0
  %4725 = zext i1 %4724 to i8
  store i8 %4725, i8* %29, align 1
  %4726 = lshr i32 %4711, 31
  %4727 = trunc i32 %4726 to i8
  store i8 %4727, i8* %32, align 1
  %4728 = lshr i32 %4701, 31
  %4729 = xor i32 %4710, %4728
  %4730 = xor i32 %4726, %4728
  %4731 = add nuw nsw i32 %4730, %4729
  %4732 = icmp eq i32 %4731, 2
  %4733 = zext i1 %4732 to i8
  store i8 %4733, i8* %38, align 1
  %.v296 = select i1 %4724, i64 17, i64 38
  %4734 = add i64 %4699, %.v296
  store i64 %4734, i64* %3, align 8
  br i1 %4724, label %block_46faac, label %block_.L_46fac1

block_46faac:                                     ; preds = %block_46fa9b
  %4735 = add i64 %4222, -36
  %4736 = add i64 %4734, 7
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4735 to i32*
  store i32 2, i32* %4737, align 4
  %4738 = load i64, i64* %RBP.i, align 8
  %4739 = add i64 %4738, -40
  %4740 = load i64, i64* %3, align 8
  %4741 = add i64 %4740, 7
  store i64 %4741, i64* %3, align 8
  %4742 = inttoptr i64 %4739 to i32*
  store i32 1, i32* %4742, align 4
  %4743 = load i64, i64* %RBP.i, align 8
  %4744 = add i64 %4743, -44
  %4745 = load i64, i64* %3, align 8
  %4746 = add i64 %4745, 7
  store i64 %4746, i64* %3, align 8
  %4747 = inttoptr i64 %4744 to i32*
  store i32 0, i32* %4747, align 4
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_46fac1

block_.L_46fac1:                                  ; preds = %block_46fa9b, %block_46faac, %block_.L_46fa91
  %4748 = phi i64 [ %.pre199, %block_46faac ], [ %4734, %block_46fa9b ], [ %4699, %block_.L_46fa91 ]
  %4749 = add i64 %4748, 5
  store i64 %4749, i64* %3, align 8
  br label %block_.L_46fac6

block_.L_46fac6:                                  ; preds = %block_.L_46fac1, %block_46fa77
  %storemerge144 = phi i64 [ %4684, %block_46fa77 ], [ %4749, %block_.L_46fac1 ]
  %4750 = add i64 %storemerge144, 5
  store i64 %4750, i64* %3, align 8
  br label %block_.L_46facb

block_.L_46facb:                                  ; preds = %block_.L_46fac6, %block_46fa31
  %storemerge143 = phi i64 [ %4580, %block_46fa31 ], [ %4750, %block_.L_46fac6 ]
  %4751 = add i64 %storemerge143, 5
  store i64 %4751, i64* %3, align 8
  br label %block_.L_46fad0

block_.L_46fad0:                                  ; preds = %block_.L_46facb, %block_46f9fc
  %storemerge142 = phi i64 [ %4515, %block_46f9fc ], [ %4751, %block_.L_46facb ]
  %4752 = add i64 %storemerge142, 5
  store i64 %4752, i64* %3, align 8
  br label %block_.L_46fad5

block_.L_46fad5:                                  ; preds = %block_.L_46fad0, %block_46f9c7
  %storemerge141 = phi i64 [ %4458, %block_46f9c7 ], [ %4752, %block_.L_46fad0 ]
  %4753 = add i64 %storemerge141, 5
  store i64 %4753, i64* %3, align 8
  br label %block_.L_46fada

block_.L_46fada:                                  ; preds = %block_.L_46fad5, %block_46f997
  %storemerge128 = phi i64 [ %4343, %block_46f997 ], [ %4753, %block_.L_46fad5 ]
  %4754 = add i64 %storemerge128, 5
  store i64 %4754, i64* %3, align 8
  br label %block_.L_46fadf

block_.L_46fadf:                                  ; preds = %block_.L_46fada, %block_46f949, %block_.L_46f90c
  %4755 = phi i64 [ %4138, %block_.L_46f90c ], [ %4221, %block_46f949 ], [ %4754, %block_.L_46fada ]
  %MEMORY.62 = phi %struct.Memory* [ %call2_46f93b, %block_.L_46f90c ], [ %call2_46f978, %block_46f949 ], [ %call2_46f978, %block_.L_46fada ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %4756 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %4756, i64* %RCX.i2228, align 8
  %4757 = load i64, i64* %RBP.i, align 8
  %4758 = add i64 %4757, -4
  %4759 = add i64 %4755, 22
  store i64 %4759, i64* %3, align 8
  %4760 = inttoptr i64 %4758 to i32*
  %4761 = load i32, i32* %4760, align 4
  %4762 = sext i32 %4761 to i64
  %4763 = mul nsw i64 %4762, 76
  store i64 %4763, i64* %RDX.i1551, align 8
  %4764 = lshr i64 %4763, 63
  %4765 = add i64 %4763, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4765, i64* %RAX.i2269, align 8
  %4766 = icmp ult i64 %4765, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4767 = icmp ult i64 %4765, %4763
  %4768 = or i1 %4766, %4767
  %4769 = zext i1 %4768 to i8
  store i8 %4769, i8* %14, align 1
  %4770 = trunc i64 %4765 to i32
  %4771 = and i32 %4770, 252
  %4772 = tail call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  store i8 %4775, i8* %21, align 1
  %4776 = xor i64 %4763, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4777 = xor i64 %4776, %4765
  %4778 = lshr i64 %4777, 4
  %4779 = trunc i64 %4778 to i8
  %4780 = and i8 %4779, 1
  store i8 %4780, i8* %26, align 1
  %4781 = icmp eq i64 %4765, 0
  %4782 = zext i1 %4781 to i8
  store i8 %4782, i8* %29, align 1
  %4783 = lshr i64 %4765, 63
  %4784 = trunc i64 %4783 to i8
  store i8 %4784, i8* %32, align 1
  %4785 = xor i64 %4783, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4786 = xor i64 %4783, %4764
  %4787 = add nuw nsw i64 %4785, %4786
  %4788 = icmp eq i64 %4787, 2
  %4789 = zext i1 %4788 to i8
  store i8 %4789, i8* %38, align 1
  %4790 = add i64 %4763, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %4791 = add i64 %4755, 33
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i32*
  %4793 = load i32, i32* %4792, align 4
  %4794 = sext i32 %4793 to i64
  %4795 = mul nsw i64 %4794, 104
  store i64 %4795, i64* %RAX.i2269, align 8
  %4796 = load i64, i64* %RCX.i2228, align 8
  %4797 = add i64 %4795, %4796
  %4798 = lshr i64 %4797, 63
  %4799 = add i64 %4797, 76
  store i64 %4799, i64* %RCX.i2228, align 8
  %4800 = icmp ugt i64 %4797, -77
  %4801 = zext i1 %4800 to i8
  store i8 %4801, i8* %14, align 1
  %4802 = trunc i64 %4799 to i32
  %4803 = and i32 %4802, 255
  %4804 = tail call i32 @llvm.ctpop.i32(i32 %4803)
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = xor i8 %4806, 1
  store i8 %4807, i8* %21, align 1
  %4808 = xor i64 %4799, %4797
  %4809 = lshr i64 %4808, 4
  %4810 = trunc i64 %4809 to i8
  %4811 = and i8 %4810, 1
  store i8 %4811, i8* %26, align 1
  %4812 = icmp eq i64 %4799, 0
  %4813 = zext i1 %4812 to i8
  store i8 %4813, i8* %29, align 1
  %4814 = lshr i64 %4799, 63
  %4815 = trunc i64 %4814 to i8
  store i8 %4815, i8* %32, align 1
  %4816 = xor i64 %4814, %4798
  %4817 = add nuw nsw i64 %4816, %4814
  %4818 = icmp eq i64 %4817, 2
  %4819 = zext i1 %4818 to i8
  store i8 %4819, i8* %38, align 1
  store i64 %4799, i64* %RDI.i1695, align 8
  %4820 = add i64 %4755, -212975
  %4821 = add i64 %4755, 52
  %4822 = load i64, i64* %6, align 8
  %4823 = add i64 %4822, -8
  %4824 = inttoptr i64 %4823 to i64*
  store i64 %4821, i64* %4824, align 8
  store i64 %4823, i64* %6, align 8
  store i64 %4820, i64* %3, align 8
  %call2_46fb0e = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %4820, %struct.Memory* %MEMORY.62)
  %4825 = load i32, i32* %EAX.i1691, align 4
  %4826 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4827 = and i32 %4825, 255
  %4828 = tail call i32 @llvm.ctpop.i32(i32 %4827)
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = xor i8 %4830, 1
  store i8 %4831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4832 = icmp eq i32 %4825, 0
  %4833 = zext i1 %4832 to i8
  store i8 %4833, i8* %29, align 1
  %4834 = lshr i32 %4825, 31
  %4835 = trunc i32 %4834 to i8
  store i8 %4835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4836 = icmp ne i8 %4835, 0
  %4837 = or i1 %4832, %4836
  %.v253 = select i1 %4837, i64 208, i64 9
  %4838 = add i64 %4826, %.v253
  store i64 %4838, i64* %3, align 8
  br i1 %4837, label %block_.L_46fbe3, label %block_46fb1c

block_46fb1c:                                     ; preds = %block_.L_46fadf
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %4839 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %4839, i64* %RCX.i2228, align 8
  %4840 = load i64, i64* %RBP.i, align 8
  %4841 = add i64 %4840, -8
  %4842 = add i64 %4838, 22
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i32*
  %4844 = load i32, i32* %4843, align 4
  %4845 = sext i32 %4844 to i64
  %4846 = mul nsw i64 %4845, 76
  store i64 %4846, i64* %RDX.i1551, align 8
  %4847 = lshr i64 %4846, 63
  %4848 = add i64 %4846, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4848, i64* %RAX.i2269, align 8
  %4849 = icmp ult i64 %4848, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4850 = icmp ult i64 %4848, %4846
  %4851 = or i1 %4849, %4850
  %4852 = zext i1 %4851 to i8
  store i8 %4852, i8* %14, align 1
  %4853 = trunc i64 %4848 to i32
  %4854 = and i32 %4853, 252
  %4855 = tail call i32 @llvm.ctpop.i32(i32 %4854)
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  %4858 = xor i8 %4857, 1
  store i8 %4858, i8* %21, align 1
  %4859 = xor i64 %4846, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4860 = xor i64 %4859, %4848
  %4861 = lshr i64 %4860, 4
  %4862 = trunc i64 %4861 to i8
  %4863 = and i8 %4862, 1
  store i8 %4863, i8* %26, align 1
  %4864 = icmp eq i64 %4848, 0
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %29, align 1
  %4866 = lshr i64 %4848, 63
  %4867 = trunc i64 %4866 to i8
  store i8 %4867, i8* %32, align 1
  %4868 = xor i64 %4866, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4869 = xor i64 %4866, %4847
  %4870 = add nuw nsw i64 %4868, %4869
  %4871 = icmp eq i64 %4870, 2
  %4872 = zext i1 %4871 to i8
  store i8 %4872, i8* %38, align 1
  %4873 = add i64 %4846, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %4874 = add i64 %4838, 33
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i32*
  %4876 = load i32, i32* %4875, align 4
  %4877 = sext i32 %4876 to i64
  %4878 = mul nsw i64 %4877, 104
  store i64 %4878, i64* %RAX.i2269, align 8
  %4879 = load i64, i64* %RCX.i2228, align 8
  %4880 = add i64 %4878, %4879
  %4881 = lshr i64 %4880, 63
  %4882 = add i64 %4880, 76
  store i64 %4882, i64* %RCX.i2228, align 8
  %4883 = icmp ugt i64 %4880, -77
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %14, align 1
  %4885 = trunc i64 %4882 to i32
  %4886 = and i32 %4885, 255
  %4887 = tail call i32 @llvm.ctpop.i32(i32 %4886)
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  %4890 = xor i8 %4889, 1
  store i8 %4890, i8* %21, align 1
  %4891 = xor i64 %4882, %4880
  %4892 = lshr i64 %4891, 4
  %4893 = trunc i64 %4892 to i8
  %4894 = and i8 %4893, 1
  store i8 %4894, i8* %26, align 1
  %4895 = icmp eq i64 %4882, 0
  %4896 = zext i1 %4895 to i8
  store i8 %4896, i8* %29, align 1
  %4897 = lshr i64 %4882, 63
  %4898 = trunc i64 %4897 to i8
  store i8 %4898, i8* %32, align 1
  %4899 = xor i64 %4897, %4881
  %4900 = add nuw nsw i64 %4899, %4897
  %4901 = icmp eq i64 %4900, 2
  %4902 = zext i1 %4901 to i8
  store i8 %4902, i8* %38, align 1
  store i64 %4882, i64* %RDI.i1695, align 8
  %4903 = add i64 %4838, -213036
  %4904 = add i64 %4838, 52
  %4905 = load i64, i64* %6, align 8
  %4906 = add i64 %4905, -8
  %4907 = inttoptr i64 %4906 to i64*
  store i64 %4904, i64* %4907, align 8
  store i64 %4906, i64* %6, align 8
  store i64 %4903, i64* %3, align 8
  %call2_46fb4b = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %4903, %struct.Memory* %call2_46fb0e)
  %4908 = load i32, i32* %EAX.i1691, align 4
  %4909 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4910 = and i32 %4908, 255
  %4911 = tail call i32 @llvm.ctpop.i32(i32 %4910)
  %4912 = trunc i32 %4911 to i8
  %4913 = and i8 %4912, 1
  %4914 = xor i8 %4913, 1
  store i8 %4914, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4915 = icmp eq i32 %4908, 0
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %29, align 1
  %4917 = lshr i32 %4908, 31
  %4918 = trunc i32 %4917 to i8
  store i8 %4918, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v254 = select i1 %4915, i64 9, i64 147
  %4919 = add i64 %4909, %.v254
  store i64 %4919, i64* %3, align 8
  br i1 %4915, label %block_46fb59, label %block_.L_46fbe3

block_46fb59:                                     ; preds = %block_46fb1c
  %4920 = load i64, i64* %RBP.i, align 8
  %4921 = add i64 %4920, -12
  %4922 = add i64 %4919, 3
  store i64 %4922, i64* %3, align 8
  %4923 = inttoptr i64 %4921 to i32*
  %4924 = load i32, i32* %4923, align 4
  %4925 = zext i32 %4924 to i64
  store i64 %4925, i64* %RAX.i2269, align 8
  %4926 = add i64 %4920, -20
  %4927 = add i64 %4919, 6
  store i64 %4927, i64* %3, align 8
  %4928 = inttoptr i64 %4926 to i32*
  %4929 = load i32, i32* %4928, align 4
  %4930 = zext i32 %4929 to i64
  store i64 %4930, i64* %RCX.i2228, align 8
  %4931 = add i64 %4920, -16
  %4932 = add i64 %4919, 9
  store i64 %4932, i64* %3, align 8
  %4933 = inttoptr i64 %4931 to i32*
  %4934 = load i32, i32* %4933, align 4
  %4935 = add i32 %4934, %4929
  %4936 = zext i32 %4935 to i64
  store i64 %4936, i64* %RCX.i2228, align 8
  %4937 = lshr i32 %4935, 31
  %4938 = sub i32 %4924, %4935
  %4939 = icmp ult i32 %4924, %4935
  %4940 = zext i1 %4939 to i8
  store i8 %4940, i8* %14, align 1
  %4941 = and i32 %4938, 255
  %4942 = tail call i32 @llvm.ctpop.i32(i32 %4941)
  %4943 = trunc i32 %4942 to i8
  %4944 = and i8 %4943, 1
  %4945 = xor i8 %4944, 1
  store i8 %4945, i8* %21, align 1
  %4946 = xor i32 %4935, %4924
  %4947 = xor i32 %4946, %4938
  %4948 = lshr i32 %4947, 4
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  store i8 %4950, i8* %26, align 1
  %4951 = icmp eq i32 %4938, 0
  %4952 = zext i1 %4951 to i8
  store i8 %4952, i8* %29, align 1
  %4953 = lshr i32 %4938, 31
  %4954 = trunc i32 %4953 to i8
  store i8 %4954, i8* %32, align 1
  %4955 = lshr i32 %4924, 31
  %4956 = xor i32 %4937, %4955
  %4957 = xor i32 %4953, %4955
  %4958 = add nuw nsw i32 %4957, %4956
  %4959 = icmp eq i32 %4958, 2
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %38, align 1
  %4961 = icmp ne i8 %4954, 0
  %4962 = xor i1 %4961, %4959
  %4963 = or i1 %4951, %4962
  %.v286 = select i1 %4963, i64 48, i64 17
  %4964 = add i64 %4919, %.v286
  store i64 %4964, i64* %3, align 8
  br i1 %4963, label %block_.L_46fb89, label %block_46fb6a

block_46fb6a:                                     ; preds = %block_46fb59
  %4965 = add i64 %4920, -36
  %4966 = add i64 %4964, 7
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i32*
  store i32 1, i32* %4967, align 4
  %4968 = load i64, i64* %RBP.i, align 8
  %4969 = add i64 %4968, -40
  %4970 = load i64, i64* %3, align 8
  %4971 = add i64 %4970, 7
  store i64 %4971, i64* %3, align 8
  %4972 = inttoptr i64 %4969 to i32*
  store i32 0, i32* %4972, align 4
  %4973 = load i64, i64* %RBP.i, align 8
  %4974 = add i64 %4973, -12
  %4975 = load i64, i64* %3, align 8
  %4976 = add i64 %4975, 3
  store i64 %4976, i64* %3, align 8
  %4977 = inttoptr i64 %4974 to i32*
  %4978 = load i32, i32* %4977, align 4
  %4979 = zext i32 %4978 to i64
  store i64 %4979, i64* %RAX.i2269, align 8
  %4980 = add i64 %4973, -20
  %4981 = add i64 %4975, 6
  store i64 %4981, i64* %3, align 8
  %4982 = inttoptr i64 %4980 to i32*
  %4983 = load i32, i32* %4982, align 4
  %4984 = sub i32 %4978, %4983
  %4985 = zext i32 %4984 to i64
  store i64 %4985, i64* %RAX.i2269, align 8
  %4986 = icmp ult i32 %4978, %4983
  %4987 = zext i1 %4986 to i8
  store i8 %4987, i8* %14, align 1
  %4988 = and i32 %4984, 255
  %4989 = tail call i32 @llvm.ctpop.i32(i32 %4988)
  %4990 = trunc i32 %4989 to i8
  %4991 = and i8 %4990, 1
  %4992 = xor i8 %4991, 1
  store i8 %4992, i8* %21, align 1
  %4993 = xor i32 %4983, %4978
  %4994 = xor i32 %4993, %4984
  %4995 = lshr i32 %4994, 4
  %4996 = trunc i32 %4995 to i8
  %4997 = and i8 %4996, 1
  store i8 %4997, i8* %26, align 1
  %4998 = icmp eq i32 %4984, 0
  %4999 = zext i1 %4998 to i8
  store i8 %4999, i8* %29, align 1
  %5000 = lshr i32 %4984, 31
  %5001 = trunc i32 %5000 to i8
  store i8 %5001, i8* %32, align 1
  %5002 = lshr i32 %4978, 31
  %5003 = lshr i32 %4983, 31
  %5004 = xor i32 %5003, %5002
  %5005 = xor i32 %5000, %5002
  %5006 = add nuw nsw i32 %5005, %5004
  %5007 = icmp eq i32 %5006, 2
  %5008 = zext i1 %5007 to i8
  store i8 %5008, i8* %38, align 1
  %5009 = add i64 %4973, -16
  %5010 = add i64 %4975, 9
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i32*
  %5012 = load i32, i32* %5011, align 4
  %5013 = sub i32 %4984, %5012
  %5014 = zext i32 %5013 to i64
  store i64 %5014, i64* %RAX.i2269, align 8
  %5015 = icmp ult i32 %4984, %5012
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %14, align 1
  %5017 = and i32 %5013, 255
  %5018 = tail call i32 @llvm.ctpop.i32(i32 %5017)
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = xor i8 %5020, 1
  store i8 %5021, i8* %21, align 1
  %5022 = xor i32 %5012, %4984
  %5023 = xor i32 %5022, %5013
  %5024 = lshr i32 %5023, 4
  %5025 = trunc i32 %5024 to i8
  %5026 = and i8 %5025, 1
  store i8 %5026, i8* %26, align 1
  %5027 = icmp eq i32 %5013, 0
  %5028 = zext i1 %5027 to i8
  store i8 %5028, i8* %29, align 1
  %5029 = lshr i32 %5013, 31
  %5030 = trunc i32 %5029 to i8
  store i8 %5030, i8* %32, align 1
  %5031 = lshr i32 %5012, 31
  %5032 = xor i32 %5031, %5000
  %5033 = xor i32 %5029, %5000
  %5034 = add nuw nsw i32 %5033, %5032
  %5035 = icmp eq i32 %5034, 2
  %5036 = zext i1 %5035 to i8
  store i8 %5036, i8* %38, align 1
  %5037 = add i64 %4973, -44
  %5038 = add i64 %4975, 12
  store i64 %5038, i64* %3, align 8
  %5039 = inttoptr i64 %5037 to i32*
  store i32 %5013, i32* %5039, align 4
  %5040 = load i64, i64* %3, align 8
  %5041 = add i64 %5040, 90
  br label %block_.L_46fbde

block_.L_46fb89:                                  ; preds = %block_46fb59
  %5042 = add i64 %4964, 3
  store i64 %5042, i64* %3, align 8
  %5043 = load i32, i32* %4923, align 4
  %5044 = zext i32 %5043 to i64
  store i64 %5044, i64* %RAX.i2269, align 8
  %5045 = add i64 %4964, 6
  store i64 %5045, i64* %3, align 8
  %5046 = load i32, i32* %4928, align 4
  %5047 = add i32 %5046, %5043
  %5048 = zext i32 %5047 to i64
  store i64 %5048, i64* %RAX.i2269, align 8
  %5049 = icmp ult i32 %5047, %5043
  %5050 = icmp ult i32 %5047, %5046
  %5051 = or i1 %5049, %5050
  %5052 = zext i1 %5051 to i8
  store i8 %5052, i8* %14, align 1
  %5053 = and i32 %5047, 255
  %5054 = tail call i32 @llvm.ctpop.i32(i32 %5053)
  %5055 = trunc i32 %5054 to i8
  %5056 = and i8 %5055, 1
  %5057 = xor i8 %5056, 1
  store i8 %5057, i8* %21, align 1
  %5058 = xor i32 %5046, %5043
  %5059 = xor i32 %5058, %5047
  %5060 = lshr i32 %5059, 4
  %5061 = trunc i32 %5060 to i8
  %5062 = and i8 %5061, 1
  store i8 %5062, i8* %26, align 1
  %5063 = icmp eq i32 %5047, 0
  %5064 = zext i1 %5063 to i8
  store i8 %5064, i8* %29, align 1
  %5065 = lshr i32 %5047, 31
  %5066 = trunc i32 %5065 to i8
  store i8 %5066, i8* %32, align 1
  %5067 = lshr i32 %5043, 31
  %5068 = lshr i32 %5046, 31
  %5069 = xor i32 %5065, %5067
  %5070 = xor i32 %5065, %5068
  %5071 = add nuw nsw i32 %5069, %5070
  %5072 = icmp eq i32 %5071, 2
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %38, align 1
  %5074 = add i64 %4964, 9
  store i64 %5074, i64* %3, align 8
  %5075 = load i32, i32* %4933, align 4
  %5076 = sub i32 %5047, %5075
  %5077 = icmp ult i32 %5047, %5075
  %5078 = zext i1 %5077 to i8
  store i8 %5078, i8* %14, align 1
  %5079 = and i32 %5076, 255
  %5080 = tail call i32 @llvm.ctpop.i32(i32 %5079)
  %5081 = trunc i32 %5080 to i8
  %5082 = and i8 %5081, 1
  %5083 = xor i8 %5082, 1
  store i8 %5083, i8* %21, align 1
  %5084 = xor i32 %5075, %5047
  %5085 = xor i32 %5084, %5076
  %5086 = lshr i32 %5085, 4
  %5087 = trunc i32 %5086 to i8
  %5088 = and i8 %5087, 1
  store i8 %5088, i8* %26, align 1
  %5089 = icmp eq i32 %5076, 0
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %29, align 1
  %5091 = lshr i32 %5076, 31
  %5092 = trunc i32 %5091 to i8
  store i8 %5092, i8* %32, align 1
  %5093 = lshr i32 %5075, 31
  %5094 = xor i32 %5093, %5065
  %5095 = xor i32 %5091, %5065
  %5096 = add nuw nsw i32 %5095, %5094
  %5097 = icmp eq i32 %5096, 2
  %5098 = zext i1 %5097 to i8
  store i8 %5098, i8* %38, align 1
  %.v287 = select i1 %5089, i64 15, i64 34
  %5099 = add i64 %4964, %.v287
  store i64 %5099, i64* %3, align 8
  br i1 %5089, label %block_46fb98, label %block_.L_46fbab

block_46fb98:                                     ; preds = %block_.L_46fb89
  %5100 = add i64 %4920, -36
  %5101 = add i64 %5099, 7
  store i64 %5101, i64* %3, align 8
  %5102 = inttoptr i64 %5100 to i32*
  store i32 2, i32* %5102, align 4
  %5103 = load i64, i64* %RBP.i, align 8
  %5104 = add i64 %5103, -40
  %5105 = load i64, i64* %3, align 8
  %5106 = add i64 %5105, 7
  store i64 %5106, i64* %3, align 8
  %5107 = inttoptr i64 %5104 to i32*
  store i32 2, i32* %5107, align 4
  %5108 = load i64, i64* %3, align 8
  %5109 = add i64 %5108, 51
  br label %block_.L_46fbd9

block_.L_46fbab:                                  ; preds = %block_.L_46fb89
  %5110 = add i64 %5099, 3
  store i64 %5110, i64* %3, align 8
  %5111 = load i32, i32* %4923, align 4
  %5112 = zext i32 %5111 to i64
  store i64 %5112, i64* %RAX.i2269, align 8
  %5113 = add i64 %5099, 6
  store i64 %5113, i64* %3, align 8
  %5114 = load i32, i32* %4928, align 4
  %5115 = add i32 %5114, %5111
  %5116 = zext i32 %5115 to i64
  store i64 %5116, i64* %RAX.i2269, align 8
  %5117 = icmp ult i32 %5115, %5111
  %5118 = icmp ult i32 %5115, %5114
  %5119 = or i1 %5117, %5118
  %5120 = zext i1 %5119 to i8
  store i8 %5120, i8* %14, align 1
  %5121 = and i32 %5115, 255
  %5122 = tail call i32 @llvm.ctpop.i32(i32 %5121)
  %5123 = trunc i32 %5122 to i8
  %5124 = and i8 %5123, 1
  %5125 = xor i8 %5124, 1
  store i8 %5125, i8* %21, align 1
  %5126 = xor i32 %5114, %5111
  %5127 = xor i32 %5126, %5115
  %5128 = lshr i32 %5127, 4
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  store i8 %5130, i8* %26, align 1
  %5131 = icmp eq i32 %5115, 0
  %5132 = zext i1 %5131 to i8
  store i8 %5132, i8* %29, align 1
  %5133 = lshr i32 %5115, 31
  %5134 = trunc i32 %5133 to i8
  store i8 %5134, i8* %32, align 1
  %5135 = lshr i32 %5111, 31
  %5136 = lshr i32 %5114, 31
  %5137 = xor i32 %5133, %5135
  %5138 = xor i32 %5133, %5136
  %5139 = add nuw nsw i32 %5137, %5138
  %5140 = icmp eq i32 %5139, 2
  %5141 = zext i1 %5140 to i8
  store i8 %5141, i8* %38, align 1
  %5142 = add i64 %5099, 9
  store i64 %5142, i64* %3, align 8
  %5143 = load i32, i32* %4933, align 4
  %5144 = sub i32 %5115, %5143
  %5145 = icmp ult i32 %5115, %5143
  %5146 = zext i1 %5145 to i8
  store i8 %5146, i8* %14, align 1
  %5147 = and i32 %5144, 255
  %5148 = tail call i32 @llvm.ctpop.i32(i32 %5147)
  %5149 = trunc i32 %5148 to i8
  %5150 = and i8 %5149, 1
  %5151 = xor i8 %5150, 1
  store i8 %5151, i8* %21, align 1
  %5152 = xor i32 %5143, %5115
  %5153 = xor i32 %5152, %5144
  %5154 = lshr i32 %5153, 4
  %5155 = trunc i32 %5154 to i8
  %5156 = and i8 %5155, 1
  store i8 %5156, i8* %26, align 1
  %5157 = icmp eq i32 %5144, 0
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %29, align 1
  %5159 = lshr i32 %5144, 31
  %5160 = trunc i32 %5159 to i8
  store i8 %5160, i8* %32, align 1
  %5161 = lshr i32 %5143, 31
  %5162 = xor i32 %5161, %5133
  %5163 = xor i32 %5159, %5133
  %5164 = add nuw nsw i32 %5163, %5162
  %5165 = icmp eq i32 %5164, 2
  %5166 = zext i1 %5165 to i8
  store i8 %5166, i8* %38, align 1
  %5167 = icmp ne i8 %5160, 0
  %5168 = xor i1 %5167, %5165
  %.v288 = select i1 %5168, i64 15, i64 41
  %5169 = add i64 %5099, %.v288
  store i64 %5169, i64* %3, align 8
  br i1 %5168, label %block_46fbba, label %block_.L_46fbd4

block_46fbba:                                     ; preds = %block_.L_46fbab
  %5170 = add i64 %4920, -36
  %5171 = add i64 %5169, 7
  store i64 %5171, i64* %3, align 8
  %5172 = inttoptr i64 %5170 to i32*
  store i32 0, i32* %5172, align 4
  %5173 = load i64, i64* %RBP.i, align 8
  %5174 = add i64 %5173, -40
  %5175 = load i64, i64* %3, align 8
  %5176 = add i64 %5175, 7
  store i64 %5176, i64* %3, align 8
  %5177 = inttoptr i64 %5174 to i32*
  store i32 1, i32* %5177, align 4
  %5178 = load i64, i64* %RBP.i, align 8
  %5179 = add i64 %5178, -12
  %5180 = load i64, i64* %3, align 8
  %5181 = add i64 %5180, 3
  store i64 %5181, i64* %3, align 8
  %5182 = inttoptr i64 %5179 to i32*
  %5183 = load i32, i32* %5182, align 4
  %5184 = zext i32 %5183 to i64
  store i64 %5184, i64* %RAX.i2269, align 8
  %5185 = add i64 %5178, -20
  %5186 = add i64 %5180, 6
  store i64 %5186, i64* %3, align 8
  %5187 = inttoptr i64 %5185 to i32*
  %5188 = load i32, i32* %5187, align 4
  %5189 = add i32 %5188, %5183
  %5190 = zext i32 %5189 to i64
  store i64 %5190, i64* %RAX.i2269, align 8
  %5191 = icmp ult i32 %5189, %5183
  %5192 = icmp ult i32 %5189, %5188
  %5193 = or i1 %5191, %5192
  %5194 = zext i1 %5193 to i8
  store i8 %5194, i8* %14, align 1
  %5195 = and i32 %5189, 255
  %5196 = tail call i32 @llvm.ctpop.i32(i32 %5195)
  %5197 = trunc i32 %5196 to i8
  %5198 = and i8 %5197, 1
  %5199 = xor i8 %5198, 1
  store i8 %5199, i8* %21, align 1
  %5200 = xor i32 %5188, %5183
  %5201 = xor i32 %5200, %5189
  %5202 = lshr i32 %5201, 4
  %5203 = trunc i32 %5202 to i8
  %5204 = and i8 %5203, 1
  store i8 %5204, i8* %26, align 1
  %5205 = icmp eq i32 %5189, 0
  %5206 = zext i1 %5205 to i8
  store i8 %5206, i8* %29, align 1
  %5207 = lshr i32 %5189, 31
  %5208 = trunc i32 %5207 to i8
  store i8 %5208, i8* %32, align 1
  %5209 = lshr i32 %5183, 31
  %5210 = lshr i32 %5188, 31
  %5211 = xor i32 %5207, %5209
  %5212 = xor i32 %5207, %5210
  %5213 = add nuw nsw i32 %5211, %5212
  %5214 = icmp eq i32 %5213, 2
  %5215 = zext i1 %5214 to i8
  store i8 %5215, i8* %38, align 1
  %5216 = add i64 %5178, -16
  %5217 = add i64 %5180, 9
  store i64 %5217, i64* %3, align 8
  %5218 = inttoptr i64 %5216 to i32*
  %5219 = load i32, i32* %5218, align 4
  %5220 = sub i32 %5189, %5219
  %5221 = zext i32 %5220 to i64
  store i64 %5221, i64* %RAX.i2269, align 8
  %5222 = icmp ult i32 %5189, %5219
  %5223 = zext i1 %5222 to i8
  store i8 %5223, i8* %14, align 1
  %5224 = and i32 %5220, 255
  %5225 = tail call i32 @llvm.ctpop.i32(i32 %5224)
  %5226 = trunc i32 %5225 to i8
  %5227 = and i8 %5226, 1
  %5228 = xor i8 %5227, 1
  store i8 %5228, i8* %21, align 1
  %5229 = xor i32 %5219, %5189
  %5230 = xor i32 %5229, %5220
  %5231 = lshr i32 %5230, 4
  %5232 = trunc i32 %5231 to i8
  %5233 = and i8 %5232, 1
  store i8 %5233, i8* %26, align 1
  %5234 = icmp eq i32 %5220, 0
  %5235 = zext i1 %5234 to i8
  store i8 %5235, i8* %29, align 1
  %5236 = lshr i32 %5220, 31
  %5237 = trunc i32 %5236 to i8
  store i8 %5237, i8* %32, align 1
  %5238 = lshr i32 %5219, 31
  %5239 = xor i32 %5238, %5207
  %5240 = xor i32 %5236, %5207
  %5241 = add nuw nsw i32 %5240, %5239
  %5242 = icmp eq i32 %5241, 2
  %5243 = zext i1 %5242 to i8
  store i8 %5243, i8* %38, align 1
  %5244 = add i64 %5178, -44
  %5245 = add i64 %5180, 12
  store i64 %5245, i64* %3, align 8
  %5246 = inttoptr i64 %5244 to i32*
  store i32 %5220, i32* %5246, align 4
  %.pre200 = load i64, i64* %3, align 8
  br label %block_.L_46fbd4

block_.L_46fbd4:                                  ; preds = %block_.L_46fbab, %block_46fbba
  %5247 = phi i64 [ %5169, %block_.L_46fbab ], [ %.pre200, %block_46fbba ]
  %5248 = add i64 %5247, 5
  store i64 %5248, i64* %3, align 8
  br label %block_.L_46fbd9

block_.L_46fbd9:                                  ; preds = %block_.L_46fbd4, %block_46fb98
  %storemerge140 = phi i64 [ %5109, %block_46fb98 ], [ %5248, %block_.L_46fbd4 ]
  %5249 = add i64 %storemerge140, 5
  store i64 %5249, i64* %3, align 8
  br label %block_.L_46fbde

block_.L_46fbde:                                  ; preds = %block_.L_46fbd9, %block_46fb6a
  %storemerge129 = phi i64 [ %5041, %block_46fb6a ], [ %5249, %block_.L_46fbd9 ]
  %5250 = add i64 %storemerge129, 5
  store i64 %5250, i64* %3, align 8
  br label %block_.L_46fbe3

block_.L_46fbe3:                                  ; preds = %block_46fb1c, %block_.L_46fbde, %block_.L_46fadf
  %5251 = phi i64 [ %4838, %block_.L_46fadf ], [ %4919, %block_46fb1c ], [ %5250, %block_.L_46fbde ]
  %MEMORY.66 = phi %struct.Memory* [ %call2_46fb0e, %block_.L_46fadf ], [ %call2_46fb4b, %block_46fb1c ], [ %call2_46fb4b, %block_.L_46fbde ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %5252 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5252, i64* %RCX.i2228, align 8
  %5253 = load i64, i64* %RBP.i, align 8
  %5254 = add i64 %5253, -4
  %5255 = add i64 %5251, 22
  store i64 %5255, i64* %3, align 8
  %5256 = inttoptr i64 %5254 to i32*
  %5257 = load i32, i32* %5256, align 4
  %5258 = sext i32 %5257 to i64
  %5259 = mul nsw i64 %5258, 76
  store i64 %5259, i64* %RDX.i1551, align 8
  %5260 = lshr i64 %5259, 63
  %5261 = add i64 %5259, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %5261, i64* %RAX.i2269, align 8
  %5262 = icmp ult i64 %5261, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5263 = icmp ult i64 %5261, %5259
  %5264 = or i1 %5262, %5263
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %14, align 1
  %5266 = trunc i64 %5261 to i32
  %5267 = and i32 %5266, 252
  %5268 = tail call i32 @llvm.ctpop.i32(i32 %5267)
  %5269 = trunc i32 %5268 to i8
  %5270 = and i8 %5269, 1
  %5271 = xor i8 %5270, 1
  store i8 %5271, i8* %21, align 1
  %5272 = xor i64 %5259, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5273 = xor i64 %5272, %5261
  %5274 = lshr i64 %5273, 4
  %5275 = trunc i64 %5274 to i8
  %5276 = and i8 %5275, 1
  store i8 %5276, i8* %26, align 1
  %5277 = icmp eq i64 %5261, 0
  %5278 = zext i1 %5277 to i8
  store i8 %5278, i8* %29, align 1
  %5279 = lshr i64 %5261, 63
  %5280 = trunc i64 %5279 to i8
  store i8 %5280, i8* %32, align 1
  %5281 = xor i64 %5279, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %5282 = xor i64 %5279, %5260
  %5283 = add nuw nsw i64 %5281, %5282
  %5284 = icmp eq i64 %5283, 2
  %5285 = zext i1 %5284 to i8
  store i8 %5285, i8* %38, align 1
  %5286 = add i64 %5259, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %5287 = add i64 %5251, 33
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5286 to i32*
  %5289 = load i32, i32* %5288, align 4
  %5290 = sext i32 %5289 to i64
  %5291 = mul nsw i64 %5290, 104
  store i64 %5291, i64* %RAX.i2269, align 8
  %5292 = load i64, i64* %RCX.i2228, align 8
  %5293 = add i64 %5291, %5292
  %5294 = lshr i64 %5293, 63
  %5295 = add i64 %5293, 76
  store i64 %5295, i64* %RCX.i2228, align 8
  %5296 = icmp ugt i64 %5293, -77
  %5297 = zext i1 %5296 to i8
  store i8 %5297, i8* %14, align 1
  %5298 = trunc i64 %5295 to i32
  %5299 = and i32 %5298, 255
  %5300 = tail call i32 @llvm.ctpop.i32(i32 %5299)
  %5301 = trunc i32 %5300 to i8
  %5302 = and i8 %5301, 1
  %5303 = xor i8 %5302, 1
  store i8 %5303, i8* %21, align 1
  %5304 = xor i64 %5295, %5293
  %5305 = lshr i64 %5304, 4
  %5306 = trunc i64 %5305 to i8
  %5307 = and i8 %5306, 1
  store i8 %5307, i8* %26, align 1
  %5308 = icmp eq i64 %5295, 0
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %29, align 1
  %5310 = lshr i64 %5295, 63
  %5311 = trunc i64 %5310 to i8
  store i8 %5311, i8* %32, align 1
  %5312 = xor i64 %5310, %5294
  %5313 = add nuw nsw i64 %5312, %5310
  %5314 = icmp eq i64 %5313, 2
  %5315 = zext i1 %5314 to i8
  store i8 %5315, i8* %38, align 1
  store i64 %5295, i64* %RDI.i1695, align 8
  %5316 = add i64 %5251, -213235
  %5317 = add i64 %5251, 52
  %5318 = load i64, i64* %6, align 8
  %5319 = add i64 %5318, -8
  %5320 = inttoptr i64 %5319 to i64*
  store i64 %5317, i64* %5320, align 8
  store i64 %5319, i64* %6, align 8
  store i64 %5316, i64* %3, align 8
  %call2_46fc12 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %5316, %struct.Memory* %MEMORY.66)
  %5321 = load i32, i32* %EAX.i1691, align 4
  %5322 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5323 = and i32 %5321, 255
  %5324 = tail call i32 @llvm.ctpop.i32(i32 %5323)
  %5325 = trunc i32 %5324 to i8
  %5326 = and i8 %5325, 1
  %5327 = xor i8 %5326, 1
  store i8 %5327, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5328 = icmp eq i32 %5321, 0
  %5329 = zext i1 %5328 to i8
  store i8 %5329, i8* %29, align 1
  %5330 = lshr i32 %5321, 31
  %5331 = trunc i32 %5330 to i8
  store i8 %5331, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v255 = select i1 %5328, i64 9, i64 213
  %5332 = add i64 %5322, %.v255
  store i64 %5332, i64* %3, align 8
  br i1 %5328, label %block_46fc20, label %block_.L_46fcec

block_46fc20:                                     ; preds = %block_.L_46fbe3
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %5333 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5333, i64* %RCX.i2228, align 8
  %5334 = load i64, i64* %RBP.i, align 8
  %5335 = add i64 %5334, -8
  %5336 = add i64 %5332, 22
  store i64 %5336, i64* %3, align 8
  %5337 = inttoptr i64 %5335 to i32*
  %5338 = load i32, i32* %5337, align 4
  %5339 = sext i32 %5338 to i64
  %5340 = mul nsw i64 %5339, 76
  store i64 %5340, i64* %RDX.i1551, align 8
  %5341 = lshr i64 %5340, 63
  %5342 = add i64 %5340, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %5342, i64* %RAX.i2269, align 8
  %5343 = icmp ult i64 %5342, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5344 = icmp ult i64 %5342, %5340
  %5345 = or i1 %5343, %5344
  %5346 = zext i1 %5345 to i8
  store i8 %5346, i8* %14, align 1
  %5347 = trunc i64 %5342 to i32
  %5348 = and i32 %5347, 252
  %5349 = tail call i32 @llvm.ctpop.i32(i32 %5348)
  %5350 = trunc i32 %5349 to i8
  %5351 = and i8 %5350, 1
  %5352 = xor i8 %5351, 1
  store i8 %5352, i8* %21, align 1
  %5353 = xor i64 %5340, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5354 = xor i64 %5353, %5342
  %5355 = lshr i64 %5354, 4
  %5356 = trunc i64 %5355 to i8
  %5357 = and i8 %5356, 1
  store i8 %5357, i8* %26, align 1
  %5358 = icmp eq i64 %5342, 0
  %5359 = zext i1 %5358 to i8
  store i8 %5359, i8* %29, align 1
  %5360 = lshr i64 %5342, 63
  %5361 = trunc i64 %5360 to i8
  store i8 %5361, i8* %32, align 1
  %5362 = xor i64 %5360, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %5363 = xor i64 %5360, %5341
  %5364 = add nuw nsw i64 %5362, %5363
  %5365 = icmp eq i64 %5364, 2
  %5366 = zext i1 %5365 to i8
  store i8 %5366, i8* %38, align 1
  %5367 = add i64 %5340, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %5368 = add i64 %5332, 33
  store i64 %5368, i64* %3, align 8
  %5369 = inttoptr i64 %5367 to i32*
  %5370 = load i32, i32* %5369, align 4
  %5371 = sext i32 %5370 to i64
  %5372 = mul nsw i64 %5371, 104
  store i64 %5372, i64* %RAX.i2269, align 8
  %5373 = load i64, i64* %RCX.i2228, align 8
  %5374 = add i64 %5372, %5373
  %5375 = lshr i64 %5374, 63
  %5376 = add i64 %5374, 76
  store i64 %5376, i64* %RCX.i2228, align 8
  %5377 = icmp ugt i64 %5374, -77
  %5378 = zext i1 %5377 to i8
  store i8 %5378, i8* %14, align 1
  %5379 = trunc i64 %5376 to i32
  %5380 = and i32 %5379, 255
  %5381 = tail call i32 @llvm.ctpop.i32(i32 %5380)
  %5382 = trunc i32 %5381 to i8
  %5383 = and i8 %5382, 1
  %5384 = xor i8 %5383, 1
  store i8 %5384, i8* %21, align 1
  %5385 = xor i64 %5376, %5374
  %5386 = lshr i64 %5385, 4
  %5387 = trunc i64 %5386 to i8
  %5388 = and i8 %5387, 1
  store i8 %5388, i8* %26, align 1
  %5389 = icmp eq i64 %5376, 0
  %5390 = zext i1 %5389 to i8
  store i8 %5390, i8* %29, align 1
  %5391 = lshr i64 %5376, 63
  %5392 = trunc i64 %5391 to i8
  store i8 %5392, i8* %32, align 1
  %5393 = xor i64 %5391, %5375
  %5394 = add nuw nsw i64 %5393, %5391
  %5395 = icmp eq i64 %5394, 2
  %5396 = zext i1 %5395 to i8
  store i8 %5396, i8* %38, align 1
  store i64 %5376, i64* %RDI.i1695, align 8
  %5397 = add i64 %5332, -213296
  %5398 = add i64 %5332, 52
  %5399 = load i64, i64* %6, align 8
  %5400 = add i64 %5399, -8
  %5401 = inttoptr i64 %5400 to i64*
  store i64 %5398, i64* %5401, align 8
  store i64 %5400, i64* %6, align 8
  store i64 %5397, i64* %3, align 8
  %call2_46fc4f = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %5397, %struct.Memory* %call2_46fc12)
  %5402 = load i32, i32* %EAX.i1691, align 4
  %5403 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5404 = and i32 %5402, 255
  %5405 = tail call i32 @llvm.ctpop.i32(i32 %5404)
  %5406 = trunc i32 %5405 to i8
  %5407 = and i8 %5406, 1
  %5408 = xor i8 %5407, 1
  store i8 %5408, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5409 = icmp eq i32 %5402, 0
  %5410 = zext i1 %5409 to i8
  store i8 %5410, i8* %29, align 1
  %5411 = lshr i32 %5402, 31
  %5412 = trunc i32 %5411 to i8
  store i8 %5412, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %5413 = icmp ne i8 %5412, 0
  %5414 = or i1 %5409, %5413
  %.v282 = select i1 %5414, i64 152, i64 9
  %5415 = add i64 %5403, %.v282
  store i64 %5415, i64* %3, align 8
  br i1 %5414, label %block_.L_46fcec, label %block_46fc5d

block_46fc5d:                                     ; preds = %block_46fc20
  %5416 = load i64, i64* %RBP.i, align 8
  %5417 = add i64 %5416, -16
  %5418 = add i64 %5415, 3
  store i64 %5418, i64* %3, align 8
  %5419 = inttoptr i64 %5417 to i32*
  %5420 = load i32, i32* %5419, align 4
  %5421 = zext i32 %5420 to i64
  store i64 %5421, i64* %RAX.i2269, align 8
  %5422 = add i64 %5416, -20
  %5423 = add i64 %5415, 6
  store i64 %5423, i64* %3, align 8
  %5424 = inttoptr i64 %5422 to i32*
  %5425 = load i32, i32* %5424, align 4
  %5426 = add i32 %5425, %5420
  %5427 = zext i32 %5426 to i64
  store i64 %5427, i64* %RAX.i2269, align 8
  %5428 = icmp ult i32 %5426, %5420
  %5429 = icmp ult i32 %5426, %5425
  %5430 = or i1 %5428, %5429
  %5431 = zext i1 %5430 to i8
  store i8 %5431, i8* %14, align 1
  %5432 = and i32 %5426, 255
  %5433 = tail call i32 @llvm.ctpop.i32(i32 %5432)
  %5434 = trunc i32 %5433 to i8
  %5435 = and i8 %5434, 1
  %5436 = xor i8 %5435, 1
  store i8 %5436, i8* %21, align 1
  %5437 = xor i32 %5425, %5420
  %5438 = xor i32 %5437, %5426
  %5439 = lshr i32 %5438, 4
  %5440 = trunc i32 %5439 to i8
  %5441 = and i8 %5440, 1
  store i8 %5441, i8* %26, align 1
  %5442 = icmp eq i32 %5426, 0
  %5443 = zext i1 %5442 to i8
  store i8 %5443, i8* %29, align 1
  %5444 = lshr i32 %5426, 31
  %5445 = trunc i32 %5444 to i8
  store i8 %5445, i8* %32, align 1
  %5446 = lshr i32 %5420, 31
  %5447 = lshr i32 %5425, 31
  %5448 = xor i32 %5444, %5446
  %5449 = xor i32 %5444, %5447
  %5450 = add nuw nsw i32 %5448, %5449
  %5451 = icmp eq i32 %5450, 2
  %5452 = zext i1 %5451 to i8
  store i8 %5452, i8* %38, align 1
  %5453 = add i64 %5416, -12
  %5454 = add i64 %5415, 9
  store i64 %5454, i64* %3, align 8
  %5455 = inttoptr i64 %5453 to i32*
  %5456 = load i32, i32* %5455, align 4
  %5457 = sub i32 %5426, %5456
  %5458 = icmp ult i32 %5426, %5456
  %5459 = zext i1 %5458 to i8
  store i8 %5459, i8* %14, align 1
  %5460 = and i32 %5457, 255
  %5461 = tail call i32 @llvm.ctpop.i32(i32 %5460)
  %5462 = trunc i32 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = xor i8 %5463, 1
  store i8 %5464, i8* %21, align 1
  %5465 = xor i32 %5456, %5426
  %5466 = xor i32 %5465, %5457
  %5467 = lshr i32 %5466, 4
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  store i8 %5469, i8* %26, align 1
  %5470 = icmp eq i32 %5457, 0
  %5471 = zext i1 %5470 to i8
  store i8 %5471, i8* %29, align 1
  %5472 = lshr i32 %5457, 31
  %5473 = trunc i32 %5472 to i8
  store i8 %5473, i8* %32, align 1
  %5474 = lshr i32 %5456, 31
  %5475 = xor i32 %5474, %5444
  %5476 = xor i32 %5472, %5444
  %5477 = add nuw nsw i32 %5476, %5475
  %5478 = icmp eq i32 %5477, 2
  %5479 = zext i1 %5478 to i8
  store i8 %5479, i8* %38, align 1
  %5480 = icmp ne i8 %5473, 0
  %5481 = xor i1 %5480, %5478
  %5482 = or i1 %5470, %5481
  %.v283 = select i1 %5482, i64 46, i64 15
  %5483 = add i64 %5415, %.v283
  store i64 %5483, i64* %3, align 8
  br i1 %5482, label %block_.L_46fc8b, label %block_46fc6c

block_46fc6c:                                     ; preds = %block_46fc5d
  %5484 = add i64 %5416, -36
  %5485 = add i64 %5483, 7
  store i64 %5485, i64* %3, align 8
  %5486 = inttoptr i64 %5484 to i32*
  store i32 0, i32* %5486, align 4
  %5487 = load i64, i64* %RBP.i, align 8
  %5488 = add i64 %5487, -40
  %5489 = load i64, i64* %3, align 8
  %5490 = add i64 %5489, 7
  store i64 %5490, i64* %3, align 8
  %5491 = inttoptr i64 %5488 to i32*
  store i32 1, i32* %5491, align 4
  %5492 = load i64, i64* %RBP.i, align 8
  %5493 = add i64 %5492, -16
  %5494 = load i64, i64* %3, align 8
  %5495 = add i64 %5494, 3
  store i64 %5495, i64* %3, align 8
  %5496 = inttoptr i64 %5493 to i32*
  %5497 = load i32, i32* %5496, align 4
  %5498 = zext i32 %5497 to i64
  store i64 %5498, i64* %RAX.i2269, align 8
  %5499 = add i64 %5492, -20
  %5500 = add i64 %5494, 6
  store i64 %5500, i64* %3, align 8
  %5501 = inttoptr i64 %5499 to i32*
  %5502 = load i32, i32* %5501, align 4
  %5503 = add i32 %5502, %5497
  %5504 = zext i32 %5503 to i64
  store i64 %5504, i64* %RAX.i2269, align 8
  %5505 = icmp ult i32 %5503, %5497
  %5506 = icmp ult i32 %5503, %5502
  %5507 = or i1 %5505, %5506
  %5508 = zext i1 %5507 to i8
  store i8 %5508, i8* %14, align 1
  %5509 = and i32 %5503, 255
  %5510 = tail call i32 @llvm.ctpop.i32(i32 %5509)
  %5511 = trunc i32 %5510 to i8
  %5512 = and i8 %5511, 1
  %5513 = xor i8 %5512, 1
  store i8 %5513, i8* %21, align 1
  %5514 = xor i32 %5502, %5497
  %5515 = xor i32 %5514, %5503
  %5516 = lshr i32 %5515, 4
  %5517 = trunc i32 %5516 to i8
  %5518 = and i8 %5517, 1
  store i8 %5518, i8* %26, align 1
  %5519 = icmp eq i32 %5503, 0
  %5520 = zext i1 %5519 to i8
  store i8 %5520, i8* %29, align 1
  %5521 = lshr i32 %5503, 31
  %5522 = trunc i32 %5521 to i8
  store i8 %5522, i8* %32, align 1
  %5523 = lshr i32 %5497, 31
  %5524 = lshr i32 %5502, 31
  %5525 = xor i32 %5521, %5523
  %5526 = xor i32 %5521, %5524
  %5527 = add nuw nsw i32 %5525, %5526
  %5528 = icmp eq i32 %5527, 2
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %38, align 1
  %5530 = add i64 %5492, -12
  %5531 = add i64 %5494, 9
  store i64 %5531, i64* %3, align 8
  %5532 = inttoptr i64 %5530 to i32*
  %5533 = load i32, i32* %5532, align 4
  %5534 = sub i32 %5503, %5533
  %5535 = zext i32 %5534 to i64
  store i64 %5535, i64* %RAX.i2269, align 8
  %5536 = icmp ult i32 %5503, %5533
  %5537 = zext i1 %5536 to i8
  store i8 %5537, i8* %14, align 1
  %5538 = and i32 %5534, 255
  %5539 = tail call i32 @llvm.ctpop.i32(i32 %5538)
  %5540 = trunc i32 %5539 to i8
  %5541 = and i8 %5540, 1
  %5542 = xor i8 %5541, 1
  store i8 %5542, i8* %21, align 1
  %5543 = xor i32 %5533, %5503
  %5544 = xor i32 %5543, %5534
  %5545 = lshr i32 %5544, 4
  %5546 = trunc i32 %5545 to i8
  %5547 = and i8 %5546, 1
  store i8 %5547, i8* %26, align 1
  %5548 = icmp eq i32 %5534, 0
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %29, align 1
  %5550 = lshr i32 %5534, 31
  %5551 = trunc i32 %5550 to i8
  store i8 %5551, i8* %32, align 1
  %5552 = lshr i32 %5533, 31
  %5553 = xor i32 %5552, %5521
  %5554 = xor i32 %5550, %5521
  %5555 = add nuw nsw i32 %5554, %5553
  %5556 = icmp eq i32 %5555, 2
  %5557 = zext i1 %5556 to i8
  store i8 %5557, i8* %38, align 1
  %5558 = add i64 %5492, -44
  %5559 = add i64 %5494, 12
  store i64 %5559, i64* %3, align 8
  %5560 = inttoptr i64 %5558 to i32*
  store i32 %5534, i32* %5560, align 4
  %5561 = load i64, i64* %3, align 8
  %5562 = add i64 %5561, 97
  br label %block_.L_46fce7

block_.L_46fc8b:                                  ; preds = %block_46fc5d
  %5563 = add i64 %5483, 3
  store i64 %5563, i64* %3, align 8
  %5564 = load i32, i32* %5419, align 4
  %5565 = zext i32 %5564 to i64
  store i64 %5565, i64* %RAX.i2269, align 8
  %5566 = add i64 %5483, 6
  store i64 %5566, i64* %3, align 8
  %5567 = load i32, i32* %5424, align 4
  %5568 = add i32 %5567, %5564
  %5569 = zext i32 %5568 to i64
  store i64 %5569, i64* %RAX.i2269, align 8
  %5570 = icmp ult i32 %5568, %5564
  %5571 = icmp ult i32 %5568, %5567
  %5572 = or i1 %5570, %5571
  %5573 = zext i1 %5572 to i8
  store i8 %5573, i8* %14, align 1
  %5574 = and i32 %5568, 255
  %5575 = tail call i32 @llvm.ctpop.i32(i32 %5574)
  %5576 = trunc i32 %5575 to i8
  %5577 = and i8 %5576, 1
  %5578 = xor i8 %5577, 1
  store i8 %5578, i8* %21, align 1
  %5579 = xor i32 %5567, %5564
  %5580 = xor i32 %5579, %5568
  %5581 = lshr i32 %5580, 4
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  store i8 %5583, i8* %26, align 1
  %5584 = icmp eq i32 %5568, 0
  %5585 = zext i1 %5584 to i8
  store i8 %5585, i8* %29, align 1
  %5586 = lshr i32 %5568, 31
  %5587 = trunc i32 %5586 to i8
  store i8 %5587, i8* %32, align 1
  %5588 = lshr i32 %5564, 31
  %5589 = lshr i32 %5567, 31
  %5590 = xor i32 %5586, %5588
  %5591 = xor i32 %5586, %5589
  %5592 = add nuw nsw i32 %5590, %5591
  %5593 = icmp eq i32 %5592, 2
  %5594 = zext i1 %5593 to i8
  store i8 %5594, i8* %38, align 1
  %5595 = add i64 %5483, 9
  store i64 %5595, i64* %3, align 8
  %5596 = load i32, i32* %5455, align 4
  %5597 = sub i32 %5568, %5596
  %5598 = icmp ult i32 %5568, %5596
  %5599 = zext i1 %5598 to i8
  store i8 %5599, i8* %14, align 1
  %5600 = and i32 %5597, 255
  %5601 = tail call i32 @llvm.ctpop.i32(i32 %5600)
  %5602 = trunc i32 %5601 to i8
  %5603 = and i8 %5602, 1
  %5604 = xor i8 %5603, 1
  store i8 %5604, i8* %21, align 1
  %5605 = xor i32 %5596, %5568
  %5606 = xor i32 %5605, %5597
  %5607 = lshr i32 %5606, 4
  %5608 = trunc i32 %5607 to i8
  %5609 = and i8 %5608, 1
  store i8 %5609, i8* %26, align 1
  %5610 = icmp eq i32 %5597, 0
  %5611 = zext i1 %5610 to i8
  store i8 %5611, i8* %29, align 1
  %5612 = lshr i32 %5597, 31
  %5613 = trunc i32 %5612 to i8
  store i8 %5613, i8* %32, align 1
  %5614 = lshr i32 %5596, 31
  %5615 = xor i32 %5614, %5586
  %5616 = xor i32 %5612, %5586
  %5617 = add nuw nsw i32 %5616, %5615
  %5618 = icmp eq i32 %5617, 2
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %38, align 1
  %.v284 = select i1 %5610, i64 15, i64 41
  %5620 = add i64 %5483, %.v284
  store i64 %5620, i64* %3, align 8
  br i1 %5610, label %block_46fc9a, label %block_.L_46fcb4

block_46fc9a:                                     ; preds = %block_.L_46fc8b
  %5621 = add i64 %5416, -36
  %5622 = add i64 %5620, 7
  store i64 %5622, i64* %3, align 8
  %5623 = inttoptr i64 %5621 to i32*
  store i32 2, i32* %5623, align 4
  %5624 = load i64, i64* %RBP.i, align 8
  %5625 = add i64 %5624, -40
  %5626 = load i64, i64* %3, align 8
  %5627 = add i64 %5626, 7
  store i64 %5627, i64* %3, align 8
  %5628 = inttoptr i64 %5625 to i32*
  store i32 2, i32* %5628, align 4
  %5629 = load i64, i64* %RBP.i, align 8
  %5630 = add i64 %5629, -44
  %5631 = load i64, i64* %3, align 8
  %5632 = add i64 %5631, 7
  store i64 %5632, i64* %3, align 8
  %5633 = inttoptr i64 %5630 to i32*
  store i32 0, i32* %5633, align 4
  %5634 = load i64, i64* %3, align 8
  %5635 = add i64 %5634, 51
  br label %block_.L_46fce2

block_.L_46fcb4:                                  ; preds = %block_.L_46fc8b
  %5636 = add i64 %5620, 3
  store i64 %5636, i64* %3, align 8
  %5637 = load i32, i32* %5419, align 4
  %5638 = zext i32 %5637 to i64
  store i64 %5638, i64* %RAX.i2269, align 8
  %5639 = add i64 %5620, 6
  store i64 %5639, i64* %3, align 8
  %5640 = load i32, i32* %5424, align 4
  %5641 = add i32 %5640, %5637
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RAX.i2269, align 8
  %5643 = icmp ult i32 %5641, %5637
  %5644 = icmp ult i32 %5641, %5640
  %5645 = or i1 %5643, %5644
  %5646 = zext i1 %5645 to i8
  store i8 %5646, i8* %14, align 1
  %5647 = and i32 %5641, 255
  %5648 = tail call i32 @llvm.ctpop.i32(i32 %5647)
  %5649 = trunc i32 %5648 to i8
  %5650 = and i8 %5649, 1
  %5651 = xor i8 %5650, 1
  store i8 %5651, i8* %21, align 1
  %5652 = xor i32 %5640, %5637
  %5653 = xor i32 %5652, %5641
  %5654 = lshr i32 %5653, 4
  %5655 = trunc i32 %5654 to i8
  %5656 = and i8 %5655, 1
  store i8 %5656, i8* %26, align 1
  %5657 = icmp eq i32 %5641, 0
  %5658 = zext i1 %5657 to i8
  store i8 %5658, i8* %29, align 1
  %5659 = lshr i32 %5641, 31
  %5660 = trunc i32 %5659 to i8
  store i8 %5660, i8* %32, align 1
  %5661 = lshr i32 %5637, 31
  %5662 = lshr i32 %5640, 31
  %5663 = xor i32 %5659, %5661
  %5664 = xor i32 %5659, %5662
  %5665 = add nuw nsw i32 %5663, %5664
  %5666 = icmp eq i32 %5665, 2
  %5667 = zext i1 %5666 to i8
  store i8 %5667, i8* %38, align 1
  %5668 = add i64 %5620, 9
  store i64 %5668, i64* %3, align 8
  %5669 = load i32, i32* %5455, align 4
  %5670 = sub i32 %5641, %5669
  %5671 = icmp ult i32 %5641, %5669
  %5672 = zext i1 %5671 to i8
  store i8 %5672, i8* %14, align 1
  %5673 = and i32 %5670, 255
  %5674 = tail call i32 @llvm.ctpop.i32(i32 %5673)
  %5675 = trunc i32 %5674 to i8
  %5676 = and i8 %5675, 1
  %5677 = xor i8 %5676, 1
  store i8 %5677, i8* %21, align 1
  %5678 = xor i32 %5669, %5641
  %5679 = xor i32 %5678, %5670
  %5680 = lshr i32 %5679, 4
  %5681 = trunc i32 %5680 to i8
  %5682 = and i8 %5681, 1
  store i8 %5682, i8* %26, align 1
  %5683 = icmp eq i32 %5670, 0
  %5684 = zext i1 %5683 to i8
  store i8 %5684, i8* %29, align 1
  %5685 = lshr i32 %5670, 31
  %5686 = trunc i32 %5685 to i8
  store i8 %5686, i8* %32, align 1
  %5687 = lshr i32 %5669, 31
  %5688 = xor i32 %5687, %5659
  %5689 = xor i32 %5685, %5659
  %5690 = add nuw nsw i32 %5689, %5688
  %5691 = icmp eq i32 %5690, 2
  %5692 = zext i1 %5691 to i8
  store i8 %5692, i8* %38, align 1
  %5693 = icmp ne i8 %5686, 0
  %5694 = xor i1 %5693, %5691
  %5695 = or i1 %5683, %5694
  %.v285 = select i1 %5695, i64 41, i64 15
  %5696 = add i64 %5620, %.v285
  store i64 %5696, i64* %3, align 8
  br i1 %5695, label %block_.L_46fcdd, label %block_46fcc3

block_46fcc3:                                     ; preds = %block_.L_46fcb4
  %5697 = add i64 %5416, -36
  %5698 = add i64 %5696, 7
  store i64 %5698, i64* %3, align 8
  %5699 = inttoptr i64 %5697 to i32*
  store i32 0, i32* %5699, align 4
  %5700 = load i64, i64* %RBP.i, align 8
  %5701 = add i64 %5700, -40
  %5702 = load i64, i64* %3, align 8
  %5703 = add i64 %5702, 7
  store i64 %5703, i64* %3, align 8
  %5704 = inttoptr i64 %5701 to i32*
  store i32 1, i32* %5704, align 4
  %5705 = load i64, i64* %RBP.i, align 8
  %5706 = add i64 %5705, -16
  %5707 = load i64, i64* %3, align 8
  %5708 = add i64 %5707, 3
  store i64 %5708, i64* %3, align 8
  %5709 = inttoptr i64 %5706 to i32*
  %5710 = load i32, i32* %5709, align 4
  %5711 = zext i32 %5710 to i64
  store i64 %5711, i64* %RAX.i2269, align 8
  %5712 = add i64 %5705, -12
  %5713 = add i64 %5707, 6
  store i64 %5713, i64* %3, align 8
  %5714 = inttoptr i64 %5712 to i32*
  %5715 = load i32, i32* %5714, align 4
  %5716 = sub i32 %5710, %5715
  %5717 = zext i32 %5716 to i64
  store i64 %5717, i64* %RAX.i2269, align 8
  %5718 = icmp ult i32 %5710, %5715
  %5719 = zext i1 %5718 to i8
  store i8 %5719, i8* %14, align 1
  %5720 = and i32 %5716, 255
  %5721 = tail call i32 @llvm.ctpop.i32(i32 %5720)
  %5722 = trunc i32 %5721 to i8
  %5723 = and i8 %5722, 1
  %5724 = xor i8 %5723, 1
  store i8 %5724, i8* %21, align 1
  %5725 = xor i32 %5715, %5710
  %5726 = xor i32 %5725, %5716
  %5727 = lshr i32 %5726, 4
  %5728 = trunc i32 %5727 to i8
  %5729 = and i8 %5728, 1
  store i8 %5729, i8* %26, align 1
  %5730 = icmp eq i32 %5716, 0
  %5731 = zext i1 %5730 to i8
  store i8 %5731, i8* %29, align 1
  %5732 = lshr i32 %5716, 31
  %5733 = trunc i32 %5732 to i8
  store i8 %5733, i8* %32, align 1
  %5734 = lshr i32 %5710, 31
  %5735 = lshr i32 %5715, 31
  %5736 = xor i32 %5735, %5734
  %5737 = xor i32 %5732, %5734
  %5738 = add nuw nsw i32 %5737, %5736
  %5739 = icmp eq i32 %5738, 2
  %5740 = zext i1 %5739 to i8
  store i8 %5740, i8* %38, align 1
  %5741 = add i64 %5705, -20
  %5742 = add i64 %5707, 9
  store i64 %5742, i64* %3, align 8
  %5743 = inttoptr i64 %5741 to i32*
  %5744 = load i32, i32* %5743, align 4
  %5745 = sub i32 %5716, %5744
  %5746 = zext i32 %5745 to i64
  store i64 %5746, i64* %RAX.i2269, align 8
  %5747 = icmp ult i32 %5716, %5744
  %5748 = zext i1 %5747 to i8
  store i8 %5748, i8* %14, align 1
  %5749 = and i32 %5745, 255
  %5750 = tail call i32 @llvm.ctpop.i32(i32 %5749)
  %5751 = trunc i32 %5750 to i8
  %5752 = and i8 %5751, 1
  %5753 = xor i8 %5752, 1
  store i8 %5753, i8* %21, align 1
  %5754 = xor i32 %5744, %5716
  %5755 = xor i32 %5754, %5745
  %5756 = lshr i32 %5755, 4
  %5757 = trunc i32 %5756 to i8
  %5758 = and i8 %5757, 1
  store i8 %5758, i8* %26, align 1
  %5759 = icmp eq i32 %5745, 0
  %5760 = zext i1 %5759 to i8
  store i8 %5760, i8* %29, align 1
  %5761 = lshr i32 %5745, 31
  %5762 = trunc i32 %5761 to i8
  store i8 %5762, i8* %32, align 1
  %5763 = lshr i32 %5744, 31
  %5764 = xor i32 %5763, %5732
  %5765 = xor i32 %5761, %5732
  %5766 = add nuw nsw i32 %5765, %5764
  %5767 = icmp eq i32 %5766, 2
  %5768 = zext i1 %5767 to i8
  store i8 %5768, i8* %38, align 1
  %5769 = add i64 %5705, -44
  %5770 = add i64 %5707, 12
  store i64 %5770, i64* %3, align 8
  %5771 = inttoptr i64 %5769 to i32*
  store i32 %5745, i32* %5771, align 4
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_46fcdd

block_.L_46fcdd:                                  ; preds = %block_46fcc3, %block_.L_46fcb4
  %5772 = phi i64 [ %.pre201, %block_46fcc3 ], [ %5696, %block_.L_46fcb4 ]
  %5773 = add i64 %5772, 5
  store i64 %5773, i64* %3, align 8
  br label %block_.L_46fce2

block_.L_46fce2:                                  ; preds = %block_.L_46fcdd, %block_46fc9a
  %storemerge139 = phi i64 [ %5635, %block_46fc9a ], [ %5773, %block_.L_46fcdd ]
  %5774 = add i64 %storemerge139, 5
  store i64 %5774, i64* %3, align 8
  br label %block_.L_46fce7

block_.L_46fce7:                                  ; preds = %block_.L_46fce2, %block_46fc6c
  %storemerge130 = phi i64 [ %5562, %block_46fc6c ], [ %5774, %block_.L_46fce2 ]
  %5775 = add i64 %storemerge130, 5
  store i64 %5775, i64* %3, align 8
  br label %block_.L_46fcec

block_.L_46fcec:                                  ; preds = %block_.L_46fbe3, %block_.L_46fce7, %block_46fc20
  %5776 = phi i64 [ %5332, %block_.L_46fbe3 ], [ %5415, %block_46fc20 ], [ %5775, %block_.L_46fce7 ]
  %MEMORY.70 = phi %struct.Memory* [ %call2_46fc12, %block_.L_46fbe3 ], [ %call2_46fc4f, %block_46fc20 ], [ %call2_46fc4f, %block_.L_46fce7 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %5777 = load i64, i64* %RBP.i, align 8
  %5778 = add i64 %5777, -4
  %5779 = add i64 %5776, 14
  store i64 %5779, i64* %3, align 8
  %5780 = inttoptr i64 %5778 to i32*
  %5781 = load i32, i32* %5780, align 4
  %5782 = sext i32 %5781 to i64
  %5783 = mul nsw i64 %5782, 76
  store i64 %5783, i64* %RCX.i2228, align 8
  %5784 = lshr i64 %5783, 63
  %5785 = add i64 %5783, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %5785, i64* %RAX.i2269, align 8
  %5786 = icmp ult i64 %5785, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5787 = icmp ult i64 %5785, %5783
  %5788 = or i1 %5786, %5787
  %5789 = zext i1 %5788 to i8
  store i8 %5789, i8* %14, align 1
  %5790 = trunc i64 %5785 to i32
  %5791 = and i32 %5790, 252
  %5792 = tail call i32 @llvm.ctpop.i32(i32 %5791)
  %5793 = trunc i32 %5792 to i8
  %5794 = and i8 %5793, 1
  %5795 = xor i8 %5794, 1
  store i8 %5795, i8* %21, align 1
  %5796 = xor i64 %5783, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5797 = xor i64 %5796, %5785
  %5798 = lshr i64 %5797, 4
  %5799 = trunc i64 %5798 to i8
  %5800 = and i8 %5799, 1
  store i8 %5800, i8* %26, align 1
  %5801 = icmp eq i64 %5785, 0
  %5802 = zext i1 %5801 to i8
  store i8 %5802, i8* %29, align 1
  %5803 = lshr i64 %5785, 63
  %5804 = trunc i64 %5803 to i8
  store i8 %5804, i8* %32, align 1
  %5805 = xor i64 %5803, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %5806 = xor i64 %5803, %5784
  %5807 = add nuw nsw i64 %5805, %5806
  %5808 = icmp eq i64 %5807, 2
  %5809 = zext i1 %5808 to i8
  store i8 %5809, i8* %38, align 1
  %5810 = add i64 %5783, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %5811 = add i64 %5776, 25
  store i64 %5811, i64* %3, align 8
  %5812 = inttoptr i64 %5810 to i32*
  %5813 = load i32, i32* %5812, align 4
  %5814 = add i32 %5813, -2
  %5815 = icmp ult i32 %5813, 2
  %5816 = zext i1 %5815 to i8
  store i8 %5816, i8* %14, align 1
  %5817 = and i32 %5814, 255
  %5818 = tail call i32 @llvm.ctpop.i32(i32 %5817)
  %5819 = trunc i32 %5818 to i8
  %5820 = and i8 %5819, 1
  %5821 = xor i8 %5820, 1
  store i8 %5821, i8* %21, align 1
  %5822 = xor i32 %5814, %5813
  %5823 = lshr i32 %5822, 4
  %5824 = trunc i32 %5823 to i8
  %5825 = and i8 %5824, 1
  store i8 %5825, i8* %26, align 1
  %5826 = icmp eq i32 %5814, 0
  %5827 = zext i1 %5826 to i8
  store i8 %5827, i8* %29, align 1
  %5828 = lshr i32 %5814, 31
  %5829 = trunc i32 %5828 to i8
  store i8 %5829, i8* %32, align 1
  %5830 = lshr i32 %5813, 31
  %5831 = xor i32 %5828, %5830
  %5832 = add nuw nsw i32 %5831, %5830
  %5833 = icmp eq i32 %5832, 2
  %5834 = zext i1 %5833 to i8
  store i8 %5834, i8* %38, align 1
  %.v256 = select i1 %5826, i64 135, i64 31
  %5835 = add i64 %5776, %.v256
  store i64 %5835, i64* %3, align 8
  br i1 %5826, label %block_.L_46fd73, label %block_46fd0b

block_46fd0b:                                     ; preds = %block_.L_46fcec
  %5836 = load i64, i64* %RBP.i, align 8
  %5837 = add i64 %5836, -36
  %5838 = add i64 %5835, 4
  store i64 %5838, i64* %3, align 8
  %5839 = inttoptr i64 %5837 to i32*
  %5840 = load i32, i32* %5839, align 4
  %5841 = add i32 %5840, -1
  %5842 = icmp eq i32 %5840, 0
  %5843 = zext i1 %5842 to i8
  store i8 %5843, i8* %14, align 1
  %5844 = and i32 %5841, 255
  %5845 = tail call i32 @llvm.ctpop.i32(i32 %5844)
  %5846 = trunc i32 %5845 to i8
  %5847 = and i8 %5846, 1
  %5848 = xor i8 %5847, 1
  store i8 %5848, i8* %21, align 1
  %5849 = xor i32 %5841, %5840
  %5850 = lshr i32 %5849, 4
  %5851 = trunc i32 %5850 to i8
  %5852 = and i8 %5851, 1
  store i8 %5852, i8* %26, align 1
  %5853 = icmp eq i32 %5841, 0
  %5854 = zext i1 %5853 to i8
  store i8 %5854, i8* %29, align 1
  %5855 = lshr i32 %5841, 31
  %5856 = trunc i32 %5855 to i8
  store i8 %5856, i8* %32, align 1
  %5857 = lshr i32 %5840, 31
  %5858 = xor i32 %5855, %5857
  %5859 = add nuw nsw i32 %5858, %5857
  %5860 = icmp eq i32 %5859, 2
  %5861 = zext i1 %5860 to i8
  store i8 %5861, i8* %38, align 1
  %.v257 = select i1 %5853, i64 10, i64 33
  %5862 = add i64 %5835, %.v257
  store i64 %5862, i64* %3, align 8
  br i1 %5853, label %block_46fd15, label %block_.L_46fd2c

block_46fd15:                                     ; preds = %block_46fd0b
  store i64 1, i64* %RSI.i2267, align 8
  store i64 7, i64* %RDX.i1551, align 8
  %5863 = add i64 %5836, -4
  %5864 = add i64 %5862, 13
  store i64 %5864, i64* %3, align 8
  %5865 = inttoptr i64 %5863 to i32*
  %5866 = load i32, i32* %5865, align 4
  %5867 = zext i32 %5866 to i64
  store i64 %5867, i64* %RDI.i1695, align 8
  %5868 = add i64 %5862, 1403
  %5869 = add i64 %5862, 18
  %5870 = load i64, i64* %6, align 8
  %5871 = add i64 %5870, -8
  %5872 = inttoptr i64 %5871 to i64*
  store i64 %5869, i64* %5872, align 8
  store i64 %5871, i64* %6, align 8
  store i64 %5868, i64* %3, align 8
  %call2_46fd22 = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %5868, %struct.Memory* %MEMORY.70)
  %5873 = load i64, i64* %3, align 8
  %5874 = add i64 %5873, 71
  br label %block_.L_46fd6e

block_.L_46fd2c:                                  ; preds = %block_46fd0b
  %5875 = add i64 %5862, 4
  store i64 %5875, i64* %3, align 8
  %5876 = load i32, i32* %5839, align 4
  %5877 = add i32 %5876, -2
  %5878 = icmp ult i32 %5876, 2
  %5879 = zext i1 %5878 to i8
  store i8 %5879, i8* %14, align 1
  %5880 = and i32 %5877, 255
  %5881 = tail call i32 @llvm.ctpop.i32(i32 %5880)
  %5882 = trunc i32 %5881 to i8
  %5883 = and i8 %5882, 1
  %5884 = xor i8 %5883, 1
  store i8 %5884, i8* %21, align 1
  %5885 = xor i32 %5877, %5876
  %5886 = lshr i32 %5885, 4
  %5887 = trunc i32 %5886 to i8
  %5888 = and i8 %5887, 1
  store i8 %5888, i8* %26, align 1
  %5889 = icmp eq i32 %5877, 0
  %5890 = zext i1 %5889 to i8
  store i8 %5890, i8* %29, align 1
  %5891 = lshr i32 %5877, 31
  %5892 = trunc i32 %5891 to i8
  store i8 %5892, i8* %32, align 1
  %5893 = lshr i32 %5876, 31
  %5894 = xor i32 %5891, %5893
  %5895 = add nuw nsw i32 %5894, %5893
  %5896 = icmp eq i32 %5895, 2
  %5897 = zext i1 %5896 to i8
  store i8 %5897, i8* %38, align 1
  %.v258 = select i1 %5889, i64 10, i64 32
  %5898 = add i64 %5862, %.v258
  store i64 %5898, i64* %3, align 8
  br i1 %5889, label %block_46fd36, label %block_.L_46fd4c

block_46fd36:                                     ; preds = %block_.L_46fd2c
  store i64 2, i64* %RAX.i2269, align 8
  %5899 = add i64 %5836, -4
  %5900 = add i64 %5898, 8
  store i64 %5900, i64* %3, align 8
  %5901 = inttoptr i64 %5899 to i32*
  %5902 = load i32, i32* %5901, align 4
  %5903 = zext i32 %5902 to i64
  store i64 %5903, i64* %RDI.i1695, align 8
  store i64 2, i64* %RSI.i2267, align 8
  store i64 2, i64* %RDX.i1551, align 8
  %5904 = add i64 %5898, 1370
  %5905 = add i64 %5898, 17
  %5906 = load i64, i64* %6, align 8
  %5907 = add i64 %5906, -8
  %5908 = inttoptr i64 %5907 to i64*
  store i64 %5905, i64* %5908, align 8
  store i64 %5907, i64* %6, align 8
  store i64 %5904, i64* %3, align 8
  %call2_46fd42 = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %5904, %struct.Memory* %MEMORY.70)
  %5909 = load i64, i64* %3, align 8
  %5910 = add i64 %5909, 34
  br label %block_.L_46fd69

block_.L_46fd4c:                                  ; preds = %block_.L_46fd2c
  %5911 = add i64 %5898, 4
  store i64 %5911, i64* %3, align 8
  %5912 = load i32, i32* %5839, align 4
  store i8 0, i8* %14, align 1
  %5913 = and i32 %5912, 255
  %5914 = tail call i32 @llvm.ctpop.i32(i32 %5913)
  %5915 = trunc i32 %5914 to i8
  %5916 = and i8 %5915, 1
  %5917 = xor i8 %5916, 1
  store i8 %5917, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5918 = icmp eq i32 %5912, 0
  %5919 = zext i1 %5918 to i8
  store i8 %5919, i8* %29, align 1
  %5920 = lshr i32 %5912, 31
  %5921 = trunc i32 %5920 to i8
  store i8 %5921, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v259 = select i1 %5918, i64 10, i64 24
  %5922 = add i64 %5898, %.v259
  store i64 %5922, i64* %3, align 8
  br i1 %5918, label %block_46fd56, label %block_.L_46fd64

block_46fd56:                                     ; preds = %block_.L_46fd4c
  store i64 0, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %5923 = add i64 %5836, -4
  %5924 = add i64 %5922, 5
  store i64 %5924, i64* %3, align 8
  %5925 = inttoptr i64 %5923 to i32*
  %5926 = load i32, i32* %5925, align 4
  %5927 = zext i32 %5926 to i64
  store i64 %5927, i64* %RDI.i1695, align 8
  store i64 0, i64* %RSI.i2267, align 8
  store i64 0, i64* %RDX.i1551, align 8
  %5928 = add i64 %5922, 1338
  %5929 = add i64 %5922, 14
  %5930 = load i64, i64* %6, align 8
  %5931 = add i64 %5930, -8
  %5932 = inttoptr i64 %5931 to i64*
  store i64 %5929, i64* %5932, align 8
  store i64 %5931, i64* %6, align 8
  store i64 %5928, i64* %3, align 8
  %call2_46fd5f = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %5928, %struct.Memory* %MEMORY.70)
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_46fd64

block_.L_46fd64:                                  ; preds = %block_.L_46fd4c, %block_46fd56
  %5933 = phi i64 [ %5922, %block_.L_46fd4c ], [ %.pre202, %block_46fd56 ]
  %MEMORY.71 = phi %struct.Memory* [ %MEMORY.70, %block_.L_46fd4c ], [ %call2_46fd5f, %block_46fd56 ]
  %5934 = add i64 %5933, 5
  store i64 %5934, i64* %3, align 8
  br label %block_.L_46fd69

block_.L_46fd69:                                  ; preds = %block_.L_46fd64, %block_46fd36
  %storemerge138 = phi i64 [ %5910, %block_46fd36 ], [ %5934, %block_.L_46fd64 ]
  %MEMORY.72 = phi %struct.Memory* [ %call2_46fd42, %block_46fd36 ], [ %MEMORY.71, %block_.L_46fd64 ]
  %5935 = add i64 %storemerge138, 5
  store i64 %5935, i64* %3, align 8
  br label %block_.L_46fd6e

block_.L_46fd6e:                                  ; preds = %block_.L_46fd69, %block_46fd15
  %storemerge131 = phi i64 [ %5874, %block_46fd15 ], [ %5935, %block_.L_46fd69 ]
  %MEMORY.73 = phi %struct.Memory* [ %call2_46fd22, %block_46fd15 ], [ %MEMORY.72, %block_.L_46fd69 ]
  %5936 = add i64 %storemerge131, 5
  store i64 %5936, i64* %3, align 8
  br label %block_.L_46fd73

block_.L_46fd73:                                  ; preds = %block_.L_46fd6e, %block_.L_46fcec
  %5937 = phi i64 [ %5835, %block_.L_46fcec ], [ %5936, %block_.L_46fd6e ]
  %MEMORY.74 = phi %struct.Memory* [ %MEMORY.70, %block_.L_46fcec ], [ %MEMORY.73, %block_.L_46fd6e ]
  %5938 = load i64, i64* %RBP.i, align 8
  %5939 = add i64 %5938, -40
  %5940 = add i64 %5937, 4
  store i64 %5940, i64* %3, align 8
  %5941 = inttoptr i64 %5939 to i32*
  %5942 = load i32, i32* %5941, align 4
  %5943 = add i32 %5942, -1
  %5944 = icmp eq i32 %5942, 0
  %5945 = zext i1 %5944 to i8
  store i8 %5945, i8* %14, align 1
  %5946 = and i32 %5943, 255
  %5947 = tail call i32 @llvm.ctpop.i32(i32 %5946)
  %5948 = trunc i32 %5947 to i8
  %5949 = and i8 %5948, 1
  %5950 = xor i8 %5949, 1
  store i8 %5950, i8* %21, align 1
  %5951 = xor i32 %5943, %5942
  %5952 = lshr i32 %5951, 4
  %5953 = trunc i32 %5952 to i8
  %5954 = and i8 %5953, 1
  store i8 %5954, i8* %26, align 1
  %5955 = icmp eq i32 %5943, 0
  %5956 = zext i1 %5955 to i8
  store i8 %5956, i8* %29, align 1
  %5957 = lshr i32 %5943, 31
  %5958 = trunc i32 %5957 to i8
  store i8 %5958, i8* %32, align 1
  %5959 = lshr i32 %5942, 31
  %5960 = xor i32 %5957, %5959
  %5961 = add nuw nsw i32 %5960, %5959
  %5962 = icmp eq i32 %5961, 2
  %5963 = zext i1 %5962 to i8
  store i8 %5963, i8* %38, align 1
  %.v260 = select i1 %5955, i64 10, i64 33
  %5964 = add i64 %5937, %.v260
  store i64 %5964, i64* %3, align 8
  br i1 %5955, label %block_46fd7d, label %block_.L_46fd94

block_46fd7d:                                     ; preds = %block_.L_46fd73
  store i64 1, i64* %RSI.i2267, align 8
  store i64 7, i64* %RDX.i1551, align 8
  %5965 = add i64 %5938, -8
  %5966 = add i64 %5964, 13
  store i64 %5966, i64* %3, align 8
  %5967 = inttoptr i64 %5965 to i32*
  %5968 = load i32, i32* %5967, align 4
  %5969 = zext i32 %5968 to i64
  store i64 %5969, i64* %RDI.i1695, align 8
  %5970 = add i64 %5964, 1299
  %5971 = add i64 %5964, 18
  %5972 = load i64, i64* %6, align 8
  %5973 = add i64 %5972, -8
  %5974 = inttoptr i64 %5973 to i64*
  store i64 %5971, i64* %5974, align 8
  store i64 %5973, i64* %6, align 8
  store i64 %5970, i64* %3, align 8
  %call2_46fd8a = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %5970, %struct.Memory* %MEMORY.74)
  %5975 = load i64, i64* %3, align 8
  %5976 = add i64 %5975, 71
  br label %block_.L_46fdd6

block_.L_46fd94:                                  ; preds = %block_.L_46fd73
  %5977 = add i64 %5964, 4
  store i64 %5977, i64* %3, align 8
  %5978 = load i32, i32* %5941, align 4
  %5979 = add i32 %5978, -2
  %5980 = icmp ult i32 %5978, 2
  %5981 = zext i1 %5980 to i8
  store i8 %5981, i8* %14, align 1
  %5982 = and i32 %5979, 255
  %5983 = tail call i32 @llvm.ctpop.i32(i32 %5982)
  %5984 = trunc i32 %5983 to i8
  %5985 = and i8 %5984, 1
  %5986 = xor i8 %5985, 1
  store i8 %5986, i8* %21, align 1
  %5987 = xor i32 %5979, %5978
  %5988 = lshr i32 %5987, 4
  %5989 = trunc i32 %5988 to i8
  %5990 = and i8 %5989, 1
  store i8 %5990, i8* %26, align 1
  %5991 = icmp eq i32 %5979, 0
  %5992 = zext i1 %5991 to i8
  store i8 %5992, i8* %29, align 1
  %5993 = lshr i32 %5979, 31
  %5994 = trunc i32 %5993 to i8
  store i8 %5994, i8* %32, align 1
  %5995 = lshr i32 %5978, 31
  %5996 = xor i32 %5993, %5995
  %5997 = add nuw nsw i32 %5996, %5995
  %5998 = icmp eq i32 %5997, 2
  %5999 = zext i1 %5998 to i8
  store i8 %5999, i8* %38, align 1
  %.v261 = select i1 %5991, i64 10, i64 32
  %6000 = add i64 %5964, %.v261
  store i64 %6000, i64* %3, align 8
  br i1 %5991, label %block_46fd9e, label %block_.L_46fdb4

block_46fd9e:                                     ; preds = %block_.L_46fd94
  store i64 2, i64* %RAX.i2269, align 8
  %6001 = add i64 %5938, -8
  %6002 = add i64 %6000, 8
  store i64 %6002, i64* %3, align 8
  %6003 = inttoptr i64 %6001 to i32*
  %6004 = load i32, i32* %6003, align 4
  %6005 = zext i32 %6004 to i64
  store i64 %6005, i64* %RDI.i1695, align 8
  store i64 2, i64* %RSI.i2267, align 8
  store i64 2, i64* %RDX.i1551, align 8
  %6006 = add i64 %6000, 1266
  %6007 = add i64 %6000, 17
  %6008 = load i64, i64* %6, align 8
  %6009 = add i64 %6008, -8
  %6010 = inttoptr i64 %6009 to i64*
  store i64 %6007, i64* %6010, align 8
  store i64 %6009, i64* %6, align 8
  store i64 %6006, i64* %3, align 8
  %call2_46fdaa = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %6006, %struct.Memory* %MEMORY.74)
  %6011 = load i64, i64* %3, align 8
  %6012 = add i64 %6011, 34
  br label %block_.L_46fdd1

block_.L_46fdb4:                                  ; preds = %block_.L_46fd94
  %6013 = add i64 %6000, 4
  store i64 %6013, i64* %3, align 8
  %6014 = load i32, i32* %5941, align 4
  store i8 0, i8* %14, align 1
  %6015 = and i32 %6014, 255
  %6016 = tail call i32 @llvm.ctpop.i32(i32 %6015)
  %6017 = trunc i32 %6016 to i8
  %6018 = and i8 %6017, 1
  %6019 = xor i8 %6018, 1
  store i8 %6019, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6020 = icmp eq i32 %6014, 0
  %6021 = zext i1 %6020 to i8
  store i8 %6021, i8* %29, align 1
  %6022 = lshr i32 %6014, 31
  %6023 = trunc i32 %6022 to i8
  store i8 %6023, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v262 = select i1 %6020, i64 10, i64 24
  %6024 = add i64 %6000, %.v262
  store i64 %6024, i64* %3, align 8
  br i1 %6020, label %block_46fdbe, label %block_.L_46fdcc

block_46fdbe:                                     ; preds = %block_.L_46fdb4
  store i64 0, i64* %RAX.i2269, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %6025 = add i64 %5938, -8
  %6026 = add i64 %6024, 5
  store i64 %6026, i64* %3, align 8
  %6027 = inttoptr i64 %6025 to i32*
  %6028 = load i32, i32* %6027, align 4
  %6029 = zext i32 %6028 to i64
  store i64 %6029, i64* %RDI.i1695, align 8
  store i64 0, i64* %RSI.i2267, align 8
  store i64 0, i64* %RDX.i1551, align 8
  %6030 = add i64 %6024, 1234
  %6031 = add i64 %6024, 14
  %6032 = load i64, i64* %6, align 8
  %6033 = add i64 %6032, -8
  %6034 = inttoptr i64 %6033 to i64*
  store i64 %6031, i64* %6034, align 8
  store i64 %6033, i64* %6, align 8
  store i64 %6030, i64* %3, align 8
  %call2_46fdc7 = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %6030, %struct.Memory* %MEMORY.74)
  %.pre203 = load i64, i64* %3, align 8
  br label %block_.L_46fdcc

block_.L_46fdcc:                                  ; preds = %block_.L_46fdb4, %block_46fdbe
  %6035 = phi i64 [ %6024, %block_.L_46fdb4 ], [ %.pre203, %block_46fdbe ]
  %MEMORY.75 = phi %struct.Memory* [ %MEMORY.74, %block_.L_46fdb4 ], [ %call2_46fdc7, %block_46fdbe ]
  %6036 = add i64 %6035, 5
  store i64 %6036, i64* %3, align 8
  br label %block_.L_46fdd1

block_.L_46fdd1:                                  ; preds = %block_.L_46fdcc, %block_46fd9e
  %storemerge137 = phi i64 [ %6012, %block_46fd9e ], [ %6036, %block_.L_46fdcc ]
  %MEMORY.76 = phi %struct.Memory* [ %call2_46fdaa, %block_46fd9e ], [ %MEMORY.75, %block_.L_46fdcc ]
  %6037 = add i64 %storemerge137, 5
  store i64 %6037, i64* %3, align 8
  br label %block_.L_46fdd6

block_.L_46fdd6:                                  ; preds = %block_.L_46fdd1, %block_46fd7d
  %storemerge132 = phi i64 [ %5976, %block_46fd7d ], [ %6037, %block_.L_46fdd1 ]
  %MEMORY.77 = phi %struct.Memory* [ %call2_46fd8a, %block_46fd7d ], [ %MEMORY.76, %block_.L_46fdd1 ]
  %6038 = load i64, i64* %RBP.i, align 8
  %6039 = add i64 %6038, -36
  %6040 = add i64 %storemerge132, 4
  store i64 %6040, i64* %3, align 8
  %6041 = inttoptr i64 %6039 to i32*
  %6042 = load i32, i32* %6041, align 4
  %6043 = add i32 %6042, -2
  %6044 = icmp ult i32 %6042, 2
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %14, align 1
  %6046 = and i32 %6043, 255
  %6047 = tail call i32 @llvm.ctpop.i32(i32 %6046)
  %6048 = trunc i32 %6047 to i8
  %6049 = and i8 %6048, 1
  %6050 = xor i8 %6049, 1
  store i8 %6050, i8* %21, align 1
  %6051 = xor i32 %6043, %6042
  %6052 = lshr i32 %6051, 4
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  store i8 %6054, i8* %26, align 1
  %6055 = icmp eq i32 %6043, 0
  %6056 = zext i1 %6055 to i8
  store i8 %6056, i8* %29, align 1
  %6057 = lshr i32 %6043, 31
  %6058 = trunc i32 %6057 to i8
  store i8 %6058, i8* %32, align 1
  %6059 = lshr i32 %6042, 31
  %6060 = xor i32 %6057, %6059
  %6061 = add nuw nsw i32 %6060, %6059
  %6062 = icmp eq i32 %6061, 2
  %6063 = zext i1 %6062 to i8
  store i8 %6063, i8* %38, align 1
  %.v263 = select i1 %6055, i64 20, i64 10
  %6064 = add i64 %storemerge132, %.v263
  store i64 %6064, i64* %3, align 8
  br i1 %6055, label %block_.L_46fdea, label %block_46fde0

block_46fde0:                                     ; preds = %block_.L_46fdd6
  %6065 = add i64 %6038, -40
  %6066 = add i64 %6064, 4
  store i64 %6066, i64* %3, align 8
  %6067 = inttoptr i64 %6065 to i32*
  %6068 = load i32, i32* %6067, align 4
  %6069 = add i32 %6068, -2
  %6070 = icmp ult i32 %6068, 2
  %6071 = zext i1 %6070 to i8
  store i8 %6071, i8* %14, align 1
  %6072 = and i32 %6069, 255
  %6073 = tail call i32 @llvm.ctpop.i32(i32 %6072)
  %6074 = trunc i32 %6073 to i8
  %6075 = and i8 %6074, 1
  %6076 = xor i8 %6075, 1
  store i8 %6076, i8* %21, align 1
  %6077 = xor i32 %6069, %6068
  %6078 = lshr i32 %6077, 4
  %6079 = trunc i32 %6078 to i8
  %6080 = and i8 %6079, 1
  store i8 %6080, i8* %26, align 1
  %6081 = icmp eq i32 %6069, 0
  %6082 = zext i1 %6081 to i8
  store i8 %6082, i8* %29, align 1
  %6083 = lshr i32 %6069, 31
  %6084 = trunc i32 %6083 to i8
  store i8 %6084, i8* %32, align 1
  %6085 = lshr i32 %6068, 31
  %6086 = xor i32 %6083, %6085
  %6087 = add nuw nsw i32 %6086, %6085
  %6088 = icmp eq i32 %6087, 2
  %6089 = zext i1 %6088 to i8
  store i8 %6089, i8* %38, align 1
  %.v264 = select i1 %6081, i64 10, i64 836
  %6090 = add i64 %6064, %.v264
  store i64 %6090, i64* %3, align 8
  br i1 %6081, label %block_.L_46fdea, label %block_.L_470124

block_.L_46fdea:                                  ; preds = %block_46fde0, %block_.L_46fdd6
  %6091 = phi i64 [ %6090, %block_46fde0 ], [ %6064, %block_.L_46fdd6 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6092 = add i64 %6038, -732
  %6093 = add i64 %6091, 20
  store i64 %6093, i64* %3, align 8
  %6094 = inttoptr i64 %6092 to i32*
  store i32 0, i32* %6094, align 4
  %6095 = load i64, i64* %RBP.i, align 8
  %6096 = add i64 %6095, -4
  %6097 = load i64, i64* %3, align 8
  %6098 = add i64 %6097, 4
  store i64 %6098, i64* %3, align 8
  %6099 = inttoptr i64 %6096 to i32*
  %6100 = load i32, i32* %6099, align 4
  %6101 = sext i32 %6100 to i64
  %6102 = mul nsw i64 %6101, 76
  store i64 %6102, i64* %RCX.i2228, align 8
  %6103 = lshr i64 %6102, 63
  %6104 = load i64, i64* %RAX.i2269, align 8
  %6105 = add i64 %6102, %6104
  store i64 %6105, i64* %RAX.i2269, align 8
  %6106 = icmp ult i64 %6105, %6104
  %6107 = icmp ult i64 %6105, %6102
  %6108 = or i1 %6106, %6107
  %6109 = zext i1 %6108 to i8
  store i8 %6109, i8* %14, align 1
  %6110 = trunc i64 %6105 to i32
  %6111 = and i32 %6110, 255
  %6112 = tail call i32 @llvm.ctpop.i32(i32 %6111)
  %6113 = trunc i32 %6112 to i8
  %6114 = and i8 %6113, 1
  %6115 = xor i8 %6114, 1
  store i8 %6115, i8* %21, align 1
  %6116 = xor i64 %6102, %6104
  %6117 = xor i64 %6116, %6105
  %6118 = lshr i64 %6117, 4
  %6119 = trunc i64 %6118 to i8
  %6120 = and i8 %6119, 1
  store i8 %6120, i8* %26, align 1
  %6121 = icmp eq i64 %6105, 0
  %6122 = zext i1 %6121 to i8
  store i8 %6122, i8* %29, align 1
  %6123 = lshr i64 %6105, 63
  %6124 = trunc i64 %6123 to i8
  store i8 %6124, i8* %32, align 1
  %6125 = lshr i64 %6104, 63
  %6126 = xor i64 %6123, %6125
  %6127 = xor i64 %6123, %6103
  %6128 = add nuw nsw i64 %6126, %6127
  %6129 = icmp eq i64 %6128, 2
  %6130 = zext i1 %6129 to i8
  store i8 %6130, i8* %38, align 1
  %6131 = add i64 %6105, 28
  %6132 = add i64 %6097, 15
  store i64 %6132, i64* %3, align 8
  %6133 = inttoptr i64 %6131 to i32*
  %6134 = load i32, i32* %6133, align 4
  %6135 = add i32 %6134, -2
  %6136 = icmp ult i32 %6134, 2
  %6137 = zext i1 %6136 to i8
  store i8 %6137, i8* %14, align 1
  %6138 = and i32 %6135, 255
  %6139 = tail call i32 @llvm.ctpop.i32(i32 %6138)
  %6140 = trunc i32 %6139 to i8
  %6141 = and i8 %6140, 1
  %6142 = xor i8 %6141, 1
  store i8 %6142, i8* %21, align 1
  %6143 = xor i32 %6135, %6134
  %6144 = lshr i32 %6143, 4
  %6145 = trunc i32 %6144 to i8
  %6146 = and i8 %6145, 1
  store i8 %6146, i8* %26, align 1
  %6147 = icmp eq i32 %6135, 0
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %29, align 1
  %6149 = lshr i32 %6135, 31
  %6150 = trunc i32 %6149 to i8
  store i8 %6150, i8* %32, align 1
  %6151 = lshr i32 %6134, 31
  %6152 = xor i32 %6149, %6151
  %6153 = add nuw nsw i32 %6152, %6151
  %6154 = icmp eq i32 %6153, 2
  %6155 = zext i1 %6154 to i8
  store i8 %6155, i8* %38, align 1
  %.v265 = select i1 %6147, i64 21, i64 103
  %6156 = add i64 %6097, %.v265
  store i64 %6156, i64* %3, align 8
  br i1 %6147, label %block_46fe13, label %block_.L_46fdea.block_.L_46fe65_crit_edge

block_.L_46fdea.block_.L_46fe65_crit_edge:        ; preds = %block_.L_46fdea
  %.pre204 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46fe65

block_46fe13:                                     ; preds = %block_.L_46fdea
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6157 = load i64, i64* %RBP.i, align 8
  %6158 = add i64 %6157, -4
  %6159 = add i64 %6156, 14
  store i64 %6159, i64* %3, align 8
  %6160 = inttoptr i64 %6158 to i32*
  %6161 = load i32, i32* %6160, align 4
  %6162 = sext i32 %6161 to i64
  %6163 = mul nsw i64 %6162, 76
  store i64 %6163, i64* %RCX.i2228, align 8
  %6164 = lshr i64 %6163, 63
  %6165 = add i64 %6163, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6165, i64* %RAX.i2269, align 8
  %6166 = icmp ult i64 %6165, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6167 = icmp ult i64 %6165, %6163
  %6168 = or i1 %6166, %6167
  %6169 = zext i1 %6168 to i8
  store i8 %6169, i8* %14, align 1
  %6170 = trunc i64 %6165 to i32
  %6171 = and i32 %6170, 252
  %6172 = tail call i32 @llvm.ctpop.i32(i32 %6171)
  %6173 = trunc i32 %6172 to i8
  %6174 = and i8 %6173, 1
  %6175 = xor i8 %6174, 1
  store i8 %6175, i8* %21, align 1
  %6176 = xor i64 %6163, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6177 = xor i64 %6176, %6165
  %6178 = lshr i64 %6177, 4
  %6179 = trunc i64 %6178 to i8
  %6180 = and i8 %6179, 1
  store i8 %6180, i8* %26, align 1
  %6181 = icmp eq i64 %6165, 0
  %6182 = zext i1 %6181 to i8
  store i8 %6182, i8* %29, align 1
  %6183 = lshr i64 %6165, 63
  %6184 = trunc i64 %6183 to i8
  store i8 %6184, i8* %32, align 1
  %6185 = xor i64 %6183, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6186 = xor i64 %6183, %6164
  %6187 = add nuw nsw i64 %6185, %6186
  %6188 = icmp eq i64 %6187, 2
  %6189 = zext i1 %6188 to i8
  store i8 %6189, i8* %38, align 1
  %6190 = add i64 %6163, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %6191 = add i64 %6156, 25
  store i64 %6191, i64* %3, align 8
  %6192 = inttoptr i64 %6190 to i32*
  %6193 = load i32, i32* %6192, align 4
  store i8 0, i8* %14, align 1
  %6194 = and i32 %6193, 255
  %6195 = tail call i32 @llvm.ctpop.i32(i32 %6194)
  %6196 = trunc i32 %6195 to i8
  %6197 = and i8 %6196, 1
  %6198 = xor i8 %6197, 1
  store i8 %6198, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6199 = icmp eq i32 %6193, 0
  %6200 = zext i1 %6199 to i8
  store i8 %6200, i8* %29, align 1
  %6201 = lshr i32 %6193, 31
  %6202 = trunc i32 %6201 to i8
  store i8 %6202, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v281 = select i1 %6199, i64 82, i64 31
  %6203 = add i64 %6156, %.v281
  store i64 %6203, i64* %3, align 8
  br i1 %6199, label %block_.L_46fe65, label %block_46fe32

block_46fe32:                                     ; preds = %block_46fe13
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6204 = add i64 %6203, 14
  store i64 %6204, i64* %3, align 8
  %6205 = load i32, i32* %6160, align 4
  %6206 = sext i32 %6205 to i64
  %6207 = mul nsw i64 %6206, 76
  store i64 %6207, i64* %RCX.i2228, align 8
  %6208 = lshr i64 %6207, 63
  %6209 = add i64 %6207, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6209, i64* %RAX.i2269, align 8
  %6210 = icmp ult i64 %6209, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6211 = icmp ult i64 %6209, %6207
  %6212 = or i1 %6210, %6211
  %6213 = zext i1 %6212 to i8
  store i8 %6213, i8* %14, align 1
  %6214 = trunc i64 %6209 to i32
  %6215 = and i32 %6214, 252
  %6216 = tail call i32 @llvm.ctpop.i32(i32 %6215)
  %6217 = trunc i32 %6216 to i8
  %6218 = and i8 %6217, 1
  %6219 = xor i8 %6218, 1
  store i8 %6219, i8* %21, align 1
  %6220 = xor i64 %6207, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6221 = xor i64 %6220, %6209
  %6222 = lshr i64 %6221, 4
  %6223 = trunc i64 %6222 to i8
  %6224 = and i8 %6223, 1
  store i8 %6224, i8* %26, align 1
  %6225 = icmp eq i64 %6209, 0
  %6226 = zext i1 %6225 to i8
  store i8 %6226, i8* %29, align 1
  %6227 = lshr i64 %6209, 63
  %6228 = trunc i64 %6227 to i8
  store i8 %6228, i8* %32, align 1
  %6229 = xor i64 %6227, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6230 = xor i64 %6227, %6208
  %6231 = add nuw nsw i64 %6229, %6230
  %6232 = icmp eq i64 %6231, 2
  %6233 = zext i1 %6232 to i8
  store i8 %6233, i8* %38, align 1
  %6234 = add i64 %6207, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %6235 = add i64 %6203, 24
  store i64 %6235, i64* %3, align 8
  %6236 = inttoptr i64 %6234 to i32*
  %6237 = load i32, i32* %6236, align 4
  %6238 = zext i32 %6237 to i64
  store i64 %6238, i64* %RDI.i1695, align 8
  %6239 = add i64 %6203, 27
  store i64 %6239, i64* %3, align 8
  %6240 = load i32, i32* %6160, align 4
  %6241 = zext i32 %6240 to i64
  store i64 %6241, i64* %RSI.i2267, align 8
  %6242 = add i64 %6157, -8
  %6243 = add i64 %6203, 30
  store i64 %6243, i64* %3, align 8
  %6244 = inttoptr i64 %6242 to i32*
  %6245 = load i32, i32* %6244, align 4
  %6246 = zext i32 %6245 to i64
  store i64 %6246, i64* %RDX.i1551, align 8
  %6247 = add i64 %6157, -36
  %6248 = add i64 %6203, 33
  store i64 %6248, i64* %3, align 8
  %6249 = inttoptr i64 %6247 to i32*
  %6250 = load i32, i32* %6249, align 4
  %6251 = zext i32 %6250 to i64
  store i64 %6251, i64* %RCX.i2228, align 8
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %6253 = add i64 %6157, -40
  %6254 = add i64 %6203, 37
  store i64 %6254, i64* %3, align 8
  %6255 = inttoptr i64 %6253 to i32*
  %6256 = load i32, i32* %6255, align 4
  %6257 = zext i32 %6256 to i64
  store i64 %6257, i64* %6252, align 8
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6259 = load i64, i64* %RBP.i, align 8
  %6260 = add i64 %6259, -44
  %6261 = add i64 %6203, 41
  store i64 %6261, i64* %3, align 8
  %6262 = inttoptr i64 %6260 to i32*
  %6263 = load i32, i32* %6262, align 4
  %6264 = zext i32 %6263 to i64
  store i64 %6264, i64* %6258, align 8
  %6265 = add i64 %6203, 1742
  %6266 = add i64 %6203, 46
  %6267 = load i64, i64* %6, align 8
  %6268 = add i64 %6267, -8
  %6269 = inttoptr i64 %6268 to i64*
  store i64 %6266, i64* %6269, align 8
  store i64 %6268, i64* %6, align 8
  store i64 %6265, i64* %3, align 8
  %call2_46fe5b = tail call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* nonnull %0, i64 %6265, %struct.Memory* %MEMORY.77)
  %6270 = load i64, i64* %3, align 8
  %6271 = add i64 %6270, 703
  br label %block_.L_47011f

block_.L_46fe65:                                  ; preds = %block_.L_46fdea.block_.L_46fe65_crit_edge, %block_46fe13
  %6272 = phi i64 [ %6157, %block_46fe13 ], [ %.pre204, %block_.L_46fdea.block_.L_46fe65_crit_edge ]
  %6273 = phi i64 [ %6203, %block_46fe13 ], [ %6156, %block_.L_46fdea.block_.L_46fe65_crit_edge ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6274 = add i64 %6272, -8
  %6275 = add i64 %6273, 14
  store i64 %6275, i64* %3, align 8
  %6276 = inttoptr i64 %6274 to i32*
  %6277 = load i32, i32* %6276, align 4
  %6278 = sext i32 %6277 to i64
  %6279 = mul nsw i64 %6278, 76
  store i64 %6279, i64* %RCX.i2228, align 8
  %6280 = lshr i64 %6279, 63
  %6281 = add i64 %6279, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6281, i64* %RAX.i2269, align 8
  %6282 = icmp ult i64 %6281, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6283 = icmp ult i64 %6281, %6279
  %6284 = or i1 %6282, %6283
  %6285 = zext i1 %6284 to i8
  store i8 %6285, i8* %14, align 1
  %6286 = trunc i64 %6281 to i32
  %6287 = and i32 %6286, 252
  %6288 = tail call i32 @llvm.ctpop.i32(i32 %6287)
  %6289 = trunc i32 %6288 to i8
  %6290 = and i8 %6289, 1
  %6291 = xor i8 %6290, 1
  store i8 %6291, i8* %21, align 1
  %6292 = xor i64 %6279, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6293 = xor i64 %6292, %6281
  %6294 = lshr i64 %6293, 4
  %6295 = trunc i64 %6294 to i8
  %6296 = and i8 %6295, 1
  store i8 %6296, i8* %26, align 1
  %6297 = icmp eq i64 %6281, 0
  %6298 = zext i1 %6297 to i8
  store i8 %6298, i8* %29, align 1
  %6299 = lshr i64 %6281, 63
  %6300 = trunc i64 %6299 to i8
  store i8 %6300, i8* %32, align 1
  %6301 = xor i64 %6299, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6302 = xor i64 %6299, %6280
  %6303 = add nuw nsw i64 %6301, %6302
  %6304 = icmp eq i64 %6303, 2
  %6305 = zext i1 %6304 to i8
  store i8 %6305, i8* %38, align 1
  %6306 = add i64 %6279, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %6307 = add i64 %6273, 25
  store i64 %6307, i64* %3, align 8
  %6308 = inttoptr i64 %6306 to i32*
  %6309 = load i32, i32* %6308, align 4
  %6310 = add i32 %6309, -2
  %6311 = icmp ult i32 %6309, 2
  %6312 = zext i1 %6311 to i8
  store i8 %6312, i8* %14, align 1
  %6313 = and i32 %6310, 255
  %6314 = tail call i32 @llvm.ctpop.i32(i32 %6313)
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  %6317 = xor i8 %6316, 1
  store i8 %6317, i8* %21, align 1
  %6318 = xor i32 %6310, %6309
  %6319 = lshr i32 %6318, 4
  %6320 = trunc i32 %6319 to i8
  %6321 = and i8 %6320, 1
  store i8 %6321, i8* %26, align 1
  %6322 = icmp eq i32 %6310, 0
  %6323 = zext i1 %6322 to i8
  store i8 %6323, i8* %29, align 1
  %6324 = lshr i32 %6310, 31
  %6325 = trunc i32 %6324 to i8
  store i8 %6325, i8* %32, align 1
  %6326 = lshr i32 %6309, 31
  %6327 = xor i32 %6324, %6326
  %6328 = add nuw nsw i32 %6327, %6326
  %6329 = icmp eq i32 %6328, 2
  %6330 = zext i1 %6329 to i8
  store i8 %6330, i8* %38, align 1
  %.v266 = select i1 %6322, i64 31, i64 113
  %6331 = add i64 %6273, %.v266
  store i64 %6331, i64* %3, align 8
  br i1 %6322, label %block_46fe84, label %block_.L_46fe65.block_.L_46fed6_crit_edge

block_.L_46fe65.block_.L_46fed6_crit_edge:        ; preds = %block_.L_46fe65
  %.pre205 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46fed6

block_46fe84:                                     ; preds = %block_.L_46fe65
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6332 = load i64, i64* %RBP.i, align 8
  %6333 = add i64 %6332, -8
  %6334 = add i64 %6331, 14
  store i64 %6334, i64* %3, align 8
  %6335 = inttoptr i64 %6333 to i32*
  %6336 = load i32, i32* %6335, align 4
  %6337 = sext i32 %6336 to i64
  %6338 = mul nsw i64 %6337, 76
  store i64 %6338, i64* %RCX.i2228, align 8
  %6339 = lshr i64 %6338, 63
  %6340 = add i64 %6338, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6340, i64* %RAX.i2269, align 8
  %6341 = icmp ult i64 %6340, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6342 = icmp ult i64 %6340, %6338
  %6343 = or i1 %6341, %6342
  %6344 = zext i1 %6343 to i8
  store i8 %6344, i8* %14, align 1
  %6345 = trunc i64 %6340 to i32
  %6346 = and i32 %6345, 252
  %6347 = tail call i32 @llvm.ctpop.i32(i32 %6346)
  %6348 = trunc i32 %6347 to i8
  %6349 = and i8 %6348, 1
  %6350 = xor i8 %6349, 1
  store i8 %6350, i8* %21, align 1
  %6351 = xor i64 %6338, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6352 = xor i64 %6351, %6340
  %6353 = lshr i64 %6352, 4
  %6354 = trunc i64 %6353 to i8
  %6355 = and i8 %6354, 1
  store i8 %6355, i8* %26, align 1
  %6356 = icmp eq i64 %6340, 0
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %29, align 1
  %6358 = lshr i64 %6340, 63
  %6359 = trunc i64 %6358 to i8
  store i8 %6359, i8* %32, align 1
  %6360 = xor i64 %6358, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6361 = xor i64 %6358, %6339
  %6362 = add nuw nsw i64 %6360, %6361
  %6363 = icmp eq i64 %6362, 2
  %6364 = zext i1 %6363 to i8
  store i8 %6364, i8* %38, align 1
  %6365 = add i64 %6338, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %6366 = add i64 %6331, 25
  store i64 %6366, i64* %3, align 8
  %6367 = inttoptr i64 %6365 to i32*
  %6368 = load i32, i32* %6367, align 4
  store i8 0, i8* %14, align 1
  %6369 = and i32 %6368, 255
  %6370 = tail call i32 @llvm.ctpop.i32(i32 %6369)
  %6371 = trunc i32 %6370 to i8
  %6372 = and i8 %6371, 1
  %6373 = xor i8 %6372, 1
  store i8 %6373, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6374 = icmp eq i32 %6368, 0
  %6375 = zext i1 %6374 to i8
  store i8 %6375, i8* %29, align 1
  %6376 = lshr i32 %6368, 31
  %6377 = trunc i32 %6376 to i8
  store i8 %6377, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v280 = select i1 %6374, i64 82, i64 31
  %6378 = add i64 %6331, %.v280
  store i64 %6378, i64* %3, align 8
  br i1 %6374, label %block_.L_46fed6, label %block_46fea3

block_46fea3:                                     ; preds = %block_46fe84
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6379 = add i64 %6378, 14
  store i64 %6379, i64* %3, align 8
  %6380 = load i32, i32* %6335, align 4
  %6381 = sext i32 %6380 to i64
  %6382 = mul nsw i64 %6381, 76
  store i64 %6382, i64* %RCX.i2228, align 8
  %6383 = lshr i64 %6382, 63
  %6384 = add i64 %6382, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6384, i64* %RAX.i2269, align 8
  %6385 = icmp ult i64 %6384, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6386 = icmp ult i64 %6384, %6382
  %6387 = or i1 %6385, %6386
  %6388 = zext i1 %6387 to i8
  store i8 %6388, i8* %14, align 1
  %6389 = trunc i64 %6384 to i32
  %6390 = and i32 %6389, 252
  %6391 = tail call i32 @llvm.ctpop.i32(i32 %6390)
  %6392 = trunc i32 %6391 to i8
  %6393 = and i8 %6392, 1
  %6394 = xor i8 %6393, 1
  store i8 %6394, i8* %21, align 1
  %6395 = xor i64 %6382, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6396 = xor i64 %6395, %6384
  %6397 = lshr i64 %6396, 4
  %6398 = trunc i64 %6397 to i8
  %6399 = and i8 %6398, 1
  store i8 %6399, i8* %26, align 1
  %6400 = icmp eq i64 %6384, 0
  %6401 = zext i1 %6400 to i8
  store i8 %6401, i8* %29, align 1
  %6402 = lshr i64 %6384, 63
  %6403 = trunc i64 %6402 to i8
  store i8 %6403, i8* %32, align 1
  %6404 = xor i64 %6402, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6405 = xor i64 %6402, %6383
  %6406 = add nuw nsw i64 %6404, %6405
  %6407 = icmp eq i64 %6406, 2
  %6408 = zext i1 %6407 to i8
  store i8 %6408, i8* %38, align 1
  %6409 = add i64 %6382, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %6410 = add i64 %6378, 24
  store i64 %6410, i64* %3, align 8
  %6411 = inttoptr i64 %6409 to i32*
  %6412 = load i32, i32* %6411, align 4
  %6413 = zext i32 %6412 to i64
  store i64 %6413, i64* %RDI.i1695, align 8
  %6414 = add i64 %6332, -4
  %6415 = add i64 %6378, 27
  store i64 %6415, i64* %3, align 8
  %6416 = inttoptr i64 %6414 to i32*
  %6417 = load i32, i32* %6416, align 4
  %6418 = zext i32 %6417 to i64
  store i64 %6418, i64* %RSI.i2267, align 8
  %6419 = add i64 %6378, 30
  store i64 %6419, i64* %3, align 8
  %6420 = load i32, i32* %6335, align 4
  %6421 = zext i32 %6420 to i64
  store i64 %6421, i64* %RDX.i1551, align 8
  %6422 = add i64 %6332, -36
  %6423 = add i64 %6378, 33
  store i64 %6423, i64* %3, align 8
  %6424 = inttoptr i64 %6422 to i32*
  %6425 = load i32, i32* %6424, align 4
  %6426 = zext i32 %6425 to i64
  store i64 %6426, i64* %RCX.i2228, align 8
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %6428 = add i64 %6332, -40
  %6429 = add i64 %6378, 37
  store i64 %6429, i64* %3, align 8
  %6430 = inttoptr i64 %6428 to i32*
  %6431 = load i32, i32* %6430, align 4
  %6432 = zext i32 %6431 to i64
  store i64 %6432, i64* %6427, align 8
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6434 = load i64, i64* %RBP.i, align 8
  %6435 = add i64 %6434, -44
  %6436 = add i64 %6378, 41
  store i64 %6436, i64* %3, align 8
  %6437 = inttoptr i64 %6435 to i32*
  %6438 = load i32, i32* %6437, align 4
  %6439 = zext i32 %6438 to i64
  store i64 %6439, i64* %6433, align 8
  %6440 = add i64 %6378, 1629
  %6441 = add i64 %6378, 46
  %6442 = load i64, i64* %6, align 8
  %6443 = add i64 %6442, -8
  %6444 = inttoptr i64 %6443 to i64*
  store i64 %6441, i64* %6444, align 8
  store i64 %6443, i64* %6, align 8
  store i64 %6440, i64* %3, align 8
  %call2_46fecc = tail call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* nonnull %0, i64 %6440, %struct.Memory* %MEMORY.77)
  %6445 = load i64, i64* %3, align 8
  %6446 = add i64 %6445, 585
  br label %block_.L_47011a

block_.L_46fed6:                                  ; preds = %block_.L_46fe65.block_.L_46fed6_crit_edge, %block_46fe84
  %6447 = phi i64 [ %6331, %block_.L_46fe65.block_.L_46fed6_crit_edge ], [ %6378, %block_46fe84 ]
  %6448 = phi i64 [ %.pre205, %block_.L_46fe65.block_.L_46fed6_crit_edge ], [ %6332, %block_46fe84 ]
  %6449 = add i64 %6448, -20
  %6450 = add i64 %6447, 4
  store i64 %6450, i64* %3, align 8
  %6451 = inttoptr i64 %6449 to i32*
  %6452 = load i32, i32* %6451, align 4
  %6453 = add i32 %6452, -1
  %6454 = icmp eq i32 %6452, 0
  %6455 = zext i1 %6454 to i8
  store i8 %6455, i8* %14, align 1
  %6456 = and i32 %6453, 255
  %6457 = tail call i32 @llvm.ctpop.i32(i32 %6456)
  %6458 = trunc i32 %6457 to i8
  %6459 = and i8 %6458, 1
  %6460 = xor i8 %6459, 1
  store i8 %6460, i8* %21, align 1
  %6461 = xor i32 %6453, %6452
  %6462 = lshr i32 %6461, 4
  %6463 = trunc i32 %6462 to i8
  %6464 = and i8 %6463, 1
  store i8 %6464, i8* %26, align 1
  %6465 = icmp eq i32 %6453, 0
  %6466 = zext i1 %6465 to i8
  store i8 %6466, i8* %29, align 1
  %6467 = lshr i32 %6453, 31
  %6468 = trunc i32 %6467 to i8
  store i8 %6468, i8* %32, align 1
  %6469 = lshr i32 %6452, 31
  %6470 = xor i32 %6467, %6469
  %6471 = add nuw nsw i32 %6470, %6469
  %6472 = icmp eq i32 %6471, 2
  %6473 = zext i1 %6472 to i8
  store i8 %6473, i8* %38, align 1
  %6474 = icmp ne i8 %6468, 0
  %6475 = xor i1 %6474, %6472
  %6476 = or i1 %6465, %6475
  %.v267 = select i1 %6476, i64 267, i64 10
  %6477 = add i64 %6447, %.v267
  store i64 %6477, i64* %3, align 8
  br i1 %6476, label %block_.L_46ffe1, label %block_46fee0

block_46fee0:                                     ; preds = %block_.L_46fed6
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6478 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %6478, i64* %RCX.i2228, align 8
  %6479 = add i64 %6448, -4
  %6480 = add i64 %6477, 22
  store i64 %6480, i64* %3, align 8
  %6481 = inttoptr i64 %6479 to i32*
  %6482 = load i32, i32* %6481, align 4
  %6483 = sext i32 %6482 to i64
  %6484 = mul nsw i64 %6483, 76
  store i64 %6484, i64* %RDX.i1551, align 8
  %6485 = lshr i64 %6484, 63
  %6486 = add i64 %6484, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6486, i64* %RAX.i2269, align 8
  %6487 = icmp ult i64 %6486, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6488 = icmp ult i64 %6486, %6484
  %6489 = or i1 %6487, %6488
  %6490 = zext i1 %6489 to i8
  store i8 %6490, i8* %14, align 1
  %6491 = trunc i64 %6486 to i32
  %6492 = and i32 %6491, 252
  %6493 = tail call i32 @llvm.ctpop.i32(i32 %6492)
  %6494 = trunc i32 %6493 to i8
  %6495 = and i8 %6494, 1
  %6496 = xor i8 %6495, 1
  store i8 %6496, i8* %21, align 1
  %6497 = xor i64 %6484, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6498 = xor i64 %6497, %6486
  %6499 = lshr i64 %6498, 4
  %6500 = trunc i64 %6499 to i8
  %6501 = and i8 %6500, 1
  store i8 %6501, i8* %26, align 1
  %6502 = icmp eq i64 %6486, 0
  %6503 = zext i1 %6502 to i8
  store i8 %6503, i8* %29, align 1
  %6504 = lshr i64 %6486, 63
  %6505 = trunc i64 %6504 to i8
  store i8 %6505, i8* %32, align 1
  %6506 = xor i64 %6504, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6507 = xor i64 %6504, %6485
  %6508 = add nuw nsw i64 %6506, %6507
  %6509 = icmp eq i64 %6508, 2
  %6510 = zext i1 %6509 to i8
  store i8 %6510, i8* %38, align 1
  %6511 = add i64 %6484, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %6512 = add i64 %6477, 33
  store i64 %6512, i64* %3, align 8
  %6513 = inttoptr i64 %6511 to i32*
  %6514 = load i32, i32* %6513, align 4
  %6515 = sext i32 %6514 to i64
  %6516 = mul nsw i64 %6515, 104
  store i64 %6516, i64* %RAX.i2269, align 8
  %6517 = load i64, i64* %RCX.i2228, align 8
  %6518 = add i64 %6516, %6517
  %6519 = lshr i64 %6518, 63
  %6520 = add i64 %6518, 76
  store i64 %6520, i64* %RCX.i2228, align 8
  %6521 = icmp ugt i64 %6518, -77
  %6522 = zext i1 %6521 to i8
  store i8 %6522, i8* %14, align 1
  %6523 = trunc i64 %6520 to i32
  %6524 = and i32 %6523, 255
  %6525 = tail call i32 @llvm.ctpop.i32(i32 %6524)
  %6526 = trunc i32 %6525 to i8
  %6527 = and i8 %6526, 1
  %6528 = xor i8 %6527, 1
  store i8 %6528, i8* %21, align 1
  %6529 = xor i64 %6520, %6518
  %6530 = lshr i64 %6529, 4
  %6531 = trunc i64 %6530 to i8
  %6532 = and i8 %6531, 1
  store i8 %6532, i8* %26, align 1
  %6533 = icmp eq i64 %6520, 0
  %6534 = zext i1 %6533 to i8
  store i8 %6534, i8* %29, align 1
  %6535 = lshr i64 %6520, 63
  %6536 = trunc i64 %6535 to i8
  store i8 %6536, i8* %32, align 1
  %6537 = xor i64 %6535, %6519
  %6538 = add nuw nsw i64 %6537, %6535
  %6539 = icmp eq i64 %6538, 2
  %6540 = zext i1 %6539 to i8
  store i8 %6540, i8* %38, align 1
  store i64 %6520, i64* %RDI.i1695, align 8
  %6541 = add i64 %6477, -216384
  %6542 = add i64 %6477, 52
  %6543 = load i64, i64* %6, align 8
  %6544 = add i64 %6543, -8
  %6545 = inttoptr i64 %6544 to i64*
  store i64 %6542, i64* %6545, align 8
  store i64 %6544, i64* %6, align 8
  store i64 %6541, i64* %3, align 8
  %call2_46ff0f = tail call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* nonnull %0, i64 %6541, %struct.Memory* %MEMORY.77)
  %6546 = load i32, i32* %EAX.i1691, align 4
  %6547 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %6548 = and i32 %6546, 255
  %6549 = tail call i32 @llvm.ctpop.i32(i32 %6548)
  %6550 = trunc i32 %6549 to i8
  %6551 = and i8 %6550, 1
  %6552 = xor i8 %6551, 1
  store i8 %6552, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6553 = icmp eq i32 %6546, 0
  %6554 = zext i1 %6553 to i8
  store i8 %6554, i8* %29, align 1
  %6555 = lshr i32 %6546, 31
  %6556 = trunc i32 %6555 to i8
  store i8 %6556, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %6557 = icmp ne i8 %6556, 0
  %6558 = or i1 %6553, %6557
  %.v268 = select i1 %6558, i64 74, i64 9
  %6559 = add i64 %6547, %.v268
  store i64 %6559, i64* %3, align 8
  br i1 %6558, label %block_.L_46ff5e, label %block_46ff1d

block_46ff1d:                                     ; preds = %block_46fee0
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6560 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %6560, i64* %RCX.i2228, align 8
  %6561 = load i64, i64* %RBP.i, align 8
  %6562 = add i64 %6561, -4
  %6563 = add i64 %6559, 22
  store i64 %6563, i64* %3, align 8
  %6564 = inttoptr i64 %6562 to i32*
  %6565 = load i32, i32* %6564, align 4
  %6566 = sext i32 %6565 to i64
  %6567 = mul nsw i64 %6566, 76
  store i64 %6567, i64* %RDX.i1551, align 8
  %6568 = lshr i64 %6567, 63
  %6569 = add i64 %6567, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6569, i64* %RAX.i2269, align 8
  %6570 = icmp ult i64 %6569, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6571 = icmp ult i64 %6569, %6567
  %6572 = or i1 %6570, %6571
  %6573 = zext i1 %6572 to i8
  store i8 %6573, i8* %14, align 1
  %6574 = trunc i64 %6569 to i32
  %6575 = and i32 %6574, 252
  %6576 = tail call i32 @llvm.ctpop.i32(i32 %6575)
  %6577 = trunc i32 %6576 to i8
  %6578 = and i8 %6577, 1
  %6579 = xor i8 %6578, 1
  store i8 %6579, i8* %21, align 1
  %6580 = xor i64 %6567, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6581 = xor i64 %6580, %6569
  %6582 = lshr i64 %6581, 4
  %6583 = trunc i64 %6582 to i8
  %6584 = and i8 %6583, 1
  store i8 %6584, i8* %26, align 1
  %6585 = icmp eq i64 %6569, 0
  %6586 = zext i1 %6585 to i8
  store i8 %6586, i8* %29, align 1
  %6587 = lshr i64 %6569, 63
  %6588 = trunc i64 %6587 to i8
  store i8 %6588, i8* %32, align 1
  %6589 = xor i64 %6587, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6590 = xor i64 %6587, %6568
  %6591 = add nuw nsw i64 %6589, %6590
  %6592 = icmp eq i64 %6591, 2
  %6593 = zext i1 %6592 to i8
  store i8 %6593, i8* %38, align 1
  %6594 = add i64 %6567, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %6595 = add i64 %6559, 33
  store i64 %6595, i64* %3, align 8
  %6596 = inttoptr i64 %6594 to i32*
  %6597 = load i32, i32* %6596, align 4
  %6598 = sext i32 %6597 to i64
  %6599 = mul nsw i64 %6598, 104
  store i64 %6599, i64* %RAX.i2269, align 8
  %6600 = lshr i64 %6599, 63
  %6601 = load i64, i64* %RCX.i2228, align 8
  %6602 = add i64 %6599, %6601
  store i64 %6602, i64* %RCX.i2228, align 8
  %6603 = icmp ult i64 %6602, %6601
  %6604 = icmp ult i64 %6602, %6599
  %6605 = or i1 %6603, %6604
  %6606 = zext i1 %6605 to i8
  store i8 %6606, i8* %14, align 1
  %6607 = trunc i64 %6602 to i32
  %6608 = and i32 %6607, 255
  %6609 = tail call i32 @llvm.ctpop.i32(i32 %6608)
  %6610 = trunc i32 %6609 to i8
  %6611 = and i8 %6610, 1
  %6612 = xor i8 %6611, 1
  store i8 %6612, i8* %21, align 1
  %6613 = xor i64 %6599, %6601
  %6614 = xor i64 %6613, %6602
  %6615 = lshr i64 %6614, 4
  %6616 = trunc i64 %6615 to i8
  %6617 = and i8 %6616, 1
  store i8 %6617, i8* %26, align 1
  %6618 = icmp eq i64 %6602, 0
  %6619 = zext i1 %6618 to i8
  store i8 %6619, i8* %29, align 1
  %6620 = lshr i64 %6602, 63
  %6621 = trunc i64 %6620 to i8
  store i8 %6621, i8* %32, align 1
  %6622 = lshr i64 %6601, 63
  %6623 = xor i64 %6620, %6622
  %6624 = xor i64 %6620, %6600
  %6625 = add nuw nsw i64 %6623, %6624
  %6626 = icmp eq i64 %6625, 2
  %6627 = zext i1 %6626 to i8
  store i8 %6627, i8* %38, align 1
  %6628 = add i64 %6602, 80
  %6629 = add i64 %6559, 43
  store i64 %6629, i64* %3, align 8
  %6630 = inttoptr i64 %6628 to i32*
  %6631 = load i32, i32* %6630, align 4
  %6632 = zext i32 %6631 to i64
  store i64 %6632, i64* %RDI.i1695, align 8
  %6633 = load i64, i64* %RBP.i, align 8
  %6634 = add i64 %6633, -4
  %6635 = add i64 %6559, 46
  store i64 %6635, i64* %3, align 8
  %6636 = inttoptr i64 %6634 to i32*
  %6637 = load i32, i32* %6636, align 4
  %6638 = zext i32 %6637 to i64
  store i64 %6638, i64* %RSI.i2267, align 8
  %6639 = add i64 %6633, -8
  %6640 = add i64 %6559, 49
  store i64 %6640, i64* %3, align 8
  %6641 = inttoptr i64 %6639 to i32*
  %6642 = load i32, i32* %6641, align 4
  %6643 = zext i32 %6642 to i64
  store i64 %6643, i64* %RDX.i1551, align 8
  %6644 = add i64 %6633, -36
  %6645 = add i64 %6559, 52
  store i64 %6645, i64* %3, align 8
  %6646 = inttoptr i64 %6644 to i32*
  %6647 = load i32, i32* %6646, align 4
  %6648 = zext i32 %6647 to i64
  store i64 %6648, i64* %RCX.i2228, align 8
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %6650 = add i64 %6633, -40
  %6651 = add i64 %6559, 56
  store i64 %6651, i64* %3, align 8
  %6652 = inttoptr i64 %6650 to i32*
  %6653 = load i32, i32* %6652, align 4
  %6654 = zext i32 %6653 to i64
  store i64 %6654, i64* %6649, align 8
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6656 = add i64 %6633, -44
  %6657 = add i64 %6559, 60
  store i64 %6657, i64* %3, align 8
  %6658 = inttoptr i64 %6656 to i32*
  %6659 = load i32, i32* %6658, align 4
  %6660 = zext i32 %6659 to i64
  store i64 %6660, i64* %6655, align 8
  %6661 = add i64 %6559, 1507
  %6662 = add i64 %6559, 65
  %6663 = load i64, i64* %6, align 8
  %6664 = add i64 %6663, -8
  %6665 = inttoptr i64 %6664 to i64*
  store i64 %6662, i64* %6665, align 8
  store i64 %6664, i64* %6, align 8
  store i64 %6661, i64* %3, align 8
  %call2_46ff59 = tail call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* nonnull %0, i64 %6661, %struct.Memory* %call2_46ff0f)
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_46ff5e

block_.L_46ff5e:                                  ; preds = %block_46ff1d, %block_46fee0
  %6666 = phi i64 [ %6559, %block_46fee0 ], [ %.pre206, %block_46ff1d ]
  %MEMORY.81 = phi %struct.Memory* [ %call2_46ff0f, %block_46fee0 ], [ %call2_46ff59, %block_46ff1d ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6667 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %6667, i64* %RCX.i2228, align 8
  %6668 = load i64, i64* %RBP.i, align 8
  %6669 = add i64 %6668, -8
  %6670 = add i64 %6666, 22
  store i64 %6670, i64* %3, align 8
  %6671 = inttoptr i64 %6669 to i32*
  %6672 = load i32, i32* %6671, align 4
  %6673 = sext i32 %6672 to i64
  %6674 = mul nsw i64 %6673, 76
  store i64 %6674, i64* %RDX.i1551, align 8
  %6675 = lshr i64 %6674, 63
  %6676 = add i64 %6674, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6676, i64* %RAX.i2269, align 8
  %6677 = icmp ult i64 %6676, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6678 = icmp ult i64 %6676, %6674
  %6679 = or i1 %6677, %6678
  %6680 = zext i1 %6679 to i8
  store i8 %6680, i8* %14, align 1
  %6681 = trunc i64 %6676 to i32
  %6682 = and i32 %6681, 252
  %6683 = tail call i32 @llvm.ctpop.i32(i32 %6682)
  %6684 = trunc i32 %6683 to i8
  %6685 = and i8 %6684, 1
  %6686 = xor i8 %6685, 1
  store i8 %6686, i8* %21, align 1
  %6687 = xor i64 %6674, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6688 = xor i64 %6687, %6676
  %6689 = lshr i64 %6688, 4
  %6690 = trunc i64 %6689 to i8
  %6691 = and i8 %6690, 1
  store i8 %6691, i8* %26, align 1
  %6692 = icmp eq i64 %6676, 0
  %6693 = zext i1 %6692 to i8
  store i8 %6693, i8* %29, align 1
  %6694 = lshr i64 %6676, 63
  %6695 = trunc i64 %6694 to i8
  store i8 %6695, i8* %32, align 1
  %6696 = xor i64 %6694, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6697 = xor i64 %6694, %6675
  %6698 = add nuw nsw i64 %6696, %6697
  %6699 = icmp eq i64 %6698, 2
  %6700 = zext i1 %6699 to i8
  store i8 %6700, i8* %38, align 1
  %6701 = add i64 %6674, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %6702 = add i64 %6666, 33
  store i64 %6702, i64* %3, align 8
  %6703 = inttoptr i64 %6701 to i32*
  %6704 = load i32, i32* %6703, align 4
  %6705 = sext i32 %6704 to i64
  %6706 = mul nsw i64 %6705, 104
  store i64 %6706, i64* %RAX.i2269, align 8
  %6707 = load i64, i64* %RCX.i2228, align 8
  %6708 = add i64 %6706, %6707
  %6709 = lshr i64 %6708, 63
  %6710 = add i64 %6708, 76
  store i64 %6710, i64* %RCX.i2228, align 8
  %6711 = icmp ugt i64 %6708, -77
  %6712 = zext i1 %6711 to i8
  store i8 %6712, i8* %14, align 1
  %6713 = trunc i64 %6710 to i32
  %6714 = and i32 %6713, 255
  %6715 = tail call i32 @llvm.ctpop.i32(i32 %6714)
  %6716 = trunc i32 %6715 to i8
  %6717 = and i8 %6716, 1
  %6718 = xor i8 %6717, 1
  store i8 %6718, i8* %21, align 1
  %6719 = xor i64 %6710, %6708
  %6720 = lshr i64 %6719, 4
  %6721 = trunc i64 %6720 to i8
  %6722 = and i8 %6721, 1
  store i8 %6722, i8* %26, align 1
  %6723 = icmp eq i64 %6710, 0
  %6724 = zext i1 %6723 to i8
  store i8 %6724, i8* %29, align 1
  %6725 = lshr i64 %6710, 63
  %6726 = trunc i64 %6725 to i8
  store i8 %6726, i8* %32, align 1
  %6727 = xor i64 %6725, %6709
  %6728 = add nuw nsw i64 %6727, %6725
  %6729 = icmp eq i64 %6728, 2
  %6730 = zext i1 %6729 to i8
  store i8 %6730, i8* %38, align 1
  store i64 %6710, i64* %RDI.i1695, align 8
  %6731 = add i64 %6666, -216510
  %6732 = add i64 %6666, 52
  %6733 = load i64, i64* %6, align 8
  %6734 = add i64 %6733, -8
  %6735 = inttoptr i64 %6734 to i64*
  store i64 %6732, i64* %6735, align 8
  store i64 %6734, i64* %6, align 8
  store i64 %6731, i64* %3, align 8
  %call2_46ff8d = tail call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* nonnull %0, i64 %6731, %struct.Memory* %MEMORY.81)
  %6736 = load i32, i32* %EAX.i1691, align 4
  %6737 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %6738 = and i32 %6736, 255
  %6739 = tail call i32 @llvm.ctpop.i32(i32 %6738)
  %6740 = trunc i32 %6739 to i8
  %6741 = and i8 %6740, 1
  %6742 = xor i8 %6741, 1
  store i8 %6742, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6743 = icmp eq i32 %6736, 0
  %6744 = zext i1 %6743 to i8
  store i8 %6744, i8* %29, align 1
  %6745 = lshr i32 %6736, 31
  %6746 = trunc i32 %6745 to i8
  store i8 %6746, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v269 = select i1 %6743, i64 74, i64 9
  %6747 = add i64 %6737, %.v269
  store i64 %6747, i64* %3, align 8
  br i1 %6743, label %block_.L_46ffdc, label %block_46ff9b

block_46ff9b:                                     ; preds = %block_.L_46ff5e
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i2269, align 8
  %6748 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %6748, i64* %RCX.i2228, align 8
  %6749 = load i64, i64* %RBP.i, align 8
  %6750 = add i64 %6749, -8
  %6751 = add i64 %6747, 22
  store i64 %6751, i64* %3, align 8
  %6752 = inttoptr i64 %6750 to i32*
  %6753 = load i32, i32* %6752, align 4
  %6754 = sext i32 %6753 to i64
  %6755 = mul nsw i64 %6754, 76
  store i64 %6755, i64* %RDX.i1551, align 8
  %6756 = lshr i64 %6755, 63
  %6757 = add i64 %6755, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %6757, i64* %RAX.i2269, align 8
  %6758 = icmp ult i64 %6757, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6759 = icmp ult i64 %6757, %6755
  %6760 = or i1 %6758, %6759
  %6761 = zext i1 %6760 to i8
  store i8 %6761, i8* %14, align 1
  %6762 = trunc i64 %6757 to i32
  %6763 = and i32 %6762, 252
  %6764 = tail call i32 @llvm.ctpop.i32(i32 %6763)
  %6765 = trunc i32 %6764 to i8
  %6766 = and i8 %6765, 1
  %6767 = xor i8 %6766, 1
  store i8 %6767, i8* %21, align 1
  %6768 = xor i64 %6755, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %6769 = xor i64 %6768, %6757
  %6770 = lshr i64 %6769, 4
  %6771 = trunc i64 %6770 to i8
  %6772 = and i8 %6771, 1
  store i8 %6772, i8* %26, align 1
  %6773 = icmp eq i64 %6757, 0
  %6774 = zext i1 %6773 to i8
  store i8 %6774, i8* %29, align 1
  %6775 = lshr i64 %6757, 63
  %6776 = trunc i64 %6775 to i8
  store i8 %6776, i8* %32, align 1
  %6777 = xor i64 %6775, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %6778 = xor i64 %6775, %6756
  %6779 = add nuw nsw i64 %6777, %6778
  %6780 = icmp eq i64 %6779, 2
  %6781 = zext i1 %6780 to i8
  store i8 %6781, i8* %38, align 1
  %6782 = add i64 %6755, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %6783 = add i64 %6747, 33
  store i64 %6783, i64* %3, align 8
  %6784 = inttoptr i64 %6782 to i32*
  %6785 = load i32, i32* %6784, align 4
  %6786 = sext i32 %6785 to i64
  %6787 = mul nsw i64 %6786, 104
  store i64 %6787, i64* %RAX.i2269, align 8
  %6788 = lshr i64 %6787, 63
  %6789 = load i64, i64* %RCX.i2228, align 8
  %6790 = add i64 %6787, %6789
  store i64 %6790, i64* %RCX.i2228, align 8
  %6791 = icmp ult i64 %6790, %6789
  %6792 = icmp ult i64 %6790, %6787
  %6793 = or i1 %6791, %6792
  %6794 = zext i1 %6793 to i8
  store i8 %6794, i8* %14, align 1
  %6795 = trunc i64 %6790 to i32
  %6796 = and i32 %6795, 255
  %6797 = tail call i32 @llvm.ctpop.i32(i32 %6796)
  %6798 = trunc i32 %6797 to i8
  %6799 = and i8 %6798, 1
  %6800 = xor i8 %6799, 1
  store i8 %6800, i8* %21, align 1
  %6801 = xor i64 %6787, %6789
  %6802 = xor i64 %6801, %6790
  %6803 = lshr i64 %6802, 4
  %6804 = trunc i64 %6803 to i8
  %6805 = and i8 %6804, 1
  store i8 %6805, i8* %26, align 1
  %6806 = icmp eq i64 %6790, 0
  %6807 = zext i1 %6806 to i8
  store i8 %6807, i8* %29, align 1
  %6808 = lshr i64 %6790, 63
  %6809 = trunc i64 %6808 to i8
  store i8 %6809, i8* %32, align 1
  %6810 = lshr i64 %6789, 63
  %6811 = xor i64 %6808, %6810
  %6812 = xor i64 %6808, %6788
  %6813 = add nuw nsw i64 %6811, %6812
  %6814 = icmp eq i64 %6813, 2
  %6815 = zext i1 %6814 to i8
  store i8 %6815, i8* %38, align 1
  %6816 = add i64 %6790, 80
  %6817 = add i64 %6747, 43
  store i64 %6817, i64* %3, align 8
  %6818 = inttoptr i64 %6816 to i32*
  %6819 = load i32, i32* %6818, align 4
  %6820 = zext i32 %6819 to i64
  store i64 %6820, i64* %RDI.i1695, align 8
  %6821 = load i64, i64* %RBP.i, align 8
  %6822 = add i64 %6821, -4
  %6823 = add i64 %6747, 46
  store i64 %6823, i64* %3, align 8
  %6824 = inttoptr i64 %6822 to i32*
  %6825 = load i32, i32* %6824, align 4
  %6826 = zext i32 %6825 to i64
  store i64 %6826, i64* %RSI.i2267, align 8
  %6827 = add i64 %6821, -8
  %6828 = add i64 %6747, 49
  store i64 %6828, i64* %3, align 8
  %6829 = inttoptr i64 %6827 to i32*
  %6830 = load i32, i32* %6829, align 4
  %6831 = zext i32 %6830 to i64
  store i64 %6831, i64* %RDX.i1551, align 8
  %6832 = add i64 %6821, -36
  %6833 = add i64 %6747, 52
  store i64 %6833, i64* %3, align 8
  %6834 = inttoptr i64 %6832 to i32*
  %6835 = load i32, i32* %6834, align 4
  %6836 = zext i32 %6835 to i64
  store i64 %6836, i64* %RCX.i2228, align 8
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %6838 = add i64 %6821, -40
  %6839 = add i64 %6747, 56
  store i64 %6839, i64* %3, align 8
  %6840 = inttoptr i64 %6838 to i32*
  %6841 = load i32, i32* %6840, align 4
  %6842 = zext i32 %6841 to i64
  store i64 %6842, i64* %6837, align 8
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6844 = add i64 %6821, -44
  %6845 = add i64 %6747, 60
  store i64 %6845, i64* %3, align 8
  %6846 = inttoptr i64 %6844 to i32*
  %6847 = load i32, i32* %6846, align 4
  %6848 = zext i32 %6847 to i64
  store i64 %6848, i64* %6843, align 8
  %6849 = add i64 %6747, 1381
  %6850 = add i64 %6747, 65
  %6851 = load i64, i64* %6, align 8
  %6852 = add i64 %6851, -8
  %6853 = inttoptr i64 %6852 to i64*
  store i64 %6850, i64* %6853, align 8
  store i64 %6852, i64* %6, align 8
  store i64 %6849, i64* %3, align 8
  %call2_46ffd7 = tail call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* nonnull %0, i64 %6849, %struct.Memory* %call2_46ff8d)
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_46ffdc

block_.L_46ffdc:                                  ; preds = %block_46ff9b, %block_.L_46ff5e
  %6854 = phi i64 [ %6747, %block_.L_46ff5e ], [ %.pre207, %block_46ff9b ]
  %MEMORY.82 = phi %struct.Memory* [ %call2_46ff8d, %block_.L_46ff5e ], [ %call2_46ffd7, %block_46ff9b ]
  %6855 = add i64 %6854, 313
  br label %block_.L_470115

block_.L_46ffe1:                                  ; preds = %block_.L_46fed6
  %6856 = add i64 %6448, -52
  %6857 = add i64 %6477, 7
  store i64 %6857, i64* %3, align 8
  %6858 = inttoptr i64 %6856 to i32*
  store i32 21, i32* %6858, align 4
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre208 = load i64, i64* %3, align 8
  br label %block_.L_46ffe8

block_.L_46ffe8:                                  ; preds = %block_.L_470073, %block_.L_46ffe1
  %6861 = phi i64 [ %.pre208, %block_.L_46ffe1 ], [ %7073, %block_.L_470073 ]
  %6862 = load i64, i64* %RBP.i, align 8
  %6863 = add i64 %6862, -52
  %6864 = add i64 %6861, 7
  store i64 %6864, i64* %3, align 8
  %6865 = inttoptr i64 %6863 to i32*
  %6866 = load i32, i32* %6865, align 4
  %6867 = add i32 %6866, -400
  %6868 = icmp ult i32 %6866, 400
  %6869 = zext i1 %6868 to i8
  store i8 %6869, i8* %14, align 1
  %6870 = and i32 %6867, 255
  %6871 = tail call i32 @llvm.ctpop.i32(i32 %6870)
  %6872 = trunc i32 %6871 to i8
  %6873 = and i8 %6872, 1
  %6874 = xor i8 %6873, 1
  store i8 %6874, i8* %21, align 1
  %6875 = xor i32 %6866, 16
  %6876 = xor i32 %6875, %6867
  %6877 = lshr i32 %6876, 4
  %6878 = trunc i32 %6877 to i8
  %6879 = and i8 %6878, 1
  store i8 %6879, i8* %26, align 1
  %6880 = icmp eq i32 %6867, 0
  %6881 = zext i1 %6880 to i8
  store i8 %6881, i8* %29, align 1
  %6882 = lshr i32 %6867, 31
  %6883 = trunc i32 %6882 to i8
  store i8 %6883, i8* %32, align 1
  %6884 = lshr i32 %6866, 31
  %6885 = xor i32 %6882, %6884
  %6886 = add nuw nsw i32 %6885, %6884
  %6887 = icmp eq i32 %6886, 2
  %6888 = zext i1 %6887 to i8
  store i8 %6888, i8* %38, align 1
  %6889 = icmp ne i8 %6883, 0
  %6890 = xor i1 %6889, %6887
  %.v270 = select i1 %6890, i64 13, i64 153
  %6891 = add i64 %6861, %.v270
  store i64 %6891, i64* %3, align 8
  br i1 %6890, label %block_46fff5, label %block_.L_470081

block_46fff5:                                     ; preds = %block_.L_46ffe8
  %6892 = add i64 %6891, 4
  store i64 %6892, i64* %3, align 8
  %6893 = load i32, i32* %6865, align 4
  %6894 = sext i32 %6893 to i64
  store i64 %6894, i64* %RAX.i2269, align 8
  %6895 = add nsw i64 %6894, 12099168
  %6896 = add i64 %6891, 12
  store i64 %6896, i64* %3, align 8
  %6897 = inttoptr i64 %6895 to i8*
  %6898 = load i8, i8* %6897, align 1
  %6899 = zext i8 %6898 to i64
  store i64 %6899, i64* %RCX.i2228, align 8
  %6900 = zext i8 %6898 to i32
  %6901 = add nsw i32 %6900, -3
  %6902 = icmp ult i8 %6898, 3
  %6903 = zext i1 %6902 to i8
  store i8 %6903, i8* %14, align 1
  %6904 = and i32 %6901, 255
  %6905 = tail call i32 @llvm.ctpop.i32(i32 %6904)
  %6906 = trunc i32 %6905 to i8
  %6907 = and i8 %6906, 1
  %6908 = xor i8 %6907, 1
  store i8 %6908, i8* %21, align 1
  %6909 = xor i32 %6901, %6900
  %6910 = lshr i32 %6909, 4
  %6911 = trunc i32 %6910 to i8
  %6912 = and i8 %6911, 1
  store i8 %6912, i8* %26, align 1
  %6913 = icmp eq i32 %6901, 0
  %6914 = zext i1 %6913 to i8
  store i8 %6914, i8* %29, align 1
  %6915 = lshr i32 %6901, 31
  %6916 = trunc i32 %6915 to i8
  store i8 %6916, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v276 = select i1 %6913, i64 21, i64 26
  %6917 = add i64 %6891, %.v276
  store i64 %6917, i64* %3, align 8
  br i1 %6913, label %block_47000a, label %block_.L_47000f

block_47000a:                                     ; preds = %block_46fff5
  %6918 = add i64 %6917, 105
  br label %block_.L_470073

block_.L_47000f:                                  ; preds = %block_46fff5
  %6919 = add i64 %6917, 3
  store i64 %6919, i64* %3, align 8
  %6920 = load i32, i32* %6865, align 4
  %6921 = zext i32 %6920 to i64
  store i64 %6921, i64* %RDI.i1695, align 8
  %6922 = add i64 %6862, -8
  %6923 = add i64 %6917, 6
  store i64 %6923, i64* %3, align 8
  %6924 = inttoptr i64 %6922 to i32*
  %6925 = load i32, i32* %6924, align 4
  %6926 = zext i32 %6925 to i64
  store i64 %6926, i64* %RSI.i2267, align 8
  %6927 = add i64 %6917, 289
  %6928 = add i64 %6917, 11
  %6929 = load i64, i64* %6, align 8
  %6930 = add i64 %6929, -8
  %6931 = inttoptr i64 %6930 to i64*
  store i64 %6928, i64* %6931, align 8
  store i64 %6930, i64* %6, align 8
  store i64 %6927, i64* %3, align 8
  %call2_470015 = tail call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* nonnull %0, i64 %6927, %struct.Memory* %MEMORY.77)
  %6932 = load i32, i32* %EAX.i1691, align 4
  %6933 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %6934 = and i32 %6932, 255
  %6935 = tail call i32 @llvm.ctpop.i32(i32 %6934)
  %6936 = trunc i32 %6935 to i8
  %6937 = and i8 %6936, 1
  %6938 = xor i8 %6937, 1
  store i8 %6938, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6939 = icmp eq i32 %6932, 0
  %6940 = zext i1 %6939 to i8
  store i8 %6940, i8* %29, align 1
  %6941 = lshr i32 %6932, 31
  %6942 = trunc i32 %6941 to i8
  store i8 %6942, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v277 = select i1 %6939, i64 84, i64 9
  %6943 = add i64 %6933, %.v277
  store i64 %6943, i64* %3, align 8
  br i1 %6939, label %block_.L_47006e, label %block_470023

block_470023:                                     ; preds = %block_.L_47000f
  %6944 = load i64, i64* %RBP.i, align 8
  %6945 = add i64 %6944, -52
  %6946 = add i64 %6943, 3
  store i64 %6946, i64* %3, align 8
  %6947 = inttoptr i64 %6945 to i32*
  %6948 = load i32, i32* %6947, align 4
  %6949 = zext i32 %6948 to i64
  store i64 %6949, i64* %RDI.i1695, align 8
  %6950 = add i64 %6944, -4
  %6951 = add i64 %6943, 6
  store i64 %6951, i64* %3, align 8
  %6952 = inttoptr i64 %6950 to i32*
  %6953 = load i32, i32* %6952, align 4
  %6954 = zext i32 %6953 to i64
  store i64 %6954, i64* %RSI.i2267, align 8
  %6955 = add i64 %6943, 269
  %6956 = add i64 %6943, 11
  %6957 = load i64, i64* %6, align 8
  %6958 = add i64 %6957, -8
  %6959 = inttoptr i64 %6958 to i64*
  store i64 %6956, i64* %6959, align 8
  store i64 %6958, i64* %6, align 8
  store i64 %6955, i64* %3, align 8
  %call2_470029 = tail call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* nonnull %0, i64 %6955, %struct.Memory* %MEMORY.77)
  %6960 = load i32, i32* %EAX.i1691, align 4
  %6961 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %6962 = and i32 %6960, 255
  %6963 = tail call i32 @llvm.ctpop.i32(i32 %6962)
  %6964 = trunc i32 %6963 to i8
  %6965 = and i8 %6964, 1
  %6966 = xor i8 %6965, 1
  store i8 %6966, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6967 = icmp eq i32 %6960, 0
  %6968 = zext i1 %6967 to i8
  store i8 %6968, i8* %29, align 1
  %6969 = lshr i32 %6960, 31
  %6970 = trunc i32 %6969 to i8
  store i8 %6970, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v278 = select i1 %6967, i64 9, i64 64
  %6971 = add i64 %6961, %.v278
  store i64 %6971, i64* %3, align 8
  br i1 %6967, label %block_470037, label %block_.L_47006e

block_470037:                                     ; preds = %block_470023
  %6972 = load i64, i64* %RBP.i, align 8
  %6973 = add i64 %6972, -52
  %6974 = add i64 %6971, 3
  store i64 %6974, i64* %3, align 8
  %6975 = inttoptr i64 %6973 to i32*
  %6976 = load i32, i32* %6975, align 4
  %6977 = zext i32 %6976 to i64
  store i64 %6977, i64* %RDI.i1695, align 8
  %6978 = add i64 %6972, -32
  %6979 = add i64 %6971, 6
  store i64 %6979, i64* %3, align 8
  %6980 = inttoptr i64 %6978 to i32*
  %6981 = load i32, i32* %6980, align 4
  %6982 = zext i32 %6981 to i64
  store i64 %6982, i64* %RSI.i2267, align 8
  %6983 = add i64 %6971, -17415
  %6984 = add i64 %6971, 11
  %6985 = load i64, i64* %6, align 8
  %6986 = add i64 %6985, -8
  %6987 = inttoptr i64 %6986 to i64*
  store i64 %6984, i64* %6987, align 8
  store i64 %6986, i64* %6, align 8
  store i64 %6983, i64* %3, align 8
  %call2_47003d = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %6983, %struct.Memory* %MEMORY.77)
  %6988 = load i32, i32* %EAX.i1691, align 4
  %6989 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %6990 = and i32 %6988, 255
  %6991 = tail call i32 @llvm.ctpop.i32(i32 %6990)
  %6992 = trunc i32 %6991 to i8
  %6993 = and i8 %6992, 1
  %6994 = xor i8 %6993, 1
  store i8 %6994, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6995 = icmp eq i32 %6988, 0
  %6996 = zext i1 %6995 to i8
  store i8 %6996, i8* %29, align 1
  %6997 = lshr i32 %6988, 31
  %6998 = trunc i32 %6997 to i8
  store i8 %6998, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v279 = select i1 %6995, i64 44, i64 9
  %6999 = add i64 %6989, %.v279
  store i64 %6999, i64* %3, align 8
  br i1 %6995, label %block_.L_47006e, label %block_47004b

block_47004b:                                     ; preds = %block_470037
  %7000 = load i64, i64* %RBP.i, align 8
  %7001 = add i64 %7000, -52
  %7002 = add i64 %6999, 3
  store i64 %7002, i64* %3, align 8
  %7003 = inttoptr i64 %7001 to i32*
  %7004 = load i32, i32* %7003, align 4
  %7005 = zext i32 %7004 to i64
  store i64 %7005, i64* %RDI.i1695, align 8
  %7006 = add i64 %7000, -4
  %7007 = add i64 %6999, 6
  store i64 %7007, i64* %3, align 8
  %7008 = inttoptr i64 %7006 to i32*
  %7009 = load i32, i32* %7008, align 4
  %7010 = zext i32 %7009 to i64
  store i64 %7010, i64* %RSI.i2267, align 8
  %7011 = add i64 %7000, -8
  %7012 = add i64 %6999, 9
  store i64 %7012, i64* %3, align 8
  %7013 = inttoptr i64 %7011 to i32*
  %7014 = load i32, i32* %7013, align 4
  %7015 = zext i32 %7014 to i64
  store i64 %7015, i64* %RDX.i1551, align 8
  %7016 = add i64 %7000, -36
  %7017 = add i64 %6999, 12
  store i64 %7017, i64* %3, align 8
  %7018 = inttoptr i64 %7016 to i32*
  %7019 = load i32, i32* %7018, align 4
  %7020 = zext i32 %7019 to i64
  store i64 %7020, i64* %RCX.i2228, align 8
  %7021 = add i64 %7000, -40
  %7022 = add i64 %6999, 16
  store i64 %7022, i64* %3, align 8
  %7023 = inttoptr i64 %7021 to i32*
  %7024 = load i32, i32* %7023, align 4
  %7025 = zext i32 %7024 to i64
  store i64 %7025, i64* %6859, align 8
  %7026 = add i64 %7000, -44
  %7027 = add i64 %6999, 20
  store i64 %7027, i64* %3, align 8
  %7028 = inttoptr i64 %7026 to i32*
  %7029 = load i32, i32* %7028, align 4
  %7030 = zext i32 %7029 to i64
  store i64 %7030, i64* %6860, align 8
  %7031 = add i64 %6999, 1205
  %7032 = add i64 %6999, 25
  %7033 = load i64, i64* %6, align 8
  %7034 = add i64 %7033, -8
  %7035 = inttoptr i64 %7034 to i64*
  store i64 %7032, i64* %7035, align 8
  store i64 %7034, i64* %6, align 8
  store i64 %7031, i64* %3, align 8
  %call2_47005f = tail call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* nonnull %0, i64 %7031, %struct.Memory* %MEMORY.77)
  %7036 = load i64, i64* %RBP.i, align 8
  %7037 = add i64 %7036, -732
  %7038 = load i64, i64* %3, align 8
  %7039 = add i64 %7038, 10
  store i64 %7039, i64* %3, align 8
  %7040 = inttoptr i64 %7037 to i32*
  store i32 1, i32* %7040, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_47006e

block_.L_47006e:                                  ; preds = %block_470023, %block_47004b, %block_470037, %block_.L_47000f
  %7041 = phi i64 [ %.pre211, %block_47004b ], [ %6999, %block_470037 ], [ %6971, %block_470023 ], [ %6943, %block_.L_47000f ]
  %7042 = add i64 %7041, 5
  store i64 %7042, i64* %3, align 8
  %.pre212 = load i64, i64* %RBP.i, align 8
  br label %block_.L_470073

block_.L_470073:                                  ; preds = %block_.L_47006e, %block_47000a
  %7043 = phi i64 [ %6862, %block_47000a ], [ %.pre212, %block_.L_47006e ]
  %storemerge136 = phi i64 [ %6918, %block_47000a ], [ %7042, %block_.L_47006e ]
  %7044 = add i64 %7043, -52
  %7045 = add i64 %storemerge136, 3
  store i64 %7045, i64* %3, align 8
  %7046 = inttoptr i64 %7044 to i32*
  %7047 = load i32, i32* %7046, align 4
  %7048 = add i32 %7047, 1
  %7049 = zext i32 %7048 to i64
  store i64 %7049, i64* %RAX.i2269, align 8
  %7050 = icmp eq i32 %7047, -1
  %7051 = icmp eq i32 %7048, 0
  %7052 = or i1 %7050, %7051
  %7053 = zext i1 %7052 to i8
  store i8 %7053, i8* %14, align 1
  %7054 = and i32 %7048, 255
  %7055 = tail call i32 @llvm.ctpop.i32(i32 %7054)
  %7056 = trunc i32 %7055 to i8
  %7057 = and i8 %7056, 1
  %7058 = xor i8 %7057, 1
  store i8 %7058, i8* %21, align 1
  %7059 = xor i32 %7048, %7047
  %7060 = lshr i32 %7059, 4
  %7061 = trunc i32 %7060 to i8
  %7062 = and i8 %7061, 1
  store i8 %7062, i8* %26, align 1
  %7063 = zext i1 %7051 to i8
  store i8 %7063, i8* %29, align 1
  %7064 = lshr i32 %7048, 31
  %7065 = trunc i32 %7064 to i8
  store i8 %7065, i8* %32, align 1
  %7066 = lshr i32 %7047, 31
  %7067 = xor i32 %7064, %7066
  %7068 = add nuw nsw i32 %7067, %7064
  %7069 = icmp eq i32 %7068, 2
  %7070 = zext i1 %7069 to i8
  store i8 %7070, i8* %38, align 1
  %7071 = add i64 %storemerge136, 9
  store i64 %7071, i64* %3, align 8
  store i32 %7048, i32* %7046, align 4
  %7072 = load i64, i64* %3, align 8
  %7073 = add i64 %7072, -148
  store i64 %7073, i64* %3, align 8
  br label %block_.L_46ffe8

block_.L_470081:                                  ; preds = %block_.L_46ffe8
  %7074 = add i64 %6862, -732
  %7075 = add i64 %6891, 7
  store i64 %7075, i64* %3, align 8
  %7076 = inttoptr i64 %7074 to i32*
  %7077 = load i32, i32* %7076, align 4
  store i8 0, i8* %14, align 1
  %7078 = and i32 %7077, 255
  %7079 = tail call i32 @llvm.ctpop.i32(i32 %7078)
  %7080 = trunc i32 %7079 to i8
  %7081 = and i8 %7080, 1
  %7082 = xor i8 %7081, 1
  store i8 %7082, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %7083 = icmp eq i32 %7077, 0
  %7084 = zext i1 %7083 to i8
  store i8 %7084, i8* %29, align 1
  %7085 = lshr i32 %7077, 31
  %7086 = trunc i32 %7085 to i8
  store i8 %7086, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v271 = select i1 %7083, i64 13, i64 143
  %7087 = add i64 %6891, %.v271
  store i64 %7087, i64* %3, align 8
  br i1 %7083, label %block_47008e, label %block_.L_470110

block_47008e:                                     ; preds = %block_.L_470081
  %7088 = add i64 %7087, 7
  store i64 %7088, i64* %3, align 8
  store i32 21, i32* %6865, align 4
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_470095

block_.L_470095:                                  ; preds = %block_.L_4700f8, %block_47008e
  %7089 = phi i64 [ %.pre209, %block_47008e ], [ %7266, %block_.L_4700f8 ]
  %7090 = load i64, i64* %RBP.i, align 8
  %7091 = add i64 %7090, -52
  %7092 = add i64 %7089, 7
  store i64 %7092, i64* %3, align 8
  %7093 = inttoptr i64 %7091 to i32*
  %7094 = load i32, i32* %7093, align 4
  %7095 = add i32 %7094, -400
  %7096 = icmp ult i32 %7094, 400
  %7097 = zext i1 %7096 to i8
  store i8 %7097, i8* %14, align 1
  %7098 = and i32 %7095, 255
  %7099 = tail call i32 @llvm.ctpop.i32(i32 %7098)
  %7100 = trunc i32 %7099 to i8
  %7101 = and i8 %7100, 1
  %7102 = xor i8 %7101, 1
  store i8 %7102, i8* %21, align 1
  %7103 = xor i32 %7094, 16
  %7104 = xor i32 %7103, %7095
  %7105 = lshr i32 %7104, 4
  %7106 = trunc i32 %7105 to i8
  %7107 = and i8 %7106, 1
  store i8 %7107, i8* %26, align 1
  %7108 = icmp eq i32 %7095, 0
  %7109 = zext i1 %7108 to i8
  store i8 %7109, i8* %29, align 1
  %7110 = lshr i32 %7095, 31
  %7111 = trunc i32 %7110 to i8
  store i8 %7111, i8* %32, align 1
  %7112 = lshr i32 %7094, 31
  %7113 = xor i32 %7110, %7112
  %7114 = add nuw nsw i32 %7113, %7112
  %7115 = icmp eq i32 %7114, 2
  %7116 = zext i1 %7115 to i8
  store i8 %7116, i8* %38, align 1
  %7117 = icmp ne i8 %7111, 0
  %7118 = xor i1 %7117, %7115
  %.v272 = select i1 %7118, i64 13, i64 118
  %7119 = add i64 %7089, %.v272
  store i64 %7119, i64* %3, align 8
  br i1 %7118, label %block_4700a2, label %block_.L_47010b

block_4700a2:                                     ; preds = %block_.L_470095
  %7120 = add i64 %7119, 4
  store i64 %7120, i64* %3, align 8
  %7121 = load i32, i32* %7093, align 4
  %7122 = sext i32 %7121 to i64
  store i64 %7122, i64* %RAX.i2269, align 8
  %7123 = add nsw i64 %7122, 12099168
  %7124 = add i64 %7119, 12
  store i64 %7124, i64* %3, align 8
  %7125 = inttoptr i64 %7123 to i8*
  %7126 = load i8, i8* %7125, align 1
  %7127 = zext i8 %7126 to i64
  store i64 %7127, i64* %RCX.i2228, align 8
  %7128 = zext i8 %7126 to i32
  %7129 = add nsw i32 %7128, -3
  %7130 = icmp ult i8 %7126, 3
  %7131 = zext i1 %7130 to i8
  store i8 %7131, i8* %14, align 1
  %7132 = and i32 %7129, 255
  %7133 = tail call i32 @llvm.ctpop.i32(i32 %7132)
  %7134 = trunc i32 %7133 to i8
  %7135 = and i8 %7134, 1
  %7136 = xor i8 %7135, 1
  store i8 %7136, i8* %21, align 1
  %7137 = xor i32 %7129, %7128
  %7138 = lshr i32 %7137, 4
  %7139 = trunc i32 %7138 to i8
  %7140 = and i8 %7139, 1
  store i8 %7140, i8* %26, align 1
  %7141 = icmp eq i32 %7129, 0
  %7142 = zext i1 %7141 to i8
  store i8 %7142, i8* %29, align 1
  %7143 = lshr i32 %7129, 31
  %7144 = trunc i32 %7143 to i8
  store i8 %7144, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v273 = select i1 %7141, i64 86, i64 21
  %7145 = add i64 %7119, %.v273
  store i64 %7145, i64* %3, align 8
  br i1 %7141, label %block_.L_4700f8, label %block_4700b7

block_4700b7:                                     ; preds = %block_4700a2
  %7146 = add i64 %7145, 3
  store i64 %7146, i64* %3, align 8
  %7147 = load i32, i32* %7093, align 4
  %7148 = zext i32 %7147 to i64
  store i64 %7148, i64* %RDI.i1695, align 8
  %7149 = add i64 %7090, -8
  %7150 = add i64 %7145, 6
  store i64 %7150, i64* %3, align 8
  %7151 = inttoptr i64 %7149 to i32*
  %7152 = load i32, i32* %7151, align 4
  %7153 = zext i32 %7152 to i64
  store i64 %7153, i64* %RSI.i2267, align 8
  %7154 = add i64 %7145, 121
  %7155 = add i64 %7145, 11
  %7156 = load i64, i64* %6, align 8
  %7157 = add i64 %7156, -8
  %7158 = inttoptr i64 %7157 to i64*
  store i64 %7155, i64* %7158, align 8
  store i64 %7157, i64* %6, align 8
  store i64 %7154, i64* %3, align 8
  %call2_4700bd = tail call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* nonnull %0, i64 %7154, %struct.Memory* %MEMORY.77)
  %7159 = load i32, i32* %EAX.i1691, align 4
  %7160 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %7161 = and i32 %7159, 255
  %7162 = tail call i32 @llvm.ctpop.i32(i32 %7161)
  %7163 = trunc i32 %7162 to i8
  %7164 = and i8 %7163, 1
  %7165 = xor i8 %7164, 1
  store i8 %7165, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %7166 = icmp eq i32 %7159, 0
  %7167 = zext i1 %7166 to i8
  store i8 %7167, i8* %29, align 1
  %7168 = lshr i32 %7159, 31
  %7169 = trunc i32 %7168 to i8
  store i8 %7169, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v274 = select i1 %7166, i64 54, i64 9
  %7170 = add i64 %7160, %.v274
  store i64 %7170, i64* %3, align 8
  br i1 %7166, label %block_.L_4700f8, label %block_4700cb

block_4700cb:                                     ; preds = %block_4700b7
  %7171 = load i64, i64* %RBP.i, align 8
  %7172 = add i64 %7171, -52
  %7173 = add i64 %7170, 3
  store i64 %7173, i64* %3, align 8
  %7174 = inttoptr i64 %7172 to i32*
  %7175 = load i32, i32* %7174, align 4
  %7176 = zext i32 %7175 to i64
  store i64 %7176, i64* %RDI.i1695, align 8
  %7177 = add i64 %7171, -32
  %7178 = add i64 %7170, 6
  store i64 %7178, i64* %3, align 8
  %7179 = inttoptr i64 %7177 to i32*
  %7180 = load i32, i32* %7179, align 4
  %7181 = zext i32 %7180 to i64
  store i64 %7181, i64* %RSI.i2267, align 8
  %7182 = add i64 %7170, -17563
  %7183 = add i64 %7170, 11
  %7184 = load i64, i64* %6, align 8
  %7185 = add i64 %7184, -8
  %7186 = inttoptr i64 %7185 to i64*
  store i64 %7183, i64* %7186, align 8
  store i64 %7185, i64* %6, align 8
  store i64 %7182, i64* %3, align 8
  %call2_4700d1 = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %7182, %struct.Memory* %MEMORY.77)
  %7187 = load i32, i32* %EAX.i1691, align 4
  %7188 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %7189 = and i32 %7187, 255
  %7190 = tail call i32 @llvm.ctpop.i32(i32 %7189)
  %7191 = trunc i32 %7190 to i8
  %7192 = and i8 %7191, 1
  %7193 = xor i8 %7192, 1
  store i8 %7193, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %7194 = icmp eq i32 %7187, 0
  %7195 = zext i1 %7194 to i8
  store i8 %7195, i8* %29, align 1
  %7196 = lshr i32 %7187, 31
  %7197 = trunc i32 %7196 to i8
  store i8 %7197, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v275 = select i1 %7194, i64 34, i64 9
  %7198 = add i64 %7188, %.v275
  store i64 %7198, i64* %3, align 8
  br i1 %7194, label %block_.L_4700f8, label %block_4700df

block_4700df:                                     ; preds = %block_4700cb
  %7199 = load i64, i64* %RBP.i, align 8
  %7200 = add i64 %7199, -52
  %7201 = add i64 %7198, 3
  store i64 %7201, i64* %3, align 8
  %7202 = inttoptr i64 %7200 to i32*
  %7203 = load i32, i32* %7202, align 4
  %7204 = zext i32 %7203 to i64
  store i64 %7204, i64* %RDI.i1695, align 8
  %7205 = add i64 %7199, -4
  %7206 = add i64 %7198, 6
  store i64 %7206, i64* %3, align 8
  %7207 = inttoptr i64 %7205 to i32*
  %7208 = load i32, i32* %7207, align 4
  %7209 = zext i32 %7208 to i64
  store i64 %7209, i64* %RSI.i2267, align 8
  %7210 = add i64 %7199, -8
  %7211 = add i64 %7198, 9
  store i64 %7211, i64* %3, align 8
  %7212 = inttoptr i64 %7210 to i32*
  %7213 = load i32, i32* %7212, align 4
  %7214 = zext i32 %7213 to i64
  store i64 %7214, i64* %RDX.i1551, align 8
  %7215 = add i64 %7199, -36
  %7216 = add i64 %7198, 12
  store i64 %7216, i64* %3, align 8
  %7217 = inttoptr i64 %7215 to i32*
  %7218 = load i32, i32* %7217, align 4
  %7219 = zext i32 %7218 to i64
  store i64 %7219, i64* %RCX.i2228, align 8
  %7220 = add i64 %7199, -40
  %7221 = add i64 %7198, 16
  store i64 %7221, i64* %3, align 8
  %7222 = inttoptr i64 %7220 to i32*
  %7223 = load i32, i32* %7222, align 4
  %7224 = zext i32 %7223 to i64
  store i64 %7224, i64* %6859, align 8
  %7225 = add i64 %7199, -44
  %7226 = add i64 %7198, 20
  store i64 %7226, i64* %3, align 8
  %7227 = inttoptr i64 %7225 to i32*
  %7228 = load i32, i32* %7227, align 4
  %7229 = zext i32 %7228 to i64
  store i64 %7229, i64* %6860, align 8
  %7230 = add i64 %7198, 1057
  %7231 = add i64 %7198, 25
  %7232 = load i64, i64* %6, align 8
  %7233 = add i64 %7232, -8
  %7234 = inttoptr i64 %7233 to i64*
  store i64 %7231, i64* %7234, align 8
  store i64 %7233, i64* %6, align 8
  store i64 %7230, i64* %3, align 8
  %call2_4700f3 = tail call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* nonnull %0, i64 %7230, %struct.Memory* %MEMORY.77)
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_4700f8

block_.L_4700f8:                                  ; preds = %block_4700df, %block_4700cb, %block_4700b7, %block_4700a2
  %7235 = phi i64 [ %.pre210, %block_4700df ], [ %7198, %block_4700cb ], [ %7170, %block_4700b7 ], [ %7145, %block_4700a2 ]
  %7236 = load i64, i64* %RBP.i, align 8
  %7237 = add i64 %7236, -52
  %7238 = add i64 %7235, 8
  store i64 %7238, i64* %3, align 8
  %7239 = inttoptr i64 %7237 to i32*
  %7240 = load i32, i32* %7239, align 4
  %7241 = add i32 %7240, 1
  %7242 = zext i32 %7241 to i64
  store i64 %7242, i64* %RAX.i2269, align 8
  %7243 = icmp eq i32 %7240, -1
  %7244 = icmp eq i32 %7241, 0
  %7245 = or i1 %7243, %7244
  %7246 = zext i1 %7245 to i8
  store i8 %7246, i8* %14, align 1
  %7247 = and i32 %7241, 255
  %7248 = tail call i32 @llvm.ctpop.i32(i32 %7247)
  %7249 = trunc i32 %7248 to i8
  %7250 = and i8 %7249, 1
  %7251 = xor i8 %7250, 1
  store i8 %7251, i8* %21, align 1
  %7252 = xor i32 %7241, %7240
  %7253 = lshr i32 %7252, 4
  %7254 = trunc i32 %7253 to i8
  %7255 = and i8 %7254, 1
  store i8 %7255, i8* %26, align 1
  %7256 = zext i1 %7244 to i8
  store i8 %7256, i8* %29, align 1
  %7257 = lshr i32 %7241, 31
  %7258 = trunc i32 %7257 to i8
  store i8 %7258, i8* %32, align 1
  %7259 = lshr i32 %7240, 31
  %7260 = xor i32 %7257, %7259
  %7261 = add nuw nsw i32 %7260, %7257
  %7262 = icmp eq i32 %7261, 2
  %7263 = zext i1 %7262 to i8
  store i8 %7263, i8* %38, align 1
  %7264 = add i64 %7235, 14
  store i64 %7264, i64* %3, align 8
  store i32 %7241, i32* %7239, align 4
  %7265 = load i64, i64* %3, align 8
  %7266 = add i64 %7265, -113
  store i64 %7266, i64* %3, align 8
  br label %block_.L_470095

block_.L_47010b:                                  ; preds = %block_.L_470095
  %7267 = add i64 %7119, 5
  store i64 %7267, i64* %3, align 8
  br label %block_.L_470110

block_.L_470110:                                  ; preds = %block_.L_470081, %block_.L_47010b
  %7268 = phi i64 [ %7087, %block_.L_470081 ], [ %7267, %block_.L_47010b ]
  %7269 = add i64 %7268, 5
  store i64 %7269, i64* %3, align 8
  br label %block_.L_470115

block_.L_470115:                                  ; preds = %block_.L_470110, %block_.L_46ffdc
  %storemerge135 = phi i64 [ %6855, %block_.L_46ffdc ], [ %7269, %block_.L_470110 ]
  %MEMORY.89 = phi %struct.Memory* [ %MEMORY.82, %block_.L_46ffdc ], [ %MEMORY.77, %block_.L_470110 ]
  %7270 = add i64 %storemerge135, 5
  store i64 %7270, i64* %3, align 8
  br label %block_.L_47011a

block_.L_47011a:                                  ; preds = %block_.L_470115, %block_46fea3
  %storemerge134 = phi i64 [ %6446, %block_46fea3 ], [ %7270, %block_.L_470115 ]
  %MEMORY.90 = phi %struct.Memory* [ %call2_46fecc, %block_46fea3 ], [ %MEMORY.89, %block_.L_470115 ]
  %7271 = add i64 %storemerge134, 5
  store i64 %7271, i64* %3, align 8
  br label %block_.L_47011f

block_.L_47011f:                                  ; preds = %block_.L_47011a, %block_46fe32
  %storemerge133 = phi i64 [ %6271, %block_46fe32 ], [ %7271, %block_.L_47011a ]
  %MEMORY.91 = phi %struct.Memory* [ %call2_46fe5b, %block_46fe32 ], [ %MEMORY.90, %block_.L_47011a ]
  %7272 = add i64 %storemerge133, 5
  br label %block_.L_470124.sink.split

block_.L_470124.sink.split:                       ; preds = %block_46eed1, %block_46f033, %block_.L_46f23e, %block_.L_46f3c0, %block_.L_47011f
  %.sink = phi i64 [ %7272, %block_.L_47011f ], [ %2049, %block_.L_46f3c0 ], [ %1473, %block_.L_46f23e ], [ %880, %block_46f033 ], [ %366, %block_46eed1 ]
  %MEMORY.92.ph = phi %struct.Memory* [ %MEMORY.91, %block_.L_47011f ], [ %MEMORY.20, %block_.L_46f3c0 ], [ %MEMORY.15, %block_.L_46f23e ], [ %MEMORY.4, %block_46f033 ], [ %MEMORY.0, %block_46eed1 ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_470124

block_.L_470124:                                  ; preds = %block_46fde0, %block_.L_470124.sink.split
  %7273 = phi i64 [ %6090, %block_46fde0 ], [ %.sink, %block_.L_470124.sink.split ]
  %MEMORY.92 = phi %struct.Memory* [ %MEMORY.77, %block_46fde0 ], [ %MEMORY.92.ph, %block_.L_470124.sink.split ]
  %7274 = load i64, i64* %6, align 8
  %7275 = add i64 %7274, 768
  store i64 %7275, i64* %6, align 8
  %7276 = icmp ugt i64 %7274, -769
  %7277 = zext i1 %7276 to i8
  store i8 %7277, i8* %14, align 1
  %7278 = trunc i64 %7275 to i32
  %7279 = and i32 %7278, 255
  %7280 = tail call i32 @llvm.ctpop.i32(i32 %7279)
  %7281 = trunc i32 %7280 to i8
  %7282 = and i8 %7281, 1
  %7283 = xor i8 %7282, 1
  store i8 %7283, i8* %21, align 1
  %7284 = xor i64 %7275, %7274
  %7285 = lshr i64 %7284, 4
  %7286 = trunc i64 %7285 to i8
  %7287 = and i8 %7286, 1
  store i8 %7287, i8* %26, align 1
  %7288 = icmp eq i64 %7275, 0
  %7289 = zext i1 %7288 to i8
  store i8 %7289, i8* %29, align 1
  %7290 = lshr i64 %7275, 63
  %7291 = trunc i64 %7290 to i8
  store i8 %7291, i8* %32, align 1
  %7292 = lshr i64 %7274, 63
  %7293 = xor i64 %7290, %7292
  %7294 = add nuw nsw i64 %7293, %7290
  %7295 = icmp eq i64 %7294, 2
  %7296 = zext i1 %7295 to i8
  store i8 %7296, i8* %38, align 1
  %7297 = add i64 %7273, 8
  store i64 %7297, i64* %3, align 8
  %7298 = add i64 %7274, 776
  %7299 = inttoptr i64 %7275 to i64*
  %7300 = load i64, i64* %7299, align 8
  store i64 %7300, i64* %RBP.i, align 8
  store i64 %7298, i64* %6, align 8
  %7301 = add i64 %7273, 9
  store i64 %7301, i64* %3, align 8
  %7302 = inttoptr i64 %7298 to i64*
  %7303 = load i64, i64* %7302, align 8
  store i64 %7303, i64* %3, align 8
  %7304 = add i64 %7274, 784
  store i64 %7304, i64* %6, align 8
  ret %struct.Memory* %MEMORY.92
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
define %struct.Memory* @routine_subq__0x300___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -768
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 768
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x40___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 64
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 6
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
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_46ee47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46ee64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58062f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58062f_type* @G__0x58062f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -736
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_46efa7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x30__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 48
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
define %struct.Memory* @routine_jne_.L_46eed6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470124(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_je_.L_46efa2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb4bd20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_movl_0x30__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_je_.L_46ef9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 64
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 6
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
define %struct.Memory* @routine_jne_.L_46ef61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46ef96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580658___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580658_type* @G__0x580658 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -740
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46efa2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46efa7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46efe5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_46f205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f038(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_0x20__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_je_.L_46f1fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jne_.L_46f0c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f0f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580685___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580685_type* @G__0x580685 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -744
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46f1f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x15__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_46f1bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jne_.L_46f145(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f1af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_46f1aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f1aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__0x2__0x1c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jmpq_.L_46f11e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_andl__0x40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 64
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46f1d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f1ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5806b3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5806b3_type* @G__0x5806b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -748
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f1f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_46f243(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f227(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f23e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5806e5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5806e5_type* @G__0x5806e5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -752
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_46f400(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jne_.L_46f271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f3f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jne_.L_46f3ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46f2f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_callq_.chainlinks(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_jge_.L_46f3e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2d4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -720
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -728
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -728
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
define %struct.Memory* @routine_je_.L_46f380(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f3ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.owl_substantial(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f3c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f3a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f3c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580718___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580718_type* @G__0x580718 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -756
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f3ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f3cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f315(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f3ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jmpq_.L_46f24a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46f493(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f480(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f451(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x58__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f485(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46f5fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f4c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f5ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_46f4eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f54e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f52c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
define %struct.Memory* @routine_je_.L_46f549(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f5e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_46f5e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f5bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f5b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f5b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_46f5de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46f5d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f5e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f49a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46f66b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f66b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f6db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46f6db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 76
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -77
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
define %struct.Memory* @routine_callq_.min_eyes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f90c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_46f7ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jle_.L_46f787(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f7c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46f7af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f7c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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
define %struct.Memory* @routine_jmpq_.L_46f907(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_46f820(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f806(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f81b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46f862(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3e8__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f8fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46f8be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f8be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46f8a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46f8b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46f8f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46f8f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_jmpq_.L_46f90c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46fadf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46f9b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46f9e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fad5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46fa16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fad0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46fa4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_46fa4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46facb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46fa91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46fa91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_46fac6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46fac1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46fac1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fadf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46fbe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46fbe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46fb89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fbde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_jne_.L_46fbab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fbd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46fbd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fbe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46fcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46fcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jle_.L_46fc8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fce7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46fcb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fce2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46fcdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46fd73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_46fd2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.update_status(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fd6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_46fd4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fd69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46fd64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fd73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_46fd94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fdd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_46fdb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46fdd1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_46fdcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46fdea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_470124(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -732
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46fe65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46fe65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47011f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46fed6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46fed6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47011a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_46ffe1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46ff5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x50__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_je_.L_46ffdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470115(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_470081(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47000f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470073(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47006e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47006e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x2dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -732
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ffe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -732
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
define %struct.Memory* @routine_jne_.L_470110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47010b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4700f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4700fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_470095(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_470110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x300___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 768
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -769
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
