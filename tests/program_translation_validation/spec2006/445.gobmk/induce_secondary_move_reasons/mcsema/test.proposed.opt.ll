; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x581daa_type = type <{ [8 x i8] }>
%G__0x582c08_type = type <{ [8 x i8] }>
%G__0x582c49_type = type <{ [8 x i8] }>
%G__0x582c84_type = type <{ [8 x i8] }>
%G__0x582cc6_type = type <{ [8 x i8] }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G__0x581daa = global %G__0x581daa_type zeroinitializer
@G__0x582c08 = global %G__0x582c08_type zeroinitializer
@G__0x582c49 = global %G__0x582c49_type zeroinitializer
@G__0x582c84 = global %G__0x582c84_type zeroinitializer
@G__0x582cc6 = global %G__0x582cc6_type zeroinitializer
@G__0xafdfc0 = global %G__0xafdfc0_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_413ec0.extended_chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45da70.disconnect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452950.string_connect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432d50.add_connection_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433070.add_cut_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4345c0.add_strategical_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4771f0.cut_possible(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4860c0.bdist(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488610.is_same_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @induce_secondary_move_reasons(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -744
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 736
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
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 21, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1071 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1069 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %ECX.i1066 = bitcast %union.anon* %50 to i32*
  %RDX.i1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i889 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %EAX.i885 = bitcast %union.anon* %49 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %AL.i = bitcast %union.anon* %49 to i8*
  %RSI.i392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_47e415

block_.L_47e415:                                  ; preds = %block_.L_47ed4c, %entry
  %54 = phi i64 [ %.pre, %entry ], [ %3104, %block_.L_47ed4c ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.33, %block_.L_47ed4c ]
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -8
  %57 = add i64 %54, 7
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, -400
  %61 = icmp ult i32 %59, 400
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %14, align 1
  %63 = and i32 %60, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %21, align 1
  %68 = xor i32 %59, 16
  %69 = xor i32 %68, %60
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %26, align 1
  %73 = icmp eq i32 %60, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %29, align 1
  %75 = lshr i32 %60, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %32, align 1
  %77 = lshr i32 %59, 31
  %78 = xor i32 %75, %77
  %79 = add nuw nsw i32 %78, %77
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %38, align 1
  %82 = icmp ne i8 %76, 0
  %83 = xor i1 %82, %80
  %.v105 = select i1 %83, i64 13, i64 2373
  %84 = add i64 %54, %.v105
  store i64 %84, i64* %3, align 8
  br i1 %83, label %block_47e422, label %block_.L_47ed5a

block_47e422:                                     ; preds = %block_.L_47e415
  %85 = add i64 %84, 4
  store i64 %85, i64* %3, align 8
  %86 = load i32, i32* %58, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %RAX.i1071, align 8
  %88 = add nsw i64 %87, 12099168
  %89 = add i64 %84, 12
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i8*
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  store i64 %92, i64* %RCX.i1069, align 8
  %93 = zext i8 %91 to i32
  %94 = add nsw i32 %93, -3
  %95 = icmp ult i8 %91, 3
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %14, align 1
  %97 = and i32 %94, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97)
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %21, align 1
  %102 = xor i32 %94, %93
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1
  %106 = icmp eq i32 %94, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1
  %108 = lshr i32 %94, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %106, i64 21, i64 26
  %110 = add i64 %84, %.v106
  store i64 %110, i64* %3, align 8
  br i1 %106, label %block_47e437, label %block_.L_47e43c

block_47e437:                                     ; preds = %block_47e422
  %111 = add i64 %110, 2325
  br label %block_.L_47ed4c

block_.L_47e43c:                                  ; preds = %block_47e422
  %112 = add i64 %55, -12
  %113 = add i64 %110, 7
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 0, i32* %114, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_47e443

block_.L_47e443:                                  ; preds = %block_.L_47ed39, %block_.L_47e43c
  %115 = phi i64 [ %.pre80, %block_.L_47e43c ], [ %3070, %block_.L_47ed39 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_47e43c ], [ %MEMORY.31, %block_.L_47ed39 ]
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -12
  %118 = add i64 %115, 4
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, -120
  %122 = icmp ult i32 %120, 120
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %14, align 1
  %124 = and i32 %121, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %21, align 1
  %129 = xor i32 %120, 16
  %130 = xor i32 %129, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %26, align 1
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %29, align 1
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %32, align 1
  %138 = lshr i32 %120, 31
  %139 = xor i32 %136, %138
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %38, align 1
  %143 = icmp ne i8 %137, 0
  %144 = xor i1 %143, %141
  %.v107 = select i1 %144, i64 10, i64 2308
  %145 = add i64 %115, %.v107
  store i64 %145, i64* %3, align 8
  br i1 %144, label %block_47e44d, label %block_.L_47ed47.loopexit

block_47e44d:                                     ; preds = %block_.L_47e443
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1071, align 8
  %146 = add i64 %116, -8
  %147 = add i64 %145, 14
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, 564
  store i64 %151, i64* %RCX.i1069, align 8
  %152 = lshr i64 %151, 63
  %153 = add i64 %151, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %153, i64* %RAX.i1071, align 8
  %154 = icmp ult i64 %153, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %155 = icmp ult i64 %153, %151
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %14, align 1
  %158 = trunc i64 %153 to i32
  %159 = and i32 %158, 252
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %21, align 1
  %164 = xor i64 %151, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %165 = xor i64 %164, %153
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %26, align 1
  %169 = icmp eq i64 %153, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %29, align 1
  %171 = lshr i64 %153, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %32, align 1
  %173 = xor i64 %171, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %174 = xor i64 %171, %152
  %175 = add nuw nsw i64 %173, %174
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %38, align 1
  %178 = add i64 %145, 28
  store i64 %178, i64* %3, align 8
  %179 = load i32, i32* %119, align 4
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %RCX.i1069, align 8
  %181 = shl nsw i64 %180, 2
  %182 = add i64 %151, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %183 = add i64 %182, %181
  %184 = add i64 %145, 32
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDX.i1044, align 8
  %188 = add i64 %116, -28
  %189 = add i64 %145, 35
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %186, i32* %190, align 4
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -28
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, 4
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %192 to i32*
  %196 = load i32, i32* %195, align 4
  store i8 0, i8* %14, align 1
  %197 = and i32 %196, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %202 = icmp eq i32 %196, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %29, align 1
  %204 = lshr i32 %196, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %206 = icmp ne i8 %205, 0
  %.v = select i1 %206, i64 6, i64 11
  %207 = add i64 %194, %.v
  store i64 %207, i64* %3, align 8
  br i1 %206, label %block_47e47a, label %block_.L_47e47f

block_47e47a:                                     ; preds = %block_47e44d
  %208 = add i64 %207, 2253
  store i64 %208, i64* %3, align 8
  br label %block_.L_47ed47

block_.L_47e47f:                                  ; preds = %block_47e44d
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1071, align 8
  %209 = add i64 %207, 14
  store i64 %209, i64* %3, align 8
  %210 = load i32, i32* %195, align 4
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %211, 12
  store i64 %212, i64* %RCX.i1069, align 8
  %213 = lshr i64 %212, 63
  %214 = add i64 %212, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %214, i64* %RAX.i1071, align 8
  %215 = icmp ult i64 %214, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
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
  %225 = xor i64 %212, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
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
  %234 = xor i64 %232, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %235 = xor i64 %232, %213
  %236 = add nuw nsw i64 %234, %235
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1
  %239 = inttoptr i64 %214 to i32*
  %240 = add i64 %207, 24
  store i64 %240, i64* %3, align 8
  %241 = load i32, i32* %239, align 4
  %242 = add i32 %241, -2
  %243 = icmp ult i32 %241, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %14, align 1
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %21, align 1
  %250 = xor i32 %242, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %26, align 1
  %254 = icmp eq i32 %242, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %29, align 1
  %256 = lshr i32 %242, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %32, align 1
  %258 = lshr i32 %241, 31
  %259 = xor i32 %256, %258
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %38, align 1
  %.v108 = select i1 %254, i64 60, i64 30
  %263 = add i64 %207, %.v108
  store i64 %263, i64* %3, align 8
  br i1 %254, label %block_.L_47e4bb, label %block_47e49d

block_47e49d:                                     ; preds = %block_.L_47e47f
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1071, align 8
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -28
  %266 = add i64 %263, 14
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = mul nsw i64 %269, 12
  store i64 %270, i64* %RCX.i1069, align 8
  %271 = lshr i64 %270, 63
  %272 = add i64 %270, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %272, i64* %RAX.i1071, align 8
  %273 = icmp ult i64 %272, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %274 = icmp ult i64 %272, %270
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %14, align 1
  %277 = trunc i64 %272 to i32
  %278 = and i32 %277, 252
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i64 %270, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %284 = xor i64 %283, %272
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %26, align 1
  %288 = icmp eq i64 %272, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %29, align 1
  %290 = lshr i64 %272, 63
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %32, align 1
  %292 = xor i64 %290, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %293 = xor i64 %290, %271
  %294 = add nuw nsw i64 %292, %293
  %295 = icmp eq i64 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %38, align 1
  %297 = inttoptr i64 %272 to i32*
  %298 = add i64 %263, 24
  store i64 %298, i64* %3, align 8
  %299 = load i32, i32* %297, align 4
  %300 = add i32 %299, -8
  %301 = icmp ult i32 %299, 8
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %14, align 1
  %303 = and i32 %300, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %21, align 1
  %308 = xor i32 %300, %299
  %309 = lshr i32 %308, 4
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %26, align 1
  %312 = icmp eq i32 %300, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %29, align 1
  %314 = lshr i32 %300, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %32, align 1
  %316 = lshr i32 %299, 31
  %317 = xor i32 %314, %316
  %318 = add nuw nsw i32 %317, %316
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %38, align 1
  %.v109 = select i1 %312, i64 30, i64 1293
  %321 = add i64 %263, %.v109
  store i64 %321, i64* %3, align 8
  br i1 %312, label %block_.L_47e4bb, label %block_.L_47e9aa

block_.L_47e4bb:                                  ; preds = %block_47e49d, %block_.L_47e47f
  %322 = phi i64 [ %321, %block_47e49d ], [ %263, %block_.L_47e47f ]
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1071, align 8
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -28
  %325 = add i64 %322, 14
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = mul nsw i64 %328, 12
  store i64 %329, i64* %RCX.i1069, align 8
  %330 = lshr i64 %329, 63
  %331 = add i64 %329, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %331, i64* %RDX.i1044, align 8
  %332 = icmp ult i64 %331, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %333 = icmp ult i64 %331, %329
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = trunc i64 %331 to i32
  %337 = and i32 %336, 252
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %21, align 1
  %342 = xor i64 %329, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %343 = xor i64 %342, %331
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %26, align 1
  %347 = icmp eq i64 %331, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %29, align 1
  %349 = lshr i64 %331, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %32, align 1
  %351 = xor i64 %349, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %352 = xor i64 %349, %330
  %353 = add nuw nsw i64 %351, %352
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %38, align 1
  %356 = add i64 %329, add (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 4)
  %357 = add i64 %322, 27
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RSI.i994, align 8
  %361 = add i64 %323, -24
  %362 = add i64 %322, 30
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %359, i32* %363, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -28
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 4
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 12
  store i64 %371, i64* %RCX.i1069, align 8
  %372 = lshr i64 %371, 63
  %373 = load i64, i64* %RAX.i1071, align 8
  %374 = add i64 %371, %373
  store i64 %374, i64* %RAX.i1071, align 8
  %375 = icmp ult i64 %374, %373
  %376 = icmp ult i64 %374, %371
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %14, align 1
  %379 = trunc i64 %374 to i32
  %380 = and i32 %379, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %21, align 1
  %385 = xor i64 %371, %373
  %386 = xor i64 %385, %374
  %387 = lshr i64 %386, 4
  %388 = trunc i64 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %26, align 1
  %390 = icmp eq i64 %374, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %29, align 1
  %392 = lshr i64 %374, 63
  %393 = trunc i64 %392 to i8
  store i8 %393, i8* %32, align 1
  %394 = lshr i64 %373, 63
  %395 = xor i64 %392, %394
  %396 = xor i64 %392, %372
  %397 = add nuw nsw i64 %395, %396
  %398 = icmp eq i64 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %38, align 1
  %400 = inttoptr i64 %374 to i32*
  %401 = add i64 %366, 14
  store i64 %401, i64* %3, align 8
  %402 = load i32, i32* %400, align 4
  %403 = add i32 %402, -2
  %404 = icmp ult i32 %402, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = and i32 %403, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i32 %403, %402
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %26, align 1
  %415 = icmp eq i32 %403, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %29, align 1
  %417 = lshr i32 %403, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %32, align 1
  %419 = lshr i32 %402, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %38, align 1
  %.v129 = select i1 %415, i64 20, i64 54
  %424 = add i64 %366, %.v129
  store i64 %424, i64* %3, align 8
  br i1 %415, label %block_47e4ed, label %block_.L_47e50f

block_47e4ed:                                     ; preds = %block_.L_47e4bb
  store i64 3, i64* %RAX.i1071, align 8
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -32
  %427 = add i64 %424, 12
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 1, i32* %428, align 4
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -24
  %431 = load i64, i64* %3, align 8
  %432 = add i64 %431, 4
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RCX.i1069, align 8
  %436 = add nsw i64 %435, 12099168
  %437 = add i64 %431, 12
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i8*
  %439 = load i8, i8* %438, align 1
  %440 = zext i8 %439 to i64
  store i64 %440, i64* %RDX.i1044, align 8
  %441 = load i64, i64* %RAX.i1071, align 8
  %442 = zext i8 %439 to i32
  %443 = zext i8 %439 to i64
  %444 = trunc i64 %441 to i32
  %445 = sub i32 %444, %442
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX.i1071, align 8
  %447 = icmp ult i32 %444, %442
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %14, align 1
  %449 = and i32 %445, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %21, align 1
  %454 = xor i64 %443, %441
  %455 = trunc i64 %454 to i32
  %456 = xor i32 %455, %445
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %26, align 1
  %460 = icmp eq i32 %445, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %29, align 1
  %462 = lshr i32 %445, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %32, align 1
  %464 = lshr i32 %444, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %38, align 1
  %469 = add i64 %429, -36
  %470 = add i64 %431, 17
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  store i32 %445, i32* %471, align 4
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 27
  store i64 %473, i64* %3, align 8
  br label %block_.L_47e525

block_.L_47e50f:                                  ; preds = %block_.L_47e4bb
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -32
  %476 = add i64 %424, 7
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  store i32 0, i32* %477, align 4
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -24
  %480 = load i64, i64* %3, align 8
  %481 = add i64 %480, 4
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RAX.i1071, align 8
  %485 = add nsw i64 %484, 12099168
  %486 = add i64 %480, 12
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i8*
  %488 = load i8, i8* %487, align 1
  %489 = zext i8 %488 to i64
  store i64 %489, i64* %RCX.i1069, align 8
  %490 = add i64 %478, -36
  %491 = zext i8 %488 to i32
  %492 = add i64 %480, 15
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %490 to i32*
  store i32 %491, i32* %493, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_47e525

block_.L_47e525:                                  ; preds = %block_.L_47e50f, %block_47e4ed
  %494 = phi i64 [ %.pre88, %block_.L_47e50f ], [ %473, %block_47e4ed ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1071, align 8
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -24
  %497 = add i64 %494, 14
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = mul nsw i64 %500, 380
  store i64 %501, i64* %RCX.i1069, align 8
  %502 = lshr i64 %501, 63
  %503 = add i64 %501, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %503, i64* %RAX.i1071, align 8
  %504 = icmp ult i64 %503, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %505 = icmp ult i64 %503, %501
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %14, align 1
  %508 = trunc i64 %503 to i32
  %509 = and i32 %508, 252
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i64 %501, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %515 = xor i64 %514, %503
  %516 = lshr i64 %515, 4
  %517 = trunc i64 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %26, align 1
  %519 = icmp eq i64 %503, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %29, align 1
  %521 = lshr i64 %503, 63
  %522 = trunc i64 %521 to i8
  store i8 %522, i8* %32, align 1
  %523 = xor i64 %521, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %524 = xor i64 %521, %502
  %525 = add nuw nsw i64 %523, %524
  %526 = icmp eq i64 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %38, align 1
  %528 = add i64 %501, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %529 = add i64 %494, 31
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  store i8 0, i8* %14, align 1
  %532 = and i32 %531, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %537 = icmp eq i32 %531, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %29, align 1
  %539 = lshr i32 %531, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v130 = select i1 %537, i64 37, i64 42
  %541 = add i64 %494, %.v130
  store i64 %541, i64* %3, align 8
  br i1 %537, label %block_47e54a, label %block_.L_47e54f

block_47e54a:                                     ; preds = %block_.L_47e525
  %542 = add i64 %541, 2031
  br label %block_.L_47ed39

block_.L_47e54f:                                  ; preds = %block_.L_47e525
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1071, align 8
  %543 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %543, i64* %RCX.i1069, align 8
  %544 = add i64 %541, 22
  store i64 %544, i64* %3, align 8
  %545 = load i32, i32* %498, align 4
  %546 = sext i32 %545 to i64
  %547 = mul nsw i64 %546, 76
  store i64 %547, i64* %RDX.i1044, align 8
  %548 = lshr i64 %547, 63
  %549 = add i64 %547, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %549, i64* %RAX.i1071, align 8
  %550 = icmp ult i64 %549, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %551 = icmp ult i64 %549, %547
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %14, align 1
  %554 = trunc i64 %549 to i32
  %555 = and i32 %554, 252
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %21, align 1
  %560 = xor i64 %547, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %561 = xor i64 %560, %549
  %562 = lshr i64 %561, 4
  %563 = trunc i64 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %26, align 1
  %565 = icmp eq i64 %549, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %29, align 1
  %567 = lshr i64 %549, 63
  %568 = trunc i64 %567 to i8
  store i8 %568, i8* %32, align 1
  %569 = xor i64 %567, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %570 = xor i64 %567, %548
  %571 = add nuw nsw i64 %569, %570
  %572 = icmp eq i64 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %38, align 1
  %574 = add i64 %547, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %575 = add i64 %541, 33
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = mul nsw i64 %578, 104
  store i64 %579, i64* %RAX.i1071, align 8
  %580 = lshr i64 %579, 63
  %581 = add i64 %579, %543
  store i64 %581, i64* %RCX.i1069, align 8
  %582 = icmp ult i64 %581, %543
  %583 = icmp ult i64 %581, %579
  %584 = or i1 %582, %583
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %14, align 1
  %586 = trunc i64 %581 to i32
  %587 = and i32 %586, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %21, align 1
  %592 = xor i64 %579, %543
  %593 = xor i64 %592, %581
  %594 = lshr i64 %593, 4
  %595 = trunc i64 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %26, align 1
  %597 = icmp eq i64 %581, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %29, align 1
  %599 = lshr i64 %581, 63
  %600 = trunc i64 %599 to i8
  store i8 %600, i8* %32, align 1
  %601 = lshr i64 %543, 63
  %602 = xor i64 %599, %601
  %603 = xor i64 %599, %580
  %604 = add nuw nsw i64 %602, %603
  %605 = icmp eq i64 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %38, align 1
  %607 = add i64 %581, 60
  %608 = add i64 %541, 44
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = add i32 %610, -5
  %612 = icmp ult i32 %610, 5
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %14, align 1
  %614 = and i32 %611, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %21, align 1
  %619 = xor i32 %611, %610
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %26, align 1
  %623 = icmp eq i32 %611, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %29, align 1
  %625 = lshr i32 %611, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %32, align 1
  %627 = lshr i32 %610, 31
  %628 = xor i32 %625, %627
  %629 = add nuw nsw i32 %628, %627
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %38, align 1
  %.v131 = select i1 %623, i64 50, i64 55
  %632 = add i64 %541, %.v131
  store i64 %632, i64* %3, align 8
  br i1 %623, label %block_47e581, label %block_.L_47e586

block_47e581:                                     ; preds = %block_.L_47e54f
  %633 = add i64 %632, 1976
  br label %block_.L_47ed39

block_.L_47e586:                                  ; preds = %block_.L_47e54f
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -32
  %636 = add i64 %632, 4
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  store i8 0, i8* %14, align 1
  %639 = and i32 %638, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %644 = icmp eq i32 %638, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %29, align 1
  %646 = lshr i32 %638, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v132 = select i1 %644, i64 10, i64 52
  %648 = add i64 %632, %.v132
  store i64 %648, i64* %3, align 8
  br i1 %644, label %block_47e590, label %block_.L_47e5ba

block_47e590:                                     ; preds = %block_.L_47e586
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1071, align 8
  %649 = add i64 %634, -8
  %650 = add i64 %648, 14
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = sext i32 %652 to i64
  %654 = mul nsw i64 %653, 564
  store i64 %654, i64* %RCX.i1069, align 8
  %655 = lshr i64 %654, 63
  %656 = add i64 %654, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %656, i64* %RAX.i1071, align 8
  %657 = icmp ult i64 %656, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %658 = icmp ult i64 %656, %654
  %659 = or i1 %657, %658
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %14, align 1
  %661 = trunc i64 %656 to i32
  %662 = and i32 %661, 252
  %663 = tail call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  store i8 %666, i8* %21, align 1
  %667 = xor i64 %654, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %668 = xor i64 %667, %656
  %669 = lshr i64 %668, 4
  %670 = trunc i64 %669 to i8
  %671 = and i8 %670, 1
  store i8 %671, i8* %26, align 1
  %672 = icmp eq i64 %656, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %29, align 1
  %674 = lshr i64 %656, 63
  %675 = trunc i64 %674 to i8
  store i8 %675, i8* %32, align 1
  %676 = xor i64 %674, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %677 = xor i64 %674, %655
  %678 = add nuw nsw i64 %676, %677
  %679 = icmp eq i64 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %38, align 1
  %681 = add i64 %654, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 552)
  %682 = add i64 %648, 31
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  store i8 0, i8* %14, align 1
  %685 = and i32 %684, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %690 = icmp eq i32 %684, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %29, align 1
  %692 = lshr i32 %684, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v159 = select i1 %690, i64 37, i64 42
  %694 = add i64 %648, %.v159
  store i64 %694, i64* %3, align 8
  br i1 %690, label %block_47e5b5, label %block_.L_47e5ba

block_47e5b5:                                     ; preds = %block_47e590
  %695 = add i64 %694, 1924
  br label %block_.L_47ed39

block_.L_47e5ba:                                  ; preds = %block_47e590, %block_.L_47e586
  %696 = phi i64 [ %694, %block_47e590 ], [ %648, %block_.L_47e586 ]
  store i64 1, i64* %RDX.i1044, align 8
  %697 = add i64 %634, -688
  store i64 %697, i64* %RSI.i994, align 8
  %698 = add i64 %634, -24
  %699 = add i64 %696, 15
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RDI.i889, align 8
  %703 = add i64 %696, -435962
  %704 = add i64 %696, 20
  %705 = load i64, i64* %6, align 8
  %706 = add i64 %705, -8
  %707 = inttoptr i64 %706 to i64*
  store i64 %704, i64* %707, align 8
  store i64 %706, i64* %6, align 8
  store i64 %703, i64* %3, align 8
  %call2_47e5c9 = tail call %struct.Memory* @sub_413ec0.extended_chainlinks(%struct.State* nonnull %0, i64 %703, %struct.Memory* %MEMORY.1)
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -40
  %710 = load i32, i32* %EAX.i885, align 4
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 3
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %709 to i32*
  store i32 %710, i32* %713, align 4
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -16
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 7
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %715 to i32*
  store i32 0, i32* %718, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_47e5d8

block_.L_47e5d8:                                  ; preds = %block_.L_47e992, %block_.L_47e5ba
  %719 = phi i64 [ %.pre89, %block_.L_47e5ba ], [ %1808, %block_.L_47e992 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_.L_47e5ba ], [ %MEMORY.6, %block_.L_47e992 ]
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -16
  %722 = add i64 %719, 3
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX.i1071, align 8
  %726 = add i64 %720, -40
  %727 = add i64 %719, 6
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = sub i32 %724, %729
  %731 = icmp ult i32 %724, %729
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %14, align 1
  %733 = and i32 %730, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %21, align 1
  %738 = xor i32 %729, %724
  %739 = xor i32 %738, %730
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %26, align 1
  %743 = icmp eq i32 %730, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %29, align 1
  %745 = lshr i32 %730, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %32, align 1
  %747 = lshr i32 %724, 31
  %748 = lshr i32 %729, 31
  %749 = xor i32 %748, %747
  %750 = xor i32 %745, %747
  %751 = add nuw nsw i32 %750, %749
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %38, align 1
  %754 = icmp ne i8 %746, 0
  %755 = xor i1 %754, %752
  %.v133 = select i1 %755, i64 12, i64 973
  %756 = add i64 %719, %.v133
  store i64 %756, i64* %3, align 8
  br i1 %755, label %block_47e5e4, label %block_.L_47e9a5

block_47e5e4:                                     ; preds = %block_.L_47e5d8
  %757 = add i64 %756, 3
  store i64 %757, i64* %3, align 8
  %758 = load i32, i32* %723, align 4
  %759 = add i32 %758, 1
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RAX.i1071, align 8
  %761 = icmp eq i32 %758, -1
  %762 = icmp eq i32 %759, 0
  %763 = or i1 %761, %762
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %14, align 1
  %765 = and i32 %759, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i32 %759, %758
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %26, align 1
  %774 = zext i1 %762 to i8
  store i8 %774, i8* %29, align 1
  %775 = lshr i32 %759, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %32, align 1
  %777 = lshr i32 %758, 31
  %778 = xor i32 %775, %777
  %779 = add nuw nsw i32 %778, %775
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %38, align 1
  %782 = add i64 %720, -20
  %783 = add i64 %756, 9
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  store i32 %759, i32* %784, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_47e5ed

block_.L_47e5ed:                                  ; preds = %block_.L_47e984, %block_47e5e4
  %785 = phi i64 [ %.pre90, %block_47e5e4 ], [ %1779, %block_.L_47e984 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_47e5e4 ], [ %MEMORY.18, %block_.L_47e984 ]
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -20
  %788 = add i64 %785, 3
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i1071, align 8
  %792 = add i64 %786, -40
  %793 = add i64 %785, 6
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sub i32 %790, %795
  %797 = icmp ult i32 %790, %795
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %14, align 1
  %799 = and i32 %796, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  %804 = xor i32 %795, %790
  %805 = xor i32 %804, %796
  %806 = lshr i32 %805, 4
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  store i8 %808, i8* %26, align 1
  %809 = icmp eq i32 %796, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %29, align 1
  %811 = lshr i32 %796, 31
  %812 = trunc i32 %811 to i8
  store i8 %812, i8* %32, align 1
  %813 = lshr i32 %790, 31
  %814 = lshr i32 %795, 31
  %815 = xor i32 %814, %813
  %816 = xor i32 %811, %813
  %817 = add nuw nsw i32 %816, %815
  %818 = icmp eq i32 %817, 2
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %38, align 1
  %820 = icmp ne i8 %812, 0
  %821 = xor i1 %820, %818
  %.v101 = select i1 %821, i64 12, i64 933
  %822 = add i64 %785, %.v101
  store i64 %822, i64* %3, align 8
  %823 = add i64 %786, -16
  br i1 %821, label %block_47e5f9, label %block_.L_47e992

block_47e5f9:                                     ; preds = %block_.L_47e5ed
  %824 = add i64 %822, 4
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = sext i32 %826 to i64
  store i64 %827, i64* %RAX.i1071, align 8
  %828 = shl nsw i64 %827, 2
  %829 = add i64 %786, -688
  %830 = add i64 %829, %828
  %831 = add i64 %822, 11
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RCX.i1069, align 8
  %835 = add i64 %786, -692
  %836 = add i64 %822, 17
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  store i32 %833, i32* %837, align 4
  %838 = load i64, i64* %RBP.i, align 8
  %839 = add i64 %838, -20
  %840 = load i64, i64* %3, align 8
  %841 = add i64 %840, 4
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %839 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = sext i32 %843 to i64
  store i64 %844, i64* %RAX.i1071, align 8
  %845 = shl nsw i64 %844, 2
  %846 = add i64 %838, -688
  %847 = add i64 %846, %845
  %848 = add i64 %840, 11
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RCX.i1069, align 8
  %852 = add i64 %838, -696
  %853 = add i64 %840, 17
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  store i32 %850, i32* %854, align 4
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -692
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, 7
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %856 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = sext i32 %860 to i64
  store i64 %861, i64* %RAX.i1071, align 8
  %862 = add nsw i64 %861, 12099168
  %863 = add i64 %857, 15
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i8*
  %865 = load i8, i8* %864, align 1
  %866 = zext i8 %865 to i64
  store i64 %866, i64* %RCX.i1069, align 8
  %867 = add i64 %855, -696
  %868 = add i64 %857, 22
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = sext i32 %870 to i64
  store i64 %871, i64* %RAX.i1071, align 8
  %872 = add nsw i64 %871, 12099168
  %873 = add i64 %857, 30
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i8*
  %875 = load i8, i8* %874, align 1
  %876 = zext i8 %875 to i64
  store i64 %876, i64* %RDX.i1044, align 8
  %877 = zext i8 %865 to i32
  %878 = zext i8 %875 to i32
  %879 = sub nsw i32 %877, %878
  %880 = icmp ult i8 %865, %875
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %14, align 1
  %882 = and i32 %879, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = xor i8 %875, %865
  %888 = zext i8 %887 to i32
  %889 = xor i32 %888, %879
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %26, align 1
  %893 = icmp eq i32 %879, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %29, align 1
  %895 = lshr i32 %879, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v134 = select i1 %893, i64 43, i64 38
  %897 = add i64 %857, %.v134
  store i64 %897, i64* %3, align 8
  br i1 %893, label %block_.L_47e646, label %block_.L_47e984

block_.L_47e646:                                  ; preds = %block_47e5f9
  %898 = add i64 %855, -32
  %899 = add i64 %897, 4
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  store i8 0, i8* %14, align 1
  %902 = and i32 %901, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %907 = icmp eq i32 %901, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %29, align 1
  %909 = lshr i32 %901, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v135 = select i1 %907, i64 80, i64 10
  %911 = add i64 %897, %.v135
  store i64 %911, i64* %3, align 8
  br i1 %907, label %block_.L_47e696, label %block_47e650

block_47e650:                                     ; preds = %block_.L_47e646
  %912 = add i64 %911, 7
  store i64 %912, i64* %3, align 8
  %913 = load i32, i32* %859, align 4
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RAX.i1071, align 8
  %915 = add nsw i64 %914, 12099168
  %916 = add i64 %911, 15
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i8*
  %918 = load i8, i8* %917, align 1
  %919 = zext i8 %918 to i64
  store i64 %919, i64* %RCX.i1069, align 8
  %920 = add i64 %855, -24
  %921 = add i64 %911, 19
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = sext i32 %923 to i64
  store i64 %924, i64* %RAX.i1071, align 8
  %925 = add nsw i64 %924, 12099168
  %926 = add i64 %911, 27
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i8*
  %928 = load i8, i8* %927, align 1
  %929 = zext i8 %928 to i64
  store i64 %929, i64* %RDX.i1044, align 8
  %930 = zext i8 %918 to i32
  %931 = zext i8 %928 to i32
  %932 = sub nsw i32 %930, %931
  %933 = icmp ult i8 %918, %928
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %14, align 1
  %935 = and i32 %932, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %21, align 1
  %940 = xor i8 %928, %918
  %941 = zext i8 %940 to i32
  %942 = xor i32 %941, %932
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %26, align 1
  %946 = icmp eq i32 %932, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %29, align 1
  %948 = lshr i32 %932, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %946, i64 70, i64 35
  %950 = add i64 %911, %.v136
  store i64 %950, i64* %3, align 8
  br i1 %946, label %block_.L_47e696, label %block_47e673

block_47e673:                                     ; preds = %block_47e650
  %951 = zext i32 %923 to i64
  %952 = xor i64 %951, %924
  %953 = trunc i64 %952 to i32
  %954 = and i64 %952, 4294967295
  store i64 %954, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  %955 = and i32 %953, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %21, align 1
  %960 = icmp eq i32 %953, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %29, align 1
  %962 = lshr i32 %953, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %964 = and i64 %952, 4294967295
  store i64 %964, i64* %RDX.i1044, align 8
  %965 = add i64 %950, 10
  store i64 %965, i64* %3, align 8
  %966 = load i32, i32* %859, align 4
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RDI.i889, align 8
  %968 = add i64 %950, 16
  store i64 %968, i64* %3, align 8
  %969 = load i32, i32* %869, align 4
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RSI.i994, align 8
  %971 = add i64 %950, -134147
  %972 = add i64 %950, 21
  %973 = load i64, i64* %6, align 8
  %974 = add i64 %973, -8
  %975 = inttoptr i64 %974 to i64*
  store i64 %972, i64* %975, align 8
  store i64 %974, i64* %6, align 8
  store i64 %971, i64* %3, align 8
  %call2_47e683 = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %971, %struct.Memory* %MEMORY.6)
  %976 = load i32, i32* %EAX.i885, align 4
  %977 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %978 = and i32 %976, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %983 = icmp eq i32 %976, 0
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %29, align 1
  %985 = lshr i32 %976, 31
  %986 = trunc i32 %985 to i8
  store i8 %986, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v137 = select i1 %983, i64 9, i64 14
  %987 = add i64 %977, %.v137
  store i64 %987, i64* %3, align 8
  br i1 %983, label %block_.L_47e984, label %block_47e673.block_.L_47e696_crit_edge

block_47e673.block_.L_47e696_crit_edge:           ; preds = %block_47e673
  %.pre91 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47e696

block_.L_47e696:                                  ; preds = %block_47e673.block_.L_47e696_crit_edge, %block_47e650, %block_.L_47e646
  %988 = phi i64 [ %987, %block_47e673.block_.L_47e696_crit_edge ], [ %950, %block_47e650 ], [ %911, %block_.L_47e646 ]
  %989 = phi i64 [ %.pre91, %block_47e673.block_.L_47e696_crit_edge ], [ %855, %block_47e650 ], [ %855, %block_.L_47e646 ]
  %990 = add i64 %989, -32
  %991 = add i64 %988, 4
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  store i8 0, i8* %14, align 1
  %994 = and i32 %993, 255
  %995 = tail call i32 @llvm.ctpop.i32(i32 %994)
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  store i8 %998, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %999 = icmp eq i32 %993, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %29, align 1
  %1001 = lshr i32 %993, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %999, i64 10, i64 80
  %1003 = add i64 %988, %.v138
  store i64 %1003, i64* %3, align 8
  br i1 %999, label %block_47e6a0, label %block_.L_47e6e6

block_47e6a0:                                     ; preds = %block_.L_47e696
  %1004 = add i64 %989, -692
  %1005 = add i64 %1003, 7
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RAX.i1071, align 8
  %1009 = add nsw i64 %1008, 12099168
  %1010 = add i64 %1003, 15
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i8*
  %1012 = load i8, i8* %1011, align 1
  %1013 = zext i8 %1012 to i64
  store i64 %1013, i64* %RCX.i1069, align 8
  %1014 = add i64 %989, -24
  %1015 = add i64 %1003, 19
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = sext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i1071, align 8
  %1019 = add nsw i64 %1018, 12099168
  %1020 = add i64 %1003, 27
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i8*
  %1022 = load i8, i8* %1021, align 1
  %1023 = zext i8 %1022 to i64
  store i64 %1023, i64* %RDX.i1044, align 8
  %1024 = zext i8 %1012 to i32
  %1025 = zext i8 %1022 to i32
  %1026 = sub nsw i32 %1024, %1025
  %1027 = icmp ult i8 %1012, %1022
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i8 %1022, %1012
  %1035 = zext i8 %1034 to i32
  %1036 = xor i32 %1035, %1026
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %26, align 1
  %1040 = icmp eq i32 %1026, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %29, align 1
  %1042 = lshr i32 %1026, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %1040, i64 70, i64 35
  %1044 = add i64 %1003, %.v157
  store i64 %1044, i64* %3, align 8
  br i1 %1040, label %block_.L_47e6e6, label %block_47e6c3

block_47e6c3:                                     ; preds = %block_47e6a0
  %1045 = zext i32 %1017 to i64
  %1046 = xor i64 %1045, %1018
  %1047 = trunc i64 %1046 to i32
  %1048 = and i64 %1046, 4294967295
  store i64 %1048, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  %1049 = and i32 %1047, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %21, align 1
  %1054 = icmp eq i32 %1047, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %29, align 1
  %1056 = lshr i32 %1047, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1058 = and i64 %1046, 4294967295
  store i64 %1058, i64* %RDX.i1044, align 8
  %1059 = add i64 %1044, 10
  store i64 %1059, i64* %3, align 8
  %1060 = load i32, i32* %1006, align 4
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RDI.i889, align 8
  %1062 = add i64 %989, -696
  %1063 = add i64 %1044, 16
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RSI.i994, align 8
  %1067 = add i64 %1044, -179571
  %1068 = add i64 %1044, 21
  %1069 = load i64, i64* %6, align 8
  %1070 = add i64 %1069, -8
  %1071 = inttoptr i64 %1070 to i64*
  store i64 %1068, i64* %1071, align 8
  store i64 %1070, i64* %6, align 8
  store i64 %1067, i64* %3, align 8
  %call2_47e6d3 = tail call %struct.Memory* @sub_452950.string_connect(%struct.State* nonnull %0, i64 %1067, %struct.Memory* %MEMORY.6)
  %1072 = load i32, i32* %EAX.i885, align 4
  %1073 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1074 = and i32 %1072, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1079 = icmp eq i32 %1072, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %29, align 1
  %1081 = lshr i32 %1072, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v158 = select i1 %1079, i64 9, i64 14
  %1083 = add i64 %1073, %.v158
  store i64 %1083, i64* %3, align 8
  br i1 %1079, label %block_.L_47e984, label %block_47e6c3.block_.L_47e6e6_crit_edge

block_47e6c3.block_.L_47e6e6_crit_edge:           ; preds = %block_47e6c3
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47e6e6

block_.L_47e6e6:                                  ; preds = %block_.L_47e696, %block_47e6c3.block_.L_47e6e6_crit_edge, %block_47e6a0
  %1084 = phi i64 [ %1003, %block_.L_47e696 ], [ %1044, %block_47e6a0 ], [ %1083, %block_47e6c3.block_.L_47e6e6_crit_edge ]
  %1085 = phi i64 [ %989, %block_.L_47e696 ], [ %989, %block_47e6a0 ], [ %.pre92, %block_47e6c3.block_.L_47e6e6_crit_edge ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_.L_47e696 ], [ %MEMORY.6, %block_47e6a0 ], [ %call2_47e6d3, %block_47e6c3.block_.L_47e6e6_crit_edge ]
  %1086 = add i64 %1085, -32
  %1087 = add i64 %1084, 4
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  store i8 0, i8* %14, align 1
  %1090 = and i32 %1089, 255
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1095 = icmp eq i32 %1089, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %29, align 1
  %1097 = lshr i32 %1089, 31
  %1098 = trunc i32 %1097 to i8
  store i8 %1098, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %1095, i64 50, i64 10
  %1099 = add i64 %1084, %.v139
  store i64 %1099, i64* %3, align 8
  br i1 %1095, label %block_.L_47e718, label %block_47e6f0

block_47e6f0:                                     ; preds = %block_.L_47e6e6
  %1100 = add i64 %1085, -692
  %1101 = add i64 %1099, 7
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i1071, align 8
  %1105 = add nsw i64 %1104, 12099168
  %1106 = add i64 %1099, 15
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i8*
  %1108 = load i8, i8* %1107, align 1
  %1109 = zext i8 %1108 to i64
  store i64 %1109, i64* %RCX.i1069, align 8
  %1110 = add i64 %1085, -24
  %1111 = add i64 %1099, 19
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RAX.i1071, align 8
  %1115 = add nsw i64 %1114, 12099168
  %1116 = add i64 %1099, 27
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i8*
  %1118 = load i8, i8* %1117, align 1
  %1119 = zext i8 %1118 to i64
  store i64 %1119, i64* %RDX.i1044, align 8
  %1120 = zext i8 %1108 to i32
  %1121 = zext i8 %1118 to i32
  %1122 = sub nsw i32 %1120, %1121
  %1123 = icmp ult i8 %1108, %1118
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %14, align 1
  %1125 = and i32 %1122, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  %1130 = xor i8 %1118, %1108
  %1131 = zext i8 %1130 to i32
  %1132 = xor i32 %1131, %1122
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %26, align 1
  %1136 = icmp eq i32 %1122, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %29, align 1
  %1138 = lshr i32 %1122, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %1136, i64 35, i64 40
  %1140 = add i64 %1099, %.v140
  store i64 %1140, i64* %3, align 8
  br i1 %1136, label %block_.L_47e984, label %block_.L_47e718

block_.L_47e718:                                  ; preds = %block_47e6f0, %block_.L_47e6e6
  %1141 = phi i64 [ %1140, %block_47e6f0 ], [ %1099, %block_.L_47e6e6 ]
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %3, align 8
  %1143 = load i32, i32* %1088, align 4
  store i8 0, i8* %14, align 1
  %1144 = and i32 %1143, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1149 = icmp eq i32 %1143, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %29, align 1
  %1151 = lshr i32 %1143, 31
  %1152 = trunc i32 %1151 to i8
  store i8 %1152, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v141 = select i1 %1149, i64 10, i64 80
  %1153 = add i64 %1141, %.v141
  store i64 %1153, i64* %3, align 8
  br i1 %1149, label %block_47e722, label %block_.L_47e768

block_47e722:                                     ; preds = %block_.L_47e718
  %1154 = add i64 %1085, -692
  %1155 = add i64 %1153, 7
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RAX.i1071, align 8
  %1159 = add nsw i64 %1158, 12099168
  %1160 = add i64 %1153, 15
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i8*
  %1162 = load i8, i8* %1161, align 1
  %1163 = zext i8 %1162 to i64
  store i64 %1163, i64* %RCX.i1069, align 8
  %1164 = add i64 %1085, -24
  %1165 = add i64 %1153, 19
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i1071, align 8
  %1169 = add nsw i64 %1168, 12099168
  %1170 = add i64 %1153, 27
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i8*
  %1172 = load i8, i8* %1171, align 1
  %1173 = zext i8 %1172 to i64
  store i64 %1173, i64* %RDX.i1044, align 8
  %1174 = zext i8 %1162 to i32
  %1175 = zext i8 %1172 to i32
  %1176 = sub nsw i32 %1174, %1175
  %1177 = icmp ult i8 %1162, %1172
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = and i32 %1176, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i8 %1172, %1162
  %1185 = zext i8 %1184 to i32
  %1186 = xor i32 %1185, %1176
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %26, align 1
  %1190 = icmp eq i32 %1176, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1176, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v155 = select i1 %1190, i64 35, i64 70
  %1194 = add i64 %1153, %.v155
  store i64 %1194, i64* %3, align 8
  br i1 %1190, label %block_47e745, label %block_.L_47e768

block_47e745:                                     ; preds = %block_47e722
  %1195 = zext i32 %1167 to i64
  %1196 = xor i64 %1195, %1168
  %1197 = trunc i64 %1196 to i32
  %1198 = and i64 %1196, 4294967295
  store i64 %1198, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  %1199 = and i32 %1197, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  %1204 = icmp eq i32 %1197, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %29, align 1
  %1206 = lshr i32 %1197, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1208 = and i64 %1196, 4294967295
  store i64 %1208, i64* %RDX.i1044, align 8
  %1209 = add i64 %1194, 10
  store i64 %1209, i64* %3, align 8
  %1210 = load i32, i32* %1156, align 4
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RDI.i889, align 8
  %1212 = add i64 %1085, -696
  %1213 = add i64 %1194, 16
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RSI.i994, align 8
  %1217 = add i64 %1194, -134357
  %1218 = add i64 %1194, 21
  %1219 = load i64, i64* %6, align 8
  %1220 = add i64 %1219, -8
  %1221 = inttoptr i64 %1220 to i64*
  store i64 %1218, i64* %1221, align 8
  store i64 %1220, i64* %6, align 8
  store i64 %1217, i64* %3, align 8
  %call2_47e755 = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %1217, %struct.Memory* %MEMORY.8)
  %1222 = load i32, i32* %EAX.i885, align 4
  %1223 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1224 = and i32 %1222, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1229 = icmp eq i32 %1222, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1222, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %1229, i64 9, i64 14
  %1233 = add i64 %1223, %.v156
  store i64 %1233, i64* %3, align 8
  br i1 %1229, label %block_.L_47e984, label %block_47e745.block_.L_47e768_crit_edge

block_47e745.block_.L_47e768_crit_edge:           ; preds = %block_47e745
  %.pre93 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47e768

block_.L_47e768:                                  ; preds = %block_47e722, %block_.L_47e718, %block_47e745.block_.L_47e768_crit_edge
  %1234 = phi i64 [ %1085, %block_.L_47e718 ], [ %1085, %block_47e722 ], [ %.pre93, %block_47e745.block_.L_47e768_crit_edge ]
  %1235 = phi i64 [ %1153, %block_.L_47e718 ], [ %1194, %block_47e722 ], [ %1233, %block_47e745.block_.L_47e768_crit_edge ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.8, %block_.L_47e718 ], [ %MEMORY.8, %block_47e722 ], [ %call2_47e755, %block_47e745.block_.L_47e768_crit_edge ]
  store i64 ptrtoint (%G__0x581daa_type* @G__0x581daa to i64), i64* %RDX.i1044, align 8
  store i64 0, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1236 = add i64 %1234, -8
  %1237 = add i64 %1235, 15
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RDI.i889, align 8
  %1241 = add i64 %1234, -36
  %1242 = add i64 %1235, 18
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RSI.i994, align 8
  %1246 = add i64 %1234, -24
  %1247 = add i64 %1235, 21
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RCX.i1069, align 8
  store i64 0, i64* %51, align 8
  store i64 0, i64* %52, align 8
  %1251 = add i64 %1235, -481592
  %1252 = add i64 %1235, 32
  %1253 = load i64, i64* %6, align 8
  %1254 = add i64 %1253, -8
  %1255 = inttoptr i64 %1254 to i64*
  store i64 %1252, i64* %1255, align 8
  store i64 %1254, i64* %6, align 8
  store i64 %1251, i64* %3, align 8
  %call2_47e783 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1251, %struct.Memory* %MEMORY.10)
  %1256 = load i32, i32* %EAX.i885, align 4
  %1257 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1258 = and i32 %1256, 255
  %1259 = tail call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  store i8 %1262, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1263 = icmp eq i32 %1256, 0
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %29, align 1
  %1265 = lshr i32 %1256, 31
  %1266 = trunc i32 %1265 to i8
  store i8 %1266, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v142 = select i1 %1263, i64 503, i64 9
  %1267 = add i64 %1257, %.v142
  store i64 %1267, i64* %3, align 8
  br i1 %1263, label %block_.L_47e984, label %block_47e791

block_47e791:                                     ; preds = %block_.L_47e768
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -32
  %1270 = add i64 %1267, 4
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  store i8 0, i8* %14, align 1
  %1273 = and i32 %1272, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1278 = icmp eq i32 %1272, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %29, align 1
  %1280 = lshr i32 %1272, 31
  %1281 = trunc i32 %1280 to i8
  store i8 %1281, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v143 = select i1 %1278, i64 163, i64 10
  %1282 = add i64 %1267, %.v143
  store i64 %1282, i64* %3, align 8
  br i1 %1278, label %block_.L_47e834, label %block_47e79b

block_47e79b:                                     ; preds = %block_47e791
  %1283 = add i64 %1268, -692
  %1284 = add i64 %1282, 7
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sext i32 %1286 to i64
  store i64 %1287, i64* %RAX.i1071, align 8
  %1288 = add nsw i64 %1287, 12099168
  %1289 = add i64 %1282, 15
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i8*
  %1291 = load i8, i8* %1290, align 1
  %1292 = zext i8 %1291 to i64
  store i64 %1292, i64* %RCX.i1069, align 8
  %1293 = add i64 %1268, -24
  %1294 = add i64 %1282, 19
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RAX.i1071, align 8
  %1298 = add nsw i64 %1297, 12099168
  %1299 = add i64 %1282, 27
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i8*
  %1301 = load i8, i8* %1300, align 1
  %1302 = zext i8 %1301 to i64
  store i64 %1302, i64* %RDX.i1044, align 8
  %1303 = zext i8 %1291 to i32
  %1304 = zext i8 %1301 to i32
  %1305 = sub nsw i32 %1303, %1304
  %1306 = icmp ult i8 %1291, %1301
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %14, align 1
  %1308 = and i32 %1305, 255
  %1309 = tail call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  store i8 %1312, i8* %21, align 1
  %1313 = xor i8 %1301, %1291
  %1314 = zext i8 %1313 to i32
  %1315 = xor i32 %1314, %1305
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  store i8 %1318, i8* %26, align 1
  %1319 = icmp eq i32 %1305, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %29, align 1
  %1321 = lshr i32 %1305, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %1319, i64 153, i64 35
  %1323 = add i64 %1282, %.v144
  store i64 %1323, i64* %3, align 8
  br i1 %1319, label %block_.L_47e834, label %block_47e7be

block_47e7be:                                     ; preds = %block_47e79b
  %1324 = zext i32 %1296 to i64
  %1325 = xor i64 %1324, %1297
  %1326 = trunc i64 %1325 to i32
  %1327 = and i64 %1325, 4294967295
  store i64 %1327, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  %1328 = and i32 %1326, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %21, align 1
  %1333 = icmp eq i32 %1326, 0
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %29, align 1
  %1335 = lshr i32 %1326, 31
  %1336 = trunc i32 %1335 to i8
  store i8 %1336, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1337 = and i64 %1325, 4294967295
  store i64 %1337, i64* %RDX.i1044, align 8
  %1338 = add i64 %1323, 10
  store i64 %1338, i64* %3, align 8
  %1339 = load i32, i32* %1285, align 4
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RDI.i889, align 8
  %1341 = add i64 %1268, -696
  %1342 = add i64 %1323, 16
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i32*
  %1344 = load i32, i32* %1343, align 4
  %1345 = zext i32 %1344 to i64
  store i64 %1345, i64* %RSI.i994, align 8
  %1346 = add i64 %1323, -134478
  %1347 = add i64 %1323, 21
  %1348 = load i64, i64* %6, align 8
  %1349 = add i64 %1348, -8
  %1350 = inttoptr i64 %1349 to i64*
  store i64 %1347, i64* %1350, align 8
  store i64 %1349, i64* %6, align 8
  store i64 %1346, i64* %3, align 8
  %call2_47e7ce = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %1346, %struct.Memory* %call2_47e783)
  %1351 = load i32, i32* %EAX.i885, align 4
  %1352 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1353 = and i32 %1351, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1358 = icmp eq i32 %1351, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %29, align 1
  %1360 = lshr i32 %1351, 31
  %1361 = trunc i32 %1360 to i8
  store i8 %1361, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %1358, i64 9, i64 97
  %1362 = add i64 %1352, %.v145
  store i64 %1362, i64* %3, align 8
  br i1 %1358, label %block_47e7dc, label %block_.L_47e834

block_47e7dc:                                     ; preds = %block_47e7be
  %1363 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1364 = and i32 %1363, 2048
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit102 = lshr exact i32 %1364, 11
  %1366 = trunc i32 %.lobit102 to i8
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1368 = icmp eq i8 %1367, 0
  %.v154 = select i1 %1368, i64 26, i64 21
  %1369 = add i64 %1362, %.v154
  store i64 %1369, i64* %3, align 8
  br i1 %1368, label %block_.L_47e7f6, label %block_47e7f1

block_47e7f1:                                     ; preds = %block_47e7dc
  %1370 = add i64 %1369, 47
  store i64 %1370, i64* %3, align 8
  br label %block_.L_47e820

block_.L_47e7f6:                                  ; preds = %block_47e7dc
  store i64 ptrtoint (%G__0x582c08_type* @G__0x582c08 to i64), i64* %RDI.i889, align 8
  %1371 = load i64, i64* %RBP.i, align 8
  %1372 = add i64 %1371, -8
  %1373 = add i64 %1369, 13
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RSI.i994, align 8
  %1377 = add i64 %1371, -692
  %1378 = add i64 %1369, 19
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RDX.i1044, align 8
  %1382 = add i64 %1371, -696
  %1383 = add i64 %1369, 25
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RCX.i1069, align 8
  %1387 = add i64 %1371, -24
  %1388 = add i64 %1369, 29
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %51, align 8
  store i8 0, i8* %AL.i, align 1
  %1392 = add i64 %1369, -182854
  %1393 = add i64 %1369, 36
  %1394 = load i64, i64* %6, align 8
  %1395 = add i64 %1394, -8
  %1396 = inttoptr i64 %1395 to i64*
  store i64 %1393, i64* %1396, align 8
  store i64 %1395, i64* %6, align 8
  store i64 %1392, i64* %3, align 8
  %call2_47e815 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1392, %struct.Memory* %call2_47e7ce)
  %1397 = load i64, i64* %RBP.i, align 8
  %1398 = add i64 %1397, -720
  %1399 = load i32, i32* %EAX.i885, align 4
  %1400 = load i64, i64* %3, align 8
  %1401 = add i64 %1400, 6
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1398 to i32*
  store i32 %1399, i32* %1402, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_47e820

block_.L_47e820:                                  ; preds = %block_.L_47e7f6, %block_47e7f1
  %1403 = phi i64 [ %.pre94, %block_.L_47e7f6 ], [ %1370, %block_47e7f1 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_47e815, %block_.L_47e7f6 ], [ %call2_47e7ce, %block_47e7f1 ]
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -8
  %1406 = add i64 %1403, 3
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RDI.i889, align 8
  %1410 = add i64 %1404, -692
  %1411 = add i64 %1403, 9
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RSI.i994, align 8
  %1415 = add i64 %1404, -696
  %1416 = add i64 %1403, 15
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = zext i32 %1418 to i64
  store i64 %1419, i64* %RDX.i1044, align 8
  %1420 = add i64 %1403, -309968
  %1421 = add i64 %1403, 20
  %1422 = load i64, i64* %6, align 8
  %1423 = add i64 %1422, -8
  %1424 = inttoptr i64 %1423 to i64*
  store i64 %1421, i64* %1424, align 8
  store i64 %1423, i64* %6, align 8
  store i64 %1420, i64* %3, align 8
  %call2_47e82f = tail call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* nonnull %0, i64 %1420, %struct.Memory* %MEMORY.11)
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_47e834

block_.L_47e834:                                  ; preds = %block_47e7be, %block_.L_47e820, %block_47e79b, %block_47e791
  %1425 = phi i64 [ %1282, %block_47e791 ], [ %1323, %block_47e79b ], [ %1362, %block_47e7be ], [ %.pre95, %block_.L_47e820 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_47e783, %block_47e791 ], [ %call2_47e783, %block_47e79b ], [ %call2_47e7ce, %block_47e7be ], [ %call2_47e82f, %block_.L_47e820 ]
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -32
  %1428 = add i64 %1425, 4
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  store i8 0, i8* %14, align 1
  %1431 = and i32 %1430, 255
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1436 = icmp eq i32 %1430, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %29, align 1
  %1438 = lshr i32 %1430, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %1436, i64 10, i64 163
  %1440 = add i64 %1425, %.v146
  store i64 %1440, i64* %3, align 8
  br i1 %1436, label %block_47e83e, label %block_.L_47e8d7

block_47e83e:                                     ; preds = %block_.L_47e834
  %1441 = add i64 %1426, -692
  %1442 = add i64 %1440, 7
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = sext i32 %1444 to i64
  store i64 %1445, i64* %RAX.i1071, align 8
  %1446 = add nsw i64 %1445, 12099168
  %1447 = add i64 %1440, 15
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i8*
  %1449 = load i8, i8* %1448, align 1
  %1450 = zext i8 %1449 to i64
  store i64 %1450, i64* %RCX.i1069, align 8
  %1451 = add i64 %1426, -24
  %1452 = add i64 %1440, 19
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = sext i32 %1454 to i64
  store i64 %1455, i64* %RAX.i1071, align 8
  %1456 = add nsw i64 %1455, 12099168
  %1457 = add i64 %1440, 27
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i8*
  %1459 = load i8, i8* %1458, align 1
  %1460 = zext i8 %1459 to i64
  store i64 %1460, i64* %RDX.i1044, align 8
  %1461 = zext i8 %1449 to i32
  %1462 = zext i8 %1459 to i32
  %1463 = sub nsw i32 %1461, %1462
  %1464 = icmp ult i8 %1449, %1459
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %14, align 1
  %1466 = and i32 %1463, 255
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i8 %1459, %1449
  %1472 = zext i8 %1471 to i32
  %1473 = xor i32 %1472, %1463
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %26, align 1
  %1477 = icmp eq i32 %1463, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %29, align 1
  %1479 = lshr i32 %1463, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v151 = select i1 %1477, i64 153, i64 35
  %1481 = add i64 %1440, %.v151
  store i64 %1481, i64* %3, align 8
  br i1 %1477, label %block_.L_47e8d7, label %block_47e861

block_47e861:                                     ; preds = %block_47e83e
  %1482 = zext i32 %1454 to i64
  %1483 = xor i64 %1482, %1455
  %1484 = trunc i64 %1483 to i32
  %1485 = and i64 %1483, 4294967295
  store i64 %1485, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  %1486 = and i32 %1484, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %21, align 1
  %1491 = icmp eq i32 %1484, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %29, align 1
  %1493 = lshr i32 %1484, 31
  %1494 = trunc i32 %1493 to i8
  store i8 %1494, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1495 = and i64 %1483, 4294967295
  store i64 %1495, i64* %RDX.i1044, align 8
  %1496 = add i64 %1481, 10
  store i64 %1496, i64* %3, align 8
  %1497 = load i32, i32* %1443, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDI.i889, align 8
  %1499 = add i64 %1426, -696
  %1500 = add i64 %1481, 16
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RSI.i994, align 8
  %1504 = add i64 %1481, -179985
  %1505 = add i64 %1481, 21
  %1506 = load i64, i64* %6, align 8
  %1507 = add i64 %1506, -8
  %1508 = inttoptr i64 %1507 to i64*
  store i64 %1505, i64* %1508, align 8
  store i64 %1507, i64* %6, align 8
  store i64 %1504, i64* %3, align 8
  %call2_47e871 = tail call %struct.Memory* @sub_452950.string_connect(%struct.State* nonnull %0, i64 %1504, %struct.Memory* %MEMORY.12)
  %1509 = load i32, i32* %EAX.i885, align 4
  %1510 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1511 = and i32 %1509, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1516 = icmp eq i32 %1509, 0
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %29, align 1
  %1518 = lshr i32 %1509, 31
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v152 = select i1 %1516, i64 9, i64 97
  %1520 = add i64 %1510, %.v152
  store i64 %1520, i64* %3, align 8
  br i1 %1516, label %block_47e87f, label %block_.L_47e8d7

block_47e87f:                                     ; preds = %block_47e861
  %1521 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1522 = and i32 %1521, 2048
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit103 = lshr exact i32 %1522, 11
  %1524 = trunc i32 %.lobit103 to i8
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1526 = icmp eq i8 %1525, 0
  %.v153 = select i1 %1526, i64 26, i64 21
  %1527 = add i64 %1520, %.v153
  store i64 %1527, i64* %3, align 8
  br i1 %1526, label %block_.L_47e899, label %block_47e894

block_47e894:                                     ; preds = %block_47e87f
  %1528 = add i64 %1527, 47
  store i64 %1528, i64* %3, align 8
  br label %block_.L_47e8c3

block_.L_47e899:                                  ; preds = %block_47e87f
  store i64 ptrtoint (%G__0x582c49_type* @G__0x582c49 to i64), i64* %RDI.i889, align 8
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -8
  %1531 = add i64 %1527, 13
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RSI.i994, align 8
  %1535 = add i64 %1529, -692
  %1536 = add i64 %1527, 19
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RDX.i1044, align 8
  %1540 = add i64 %1529, -696
  %1541 = add i64 %1527, 25
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i32*
  %1543 = load i32, i32* %1542, align 4
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RCX.i1069, align 8
  %1545 = add i64 %1529, -24
  %1546 = add i64 %1527, 29
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %51, align 8
  store i8 0, i8* %AL.i, align 1
  %1550 = add i64 %1527, -183017
  %1551 = add i64 %1527, 36
  %1552 = load i64, i64* %6, align 8
  %1553 = add i64 %1552, -8
  %1554 = inttoptr i64 %1553 to i64*
  store i64 %1551, i64* %1554, align 8
  store i64 %1553, i64* %6, align 8
  store i64 %1550, i64* %3, align 8
  %call2_47e8b8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1550, %struct.Memory* %call2_47e871)
  %1555 = load i64, i64* %RBP.i, align 8
  %1556 = add i64 %1555, -724
  %1557 = load i32, i32* %EAX.i885, align 4
  %1558 = load i64, i64* %3, align 8
  %1559 = add i64 %1558, 6
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1556 to i32*
  store i32 %1557, i32* %1560, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_47e8c3

block_.L_47e8c3:                                  ; preds = %block_.L_47e899, %block_47e894
  %1561 = phi i64 [ %.pre96, %block_.L_47e899 ], [ %1528, %block_47e894 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_47e8b8, %block_.L_47e899 ], [ %call2_47e871, %block_47e894 ]
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -8
  %1564 = add i64 %1561, 3
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RDI.i889, align 8
  %1568 = add i64 %1562, -692
  %1569 = add i64 %1561, 9
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RSI.i994, align 8
  %1573 = add i64 %1562, -696
  %1574 = add i64 %1561, 15
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = zext i32 %1576 to i64
  store i64 %1577, i64* %RDX.i1044, align 8
  %1578 = add i64 %1561, -309331
  %1579 = add i64 %1561, 20
  %1580 = load i64, i64* %6, align 8
  %1581 = add i64 %1580, -8
  %1582 = inttoptr i64 %1581 to i64*
  store i64 %1579, i64* %1582, align 8
  store i64 %1581, i64* %6, align 8
  store i64 %1578, i64* %3, align 8
  %call2_47e8d2 = tail call %struct.Memory* @sub_433070.add_cut_move(%struct.State* nonnull %0, i64 %1578, %struct.Memory* %MEMORY.13)
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_47e8d7

block_.L_47e8d7:                                  ; preds = %block_47e861, %block_.L_47e834, %block_.L_47e8c3, %block_47e83e
  %1583 = phi i64 [ %1440, %block_.L_47e834 ], [ %1481, %block_47e83e ], [ %1520, %block_47e861 ], [ %.pre97, %block_.L_47e8c3 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.12, %block_.L_47e834 ], [ %MEMORY.12, %block_47e83e ], [ %call2_47e871, %block_47e861 ], [ %call2_47e8d2, %block_.L_47e8c3 ]
  %1584 = load i64, i64* %RBP.i, align 8
  %1585 = add i64 %1584, -32
  %1586 = add i64 %1583, 4
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  store i8 0, i8* %14, align 1
  %1589 = and i32 %1588, 255
  %1590 = tail call i32 @llvm.ctpop.i32(i32 %1589)
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  store i8 %1593, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1594 = icmp eq i32 %1588, 0
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %29, align 1
  %1596 = lshr i32 %1588, 31
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v147 = select i1 %1594, i64 10, i64 163
  %1598 = add i64 %1583, %.v147
  store i64 %1598, i64* %3, align 8
  br i1 %1594, label %block_47e8e1, label %block_.L_47e97a

block_47e8e1:                                     ; preds = %block_.L_47e8d7
  %1599 = add i64 %1584, -692
  %1600 = add i64 %1598, 7
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = sext i32 %1602 to i64
  store i64 %1603, i64* %RAX.i1071, align 8
  %1604 = add nsw i64 %1603, 12099168
  %1605 = add i64 %1598, 15
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i8*
  %1607 = load i8, i8* %1606, align 1
  %1608 = zext i8 %1607 to i64
  store i64 %1608, i64* %RCX.i1069, align 8
  %1609 = add i64 %1584, -24
  %1610 = add i64 %1598, 19
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RAX.i1071, align 8
  %1614 = add nsw i64 %1613, 12099168
  %1615 = add i64 %1598, 27
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i8*
  %1617 = load i8, i8* %1616, align 1
  %1618 = zext i8 %1617 to i64
  store i64 %1618, i64* %RDX.i1044, align 8
  %1619 = zext i8 %1607 to i32
  %1620 = zext i8 %1617 to i32
  %1621 = sub nsw i32 %1619, %1620
  %1622 = icmp ult i8 %1607, %1617
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %14, align 1
  %1624 = and i32 %1621, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %21, align 1
  %1629 = xor i8 %1617, %1607
  %1630 = zext i8 %1629 to i32
  %1631 = xor i32 %1630, %1621
  %1632 = lshr i32 %1631, 4
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  store i8 %1634, i8* %26, align 1
  %1635 = icmp eq i32 %1621, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %29, align 1
  %1637 = lshr i32 %1621, 31
  %1638 = trunc i32 %1637 to i8
  store i8 %1638, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v148 = select i1 %1635, i64 35, i64 153
  %1639 = add i64 %1598, %.v148
  store i64 %1639, i64* %3, align 8
  br i1 %1635, label %block_47e904, label %block_.L_47e97a

block_47e904:                                     ; preds = %block_47e8e1
  %1640 = zext i32 %1612 to i64
  %1641 = xor i64 %1640, %1613
  %1642 = trunc i64 %1641 to i32
  %1643 = and i64 %1641, 4294967295
  store i64 %1643, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  %1644 = and i32 %1642, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %21, align 1
  %1649 = icmp eq i32 %1642, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %29, align 1
  %1651 = lshr i32 %1642, 31
  %1652 = trunc i32 %1651 to i8
  store i8 %1652, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1653 = and i64 %1641, 4294967295
  store i64 %1653, i64* %RDX.i1044, align 8
  %1654 = add i64 %1639, 10
  store i64 %1654, i64* %3, align 8
  %1655 = load i32, i32* %1601, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RDI.i889, align 8
  %1657 = add i64 %1584, -696
  %1658 = add i64 %1639, 16
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RSI.i994, align 8
  %1662 = add i64 %1639, -134804
  %1663 = add i64 %1639, 21
  %1664 = load i64, i64* %6, align 8
  %1665 = add i64 %1664, -8
  %1666 = inttoptr i64 %1665 to i64*
  store i64 %1663, i64* %1666, align 8
  store i64 %1665, i64* %6, align 8
  store i64 %1662, i64* %3, align 8
  %call2_47e914 = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %1662, %struct.Memory* %MEMORY.14)
  %1667 = load i32, i32* %EAX.i885, align 4
  %1668 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1669 = and i32 %1667, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1674 = icmp eq i32 %1667, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %29, align 1
  %1676 = lshr i32 %1667, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v149 = select i1 %1674, i64 9, i64 97
  %1678 = add i64 %1668, %.v149
  store i64 %1678, i64* %3, align 8
  br i1 %1674, label %block_47e922, label %block_.L_47e97a

block_47e922:                                     ; preds = %block_47e904
  %1679 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1680 = and i32 %1679, 2048
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit104 = lshr exact i32 %1680, 11
  %1682 = trunc i32 %.lobit104 to i8
  %1683 = xor i8 %1682, 1
  store i8 %1683, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1684 = icmp eq i8 %1683, 0
  %.v150 = select i1 %1684, i64 26, i64 21
  %1685 = add i64 %1678, %.v150
  store i64 %1685, i64* %3, align 8
  br i1 %1684, label %block_.L_47e93c, label %block_47e937

block_47e937:                                     ; preds = %block_47e922
  %1686 = add i64 %1685, 47
  store i64 %1686, i64* %3, align 8
  br label %block_.L_47e966

block_.L_47e93c:                                  ; preds = %block_47e922
  store i64 ptrtoint (%G__0x582c84_type* @G__0x582c84 to i64), i64* %RDI.i889, align 8
  %1687 = load i64, i64* %RBP.i, align 8
  %1688 = add i64 %1687, -8
  %1689 = add i64 %1685, 13
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i32*
  %1691 = load i32, i32* %1690, align 4
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RSI.i994, align 8
  %1693 = add i64 %1687, -692
  %1694 = add i64 %1685, 19
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RDX.i1044, align 8
  %1698 = add i64 %1687, -696
  %1699 = add i64 %1685, 25
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = zext i32 %1701 to i64
  store i64 %1702, i64* %RCX.i1069, align 8
  %1703 = add i64 %1687, -24
  %1704 = add i64 %1685, 29
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %51, align 8
  store i8 0, i8* %AL.i, align 1
  %1708 = add i64 %1685, -183180
  %1709 = add i64 %1685, 36
  %1710 = load i64, i64* %6, align 8
  %1711 = add i64 %1710, -8
  %1712 = inttoptr i64 %1711 to i64*
  store i64 %1709, i64* %1712, align 8
  store i64 %1711, i64* %6, align 8
  store i64 %1708, i64* %3, align 8
  %call2_47e95b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1708, %struct.Memory* %call2_47e914)
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -728
  %1715 = load i32, i32* %EAX.i885, align 4
  %1716 = load i64, i64* %3, align 8
  %1717 = add i64 %1716, 6
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1714 to i32*
  store i32 %1715, i32* %1718, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_47e966

block_.L_47e966:                                  ; preds = %block_.L_47e93c, %block_47e937
  %1719 = phi i64 [ %.pre98, %block_.L_47e93c ], [ %1686, %block_47e937 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_47e95b, %block_.L_47e93c ], [ %call2_47e914, %block_47e937 ]
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -8
  %1722 = add i64 %1719, 3
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RDI.i889, align 8
  %1726 = add i64 %1720, -692
  %1727 = add i64 %1719, 9
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = zext i32 %1729 to i64
  store i64 %1730, i64* %RSI.i994, align 8
  %1731 = add i64 %1720, -696
  %1732 = add i64 %1719, 15
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = zext i32 %1734 to i64
  store i64 %1735, i64* %RDX.i1044, align 8
  %1736 = add i64 %1719, -310294
  %1737 = add i64 %1719, 20
  %1738 = load i64, i64* %6, align 8
  %1739 = add i64 %1738, -8
  %1740 = inttoptr i64 %1739 to i64*
  store i64 %1737, i64* %1740, align 8
  store i64 %1739, i64* %6, align 8
  store i64 %1736, i64* %3, align 8
  %call2_47e975 = tail call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* nonnull %0, i64 %1736, %struct.Memory* %MEMORY.15)
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_47e97a

block_.L_47e97a:                                  ; preds = %block_47e904, %block_47e8e1, %block_.L_47e8d7, %block_.L_47e966
  %1741 = phi i64 [ %1598, %block_.L_47e8d7 ], [ %1639, %block_47e8e1 ], [ %1678, %block_47e904 ], [ %.pre99, %block_.L_47e966 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_47e8d7 ], [ %MEMORY.14, %block_47e8e1 ], [ %call2_47e914, %block_47e904 ], [ %call2_47e975, %block_.L_47e966 ]
  %1742 = add i64 %1741, -461850
  %1743 = add i64 %1741, 5
  %1744 = load i64, i64* %6, align 8
  %1745 = add i64 %1744, -8
  %1746 = inttoptr i64 %1745 to i64*
  store i64 %1743, i64* %1746, align 8
  store i64 %1745, i64* %6, align 8
  store i64 %1742, i64* %3, align 8
  %call2_47e97a = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1742, %struct.Memory* %MEMORY.16)
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_47e984

block_.L_47e984:                                  ; preds = %block_47e745, %block_47e6f0, %block_47e6c3, %block_47e673, %block_47e5f9, %block_.L_47e768, %block_.L_47e97a
  %1747 = phi i64 [ %987, %block_47e673 ], [ %1083, %block_47e6c3 ], [ %1140, %block_47e6f0 ], [ %1233, %block_47e745 ], [ %.pre100, %block_.L_47e97a ], [ %1267, %block_.L_47e768 ], [ %897, %block_47e5f9 ]
  %.sink63 = phi i64 [ 755, %block_47e673 ], [ 675, %block_47e6c3 ], [ 625, %block_47e6f0 ], [ 545, %block_47e745 ], [ 5, %block_.L_47e97a ], [ 5, %block_.L_47e768 ], [ 835, %block_47e5f9 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.6, %block_47e673 ], [ %call2_47e6d3, %block_47e6c3 ], [ %MEMORY.8, %block_47e6f0 ], [ %call2_47e755, %block_47e745 ], [ %call2_47e97a, %block_.L_47e97a ], [ %call2_47e783, %block_.L_47e768 ], [ %MEMORY.6, %block_47e5f9 ]
  %1748 = add i64 %1747, %.sink63
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -20
  %1751 = add i64 %1748, 3
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = add i32 %1753, 1
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RAX.i1071, align 8
  %1756 = icmp eq i32 %1753, -1
  %1757 = icmp eq i32 %1754, 0
  %1758 = or i1 %1756, %1757
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %14, align 1
  %1760 = and i32 %1754, 255
  %1761 = tail call i32 @llvm.ctpop.i32(i32 %1760)
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = xor i8 %1763, 1
  store i8 %1764, i8* %21, align 1
  %1765 = xor i32 %1754, %1753
  %1766 = lshr i32 %1765, 4
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  store i8 %1768, i8* %26, align 1
  %1769 = zext i1 %1757 to i8
  store i8 %1769, i8* %29, align 1
  %1770 = lshr i32 %1754, 31
  %1771 = trunc i32 %1770 to i8
  store i8 %1771, i8* %32, align 1
  %1772 = lshr i32 %1753, 31
  %1773 = xor i32 %1770, %1772
  %1774 = add nuw nsw i32 %1773, %1770
  %1775 = icmp eq i32 %1774, 2
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %38, align 1
  %1777 = add i64 %1748, 9
  store i64 %1777, i64* %3, align 8
  store i32 %1754, i32* %1752, align 4
  %1778 = load i64, i64* %3, align 8
  %1779 = add i64 %1778, -928
  store i64 %1779, i64* %3, align 8
  br label %block_.L_47e5ed

block_.L_47e992:                                  ; preds = %block_.L_47e5ed
  %1780 = add i64 %822, 8
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %823 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = add i32 %1782, 1
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RAX.i1071, align 8
  %1785 = icmp eq i32 %1782, -1
  %1786 = icmp eq i32 %1783, 0
  %1787 = or i1 %1785, %1786
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %14, align 1
  %1789 = and i32 %1783, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %21, align 1
  %1794 = xor i32 %1783, %1782
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %26, align 1
  %1798 = zext i1 %1786 to i8
  store i8 %1798, i8* %29, align 1
  %1799 = lshr i32 %1783, 31
  %1800 = trunc i32 %1799 to i8
  store i8 %1800, i8* %32, align 1
  %1801 = lshr i32 %1782, 31
  %1802 = xor i32 %1799, %1801
  %1803 = add nuw nsw i32 %1802, %1799
  %1804 = icmp eq i32 %1803, 2
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %38, align 1
  %1806 = add i64 %822, 14
  store i64 %1806, i64* %3, align 8
  store i32 %1783, i32* %1781, align 4
  %1807 = load i64, i64* %3, align 8
  %1808 = add i64 %1807, -968
  store i64 %1808, i64* %3, align 8
  br label %block_.L_47e5d8

block_.L_47e9a5:                                  ; preds = %block_.L_47e5d8
  %1809 = add i64 %756, 911
  br label %block_.L_47ed34

block_.L_47e9aa:                                  ; preds = %block_47e49d
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1071, align 8
  %1810 = load i64, i64* %RBP.i, align 8
  %1811 = add i64 %1810, -28
  %1812 = add i64 %321, 14
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = sext i32 %1814 to i64
  %1816 = mul nsw i64 %1815, 12
  store i64 %1816, i64* %RCX.i1069, align 8
  %1817 = lshr i64 %1816, 63
  %1818 = add i64 %1816, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1818, i64* %RAX.i1071, align 8
  %1819 = icmp ult i64 %1818, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1820 = icmp ult i64 %1818, %1816
  %1821 = or i1 %1819, %1820
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %14, align 1
  %1823 = trunc i64 %1818 to i32
  %1824 = and i32 %1823, 252
  %1825 = tail call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  store i8 %1828, i8* %21, align 1
  %1829 = xor i64 %1816, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1830 = xor i64 %1829, %1818
  %1831 = lshr i64 %1830, 4
  %1832 = trunc i64 %1831 to i8
  %1833 = and i8 %1832, 1
  store i8 %1833, i8* %26, align 1
  %1834 = icmp eq i64 %1818, 0
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %29, align 1
  %1836 = lshr i64 %1818, 63
  %1837 = trunc i64 %1836 to i8
  store i8 %1837, i8* %32, align 1
  %1838 = xor i64 %1836, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1839 = xor i64 %1836, %1817
  %1840 = add nuw nsw i64 %1838, %1839
  %1841 = icmp eq i64 %1840, 2
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %38, align 1
  %1843 = inttoptr i64 %1818 to i32*
  %1844 = add i64 %321, 24
  store i64 %1844, i64* %3, align 8
  %1845 = load i32, i32* %1843, align 4
  %1846 = add i32 %1845, -26
  %1847 = icmp ult i32 %1845, 26
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %14, align 1
  %1849 = and i32 %1846, 255
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %21, align 1
  %1854 = xor i32 %1845, 16
  %1855 = xor i32 %1854, %1846
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %26, align 1
  %1859 = icmp eq i32 %1846, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %29, align 1
  %1861 = lshr i32 %1846, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %32, align 1
  %1863 = lshr i32 %1845, 31
  %1864 = xor i32 %1861, %1863
  %1865 = add nuw nsw i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %38, align 1
  %.v110 = select i1 %1859, i64 30, i64 295
  %1868 = add i64 %321, %.v110
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1071, align 8
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -28
  %1871 = add i64 %1868, 14
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = sext i32 %1873 to i64
  %1875 = mul nsw i64 %1874, 12
  store i64 %1875, i64* %RCX.i1069, align 8
  %1876 = lshr i64 %1875, 63
  %1877 = add i64 %1868, 21
  store i64 %1877, i64* %3, align 8
  %1878 = add i64 %1875, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %1878, i64* %RAX.i1071, align 8
  %1879 = icmp ult i64 %1878, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1880 = icmp ult i64 %1878, %1875
  %1881 = or i1 %1879, %1880
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %14, align 1
  %1883 = trunc i64 %1878 to i32
  %1884 = and i32 %1883, 252
  %1885 = tail call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  store i8 %1888, i8* %21, align 1
  %1889 = xor i64 %1875, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %1890 = xor i64 %1889, %1878
  %1891 = lshr i64 %1890, 4
  %1892 = trunc i64 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %26, align 1
  %1894 = icmp eq i64 %1878, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %29, align 1
  %1896 = lshr i64 %1878, 63
  %1897 = trunc i64 %1896 to i8
  store i8 %1897, i8* %32, align 1
  %1898 = xor i64 %1896, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %1899 = xor i64 %1896, %1876
  %1900 = add nuw nsw i64 %1898, %1899
  %1901 = icmp eq i64 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %38, align 1
  br i1 %1859, label %block_47e9c8, label %block_.L_47ead1

block_47e9c8:                                     ; preds = %block_.L_47e9aa
  %1903 = add i64 %1875, add (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 4)
  %1904 = add i64 %1868, 24
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RDX.i1044, align 8
  %1908 = add i64 %1869, -24
  %1909 = add i64 %1868, 27
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  store i32 %1906, i32* %1910, align 4
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -16
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, 7
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1912 to i32*
  store i32 0, i32* %1915, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_47e9ea

block_.L_47e9ea:                                  ; preds = %block_.L_47eab9, %block_47e9c8
  %1916 = phi i64 [ %.pre81, %block_47e9c8 ], [ %2299, %block_.L_47eab9 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1071, align 8
  %1917 = load i64, i64* %RBP.i, align 8
  %1918 = add i64 %1917, -16
  %1919 = add i64 %1916, 13
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i32*
  %1921 = load i32, i32* %1920, align 4
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RCX.i1069, align 8
  %1923 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1923, i64* %RDX.i1044, align 8
  %1924 = add i64 %1917, -24
  %1925 = add i64 %1916, 25
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = sext i32 %1927 to i64
  %1929 = mul nsw i64 %1928, 76
  store i64 %1929, i64* %RSI.i392, align 8
  %1930 = lshr i64 %1929, 63
  %1931 = add i64 %1929, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1931, i64* %RAX.i1071, align 8
  %1932 = icmp ult i64 %1931, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1933 = icmp ult i64 %1931, %1929
  %1934 = or i1 %1932, %1933
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %14, align 1
  %1936 = trunc i64 %1931 to i32
  %1937 = and i32 %1936, 252
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %21, align 1
  %1942 = xor i64 %1929, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1943 = xor i64 %1942, %1931
  %1944 = lshr i64 %1943, 4
  %1945 = trunc i64 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %26, align 1
  %1947 = icmp eq i64 %1931, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %29, align 1
  %1949 = lshr i64 %1931, 63
  %1950 = trunc i64 %1949 to i8
  store i8 %1950, i8* %32, align 1
  %1951 = xor i64 %1949, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1952 = xor i64 %1949, %1930
  %1953 = add nuw nsw i64 %1951, %1952
  %1954 = icmp eq i64 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %38, align 1
  %1956 = add i64 %1929, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1957 = add i64 %1916, 36
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i32*
  %1959 = load i32, i32* %1958, align 4
  %1960 = sext i32 %1959 to i64
  %1961 = mul nsw i64 %1960, 104
  store i64 %1961, i64* %RAX.i1071, align 8
  %1962 = lshr i64 %1961, 63
  %1963 = load i64, i64* %RDX.i1044, align 8
  %1964 = add i64 %1961, %1963
  store i64 %1964, i64* %RDX.i1044, align 8
  %1965 = icmp ult i64 %1964, %1963
  %1966 = icmp ult i64 %1964, %1961
  %1967 = or i1 %1965, %1966
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %14, align 1
  %1969 = trunc i64 %1964 to i32
  %1970 = and i32 %1969, 255
  %1971 = tail call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  store i8 %1974, i8* %21, align 1
  %1975 = xor i64 %1961, %1963
  %1976 = xor i64 %1975, %1964
  %1977 = lshr i64 %1976, 4
  %1978 = trunc i64 %1977 to i8
  %1979 = and i8 %1978, 1
  store i8 %1979, i8* %26, align 1
  %1980 = icmp eq i64 %1964, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %29, align 1
  %1982 = lshr i64 %1964, 63
  %1983 = trunc i64 %1982 to i8
  store i8 %1983, i8* %32, align 1
  %1984 = lshr i64 %1963, 63
  %1985 = xor i64 %1982, %1984
  %1986 = xor i64 %1982, %1962
  %1987 = add nuw nsw i64 %1985, %1986
  %1988 = icmp eq i64 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %38, align 1
  %1990 = load i32, i32* %ECX.i1066, align 4
  %1991 = add i64 %1964, 44
  %1992 = add i64 %1916, 46
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = sub i32 %1990, %1994
  %1996 = icmp ult i32 %1990, %1994
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %14, align 1
  %1998 = and i32 %1995, 255
  %1999 = tail call i32 @llvm.ctpop.i32(i32 %1998)
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = xor i8 %2001, 1
  store i8 %2002, i8* %21, align 1
  %2003 = xor i32 %1994, %1990
  %2004 = xor i32 %2003, %1995
  %2005 = lshr i32 %2004, 4
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  store i8 %2007, i8* %26, align 1
  %2008 = icmp eq i32 %1995, 0
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %29, align 1
  %2010 = lshr i32 %1995, 31
  %2011 = trunc i32 %2010 to i8
  store i8 %2011, i8* %32, align 1
  %2012 = lshr i32 %1990, 31
  %2013 = lshr i32 %1994, 31
  %2014 = xor i32 %2013, %2012
  %2015 = xor i32 %2010, %2012
  %2016 = add nuw nsw i32 %2015, %2014
  %2017 = icmp eq i32 %2016, 2
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %38, align 1
  %2019 = icmp ne i8 %2011, 0
  %2020 = xor i1 %2019, %2017
  %.v126 = select i1 %2020, i64 52, i64 226
  %2021 = add i64 %1916, %.v126
  store i64 %2021, i64* %3, align 8
  br i1 %2020, label %block_47ea1e, label %block_.L_47eacc

block_47ea1e:                                     ; preds = %block_.L_47e9ea
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1071, align 8
  %2022 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %2022, i64* %RCX.i1069, align 8
  store i64 %2022, i64* %RDX.i1044, align 8
  %2023 = load i64, i64* %RBP.i, align 8
  %2024 = add i64 %2023, -24
  %2025 = add i64 %2021, 30
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  %2029 = mul nsw i64 %2028, 76
  store i64 %2029, i64* %RSI.i392, align 8
  %2030 = lshr i64 %2029, 63
  %2031 = add i64 %2029, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2031, i64* %RDI.i889, align 8
  %2032 = icmp ult i64 %2031, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2033 = icmp ult i64 %2031, %2029
  %2034 = or i1 %2032, %2033
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %14, align 1
  %2036 = trunc i64 %2031 to i32
  %2037 = and i32 %2036, 252
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %21, align 1
  %2042 = xor i64 %2029, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2043 = xor i64 %2042, %2031
  %2044 = lshr i64 %2043, 4
  %2045 = trunc i64 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %26, align 1
  %2047 = icmp eq i64 %2031, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %29, align 1
  %2049 = lshr i64 %2031, 63
  %2050 = trunc i64 %2049 to i8
  store i8 %2050, i8* %32, align 1
  %2051 = xor i64 %2049, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2052 = xor i64 %2049, %2030
  %2053 = add nuw nsw i64 %2051, %2052
  %2054 = icmp eq i64 %2053, 2
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %38, align 1
  %2056 = add i64 %2029, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %2057 = add i64 %2021, 44
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = sext i32 %2059 to i64
  %2061 = mul nsw i64 %2060, 104
  store i64 %2061, i64* %RSI.i392, align 8
  %2062 = lshr i64 %2061, 63
  %2063 = load i64, i64* %RDX.i1044, align 8
  %2064 = add i64 %2061, %2063
  store i64 %2064, i64* %RDX.i1044, align 8
  %2065 = icmp ult i64 %2064, %2063
  %2066 = icmp ult i64 %2064, %2061
  %2067 = or i1 %2065, %2066
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %14, align 1
  %2069 = trunc i64 %2064 to i32
  %2070 = and i32 %2069, 255
  %2071 = tail call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  store i8 %2074, i8* %21, align 1
  %2075 = xor i64 %2061, %2063
  %2076 = xor i64 %2075, %2064
  %2077 = lshr i64 %2076, 4
  %2078 = trunc i64 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %26, align 1
  %2080 = icmp eq i64 %2064, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %29, align 1
  %2082 = lshr i64 %2064, 63
  %2083 = trunc i64 %2082 to i8
  store i8 %2083, i8* %32, align 1
  %2084 = lshr i64 %2063, 63
  %2085 = xor i64 %2082, %2084
  %2086 = xor i64 %2082, %2062
  %2087 = add nuw nsw i64 %2085, %2086
  %2088 = icmp eq i64 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %38, align 1
  %2090 = load i64, i64* %RBP.i, align 8
  %2091 = add i64 %2090, -16
  %2092 = add i64 %2021, 55
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i32*
  %2094 = load i32, i32* %2093, align 4
  %2095 = sext i32 %2094 to i64
  store i64 %2095, i64* %RSI.i392, align 8
  %2096 = shl nsw i64 %2095, 2
  %2097 = add i64 %2064, 4
  %2098 = add i64 %2097, %2096
  %2099 = add i64 %2021, 60
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i32*
  %2101 = load i32, i32* %2100, align 4
  %2102 = sext i32 %2101 to i64
  %2103 = mul nsw i64 %2102, 104
  store i64 %2103, i64* %RDX.i1044, align 8
  %2104 = lshr i64 %2103, 63
  %2105 = load i64, i64* %RCX.i1069, align 8
  %2106 = add i64 %2103, %2105
  store i64 %2106, i64* %RCX.i1069, align 8
  %2107 = icmp ult i64 %2106, %2105
  %2108 = icmp ult i64 %2106, %2103
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %14, align 1
  %2111 = trunc i64 %2106 to i32
  %2112 = and i32 %2111, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i64 %2103, %2105
  %2118 = xor i64 %2117, %2106
  %2119 = lshr i64 %2118, 4
  %2120 = trunc i64 %2119 to i8
  %2121 = and i8 %2120, 1
  store i8 %2121, i8* %26, align 1
  %2122 = icmp eq i64 %2106, 0
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %29, align 1
  %2124 = lshr i64 %2106, 63
  %2125 = trunc i64 %2124 to i8
  store i8 %2125, i8* %32, align 1
  %2126 = lshr i64 %2105, 63
  %2127 = xor i64 %2124, %2126
  %2128 = xor i64 %2124, %2104
  %2129 = add nuw nsw i64 %2127, %2128
  %2130 = icmp eq i64 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %38, align 1
  %2132 = inttoptr i64 %2106 to i32*
  %2133 = add i64 %2021, 70
  store i64 %2133, i64* %3, align 8
  %2134 = load i32, i32* %2132, align 4
  %2135 = zext i32 %2134 to i64
  store i64 %2135, i64* %53, align 8
  %2136 = add i64 %2090, -700
  %2137 = add i64 %2021, 77
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  store i32 %2134, i32* %2138, align 4
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -700
  %2141 = load i64, i64* %3, align 8
  %2142 = add i64 %2141, 7
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2140 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = sext i32 %2144 to i64
  %2146 = mul nsw i64 %2145, 76
  store i64 %2146, i64* %RCX.i1069, align 8
  %2147 = lshr i64 %2146, 63
  %2148 = load i64, i64* %RAX.i1071, align 8
  %2149 = add i64 %2146, %2148
  store i64 %2149, i64* %RAX.i1071, align 8
  %2150 = icmp ult i64 %2149, %2148
  %2151 = icmp ult i64 %2149, %2146
  %2152 = or i1 %2150, %2151
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %14, align 1
  %2154 = trunc i64 %2149 to i32
  %2155 = and i32 %2154, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %21, align 1
  %2160 = xor i64 %2146, %2148
  %2161 = xor i64 %2160, %2149
  %2162 = lshr i64 %2161, 4
  %2163 = trunc i64 %2162 to i8
  %2164 = and i8 %2163, 1
  store i8 %2164, i8* %26, align 1
  %2165 = icmp eq i64 %2149, 0
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %29, align 1
  %2167 = lshr i64 %2149, 63
  %2168 = trunc i64 %2167 to i8
  store i8 %2168, i8* %32, align 1
  %2169 = lshr i64 %2148, 63
  %2170 = xor i64 %2167, %2169
  %2171 = xor i64 %2167, %2147
  %2172 = add nuw nsw i64 %2170, %2171
  %2173 = icmp eq i64 %2172, 2
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %38, align 1
  %2175 = inttoptr i64 %2149 to i32*
  %2176 = add i64 %2141, 17
  store i64 %2176, i64* %3, align 8
  %2177 = load i32, i32* %2175, align 4
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %53, align 8
  %2179 = add i64 %2139, -4
  %2180 = add i64 %2141, 21
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i32*
  %2182 = load i32, i32* %2181, align 4
  %2183 = sub i32 %2177, %2182
  %2184 = icmp ult i32 %2177, %2182
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %14, align 1
  %2186 = and i32 %2183, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %21, align 1
  %2191 = xor i32 %2182, %2177
  %2192 = xor i32 %2191, %2183
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  store i8 %2195, i8* %26, align 1
  %2196 = icmp eq i32 %2183, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %29, align 1
  %2198 = lshr i32 %2183, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %32, align 1
  %2200 = lshr i32 %2177, 31
  %2201 = lshr i32 %2182, 31
  %2202 = xor i32 %2201, %2200
  %2203 = xor i32 %2198, %2200
  %2204 = add nuw nsw i32 %2203, %2202
  %2205 = icmp eq i32 %2204, 2
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %38, align 1
  %.v127 = select i1 %2196, i64 27, i64 78
  %2207 = add i64 %2141, %.v127
  store i64 %2207, i64* %3, align 8
  br i1 %2196, label %block_47ea86, label %block_.L_47eab9

block_47ea86:                                     ; preds = %block_47ea1e
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1071, align 8
  %2208 = load i64, i64* %RBP.i, align 8
  %2209 = add i64 %2208, -700
  %2210 = add i64 %2207, 17
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = sext i32 %2212 to i64
  %2214 = mul nsw i64 %2213, 380
  store i64 %2214, i64* %RCX.i1069, align 8
  %2215 = lshr i64 %2214, 63
  %2216 = add i64 %2214, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2216, i64* %RAX.i1071, align 8
  %2217 = icmp ult i64 %2216, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2218 = icmp ult i64 %2216, %2214
  %2219 = or i1 %2217, %2218
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %14, align 1
  %2221 = trunc i64 %2216 to i32
  %2222 = and i32 %2221, 252
  %2223 = tail call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  store i8 %2226, i8* %21, align 1
  %2227 = xor i64 %2214, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2228 = xor i64 %2227, %2216
  %2229 = lshr i64 %2228, 4
  %2230 = trunc i64 %2229 to i8
  %2231 = and i8 %2230, 1
  store i8 %2231, i8* %26, align 1
  %2232 = icmp eq i64 %2216, 0
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %29, align 1
  %2234 = lshr i64 %2216, 63
  %2235 = trunc i64 %2234 to i8
  store i8 %2235, i8* %32, align 1
  %2236 = xor i64 %2234, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2237 = xor i64 %2234, %2215
  %2238 = add nuw nsw i64 %2236, %2237
  %2239 = icmp eq i64 %2238, 2
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %38, align 1
  %2241 = add i64 %2214, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %2242 = add i64 %2207, 31
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  %2244 = load i32, i32* %2243, align 4
  store i8 0, i8* %14, align 1
  %2245 = and i32 %2244, 255
  %2246 = tail call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  store i8 %2249, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2250 = icmp eq i32 %2244, 0
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %29, align 1
  %2252 = lshr i32 %2244, 31
  %2253 = trunc i32 %2252 to i8
  store i8 %2253, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %2250, i64 37, i64 51
  %2254 = add i64 %2207, %.v128
  store i64 %2254, i64* %3, align 8
  br i1 %2250, label %block_47eaab, label %block_.L_47eab9

block_47eaab:                                     ; preds = %block_47ea86
  %2255 = add i64 %2208, -8
  %2256 = add i64 %2254, 3
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RDI.i889, align 8
  %2260 = add i64 %2254, 9
  store i64 %2260, i64* %3, align 8
  %2261 = load i32, i32* %2211, align 4
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %RSI.i392, align 8
  %2263 = add i64 %2254, -304363
  %2264 = add i64 %2254, 14
  %2265 = load i64, i64* %6, align 8
  %2266 = add i64 %2265, -8
  %2267 = inttoptr i64 %2266 to i64*
  store i64 %2264, i64* %2267, align 8
  store i64 %2266, i64* %6, align 8
  store i64 %2263, i64* %3, align 8
  %call2_47eab4 = tail call %struct.Memory* @sub_4345c0.add_strategical_defense_move(%struct.State* nonnull %0, i64 %2263, %struct.Memory* %MEMORY.1)
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_47eab9

block_.L_47eab9:                                  ; preds = %block_47ea86, %block_47ea1e, %block_47eaab
  %2268 = phi i64 [ %.pre82, %block_47eaab ], [ %2254, %block_47ea86 ], [ %2207, %block_47ea1e ]
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -16
  %2271 = add i64 %2268, 8
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  %2273 = load i32, i32* %2272, align 4
  %2274 = add i32 %2273, 1
  %2275 = zext i32 %2274 to i64
  store i64 %2275, i64* %RAX.i1071, align 8
  %2276 = icmp eq i32 %2273, -1
  %2277 = icmp eq i32 %2274, 0
  %2278 = or i1 %2276, %2277
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %14, align 1
  %2280 = and i32 %2274, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %21, align 1
  %2285 = xor i32 %2274, %2273
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %26, align 1
  %2289 = zext i1 %2277 to i8
  store i8 %2289, i8* %29, align 1
  %2290 = lshr i32 %2274, 31
  %2291 = trunc i32 %2290 to i8
  store i8 %2291, i8* %32, align 1
  %2292 = lshr i32 %2273, 31
  %2293 = xor i32 %2290, %2292
  %2294 = add nuw nsw i32 %2293, %2290
  %2295 = icmp eq i32 %2294, 2
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %38, align 1
  %2297 = add i64 %2268, 14
  store i64 %2297, i64* %3, align 8
  store i32 %2274, i32* %2272, align 4
  %2298 = load i64, i64* %3, align 8
  %2299 = add i64 %2298, -221
  store i64 %2299, i64* %3, align 8
  br label %block_.L_47e9ea

block_.L_47eacc:                                  ; preds = %block_.L_47e9ea
  %2300 = add i64 %2021, 611
  br label %block_.L_47ed2f

block_.L_47ead1:                                  ; preds = %block_.L_47e9aa
  %2301 = inttoptr i64 %1878 to i32*
  %2302 = add i64 %1868, 24
  store i64 %2302, i64* %3, align 8
  %2303 = load i32, i32* %2301, align 4
  %2304 = add i32 %2303, -14
  %2305 = icmp ult i32 %2303, 14
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %14, align 1
  %2307 = and i32 %2304, 255
  %2308 = tail call i32 @llvm.ctpop.i32(i32 %2307)
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = xor i8 %2310, 1
  store i8 %2311, i8* %21, align 1
  %2312 = xor i32 %2304, %2303
  %2313 = lshr i32 %2312, 4
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  store i8 %2315, i8* %26, align 1
  %2316 = icmp eq i32 %2304, 0
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %29, align 1
  %2318 = lshr i32 %2304, 31
  %2319 = trunc i32 %2318 to i8
  store i8 %2319, i8* %32, align 1
  %2320 = lshr i32 %2303, 31
  %2321 = xor i32 %2318, %2320
  %2322 = add nuw nsw i32 %2321, %2320
  %2323 = icmp eq i32 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %38, align 1
  %.v111 = select i1 %2316, i64 30, i64 601
  %2325 = add i64 %1868, %.v111
  store i64 %2325, i64* %3, align 8
  br i1 %2316, label %block_47eaef, label %block_.L_47ed2a

block_47eaef:                                     ; preds = %block_.L_47ead1
  store i64 3, i64* %RAX.i1071, align 8
  %2326 = add i64 %1869, -8
  %2327 = add i64 %2325, 8
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RDI.i889, align 8
  %2331 = add i64 %1869, -4
  %2332 = add i64 %2325, 11
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = sub i32 3, %2334
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RAX.i1071, align 8
  %2337 = icmp ugt i32 %2334, 3
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2335, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i32 %2334, %2335
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %26, align 1
  %2348 = icmp eq i32 %2335, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %29, align 1
  %2350 = lshr i32 %2335, 31
  %2351 = trunc i32 %2350 to i8
  store i8 %2351, i8* %32, align 1
  %2352 = lshr i32 %2334, 31
  %2353 = add nuw nsw i32 %2350, %2352
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %38, align 1
  store i64 %2336, i64* %RSI.i994, align 8
  %2356 = add i64 %2325, -30975
  %2357 = add i64 %2325, 18
  %2358 = load i64, i64* %6, align 8
  %2359 = add i64 %2358, -8
  %2360 = inttoptr i64 %2359 to i64*
  store i64 %2357, i64* %2360, align 8
  store i64 %2359, i64* %6, align 8
  store i64 %2356, i64* %3, align 8
  %call2_47eafc = tail call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* nonnull %0, i64 %2356, %struct.Memory* %MEMORY.1)
  %2361 = load i32, i32* %EAX.i885, align 4
  %2362 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2363 = and i32 %2361, 255
  %2364 = tail call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  store i8 %2367, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2368 = icmp eq i32 %2361, 0
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %29, align 1
  %2370 = lshr i32 %2361, 31
  %2371 = trunc i32 %2370 to i8
  store i8 %2371, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %2368, i64 553, i64 9
  %2372 = add i64 %2362, %.v112
  store i64 %2372, i64* %3, align 8
  br i1 %2368, label %block_.L_47ed2a, label %block_47eb0a

block_47eb0a:                                     ; preds = %block_47eaef
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i1071, align 8
  %2373 = load i64, i64* %RBP.i, align 8
  %2374 = add i64 %2373, -28
  %2375 = add i64 %2372, 14
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = sext i32 %2377 to i64
  %2379 = mul nsw i64 %2378, 12
  store i64 %2379, i64* %RCX.i1069, align 8
  %2380 = lshr i64 %2379, 63
  %2381 = add i64 %2379, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  store i64 %2381, i64* %RDX.i1044, align 8
  %2382 = icmp ult i64 %2381, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2383 = icmp ult i64 %2381, %2379
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = trunc i64 %2381 to i32
  %2387 = and i32 %2386, 252
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %21, align 1
  %2392 = xor i64 %2379, ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64)
  %2393 = xor i64 %2392, %2381
  %2394 = lshr i64 %2393, 4
  %2395 = trunc i64 %2394 to i8
  %2396 = and i8 %2395, 1
  store i8 %2396, i8* %26, align 1
  %2397 = icmp eq i64 %2381, 0
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %29, align 1
  %2399 = lshr i64 %2381, 63
  %2400 = trunc i64 %2399 to i8
  store i8 %2400, i8* %32, align 1
  %2401 = xor i64 %2399, lshr (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 63)
  %2402 = xor i64 %2399, %2380
  %2403 = add nuw nsw i64 %2401, %2402
  %2404 = icmp eq i64 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %38, align 1
  %2406 = add i64 %2379, add (i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64 4)
  %2407 = add i64 %2372, 28
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  %2410 = sext i32 %2409 to i64
  store i64 %2410, i64* %RCX.i1069, align 8
  %2411 = shl nsw i64 %2410, 2
  %2412 = add nsw i64 %2411, 12099600
  %2413 = add i64 %2372, 35
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RSI.i994, align 8
  %2417 = add i64 %2373, -704
  %2418 = add i64 %2372, 41
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  store i32 %2415, i32* %2419, align 4
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -28
  %2422 = load i64, i64* %3, align 8
  %2423 = add i64 %2422, 4
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2421 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = sext i32 %2425 to i64
  %2427 = mul nsw i64 %2426, 12
  store i64 %2427, i64* %RCX.i1069, align 8
  %2428 = lshr i64 %2427, 63
  %2429 = load i64, i64* %RAX.i1071, align 8
  %2430 = add i64 %2427, %2429
  store i64 %2430, i64* %RAX.i1071, align 8
  %2431 = icmp ult i64 %2430, %2429
  %2432 = icmp ult i64 %2430, %2427
  %2433 = or i1 %2431, %2432
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %14, align 1
  %2435 = trunc i64 %2430 to i32
  %2436 = and i32 %2435, 255
  %2437 = tail call i32 @llvm.ctpop.i32(i32 %2436)
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = xor i8 %2439, 1
  store i8 %2440, i8* %21, align 1
  %2441 = xor i64 %2427, %2429
  %2442 = xor i64 %2441, %2430
  %2443 = lshr i64 %2442, 4
  %2444 = trunc i64 %2443 to i8
  %2445 = and i8 %2444, 1
  store i8 %2445, i8* %26, align 1
  %2446 = icmp eq i64 %2430, 0
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %29, align 1
  %2448 = lshr i64 %2430, 63
  %2449 = trunc i64 %2448 to i8
  store i8 %2449, i8* %32, align 1
  %2450 = lshr i64 %2429, 63
  %2451 = xor i64 %2448, %2450
  %2452 = xor i64 %2448, %2428
  %2453 = add nuw nsw i64 %2451, %2452
  %2454 = icmp eq i64 %2453, 2
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %38, align 1
  %2456 = add i64 %2430, 4
  %2457 = add i64 %2422, 15
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = sext i32 %2459 to i64
  store i64 %2460, i64* %RAX.i1071, align 8
  %2461 = shl nsw i64 %2460, 2
  %2462 = add nsw i64 %2461, 11555248
  %2463 = add i64 %2422, 22
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  %2465 = load i32, i32* %2464, align 4
  %2466 = zext i32 %2465 to i64
  store i64 %2466, i64* %RSI.i994, align 8
  %2467 = add i64 %2420, -708
  %2468 = add i64 %2422, 28
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i32*
  store i32 %2465, i32* %2469, align 4
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -712
  %2472 = load i64, i64* %3, align 8
  %2473 = add i64 %2472, 10
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2471 to i32*
  store i32 21, i32* %2474, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_47eb59

block_.L_47eb59:                                  ; preds = %block_.L_47ed0c, %block_47eb0a
  %2475 = phi i64 [ %.pre83, %block_47eb0a ], [ %3034, %block_.L_47ed0c ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.1, %block_47eb0a ], [ %MEMORY.27, %block_.L_47ed0c ]
  %2476 = load i64, i64* %RBP.i, align 8
  %2477 = add i64 %2476, -712
  %2478 = add i64 %2475, 10
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i32*
  %2480 = load i32, i32* %2479, align 4
  %2481 = add i32 %2480, -400
  %2482 = icmp ult i32 %2480, 400
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %14, align 1
  %2484 = and i32 %2481, 255
  %2485 = tail call i32 @llvm.ctpop.i32(i32 %2484)
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  %2488 = xor i8 %2487, 1
  store i8 %2488, i8* %21, align 1
  %2489 = xor i32 %2480, 16
  %2490 = xor i32 %2489, %2481
  %2491 = lshr i32 %2490, 4
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  store i8 %2493, i8* %26, align 1
  %2494 = icmp eq i32 %2481, 0
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %29, align 1
  %2496 = lshr i32 %2481, 31
  %2497 = trunc i32 %2496 to i8
  store i8 %2497, i8* %32, align 1
  %2498 = lshr i32 %2480, 31
  %2499 = xor i32 %2496, %2498
  %2500 = add nuw nsw i32 %2499, %2498
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %38, align 1
  %2503 = icmp ne i8 %2497, 0
  %2504 = xor i1 %2503, %2501
  %.v113 = select i1 %2504, i64 16, i64 460
  %2505 = add i64 %2475, %.v113
  store i64 %2505, i64* %3, align 8
  br i1 %2504, label %block_47eb69, label %block_.L_47ed25

block_47eb69:                                     ; preds = %block_.L_47eb59
  %2506 = add i64 %2505, 7
  store i64 %2506, i64* %3, align 8
  %2507 = load i32, i32* %2479, align 4
  %2508 = sext i32 %2507 to i64
  store i64 %2508, i64* %RAX.i1071, align 8
  %2509 = add nsw i64 %2508, 12099168
  %2510 = add i64 %2505, 15
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i8*
  %2512 = load i8, i8* %2511, align 1
  %2513 = zext i8 %2512 to i64
  store i64 %2513, i64* %RCX.i1069, align 8
  %2514 = zext i8 %2512 to i32
  %2515 = add nsw i32 %2514, -3
  %2516 = icmp ult i8 %2512, 3
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %14, align 1
  %2518 = and i32 %2515, 255
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %21, align 1
  %2523 = xor i32 %2515, %2514
  %2524 = lshr i32 %2523, 4
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %26, align 1
  %2527 = icmp eq i32 %2515, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %29, align 1
  %2529 = lshr i32 %2515, 31
  %2530 = trunc i32 %2529 to i8
  store i8 %2530, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %2527, i64 419, i64 24
  %2531 = add i64 %2505, %.v114
  store i64 %2531, i64* %3, align 8
  br i1 %2527, label %block_.L_47ed0c, label %block_47eb81

block_47eb81:                                     ; preds = %block_47eb69
  %2532 = add i64 %2531, 7
  store i64 %2532, i64* %3, align 8
  %2533 = load i32, i32* %2479, align 4
  %2534 = sext i32 %2533 to i64
  store i64 %2534, i64* %RAX.i1071, align 8
  %2535 = add nsw i64 %2534, 12099168
  %2536 = add i64 %2531, 15
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i8*
  %2538 = load i8, i8* %2537, align 1
  %2539 = zext i8 %2538 to i64
  store i64 %2539, i64* %RCX.i1069, align 8
  %2540 = zext i8 %2538 to i32
  store i8 0, i8* %14, align 1
  %2541 = tail call i32 @llvm.ctpop.i32(i32 %2540)
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  %2544 = xor i8 %2543, 1
  store i8 %2544, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2545 = icmp eq i8 %2538, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v115 = select i1 %2545, i64 24, i64 395
  %2547 = add i64 %2531, %.v115
  store i64 %2547, i64* %3, align 8
  br i1 %2545, label %block_47eb99, label %block_.L_47ed0c

block_47eb99:                                     ; preds = %block_47eb81
  store i64 3, i64* %RAX.i1071, align 8
  %2548 = add i64 %2547, 11
  store i64 %2548, i64* %3, align 8
  %2549 = load i32, i32* %2479, align 4
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RDI.i889, align 8
  %2551 = add i64 %2476, -4
  %2552 = add i64 %2547, 14
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = sub i32 3, %2554
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RAX.i1071, align 8
  %2557 = icmp ugt i32 %2554, 3
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %14, align 1
  %2559 = and i32 %2555, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %21, align 1
  %2564 = xor i32 %2554, %2555
  %2565 = lshr i32 %2564, 4
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  store i8 %2567, i8* %26, align 1
  %2568 = icmp eq i32 %2555, 0
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %29, align 1
  %2570 = lshr i32 %2555, 31
  %2571 = trunc i32 %2570 to i8
  store i8 %2571, i8* %32, align 1
  %2572 = lshr i32 %2554, 31
  %2573 = add nuw nsw i32 %2570, %2572
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %38, align 1
  store i64 %2556, i64* %RSI.i994, align 8
  %2576 = add i64 %2547, -31145
  %2577 = add i64 %2547, 21
  %2578 = load i64, i64* %6, align 8
  %2579 = add i64 %2578, -8
  %2580 = inttoptr i64 %2579 to i64*
  store i64 %2577, i64* %2580, align 8
  store i64 %2579, i64* %6, align 8
  store i64 %2576, i64* %3, align 8
  %call2_47eba9 = tail call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* nonnull %0, i64 %2576, %struct.Memory* %MEMORY.21)
  %2581 = load i32, i32* %EAX.i885, align 4
  %2582 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2583 = and i32 %2581, 255
  %2584 = tail call i32 @llvm.ctpop.i32(i32 %2583)
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = xor i8 %2586, 1
  store i8 %2587, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2588 = icmp eq i32 %2581, 0
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %29, align 1
  %2590 = lshr i32 %2581, 31
  %2591 = trunc i32 %2590 to i8
  store i8 %2591, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v116 = select i1 %2588, i64 350, i64 9
  %2592 = add i64 %2582, %.v116
  store i64 %2592, i64* %3, align 8
  br i1 %2588, label %block_.L_47ed0c, label %block_47ebb7

block_47ebb7:                                     ; preds = %block_47eb99
  %2593 = load i64, i64* %RBP.i, align 8
  %2594 = add i64 %2593, -8
  %2595 = add i64 %2592, 3
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  %2597 = load i32, i32* %2596, align 4
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RDI.i889, align 8
  %2599 = add i64 %2593, -712
  %2600 = add i64 %2592, 9
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i32*
  %2602 = load i32, i32* %2601, align 4
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RSI.i994, align 8
  %2604 = add i64 %2592, 29961
  %2605 = add i64 %2592, 14
  %2606 = load i64, i64* %6, align 8
  %2607 = add i64 %2606, -8
  %2608 = inttoptr i64 %2607 to i64*
  store i64 %2605, i64* %2608, align 8
  store i64 %2607, i64* %6, align 8
  store i64 %2604, i64* %3, align 8
  %call2_47ebc0 = tail call %struct.Memory* @sub_4860c0.bdist(%struct.State* nonnull %0, i64 %2604, %struct.Memory* %MEMORY.21)
  %2609 = load i32, i32* %EAX.i885, align 4
  %2610 = load i64, i64* %3, align 8
  %2611 = add i32 %2609, -5
  %2612 = icmp ult i32 %2609, 5
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %14, align 1
  %2614 = and i32 %2611, 255
  %2615 = tail call i32 @llvm.ctpop.i32(i32 %2614)
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  store i8 %2618, i8* %21, align 1
  %2619 = xor i32 %2611, %2609
  %2620 = lshr i32 %2619, 4
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  store i8 %2622, i8* %26, align 1
  %2623 = icmp eq i32 %2611, 0
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %29, align 1
  %2625 = lshr i32 %2611, 31
  %2626 = trunc i32 %2625 to i8
  store i8 %2626, i8* %32, align 1
  %2627 = lshr i32 %2609, 31
  %2628 = xor i32 %2625, %2627
  %2629 = add nuw nsw i32 %2628, %2627
  %2630 = icmp eq i32 %2629, 2
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %38, align 1
  %2632 = icmp ne i8 %2626, 0
  %2633 = xor i1 %2632, %2630
  %.demorgan = or i1 %2623, %2633
  %.v117 = select i1 %.demorgan, i64 9, i64 327
  %2634 = add i64 %2610, %.v117
  store i64 %2634, i64* %3, align 8
  br i1 %.demorgan, label %block_47ebce, label %block_.L_47ed0c

block_47ebce:                                     ; preds = %block_47ebb7
  %2635 = load i64, i64* %RBP.i, align 8
  %2636 = add i64 %2635, -20
  %2637 = add i64 %2634, 7
  store i64 %2637, i64* %3, align 8
  %2638 = inttoptr i64 %2636 to i32*
  store i32 0, i32* %2638, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_47ebd5

block_.L_47ebd5:                                  ; preds = %block_.L_47ecf4, %block_47ebce
  %2639 = phi i64 [ %.pre84, %block_47ebce ], [ %3001, %block_.L_47ecf4 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_47ebce ], [ %MEMORY.26, %block_.L_47ecf4 ]
  %2640 = load i64, i64* %RBP.i, align 8
  %2641 = add i64 %2640, -20
  %2642 = add i64 %2639, 4
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = add i32 %2644, -8
  %2646 = icmp ult i32 %2644, 8
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %14, align 1
  %2648 = and i32 %2645, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %21, align 1
  %2653 = xor i32 %2645, %2644
  %2654 = lshr i32 %2653, 4
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  store i8 %2656, i8* %26, align 1
  %2657 = icmp eq i32 %2645, 0
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %29, align 1
  %2659 = lshr i32 %2645, 31
  %2660 = trunc i32 %2659 to i8
  store i8 %2660, i8* %32, align 1
  %2661 = lshr i32 %2644, 31
  %2662 = xor i32 %2659, %2661
  %2663 = add nuw nsw i32 %2662, %2661
  %2664 = icmp eq i32 %2663, 2
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %38, align 1
  %2666 = icmp ne i8 %2660, 0
  %2667 = xor i1 %2666, %2664
  %.v118 = select i1 %2667, i64 10, i64 306
  %2668 = add i64 %2639, %.v118
  store i64 %2668, i64* %3, align 8
  br i1 %2667, label %block_47ebdf, label %block_.L_47ed07

block_47ebdf:                                     ; preds = %block_.L_47ebd5
  %2669 = add i64 %2640, -712
  %2670 = add i64 %2668, 6
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i1071, align 8
  %2674 = add i64 %2668, 10
  store i64 %2674, i64* %3, align 8
  %2675 = load i32, i32* %2643, align 4
  %2676 = sext i32 %2675 to i64
  store i64 %2676, i64* %RCX.i1069, align 8
  %2677 = shl nsw i64 %2676, 2
  %2678 = add nsw i64 %2677, 8053168
  %2679 = add i64 %2668, 17
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = add i32 %2681, %2672
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RAX.i1071, align 8
  %2684 = icmp ult i32 %2682, %2672
  %2685 = icmp ult i32 %2682, %2681
  %2686 = or i1 %2684, %2685
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %14, align 1
  %2688 = and i32 %2682, 255
  %2689 = tail call i32 @llvm.ctpop.i32(i32 %2688)
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  %2692 = xor i8 %2691, 1
  store i8 %2692, i8* %21, align 1
  %2693 = xor i32 %2681, %2672
  %2694 = xor i32 %2693, %2682
  %2695 = lshr i32 %2694, 4
  %2696 = trunc i32 %2695 to i8
  %2697 = and i8 %2696, 1
  store i8 %2697, i8* %26, align 1
  %2698 = icmp eq i32 %2682, 0
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %29, align 1
  %2700 = lshr i32 %2682, 31
  %2701 = trunc i32 %2700 to i8
  store i8 %2701, i8* %32, align 1
  %2702 = lshr i32 %2672, 31
  %2703 = lshr i32 %2681, 31
  %2704 = xor i32 %2700, %2702
  %2705 = xor i32 %2700, %2703
  %2706 = add nuw nsw i32 %2704, %2705
  %2707 = icmp eq i32 %2706, 2
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %38, align 1
  %2709 = add i64 %2640, -716
  %2710 = add i64 %2668, 23
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  store i32 %2682, i32* %2711, align 4
  %2712 = load i64, i64* %RBP.i, align 8
  %2713 = add i64 %2712, -716
  %2714 = load i64, i64* %3, align 8
  %2715 = add i64 %2714, 7
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2713 to i32*
  %2717 = load i32, i32* %2716, align 4
  %2718 = sext i32 %2717 to i64
  store i64 %2718, i64* %RCX.i1069, align 8
  %2719 = add nsw i64 %2718, 12099168
  %2720 = add i64 %2714, 15
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i8*
  %2722 = load i8, i8* %2721, align 1
  %2723 = zext i8 %2722 to i64
  store i64 %2723, i64* %RAX.i1071, align 8
  %2724 = zext i8 %2722 to i32
  %2725 = add nsw i32 %2724, -3
  %2726 = icmp ult i8 %2722, 3
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %14, align 1
  %2728 = and i32 %2725, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %21, align 1
  %2733 = xor i32 %2725, %2724
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %26, align 1
  %2737 = icmp eq i32 %2725, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %29, align 1
  %2739 = lshr i32 %2725, 31
  %2740 = trunc i32 %2739 to i8
  store i8 %2740, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %2737, i64 254, i64 24
  %2741 = add i64 %2714, %.v119
  store i64 %2741, i64* %3, align 8
  br i1 %2737, label %block_.L_47ecf4, label %block_47ec0e

block_47ec0e:                                     ; preds = %block_47ebdf
  %2742 = add i64 %2741, 7
  store i64 %2742, i64* %3, align 8
  %2743 = load i32, i32* %2716, align 4
  %2744 = sext i32 %2743 to i64
  store i64 %2744, i64* %RAX.i1071, align 8
  %2745 = add nsw i64 %2744, 12099168
  %2746 = add i64 %2741, 15
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2745 to i8*
  %2748 = load i8, i8* %2747, align 1
  %2749 = zext i8 %2748 to i64
  store i64 %2749, i64* %RCX.i1069, align 8
  %2750 = zext i8 %2748 to i32
  %2751 = add i64 %2712, -4
  %2752 = add i64 %2741, 18
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = sub i32 %2750, %2754
  %2756 = icmp ult i32 %2750, %2754
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %14, align 1
  %2758 = and i32 %2755, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758)
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %21, align 1
  %2763 = xor i32 %2754, %2750
  %2764 = xor i32 %2763, %2755
  %2765 = lshr i32 %2764, 4
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  store i8 %2767, i8* %26, align 1
  %2768 = icmp eq i32 %2755, 0
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %29, align 1
  %2770 = lshr i32 %2755, 31
  %2771 = trunc i32 %2770 to i8
  store i8 %2771, i8* %32, align 1
  %2772 = lshr i32 %2754, 31
  %2773 = add nuw nsw i32 %2770, %2772
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %38, align 1
  %.v120 = select i1 %2768, i64 24, i64 230
  %2776 = add i64 %2741, %.v120
  store i64 %2776, i64* %3, align 8
  br i1 %2768, label %block_47ec26, label %block_.L_47ecf4

block_47ec26:                                     ; preds = %block_47ec0e
  %2777 = add i64 %2776, 6
  store i64 %2777, i64* %3, align 8
  %2778 = load i32, i32* %2716, align 4
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RDI.i889, align 8
  %2780 = add i64 %2712, -704
  %2781 = add i64 %2776, 12
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RSI.i994, align 8
  %2785 = add i64 %2776, 39402
  %2786 = add i64 %2776, 17
  %2787 = load i64, i64* %6, align 8
  %2788 = add i64 %2787, -8
  %2789 = inttoptr i64 %2788 to i64*
  store i64 %2786, i64* %2789, align 8
  store i64 %2788, i64* %6, align 8
  store i64 %2785, i64* %3, align 8
  %call2_47ec32 = tail call %struct.Memory* @sub_488610.is_same_worm(%struct.State* nonnull %0, i64 %2785, %struct.Memory* %MEMORY.22)
  %2790 = load i32, i32* %EAX.i885, align 4
  %2791 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2792 = and i32 %2790, 255
  %2793 = tail call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  store i8 %2796, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2797 = icmp eq i32 %2790, 0
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %29, align 1
  %2799 = lshr i32 %2790, 31
  %2800 = trunc i32 %2799 to i8
  store i8 %2800, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %2797, i64 9, i64 189
  %2801 = add i64 %2791, %.v121
  store i64 %2801, i64* %3, align 8
  br i1 %2797, label %block_47ec40, label %block_.L_47ecf4

block_47ec40:                                     ; preds = %block_47ec26
  %2802 = load i64, i64* %RBP.i, align 8
  %2803 = add i64 %2802, -716
  %2804 = add i64 %2801, 6
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RDI.i889, align 8
  %2808 = add i64 %2802, -708
  %2809 = add i64 %2801, 12
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  %2811 = load i32, i32* %2810, align 4
  %2812 = zext i32 %2811 to i64
  store i64 %2812, i64* %RSI.i994, align 8
  %2813 = add i64 %2801, 39376
  %2814 = add i64 %2801, 17
  %2815 = load i64, i64* %6, align 8
  %2816 = add i64 %2815, -8
  %2817 = inttoptr i64 %2816 to i64*
  store i64 %2814, i64* %2817, align 8
  store i64 %2816, i64* %6, align 8
  store i64 %2813, i64* %3, align 8
  %call2_47ec4c = tail call %struct.Memory* @sub_488610.is_same_worm(%struct.State* nonnull %0, i64 %2813, %struct.Memory* %MEMORY.22)
  %2818 = load i32, i32* %EAX.i885, align 4
  %2819 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2820 = and i32 %2818, 255
  %2821 = tail call i32 @llvm.ctpop.i32(i32 %2820)
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  store i8 %2824, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2825 = icmp eq i32 %2818, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %29, align 1
  %2827 = lshr i32 %2818, 31
  %2828 = trunc i32 %2827 to i8
  store i8 %2828, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v122 = select i1 %2825, i64 9, i64 163
  %2829 = add i64 %2819, %.v122
  store i64 %2829, i64* %3, align 8
  br i1 %2825, label %block_47ec5a, label %block_.L_47ecf4

block_47ec5a:                                     ; preds = %block_47ec40
  store i64 ptrtoint (%G__0x582cc6_type* @G__0x582cc6 to i64), i64* %RDX.i1044, align 8
  store i64 0, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2830 = load i64, i64* %RBP.i, align 8
  %2831 = add i64 %2830, -8
  %2832 = add i64 %2829, 15
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %RDI.i889, align 8
  %2836 = add i64 %2830, -4
  %2837 = add i64 %2829, 18
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RSI.i994, align 8
  %2841 = add i64 %2830, -704
  %2842 = add i64 %2829, 24
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RCX.i1069, align 8
  store i64 0, i64* %51, align 8
  store i64 0, i64* %52, align 8
  %2846 = add i64 %2829, -482858
  %2847 = add i64 %2829, 35
  %2848 = load i64, i64* %6, align 8
  %2849 = add i64 %2848, -8
  %2850 = inttoptr i64 %2849 to i64*
  store i64 %2847, i64* %2850, align 8
  store i64 %2849, i64* %6, align 8
  store i64 %2846, i64* %3, align 8
  %call2_47ec78 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %2846, %struct.Memory* %MEMORY.22)
  %2851 = load i32, i32* %EAX.i885, align 4
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
  %.v123 = select i1 %2858, i64 114, i64 9
  %2862 = add i64 %2852, %.v123
  store i64 %2862, i64* %3, align 8
  br i1 %2858, label %block_.L_47ecef, label %block_47ec86

block_47ec86:                                     ; preds = %block_47ec5a
  store i64 0, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i1044, align 8
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -716
  %2865 = add i64 %2862, 10
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RDI.i889, align 8
  %2869 = add i64 %2863, -704
  %2870 = add i64 %2862, 16
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RSI.i994, align 8
  %2874 = add i64 %2862, -135702
  %2875 = add i64 %2862, 21
  %2876 = load i64, i64* %6, align 8
  %2877 = add i64 %2876, -8
  %2878 = inttoptr i64 %2877 to i64*
  store i64 %2875, i64* %2878, align 8
  store i64 %2877, i64* %6, align 8
  store i64 %2874, i64* %3, align 8
  %call2_47ec96 = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %2874, %struct.Memory* %MEMORY.22)
  %2879 = load i32, i32* %EAX.i885, align 4
  %2880 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2881 = and i32 %2879, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2886 = icmp eq i32 %2879, 0
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %29, align 1
  %2888 = lshr i32 %2879, 31
  %2889 = trunc i32 %2888 to i8
  store i8 %2889, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v124 = select i1 %2886, i64 9, i64 29
  %2890 = add i64 %2880, %.v124
  store i64 %2890, i64* %3, align 8
  br i1 %2886, label %block_47eca4, label %block_.L_47ecb8

block_47eca4:                                     ; preds = %block_47ec86
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -8
  %2893 = add i64 %2890, 3
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RDI.i889, align 8
  %2897 = add i64 %2891, -716
  %2898 = add i64 %2890, 9
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = zext i32 %2900 to i64
  store i64 %2901, i64* %RSI.i994, align 8
  %2902 = add i64 %2891, -704
  %2903 = add i64 %2890, 15
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RDX.i1044, align 8
  %2907 = add i64 %2890, -311124
  %2908 = add i64 %2890, 20
  %2909 = load i64, i64* %6, align 8
  %2910 = add i64 %2909, -8
  %2911 = inttoptr i64 %2910 to i64*
  store i64 %2908, i64* %2911, align 8
  store i64 %2910, i64* %6, align 8
  store i64 %2907, i64* %3, align 8
  %call2_47ecb3 = tail call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* nonnull %0, i64 %2907, %struct.Memory* %MEMORY.22)
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_47ecb8

block_.L_47ecb8:                                  ; preds = %block_47ec86, %block_47eca4
  %2912 = phi i64 [ %.pre85, %block_47eca4 ], [ %2890, %block_47ec86 ]
  store i64 0, i64* %RAX.i1071, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i1044, align 8
  %2913 = load i64, i64* %RBP.i, align 8
  %2914 = add i64 %2913, -716
  %2915 = add i64 %2912, 10
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = zext i32 %2917 to i64
  store i64 %2918, i64* %RDI.i889, align 8
  %2919 = add i64 %2913, -708
  %2920 = add i64 %2912, 16
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RSI.i994, align 8
  %2924 = add i64 %2912, -135752
  %2925 = add i64 %2912, 21
  %2926 = load i64, i64* %6, align 8
  %2927 = add i64 %2926, -8
  %2928 = inttoptr i64 %2927 to i64*
  store i64 %2925, i64* %2928, align 8
  store i64 %2927, i64* %6, align 8
  store i64 %2924, i64* %3, align 8
  %call2_47ecc8 = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %2924, %struct.Memory* %MEMORY.22)
  %2929 = load i32, i32* %EAX.i885, align 4
  %2930 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2931 = and i32 %2929, 255
  %2932 = tail call i32 @llvm.ctpop.i32(i32 %2931)
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  %2935 = xor i8 %2934, 1
  store i8 %2935, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2936 = icmp eq i32 %2929, 0
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %29, align 1
  %2938 = lshr i32 %2929, 31
  %2939 = trunc i32 %2938 to i8
  store i8 %2939, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v125 = select i1 %2936, i64 9, i64 29
  %2940 = add i64 %2930, %.v125
  store i64 %2940, i64* %3, align 8
  br i1 %2936, label %block_47ecd6, label %block_.L_47ecea

block_47ecd6:                                     ; preds = %block_.L_47ecb8
  %2941 = load i64, i64* %RBP.i, align 8
  %2942 = add i64 %2941, -8
  %2943 = add i64 %2940, 3
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = zext i32 %2945 to i64
  store i64 %2946, i64* %RDI.i889, align 8
  %2947 = add i64 %2941, -716
  %2948 = add i64 %2940, 9
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i32*
  %2950 = load i32, i32* %2949, align 4
  %2951 = zext i32 %2950 to i64
  store i64 %2951, i64* %RSI.i994, align 8
  %2952 = add i64 %2941, -708
  %2953 = add i64 %2940, 15
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2952 to i32*
  %2955 = load i32, i32* %2954, align 4
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RDX.i1044, align 8
  %2957 = add i64 %2940, -311174
  %2958 = add i64 %2940, 20
  %2959 = load i64, i64* %6, align 8
  %2960 = add i64 %2959, -8
  %2961 = inttoptr i64 %2960 to i64*
  store i64 %2958, i64* %2961, align 8
  store i64 %2960, i64* %6, align 8
  store i64 %2957, i64* %3, align 8
  %call2_47ece5 = tail call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* nonnull %0, i64 %2957, %struct.Memory* %call2_47ecc8)
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_47ecea

block_.L_47ecea:                                  ; preds = %block_.L_47ecb8, %block_47ecd6
  %2962 = phi i64 [ %2940, %block_.L_47ecb8 ], [ %.pre86, %block_47ecd6 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_47ecc8, %block_.L_47ecb8 ], [ %call2_47ece5, %block_47ecd6 ]
  %2963 = add i64 %2962, -462730
  %2964 = add i64 %2962, 5
  %2965 = load i64, i64* %6, align 8
  %2966 = add i64 %2965, -8
  %2967 = inttoptr i64 %2966 to i64*
  store i64 %2964, i64* %2967, align 8
  store i64 %2966, i64* %6, align 8
  store i64 %2963, i64* %3, align 8
  %call2_47ecea = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2963, %struct.Memory* %MEMORY.24)
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_47ecef

block_.L_47ecef:                                  ; preds = %block_.L_47ecea, %block_47ec5a
  %2968 = phi i64 [ %2862, %block_47ec5a ], [ %.pre87, %block_.L_47ecea ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.22, %block_47ec5a ], [ %call2_47ecea, %block_.L_47ecea ]
  %2969 = add i64 %2968, 5
  store i64 %2969, i64* %3, align 8
  br label %block_.L_47ecf4

block_.L_47ecf4:                                  ; preds = %block_47ec40, %block_47ec26, %block_47ec0e, %block_.L_47ecef, %block_47ebdf
  %2970 = phi i64 [ %2741, %block_47ebdf ], [ %2776, %block_47ec0e ], [ %2801, %block_47ec26 ], [ %2829, %block_47ec40 ], [ %2969, %block_.L_47ecef ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.22, %block_47ebdf ], [ %MEMORY.22, %block_47ec0e ], [ %MEMORY.22, %block_47ec26 ], [ %MEMORY.22, %block_47ec40 ], [ %MEMORY.25, %block_.L_47ecef ]
  %2971 = load i64, i64* %RBP.i, align 8
  %2972 = add i64 %2971, -20
  %2973 = add i64 %2970, 8
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = add i32 %2975, 1
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RAX.i1071, align 8
  %2978 = icmp eq i32 %2975, -1
  %2979 = icmp eq i32 %2976, 0
  %2980 = or i1 %2978, %2979
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %14, align 1
  %2982 = and i32 %2976, 255
  %2983 = tail call i32 @llvm.ctpop.i32(i32 %2982)
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = xor i8 %2985, 1
  store i8 %2986, i8* %21, align 1
  %2987 = xor i32 %2976, %2975
  %2988 = lshr i32 %2987, 4
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  store i8 %2990, i8* %26, align 1
  %2991 = zext i1 %2979 to i8
  store i8 %2991, i8* %29, align 1
  %2992 = lshr i32 %2976, 31
  %2993 = trunc i32 %2992 to i8
  store i8 %2993, i8* %32, align 1
  %2994 = lshr i32 %2975, 31
  %2995 = xor i32 %2992, %2994
  %2996 = add nuw nsw i32 %2995, %2992
  %2997 = icmp eq i32 %2996, 2
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %38, align 1
  %2999 = add i64 %2970, 14
  store i64 %2999, i64* %3, align 8
  store i32 %2976, i32* %2974, align 4
  %3000 = load i64, i64* %3, align 8
  %3001 = add i64 %3000, -301
  store i64 %3001, i64* %3, align 8
  br label %block_.L_47ebd5

block_.L_47ed07:                                  ; preds = %block_.L_47ebd5
  %3002 = add i64 %2668, 5
  store i64 %3002, i64* %3, align 8
  br label %block_.L_47ed0c

block_.L_47ed0c:                                  ; preds = %block_47ebb7, %block_47eb81, %block_.L_47ed07, %block_47eb99, %block_47eb69
  %3003 = phi i64 [ %2531, %block_47eb69 ], [ %2547, %block_47eb81 ], [ %2592, %block_47eb99 ], [ %2634, %block_47ebb7 ], [ %3002, %block_.L_47ed07 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.21, %block_47eb69 ], [ %MEMORY.21, %block_47eb81 ], [ %MEMORY.21, %block_47eb99 ], [ %MEMORY.21, %block_47ebb7 ], [ %MEMORY.22, %block_.L_47ed07 ]
  %3004 = load i64, i64* %RBP.i, align 8
  %3005 = add i64 %3004, -712
  %3006 = add i64 %3003, 11
  store i64 %3006, i64* %3, align 8
  %3007 = inttoptr i64 %3005 to i32*
  %3008 = load i32, i32* %3007, align 4
  %3009 = add i32 %3008, 1
  %3010 = zext i32 %3009 to i64
  store i64 %3010, i64* %RAX.i1071, align 8
  %3011 = icmp eq i32 %3008, -1
  %3012 = icmp eq i32 %3009, 0
  %3013 = or i1 %3011, %3012
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %14, align 1
  %3015 = and i32 %3009, 255
  %3016 = tail call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  store i8 %3019, i8* %21, align 1
  %3020 = xor i32 %3009, %3008
  %3021 = lshr i32 %3020, 4
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  store i8 %3023, i8* %26, align 1
  %3024 = zext i1 %3012 to i8
  store i8 %3024, i8* %29, align 1
  %3025 = lshr i32 %3009, 31
  %3026 = trunc i32 %3025 to i8
  store i8 %3026, i8* %32, align 1
  %3027 = lshr i32 %3008, 31
  %3028 = xor i32 %3025, %3027
  %3029 = add nuw nsw i32 %3028, %3025
  %3030 = icmp eq i32 %3029, 2
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %38, align 1
  %3032 = add i64 %3003, 20
  store i64 %3032, i64* %3, align 8
  store i32 %3009, i32* %3007, align 4
  %3033 = load i64, i64* %3, align 8
  %3034 = add i64 %3033, -455
  store i64 %3034, i64* %3, align 8
  br label %block_.L_47eb59

block_.L_47ed25:                                  ; preds = %block_.L_47eb59
  %3035 = add i64 %2505, 5
  store i64 %3035, i64* %3, align 8
  br label %block_.L_47ed2a

block_.L_47ed2a:                                  ; preds = %block_.L_47ead1, %block_.L_47ed25, %block_47eaef
  %3036 = phi i64 [ %2325, %block_.L_47ead1 ], [ %2372, %block_47eaef ], [ %3035, %block_.L_47ed25 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.1, %block_.L_47ead1 ], [ %MEMORY.1, %block_47eaef ], [ %MEMORY.21, %block_.L_47ed25 ]
  %3037 = add i64 %3036, 5
  store i64 %3037, i64* %3, align 8
  br label %block_.L_47ed2f

block_.L_47ed2f:                                  ; preds = %block_.L_47ed2a, %block_.L_47eacc
  %storemerge60 = phi i64 [ %2300, %block_.L_47eacc ], [ %3037, %block_.L_47ed2a ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.1, %block_.L_47eacc ], [ %MEMORY.28, %block_.L_47ed2a ]
  %3038 = add i64 %storemerge60, 5
  store i64 %3038, i64* %3, align 8
  br label %block_.L_47ed34

block_.L_47ed34:                                  ; preds = %block_.L_47ed2f, %block_.L_47e9a5
  %storemerge59 = phi i64 [ %1809, %block_.L_47e9a5 ], [ %3038, %block_.L_47ed2f ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.5, %block_.L_47e9a5 ], [ %MEMORY.29, %block_.L_47ed2f ]
  %3039 = add i64 %storemerge59, 5
  br label %block_.L_47ed39

block_.L_47ed39:                                  ; preds = %block_.L_47ed34, %block_47e5b5, %block_47e581, %block_47e54a
  %.sink = phi i64 [ %3039, %block_.L_47ed34 ], [ %695, %block_47e5b5 ], [ %633, %block_47e581 ], [ %542, %block_47e54a ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.30, %block_.L_47ed34 ], [ %MEMORY.1, %block_47e5b5 ], [ %MEMORY.1, %block_47e581 ], [ %MEMORY.1, %block_47e54a ]
  %3040 = load i64, i64* %RBP.i, align 8
  %3041 = add i64 %3040, -12
  %3042 = add i64 %.sink, 3
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = add i32 %3044, 1
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RAX.i1071, align 8
  %3047 = icmp eq i32 %3044, -1
  %3048 = icmp eq i32 %3045, 0
  %3049 = or i1 %3047, %3048
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %14, align 1
  %3051 = and i32 %3045, 255
  %3052 = tail call i32 @llvm.ctpop.i32(i32 %3051)
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  store i8 %3055, i8* %21, align 1
  %3056 = xor i32 %3045, %3044
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %26, align 1
  %3060 = zext i1 %3048 to i8
  store i8 %3060, i8* %29, align 1
  %3061 = lshr i32 %3045, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %32, align 1
  %3063 = lshr i32 %3044, 31
  %3064 = xor i32 %3061, %3063
  %3065 = add nuw nsw i32 %3064, %3061
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %38, align 1
  %3068 = add i64 %.sink, 9
  store i64 %3068, i64* %3, align 8
  store i32 %3045, i32* %3043, align 4
  %3069 = load i64, i64* %3, align 8
  %3070 = add i64 %3069, -2303
  store i64 %3070, i64* %3, align 8
  br label %block_.L_47e443

block_.L_47ed47.loopexit:                         ; preds = %block_.L_47e443
  br label %block_.L_47ed47

block_.L_47ed47:                                  ; preds = %block_.L_47ed47.loopexit, %block_47e47a
  %3071 = phi i64 [ %191, %block_47e47a ], [ %116, %block_.L_47ed47.loopexit ]
  %3072 = phi i64 [ %208, %block_47e47a ], [ %145, %block_.L_47ed47.loopexit ]
  %3073 = add i64 %3072, 5
  store i64 %3073, i64* %3, align 8
  br label %block_.L_47ed4c

block_.L_47ed4c:                                  ; preds = %block_.L_47ed47, %block_47e437
  %3074 = phi i64 [ %55, %block_47e437 ], [ %3071, %block_.L_47ed47 ]
  %storemerge = phi i64 [ %111, %block_47e437 ], [ %3073, %block_.L_47ed47 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.0, %block_47e437 ], [ %MEMORY.1, %block_.L_47ed47 ]
  %3075 = add i64 %3074, -8
  %3076 = add i64 %storemerge, 3
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3075 to i32*
  %3078 = load i32, i32* %3077, align 4
  %3079 = add i32 %3078, 1
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RAX.i1071, align 8
  %3081 = icmp eq i32 %3078, -1
  %3082 = icmp eq i32 %3079, 0
  %3083 = or i1 %3081, %3082
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %14, align 1
  %3085 = and i32 %3079, 255
  %3086 = tail call i32 @llvm.ctpop.i32(i32 %3085)
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  store i8 %3089, i8* %21, align 1
  %3090 = xor i32 %3079, %3078
  %3091 = lshr i32 %3090, 4
  %3092 = trunc i32 %3091 to i8
  %3093 = and i8 %3092, 1
  store i8 %3093, i8* %26, align 1
  %3094 = zext i1 %3082 to i8
  store i8 %3094, i8* %29, align 1
  %3095 = lshr i32 %3079, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %32, align 1
  %3097 = lshr i32 %3078, 31
  %3098 = xor i32 %3095, %3097
  %3099 = add nuw nsw i32 %3098, %3095
  %3100 = icmp eq i32 %3099, 2
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %38, align 1
  %3102 = add i64 %storemerge, 9
  store i64 %3102, i64* %3, align 8
  store i32 %3079, i32* %3077, align 4
  %3103 = load i64, i64* %3, align 8
  %3104 = add i64 %3103, -2368
  store i64 %3104, i64* %3, align 8
  br label %block_.L_47e415

block_.L_47ed5a:                                  ; preds = %block_.L_47e415
  %3105 = load i64, i64* %6, align 8
  %3106 = add i64 %3105, 736
  store i64 %3106, i64* %6, align 8
  %3107 = icmp ugt i64 %3105, -737
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %14, align 1
  %3109 = trunc i64 %3106 to i32
  %3110 = and i32 %3109, 255
  %3111 = tail call i32 @llvm.ctpop.i32(i32 %3110)
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  %3114 = xor i8 %3113, 1
  store i8 %3114, i8* %21, align 1
  %3115 = xor i64 %3106, %3105
  %3116 = lshr i64 %3115, 4
  %3117 = trunc i64 %3116 to i8
  %3118 = and i8 %3117, 1
  store i8 %3118, i8* %26, align 1
  %3119 = icmp eq i64 %3106, 0
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %29, align 1
  %3121 = lshr i64 %3106, 63
  %3122 = trunc i64 %3121 to i8
  store i8 %3122, i8* %32, align 1
  %3123 = lshr i64 %3105, 63
  %3124 = xor i64 %3121, %3123
  %3125 = add nuw nsw i64 %3124, %3121
  %3126 = icmp eq i64 %3125, 2
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %38, align 1
  %3128 = add i64 %84, 8
  store i64 %3128, i64* %3, align 8
  %3129 = add i64 %3105, 744
  %3130 = inttoptr i64 %3106 to i64*
  %3131 = load i64, i64* %3130, align 8
  store i64 %3131, i64* %RBP.i, align 8
  store i64 %3129, i64* %6, align 8
  %3132 = add i64 %84, 9
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3129 to i64*
  %3134 = load i64, i64* %3133, align 8
  store i64 %3134, i64* %3, align 8
  %3135 = add i64 %3105, 752
  store i64 %3135, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x2e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -736
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 736
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
define %struct.Memory* @routine_jge_.L_47ed5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e43c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ed4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x78__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_47ed47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47e47f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ed47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_je_.L_47e4bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47e9aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47e50f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jmpq_.L_47e525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_47e54f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47ed39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_47e586(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e5ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 552
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2b0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.extended_chainlinks(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_47e9a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47e992(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl_MINUS0x2b0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -688
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -692
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -696
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
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
define %struct.Memory* @routine_movslq_MINUS0x2b8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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
define %struct.Memory* @routine_je_.L_47e646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47e696(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
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
define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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
define %struct.Memory* @routine_callq_.disconnect(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e696(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e6e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47e6e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.string_connect(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47e718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e768(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x581daa___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581daa_type* @G__0x581daa to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_47e97f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47e834(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e834(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x800___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
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
define %struct.Memory* @routine_jne_.L_47e7f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47e820(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582c08___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582c08_type* @G__0x582c08 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
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
define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
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
define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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
define %struct.Memory* @routine_callq_.add_connection_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e8d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47e8d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e899(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47e8c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582c49___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582c49_type* @G__0x582c49 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.add_cut_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e97a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47e93c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47e966(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582c84___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582c84_type* @G__0x582c84 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -728
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
define %struct.Memory* @routine_jmpq_.L_47e5ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47e997(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47e5d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ed34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_47ead1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x2c__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 44
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
define %struct.Memory* @routine_jge_.L_47eacc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x4__rdi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_imulq__0x68___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 104
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
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movslq_0x4__rdx__rsi_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 104
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
define %struct.Memory* @routine_movl__r8d__MINUS0x2bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -700
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
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
define %struct.Memory* @routine_movl___rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
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
define %struct.Memory* @routine_jne_.L_47eab9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
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
define %struct.Memory* @routine_callq_.add_strategical_defense_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47eabe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47e9ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ed2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47ed2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.cut_possible(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47ed2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x4__rdx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl_0xb8a010___rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 12099600
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x2c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -704
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb051b0___rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11555248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x2c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -708
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x2c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
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
define %struct.Memory* @routine_jge_.L_47ed25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
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
define %struct.Memory* @routine_je_.L_47ed0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47ed0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
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
define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
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
define %struct.Memory* @routine_callq_.bdist(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
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
define %struct.Memory* @routine_jg_.L_47ed0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_47ed07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x2cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2cc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -716
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
define %struct.Memory* @routine_je_.L_47ecf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2cc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -716
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
define %struct.Memory* @routine_jne_.L_47ecf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -716
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
define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -704
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
define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -708
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
define %struct.Memory* @routine_movq__0x582cc6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582cc6_type* @G__0x582cc6 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -704
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
define %struct.Memory* @routine_je_.L_47ecef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47ecb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -716
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
define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -704
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
define %struct.Memory* @routine_jne_.L_47ecea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -708
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
define %struct.Memory* @routine_jmpq_.L_47ecf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ecf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ebd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ed0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ed11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47eb59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ed2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47e443(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47e415(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 736
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -737
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
