; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G_0xb54cec_type = type <{ [4 x i8] }>
%G__0x58078f_type = type <{ [8 x i8] }>
%G__0x5807bf_type = type <{ [8 x i8] }>
%G__0x5807e7_type = type <{ [8 x i8] }>
%G__0x5807fc_type = type <{ [8 x i8] }>
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
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G_0xb54cec = local_unnamed_addr global %G_0xb54cec_type zeroinitializer
@G__0x58078f = global %G__0x58078f_type zeroinitializer
@G__0x5807bf = global %G__0x5807bf_type zeroinitializer
@G__0x5807e7 = global %G__0x5807e7_type zeroinitializer
@G__0x5807fc = global %G__0x5807fc_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451ce0.color_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43e770.owl_analyze_semeai(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_470290.update_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @new_semeai(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -360
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 352
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i985 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 3, i64* %RAX.i985, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i982 = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i982, align 4
  %43 = add i64 %10, 18
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -20
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* %RAX.i985, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -4
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 3
  store i64 %59, i64* %3, align 8
  %60 = trunc i64 %55 to i32
  %61 = inttoptr i64 %57 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %60, %62
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RAX.i985, align 8
  %EAX.i972 = bitcast %union.anon* %39 to i32*
  %65 = add i64 %56, -28
  %66 = add i64 %58, 6
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 %63, i32* %67, align 4
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -228
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 10
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 3, i32* %72, align 4
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -232
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 10
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i32*
  store i32 3, i32* %77, align 4
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -236
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 10
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i32*
  store i32 3, i32* %82, align 4
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -240
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 10
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i32*
  store i32 3, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -292
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 10
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 3, i32* %92, align 4
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -296
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 10
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 3, i32* %97, align 4
  %98 = load i64, i64* %3, align 8
  %99 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %100 = and i32 %99, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %105 = icmp eq i32 %99, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %29, align 1
  %107 = lshr i32 %99, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %105, i64 14, i64 19
  %109 = add i64 %98, %.v
  store i64 %109, i64* %3, align 8
  br i1 %105, label %block_470601, label %block_.L_470606

block_470601:                                     ; preds = %entry
  %110 = add i64 %109, 39
  store i64 %110, i64* %3, align 8
  %.pre87 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %.pre88 = bitcast %union.anon* %39 to i8*
  br label %block_.L_470628

block_.L_470606:                                  ; preds = %entry
  %RDI.i954 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -4
  %113 = add i64 %109, 3
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RDI.i954, align 8
  %117 = add i64 %109, -125222
  %118 = add i64 %109, 8
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %121, align 8
  store i64 %120, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  %call2_470609 = tail call %struct.Memory* @sub_451ce0.color_to_string(%struct.State* nonnull %0, i64 %117, %struct.Memory* %2)
  %122 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58078f_type* @G__0x58078f to i64), i64* %RDI.i954, align 8
  %RSI.i949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %123 = load i64, i64* %RAX.i985, align 8
  store i64 %123, i64* %RSI.i949, align 8
  %AL.i946 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i946, align 1
  %124 = add i64 %122, -125022
  %125 = add i64 %122, 20
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %call2_47061d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %124, %struct.Memory* %call2_470609)
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -316
  %131 = load i32, i32* %EAX.i972, align 4
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 6
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %130 to i32*
  store i32 %131, i32* %134, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_470628

block_.L_470628:                                  ; preds = %block_.L_470606, %block_470601
  %AL.i395.pre-phi = phi i8* [ %AL.i946, %block_.L_470606 ], [ %.pre88, %block_470601 ]
  %RDI.i674.pre-phi = phi i64* [ %RDI.i954, %block_.L_470606 ], [ %.pre87, %block_470601 ]
  %135 = phi i64 [ %.pre, %block_.L_470606 ], [ %110, %block_470601 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_47061d, %block_.L_470606 ], [ %2, %block_470601 ]
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -8
  %138 = add i64 %135, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 0, i32* %139, align 4
  %RCX.i928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R8.i372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R10.i245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_47062f

block_.L_47062f:                                  ; preds = %block_.L_470e94, %block_.L_470628
  %141 = phi i64 [ %.pre63, %block_.L_470628 ], [ %3258, %block_.L_470e94 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_470628 ], [ %MEMORY.31, %block_.L_470e94 ]
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -8
  %144 = add i64 %141, 3
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX.i985, align 8
  %148 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %149 = sub i32 %146, %148
  %150 = icmp ult i32 %146, %148
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %14, align 1
  %152 = and i32 %149, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1
  %157 = xor i32 %148, %146
  %158 = xor i32 %157, %149
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %26, align 1
  %162 = icmp eq i32 %149, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %29, align 1
  %164 = lshr i32 %149, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %32, align 1
  %166 = lshr i32 %146, 31
  %167 = lshr i32 %148, 31
  %168 = xor i32 %167, %166
  %169 = xor i32 %164, %166
  %170 = add nuw nsw i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %38, align 1
  %173 = icmp ne i8 %165, 0
  %174 = xor i1 %173, %171
  %.v99 = select i1 %174, i64 16, i64 2163
  %175 = add i64 %141, %.v99
  store i64 %175, i64* %3, align 8
  br i1 %174, label %block_47063f, label %block_.L_470ea2

block_47063f:                                     ; preds = %block_.L_47062f
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %176 = add i64 %142, -304
  %177 = add i64 %175, 20
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 0, i32* %178, align 4
  %179 = load i64, i64* %3, align 8
  %180 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %180, i64* %RCX.i928, align 8
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -8
  %183 = add i64 %179, 12
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = mul nsw i64 %186, 104
  store i64 %187, i64* %RDX.i925, align 8
  %188 = lshr i64 %187, 63
  %189 = add i64 %187, %180
  store i64 %189, i64* %RCX.i928, align 8
  %190 = icmp ult i64 %189, %180
  %191 = icmp ult i64 %189, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %14, align 1
  %194 = trunc i64 %189 to i32
  %195 = and i32 %194, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %21, align 1
  %200 = xor i64 %187, %180
  %201 = xor i64 %200, %189
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %26, align 1
  %205 = icmp eq i64 %189, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %29, align 1
  %207 = lshr i64 %189, 63
  %208 = trunc i64 %207 to i8
  store i8 %208, i8* %32, align 1
  %209 = lshr i64 %180, 63
  %210 = xor i64 %207, %209
  %211 = xor i64 %207, %188
  %212 = add nuw nsw i64 %210, %211
  %213 = icmp eq i64 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %38, align 1
  %215 = inttoptr i64 %189 to i32*
  %216 = add i64 %179, 22
  store i64 %216, i64* %3, align 8
  %217 = load i32, i32* %215, align 4
  %218 = sext i32 %217 to i64
  %219 = mul nsw i64 %218, 76
  store i64 %219, i64* %RCX.i928, align 8
  %220 = lshr i64 %219, 63
  %221 = load i64, i64* %RAX.i985, align 8
  %222 = add i64 %219, %221
  store i64 %222, i64* %RAX.i985, align 8
  %223 = icmp ult i64 %222, %221
  %224 = icmp ult i64 %222, %219
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1
  %227 = trunc i64 %222 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %21, align 1
  %233 = xor i64 %219, %221
  %234 = xor i64 %233, %222
  %235 = lshr i64 %234, 4
  %236 = trunc i64 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %26, align 1
  %238 = icmp eq i64 %222, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %29, align 1
  %240 = lshr i64 %222, 63
  %241 = trunc i64 %240 to i8
  store i8 %241, i8* %32, align 1
  %242 = lshr i64 %221, 63
  %243 = xor i64 %240, %242
  %244 = xor i64 %240, %220
  %245 = add nuw nsw i64 %243, %244
  %246 = icmp eq i64 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %38, align 1
  %248 = inttoptr i64 %222 to i32*
  %249 = add i64 %179, 31
  store i64 %249, i64* %3, align 8
  %250 = load i32, i32* %248, align 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RSI.i911, align 8
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -4
  %254 = add i64 %179, 34
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sub i32 %250, %256
  %258 = icmp ult i32 %250, %256
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %14, align 1
  %260 = and i32 %257, 255
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %21, align 1
  %265 = xor i32 %256, %250
  %266 = xor i32 %265, %257
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %26, align 1
  %270 = icmp eq i32 %257, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %29, align 1
  %272 = lshr i32 %257, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %32, align 1
  %274 = lshr i32 %250, 31
  %275 = lshr i32 %256, 31
  %276 = xor i32 %275, %274
  %277 = xor i32 %272, %274
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %38, align 1
  %.v100 = select i1 %270, i64 40, i64 138
  %281 = add i64 %179, %.v100
  store i64 %281, i64* %3, align 8
  br i1 %270, label %block_47067b, label %block_.L_4706dd

block_47067b:                                     ; preds = %block_47063f
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %282 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %282, i64* %RCX.i928, align 8
  %283 = add i64 %252, -8
  %284 = add i64 %281, 22
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = mul nsw i64 %287, 104
  store i64 %288, i64* %RDX.i925, align 8
  %289 = lshr i64 %288, 63
  %290 = add i64 %288, %282
  store i64 %290, i64* %RCX.i928, align 8
  %291 = icmp ult i64 %290, %282
  %292 = icmp ult i64 %290, %288
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = trunc i64 %290 to i32
  %296 = and i32 %295, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %21, align 1
  %301 = xor i64 %288, %282
  %302 = xor i64 %301, %290
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %26, align 1
  %306 = icmp eq i64 %290, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %29, align 1
  %308 = lshr i64 %290, 63
  %309 = trunc i64 %308 to i8
  store i8 %309, i8* %32, align 1
  %310 = lshr i64 %282, 63
  %311 = xor i64 %308, %310
  %312 = xor i64 %308, %289
  %313 = add nuw nsw i64 %311, %312
  %314 = icmp eq i64 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %38, align 1
  %316 = inttoptr i64 %290 to i32*
  %317 = add i64 %281, 32
  store i64 %317, i64* %3, align 8
  %318 = load i32, i32* %316, align 4
  %319 = sext i32 %318 to i64
  %320 = mul nsw i64 %319, 76
  store i64 %320, i64* %RCX.i928, align 8
  %321 = lshr i64 %320, 63
  %322 = load i64, i64* %RAX.i985, align 8
  %323 = add i64 %320, %322
  store i64 %323, i64* %RAX.i985, align 8
  %324 = icmp ult i64 %323, %322
  %325 = icmp ult i64 %323, %320
  %326 = or i1 %324, %325
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %14, align 1
  %328 = trunc i64 %323 to i32
  %329 = and i32 %328, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  %334 = xor i64 %320, %322
  %335 = xor i64 %334, %323
  %336 = lshr i64 %335, 4
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %26, align 1
  %339 = icmp eq i64 %323, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %29, align 1
  %341 = lshr i64 %323, 63
  %342 = trunc i64 %341 to i8
  store i8 %342, i8* %32, align 1
  %343 = lshr i64 %322, 63
  %344 = xor i64 %341, %343
  %345 = xor i64 %341, %321
  %346 = add nuw nsw i64 %344, %345
  %347 = icmp eq i64 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %38, align 1
  %349 = add i64 %323, 64
  %350 = add i64 %281, 43
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  store i8 0, i8* %14, align 1
  %353 = and i32 %352, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %358 = icmp eq i32 %352, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %29, align 1
  %360 = lshr i32 %352, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v101 = select i1 %358, i64 103, i64 49
  %362 = add i64 %281, %.v101
  store i64 %362, i64* %3, align 8
  br i1 %358, label %block_.L_4706e2, label %block_4706ac

block_4706ac:                                     ; preds = %block_47067b
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %363 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %363, i64* %RCX.i928, align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -8
  %366 = add i64 %362, 22
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = mul nsw i64 %369, 104
  store i64 %370, i64* %RDX.i925, align 8
  %371 = lshr i64 %370, 63
  %372 = add i64 %370, %363
  store i64 %372, i64* %RCX.i928, align 8
  %373 = icmp ult i64 %372, %363
  %374 = icmp ult i64 %372, %370
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %14, align 1
  %377 = trunc i64 %372 to i32
  %378 = and i32 %377, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %21, align 1
  %383 = xor i64 %370, %363
  %384 = xor i64 %383, %372
  %385 = lshr i64 %384, 4
  %386 = trunc i64 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %26, align 1
  %388 = icmp eq i64 %372, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %29, align 1
  %390 = lshr i64 %372, 63
  %391 = trunc i64 %390 to i8
  store i8 %391, i8* %32, align 1
  %392 = lshr i64 %363, 63
  %393 = xor i64 %390, %392
  %394 = xor i64 %390, %371
  %395 = add nuw nsw i64 %393, %394
  %396 = icmp eq i64 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %38, align 1
  %398 = inttoptr i64 %372 to i32*
  %399 = add i64 %362, 32
  store i64 %399, i64* %3, align 8
  %400 = load i32, i32* %398, align 4
  %401 = sext i32 %400 to i64
  %402 = mul nsw i64 %401, 76
  store i64 %402, i64* %RCX.i928, align 8
  %403 = lshr i64 %402, 63
  %404 = load i64, i64* %RAX.i985, align 8
  %405 = add i64 %402, %404
  store i64 %405, i64* %RAX.i985, align 8
  %406 = icmp ult i64 %405, %404
  %407 = icmp ult i64 %405, %402
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %14, align 1
  %410 = trunc i64 %405 to i32
  %411 = and i32 %410, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %21, align 1
  %416 = xor i64 %402, %404
  %417 = xor i64 %416, %405
  %418 = lshr i64 %417, 4
  %419 = trunc i64 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %26, align 1
  %421 = icmp eq i64 %405, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %29, align 1
  %423 = lshr i64 %405, 63
  %424 = trunc i64 %423 to i8
  store i8 %424, i8* %32, align 1
  %425 = lshr i64 %404, 63
  %426 = xor i64 %423, %425
  %427 = xor i64 %423, %403
  %428 = add nuw nsw i64 %426, %427
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %38, align 1
  %431 = add i64 %405, 64
  %432 = add i64 %362, 43
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %434, -2
  %436 = icmp ult i32 %434, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %14, align 1
  %438 = and i32 %435, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %21, align 1
  %443 = xor i32 %435, %434
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %26, align 1
  %447 = icmp eq i32 %435, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %29, align 1
  %449 = lshr i32 %435, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %32, align 1
  %451 = lshr i32 %434, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %451
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %38, align 1
  %.v102 = select i1 %447, i64 54, i64 49
  %456 = add i64 %362, %.v102
  store i64 %456, i64* %3, align 8
  br i1 %447, label %block_.L_4706e2, label %block_4706ac.block_.L_4706dd_crit_edge

block_4706ac.block_.L_4706dd_crit_edge:           ; preds = %block_4706ac
  %.pre85.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4706dd

block_.L_4706dd:                                  ; preds = %block_47063f, %block_4706ac.block_.L_4706dd_crit_edge
  %.pre85 = phi i64 [ %.pre85.pre, %block_4706ac.block_.L_4706dd_crit_edge ], [ %252, %block_47063f ]
  %457 = phi i64 [ %456, %block_4706ac.block_.L_4706dd_crit_edge ], [ %281, %block_47063f ]
  %458 = add i64 %457, 1975
  br label %block_.L_470e94

block_.L_4706e2:                                  ; preds = %block_4706ac, %block_47067b
  %459 = phi i64 [ %456, %block_4706ac ], [ %362, %block_47067b ]
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -16
  %462 = add i64 %459, 7
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  store i32 0, i32* %463, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4706e9

block_.L_4706e9:                                  ; preds = %block_470708, %block_.L_4706e2
  %464 = phi i64 [ %602, %block_470708 ], [ %.pre64, %block_.L_4706e2 ]
  %465 = load i64, i64* %RBP.i, align 8
  %466 = add i64 %465, -16
  %467 = add i64 %464, 3
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX.i985, align 8
  %471 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %471, i64* %RCX.i928, align 8
  %472 = add i64 %465, -8
  %473 = add i64 %464, 15
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = mul nsw i64 %476, 104
  store i64 %477, i64* %RDX.i925, align 8
  %478 = lshr i64 %477, 63
  %479 = add i64 %477, %471
  store i64 %479, i64* %RCX.i928, align 8
  %480 = icmp ult i64 %479, %471
  %481 = icmp ult i64 %479, %477
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %14, align 1
  %484 = trunc i64 %479 to i32
  %485 = and i32 %484, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %21, align 1
  %490 = xor i64 %477, %471
  %491 = xor i64 %490, %479
  %492 = lshr i64 %491, 4
  %493 = trunc i64 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %26, align 1
  %495 = icmp eq i64 %479, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %29, align 1
  %497 = lshr i64 %479, 63
  %498 = trunc i64 %497 to i8
  store i8 %498, i8* %32, align 1
  %499 = lshr i64 %471, 63
  %500 = xor i64 %497, %499
  %501 = xor i64 %497, %478
  %502 = add nuw nsw i64 %500, %501
  %503 = icmp eq i64 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %38, align 1
  %505 = add i64 %479, 44
  %506 = add i64 %464, 25
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sub i32 %469, %508
  %510 = icmp ult i32 %469, %508
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %509, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %508, %469
  %518 = xor i32 %517, %509
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %26, align 1
  %522 = icmp eq i32 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %29, align 1
  %524 = lshr i32 %509, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %32, align 1
  %526 = lshr i32 %469, 31
  %527 = lshr i32 %508, 31
  %528 = xor i32 %527, %526
  %529 = xor i32 %524, %526
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %38, align 1
  %533 = icmp ne i8 %525, 0
  %534 = xor i1 %533, %531
  %.v103 = select i1 %534, i64 31, i64 87
  %535 = add i64 %464, %.v103
  store i64 %535, i64* %3, align 8
  %536 = load i64, i64* %RBP.i, align 8
  br i1 %534, label %block_470708, label %block_.L_470740

block_470708:                                     ; preds = %block_.L_4706e9
  %537 = add i64 %536, -16
  %538 = add i64 %535, 4
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RAX.i985, align 8
  %542 = shl nsw i64 %541, 2
  %543 = add i64 %536, -80
  %544 = add i64 %543, %542
  %545 = add i64 %535, 12
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  store i32 0, i32* %546, align 4
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -16
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 4
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RAX.i985, align 8
  %554 = shl nsw i64 %553, 2
  %555 = add i64 %547, -224
  %556 = add i64 %555, %554
  %557 = add i64 %549, 15
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  store i32 1, i32* %558, align 4
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -16
  %561 = load i64, i64* %3, align 8
  %562 = add i64 %561, 4
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %560 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  store i64 %565, i64* %RAX.i985, align 8
  %566 = shl nsw i64 %565, 2
  %567 = add i64 %559, -288
  %568 = add i64 %567, %566
  %569 = add i64 %561, 15
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 0, i32* %570, align 4
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -16
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 3
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = add i32 %576, 1
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RAX.i985, align 8
  %579 = icmp eq i32 %576, -1
  %580 = icmp eq i32 %577, 0
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %14, align 1
  %583 = and i32 %577, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  %588 = xor i32 %577, %576
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %26, align 1
  %592 = zext i1 %580 to i8
  store i8 %592, i8* %29, align 1
  %593 = lshr i32 %577, 31
  %594 = trunc i32 %593 to i8
  store i8 %594, i8* %32, align 1
  %595 = lshr i32 %576, 31
  %596 = xor i32 %593, %595
  %597 = add nuw nsw i32 %596, %593
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %38, align 1
  %600 = add i64 %573, 9
  store i64 %600, i64* %3, align 8
  store i32 %577, i32* %575, align 4
  %601 = load i64, i64* %3, align 8
  %602 = add i64 %601, -82
  store i64 %602, i64* %3, align 8
  br label %block_.L_4706e9

block_.L_470740:                                  ; preds = %block_.L_4706e9
  %603 = add i64 %536, -300
  %604 = add i64 %535, 10
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  store i32 0, i32* %605, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_47074a

block_.L_47074a:                                  ; preds = %block_.L_470e76, %block_.L_470740
  %606 = phi i64 [ %.pre65, %block_.L_470740 ], [ %3226, %block_.L_470e76 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_.L_470740 ], [ %MEMORY.30, %block_.L_470e76 ]
  %607 = load i64, i64* %RBP.i, align 8
  %608 = add i64 %607, -300
  %609 = add i64 %606, 7
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = add i32 %611, -2
  %613 = icmp ult i32 %611, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %14, align 1
  %615 = and i32 %612, 255
  %616 = tail call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  store i8 %619, i8* %21, align 1
  %620 = xor i32 %612, %611
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %26, align 1
  %624 = icmp eq i32 %612, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %29, align 1
  %626 = lshr i32 %612, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %32, align 1
  %628 = lshr i32 %611, 31
  %629 = xor i32 %626, %628
  %630 = add nuw nsw i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %38, align 1
  %633 = icmp ne i8 %627, 0
  %634 = xor i1 %633, %631
  %.v104 = select i1 %634, i64 13, i64 1861
  %635 = add i64 %606, %.v104
  store i64 %635, i64* %3, align 8
  br i1 %634, label %block_470757, label %block_.L_470e8f

block_470757:                                     ; preds = %block_.L_47074a
  %636 = add i64 %607, -16
  %637 = add i64 %635, 7
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  store i32 0, i32* %638, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_47075e

block_.L_47075e:                                  ; preds = %block_.L_470d76, %block_470757
  %639 = phi i64 [ %.pre66, %block_470757 ], [ %2971, %block_.L_470d76 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_470757 ], [ %MEMORY.23, %block_.L_470d76 ]
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -16
  %642 = add i64 %639, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i985, align 8
  %646 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %646, i64* %RCX.i928, align 8
  %647 = add i64 %640, -8
  %648 = add i64 %639, 15
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = mul nsw i64 %651, 104
  store i64 %652, i64* %RDX.i925, align 8
  %653 = lshr i64 %652, 63
  %654 = add i64 %652, %646
  store i64 %654, i64* %RCX.i928, align 8
  %655 = icmp ult i64 %654, %646
  %656 = icmp ult i64 %654, %652
  %657 = or i1 %655, %656
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %14, align 1
  %659 = trunc i64 %654 to i32
  %660 = and i32 %659, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %21, align 1
  %665 = xor i64 %652, %646
  %666 = xor i64 %665, %654
  %667 = lshr i64 %666, 4
  %668 = trunc i64 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %26, align 1
  %670 = icmp eq i64 %654, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %29, align 1
  %672 = lshr i64 %654, 63
  %673 = trunc i64 %672 to i8
  store i8 %673, i8* %32, align 1
  %674 = lshr i64 %646, 63
  %675 = xor i64 %672, %674
  %676 = xor i64 %672, %653
  %677 = add nuw nsw i64 %675, %676
  %678 = icmp eq i64 %677, 2
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %38, align 1
  %680 = add i64 %654, 44
  %681 = add i64 %639, 25
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sub i32 %644, %683
  %685 = icmp ult i32 %644, %683
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %14, align 1
  %687 = and i32 %684, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %21, align 1
  %692 = xor i32 %683, %644
  %693 = xor i32 %692, %684
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %26, align 1
  %697 = icmp eq i32 %684, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %29, align 1
  %699 = lshr i32 %684, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %32, align 1
  %701 = lshr i32 %644, 31
  %702 = lshr i32 %683, 31
  %703 = xor i32 %702, %701
  %704 = xor i32 %699, %701
  %705 = add nuw nsw i32 %704, %703
  %706 = icmp eq i32 %705, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %38, align 1
  %708 = icmp ne i8 %700, 0
  %709 = xor i1 %708, %706
  %.v105 = select i1 %709, i64 31, i64 1574
  %710 = add i64 %639, %.v105
  store i64 %710, i64* %3, align 8
  br i1 %709, label %block_47077d, label %block_.L_470d84

block_47077d:                                     ; preds = %block_.L_47075e
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %711 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %711, i64* %RCX.i928, align 8
  %712 = load i64, i64* %RBP.i, align 8
  %713 = add i64 %712, -8
  %714 = add i64 %710, 22
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = sext i32 %716 to i64
  %718 = mul nsw i64 %717, 104
  store i64 %718, i64* %RDX.i925, align 8
  %719 = lshr i64 %718, 63
  %720 = add i64 %718, %711
  store i64 %720, i64* %RCX.i928, align 8
  %721 = icmp ult i64 %720, %711
  %722 = icmp ult i64 %720, %718
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %14, align 1
  %725 = trunc i64 %720 to i32
  %726 = and i32 %725, 255
  %727 = tail call i32 @llvm.ctpop.i32(i32 %726)
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  store i8 %730, i8* %21, align 1
  %731 = xor i64 %718, %711
  %732 = xor i64 %731, %720
  %733 = lshr i64 %732, 4
  %734 = trunc i64 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %26, align 1
  %736 = icmp eq i64 %720, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i64 %720, 63
  %739 = trunc i64 %738 to i8
  store i8 %739, i8* %32, align 1
  %740 = lshr i64 %711, 63
  %741 = xor i64 %738, %740
  %742 = xor i64 %738, %719
  %743 = add nuw nsw i64 %741, %742
  %744 = icmp eq i64 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %38, align 1
  %746 = add i64 %712, -16
  %747 = add i64 %710, 33
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = sext i32 %749 to i64
  store i64 %750, i64* %RDX.i925, align 8
  %751 = shl nsw i64 %750, 2
  %752 = add i64 %720, 4
  %753 = add i64 %752, %751
  %754 = add i64 %710, 37
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RSI.i911, align 8
  %758 = add i64 %712, -12
  %759 = add i64 %710, 40
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  store i32 %756, i32* %760, align 4
  %761 = load i64, i64* %3, align 8
  %762 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %762, i64* %RCX.i928, align 8
  %763 = load i64, i64* %RBP.i, align 8
  %764 = add i64 %763, -12
  %765 = add i64 %761, 12
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = sext i32 %767 to i64
  %769 = mul nsw i64 %768, 104
  store i64 %769, i64* %RDX.i925, align 8
  %770 = lshr i64 %769, 63
  %771 = add i64 %769, %762
  store i64 %771, i64* %RCX.i928, align 8
  %772 = icmp ult i64 %771, %762
  %773 = icmp ult i64 %771, %769
  %774 = or i1 %772, %773
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %14, align 1
  %776 = trunc i64 %771 to i32
  %777 = and i32 %776, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i64 %769, %762
  %783 = xor i64 %782, %771
  %784 = lshr i64 %783, 4
  %785 = trunc i64 %784 to i8
  %786 = and i8 %785, 1
  store i8 %786, i8* %26, align 1
  %787 = icmp eq i64 %771, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %29, align 1
  %789 = lshr i64 %771, 63
  %790 = trunc i64 %789 to i8
  store i8 %790, i8* %32, align 1
  %791 = lshr i64 %762, 63
  %792 = xor i64 %789, %791
  %793 = xor i64 %789, %770
  %794 = add nuw nsw i64 %792, %793
  %795 = icmp eq i64 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %38, align 1
  %797 = inttoptr i64 %771 to i32*
  %798 = add i64 %761, 22
  store i64 %798, i64* %3, align 8
  %799 = load i32, i32* %797, align 4
  %800 = sext i32 %799 to i64
  %801 = mul nsw i64 %800, 76
  store i64 %801, i64* %RCX.i928, align 8
  %802 = lshr i64 %801, 63
  %803 = load i64, i64* %RAX.i985, align 8
  %804 = add i64 %801, %803
  store i64 %804, i64* %RAX.i985, align 8
  %805 = icmp ult i64 %804, %803
  %806 = icmp ult i64 %804, %801
  %807 = or i1 %805, %806
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %14, align 1
  %809 = trunc i64 %804 to i32
  %810 = and i32 %809, 255
  %811 = tail call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  store i8 %814, i8* %21, align 1
  %815 = xor i64 %801, %803
  %816 = xor i64 %815, %804
  %817 = lshr i64 %816, 4
  %818 = trunc i64 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %26, align 1
  %820 = icmp eq i64 %804, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %29, align 1
  %822 = lshr i64 %804, 63
  %823 = trunc i64 %822 to i8
  store i8 %823, i8* %32, align 1
  %824 = lshr i64 %803, 63
  %825 = xor i64 %822, %824
  %826 = xor i64 %822, %802
  %827 = add nuw nsw i64 %825, %826
  %828 = icmp eq i64 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %38, align 1
  %830 = inttoptr i64 %804 to i32*
  %831 = add i64 %761, 31
  store i64 %831, i64* %3, align 8
  %832 = load i32, i32* %830, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RSI.i911, align 8
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -28
  %836 = add i64 %761, 34
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sub i32 %832, %838
  %840 = icmp ult i32 %832, %838
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %14, align 1
  %842 = and i32 %839, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %21, align 1
  %847 = xor i32 %838, %832
  %848 = xor i32 %847, %839
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %26, align 1
  %852 = icmp eq i32 %839, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %29, align 1
  %854 = lshr i32 %839, 31
  %855 = trunc i32 %854 to i8
  store i8 %855, i8* %32, align 1
  %856 = lshr i32 %832, 31
  %857 = lshr i32 %838, 31
  %858 = xor i32 %857, %856
  %859 = xor i32 %854, %856
  %860 = add nuw nsw i32 %859, %858
  %861 = icmp eq i32 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %38, align 1
  %.v114 = select i1 %852, i64 40, i64 138
  %863 = add i64 %761, %.v114
  store i64 %863, i64* %3, align 8
  br i1 %852, label %block_4707cd, label %block_.L_47082f

block_4707cd:                                     ; preds = %block_47077d
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %864 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %864, i64* %RCX.i928, align 8
  %865 = add i64 %834, -12
  %866 = add i64 %863, 22
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = sext i32 %868 to i64
  %870 = mul nsw i64 %869, 104
  store i64 %870, i64* %RDX.i925, align 8
  %871 = lshr i64 %870, 63
  %872 = add i64 %870, %864
  store i64 %872, i64* %RCX.i928, align 8
  %873 = icmp ult i64 %872, %864
  %874 = icmp ult i64 %872, %870
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = trunc i64 %872 to i32
  %878 = and i32 %877, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %21, align 1
  %883 = xor i64 %870, %864
  %884 = xor i64 %883, %872
  %885 = lshr i64 %884, 4
  %886 = trunc i64 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %26, align 1
  %888 = icmp eq i64 %872, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %29, align 1
  %890 = lshr i64 %872, 63
  %891 = trunc i64 %890 to i8
  store i8 %891, i8* %32, align 1
  %892 = lshr i64 %864, 63
  %893 = xor i64 %890, %892
  %894 = xor i64 %890, %871
  %895 = add nuw nsw i64 %893, %894
  %896 = icmp eq i64 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %38, align 1
  %898 = inttoptr i64 %872 to i32*
  %899 = add i64 %863, 32
  store i64 %899, i64* %3, align 8
  %900 = load i32, i32* %898, align 4
  %901 = sext i32 %900 to i64
  %902 = mul nsw i64 %901, 76
  store i64 %902, i64* %RCX.i928, align 8
  %903 = lshr i64 %902, 63
  %904 = load i64, i64* %RAX.i985, align 8
  %905 = add i64 %902, %904
  store i64 %905, i64* %RAX.i985, align 8
  %906 = icmp ult i64 %905, %904
  %907 = icmp ult i64 %905, %902
  %908 = or i1 %906, %907
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %14, align 1
  %910 = trunc i64 %905 to i32
  %911 = and i32 %910, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %21, align 1
  %916 = xor i64 %902, %904
  %917 = xor i64 %916, %905
  %918 = lshr i64 %917, 4
  %919 = trunc i64 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %26, align 1
  %921 = icmp eq i64 %905, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %29, align 1
  %923 = lshr i64 %905, 63
  %924 = trunc i64 %923 to i8
  store i8 %924, i8* %32, align 1
  %925 = lshr i64 %904, 63
  %926 = xor i64 %923, %925
  %927 = xor i64 %923, %903
  %928 = add nuw nsw i64 %926, %927
  %929 = icmp eq i64 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %38, align 1
  %931 = add i64 %905, 64
  %932 = add i64 %863, 43
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  store i8 0, i8* %14, align 1
  %935 = and i32 %934, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %940 = icmp eq i32 %934, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %29, align 1
  %942 = lshr i32 %934, 31
  %943 = trunc i32 %942 to i8
  store i8 %943, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v115 = select i1 %940, i64 103, i64 49
  %944 = add i64 %863, %.v115
  store i64 %944, i64* %3, align 8
  br i1 %940, label %block_.L_470834, label %block_4707fe

block_4707fe:                                     ; preds = %block_4707cd
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %945 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %945, i64* %RCX.i928, align 8
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -12
  %948 = add i64 %944, 22
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = sext i32 %950 to i64
  %952 = mul nsw i64 %951, 104
  store i64 %952, i64* %RDX.i925, align 8
  %953 = lshr i64 %952, 63
  %954 = add i64 %952, %945
  store i64 %954, i64* %RCX.i928, align 8
  %955 = icmp ult i64 %954, %945
  %956 = icmp ult i64 %954, %952
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %14, align 1
  %959 = trunc i64 %954 to i32
  %960 = and i32 %959, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i64 %952, %945
  %966 = xor i64 %965, %954
  %967 = lshr i64 %966, 4
  %968 = trunc i64 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %26, align 1
  %970 = icmp eq i64 %954, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %29, align 1
  %972 = lshr i64 %954, 63
  %973 = trunc i64 %972 to i8
  store i8 %973, i8* %32, align 1
  %974 = lshr i64 %945, 63
  %975 = xor i64 %972, %974
  %976 = xor i64 %972, %953
  %977 = add nuw nsw i64 %975, %976
  %978 = icmp eq i64 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %38, align 1
  %980 = inttoptr i64 %954 to i32*
  %981 = add i64 %944, 32
  store i64 %981, i64* %3, align 8
  %982 = load i32, i32* %980, align 4
  %983 = sext i32 %982 to i64
  %984 = mul nsw i64 %983, 76
  store i64 %984, i64* %RCX.i928, align 8
  %985 = lshr i64 %984, 63
  %986 = load i64, i64* %RAX.i985, align 8
  %987 = add i64 %984, %986
  store i64 %987, i64* %RAX.i985, align 8
  %988 = icmp ult i64 %987, %986
  %989 = icmp ult i64 %987, %984
  %990 = or i1 %988, %989
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %14, align 1
  %992 = trunc i64 %987 to i32
  %993 = and i32 %992, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i64 %984, %986
  %999 = xor i64 %998, %987
  %1000 = lshr i64 %999, 4
  %1001 = trunc i64 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %26, align 1
  %1003 = icmp eq i64 %987, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %29, align 1
  %1005 = lshr i64 %987, 63
  %1006 = trunc i64 %1005 to i8
  store i8 %1006, i8* %32, align 1
  %1007 = lshr i64 %986, 63
  %1008 = xor i64 %1005, %1007
  %1009 = xor i64 %1005, %985
  %1010 = add nuw nsw i64 %1008, %1009
  %1011 = icmp eq i64 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %38, align 1
  %1013 = add i64 %987, 64
  %1014 = add i64 %944, 43
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = add i32 %1016, -2
  %1018 = icmp ult i32 %1016, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %14, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  %1025 = xor i32 %1017, %1016
  %1026 = lshr i32 %1025, 4
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %26, align 1
  %1029 = icmp eq i32 %1017, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %29, align 1
  %1031 = lshr i32 %1017, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %32, align 1
  %1033 = lshr i32 %1016, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1033
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %38, align 1
  %.v116 = select i1 %1029, i64 54, i64 49
  %1038 = add i64 %944, %.v116
  store i64 %1038, i64* %3, align 8
  br i1 %1029, label %block_.L_470834, label %block_.L_47082f

block_.L_47082f:                                  ; preds = %block_47077d, %block_4707fe
  %1039 = phi i64 [ %1038, %block_4707fe ], [ %863, %block_47077d ]
  %1040 = add i64 %1039, 1351
  br label %block_.L_470d76

block_.L_470834:                                  ; preds = %block_4707fe, %block_4707cd
  %1041 = phi i64 [ %1038, %block_4707fe ], [ %944, %block_4707cd ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i985, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i928, align 8
  %1042 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1042, i64* %RDX.i925, align 8
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -8
  %1045 = add i64 %1041, 32
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = mul nsw i64 %1048, 104
  store i64 %1049, i64* %RSI.i911, align 8
  %1050 = lshr i64 %1049, 63
  %1051 = add i64 %1049, %1042
  store i64 %1051, i64* %RDX.i925, align 8
  %1052 = icmp ult i64 %1051, %1042
  %1053 = icmp ult i64 %1051, %1049
  %1054 = or i1 %1052, %1053
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %14, align 1
  %1056 = trunc i64 %1051 to i32
  %1057 = and i32 %1056, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  %1062 = xor i64 %1049, %1042
  %1063 = xor i64 %1062, %1051
  %1064 = lshr i64 %1063, 4
  %1065 = trunc i64 %1064 to i8
  %1066 = and i8 %1065, 1
  store i8 %1066, i8* %26, align 1
  %1067 = icmp eq i64 %1051, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %29, align 1
  %1069 = lshr i64 %1051, 63
  %1070 = trunc i64 %1069 to i8
  store i8 %1070, i8* %32, align 1
  %1071 = lshr i64 %1042, 63
  %1072 = xor i64 %1069, %1071
  %1073 = xor i64 %1069, %1050
  %1074 = add nuw nsw i64 %1072, %1073
  %1075 = icmp eq i64 %1074, 2
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %38, align 1
  %1077 = inttoptr i64 %1051 to i32*
  %1078 = add i64 %1041, 42
  store i64 %1078, i64* %3, align 8
  %1079 = load i32, i32* %1077, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = mul nsw i64 %1080, 76
  store i64 %1081, i64* %RDX.i925, align 8
  %1082 = lshr i64 %1081, 63
  %1083 = load i64, i64* %RCX.i928, align 8
  %1084 = add i64 %1081, %1083
  store i64 %1084, i64* %RSI.i911, align 8
  %1085 = icmp ult i64 %1084, %1083
  %1086 = icmp ult i64 %1084, %1081
  %1087 = or i1 %1085, %1086
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %14, align 1
  %1089 = trunc i64 %1084 to i32
  %1090 = and i32 %1089, 255
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %21, align 1
  %1095 = xor i64 %1081, %1083
  %1096 = xor i64 %1095, %1084
  %1097 = lshr i64 %1096, 4
  %1098 = trunc i64 %1097 to i8
  %1099 = and i8 %1098, 1
  store i8 %1099, i8* %26, align 1
  %1100 = icmp eq i64 %1084, 0
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %29, align 1
  %1102 = lshr i64 %1084, 63
  %1103 = trunc i64 %1102 to i8
  store i8 %1103, i8* %32, align 1
  %1104 = lshr i64 %1083, 63
  %1105 = xor i64 %1102, %1104
  %1106 = xor i64 %1102, %1082
  %1107 = add nuw nsw i64 %1105, %1106
  %1108 = icmp eq i64 %1107, 2
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %38, align 1
  %1110 = add i64 %1084, 8
  %1111 = add i64 %1041, 55
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RDI.i674.pre-phi, align 8
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -20
  %1117 = add i64 %1041, 58
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  store i32 %1113, i32* %1118, align 4
  %1119 = load i64, i64* %3, align 8
  %1120 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1120, i64* %RDX.i925, align 8
  %1121 = load i64, i64* %RBP.i, align 8
  %1122 = add i64 %1121, -12
  %1123 = add i64 %1119, 12
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = mul nsw i64 %1126, 104
  store i64 %1127, i64* %RSI.i911, align 8
  %1128 = lshr i64 %1127, 63
  %1129 = add i64 %1127, %1120
  store i64 %1129, i64* %RDX.i925, align 8
  %1130 = icmp ult i64 %1129, %1120
  %1131 = icmp ult i64 %1129, %1127
  %1132 = or i1 %1130, %1131
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %14, align 1
  %1134 = trunc i64 %1129 to i32
  %1135 = and i32 %1134, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i64 %1127, %1120
  %1141 = xor i64 %1140, %1129
  %1142 = lshr i64 %1141, 4
  %1143 = trunc i64 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %26, align 1
  %1145 = icmp eq i64 %1129, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %29, align 1
  %1147 = lshr i64 %1129, 63
  %1148 = trunc i64 %1147 to i8
  store i8 %1148, i8* %32, align 1
  %1149 = lshr i64 %1120, 63
  %1150 = xor i64 %1147, %1149
  %1151 = xor i64 %1147, %1128
  %1152 = add nuw nsw i64 %1150, %1151
  %1153 = icmp eq i64 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %38, align 1
  %1155 = inttoptr i64 %1129 to i32*
  %1156 = add i64 %1119, 22
  store i64 %1156, i64* %3, align 8
  %1157 = load i32, i32* %1155, align 4
  %1158 = sext i32 %1157 to i64
  %1159 = mul nsw i64 %1158, 76
  store i64 %1159, i64* %RDX.i925, align 8
  %1160 = lshr i64 %1159, 63
  %1161 = load i64, i64* %RCX.i928, align 8
  %1162 = add i64 %1159, %1161
  store i64 %1162, i64* %RCX.i928, align 8
  %1163 = icmp ult i64 %1162, %1161
  %1164 = icmp ult i64 %1162, %1159
  %1165 = or i1 %1163, %1164
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = trunc i64 %1162 to i32
  %1168 = and i32 %1167, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  %1173 = xor i64 %1159, %1161
  %1174 = xor i64 %1173, %1162
  %1175 = lshr i64 %1174, 4
  %1176 = trunc i64 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %26, align 1
  %1178 = icmp eq i64 %1162, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %29, align 1
  %1180 = lshr i64 %1162, 63
  %1181 = trunc i64 %1180 to i8
  store i8 %1181, i8* %32, align 1
  %1182 = lshr i64 %1161, 63
  %1183 = xor i64 %1180, %1182
  %1184 = xor i64 %1180, %1160
  %1185 = add nuw nsw i64 %1183, %1184
  %1186 = icmp eq i64 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %38, align 1
  %1188 = add i64 %1162, 8
  %1189 = add i64 %1119, 32
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RDI.i674.pre-phi, align 8
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -24
  %1195 = add i64 %1119, 35
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  store i32 %1191, i32* %1196, align 4
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -20
  %1199 = load i64, i64* %3, align 8
  %1200 = add i64 %1199, 4
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = mul nsw i64 %1203, 380
  store i64 %1204, i64* %RCX.i928, align 8
  %1205 = lshr i64 %1204, 63
  %1206 = load i64, i64* %RAX.i985, align 8
  %1207 = add i64 %1204, %1206
  store i64 %1207, i64* %RAX.i985, align 8
  %1208 = icmp ult i64 %1207, %1206
  %1209 = icmp ult i64 %1207, %1204
  %1210 = or i1 %1208, %1209
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %14, align 1
  %1212 = trunc i64 %1207 to i32
  %1213 = and i32 %1212, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %21, align 1
  %1218 = xor i64 %1204, %1206
  %1219 = xor i64 %1218, %1207
  %1220 = lshr i64 %1219, 4
  %1221 = trunc i64 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %26, align 1
  %1223 = icmp eq i64 %1207, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %29, align 1
  %1225 = lshr i64 %1207, 63
  %1226 = trunc i64 %1225 to i8
  store i8 %1226, i8* %32, align 1
  %1227 = lshr i64 %1206, 63
  %1228 = xor i64 %1225, %1227
  %1229 = xor i64 %1225, %1205
  %1230 = add nuw nsw i64 %1228, %1229
  %1231 = icmp eq i64 %1230, 2
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %38, align 1
  %1233 = add i64 %1207, 48
  %1234 = add i64 %1199, 18
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  store i8 0, i8* %14, align 1
  %1237 = and i32 %1236, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1242 = icmp eq i32 %1236, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %29, align 1
  %1244 = lshr i32 %1236, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v117 = select i1 %1242, i64 24, i64 158
  %1246 = add i64 %1199, %.v117
  store i64 %1246, i64* %3, align 8
  br i1 %1242, label %block_4708a9, label %block_.L_47092f

block_4708a9:                                     ; preds = %block_.L_470834
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %1247 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1247, i64* %RCX.i928, align 8
  %1248 = add i64 %1246, 22
  store i64 %1248, i64* %3, align 8
  %1249 = load i32, i32* %1201, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = mul nsw i64 %1250, 76
  store i64 %1251, i64* %RDX.i925, align 8
  %1252 = lshr i64 %1251, 63
  %1253 = add i64 %1251, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1253, i64* %RAX.i985, align 8
  %1254 = icmp ult i64 %1253, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1255 = icmp ult i64 %1253, %1251
  %1256 = or i1 %1254, %1255
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %14, align 1
  %1258 = trunc i64 %1253 to i32
  %1259 = and i32 %1258, 252
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i64 %1251, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1265 = xor i64 %1264, %1253
  %1266 = lshr i64 %1265, 4
  %1267 = trunc i64 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %26, align 1
  %1269 = icmp eq i64 %1253, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %29, align 1
  %1271 = lshr i64 %1253, 63
  %1272 = trunc i64 %1271 to i8
  store i8 %1272, i8* %32, align 1
  %1273 = xor i64 %1271, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1274 = xor i64 %1271, %1252
  %1275 = add nuw nsw i64 %1273, %1274
  %1276 = icmp eq i64 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %38, align 1
  %1278 = add i64 %1251, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1279 = add i64 %1246, 33
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = mul nsw i64 %1282, 104
  store i64 %1283, i64* %RAX.i985, align 8
  %1284 = lshr i64 %1283, 63
  %1285 = add i64 %1283, %1247
  store i64 %1285, i64* %RCX.i928, align 8
  %1286 = icmp ult i64 %1285, %1247
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
  %1296 = xor i64 %1283, %1247
  %1297 = xor i64 %1296, %1285
  %1298 = lshr i64 %1297, 4
  %1299 = trunc i64 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %26, align 1
  %1301 = icmp eq i64 %1285, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %29, align 1
  %1303 = lshr i64 %1285, 63
  %1304 = trunc i64 %1303 to i8
  store i8 %1304, i8* %32, align 1
  %1305 = lshr i64 %1247, 63
  %1306 = xor i64 %1303, %1305
  %1307 = xor i64 %1303, %1284
  %1308 = add nuw nsw i64 %1306, %1307
  %1309 = icmp eq i64 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %38, align 1
  %1311 = add i64 %1285, 60
  %1312 = add i64 %1246, 44
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = add i32 %1314, -5
  %1316 = icmp ult i32 %1314, 5
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %14, align 1
  %1318 = and i32 %1315, 255
  %1319 = tail call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  store i8 %1322, i8* %21, align 1
  %1323 = xor i32 %1315, %1314
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  store i8 %1326, i8* %26, align 1
  %1327 = icmp eq i32 %1315, 0
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %29, align 1
  %1329 = lshr i32 %1315, 31
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, i8* %32, align 1
  %1331 = lshr i32 %1314, 31
  %1332 = xor i32 %1329, %1331
  %1333 = add nuw nsw i32 %1332, %1331
  %1334 = icmp eq i32 %1333, 2
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %38, align 1
  %.v118 = select i1 %1327, i64 134, i64 50
  %1336 = add i64 %1246, %.v118
  store i64 %1336, i64* %3, align 8
  br i1 %1327, label %block_.L_47092f, label %block_4708db

block_4708db:                                     ; preds = %block_4708a9
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i985, align 8
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -24
  %1339 = add i64 %1336, 14
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = mul nsw i64 %1342, 380
  store i64 %1343, i64* %RCX.i928, align 8
  %1344 = lshr i64 %1343, 63
  %1345 = add i64 %1343, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1345, i64* %RAX.i985, align 8
  %1346 = icmp ult i64 %1345, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1347 = icmp ult i64 %1345, %1343
  %1348 = or i1 %1346, %1347
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %14, align 1
  %1350 = trunc i64 %1345 to i32
  %1351 = and i32 %1350, 252
  %1352 = tail call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  store i8 %1355, i8* %21, align 1
  %1356 = xor i64 %1343, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1357 = xor i64 %1356, %1345
  %1358 = lshr i64 %1357, 4
  %1359 = trunc i64 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %26, align 1
  %1361 = icmp eq i64 %1345, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %29, align 1
  %1363 = lshr i64 %1345, 63
  %1364 = trunc i64 %1363 to i8
  store i8 %1364, i8* %32, align 1
  %1365 = xor i64 %1363, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1366 = xor i64 %1363, %1344
  %1367 = add nuw nsw i64 %1365, %1366
  %1368 = icmp eq i64 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %38, align 1
  %1370 = add i64 %1343, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 48)
  %1371 = add i64 %1336, 28
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  store i8 0, i8* %14, align 1
  %1374 = and i32 %1373, 255
  %1375 = tail call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  store i8 %1378, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1379 = icmp eq i32 %1373, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %29, align 1
  %1381 = lshr i32 %1373, 31
  %1382 = trunc i32 %1381 to i8
  store i8 %1382, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %1379, i64 34, i64 84
  %1383 = add i64 %1336, %.v119
  store i64 %1383, i64* %3, align 8
  br i1 %1379, label %block_4708fd, label %block_.L_47092f

block_4708fd:                                     ; preds = %block_4708db
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %1384 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1384, i64* %RCX.i928, align 8
  %1385 = add i64 %1383, 22
  store i64 %1385, i64* %3, align 8
  %1386 = load i32, i32* %1340, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = mul nsw i64 %1387, 76
  store i64 %1388, i64* %RDX.i925, align 8
  %1389 = lshr i64 %1388, 63
  %1390 = add i64 %1388, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1390, i64* %RAX.i985, align 8
  %1391 = icmp ult i64 %1390, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
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
  %1401 = xor i64 %1388, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
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
  %1410 = xor i64 %1408, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1411 = xor i64 %1408, %1389
  %1412 = add nuw nsw i64 %1410, %1411
  %1413 = icmp eq i64 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %38, align 1
  %1415 = add i64 %1388, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1416 = add i64 %1383, 33
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = sext i32 %1418 to i64
  %1420 = mul nsw i64 %1419, 104
  store i64 %1420, i64* %RAX.i985, align 8
  %1421 = lshr i64 %1420, 63
  %1422 = add i64 %1420, %1384
  store i64 %1422, i64* %RCX.i928, align 8
  %1423 = icmp ult i64 %1422, %1384
  %1424 = icmp ult i64 %1422, %1420
  %1425 = or i1 %1423, %1424
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %14, align 1
  %1427 = trunc i64 %1422 to i32
  %1428 = and i32 %1427, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %21, align 1
  %1433 = xor i64 %1420, %1384
  %1434 = xor i64 %1433, %1422
  %1435 = lshr i64 %1434, 4
  %1436 = trunc i64 %1435 to i8
  %1437 = and i8 %1436, 1
  store i8 %1437, i8* %26, align 1
  %1438 = icmp eq i64 %1422, 0
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %29, align 1
  %1440 = lshr i64 %1422, 63
  %1441 = trunc i64 %1440 to i8
  store i8 %1441, i8* %32, align 1
  %1442 = lshr i64 %1384, 63
  %1443 = xor i64 %1440, %1442
  %1444 = xor i64 %1440, %1421
  %1445 = add nuw nsw i64 %1443, %1444
  %1446 = icmp eq i64 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %38, align 1
  %1448 = add i64 %1422, 60
  %1449 = add i64 %1383, 44
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = add i32 %1451, -5
  %1453 = icmp ult i32 %1451, 5
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %14, align 1
  %1455 = and i32 %1452, 255
  %1456 = tail call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  store i8 %1459, i8* %21, align 1
  %1460 = xor i32 %1452, %1451
  %1461 = lshr i32 %1460, 4
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  store i8 %1463, i8* %26, align 1
  %1464 = icmp eq i32 %1452, 0
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %29, align 1
  %1466 = lshr i32 %1452, 31
  %1467 = trunc i32 %1466 to i8
  store i8 %1467, i8* %32, align 1
  %1468 = lshr i32 %1451, 31
  %1469 = xor i32 %1466, %1468
  %1470 = add nuw nsw i32 %1469, %1468
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %38, align 1
  %.v120 = select i1 %1464, i64 50, i64 55
  %1473 = add i64 %1383, %.v120
  store i64 %1473, i64* %3, align 8
  br i1 %1464, label %block_.L_47092f, label %block_.L_470934

block_.L_47092f:                                  ; preds = %block_4708fd, %block_4708db, %block_.L_470834, %block_4708a9
  %1474 = phi i64 [ %1473, %block_4708fd ], [ %1383, %block_4708db ], [ %1336, %block_4708a9 ], [ %1246, %block_.L_470834 ]
  %1475 = add i64 %1474, 1095
  br label %block_.L_470d76

block_.L_470934:                                  ; preds = %block_4708fd
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i985, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i928, align 8
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -20
  %1478 = add i64 %1473, 24
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = sext i32 %1480 to i64
  %1482 = mul nsw i64 %1481, 76
  store i64 %1482, i64* %RDX.i925, align 8
  %1483 = lshr i64 %1482, 63
  %1484 = add i64 %1482, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1484, i64* %RCX.i928, align 8
  %1485 = icmp ult i64 %1484, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1486 = icmp ult i64 %1484, %1482
  %1487 = or i1 %1485, %1486
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %14, align 1
  %1489 = trunc i64 %1484 to i32
  %1490 = and i32 %1489, 252
  %1491 = tail call i32 @llvm.ctpop.i32(i32 %1490)
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = xor i8 %1493, 1
  store i8 %1494, i8* %21, align 1
  %1495 = xor i64 %1482, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1496 = xor i64 %1495, %1484
  %1497 = lshr i64 %1496, 4
  %1498 = trunc i64 %1497 to i8
  %1499 = and i8 %1498, 1
  store i8 %1499, i8* %26, align 1
  %1500 = icmp eq i64 %1484, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %29, align 1
  %1502 = lshr i64 %1484, 63
  %1503 = trunc i64 %1502 to i8
  store i8 %1503, i8* %32, align 1
  %1504 = xor i64 %1502, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1505 = xor i64 %1502, %1483
  %1506 = add nuw nsw i64 %1504, %1505
  %1507 = icmp eq i64 %1506, 2
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %38, align 1
  %1509 = add i64 %1482, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 12)
  %1510 = add i64 %1473, 34
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RSI.i911, align 8
  %1514 = add i64 %1473, 38
  store i64 %1514, i64* %3, align 8
  %1515 = load i32, i32* %1479, align 4
  %1516 = sext i32 %1515 to i64
  %1517 = mul nsw i64 %1516, 380
  store i64 %1517, i64* %RCX.i928, align 8
  %1518 = lshr i64 %1517, 63
  %1519 = load i64, i64* %RAX.i985, align 8
  %1520 = add i64 %1517, %1519
  store i64 %1520, i64* %RAX.i985, align 8
  %1521 = icmp ult i64 %1520, %1519
  %1522 = icmp ult i64 %1520, %1517
  %1523 = or i1 %1521, %1522
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %14, align 1
  %1525 = trunc i64 %1520 to i32
  %1526 = and i32 %1525, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %21, align 1
  %1531 = xor i64 %1517, %1519
  %1532 = xor i64 %1531, %1520
  %1533 = lshr i64 %1532, 4
  %1534 = trunc i64 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %26, align 1
  %1536 = icmp eq i64 %1520, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %29, align 1
  %1538 = lshr i64 %1520, 63
  %1539 = trunc i64 %1538 to i8
  store i8 %1539, i8* %32, align 1
  %1540 = lshr i64 %1519, 63
  %1541 = xor i64 %1538, %1540
  %1542 = xor i64 %1538, %1518
  %1543 = add nuw nsw i64 %1541, %1542
  %1544 = icmp eq i64 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %38, align 1
  %1546 = add i64 %1520, 4
  %1547 = add i64 %1473, 51
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = sub i32 %1512, %1549
  %1551 = icmp ult i32 %1512, %1549
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %14, align 1
  %1553 = and i32 %1550, 255
  %1554 = tail call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  store i8 %1557, i8* %21, align 1
  %1558 = xor i32 %1549, %1512
  %1559 = xor i32 %1558, %1550
  %1560 = lshr i32 %1559, 4
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  store i8 %1562, i8* %26, align 1
  %1563 = icmp eq i32 %1550, 0
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %29, align 1
  %1565 = lshr i32 %1550, 31
  %1566 = trunc i32 %1565 to i8
  store i8 %1566, i8* %32, align 1
  %1567 = lshr i32 %1512, 31
  %1568 = lshr i32 %1549, 31
  %1569 = xor i32 %1568, %1567
  %1570 = xor i32 %1565, %1567
  %1571 = add nuw nsw i32 %1570, %1569
  %1572 = icmp eq i32 %1571, 2
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %38, align 1
  %.v121 = select i1 %1563, i64 57, i64 146
  %1574 = add i64 %1473, %.v121
  store i64 %1574, i64* %3, align 8
  br i1 %1563, label %block_47096d, label %block_.L_4709c6

block_47096d:                                     ; preds = %block_.L_470934
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i985, align 8
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -20
  %1577 = add i64 %1574, 14
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = sext i32 %1579 to i64
  %1581 = mul nsw i64 %1580, 380
  store i64 %1581, i64* %RCX.i928, align 8
  %1582 = lshr i64 %1581, 63
  %1583 = add i64 %1581, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1583, i64* %RAX.i985, align 8
  %1584 = icmp ult i64 %1583, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1585 = icmp ult i64 %1583, %1581
  %1586 = or i1 %1584, %1585
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %14, align 1
  %1588 = trunc i64 %1583 to i32
  %1589 = and i32 %1588, 252
  %1590 = tail call i32 @llvm.ctpop.i32(i32 %1589)
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  store i8 %1593, i8* %21, align 1
  %1594 = xor i64 %1581, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1595 = xor i64 %1594, %1583
  %1596 = lshr i64 %1595, 4
  %1597 = trunc i64 %1596 to i8
  %1598 = and i8 %1597, 1
  store i8 %1598, i8* %26, align 1
  %1599 = icmp eq i64 %1583, 0
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %29, align 1
  %1601 = lshr i64 %1583, 63
  %1602 = trunc i64 %1601 to i8
  store i8 %1602, i8* %32, align 1
  %1603 = xor i64 %1601, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1604 = xor i64 %1601, %1582
  %1605 = add nuw nsw i64 %1603, %1604
  %1606 = icmp eq i64 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %38, align 1
  %1608 = add i64 %1581, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %1609 = add i64 %1574, 28
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i32*
  %1611 = load i32, i32* %1610, align 4
  %1612 = add i32 %1611, -5
  %1613 = icmp ult i32 %1611, 5
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %14, align 1
  %1615 = and i32 %1612, 255
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615)
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %21, align 1
  %1620 = xor i32 %1612, %1611
  %1621 = lshr i32 %1620, 4
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %26, align 1
  %1624 = icmp eq i32 %1612, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %29, align 1
  %1626 = lshr i32 %1612, 31
  %1627 = trunc i32 %1626 to i8
  store i8 %1627, i8* %32, align 1
  %1628 = lshr i32 %1611, 31
  %1629 = xor i32 %1626, %1628
  %1630 = add nuw nsw i32 %1629, %1628
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %38, align 1
  %.v143 = select i1 %1624, i64 34, i64 89
  %1633 = add i64 %1574, %.v143
  store i64 %1633, i64* %3, align 8
  br i1 %1624, label %block_47098f, label %block_.L_4709c6

block_47098f:                                     ; preds = %block_47096d
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %1634 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1634, i64* %RCX.i928, align 8
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -20
  %1637 = add i64 %1633, 22
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sext i32 %1639 to i64
  %1641 = mul nsw i64 %1640, 76
  store i64 %1641, i64* %RDX.i925, align 8
  %1642 = lshr i64 %1641, 63
  %1643 = add i64 %1641, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1643, i64* %RAX.i985, align 8
  %1644 = icmp ult i64 %1643, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1645 = icmp ult i64 %1643, %1641
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %14, align 1
  %1648 = trunc i64 %1643 to i32
  %1649 = and i32 %1648, 252
  %1650 = tail call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  store i8 %1653, i8* %21, align 1
  %1654 = xor i64 %1641, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1655 = xor i64 %1654, %1643
  %1656 = lshr i64 %1655, 4
  %1657 = trunc i64 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %26, align 1
  %1659 = icmp eq i64 %1643, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %29, align 1
  %1661 = lshr i64 %1643, 63
  %1662 = trunc i64 %1661 to i8
  store i8 %1662, i8* %32, align 1
  %1663 = xor i64 %1661, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1664 = xor i64 %1661, %1642
  %1665 = add nuw nsw i64 %1663, %1664
  %1666 = icmp eq i64 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %38, align 1
  %1668 = add i64 %1641, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1669 = add i64 %1633, 33
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = sext i32 %1671 to i64
  %1673 = mul nsw i64 %1672, 104
  store i64 %1673, i64* %RAX.i985, align 8
  %1674 = lshr i64 %1673, 63
  %1675 = load i64, i64* %RCX.i928, align 8
  %1676 = add i64 %1673, %1675
  store i64 %1676, i64* %RCX.i928, align 8
  %1677 = icmp ult i64 %1676, %1675
  %1678 = icmp ult i64 %1676, %1673
  %1679 = or i1 %1677, %1678
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %14, align 1
  %1681 = trunc i64 %1676 to i32
  %1682 = and i32 %1681, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %21, align 1
  %1687 = xor i64 %1673, %1675
  %1688 = xor i64 %1687, %1676
  %1689 = lshr i64 %1688, 4
  %1690 = trunc i64 %1689 to i8
  %1691 = and i8 %1690, 1
  store i8 %1691, i8* %26, align 1
  %1692 = icmp eq i64 %1676, 0
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %29, align 1
  %1694 = lshr i64 %1676, 63
  %1695 = trunc i64 %1694 to i8
  store i8 %1695, i8* %32, align 1
  %1696 = lshr i64 %1675, 63
  %1697 = xor i64 %1694, %1696
  %1698 = xor i64 %1694, %1674
  %1699 = add nuw nsw i64 %1697, %1698
  %1700 = icmp eq i64 %1699, 2
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %38, align 1
  %1702 = add i64 %1676, 48
  %1703 = add i64 %1633, 44
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = add i32 %1705, -1
  %1707 = icmp eq i32 %1705, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %14, align 1
  %1709 = and i32 %1706, 255
  %1710 = tail call i32 @llvm.ctpop.i32(i32 %1709)
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = xor i8 %1712, 1
  store i8 %1713, i8* %21, align 1
  %1714 = xor i32 %1706, %1705
  %1715 = lshr i32 %1714, 4
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  store i8 %1717, i8* %26, align 1
  %1718 = icmp eq i32 %1706, 0
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %29, align 1
  %1720 = lshr i32 %1706, 31
  %1721 = trunc i32 %1720 to i8
  store i8 %1721, i8* %32, align 1
  %1722 = lshr i32 %1705, 31
  %1723 = xor i32 %1720, %1722
  %1724 = add nuw nsw i32 %1723, %1722
  %1725 = icmp eq i32 %1724, 2
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %38, align 1
  %.v144 = select i1 %1718, i64 50, i64 55
  %1727 = add i64 %1633, %.v144
  store i64 %1727, i64* %3, align 8
  br i1 %1718, label %block_4709c1, label %block_.L_4709c6

block_4709c1:                                     ; preds = %block_47098f
  %1728 = add i64 %1727, 949
  br label %block_.L_470d76

block_.L_4709c6:                                  ; preds = %block_47098f, %block_47096d, %block_.L_470934
  %1729 = phi i64 [ %1727, %block_47098f ], [ %1633, %block_47096d ], [ %1574, %block_.L_470934 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i985, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i928, align 8
  %1730 = load i64, i64* %RBP.i, align 8
  %1731 = add i64 %1730, -24
  %1732 = add i64 %1729, 24
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = sext i32 %1734 to i64
  %1736 = mul nsw i64 %1735, 76
  store i64 %1736, i64* %RDX.i925, align 8
  %1737 = lshr i64 %1736, 63
  %1738 = add i64 %1736, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1738, i64* %RCX.i928, align 8
  %1739 = icmp ult i64 %1738, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1740 = icmp ult i64 %1738, %1736
  %1741 = or i1 %1739, %1740
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %14, align 1
  %1743 = trunc i64 %1738 to i32
  %1744 = and i32 %1743, 252
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %21, align 1
  %1749 = xor i64 %1736, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1750 = xor i64 %1749, %1738
  %1751 = lshr i64 %1750, 4
  %1752 = trunc i64 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %26, align 1
  %1754 = icmp eq i64 %1738, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %29, align 1
  %1756 = lshr i64 %1738, 63
  %1757 = trunc i64 %1756 to i8
  store i8 %1757, i8* %32, align 1
  %1758 = xor i64 %1756, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1759 = xor i64 %1756, %1737
  %1760 = add nuw nsw i64 %1758, %1759
  %1761 = icmp eq i64 %1760, 2
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %38, align 1
  %1763 = add i64 %1736, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 12)
  %1764 = add i64 %1729, 34
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i32*
  %1766 = load i32, i32* %1765, align 4
  %1767 = zext i32 %1766 to i64
  store i64 %1767, i64* %RSI.i911, align 8
  %1768 = add i64 %1729, 38
  store i64 %1768, i64* %3, align 8
  %1769 = load i32, i32* %1733, align 4
  %1770 = sext i32 %1769 to i64
  %1771 = mul nsw i64 %1770, 380
  store i64 %1771, i64* %RCX.i928, align 8
  %1772 = lshr i64 %1771, 63
  %1773 = load i64, i64* %RAX.i985, align 8
  %1774 = add i64 %1771, %1773
  store i64 %1774, i64* %RAX.i985, align 8
  %1775 = icmp ult i64 %1774, %1773
  %1776 = icmp ult i64 %1774, %1771
  %1777 = or i1 %1775, %1776
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %14, align 1
  %1779 = trunc i64 %1774 to i32
  %1780 = and i32 %1779, 255
  %1781 = tail call i32 @llvm.ctpop.i32(i32 %1780)
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  store i8 %1784, i8* %21, align 1
  %1785 = xor i64 %1771, %1773
  %1786 = xor i64 %1785, %1774
  %1787 = lshr i64 %1786, 4
  %1788 = trunc i64 %1787 to i8
  %1789 = and i8 %1788, 1
  store i8 %1789, i8* %26, align 1
  %1790 = icmp eq i64 %1774, 0
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %29, align 1
  %1792 = lshr i64 %1774, 63
  %1793 = trunc i64 %1792 to i8
  store i8 %1793, i8* %32, align 1
  %1794 = lshr i64 %1773, 63
  %1795 = xor i64 %1792, %1794
  %1796 = xor i64 %1792, %1772
  %1797 = add nuw nsw i64 %1795, %1796
  %1798 = icmp eq i64 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %38, align 1
  %1800 = add i64 %1774, 4
  %1801 = add i64 %1729, 51
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = sub i32 %1766, %1803
  %1805 = icmp ult i32 %1766, %1803
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %14, align 1
  %1807 = and i32 %1804, 255
  %1808 = tail call i32 @llvm.ctpop.i32(i32 %1807)
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = xor i8 %1810, 1
  store i8 %1811, i8* %21, align 1
  %1812 = xor i32 %1803, %1766
  %1813 = xor i32 %1812, %1804
  %1814 = lshr i32 %1813, 4
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  store i8 %1816, i8* %26, align 1
  %1817 = icmp eq i32 %1804, 0
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %29, align 1
  %1819 = lshr i32 %1804, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %32, align 1
  %1821 = lshr i32 %1766, 31
  %1822 = lshr i32 %1803, 31
  %1823 = xor i32 %1822, %1821
  %1824 = xor i32 %1819, %1821
  %1825 = add nuw nsw i32 %1824, %1823
  %1826 = icmp eq i32 %1825, 2
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %38, align 1
  %.v122 = select i1 %1817, i64 57, i64 146
  %1828 = add i64 %1729, %.v122
  store i64 %1828, i64* %3, align 8
  br i1 %1817, label %block_4709ff, label %block_.L_470a58

block_4709ff:                                     ; preds = %block_.L_4709c6
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i985, align 8
  %1829 = load i64, i64* %RBP.i, align 8
  %1830 = add i64 %1829, -24
  %1831 = add i64 %1828, 14
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = mul nsw i64 %1834, 380
  store i64 %1835, i64* %RCX.i928, align 8
  %1836 = lshr i64 %1835, 63
  %1837 = add i64 %1835, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1837, i64* %RAX.i985, align 8
  %1838 = icmp ult i64 %1837, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1839 = icmp ult i64 %1837, %1835
  %1840 = or i1 %1838, %1839
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %14, align 1
  %1842 = trunc i64 %1837 to i32
  %1843 = and i32 %1842, 252
  %1844 = tail call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  store i8 %1847, i8* %21, align 1
  %1848 = xor i64 %1835, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1849 = xor i64 %1848, %1837
  %1850 = lshr i64 %1849, 4
  %1851 = trunc i64 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %26, align 1
  %1853 = icmp eq i64 %1837, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %29, align 1
  %1855 = lshr i64 %1837, 63
  %1856 = trunc i64 %1855 to i8
  store i8 %1856, i8* %32, align 1
  %1857 = xor i64 %1855, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1858 = xor i64 %1855, %1836
  %1859 = add nuw nsw i64 %1857, %1858
  %1860 = icmp eq i64 %1859, 2
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %38, align 1
  %1862 = add i64 %1835, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %1863 = add i64 %1828, 28
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = add i32 %1865, -5
  %1867 = icmp ult i32 %1865, 5
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %14, align 1
  %1869 = and i32 %1866, 255
  %1870 = tail call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  store i8 %1873, i8* %21, align 1
  %1874 = xor i32 %1866, %1865
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  store i8 %1877, i8* %26, align 1
  %1878 = icmp eq i32 %1866, 0
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %29, align 1
  %1880 = lshr i32 %1866, 31
  %1881 = trunc i32 %1880 to i8
  store i8 %1881, i8* %32, align 1
  %1882 = lshr i32 %1865, 31
  %1883 = xor i32 %1880, %1882
  %1884 = add nuw nsw i32 %1883, %1882
  %1885 = icmp eq i32 %1884, 2
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %38, align 1
  %.v141 = select i1 %1878, i64 34, i64 89
  %1887 = add i64 %1828, %.v141
  store i64 %1887, i64* %3, align 8
  br i1 %1878, label %block_470a21, label %block_.L_470a58

block_470a21:                                     ; preds = %block_4709ff
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %1888 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1888, i64* %RCX.i928, align 8
  %1889 = load i64, i64* %RBP.i, align 8
  %1890 = add i64 %1889, -24
  %1891 = add i64 %1887, 22
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = sext i32 %1893 to i64
  %1895 = mul nsw i64 %1894, 76
  store i64 %1895, i64* %RDX.i925, align 8
  %1896 = lshr i64 %1895, 63
  %1897 = add i64 %1895, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1897, i64* %RAX.i985, align 8
  %1898 = icmp ult i64 %1897, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1899 = icmp ult i64 %1897, %1895
  %1900 = or i1 %1898, %1899
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %14, align 1
  %1902 = trunc i64 %1897 to i32
  %1903 = and i32 %1902, 252
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %21, align 1
  %1908 = xor i64 %1895, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1909 = xor i64 %1908, %1897
  %1910 = lshr i64 %1909, 4
  %1911 = trunc i64 %1910 to i8
  %1912 = and i8 %1911, 1
  store i8 %1912, i8* %26, align 1
  %1913 = icmp eq i64 %1897, 0
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %29, align 1
  %1915 = lshr i64 %1897, 63
  %1916 = trunc i64 %1915 to i8
  store i8 %1916, i8* %32, align 1
  %1917 = xor i64 %1915, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1918 = xor i64 %1915, %1896
  %1919 = add nuw nsw i64 %1917, %1918
  %1920 = icmp eq i64 %1919, 2
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %38, align 1
  %1922 = add i64 %1895, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1923 = add i64 %1887, 33
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = sext i32 %1925 to i64
  %1927 = mul nsw i64 %1926, 104
  store i64 %1927, i64* %RAX.i985, align 8
  %1928 = lshr i64 %1927, 63
  %1929 = load i64, i64* %RCX.i928, align 8
  %1930 = add i64 %1927, %1929
  store i64 %1930, i64* %RCX.i928, align 8
  %1931 = icmp ult i64 %1930, %1929
  %1932 = icmp ult i64 %1930, %1927
  %1933 = or i1 %1931, %1932
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %14, align 1
  %1935 = trunc i64 %1930 to i32
  %1936 = and i32 %1935, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %21, align 1
  %1941 = xor i64 %1927, %1929
  %1942 = xor i64 %1941, %1930
  %1943 = lshr i64 %1942, 4
  %1944 = trunc i64 %1943 to i8
  %1945 = and i8 %1944, 1
  store i8 %1945, i8* %26, align 1
  %1946 = icmp eq i64 %1930, 0
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %29, align 1
  %1948 = lshr i64 %1930, 63
  %1949 = trunc i64 %1948 to i8
  store i8 %1949, i8* %32, align 1
  %1950 = lshr i64 %1929, 63
  %1951 = xor i64 %1948, %1950
  %1952 = xor i64 %1948, %1928
  %1953 = add nuw nsw i64 %1951, %1952
  %1954 = icmp eq i64 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %38, align 1
  %1956 = add i64 %1930, 48
  %1957 = add i64 %1887, 44
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i32*
  %1959 = load i32, i32* %1958, align 4
  %1960 = add i32 %1959, -1
  %1961 = icmp eq i32 %1959, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %14, align 1
  %1963 = and i32 %1960, 255
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963)
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %21, align 1
  %1968 = xor i32 %1960, %1959
  %1969 = lshr i32 %1968, 4
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  store i8 %1971, i8* %26, align 1
  %1972 = icmp eq i32 %1960, 0
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %29, align 1
  %1974 = lshr i32 %1960, 31
  %1975 = trunc i32 %1974 to i8
  store i8 %1975, i8* %32, align 1
  %1976 = lshr i32 %1959, 31
  %1977 = xor i32 %1974, %1976
  %1978 = add nuw nsw i32 %1977, %1976
  %1979 = icmp eq i32 %1978, 2
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %38, align 1
  %.v142 = select i1 %1972, i64 50, i64 55
  %1981 = add i64 %1887, %.v142
  store i64 %1981, i64* %3, align 8
  br i1 %1972, label %block_470a53, label %block_.L_470a58

block_470a53:                                     ; preds = %block_470a21
  %1982 = add i64 %1981, 803
  br label %block_.L_470d76

block_.L_470a58:                                  ; preds = %block_470a21, %block_4709ff, %block_.L_4709c6
  %1983 = phi i64 [ %1981, %block_470a21 ], [ %1887, %block_4709ff ], [ %1828, %block_.L_4709c6 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -20
  %1986 = add i64 %1983, 14
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = sext i32 %1988 to i64
  %1990 = mul nsw i64 %1989, 76
  store i64 %1990, i64* %RCX.i928, align 8
  %1991 = lshr i64 %1990, 63
  %1992 = add i64 %1990, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1992, i64* %RAX.i985, align 8
  %1993 = icmp ult i64 %1992, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1994 = icmp ult i64 %1992, %1990
  %1995 = or i1 %1993, %1994
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %14, align 1
  %1997 = trunc i64 %1992 to i32
  %1998 = and i32 %1997, 252
  %1999 = tail call i32 @llvm.ctpop.i32(i32 %1998)
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = xor i8 %2001, 1
  store i8 %2002, i8* %21, align 1
  %2003 = xor i64 %1990, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2004 = xor i64 %2003, %1992
  %2005 = lshr i64 %2004, 4
  %2006 = trunc i64 %2005 to i8
  %2007 = and i8 %2006, 1
  store i8 %2007, i8* %26, align 1
  %2008 = icmp eq i64 %1992, 0
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %29, align 1
  %2010 = lshr i64 %1992, 63
  %2011 = trunc i64 %2010 to i8
  store i8 %2011, i8* %32, align 1
  %2012 = xor i64 %2010, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2013 = xor i64 %2010, %1991
  %2014 = add nuw nsw i64 %2012, %2013
  %2015 = icmp eq i64 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %38, align 1
  %2017 = add i64 %1990, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 12)
  %2018 = add i64 %1983, 25
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = add i32 %2020, -1
  %2022 = icmp eq i32 %2020, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %14, align 1
  %2024 = and i32 %2021, 255
  %2025 = tail call i32 @llvm.ctpop.i32(i32 %2024)
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = xor i8 %2027, 1
  store i8 %2028, i8* %21, align 1
  %2029 = xor i32 %2021, %2020
  %2030 = lshr i32 %2029, 4
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  store i8 %2032, i8* %26, align 1
  %2033 = icmp eq i32 %2021, 0
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %29, align 1
  %2035 = lshr i32 %2021, 31
  %2036 = trunc i32 %2035 to i8
  store i8 %2036, i8* %32, align 1
  %2037 = lshr i32 %2020, 31
  %2038 = xor i32 %2035, %2037
  %2039 = add nuw nsw i32 %2038, %2037
  %2040 = icmp eq i32 %2039, 2
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %38, align 1
  %.v123 = select i1 %2033, i64 62, i64 31
  %2042 = add i64 %1983, %.v123
  store i64 %2042, i64* %3, align 8
  br i1 %2033, label %block_.L_470a96, label %block_470a77

block_470a77:                                     ; preds = %block_.L_470a58
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i985, align 8
  %2043 = load i64, i64* %RBP.i, align 8
  %2044 = add i64 %2043, -24
  %2045 = add i64 %2042, 14
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = sext i32 %2047 to i64
  %2049 = mul nsw i64 %2048, 76
  store i64 %2049, i64* %RCX.i928, align 8
  %2050 = lshr i64 %2049, 63
  %2051 = add i64 %2049, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2051, i64* %RAX.i985, align 8
  %2052 = icmp ult i64 %2051, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2053 = icmp ult i64 %2051, %2049
  %2054 = or i1 %2052, %2053
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %14, align 1
  %2056 = trunc i64 %2051 to i32
  %2057 = and i32 %2056, 252
  %2058 = tail call i32 @llvm.ctpop.i32(i32 %2057)
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  store i8 %2061, i8* %21, align 1
  %2062 = xor i64 %2049, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2063 = xor i64 %2062, %2051
  %2064 = lshr i64 %2063, 4
  %2065 = trunc i64 %2064 to i8
  %2066 = and i8 %2065, 1
  store i8 %2066, i8* %26, align 1
  %2067 = icmp eq i64 %2051, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %29, align 1
  %2069 = lshr i64 %2051, 63
  %2070 = trunc i64 %2069 to i8
  store i8 %2070, i8* %32, align 1
  %2071 = xor i64 %2069, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2072 = xor i64 %2069, %2050
  %2073 = add nuw nsw i64 %2071, %2072
  %2074 = icmp eq i64 %2073, 2
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %38, align 1
  %2076 = add i64 %2049, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 12)
  %2077 = add i64 %2042, 25
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  %2079 = load i32, i32* %2078, align 4
  %2080 = add i32 %2079, -1
  %2081 = icmp eq i32 %2079, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %14, align 1
  %2083 = and i32 %2080, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %21, align 1
  %2088 = xor i32 %2080, %2079
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %26, align 1
  %2092 = icmp eq i32 %2080, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %29, align 1
  %2094 = lshr i32 %2080, 31
  %2095 = trunc i32 %2094 to i8
  store i8 %2095, i8* %32, align 1
  %2096 = lshr i32 %2079, 31
  %2097 = xor i32 %2094, %2096
  %2098 = add nuw nsw i32 %2097, %2096
  %2099 = icmp eq i32 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %38, align 1
  %.v124 = select i1 %2092, i64 31, i64 36
  %2101 = add i64 %2042, %.v124
  store i64 %2101, i64* %3, align 8
  br i1 %2092, label %block_.L_470a96, label %block_.L_470a9b

block_.L_470a96:                                  ; preds = %block_470a77, %block_.L_470a58
  %2102 = phi i64 [ %2101, %block_470a77 ], [ %2042, %block_.L_470a58 ]
  %2103 = add i64 %2102, 736
  br label %block_.L_470d76

block_.L_470a9b:                                  ; preds = %block_470a77
  %2104 = load i64, i64* %RBP.i, align 8
  %2105 = add i64 %2104, -304
  %2106 = add i64 %2101, 10
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  store i32 1, i32* %2107, align 4
  %2108 = load i64, i64* %RBP.i, align 8
  %2109 = add i64 %2108, -228
  %2110 = load i64, i64* %3, align 8
  %2111 = add i64 %2110, 10
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2109 to i32*
  store i32 3, i32* %2112, align 4
  %2113 = load i64, i64* %RBP.i, align 8
  %2114 = add i64 %2113, -240
  %2115 = load i64, i64* %3, align 8
  %2116 = add i64 %2115, 10
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2114 to i32*
  store i32 3, i32* %2117, align 4
  %2118 = load i64, i64* %RBP.i, align 8
  %2119 = add i64 %2118, -236
  %2120 = load i64, i64* %3, align 8
  %2121 = add i64 %2120, 10
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2119 to i32*
  store i32 3, i32* %2122, align 4
  %2123 = load i64, i64* %RBP.i, align 8
  %2124 = add i64 %2123, -232
  %2125 = load i64, i64* %3, align 8
  %2126 = add i64 %2125, 10
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2124 to i32*
  store i32 3, i32* %2127, align 4
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -300
  %2130 = load i64, i64* %3, align 8
  %2131 = add i64 %2130, 7
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2129 to i32*
  %2133 = load i32, i32* %2132, align 4
  store i8 0, i8* %14, align 1
  %2134 = and i32 %2133, 255
  %2135 = tail call i32 @llvm.ctpop.i32(i32 %2134)
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = xor i8 %2137, 1
  store i8 %2138, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2139 = icmp eq i32 %2133, 0
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %29, align 1
  %2141 = lshr i32 %2133, 31
  %2142 = trunc i32 %2141 to i8
  store i8 %2142, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v125 = select i1 %2139, i64 13, i64 564
  %2143 = add i64 %2130, %.v125
  store i64 %2143, i64* %3, align 8
  br i1 %2139, label %block_470ada, label %block_.L_470d01

block_470ada:                                     ; preds = %block_.L_470a9b
  %2144 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2145 = and i32 %2144, 64
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RAX.i985, align 8
  store i8 0, i8* %14, align 1
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2145)
  %2148 = trunc i32 %2147 to i8
  %2149 = xor i8 %2148, 1
  store i8 %2149, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit96 = lshr exact i32 %2145, 6
  %2150 = trunc i32 %.lobit96 to i8
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2152 = icmp eq i8 %2151, 0
  %.v130 = select i1 %2152, i64 24, i64 19
  %2153 = add i64 %2143, %.v130
  store i64 %2153, i64* %3, align 8
  br i1 %2152, label %block_.L_470af2, label %block_470aed

block_470aed:                                     ; preds = %block_470ada
  %2154 = add i64 %2153, 34
  store i64 %2154, i64* %3, align 8
  br label %block_.L_470b0f

block_.L_470af2:                                  ; preds = %block_470ada
  store i64 ptrtoint (%G__0x5807bf_type* @G__0x5807bf to i64), i64* %RDI.i674.pre-phi, align 8
  %2155 = add i64 %2128, -20
  %2156 = add i64 %2153, 13
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = zext i32 %2158 to i64
  store i64 %2159, i64* %RSI.i911, align 8
  %2160 = add i64 %2128, -24
  %2161 = add i64 %2153, 16
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = zext i32 %2163 to i64
  store i64 %2164, i64* %RDX.i925, align 8
  store i8 0, i8* %AL.i395.pre-phi, align 1
  %2165 = add i64 %2153, -126274
  %2166 = add i64 %2153, 23
  %2167 = load i64, i64* %6, align 8
  %2168 = add i64 %2167, -8
  %2169 = inttoptr i64 %2168 to i64*
  store i64 %2166, i64* %2169, align 8
  store i64 %2168, i64* %6, align 8
  store i64 %2165, i64* %3, align 8
  %call2_470b04 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2165, %struct.Memory* %MEMORY.6)
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -320
  %2172 = load i32, i32* %EAX.i972, align 4
  %2173 = load i64, i64* %3, align 8
  %2174 = add i64 %2173, 6
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2171 to i32*
  store i32 %2172, i32* %2175, align 4
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %block_.L_470b0f

block_.L_470b0f:                                  ; preds = %block_.L_470af2, %block_470aed
  %2176 = phi i64 [ %.pre76, %block_.L_470af2 ], [ %2128, %block_470aed ]
  %2177 = phi i64 [ %.pre75, %block_.L_470af2 ], [ %2154, %block_470aed ]
  store i64 1, i64* %140, align 8
  %2178 = add i64 %2176, -288
  store i64 %2178, i64* %RAX.i985, align 8
  %2179 = add i64 %2176, -224
  store i64 %2179, i64* %RCX.i928, align 8
  %2180 = add i64 %2176, -80
  store i64 %2180, i64* %RDX.i925, align 8
  %2181 = add i64 %2176, -20
  %2182 = add i64 %2177, 27
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i32*
  %2184 = load i32, i32* %2183, align 4
  %2185 = zext i32 %2184 to i64
  store i64 %2185, i64* %RDI.i674.pre-phi, align 8
  %2186 = add i64 %2176, -24
  %2187 = add i64 %2177, 30
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RSI.i911, align 8
  %2191 = add i64 %2176, -16
  %2192 = add i64 %2177, 34
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = sext i32 %2194 to i64
  %2196 = shl nsw i64 %2195, 2
  store i64 %2196, i64* %R8.i372, align 8
  %2197 = add i64 %2196, %2180
  store i64 %2197, i64* %RDX.i925, align 8
  %2198 = icmp ult i64 %2197, %2180
  %2199 = icmp ult i64 %2197, %2196
  %2200 = or i1 %2198, %2199
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %14, align 1
  %2202 = trunc i64 %2197 to i32
  %2203 = and i32 %2202, 255
  %2204 = tail call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  store i8 %2207, i8* %21, align 1
  %2208 = xor i64 %2196, %2180
  %2209 = xor i64 %2208, %2197
  %2210 = lshr i64 %2209, 4
  %2211 = trunc i64 %2210 to i8
  %2212 = and i8 %2211, 1
  store i8 %2212, i8* %26, align 1
  %2213 = icmp eq i64 %2197, 0
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %29, align 1
  %2215 = lshr i64 %2197, 63
  %2216 = trunc i64 %2215 to i8
  store i8 %2216, i8* %32, align 1
  %2217 = lshr i64 %2180, 63
  %2218 = lshr i64 %2195, 61
  %2219 = and i64 %2218, 1
  %2220 = xor i64 %2215, %2217
  %2221 = xor i64 %2215, %2219
  %2222 = add nuw nsw i64 %2220, %2221
  %2223 = icmp eq i64 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %38, align 1
  %2225 = add i64 %2177, 45
  store i64 %2225, i64* %3, align 8
  %2226 = load i32, i32* %2193, align 4
  %2227 = sext i32 %2226 to i64
  %2228 = shl nsw i64 %2227, 2
  store i64 %2228, i64* %R8.i372, align 8
  %2229 = load i64, i64* %RCX.i928, align 8
  %2230 = add i64 %2228, %2229
  store i64 %2230, i64* %RCX.i928, align 8
  %2231 = icmp ult i64 %2230, %2229
  %2232 = icmp ult i64 %2230, %2228
  %2233 = or i1 %2231, %2232
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %14, align 1
  %2235 = trunc i64 %2230 to i32
  %2236 = and i32 %2235, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1
  %2241 = xor i64 %2228, %2229
  %2242 = xor i64 %2241, %2230
  %2243 = lshr i64 %2242, 4
  %2244 = trunc i64 %2243 to i8
  %2245 = and i8 %2244, 1
  store i8 %2245, i8* %26, align 1
  %2246 = icmp eq i64 %2230, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %29, align 1
  %2248 = lshr i64 %2230, 63
  %2249 = trunc i64 %2248 to i8
  store i8 %2249, i8* %32, align 1
  %2250 = lshr i64 %2229, 63
  %2251 = lshr i64 %2227, 61
  %2252 = and i64 %2251, 1
  %2253 = xor i64 %2248, %2250
  %2254 = xor i64 %2248, %2252
  %2255 = add nuw nsw i64 %2253, %2254
  %2256 = icmp eq i64 %2255, 2
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %38, align 1
  %2258 = load i64, i64* %RBP.i, align 8
  %2259 = add i64 %2258, -16
  %2260 = add i64 %2177, 56
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = sext i32 %2262 to i64
  %2264 = shl nsw i64 %2263, 2
  %2265 = load i64, i64* %RAX.i985, align 8
  %2266 = add i64 %2264, %2265
  store i64 %2266, i64* %RAX.i985, align 8
  %2267 = icmp ult i64 %2266, %2265
  %2268 = icmp ult i64 %2266, %2264
  %2269 = or i1 %2267, %2268
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %14, align 1
  %2271 = trunc i64 %2266 to i32
  %2272 = and i32 %2271, 255
  %2273 = tail call i32 @llvm.ctpop.i32(i32 %2272)
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  %2276 = xor i8 %2275, 1
  store i8 %2276, i8* %21, align 1
  %2277 = xor i64 %2264, %2265
  %2278 = xor i64 %2277, %2266
  %2279 = lshr i64 %2278, 4
  %2280 = trunc i64 %2279 to i8
  %2281 = and i8 %2280, 1
  store i8 %2281, i8* %26, align 1
  %2282 = icmp eq i64 %2266, 0
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %29, align 1
  %2284 = lshr i64 %2266, 63
  %2285 = trunc i64 %2284 to i8
  store i8 %2285, i8* %32, align 1
  %2286 = lshr i64 %2265, 63
  %2287 = lshr i64 %2263, 61
  %2288 = and i64 %2287, 1
  %2289 = xor i64 %2284, %2286
  %2290 = xor i64 %2284, %2288
  %2291 = add nuw nsw i64 %2289, %2290
  %2292 = icmp eq i64 %2291, 2
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %38, align 1
  store i64 %2266, i64* %R8.i372, align 8
  %2294 = add i64 %2177, -205727
  %2295 = add i64 %2177, 71
  %2296 = load i64, i64* %6, align 8
  %2297 = add i64 %2296, -8
  %2298 = inttoptr i64 %2297 to i64*
  store i64 %2295, i64* %2298, align 8
  store i64 %2297, i64* %6, align 8
  store i64 %2294, i64* %3, align 8
  %call2_470b51 = tail call %struct.Memory* @sub_43e770.owl_analyze_semeai(%struct.State* nonnull %0, i64 %2294, %struct.Memory* %MEMORY.6)
  %2299 = load i64, i64* %3, align 8
  %2300 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2301 = and i32 %2300, 64
  %2302 = zext i32 %2301 to i64
  store i64 %2302, i64* %RSI.i911, align 8
  store i8 0, i8* %14, align 1
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2301)
  %2304 = trunc i32 %2303 to i8
  %2305 = xor i8 %2304, 1
  store i8 %2305, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit97 = lshr exact i32 %2301, 6
  %2306 = trunc i32 %.lobit97 to i8
  %2307 = xor i8 %2306, 1
  store i8 %2307, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2308 = icmp eq i8 %2307, 0
  %.v131 = select i1 %2308, i64 24, i64 19
  %2309 = add i64 %2299, %.v131
  store i64 %2309, i64* %3, align 8
  br i1 %2308, label %block_.L_470b6e, label %block_470b69

block_470b69:                                     ; preds = %block_.L_470b0f
  %2310 = add i64 %2309, 85
  store i64 %2310, i64* %3, align 8
  br label %block_.L_470bbe

block_.L_470b6e:                                  ; preds = %block_.L_470b0f
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -16
  %2313 = add i64 %2309, 4
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = sext i32 %2315 to i64
  store i64 %2316, i64* %RAX.i985, align 8
  %2317 = shl nsw i64 %2316, 2
  %2318 = add i64 %2311, -80
  %2319 = add i64 %2318, %2317
  %2320 = add i64 %2309, 8
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i32*
  %2322 = load i32, i32* %2321, align 4
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RDI.i674.pre-phi, align 8
  %2324 = add i64 %2309, -124574
  %2325 = add i64 %2309, 13
  %2326 = load i64, i64* %6, align 8
  %2327 = add i64 %2326, -8
  %2328 = inttoptr i64 %2327 to i64*
  store i64 %2325, i64* %2328, align 8
  store i64 %2327, i64* %6, align 8
  store i64 %2324, i64* %3, align 8
  %call2_470b76 = tail call %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* nonnull %0, i64 %2324, %struct.Memory* %call2_470b51)
  %2329 = load i64, i64* %RBP.i, align 8
  %2330 = add i64 %2329, -16
  %2331 = load i64, i64* %3, align 8
  %2332 = add i64 %2331, 4
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2330 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = sext i32 %2334 to i64
  store i64 %2335, i64* %RCX.i928, align 8
  %2336 = shl nsw i64 %2335, 2
  %2337 = add i64 %2329, -224
  %2338 = add i64 %2337, %2336
  %2339 = add i64 %2331, 11
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i32*
  %2341 = load i32, i32* %2340, align 4
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RDI.i674.pre-phi, align 8
  %2343 = add i64 %2329, -328
  %2344 = load i64, i64* %RAX.i985, align 8
  %2345 = add i64 %2331, 18
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2343 to i64*
  store i64 %2344, i64* %2346, align 8
  %2347 = load i64, i64* %3, align 8
  %2348 = add i64 %2347, -124605
  %2349 = add i64 %2347, 5
  %2350 = load i64, i64* %6, align 8
  %2351 = add i64 %2350, -8
  %2352 = inttoptr i64 %2351 to i64*
  store i64 %2349, i64* %2352, align 8
  store i64 %2351, i64* %6, align 8
  store i64 %2348, i64* %3, align 8
  %call2_470b8d = tail call %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* nonnull %0, i64 %2348, %struct.Memory* %call2_470b76)
  %2353 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5807e7_type* @G__0x5807e7 to i64), i64* %RDI.i674.pre-phi, align 8
  %2354 = load i64, i64* %RBP.i, align 8
  %2355 = add i64 %2354, -16
  %2356 = add i64 %2353, 14
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = sext i32 %2358 to i64
  store i64 %2359, i64* %RCX.i928, align 8
  %2360 = shl nsw i64 %2359, 2
  %2361 = add i64 %2354, -288
  %2362 = add i64 %2361, %2360
  %2363 = add i64 %2353, 21
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i32*
  %2365 = load i32, i32* %2364, align 4
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RCX.i928, align 8
  %2367 = add i64 %2354, -328
  %2368 = add i64 %2353, 28
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i64*
  %2370 = load i64, i64* %2369, align 8
  store i64 %2370, i64* %RSI.i911, align 8
  %2371 = load i64, i64* %RAX.i985, align 8
  store i64 %2371, i64* %RDX.i925, align 8
  store i8 0, i8* %AL.i395.pre-phi, align 1
  %2372 = add i64 %2353, -126434
  %2373 = add i64 %2353, 38
  %2374 = load i64, i64* %6, align 8
  %2375 = add i64 %2374, -8
  %2376 = inttoptr i64 %2375 to i64*
  store i64 %2373, i64* %2376, align 8
  store i64 %2375, i64* %6, align 8
  store i64 %2372, i64* %3, align 8
  %call2_470bb3 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2372, %struct.Memory* %call2_470b8d)
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -332
  %2379 = load i32, i32* %EAX.i972, align 4
  %2380 = load i64, i64* %3, align 8
  %2381 = add i64 %2380, 6
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2378 to i32*
  store i32 %2379, i32* %2382, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_470bbe

block_.L_470bbe:                                  ; preds = %block_.L_470b6e, %block_470b69
  %2383 = phi i64 [ %.pre77, %block_.L_470b6e ], [ %2310, %block_470b69 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_470bb3, %block_.L_470b6e ], [ %call2_470b51, %block_470b69 ]
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -228
  %2386 = add i64 %2383, 7
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
  store i8 0, i8* %26, align 1
  %2394 = icmp eq i32 %2388, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %29, align 1
  %2396 = lshr i32 %2388, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v132 = select i1 %2394, i64 54, i64 13
  %2398 = add i64 %2383, %.v132
  store i64 %2398, i64* %3, align 8
  br i1 %2394, label %block_.L_470bf4, label %block_470bcb

block_470bcb:                                     ; preds = %block_.L_470bbe
  %2399 = add i64 %2398, 7
  store i64 %2399, i64* %3, align 8
  %2400 = load i32, i32* %2387, align 4
  %2401 = add i32 %2400, -3
  %2402 = icmp ult i32 %2400, 3
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %14, align 1
  %2404 = and i32 %2401, 255
  %2405 = tail call i32 @llvm.ctpop.i32(i32 %2404)
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  %2408 = xor i8 %2407, 1
  store i8 %2408, i8* %21, align 1
  %2409 = xor i32 %2401, %2400
  %2410 = lshr i32 %2409, 4
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  store i8 %2412, i8* %26, align 1
  %2413 = icmp eq i32 %2401, 0
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %29, align 1
  %2415 = lshr i32 %2401, 31
  %2416 = trunc i32 %2415 to i8
  store i8 %2416, i8* %32, align 1
  %2417 = lshr i32 %2400, 31
  %2418 = xor i32 %2415, %2417
  %2419 = add nuw nsw i32 %2418, %2417
  %2420 = icmp eq i32 %2419, 2
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %38, align 1
  %.v133 = select i1 %2413, i64 41, i64 13
  %2422 = add i64 %2398, %.v133
  store i64 %2422, i64* %3, align 8
  br i1 %2413, label %block_.L_470bf4, label %block_470bd8

block_470bd8:                                     ; preds = %block_470bcb
  %2423 = add i64 %2422, 7
  store i64 %2423, i64* %3, align 8
  %2424 = load i32, i32* %2387, align 4
  %2425 = add i32 %2424, -7
  %2426 = icmp ult i32 %2424, 7
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %14, align 1
  %2428 = and i32 %2425, 255
  %2429 = tail call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  store i8 %2432, i8* %21, align 1
  %2433 = xor i32 %2425, %2424
  %2434 = lshr i32 %2433, 4
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  store i8 %2436, i8* %26, align 1
  %2437 = icmp eq i32 %2425, 0
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %29, align 1
  %2439 = lshr i32 %2425, 31
  %2440 = trunc i32 %2439 to i8
  store i8 %2440, i8* %32, align 1
  %2441 = lshr i32 %2424, 31
  %2442 = xor i32 %2439, %2441
  %2443 = add nuw nsw i32 %2442, %2441
  %2444 = icmp eq i32 %2443, 2
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %38, align 1
  %.v134 = select i1 %2437, i64 13, i64 59
  %2446 = add i64 %2422, %.v134
  store i64 %2446, i64* %3, align 8
  br i1 %2437, label %block_470be5, label %block_.L_470c13

block_470be5:                                     ; preds = %block_470bd8
  %2447 = add i64 %2384, -16
  %2448 = add i64 %2446, 4
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = sext i32 %2450 to i64
  store i64 %2451, i64* %RAX.i985, align 8
  %2452 = shl nsw i64 %2451, 2
  %2453 = add i64 %2384, -80
  %2454 = add i64 %2453, %2452
  %2455 = add i64 %2446, 9
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = add i32 %2457, -1
  %2459 = icmp eq i32 %2457, 0
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %14, align 1
  %2461 = and i32 %2458, 255
  %2462 = tail call i32 @llvm.ctpop.i32(i32 %2461)
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = xor i8 %2464, 1
  store i8 %2465, i8* %21, align 1
  %2466 = xor i32 %2458, %2457
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %26, align 1
  %2470 = icmp eq i32 %2458, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %29, align 1
  %2472 = lshr i32 %2458, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %32, align 1
  %2474 = lshr i32 %2457, 31
  %2475 = xor i32 %2472, %2474
  %2476 = add nuw nsw i32 %2475, %2474
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %38, align 1
  %.v140 = select i1 %2470, i64 15, i64 46
  %2479 = add i64 %2446, %.v140
  store i64 %2479, i64* %3, align 8
  br i1 %2470, label %block_.L_470bf4, label %block_.L_470c13

block_.L_470bf4:                                  ; preds = %block_470be5, %block_470bcb, %block_.L_470bbe
  %2480 = phi i64 [ %2479, %block_470be5 ], [ %2422, %block_470bcb ], [ %2398, %block_.L_470bbe ]
  %2481 = add i64 %2384, -16
  %2482 = add i64 %2480, 4
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = sext i32 %2484 to i64
  store i64 %2485, i64* %RAX.i985, align 8
  %2486 = shl nsw i64 %2485, 2
  %2487 = add i64 %2384, -80
  %2488 = add i64 %2487, %2486
  %2489 = add i64 %2480, 8
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RCX.i928, align 8
  %2493 = add i64 %2480, 14
  store i64 %2493, i64* %3, align 8
  store i32 %2491, i32* %2387, align 4
  %2494 = load i64, i64* %RBP.i, align 8
  %2495 = add i64 %2494, -16
  %2496 = load i64, i64* %3, align 8
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = sext i32 %2499 to i64
  store i64 %2500, i64* %RAX.i985, align 8
  %2501 = shl nsw i64 %2500, 2
  %2502 = add i64 %2494, -224
  %2503 = add i64 %2502, %2501
  %2504 = add i64 %2496, 11
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RCX.i928, align 8
  %2508 = add i64 %2494, -232
  %2509 = add i64 %2496, 17
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  store i32 %2506, i32* %2510, align 4
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br label %block_.L_470c13

block_.L_470c13:                                  ; preds = %block_470be5, %block_470bd8, %block_.L_470bf4
  %2511 = phi i64 [ %.pre79, %block_.L_470bf4 ], [ %2384, %block_470be5 ], [ %2384, %block_470bd8 ]
  %2512 = phi i64 [ %.pre78, %block_.L_470bf4 ], [ %2479, %block_470be5 ], [ %2446, %block_470bd8 ]
  store i64 0, i64* %RAX.i985, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %R8.i372, align 8
  store i64 1, i64* %140, align 8
  %2513 = add i64 %2511, -176
  store i64 %2513, i64* %RCX.i928, align 8
  %2514 = add i64 %2511, -128
  store i64 %2514, i64* %RDX.i925, align 8
  %2515 = add i64 %2511, -24
  %2516 = add i64 %2512, 25
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RDI.i674.pre-phi, align 8
  %2520 = add i64 %2511, -20
  %2521 = add i64 %2512, 28
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RSI.i911, align 8
  %2525 = add i64 %2511, -16
  %2526 = add i64 %2512, 32
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = sext i32 %2528 to i64
  %2530 = shl nsw i64 %2529, 2
  store i64 %2530, i64* %R10.i245, align 8
  %2531 = add i64 %2530, %2514
  store i64 %2531, i64* %RDX.i925, align 8
  %2532 = icmp ult i64 %2531, %2514
  %2533 = icmp ult i64 %2531, %2530
  %2534 = or i1 %2532, %2533
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %14, align 1
  %2536 = trunc i64 %2531 to i32
  %2537 = and i32 %2536, 255
  %2538 = tail call i32 @llvm.ctpop.i32(i32 %2537)
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  %2541 = xor i8 %2540, 1
  store i8 %2541, i8* %21, align 1
  %2542 = xor i64 %2530, %2514
  %2543 = xor i64 %2542, %2531
  %2544 = lshr i64 %2543, 4
  %2545 = trunc i64 %2544 to i8
  %2546 = and i8 %2545, 1
  store i8 %2546, i8* %26, align 1
  %2547 = icmp eq i64 %2531, 0
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %29, align 1
  %2549 = lshr i64 %2531, 63
  %2550 = trunc i64 %2549 to i8
  store i8 %2550, i8* %32, align 1
  %2551 = lshr i64 %2514, 63
  %2552 = lshr i64 %2529, 61
  %2553 = and i64 %2552, 1
  %2554 = xor i64 %2549, %2551
  %2555 = xor i64 %2549, %2553
  %2556 = add nuw nsw i64 %2554, %2555
  %2557 = icmp eq i64 %2556, 2
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %38, align 1
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -16
  %2561 = add i64 %2512, 43
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  %2563 = load i32, i32* %2562, align 4
  %2564 = sext i32 %2563 to i64
  %2565 = shl nsw i64 %2564, 2
  store i64 %2565, i64* %R10.i245, align 8
  %2566 = load i64, i64* %RCX.i928, align 8
  %2567 = add i64 %2565, %2566
  store i64 %2567, i64* %RCX.i928, align 8
  %2568 = icmp ult i64 %2567, %2566
  %2569 = icmp ult i64 %2567, %2565
  %2570 = or i1 %2568, %2569
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %14, align 1
  %2572 = trunc i64 %2567 to i32
  %2573 = and i32 %2572, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %21, align 1
  %2578 = xor i64 %2565, %2566
  %2579 = xor i64 %2578, %2567
  %2580 = lshr i64 %2579, 4
  %2581 = trunc i64 %2580 to i8
  %2582 = and i8 %2581, 1
  store i8 %2582, i8* %26, align 1
  %2583 = icmp eq i64 %2567, 0
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %29, align 1
  %2585 = lshr i64 %2567, 63
  %2586 = trunc i64 %2585 to i8
  store i8 %2586, i8* %32, align 1
  %2587 = lshr i64 %2566, 63
  %2588 = lshr i64 %2564, 61
  %2589 = and i64 %2588, 1
  %2590 = xor i64 %2585, %2587
  %2591 = xor i64 %2585, %2589
  %2592 = add nuw nsw i64 %2590, %2591
  %2593 = icmp eq i64 %2592, 2
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %38, align 1
  %2595 = add i64 %2512, -205987
  %2596 = add i64 %2512, 55
  %2597 = load i64, i64* %6, align 8
  %2598 = add i64 %2597, -8
  %2599 = inttoptr i64 %2598 to i64*
  store i64 %2596, i64* %2599, align 8
  store i64 %2598, i64* %6, align 8
  store i64 %2595, i64* %3, align 8
  %call2_470c45 = tail call %struct.Memory* @sub_43e770.owl_analyze_semeai(%struct.State* nonnull %0, i64 %2595, %struct.Memory* %MEMORY.14)
  %2600 = load i64, i64* %3, align 8
  %2601 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2602 = and i32 %2601, 64
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RAX.i985, align 8
  store i8 0, i8* %14, align 1
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2602)
  %2605 = trunc i32 %2604 to i8
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit98 = lshr exact i32 %2602, 6
  %2607 = trunc i32 %.lobit98 to i8
  %2608 = xor i8 %2607, 1
  store i8 %2608, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2609 = icmp eq i8 %2608, 0
  %.v135 = select i1 %2609, i64 24, i64 19
  %2610 = add i64 %2600, %.v135
  store i64 %2610, i64* %3, align 8
  br i1 %2609, label %block_.L_470c62, label %block_470c5d

block_470c5d:                                     ; preds = %block_.L_470c13
  %2611 = add i64 %2610, 74
  store i64 %2611, i64* %3, align 8
  br label %block_.L_470ca7

block_.L_470c62:                                  ; preds = %block_.L_470c13
  %2612 = load i64, i64* %RBP.i, align 8
  %2613 = add i64 %2612, -16
  %2614 = add i64 %2610, 4
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = sext i32 %2616 to i64
  store i64 %2617, i64* %RAX.i985, align 8
  %2618 = shl nsw i64 %2617, 2
  %2619 = add i64 %2612, -128
  %2620 = add i64 %2619, %2618
  %2621 = add i64 %2610, 8
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RDI.i674.pre-phi, align 8
  %2625 = add i64 %2610, -124818
  %2626 = add i64 %2610, 13
  %2627 = load i64, i64* %6, align 8
  %2628 = add i64 %2627, -8
  %2629 = inttoptr i64 %2628 to i64*
  store i64 %2626, i64* %2629, align 8
  store i64 %2628, i64* %6, align 8
  store i64 %2625, i64* %3, align 8
  %call2_470c6a = tail call %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* nonnull %0, i64 %2625, %struct.Memory* %call2_470c45)
  %2630 = load i64, i64* %RBP.i, align 8
  %2631 = add i64 %2630, -16
  %2632 = load i64, i64* %3, align 8
  %2633 = add i64 %2632, 4
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2631 to i32*
  %2635 = load i32, i32* %2634, align 4
  %2636 = sext i32 %2635 to i64
  store i64 %2636, i64* %RCX.i928, align 8
  %2637 = shl nsw i64 %2636, 2
  %2638 = add i64 %2630, -176
  %2639 = add i64 %2638, %2637
  %2640 = add i64 %2632, 11
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %RDI.i674.pre-phi, align 8
  %2644 = add i64 %2630, -344
  %2645 = load i64, i64* %RAX.i985, align 8
  %2646 = add i64 %2632, 18
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2644 to i64*
  store i64 %2645, i64* %2647, align 8
  %2648 = load i64, i64* %3, align 8
  %2649 = add i64 %2648, -124849
  %2650 = add i64 %2648, 5
  %2651 = load i64, i64* %6, align 8
  %2652 = add i64 %2651, -8
  %2653 = inttoptr i64 %2652 to i64*
  store i64 %2650, i64* %2653, align 8
  store i64 %2652, i64* %6, align 8
  store i64 %2649, i64* %3, align 8
  %call2_470c81 = tail call %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* nonnull %0, i64 %2649, %struct.Memory* %call2_470c6a)
  %2654 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5807fc_type* @G__0x5807fc to i64), i64* %RDI.i674.pre-phi, align 8
  %2655 = load i64, i64* %RBP.i, align 8
  %2656 = add i64 %2655, -344
  %2657 = add i64 %2654, 17
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i64*
  %2659 = load i64, i64* %2658, align 8
  store i64 %2659, i64* %RSI.i911, align 8
  %2660 = load i64, i64* %RAX.i985, align 8
  store i64 %2660, i64* %RDX.i925, align 8
  store i8 0, i8* %AL.i395.pre-phi, align 1
  %2661 = add i64 %2654, -126678
  %2662 = add i64 %2654, 27
  %2663 = load i64, i64* %6, align 8
  %2664 = add i64 %2663, -8
  %2665 = inttoptr i64 %2664 to i64*
  store i64 %2662, i64* %2665, align 8
  store i64 %2664, i64* %6, align 8
  store i64 %2661, i64* %3, align 8
  %call2_470c9c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2661, %struct.Memory* %call2_470c81)
  %2666 = load i64, i64* %RBP.i, align 8
  %2667 = add i64 %2666, -348
  %2668 = load i32, i32* %EAX.i972, align 4
  %2669 = load i64, i64* %3, align 8
  %2670 = add i64 %2669, 6
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2667 to i32*
  store i32 %2668, i32* %2671, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_470ca7

block_.L_470ca7:                                  ; preds = %block_.L_470c62, %block_470c5d
  %2672 = phi i64 [ %.pre80, %block_.L_470c62 ], [ %2611, %block_470c5d ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_470c9c, %block_.L_470c62 ], [ %call2_470c45, %block_470c5d ]
  %2673 = load i64, i64* %RBP.i, align 8
  %2674 = add i64 %2673, -240
  %2675 = add i64 %2672, 7
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  store i8 0, i8* %14, align 1
  %2678 = and i32 %2677, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2683 = icmp eq i32 %2677, 0
  %2684 = zext i1 %2683 to i8
  store i8 %2684, i8* %29, align 1
  %2685 = lshr i32 %2677, 31
  %2686 = trunc i32 %2685 to i8
  store i8 %2686, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %2683, i64 54, i64 13
  %2687 = add i64 %2672, %.v136
  store i64 %2687, i64* %3, align 8
  br i1 %2683, label %block_.L_470cdd, label %block_470cb4

block_470cb4:                                     ; preds = %block_.L_470ca7
  %2688 = add i64 %2687, 7
  store i64 %2688, i64* %3, align 8
  %2689 = load i32, i32* %2676, align 4
  %2690 = add i32 %2689, -3
  %2691 = icmp ult i32 %2689, 3
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %14, align 1
  %2693 = and i32 %2690, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %21, align 1
  %2698 = xor i32 %2690, %2689
  %2699 = lshr i32 %2698, 4
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %26, align 1
  %2702 = icmp eq i32 %2690, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %29, align 1
  %2704 = lshr i32 %2690, 31
  %2705 = trunc i32 %2704 to i8
  store i8 %2705, i8* %32, align 1
  %2706 = lshr i32 %2689, 31
  %2707 = xor i32 %2704, %2706
  %2708 = add nuw nsw i32 %2707, %2706
  %2709 = icmp eq i32 %2708, 2
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %38, align 1
  %.v137 = select i1 %2702, i64 41, i64 13
  %2711 = add i64 %2687, %.v137
  store i64 %2711, i64* %3, align 8
  br i1 %2702, label %block_.L_470cdd, label %block_470cc1

block_470cc1:                                     ; preds = %block_470cb4
  %2712 = add i64 %2711, 7
  store i64 %2712, i64* %3, align 8
  %2713 = load i32, i32* %2676, align 4
  %2714 = add i32 %2713, -7
  %2715 = icmp ult i32 %2713, 7
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %14, align 1
  %2717 = and i32 %2714, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %21, align 1
  %2722 = xor i32 %2714, %2713
  %2723 = lshr i32 %2722, 4
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  store i8 %2725, i8* %26, align 1
  %2726 = icmp eq i32 %2714, 0
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %29, align 1
  %2728 = lshr i32 %2714, 31
  %2729 = trunc i32 %2728 to i8
  store i8 %2729, i8* %32, align 1
  %2730 = lshr i32 %2713, 31
  %2731 = xor i32 %2728, %2730
  %2732 = add nuw nsw i32 %2731, %2730
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %38, align 1
  %.v138 = select i1 %2726, i64 13, i64 59
  %2735 = add i64 %2711, %.v138
  store i64 %2735, i64* %3, align 8
  br i1 %2726, label %block_470cce, label %block_.L_470cfc

block_470cce:                                     ; preds = %block_470cc1
  %2736 = add i64 %2673, -16
  %2737 = add i64 %2735, 4
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i32*
  %2739 = load i32, i32* %2738, align 4
  %2740 = sext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i985, align 8
  %2741 = shl nsw i64 %2740, 2
  %2742 = add i64 %2673, -128
  %2743 = add i64 %2742, %2741
  %2744 = add i64 %2735, 9
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = add i32 %2746, -1
  %2748 = icmp eq i32 %2746, 0
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %14, align 1
  %2750 = and i32 %2747, 255
  %2751 = tail call i32 @llvm.ctpop.i32(i32 %2750)
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  %2754 = xor i8 %2753, 1
  store i8 %2754, i8* %21, align 1
  %2755 = xor i32 %2747, %2746
  %2756 = lshr i32 %2755, 4
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  store i8 %2758, i8* %26, align 1
  %2759 = icmp eq i32 %2747, 0
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %29, align 1
  %2761 = lshr i32 %2747, 31
  %2762 = trunc i32 %2761 to i8
  store i8 %2762, i8* %32, align 1
  %2763 = lshr i32 %2746, 31
  %2764 = xor i32 %2761, %2763
  %2765 = add nuw nsw i32 %2764, %2763
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %38, align 1
  %.v139 = select i1 %2759, i64 15, i64 46
  %2768 = add i64 %2735, %.v139
  store i64 %2768, i64* %3, align 8
  br i1 %2759, label %block_.L_470cdd, label %block_.L_470cfc

block_.L_470cdd:                                  ; preds = %block_470cce, %block_470cb4, %block_.L_470ca7
  %2769 = phi i64 [ %2768, %block_470cce ], [ %2711, %block_470cb4 ], [ %2687, %block_.L_470ca7 ]
  %2770 = add i64 %2673, -16
  %2771 = add i64 %2769, 4
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  %2773 = load i32, i32* %2772, align 4
  %2774 = sext i32 %2773 to i64
  store i64 %2774, i64* %RAX.i985, align 8
  %2775 = shl nsw i64 %2774, 2
  %2776 = add i64 %2673, -128
  %2777 = add i64 %2776, %2775
  %2778 = add i64 %2769, 8
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2777 to i32*
  %2780 = load i32, i32* %2779, align 4
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RCX.i928, align 8
  %2782 = add i64 %2769, 14
  store i64 %2782, i64* %3, align 8
  store i32 %2780, i32* %2676, align 4
  %2783 = load i64, i64* %RBP.i, align 8
  %2784 = add i64 %2783, -16
  %2785 = load i64, i64* %3, align 8
  %2786 = add i64 %2785, 4
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2784 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = sext i32 %2788 to i64
  store i64 %2789, i64* %RAX.i985, align 8
  %2790 = shl nsw i64 %2789, 2
  %2791 = add i64 %2783, -176
  %2792 = add i64 %2791, %2790
  %2793 = add i64 %2785, 11
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i32*
  %2795 = load i32, i32* %2794, align 4
  %2796 = zext i32 %2795 to i64
  store i64 %2796, i64* %RCX.i928, align 8
  %2797 = add i64 %2783, -236
  %2798 = add i64 %2785, 17
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  store i32 %2795, i32* %2799, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_470cfc

block_.L_470cfc:                                  ; preds = %block_470cce, %block_470cc1, %block_.L_470cdd
  %2800 = phi i64 [ %.pre81, %block_.L_470cdd ], [ %2768, %block_470cce ], [ %2735, %block_470cc1 ]
  %2801 = add i64 %2800, 117
  br label %block_.L_470d71

block_.L_470d01:                                  ; preds = %block_.L_470a9b
  %2802 = add i64 %2128, -292
  %2803 = add i64 %2143, 7
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = add i32 %2805, -2
  %2807 = icmp ult i32 %2805, 2
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %14, align 1
  %2809 = and i32 %2806, 255
  %2810 = tail call i32 @llvm.ctpop.i32(i32 %2809)
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = xor i8 %2812, 1
  store i8 %2813, i8* %21, align 1
  %2814 = xor i32 %2806, %2805
  %2815 = lshr i32 %2814, 4
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  store i8 %2817, i8* %26, align 1
  %2818 = icmp eq i32 %2806, 0
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %29, align 1
  %2820 = lshr i32 %2806, 31
  %2821 = trunc i32 %2820 to i8
  store i8 %2821, i8* %32, align 1
  %2822 = lshr i32 %2805, 31
  %2823 = xor i32 %2820, %2822
  %2824 = add nuw nsw i32 %2823, %2822
  %2825 = icmp eq i32 %2824, 2
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %38, align 1
  %.v126 = select i1 %2818, i64 13, i64 52
  %2827 = add i64 %2143, %.v126
  store i64 %2827, i64* %3, align 8
  br i1 %2818, label %block_470d0e, label %block_.L_470d35

block_470d0e:                                     ; preds = %block_.L_470d01
  %2828 = add i64 %2128, -16
  %2829 = add i64 %2827, 4
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = sext i32 %2831 to i64
  store i64 %2832, i64* %RAX.i985, align 8
  %2833 = shl nsw i64 %2832, 2
  %2834 = add i64 %2128, -80
  %2835 = add i64 %2834, %2833
  %2836 = add i64 %2827, 9
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i32*
  %2838 = load i32, i32* %2837, align 4
  store i8 0, i8* %14, align 1
  %2839 = and i32 %2838, 255
  %2840 = tail call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  store i8 %2843, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2844 = icmp eq i32 %2838, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %29, align 1
  %2846 = lshr i32 %2838, 31
  %2847 = trunc i32 %2846 to i8
  store i8 %2847, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v129 = select i1 %2844, i64 39, i64 15
  %2848 = add i64 %2827, %.v129
  store i64 %2848, i64* %3, align 8
  br i1 %2844, label %block_.L_470d35, label %block_470d1d

block_470d1d:                                     ; preds = %block_470d0e
  store i64 5, i64* %RDX.i925, align 8
  %2849 = add i64 %2848, 9
  store i64 %2849, i64* %3, align 8
  %2850 = load i32, i32* %2830, align 4
  %2851 = sext i32 %2850 to i64
  store i64 %2851, i64* %RAX.i985, align 8
  %2852 = shl nsw i64 %2851, 2
  %2853 = add i64 %2128, -288
  %2854 = add i64 %2853, %2852
  %2855 = add i64 %2848, 16
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i32*
  %2857 = load i32, i32* %2856, align 4
  %2858 = zext i32 %2857 to i64
  store i64 %2858, i64* %RDI.i674.pre-phi, align 8
  %2859 = add i64 %2128, -20
  %2860 = add i64 %2848, 19
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RSI.i911, align 8
  %2864 = add i64 %2848, -247165
  %2865 = add i64 %2848, 24
  %2866 = load i64, i64* %6, align 8
  %2867 = add i64 %2866, -8
  %2868 = inttoptr i64 %2867 to i64*
  store i64 %2865, i64* %2868, align 8
  store i64 %2867, i64* %6, align 8
  store i64 %2864, i64* %3, align 8
  %call2_470d30 = tail call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* nonnull %0, i64 %2864, %struct.Memory* %MEMORY.6)
  %.pre82 = load i64, i64* %RBP.i, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_470d35

block_.L_470d35:                                  ; preds = %block_.L_470d01, %block_470d1d, %block_470d0e
  %2869 = phi i64 [ %.pre83, %block_470d1d ], [ %2848, %block_470d0e ], [ %2827, %block_.L_470d01 ]
  %2870 = phi i64 [ %.pre82, %block_470d1d ], [ %2128, %block_470d0e ], [ %2128, %block_.L_470d01 ]
  %2871 = add i64 %2870, -296
  %2872 = add i64 %2869, 7
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = add i32 %2874, -2
  %2876 = icmp ult i32 %2874, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %14, align 1
  %2878 = and i32 %2875, 255
  %2879 = tail call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  store i8 %2882, i8* %21, align 1
  %2883 = xor i32 %2875, %2874
  %2884 = lshr i32 %2883, 4
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  store i8 %2886, i8* %26, align 1
  %2887 = icmp eq i32 %2875, 0
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %29, align 1
  %2889 = lshr i32 %2875, 31
  %2890 = trunc i32 %2889 to i8
  store i8 %2890, i8* %32, align 1
  %2891 = lshr i32 %2874, 31
  %2892 = xor i32 %2889, %2891
  %2893 = add nuw nsw i32 %2892, %2891
  %2894 = icmp eq i32 %2893, 2
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %38, align 1
  %.v127 = select i1 %2887, i64 13, i64 55
  %2896 = add i64 %2869, %.v127
  store i64 %2896, i64* %3, align 8
  br i1 %2887, label %block_470d42, label %block_.L_470d6c

block_470d42:                                     ; preds = %block_.L_470d35
  %2897 = add i64 %2870, -16
  %2898 = add i64 %2896, 4
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = sext i32 %2900 to i64
  store i64 %2901, i64* %RAX.i985, align 8
  %2902 = shl nsw i64 %2901, 2
  %2903 = add i64 %2870, -224
  %2904 = add i64 %2903, %2902
  %2905 = add i64 %2896, 12
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  store i8 0, i8* %14, align 1
  %2908 = and i32 %2907, 255
  %2909 = tail call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2913 = icmp eq i32 %2907, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %29, align 1
  %2915 = lshr i32 %2907, 31
  %2916 = trunc i32 %2915 to i8
  store i8 %2916, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %2913, i64 18, i64 42
  %2917 = add i64 %2896, %.v128
  store i64 %2917, i64* %3, align 8
  br i1 %2913, label %block_470d54, label %block_.L_470d6c

block_470d54:                                     ; preds = %block_470d42
  store i64 5, i64* %RDX.i925, align 8
  %2918 = add i64 %2917, 9
  store i64 %2918, i64* %3, align 8
  %2919 = load i32, i32* %2899, align 4
  %2920 = sext i32 %2919 to i64
  store i64 %2920, i64* %RAX.i985, align 8
  %2921 = shl nsw i64 %2920, 2
  %2922 = add i64 %2870, -288
  %2923 = add i64 %2922, %2921
  %2924 = add i64 %2917, 16
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i32*
  %2926 = load i32, i32* %2925, align 4
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %RDI.i674.pre-phi, align 8
  %2928 = add i64 %2870, -24
  %2929 = add i64 %2917, 19
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i32*
  %2931 = load i32, i32* %2930, align 4
  %2932 = zext i32 %2931 to i64
  store i64 %2932, i64* %RSI.i911, align 8
  %2933 = add i64 %2917, -247508
  %2934 = add i64 %2917, 24
  %2935 = load i64, i64* %6, align 8
  %2936 = add i64 %2935, -8
  %2937 = inttoptr i64 %2936 to i64*
  store i64 %2934, i64* %2937, align 8
  store i64 %2936, i64* %6, align 8
  store i64 %2933, i64* %3, align 8
  %call2_470d67 = tail call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* nonnull %0, i64 %2933, %struct.Memory* %MEMORY.6)
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_470d6c

block_.L_470d6c:                                  ; preds = %block_470d42, %block_.L_470d35, %block_470d54
  %2938 = phi i64 [ %.pre84, %block_470d54 ], [ %2917, %block_470d42 ], [ %2896, %block_.L_470d35 ]
  %2939 = add i64 %2938, 5
  store i64 %2939, i64* %3, align 8
  br label %block_.L_470d71

block_.L_470d71:                                  ; preds = %block_.L_470d6c, %block_.L_470cfc
  %storemerge54 = phi i64 [ %2801, %block_.L_470cfc ], [ %2939, %block_.L_470d6c ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.17, %block_.L_470cfc ], [ %MEMORY.6, %block_.L_470d6c ]
  %2940 = add i64 %storemerge54, 5
  br label %block_.L_470d76

block_.L_470d76:                                  ; preds = %block_.L_470d71, %block_.L_470a96, %block_470a53, %block_4709c1, %block_.L_47092f, %block_.L_47082f
  %.sink = phi i64 [ %2940, %block_.L_470d71 ], [ %2103, %block_.L_470a96 ], [ %1982, %block_470a53 ], [ %1728, %block_4709c1 ], [ %1475, %block_.L_47092f ], [ %1040, %block_.L_47082f ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_.L_470d71 ], [ %MEMORY.6, %block_.L_470a96 ], [ %MEMORY.6, %block_470a53 ], [ %MEMORY.6, %block_4709c1 ], [ %MEMORY.6, %block_.L_47092f ], [ %MEMORY.6, %block_.L_47082f ]
  %2941 = load i64, i64* %RBP.i, align 8
  %2942 = add i64 %2941, -16
  %2943 = add i64 %.sink, 3
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = add i32 %2945, 1
  %2947 = zext i32 %2946 to i64
  store i64 %2947, i64* %RAX.i985, align 8
  %2948 = icmp eq i32 %2945, -1
  %2949 = icmp eq i32 %2946, 0
  %2950 = or i1 %2948, %2949
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %14, align 1
  %2952 = and i32 %2946, 255
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952)
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %21, align 1
  %2957 = xor i32 %2946, %2945
  %2958 = lshr i32 %2957, 4
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  store i8 %2960, i8* %26, align 1
  %2961 = zext i1 %2949 to i8
  store i8 %2961, i8* %29, align 1
  %2962 = lshr i32 %2946, 31
  %2963 = trunc i32 %2962 to i8
  store i8 %2963, i8* %32, align 1
  %2964 = lshr i32 %2945, 31
  %2965 = xor i32 %2962, %2964
  %2966 = add nuw nsw i32 %2965, %2962
  %2967 = icmp eq i32 %2966, 2
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %38, align 1
  %2969 = add i64 %.sink, 9
  store i64 %2969, i64* %3, align 8
  store i32 %2946, i32* %2944, align 4
  %2970 = load i64, i64* %3, align 8
  %2971 = add i64 %2970, -1569
  store i64 %2971, i64* %3, align 8
  br label %block_.L_47075e

block_.L_470d84:                                  ; preds = %block_.L_47075e
  %2972 = load i64, i64* %RBP.i, align 8
  %2973 = add i64 %2972, -300
  %2974 = add i64 %710, 7
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2973 to i32*
  %2976 = load i32, i32* %2975, align 4
  store i8 0, i8* %14, align 1
  %2977 = and i32 %2976, 255
  %2978 = tail call i32 @llvm.ctpop.i32(i32 %2977)
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  store i8 %2981, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2982 = icmp eq i32 %2976, 0
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %29, align 1
  %2984 = lshr i32 %2976, 31
  %2985 = trunc i32 %2984 to i8
  store i8 %2985, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %2982, i64 13, i64 242
  %2986 = add i64 %710, %.v106
  store i64 %2986, i64* %3, align 8
  br i1 %2982, label %block_470d91, label %block_.L_470e76

block_470d91:                                     ; preds = %block_.L_470d84
  %2987 = add i64 %2972, -304
  %2988 = add i64 %2986, 7
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i32*
  %2990 = load i32, i32* %2989, align 4
  store i8 0, i8* %14, align 1
  %2991 = and i32 %2990, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2996 = icmp eq i32 %2990, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %29, align 1
  %2998 = lshr i32 %2990, 31
  %2999 = trunc i32 %2998 to i8
  store i8 %2999, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v107 = select i1 %2996, i64 229, i64 13
  %3000 = add i64 %2986, %.v107
  store i64 %3000, i64* %3, align 8
  br i1 %2996, label %block_.L_470e76, label %block_470d9e

block_470d9e:                                     ; preds = %block_470d91
  %3001 = add i64 %2972, -228
  %3002 = add i64 %3000, 7
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i32*
  %3004 = load i32, i32* %3003, align 4
  store i8 0, i8* %14, align 1
  %3005 = and i32 %3004, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005)
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3010 = icmp eq i32 %3004, 0
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %29, align 1
  %3012 = lshr i32 %3004, 31
  %3013 = trunc i32 %3012 to i8
  store i8 %3013, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %3010, i64 41, i64 13
  %3014 = add i64 %3000, %.v108
  store i64 %3014, i64* %3, align 8
  %.pre89 = add i64 %2972, -236
  br i1 %3010, label %block_470d9e.block_.L_470dc7_crit_edge, label %block_470dab

block_470d9e.block_.L_470dc7_crit_edge:           ; preds = %block_470d9e
  %.pre90 = inttoptr i64 %.pre89 to i32*
  br label %block_.L_470dc7

block_470dab:                                     ; preds = %block_470d9e
  %3015 = add i64 %3014, 7
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %.pre89 to i32*
  %3017 = load i32, i32* %3016, align 4
  store i8 0, i8* %14, align 1
  %3018 = and i32 %3017, 255
  %3019 = tail call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  store i8 %3022, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3023 = icmp eq i32 %3017, 0
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %29, align 1
  %3025 = lshr i32 %3017, 31
  %3026 = trunc i32 %3025 to i8
  store i8 %3026, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %3023, i64 13, i64 28
  %3027 = add i64 %3014, %.v109
  store i64 %3027, i64* %3, align 8
  br i1 %3023, label %block_470db8, label %block_.L_470dc7

block_470db8:                                     ; preds = %block_470dab
  %3028 = add i64 %2972, -308
  %3029 = add i64 %3027, 10
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  store i32 2, i32* %3030, align 4
  %3031 = load i64, i64* %3, align 8
  %3032 = add i64 %3031, 17
  store i64 %3032, i64* %3, align 8
  br label %block_.L_470dd3

block_.L_470dc7:                                  ; preds = %block_470dab, %block_470d9e.block_.L_470dc7_crit_edge
  %.pre-phi91 = phi i32* [ %.pre90, %block_470d9e.block_.L_470dc7_crit_edge ], [ %3016, %block_470dab ]
  %3033 = phi i64 [ %3014, %block_470d9e.block_.L_470dc7_crit_edge ], [ %3027, %block_470dab ]
  %3034 = add i64 %3033, 6
  store i64 %3034, i64* %3, align 8
  %3035 = load i32, i32* %.pre-phi91, align 4
  %3036 = zext i32 %3035 to i64
  store i64 %3036, i64* %RAX.i985, align 8
  %3037 = add i64 %2972, -308
  %3038 = add i64 %3033, 12
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i32*
  store i32 %3035, i32* %3039, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_470dd3

block_.L_470dd3:                                  ; preds = %block_.L_470dc7, %block_470db8
  %3040 = phi i64 [ %.pre67, %block_.L_470dc7 ], [ %3032, %block_470db8 ]
  %3041 = load i64, i64* %RBP.i, align 8
  %3042 = add i64 %3041, -240
  %3043 = add i64 %3040, 7
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  store i8 0, i8* %14, align 1
  %3046 = and i32 %3045, 255
  %3047 = tail call i32 @llvm.ctpop.i32(i32 %3046)
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  %3050 = xor i8 %3049, 1
  store i8 %3050, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3051 = icmp eq i32 %3045, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %29, align 1
  %3053 = lshr i32 %3045, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %3051, i64 41, i64 13
  %3055 = add i64 %3040, %.v110
  store i64 %3055, i64* %3, align 8
  %.pre92 = add i64 %3041, -232
  br i1 %3051, label %block_.L_470dd3.block_.L_470dfc_crit_edge, label %block_470de0

block_.L_470dd3.block_.L_470dfc_crit_edge:        ; preds = %block_.L_470dd3
  %.pre94 = inttoptr i64 %.pre92 to i32*
  br label %block_.L_470dfc

block_470de0:                                     ; preds = %block_.L_470dd3
  %3056 = add i64 %3055, 7
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %.pre92 to i32*
  %3058 = load i32, i32* %3057, align 4
  store i8 0, i8* %14, align 1
  %3059 = and i32 %3058, 255
  %3060 = tail call i32 @llvm.ctpop.i32(i32 %3059)
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = xor i8 %3062, 1
  store i8 %3063, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3064 = icmp eq i32 %3058, 0
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %29, align 1
  %3066 = lshr i32 %3058, 31
  %3067 = trunc i32 %3066 to i8
  store i8 %3067, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v111 = select i1 %3064, i64 13, i64 28
  %3068 = add i64 %3055, %.v111
  store i64 %3068, i64* %3, align 8
  br i1 %3064, label %block_470ded, label %block_.L_470dfc

block_470ded:                                     ; preds = %block_470de0
  %3069 = add i64 %3041, -312
  %3070 = add i64 %3068, 10
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3069 to i32*
  store i32 2, i32* %3071, align 4
  %3072 = load i64, i64* %3, align 8
  %3073 = add i64 %3072, 17
  store i64 %3073, i64* %3, align 8
  br label %block_.L_470e08

block_.L_470dfc:                                  ; preds = %block_470de0, %block_.L_470dd3.block_.L_470dfc_crit_edge
  %.pre-phi95 = phi i32* [ %.pre94, %block_.L_470dd3.block_.L_470dfc_crit_edge ], [ %3057, %block_470de0 ]
  %3074 = phi i64 [ %3055, %block_.L_470dd3.block_.L_470dfc_crit_edge ], [ %3068, %block_470de0 ]
  %3075 = add i64 %3074, 6
  store i64 %3075, i64* %3, align 8
  %3076 = load i32, i32* %.pre-phi95, align 4
  %3077 = zext i32 %3076 to i64
  store i64 %3077, i64* %RAX.i985, align 8
  %3078 = add i64 %3041, -312
  %3079 = add i64 %3074, 12
  store i64 %3079, i64* %3, align 8
  %3080 = inttoptr i64 %3078 to i32*
  store i32 %3076, i32* %3080, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_470e08

block_.L_470e08:                                  ; preds = %block_.L_470dfc, %block_470ded
  %3081 = phi i64 [ %.pre68, %block_.L_470dfc ], [ %3073, %block_470ded ]
  %3082 = load i64, i64* %RBP.i, align 8
  %3083 = add i64 %3082, -308
  %3084 = add i64 %3081, 6
  store i64 %3084, i64* %3, align 8
  %3085 = inttoptr i64 %3083 to i32*
  %3086 = load i32, i32* %3085, align 4
  %3087 = zext i32 %3086 to i64
  store i64 %3087, i64* %RAX.i985, align 8
  %3088 = add i64 %3081, 12
  store i64 %3088, i64* %3, align 8
  store i32 %3086, i32* %3085, align 4
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -312
  %3091 = load i64, i64* %3, align 8
  %3092 = add i64 %3091, 6
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3090 to i32*
  %3094 = load i32, i32* %3093, align 4
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RAX.i985, align 8
  %3096 = add i64 %3091, 12
  store i64 %3096, i64* %3, align 8
  store i32 %3094, i32* %3093, align 4
  %3097 = load i64, i64* %RBP.i, align 8
  %3098 = add i64 %3097, -308
  %3099 = load i64, i64* %3, align 8
  %3100 = add i64 %3099, 7
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3098 to i32*
  %3102 = load i32, i32* %3101, align 4
  %3103 = add i32 %3102, -7
  %3104 = icmp ult i32 %3102, 7
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %14, align 1
  %3106 = and i32 %3103, 255
  %3107 = tail call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  store i8 %3110, i8* %21, align 1
  %3111 = xor i32 %3103, %3102
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %26, align 1
  %3115 = icmp eq i32 %3103, 0
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %29, align 1
  %3117 = lshr i32 %3103, 31
  %3118 = trunc i32 %3117 to i8
  store i8 %3118, i8* %32, align 1
  %3119 = lshr i32 %3102, 31
  %3120 = xor i32 %3117, %3119
  %3121 = add nuw nsw i32 %3120, %3119
  %3122 = icmp eq i32 %3121, 2
  %3123 = zext i1 %3122 to i8
  store i8 %3123, i8* %38, align 1
  %.v112 = select i1 %3115, i64 13, i64 23
  %3124 = add i64 %3099, %.v112
  store i64 %3124, i64* %3, align 8
  br i1 %3115, label %block_470e2d, label %block_.L_470e37

block_470e2d:                                     ; preds = %block_.L_470e08
  %3125 = add i64 %3124, 10
  store i64 %3125, i64* %3, align 8
  store i32 1, i32* %3101, align 4
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_470e37

block_.L_470e37:                                  ; preds = %block_.L_470e08, %block_470e2d
  %3126 = phi i64 [ %.pre70, %block_470e2d ], [ %3124, %block_.L_470e08 ]
  %3127 = phi i64 [ %.pre69, %block_470e2d ], [ %3097, %block_.L_470e08 ]
  %3128 = add i64 %3127, -312
  %3129 = add i64 %3126, 7
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = add i32 %3131, -7
  %3133 = icmp ult i32 %3131, 7
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %14, align 1
  %3135 = and i32 %3132, 255
  %3136 = tail call i32 @llvm.ctpop.i32(i32 %3135)
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  %3139 = xor i8 %3138, 1
  store i8 %3139, i8* %21, align 1
  %3140 = xor i32 %3132, %3131
  %3141 = lshr i32 %3140, 4
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  store i8 %3143, i8* %26, align 1
  %3144 = icmp eq i32 %3132, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %29, align 1
  %3146 = lshr i32 %3132, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %32, align 1
  %3148 = lshr i32 %3131, 31
  %3149 = xor i32 %3146, %3148
  %3150 = add nuw nsw i32 %3149, %3148
  %3151 = icmp eq i32 %3150, 2
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %38, align 1
  %.v113 = select i1 %3144, i64 13, i64 23
  %3153 = add i64 %3126, %.v113
  store i64 %3153, i64* %3, align 8
  br i1 %3144, label %block_470e44, label %block_.L_470e4e

block_470e44:                                     ; preds = %block_.L_470e37
  %3154 = add i64 %3153, 10
  store i64 %3154, i64* %3, align 8
  store i32 1, i32* %3130, align 4
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_470e4e

block_.L_470e4e:                                  ; preds = %block_.L_470e37, %block_470e44
  %3155 = phi i64 [ %.pre72, %block_470e44 ], [ %3153, %block_.L_470e37 ]
  %3156 = phi i64 [ %.pre71, %block_470e44 ], [ %3127, %block_.L_470e37 ]
  %3157 = add i64 %3156, -20
  %3158 = add i64 %3155, 3
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = zext i32 %3160 to i64
  store i64 %3161, i64* %RDI.i674.pre-phi, align 8
  %3162 = add i64 %3156, -308
  %3163 = add i64 %3155, 9
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = zext i32 %3165 to i64
  store i64 %3166, i64* %RSI.i911, align 8
  %3167 = add i64 %3155, 15
  store i64 %3167, i64* %3, align 8
  %3168 = load i32, i32* %3164, align 4
  %3169 = zext i32 %3168 to i64
  store i64 %3169, i64* %RDX.i925, align 8
  %3170 = add i64 %3155, -3006
  %3171 = add i64 %3155, 20
  %3172 = load i64, i64* %6, align 8
  %3173 = add i64 %3172, -8
  %3174 = inttoptr i64 %3173 to i64*
  store i64 %3171, i64* %3174, align 8
  store i64 %3173, i64* %6, align 8
  store i64 %3170, i64* %3, align 8
  %call2_470e5d = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %3170, %struct.Memory* %MEMORY.6)
  %3175 = load i64, i64* %RBP.i, align 8
  %3176 = add i64 %3175, -24
  %3177 = load i64, i64* %3, align 8
  %3178 = add i64 %3177, 3
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3176 to i32*
  %3180 = load i32, i32* %3179, align 4
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RDI.i674.pre-phi, align 8
  %3182 = add i64 %3175, -312
  %3183 = add i64 %3177, 9
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RSI.i911, align 8
  %3187 = add i64 %3177, 15
  store i64 %3187, i64* %3, align 8
  %3188 = load i32, i32* %3184, align 4
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RDX.i925, align 8
  %3190 = add i64 %3177, -3026
  %3191 = add i64 %3177, 20
  %3192 = load i64, i64* %6, align 8
  %3193 = add i64 %3192, -8
  %3194 = inttoptr i64 %3193 to i64*
  store i64 %3191, i64* %3194, align 8
  store i64 %3193, i64* %6, align 8
  store i64 %3190, i64* %3, align 8
  %call2_470e71 = tail call %struct.Memory* @sub_470290.update_status(%struct.State* nonnull %0, i64 %3190, %struct.Memory* %call2_470e5d)
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %block_.L_470e76

block_.L_470e76:                                  ; preds = %block_.L_470d84, %block_.L_470e4e, %block_470d91
  %3195 = phi i64 [ %2972, %block_.L_470d84 ], [ %2972, %block_470d91 ], [ %.pre74, %block_.L_470e4e ]
  %3196 = phi i64 [ %2986, %block_.L_470d84 ], [ %3000, %block_470d91 ], [ %.pre73, %block_.L_470e4e ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.6, %block_.L_470d84 ], [ %MEMORY.6, %block_470d91 ], [ %call2_470e71, %block_.L_470e4e ]
  %3197 = add i64 %3195, -300
  %3198 = add i64 %3196, 11
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = add i32 %3200, 1
  %3202 = zext i32 %3201 to i64
  store i64 %3202, i64* %RAX.i985, align 8
  %3203 = icmp eq i32 %3200, -1
  %3204 = icmp eq i32 %3201, 0
  %3205 = or i1 %3203, %3204
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %14, align 1
  %3207 = and i32 %3201, 255
  %3208 = tail call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  store i8 %3211, i8* %21, align 1
  %3212 = xor i32 %3201, %3200
  %3213 = lshr i32 %3212, 4
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  store i8 %3215, i8* %26, align 1
  %3216 = zext i1 %3204 to i8
  store i8 %3216, i8* %29, align 1
  %3217 = lshr i32 %3201, 31
  %3218 = trunc i32 %3217 to i8
  store i8 %3218, i8* %32, align 1
  %3219 = lshr i32 %3200, 31
  %3220 = xor i32 %3217, %3219
  %3221 = add nuw nsw i32 %3220, %3217
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  store i8 %3223, i8* %38, align 1
  %3224 = add i64 %3196, 20
  store i64 %3224, i64* %3, align 8
  store i32 %3201, i32* %3199, align 4
  %3225 = load i64, i64* %3, align 8
  %3226 = add i64 %3225, -1856
  store i64 %3226, i64* %3, align 8
  br label %block_.L_47074a

block_.L_470e8f:                                  ; preds = %block_.L_47074a
  %3227 = add i64 %635, 5
  store i64 %3227, i64* %3, align 8
  br label %block_.L_470e94

block_.L_470e94:                                  ; preds = %block_.L_470e8f, %block_.L_4706dd
  %3228 = phi i64 [ %.pre85, %block_.L_4706dd ], [ %607, %block_.L_470e8f ]
  %storemerge = phi i64 [ %458, %block_.L_4706dd ], [ %3227, %block_.L_470e8f ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4706dd ], [ %MEMORY.5, %block_.L_470e8f ]
  %3229 = add i64 %3228, -8
  %3230 = add i64 %storemerge, 3
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = add i32 %3232, 1
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RAX.i985, align 8
  %3235 = icmp eq i32 %3232, -1
  %3236 = icmp eq i32 %3233, 0
  %3237 = or i1 %3235, %3236
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %14, align 1
  %3239 = and i32 %3233, 255
  %3240 = tail call i32 @llvm.ctpop.i32(i32 %3239)
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = xor i8 %3242, 1
  store i8 %3243, i8* %21, align 1
  %3244 = xor i32 %3233, %3232
  %3245 = lshr i32 %3244, 4
  %3246 = trunc i32 %3245 to i8
  %3247 = and i8 %3246, 1
  store i8 %3247, i8* %26, align 1
  %3248 = zext i1 %3236 to i8
  store i8 %3248, i8* %29, align 1
  %3249 = lshr i32 %3233, 31
  %3250 = trunc i32 %3249 to i8
  store i8 %3250, i8* %32, align 1
  %3251 = lshr i32 %3232, 31
  %3252 = xor i32 %3249, %3251
  %3253 = add nuw nsw i32 %3252, %3249
  %3254 = icmp eq i32 %3253, 2
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %38, align 1
  %3256 = add i64 %storemerge, 9
  store i64 %3256, i64* %3, align 8
  store i32 %3233, i32* %3231, align 4
  %3257 = load i64, i64* %3, align 8
  %3258 = add i64 %3257, -2158
  store i64 %3258, i64* %3, align 8
  br label %block_.L_47062f

block_.L_470ea2:                                  ; preds = %block_.L_47062f
  %3259 = load i64, i64* %6, align 8
  %3260 = add i64 %3259, 352
  store i64 %3260, i64* %6, align 8
  %3261 = icmp ugt i64 %3259, -353
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %14, align 1
  %3263 = trunc i64 %3260 to i32
  %3264 = and i32 %3263, 255
  %3265 = tail call i32 @llvm.ctpop.i32(i32 %3264)
  %3266 = trunc i32 %3265 to i8
  %3267 = and i8 %3266, 1
  %3268 = xor i8 %3267, 1
  store i8 %3268, i8* %21, align 1
  %3269 = xor i64 %3260, %3259
  %3270 = lshr i64 %3269, 4
  %3271 = trunc i64 %3270 to i8
  %3272 = and i8 %3271, 1
  store i8 %3272, i8* %26, align 1
  %3273 = icmp eq i64 %3260, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %29, align 1
  %3275 = lshr i64 %3260, 63
  %3276 = trunc i64 %3275 to i8
  store i8 %3276, i8* %32, align 1
  %3277 = lshr i64 %3259, 63
  %3278 = xor i64 %3275, %3277
  %3279 = add nuw nsw i64 %3278, %3275
  %3280 = icmp eq i64 %3279, 2
  %3281 = zext i1 %3280 to i8
  store i8 %3281, i8* %38, align 1
  %3282 = add i64 %175, 8
  store i64 %3282, i64* %3, align 8
  %3283 = add i64 %3259, 360
  %3284 = inttoptr i64 %3260 to i64*
  %3285 = load i64, i64* %3284, align 8
  store i64 %3285, i64* %RBP.i, align 8
  store i64 %3283, i64* %6, align 8
  %3286 = add i64 %175, 9
  store i64 %3286, i64* %3, align 8
  %3287 = inttoptr i64 %3283 to i64*
  %3288 = load i64, i64* %3287, align 8
  store i64 %3288, i64* %3, align 8
  %3289 = add i64 %3259, 368
  store i64 %3289, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
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
define %struct.Memory* @routine_subq__0x160___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -352
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 352
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
define %struct.Memory* @routine_movl__0x3__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
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
define %struct.Memory* @routine_jne_.L_470606(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470628(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.color_to_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58078f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58078f_type* @G__0x58078f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_cmpl_0xb54cec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_470ea2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_4706dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_4706e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_jmpq_.L_470e94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x2c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_470740(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xe0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -224
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x120__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_4706e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_jge_.L_470e8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_470d84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl_0x4__rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_47082f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_470834(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470d76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x8__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl_0x8__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_47092f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_je_.L_47092f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_470934(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_4709c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_jne_.L_470a58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_je_.L_470a96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_470a9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_jne_.L_470d01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_470af2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470b0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5807bf___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5807bf_type* @G__0x5807bf to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xe0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_shlq__0x2___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_analyze_semeai(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_470b6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470bbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.safety_to_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xe0__rbp__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -224
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5807e7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5807e7_type* @G__0x5807e7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x120__rbp__rcx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -288
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
define %struct.Memory* @routine_movq_MINUS0x148__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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
define %struct.Memory* @routine_je_.L_470bf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jne_.L_470c13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
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
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -224
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
define %struct.Memory* @routine_movl__ecx__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %R10, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R10, align 8
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
define %struct.Memory* @routine_addq__r10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R10, align 8
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
define %struct.Memory* @routine_jne_.L_470c62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470ca7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -128
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -176
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5807fc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5807fc_type* @G__0x5807fc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x158__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_je_.L_470cdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jne_.L_470cfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x80__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -128
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
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
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -128
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -176
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
define %struct.Memory* @routine_movl__ecx__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_470d71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
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
define %struct.Memory* @routine_jne_.L_470d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -80
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
define %struct.Memory* @routine_je_.L_470d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x120__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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
define %struct.Memory* @routine_jne_.L_470d6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xe0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -224
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
define %struct.Memory* @routine_jmpq_.L_47075e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_470e76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_je_.L_470e76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_470dc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -236
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
define %struct.Memory* @routine_jne_.L_470dc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_470dd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -236
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
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_470dfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_jne_.L_470dfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_470e08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_movl_MINUS0x138__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_cmpl__0x7__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jne_.L_470e37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jne_.L_470e4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_movl_MINUS0x134__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_movl_MINUS0x138__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_movl_MINUS0x138__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_jmpq_.L_470e7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47074a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_47062f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x160___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 352
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -353
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
