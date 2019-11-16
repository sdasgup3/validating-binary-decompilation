; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57bdd8_type = type <{ [8 x i8] }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
%G__0x57d8ef_type = type <{ [8 x i8] }>
%G__0x57d90a_type = type <{ [8 x i8] }>
%G__0x57d936_type = type <{ [8 x i8] }>
%G__0x57d962_type = type <{ [8 x i8] }>
%G__0x57d97a_type = type <{ [8 x i8] }>
%G__0x7cc820_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x57bdd8 = global %G__0x57bdd8_type zeroinitializer
@G__0x57d7b6 = global %G__0x57d7b6_type zeroinitializer
@G__0x57d8ef = global %G__0x57d8ef_type zeroinitializer
@G__0x57d90a = global %G__0x57d90a_type zeroinitializer
@G__0x57d936 = global %G__0x57d936_type zeroinitializer
@G__0x57d962 = global %G__0x57d962_type zeroinitializer
@G__0x57d97a = global %G__0x57d97a_type zeroinitializer
@G__0x7cc820 = global %G__0x7cc820_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b030.is_halfeye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b060.reset_map(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b0a0.first_map(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b0f0.next_map(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @recognize_eye(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -456
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 448
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
  %RAX.i1531 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %RAX.i1531, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1528 = bitcast %union.anon* %44 to i32*
  %45 = add i64 %7, -16
  %46 = load i32, i32* %EDI.i1528, align 4
  %47 = add i64 %10, 17
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1525 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i1525, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1522 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RDX.i1522, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1519 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %RCX.i1519, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -40
  %72 = load i64, i64* %R8.i, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -48
  %78 = load i64, i64* %R9.i, align 8
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -56
  %84 = load i64, i64* %RAX.i1531, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -72
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92, align 4
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -76
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -16
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 5
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102, align 8
  store i8 0, i8* %14, align 1
  %104 = trunc i64 %103 to i32
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %110 = icmp eq i64 %103, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %29, align 1
  %112 = lshr i64 %103, 63
  %113 = trunc i64 %112 to i8
  store i8 %113, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v161 = select i1 %110, i64 16, i64 11
  %114 = add i64 %100, %.v161
  store i64 %114, i64* %3, align 8
  br i1 %110, label %block_.L_43a378, label %block_43a373

block_43a373:                                     ; preds = %entry
  %115 = add i64 %114, 45
  store i64 %115, i64* %3, align 8
  br label %block_.L_43a3a0

block_.L_43a378:                                  ; preds = %entry
  %RDI.i1502 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i1502, align 8
  store i64 1107, i64* %RSI.i1525, align 8
  store i64 ptrtoint (%G__0x57d8ef_type* @G__0x57d8ef to i64), i64* %RDX.i1522, align 8
  store i64 4294967295, i64* %RAX.i1531, align 8
  store i64 4294967295, i64* %RCX.i1519, align 8
  store i64 4294967295, i64* %R8.i, align 8
  %116 = add i64 %114, 97560
  %117 = add i64 %114, 40
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, -8
  %120 = inttoptr i64 %119 to i64*
  store i64 %117, i64* %120, align 8
  store i64 %119, i64* %6, align 8
  store i64 %116, i64* %3, align 8
  %call2_43a39b = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %116, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_43a3a0

block_.L_43a3a0:                                  ; preds = %block_.L_43a378, %block_43a373
  %121 = phi i64 [ %.pre104, %block_.L_43a378 ], [ %115, %block_43a373 ]
  %122 = phi i64 [ %.pre, %block_.L_43a378 ], [ %98, %block_43a373 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_43a39b, %block_.L_43a378 ], [ %2, %block_43a373 ]
  %123 = add i64 %122, -24
  %124 = add i64 %121, 5
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  store i8 0, i8* %14, align 1
  %127 = trunc i64 %126 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %133 = icmp eq i64 %126, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %29, align 1
  %135 = lshr i64 %126, 63
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v162 = select i1 %133, i64 16, i64 11
  %137 = add i64 %121, %.v162
  store i64 %137, i64* %3, align 8
  br i1 %133, label %block_.L_43a3b0, label %block_43a3ab

block_43a3ab:                                     ; preds = %block_.L_43a3a0
  %138 = add i64 %137, 45
  store i64 %138, i64* %3, align 8
  br label %block_.L_43a3d8

block_.L_43a3b0:                                  ; preds = %block_.L_43a3a0
  %RDI.i1483 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i1483, align 8
  store i64 1108, i64* %RSI.i1525, align 8
  store i64 ptrtoint (%G__0x57bdd8_type* @G__0x57bdd8 to i64), i64* %RDX.i1522, align 8
  store i64 4294967295, i64* %RAX.i1531, align 8
  store i64 4294967295, i64* %RCX.i1519, align 8
  store i64 4294967295, i64* %R8.i, align 8
  %139 = add i64 %137, 97504
  %140 = add i64 %137, 40
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, -8
  %143 = inttoptr i64 %142 to i64*
  store i64 %140, i64* %143, align 8
  store i64 %142, i64* %6, align 8
  store i64 %139, i64* %3, align 8
  %call2_43a3d3 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %139, %struct.Memory* %MEMORY.0)
  %.pre105 = load i64, i64* %RBP.i, align 8
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_43a3d8

block_.L_43a3d8:                                  ; preds = %block_.L_43a3b0, %block_43a3ab
  %144 = phi i64 [ %.pre106, %block_.L_43a3b0 ], [ %138, %block_43a3ab ]
  %145 = phi i64 [ %.pre105, %block_.L_43a3b0 ], [ %122, %block_43a3ab ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_43a3d3, %block_.L_43a3b0 ], [ %MEMORY.0, %block_43a3ab ]
  %146 = add i64 %145, -40
  %147 = add i64 %144, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RAX.i1531, align 8
  %150 = add i64 %145, -8
  %151 = add i64 %144, 8
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %154, 36
  store i64 %155, i64* %RCX.i1519, align 8
  %156 = lshr i64 %155, 63
  %157 = add i64 %155, %149
  store i64 %157, i64* %RAX.i1531, align 8
  %158 = icmp ult i64 %157, %149
  %159 = icmp ult i64 %157, %155
  %160 = or i1 %158, %159
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = trunc i64 %157 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  %168 = xor i64 %155, %149
  %169 = xor i64 %168, %157
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %26, align 1
  %173 = icmp eq i64 %157, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %29, align 1
  %175 = lshr i64 %157, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %32, align 1
  %177 = lshr i64 %149, 63
  %178 = xor i64 %175, %177
  %179 = xor i64 %175, %156
  %180 = add nuw nsw i64 %178, %179
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %38, align 1
  %183 = inttoptr i64 %157 to i32*
  %184 = add i64 %144, 17
  store i64 %184, i64* %3, align 8
  %185 = load i32, i32* %183, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RDX.i1522, align 8
  %EDX.i1453 = bitcast %union.anon* %56 to i32*
  %187 = add i64 %145, -68
  %188 = add i64 %144, 20
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 %185, i32* %189, align 4
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -68
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %195, -5
  %197 = icmp ult i32 %195, 5
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %14, align 1
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %21, align 1
  %204 = xor i32 %196, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %26, align 1
  %208 = icmp eq i32 %196, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %29, align 1
  %210 = lshr i32 %196, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %32, align 1
  %212 = lshr i32 %195, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %38, align 1
  %.v163 = select i1 %208, i64 10, i64 17
  %217 = add i64 %192, %.v163
  store i64 %217, i64* %3, align 8
  br i1 %208, label %block_43a3f6, label %block_.L_43a3fd

block_43a3f6:                                     ; preds = %block_.L_43a3d8
  %218 = add i64 %217, 7
  store i64 %218, i64* %3, align 8
  store i32 2, i32* %194, align 4
  %.pre107 = load i64, i64* %RBP.i, align 8
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_43a3fd

block_.L_43a3fd:                                  ; preds = %block_.L_43a3d8, %block_43a3f6
  %219 = phi i64 [ %.pre108, %block_43a3f6 ], [ %217, %block_.L_43a3d8 ]
  %220 = phi i64 [ %.pre107, %block_43a3f6 ], [ %190, %block_.L_43a3d8 ]
  %221 = add i64 %220, -68
  %222 = add i64 %219, 4
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %224, -4
  %226 = icmp ult i32 %224, 4
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %14, align 1
  %228 = and i32 %225, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %21, align 1
  %233 = xor i32 %225, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %26, align 1
  %237 = icmp eq i32 %225, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %29, align 1
  %239 = lshr i32 %225, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %32, align 1
  %241 = lshr i32 %224, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %241
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %38, align 1
  %.v164 = select i1 %237, i64 10, i64 17
  %246 = add i64 %219, %.v164
  store i64 %246, i64* %3, align 8
  br i1 %237, label %block_43a407, label %block_.L_43a40e

block_43a407:                                     ; preds = %block_.L_43a3fd
  %247 = add i64 %246, 7
  store i64 %247, i64* %3, align 8
  store i32 1, i32* %223, align 4
  %.pre109 = load i64, i64* %RBP.i, align 8
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_43a40e

block_.L_43a40e:                                  ; preds = %block_.L_43a3fd, %block_43a407
  %248 = phi i64 [ %.pre110, %block_43a407 ], [ %246, %block_.L_43a3fd ]
  %249 = phi i64 [ %.pre109, %block_43a407 ], [ %220, %block_.L_43a3fd ]
  %250 = add i64 %249, -40
  %251 = add i64 %248, 4
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i1531, align 8
  %254 = add i64 %249, -8
  %255 = add i64 %248, 8
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, 36
  store i64 %259, i64* %RCX.i1519, align 8
  %260 = lshr i64 %259, 63
  %261 = add i64 %259, %253
  store i64 %261, i64* %RAX.i1531, align 8
  %262 = icmp ult i64 %261, %253
  %263 = icmp ult i64 %261, %259
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %14, align 1
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %21, align 1
  %272 = xor i64 %259, %253
  %273 = xor i64 %272, %261
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %26, align 1
  %277 = icmp eq i64 %261, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %29, align 1
  %279 = lshr i64 %261, 63
  %280 = trunc i64 %279 to i8
  store i8 %280, i8* %32, align 1
  %281 = lshr i64 %253, 63
  %282 = xor i64 %279, %281
  %283 = xor i64 %279, %260
  %284 = add nuw nsw i64 %282, %283
  %285 = icmp eq i64 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %38, align 1
  %287 = add i64 %261, 4
  %288 = add i64 %248, 18
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RDX.i1522, align 8
  %292 = add i64 %248, 22
  store i64 %292, i64* %3, align 8
  %293 = load i64, i64* %252, align 8
  store i64 %293, i64* %RAX.i1531, align 8
  %294 = add i64 %248, 26
  store i64 %294, i64* %3, align 8
  %295 = load i32, i32* %256, align 4
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %296, 36
  store i64 %297, i64* %RCX.i1519, align 8
  %298 = lshr i64 %297, 63
  %299 = add i64 %297, %293
  store i64 %299, i64* %RAX.i1531, align 8
  %300 = icmp ult i64 %299, %293
  %301 = icmp ult i64 %299, %297
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %21, align 1
  %310 = xor i64 %297, %293
  %311 = xor i64 %310, %299
  %312 = lshr i64 %311, 4
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %26, align 1
  %315 = icmp eq i64 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %29, align 1
  %317 = lshr i64 %299, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %32, align 1
  %319 = lshr i64 %293, 63
  %320 = xor i64 %317, %319
  %321 = xor i64 %317, %298
  %322 = add nuw nsw i64 %320, %321
  %323 = icmp eq i64 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %38, align 1
  %325 = add i64 %299, 8
  %326 = add i64 %248, 36
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = sub i32 %290, %328
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RDX.i1522, align 8
  %331 = lshr i32 %329, 31
  %332 = add i32 %329, -7
  %333 = icmp ult i32 %329, 7
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %14, align 1
  %335 = and i32 %332, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %21, align 1
  %340 = xor i32 %332, %329
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %26, align 1
  %344 = icmp eq i32 %332, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %29, align 1
  %346 = lshr i32 %332, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %32, align 1
  %348 = xor i32 %346, %331
  %349 = add nuw nsw i32 %348, %331
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %38, align 1
  %352 = icmp ne i8 %347, 0
  %353 = xor i1 %352, %350
  %354 = or i1 %344, %353
  %.v165 = select i1 %354, i64 57, i64 45
  %355 = add i64 %248, %.v165
  store i64 %355, i64* %3, align 8
  %356 = load i64, i64* %RBP.i, align 8
  br i1 %354, label %block_.L_43a447, label %block_43a43b

block_43a43b:                                     ; preds = %block_.L_43a40e
  %357 = add i64 %356, -4
  %358 = add i64 %355, 7
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  store i32 0, i32* %359, align 4
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 3006
  store i64 %361, i64* %3, align 8
  br label %block_.L_43b000

block_.L_43a447:                                  ; preds = %block_.L_43a40e
  %362 = add i64 %356, -40
  %363 = add i64 %355, 4
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RAX.i1531, align 8
  %366 = add i64 %356, -8
  %367 = add i64 %355, 8
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 36
  store i64 %371, i64* %RCX.i1519, align 8
  %372 = lshr i64 %371, 63
  %373 = add i64 %371, %365
  store i64 %373, i64* %RAX.i1531, align 8
  %374 = icmp ult i64 %373, %365
  %375 = icmp ult i64 %373, %371
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %14, align 1
  %378 = trunc i64 %373 to i32
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %21, align 1
  %384 = xor i64 %371, %365
  %385 = xor i64 %384, %373
  %386 = lshr i64 %385, 4
  %387 = trunc i64 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %26, align 1
  %389 = icmp eq i64 %373, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %29, align 1
  %391 = lshr i64 %373, 63
  %392 = trunc i64 %391 to i8
  store i8 %392, i8* %32, align 1
  %393 = lshr i64 %365, 63
  %394 = xor i64 %391, %393
  %395 = xor i64 %391, %372
  %396 = add nuw nsw i64 %394, %395
  %397 = icmp eq i64 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %38, align 1
  %399 = add i64 %373, 8
  %400 = add i64 %355, 19
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = add i32 %402, -20
  %404 = icmp ult i32 %402, 20
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = and i32 %403, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i32 %402, 16
  %412 = xor i32 %411, %403
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %26, align 1
  %416 = icmp eq i32 %403, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %29, align 1
  %418 = lshr i32 %403, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %32, align 1
  %420 = lshr i32 %402, 31
  %421 = xor i32 %418, %420
  %422 = add nuw nsw i32 %421, %420
  %423 = icmp eq i32 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %38, align 1
  %425 = icmp ne i8 %419, 0
  %426 = xor i1 %425, %423
  %427 = or i1 %416, %426
  %.v166 = select i1 %427, i64 37, i64 25
  %428 = add i64 %355, %.v166
  store i64 %428, i64* %3, align 8
  %429 = load i64, i64* %RBP.i, align 8
  br i1 %427, label %block_.L_43a46c, label %block_43a460

block_43a460:                                     ; preds = %block_.L_43a447
  %430 = add i64 %429, -4
  %431 = add i64 %428, 7
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  store i32 0, i32* %432, align 4
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 2969
  store i64 %434, i64* %3, align 8
  br label %block_.L_43b000

block_.L_43a46c:                                  ; preds = %block_.L_43a447
  %435 = add i64 %429, -60
  %436 = add i64 %428, 7
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  store i32 0, i32* %437, align 4
  %EAX.i1385 = bitcast %union.anon* %39 to i32*
  %SIL.i1323 = bitcast %union.anon* %49 to i8*
  %DL.i1288 = bitcast %union.anon* %56 to i8*
  %CL.i1255 = bitcast %union.anon* %63 to i8*
  %RDI.i1219 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %ECX.i1237 = bitcast %union.anon* %63 to i32*
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_43a473

block_.L_43a473:                                  ; preds = %block_.L_43a638, %block_.L_43a46c
  %438 = phi i64 [ %.pre111, %block_.L_43a46c ], [ %1243, %block_.L_43a638 ]
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -60
  %441 = add i64 %438, 3
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX.i1531, align 8
  %445 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %446 = sub i32 %443, %445
  %447 = icmp ult i32 %443, %445
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %14, align 1
  %449 = and i32 %446, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %21, align 1
  %454 = xor i32 %445, %443
  %455 = xor i32 %454, %446
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %26, align 1
  %459 = icmp eq i32 %446, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %29, align 1
  %461 = lshr i32 %446, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %32, align 1
  %463 = lshr i32 %443, 31
  %464 = lshr i32 %445, 31
  %465 = xor i32 %464, %463
  %466 = xor i32 %461, %463
  %467 = add nuw nsw i32 %466, %465
  %468 = icmp eq i32 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %38, align 1
  %470 = icmp ne i8 %462, 0
  %471 = xor i1 %470, %468
  %.v167 = select i1 %471, i64 16, i64 472
  %472 = add i64 %438, %.v167
  store i64 %472, i64* %3, align 8
  br i1 %471, label %block_43a483, label %block_.L_43a64b

block_43a483:                                     ; preds = %block_.L_43a473
  %473 = add i64 %439, -64
  %474 = add i64 %472, 7
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  store i32 0, i32* %475, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_43a48a

block_.L_43a48a:                                  ; preds = %block_.L_43a625, %block_43a483
  %476 = phi i64 [ %.pre144, %block_43a483 ], [ %1214, %block_.L_43a625 ]
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -64
  %479 = add i64 %476, 3
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX.i1531, align 8
  %483 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %484 = sub i32 %481, %483
  %485 = icmp ult i32 %481, %483
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %14, align 1
  %487 = and i32 %484, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %21, align 1
  %492 = xor i32 %483, %481
  %493 = xor i32 %492, %484
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %26, align 1
  %497 = icmp eq i32 %484, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %29, align 1
  %499 = lshr i32 %484, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %32, align 1
  %501 = lshr i32 %481, 31
  %502 = lshr i32 %483, 31
  %503 = xor i32 %502, %501
  %504 = xor i32 %499, %501
  %505 = add nuw nsw i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %38, align 1
  %508 = icmp ne i8 %500, 0
  %509 = xor i1 %508, %506
  %.v = select i1 %509, i64 16, i64 430
  %510 = add i64 %476, %.v
  store i64 %510, i64* %3, align 8
  %511 = add i64 %477, -60
  br i1 %509, label %block_43a49a, label %block_.L_43a638

block_43a49a:                                     ; preds = %block_.L_43a48a
  %512 = add i64 %510, 4
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = mul i32 %514, 20
  %516 = add i32 %515, 21
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RAX.i1531, align 8
  %518 = icmp ugt i32 %515, -22
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %14, align 1
  %520 = and i32 %516, 253
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %21, align 1
  %525 = xor i32 %515, 16
  %526 = xor i32 %525, %516
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %530 = lshr i32 %516, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %32, align 1
  %532 = lshr i32 %515, 31
  %533 = xor i32 %530, %532
  %534 = add nuw nsw i32 %533, %530
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %38, align 1
  %537 = add i64 %510, 10
  store i64 %537, i64* %3, align 8
  %538 = load i32, i32* %480, align 4
  %539 = add i32 %538, %516
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RAX.i1531, align 8
  %541 = icmp ult i32 %539, %516
  %542 = icmp ult i32 %539, %538
  %543 = or i1 %541, %542
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %14, align 1
  %545 = and i32 %539, 255
  %546 = tail call i32 @llvm.ctpop.i32(i32 %545)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  store i8 %549, i8* %21, align 1
  %550 = xor i32 %538, %516
  %551 = xor i32 %550, %539
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  store i8 %554, i8* %26, align 1
  %555 = icmp eq i32 %539, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %29, align 1
  %557 = lshr i32 %539, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %32, align 1
  %559 = lshr i32 %538, 31
  %560 = xor i32 %557, %530
  %561 = xor i32 %557, %559
  %562 = add nuw nsw i32 %560, %561
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %38, align 1
  %565 = add i64 %477, -356
  %566 = add i64 %510, 16
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  store i32 %539, i32* %567, align 4
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -40
  %570 = load i64, i64* %3, align 8
  %571 = add i64 %570, 4
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %569 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RCX.i1519, align 8
  %574 = add i64 %568, -356
  %575 = add i64 %570, 11
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = mul nsw i64 %578, 36
  store i64 %579, i64* %RDX.i1522, align 8
  %580 = lshr i64 %579, 63
  %581 = add i64 %579, %573
  store i64 %581, i64* %RCX.i1519, align 8
  %582 = icmp ult i64 %581, %573
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
  %592 = xor i64 %579, %573
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
  %601 = lshr i64 %573, 63
  %602 = xor i64 %599, %601
  %603 = xor i64 %599, %580
  %604 = add nuw nsw i64 %602, %603
  %605 = icmp eq i64 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %38, align 1
  %607 = add i64 %581, 12
  %608 = add i64 %570, 21
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i1531, align 8
  %612 = add i64 %568, -8
  %613 = add i64 %570, 24
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = sub i32 %610, %615
  %617 = icmp ult i32 %610, %615
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = and i32 %616, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %21, align 1
  %624 = xor i32 %615, %610
  %625 = xor i32 %624, %616
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %26, align 1
  %629 = icmp eq i32 %616, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %29, align 1
  %631 = lshr i32 %616, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %32, align 1
  %633 = lshr i32 %610, 31
  %634 = lshr i32 %615, 31
  %635 = xor i32 %634, %633
  %636 = xor i32 %631, %633
  %637 = add nuw nsw i32 %636, %635
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %38, align 1
  %.v217 = select i1 %629, i64 30, i64 379
  %640 = add i64 %570, %.v217
  store i64 %640, i64* %3, align 8
  br i1 %629, label %block_43a4c8, label %block_.L_43a625

block_43a4c8:                                     ; preds = %block_43a49a
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -356
  %643 = add i64 %640, 6
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX.i1531, align 8
  %647 = add i64 %641, -72
  %648 = add i64 %640, 10
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  store i64 %651, i64* %RCX.i1519, align 8
  %652 = shl nsw i64 %651, 2
  %653 = add i64 %641, -160
  %654 = add i64 %653, %652
  %655 = add i64 %640, 17
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i32*
  store i32 %645, i32* %656, align 4
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -40
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, 4
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %658 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RCX.i1519, align 8
  %663 = add i64 %657, -356
  %664 = add i64 %659, 11
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = sext i32 %666 to i64
  %668 = mul nsw i64 %667, 36
  store i64 %668, i64* %RDX.i1522, align 8
  %669 = lshr i64 %668, 63
  %670 = add i64 %668, %662
  store i64 %670, i64* %RCX.i1519, align 8
  %671 = icmp ult i64 %670, %662
  %672 = icmp ult i64 %670, %668
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = trunc i64 %670 to i32
  %676 = and i32 %675, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %21, align 1
  %681 = xor i64 %668, %662
  %682 = xor i64 %681, %670
  %683 = lshr i64 %682, 4
  %684 = trunc i64 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %26, align 1
  %686 = icmp eq i64 %670, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %29, align 1
  %688 = lshr i64 %670, 63
  %689 = trunc i64 %688 to i8
  store i8 %689, i8* %32, align 1
  %690 = lshr i64 %662, 63
  %691 = xor i64 %688, %690
  %692 = xor i64 %688, %669
  %693 = add nuw nsw i64 %691, %692
  %694 = icmp eq i64 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = add i64 %670, 28
  %697 = add i64 %659, 22
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i8*
  %699 = load i8, i8* %698, align 1
  store i8 %699, i8* %SIL.i1323, align 1
  %700 = add i64 %657, -72
  %701 = add i64 %659, 26
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i1519, align 8
  %705 = add nsw i64 %704, -192
  %706 = add i64 %705, %657
  %707 = add i64 %659, 34
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i8*
  store i8 %699, i8* %708, align 1
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -72
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 4
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %710 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RCX.i1519, align 8
  %716 = add nsw i64 %715, -192
  %717 = add i64 %716, %709
  %718 = add i64 %711, 12
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i8*
  %720 = load i8, i8* %719, align 1
  store i8 0, i8* %14, align 1
  %721 = zext i8 %720 to i32
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %726 = icmp eq i8 %720, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %29, align 1
  %728 = lshr i8 %720, 7
  store i8 %728, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v218 = select i1 %726, i64 27, i64 18
  %729 = add i64 %711, %.v218
  store i64 %729, i64* %3, align 8
  br i1 %726, label %block_.L_43a516, label %block_43a50d

block_43a50d:                                     ; preds = %block_43a4c8
  %730 = add i64 %709, -76
  %731 = add i64 %729, 3
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = add i32 %733, 1
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i1531, align 8
  %736 = icmp eq i32 %733, -1
  %737 = icmp eq i32 %734, 0
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %14, align 1
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %21, align 1
  %745 = xor i32 %734, %733
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %26, align 1
  %749 = zext i1 %737 to i8
  store i8 %749, i8* %29, align 1
  %750 = lshr i32 %734, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %32, align 1
  %752 = lshr i32 %733, 31
  %753 = xor i32 %750, %752
  %754 = add nuw nsw i32 %753, %750
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %38, align 1
  %757 = add i64 %729, 9
  store i64 %757, i64* %3, align 8
  store i32 %734, i32* %732, align 4
  %.pre145 = load i64, i64* %RBP.i, align 8
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_43a516

block_.L_43a516:                                  ; preds = %block_43a50d, %block_43a4c8
  %758 = phi i64 [ %.pre146, %block_43a50d ], [ %729, %block_43a4c8 ]
  %759 = phi i64 [ %.pre145, %block_43a50d ], [ %709, %block_43a4c8 ]
  %760 = add i64 %759, -40
  %761 = add i64 %758, 4
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RAX.i1531, align 8
  %764 = add i64 %759, -356
  %765 = add i64 %758, 11
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = sext i32 %767 to i64
  %769 = mul nsw i64 %768, 36
  store i64 %769, i64* %RCX.i1519, align 8
  %770 = lshr i64 %769, 63
  %771 = add i64 %769, %763
  store i64 %771, i64* %RAX.i1531, align 8
  %772 = icmp ult i64 %771, %763
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
  %782 = xor i64 %769, %763
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
  %791 = lshr i64 %763, 63
  %792 = xor i64 %789, %791
  %793 = xor i64 %789, %770
  %794 = add nuw nsw i64 %792, %793
  %795 = icmp eq i64 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %38, align 1
  %797 = add i64 %771, 30
  %798 = add i64 %758, 21
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i8*
  %800 = load i8, i8* %799, align 1
  store i8 %800, i8* %DL.i1288, align 1
  %801 = add i64 %759, -72
  %802 = add i64 %758, 25
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = sext i32 %804 to i64
  store i64 %805, i64* %RAX.i1531, align 8
  %806 = add nsw i64 %805, -256
  %807 = add i64 %806, %759
  %808 = add i64 %758, 32
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i8*
  store i8 %800, i8* %809, align 1
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -72
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 4
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sext i32 %815 to i64
  store i64 %816, i64* %RAX.i1531, align 8
  %817 = add nsw i64 %816, -224
  %818 = add i64 %817, %810
  %819 = add i64 %812, 12
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i8*
  store i8 0, i8* %820, align 1
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -60
  %823 = load i64, i64* %3, align 8
  %824 = add i64 %823, 4
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %822 to i32*
  %826 = load i32, i32* %825, align 4
  store i8 0, i8* %14, align 1
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %832 = icmp eq i32 %826, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %826, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v219 = select i1 %832, i64 31, i64 10
  %836 = add i64 %823, %.v219
  store i64 %836, i64* %3, align 8
  br i1 %832, label %block_.L_43a561, label %block_43a54c

block_43a54c:                                     ; preds = %block_.L_43a516
  %837 = add i64 %836, 3
  store i64 %837, i64* %3, align 8
  %838 = load i32, i32* %825, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX.i1531, align 8
  %840 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %841 = add i32 %840, -1
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RCX.i1519, align 8
  %843 = lshr i32 %841, 31
  %844 = sub i32 %838, %841
  %845 = icmp ult i32 %838, %841
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %14, align 1
  %847 = and i32 %844, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %21, align 1
  %852 = xor i32 %841, %838
  %853 = xor i32 %852, %844
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %26, align 1
  %857 = icmp eq i32 %844, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %29, align 1
  %859 = lshr i32 %844, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %32, align 1
  %861 = lshr i32 %838, 31
  %862 = xor i32 %843, %861
  %863 = xor i32 %859, %861
  %864 = add nuw nsw i32 %863, %862
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %38, align 1
  %.v220 = select i1 %857, i64 21, i64 42
  %867 = add i64 %836, %.v220
  store i64 %867, i64* %3, align 8
  br i1 %857, label %block_.L_43a561, label %block_.L_43a576

block_.L_43a561:                                  ; preds = %block_43a54c, %block_.L_43a516
  %868 = phi i64 [ %867, %block_43a54c ], [ %836, %block_.L_43a516 ]
  %869 = add i64 %821, -72
  %870 = add i64 %868, 4
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = sext i32 %872 to i64
  store i64 %873, i64* %RAX.i1531, align 8
  %874 = add nsw i64 %873, -224
  %875 = add i64 %874, %821
  %876 = add i64 %868, 11
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i8*
  %878 = load i8, i8* %877, align 1
  %879 = add i8 %878, 1
  store i8 %879, i8* %CL.i1255, align 1
  %880 = icmp eq i8 %878, -1
  %881 = icmp eq i8 %879, 0
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %14, align 1
  %884 = zext i8 %879 to i32
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %21, align 1
  %889 = xor i8 %879, %878
  %890 = lshr i8 %889, 4
  %891 = and i8 %890, 1
  store i8 %891, i8* %26, align 1
  %892 = zext i1 %881 to i8
  store i8 %892, i8* %29, align 1
  %893 = lshr i8 %879, 7
  store i8 %893, i8* %32, align 1
  %894 = lshr i8 %878, 7
  %895 = xor i8 %893, %894
  %896 = add nuw nsw i8 %895, %893
  %897 = icmp eq i8 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %38, align 1
  %899 = add i64 %821, -224
  %900 = add i64 %899, %873
  %901 = add i64 %868, 21
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i8*
  store i8 %879, i8* %902, align 1
  %.pre147 = load i64, i64* %RBP.i, align 8
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_43a576

block_.L_43a576:                                  ; preds = %block_43a54c, %block_.L_43a561
  %903 = phi i64 [ %.pre148, %block_.L_43a561 ], [ %867, %block_43a54c ]
  %904 = phi i64 [ %.pre147, %block_.L_43a561 ], [ %821, %block_43a54c ]
  %905 = add i64 %904, -64
  %906 = add i64 %903, 4
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  store i8 0, i8* %14, align 1
  %909 = and i32 %908, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %914 = icmp eq i32 %908, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %29, align 1
  %916 = lshr i32 %908, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v221 = select i1 %914, i64 31, i64 10
  %918 = add i64 %903, %.v221
  store i64 %918, i64* %3, align 8
  br i1 %914, label %block_.L_43a595, label %block_43a580

block_43a580:                                     ; preds = %block_.L_43a576
  %919 = add i64 %918, 3
  store i64 %919, i64* %3, align 8
  %920 = load i32, i32* %907, align 4
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RAX.i1531, align 8
  %922 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %923 = add i32 %922, -1
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %RCX.i1519, align 8
  %925 = lshr i32 %923, 31
  %926 = sub i32 %920, %923
  %927 = icmp ult i32 %920, %923
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %14, align 1
  %929 = and i32 %926, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %21, align 1
  %934 = xor i32 %923, %920
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
  %943 = lshr i32 %920, 31
  %944 = xor i32 %925, %943
  %945 = xor i32 %941, %943
  %946 = add nuw nsw i32 %945, %944
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %38, align 1
  %.v222 = select i1 %939, i64 21, i64 42
  %949 = add i64 %918, %.v222
  store i64 %949, i64* %3, align 8
  br i1 %939, label %block_.L_43a595, label %block_.L_43a5aa

block_.L_43a595:                                  ; preds = %block_43a580, %block_.L_43a576
  %950 = phi i64 [ %949, %block_43a580 ], [ %918, %block_.L_43a576 ]
  %951 = add i64 %904, -72
  %952 = add i64 %950, 4
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = sext i32 %954 to i64
  store i64 %955, i64* %RAX.i1531, align 8
  %956 = add nsw i64 %955, -224
  %957 = add i64 %956, %904
  %958 = add i64 %950, 11
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i8*
  %960 = load i8, i8* %959, align 1
  %961 = add i8 %960, 1
  store i8 %961, i8* %CL.i1255, align 1
  %962 = icmp eq i8 %960, -1
  %963 = icmp eq i8 %961, 0
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %14, align 1
  %966 = zext i8 %961 to i32
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  %971 = xor i8 %961, %960
  %972 = lshr i8 %971, 4
  %973 = and i8 %972, 1
  store i8 %973, i8* %26, align 1
  %974 = zext i1 %963 to i8
  store i8 %974, i8* %29, align 1
  %975 = lshr i8 %961, 7
  store i8 %975, i8* %32, align 1
  %976 = lshr i8 %960, 7
  %977 = xor i8 %975, %976
  %978 = add nuw nsw i8 %977, %975
  %979 = icmp eq i8 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %38, align 1
  %981 = add i64 %904, -224
  %982 = add i64 %981, %955
  %983 = add i64 %950, 21
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i8*
  store i8 %961, i8* %984, align 1
  %.pre149 = load i64, i64* %RBP.i, align 8
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_43a5aa

block_.L_43a5aa:                                  ; preds = %block_43a580, %block_.L_43a595
  %985 = phi i64 [ %.pre150, %block_.L_43a595 ], [ %949, %block_43a580 ]
  %986 = phi i64 [ %.pre149, %block_.L_43a595 ], [ %904, %block_43a580 ]
  %987 = add i64 %986, -48
  %988 = add i64 %985, 4
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RDI.i1219, align 8
  %991 = add i64 %986, -356
  %992 = add i64 %985, 10
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RSI.i1525, align 8
  %996 = add i64 %985, 2694
  %997 = add i64 %985, 15
  %998 = load i64, i64* %6, align 8
  %999 = add i64 %998, -8
  %1000 = inttoptr i64 %999 to i64*
  store i64 %997, i64* %1000, align 8
  store i64 %999, i64* %6, align 8
  store i64 %996, i64* %3, align 8
  %call2_43a5b4 = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %996, %struct.Memory* %MEMORY.1)
  %1001 = load i32, i32* %EAX.i1385, align 4
  %1002 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1003 = and i32 %1001, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1008 = icmp eq i32 %1001, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %29, align 1
  %1010 = lshr i32 %1001, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v223 = select i1 %1008, i64 99, i64 9
  %1012 = add i64 %1002, %.v223
  store i64 %1012, i64* %3, align 8
  br i1 %1008, label %block_.L_43a61c, label %block_43a5c2

block_43a5c2:                                     ; preds = %block_.L_43a5aa
  %1013 = load i64, i64* %RBP.i, align 8
  %1014 = add i64 %1013, -72
  %1015 = add i64 %1012, 4
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = sext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i1531, align 8
  %1019 = add nsw i64 %1018, -256
  %1020 = add i64 %1019, %1013
  %1021 = add i64 %1012, 11
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i8*
  %1023 = load i8, i8* %1022, align 1
  %1024 = add i8 %1023, 1
  store i8 %1024, i8* %CL.i1255, align 1
  %1025 = icmp eq i8 %1023, -1
  %1026 = icmp eq i8 %1024, 0
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = zext i8 %1024 to i32
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i8 %1024, %1023
  %1035 = lshr i8 %1034, 4
  %1036 = and i8 %1035, 1
  store i8 %1036, i8* %26, align 1
  %1037 = zext i1 %1026 to i8
  store i8 %1037, i8* %29, align 1
  %1038 = lshr i8 %1024, 7
  store i8 %1038, i8* %32, align 1
  %1039 = lshr i8 %1023, 7
  %1040 = xor i8 %1038, %1039
  %1041 = add nuw nsw i8 %1040, %1038
  %1042 = icmp eq i8 %1041, 2
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %38, align 1
  %1044 = add i64 %1013, -256
  %1045 = add i64 %1044, %1018
  %1046 = add i64 %1012, 21
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i8*
  store i8 %1024, i8* %1047, align 1
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -72
  %1050 = load i64, i64* %3, align 8
  %1051 = add i64 %1050, 3
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1049 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = add i32 %1053, 1
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RDX.i1522, align 8
  %1056 = icmp eq i32 %1053, -1
  %1057 = icmp eq i32 %1054, 0
  %1058 = or i1 %1056, %1057
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %14, align 1
  %1060 = and i32 %1054, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %21, align 1
  %1065 = xor i32 %1054, %1053
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %26, align 1
  %1069 = zext i1 %1057 to i8
  store i8 %1069, i8* %29, align 1
  %1070 = lshr i32 %1054, 31
  %1071 = trunc i32 %1070 to i8
  store i8 %1071, i8* %32, align 1
  %1072 = lshr i32 %1053, 31
  %1073 = xor i32 %1070, %1072
  %1074 = add nuw nsw i32 %1073, %1070
  %1075 = icmp eq i32 %1074, 2
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %38, align 1
  %1077 = add i64 %1050, 9
  store i64 %1077, i64* %3, align 8
  store i32 %1054, i32* %1052, align 4
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -72
  %1080 = load i64, i64* %3, align 8
  %1081 = add i64 %1080, 4
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1079 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = sext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i1531, align 8
  %1085 = shl nsw i64 %1084, 2
  %1086 = add i64 %1078, -160
  %1087 = add i64 %1086, %1085
  %1088 = add i64 %1080, 15
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  store i32 0, i32* %1089, align 4
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -72
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RAX.i1531, align 8
  %1097 = add nsw i64 %1096, -192
  %1098 = add i64 %1097, %1090
  %1099 = add i64 %1092, 12
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i8*
  store i8 1, i8* %1100, align 1
  %1101 = load i64, i64* %RBP.i, align 8
  %1102 = add i64 %1101, -76
  %1103 = load i64, i64* %3, align 8
  %1104 = add i64 %1103, 3
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = add i32 %1106, 1
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RDX.i1522, align 8
  %1109 = icmp eq i32 %1106, -1
  %1110 = icmp eq i32 %1107, 0
  %1111 = or i1 %1109, %1110
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = and i32 %1107, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %21, align 1
  %1118 = xor i32 %1107, %1106
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %26, align 1
  %1122 = zext i1 %1110 to i8
  store i8 %1122, i8* %29, align 1
  %1123 = lshr i32 %1107, 31
  %1124 = trunc i32 %1123 to i8
  store i8 %1124, i8* %32, align 1
  %1125 = lshr i32 %1106, 31
  %1126 = xor i32 %1123, %1125
  %1127 = add nuw nsw i32 %1126, %1123
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %38, align 1
  %1130 = add i64 %1103, 9
  store i64 %1130, i64* %3, align 8
  store i32 %1107, i32* %1105, align 4
  %1131 = load i64, i64* %RBP.i, align 8
  %1132 = add i64 %1131, -72
  %1133 = load i64, i64* %3, align 8
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i1531, align 8
  %1138 = add nsw i64 %1137, -224
  %1139 = add i64 %1138, %1131
  %1140 = add i64 %1133, 12
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i8*
  store i8 0, i8* %1141, align 1
  %1142 = load i64, i64* %RBP.i, align 8
  %1143 = add i64 %1142, -72
  %1144 = load i64, i64* %3, align 8
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = sext i32 %1147 to i64
  store i64 %1148, i64* %RAX.i1531, align 8
  %1149 = add nsw i64 %1148, -256
  %1150 = add i64 %1149, %1142
  %1151 = add i64 %1144, 12
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i8*
  store i8 1, i8* %1152, align 1
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_43a61c

block_.L_43a61c:                                  ; preds = %block_43a5c2, %block_.L_43a5aa
  %1153 = phi i64 [ %.pre151, %block_43a5c2 ], [ %1012, %block_.L_43a5aa ]
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -72
  %1156 = add i64 %1153, 3
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = add i32 %1158, 1
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RAX.i1531, align 8
  %1161 = icmp eq i32 %1158, -1
  %1162 = icmp eq i32 %1159, 0
  %1163 = or i1 %1161, %1162
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %14, align 1
  %1165 = and i32 %1159, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %21, align 1
  %1170 = xor i32 %1159, %1158
  %1171 = lshr i32 %1170, 4
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %26, align 1
  %1174 = zext i1 %1162 to i8
  store i8 %1174, i8* %29, align 1
  %1175 = lshr i32 %1159, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %32, align 1
  %1177 = lshr i32 %1158, 31
  %1178 = xor i32 %1175, %1177
  %1179 = add nuw nsw i32 %1178, %1175
  %1180 = icmp eq i32 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %38, align 1
  %1182 = add i64 %1153, 9
  store i64 %1182, i64* %3, align 8
  store i32 %1159, i32* %1157, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_43a625

block_.L_43a625:                                  ; preds = %block_43a49a, %block_.L_43a61c
  %1183 = phi i64 [ %.pre152, %block_.L_43a61c ], [ %640, %block_43a49a ]
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -64
  %1186 = add i64 %1183, 8
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = add i32 %1188, 1
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i1531, align 8
  %1191 = icmp eq i32 %1188, -1
  %1192 = icmp eq i32 %1189, 0
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %14, align 1
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = xor i32 %1189, %1188
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %26, align 1
  %1204 = zext i1 %1192 to i8
  store i8 %1204, i8* %29, align 1
  %1205 = lshr i32 %1189, 31
  %1206 = trunc i32 %1205 to i8
  store i8 %1206, i8* %32, align 1
  %1207 = lshr i32 %1188, 31
  %1208 = xor i32 %1205, %1207
  %1209 = add nuw nsw i32 %1208, %1205
  %1210 = icmp eq i32 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %38, align 1
  %1212 = add i64 %1183, 14
  store i64 %1212, i64* %3, align 8
  store i32 %1189, i32* %1187, align 4
  %1213 = load i64, i64* %3, align 8
  %1214 = add i64 %1213, -425
  store i64 %1214, i64* %3, align 8
  br label %block_.L_43a48a

block_.L_43a638:                                  ; preds = %block_.L_43a48a
  %1215 = add i64 %510, 8
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %511 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = add i32 %1217, 1
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i1531, align 8
  %1220 = icmp eq i32 %1217, -1
  %1221 = icmp eq i32 %1218, 0
  %1222 = or i1 %1220, %1221
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %14, align 1
  %1224 = and i32 %1218, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  %1229 = xor i32 %1218, %1217
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %26, align 1
  %1233 = zext i1 %1221 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1218, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  %1236 = lshr i32 %1217, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1234
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %38, align 1
  %1241 = add i64 %510, 14
  store i64 %1241, i64* %3, align 8
  store i32 %1218, i32* %1216, align 4
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, -467
  store i64 %1243, i64* %3, align 8
  br label %block_.L_43a473

block_.L_43a64b:                                  ; preds = %block_.L_43a473
  %1244 = add i64 %439, -260
  %1245 = add i64 %472, 10
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  store i32 0, i32* %1246, align 4
  %ESI.i1022 = bitcast %union.anon* %49 to i32*
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_43a655

block_.L_43a655:                                  ; preds = %block_.L_43afe5, %block_.L_43a64b
  %1247 = phi i64 [ %.pre112, %block_.L_43a64b ], [ %4187, %block_.L_43afe5 ]
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %1248 = load i64, i64* %RBP.i, align 8
  %1249 = add i64 %1248, -260
  %1250 = add i64 %1247, 17
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = sext i32 %1252 to i64
  %1254 = mul nsw i64 %1253, 40
  store i64 %1254, i64* %RCX.i1519, align 8
  %1255 = lshr i64 %1254, 63
  %1256 = add i64 %1254, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %1256, i64* %RAX.i1531, align 8
  %1257 = icmp ult i64 %1256, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1258 = icmp ult i64 %1256, %1254
  %1259 = or i1 %1257, %1258
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %14, align 1
  %1261 = trunc i64 %1256 to i32
  %1262 = and i32 %1261, 248
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %21, align 1
  %1267 = xor i64 %1254, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1268 = xor i64 %1267, %1256
  %1269 = lshr i64 %1268, 4
  %1270 = trunc i64 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %26, align 1
  %1272 = icmp eq i64 %1256, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i64 %1256, 63
  %1275 = trunc i64 %1274 to i8
  store i8 %1275, i8* %32, align 1
  %1276 = xor i64 %1274, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %1277 = xor i64 %1274, %1255
  %1278 = add nuw nsw i64 %1276, %1277
  %1279 = icmp eq i64 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %1281 = inttoptr i64 %1256 to i64*
  %1282 = add i64 %1247, 28
  store i64 %1282, i64* %3, align 8
  %1283 = load i64, i64* %1281, align 8
  store i8 0, i8* %14, align 1
  %1284 = trunc i64 %1283 to i32
  %1285 = and i32 %1284, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1290 = icmp eq i64 %1283, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %29, align 1
  %1292 = lshr i64 %1283, 63
  %1293 = trunc i64 %1292 to i8
  store i8 %1293, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v168 = select i1 %1290, i64 2468, i64 34
  %1294 = add i64 %1247, %.v168
  store i64 %1294, i64* %3, align 8
  br i1 %1290, label %block_.L_43aff9, label %block_43a677

block_43a677:                                     ; preds = %block_.L_43a655
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %1295 = add i64 %1294, 17
  store i64 %1295, i64* %3, align 8
  %1296 = load i32, i32* %1251, align 4
  %1297 = sext i32 %1296 to i64
  %1298 = mul nsw i64 %1297, 40
  store i64 %1298, i64* %RCX.i1519, align 8
  %1299 = lshr i64 %1298, 63
  %1300 = add i64 %1298, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %1300, i64* %RAX.i1531, align 8
  %1301 = icmp ult i64 %1300, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1302 = icmp ult i64 %1300, %1298
  %1303 = or i1 %1301, %1302
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %14, align 1
  %1305 = trunc i64 %1300 to i32
  %1306 = and i32 %1305, 248
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i64 %1298, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1312 = xor i64 %1311, %1300
  %1313 = lshr i64 %1312, 4
  %1314 = trunc i64 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %26, align 1
  %1316 = icmp eq i64 %1300, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i64 %1300, 63
  %1319 = trunc i64 %1318 to i8
  store i8 %1319, i8* %32, align 1
  %1320 = xor i64 %1318, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %1321 = xor i64 %1318, %1299
  %1322 = add nuw nsw i64 %1320, %1321
  %1323 = icmp eq i64 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %38, align 1
  %1325 = add i64 %1298, add (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 12)
  %1326 = add i64 %1294, 27
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RDX.i1522, align 8
  %1330 = add i64 %1248, -72
  %1331 = add i64 %1294, 30
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = sub i32 %1328, %1333
  %1335 = icmp ult i32 %1328, %1333
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %14, align 1
  %1337 = and i32 %1334, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %21, align 1
  %1342 = xor i32 %1333, %1328
  %1343 = xor i32 %1342, %1334
  %1344 = lshr i32 %1343, 4
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %26, align 1
  %1347 = icmp eq i32 %1334, 0
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %29, align 1
  %1349 = lshr i32 %1334, 31
  %1350 = trunc i32 %1349 to i8
  store i8 %1350, i8* %32, align 1
  %1351 = lshr i32 %1328, 31
  %1352 = lshr i32 %1333, 31
  %1353 = xor i32 %1352, %1351
  %1354 = xor i32 %1349, %1351
  %1355 = add nuw nsw i32 %1354, %1353
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %38, align 1
  %.v169 = select i1 %1347, i64 36, i64 72
  %1358 = add i64 %1294, %.v169
  store i64 %1358, i64* %3, align 8
  br i1 %1347, label %block_43a69b, label %block_.L_43a6bf

block_43a69b:                                     ; preds = %block_43a677
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %1359 = load i64, i64* %RBP.i, align 8
  %1360 = add i64 %1359, -260
  %1361 = add i64 %1358, 17
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = mul nsw i64 %1364, 40
  store i64 %1365, i64* %RCX.i1519, align 8
  %1366 = lshr i64 %1365, 63
  %1367 = add i64 %1365, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %1367, i64* %RAX.i1531, align 8
  %1368 = icmp ult i64 %1367, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1369 = icmp ult i64 %1367, %1365
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %14, align 1
  %1372 = trunc i64 %1367 to i32
  %1373 = and i32 %1372, 248
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %21, align 1
  %1378 = xor i64 %1365, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1379 = xor i64 %1378, %1367
  %1380 = lshr i64 %1379, 4
  %1381 = trunc i64 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %26, align 1
  %1383 = icmp eq i64 %1367, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %29, align 1
  %1385 = lshr i64 %1367, 63
  %1386 = trunc i64 %1385 to i8
  store i8 %1386, i8* %32, align 1
  %1387 = xor i64 %1385, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %1388 = xor i64 %1385, %1366
  %1389 = add nuw nsw i64 %1387, %1388
  %1390 = icmp eq i64 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %38, align 1
  %1392 = add i64 %1365, add (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 16)
  %1393 = add i64 %1358, 27
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 8
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RDX.i1522, align 8
  %1397 = add i64 %1359, -76
  %1398 = add i64 %1358, 30
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = sub i32 %1395, %1400
  %1402 = icmp ult i32 %1395, %1400
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %14, align 1
  %1404 = and i32 %1401, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %21, align 1
  %1409 = xor i32 %1400, %1395
  %1410 = xor i32 %1409, %1401
  %1411 = lshr i32 %1410, 4
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  store i8 %1413, i8* %26, align 1
  %1414 = icmp eq i32 %1401, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %29, align 1
  %1416 = lshr i32 %1401, 31
  %1417 = trunc i32 %1416 to i8
  store i8 %1417, i8* %32, align 1
  %1418 = lshr i32 %1395, 31
  %1419 = lshr i32 %1400, 31
  %1420 = xor i32 %1419, %1418
  %1421 = xor i32 %1416, %1418
  %1422 = add nuw nsw i32 %1421, %1420
  %1423 = icmp eq i32 %1422, 2
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %38, align 1
  %.v170 = select i1 %1414, i64 41, i64 36
  %1425 = add i64 %1358, %.v170
  store i64 %1425, i64* %3, align 8
  br i1 %1414, label %block_.L_43a6c4, label %block_.L_43a6bf

block_.L_43a6bf:                                  ; preds = %block_43a677, %block_43a69b
  %1426 = phi i64 [ %1425, %block_43a69b ], [ %1358, %block_43a677 ]
  %1427 = add i64 %1426, 2342
  %.pre142 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43afe5

block_.L_43a6c4:                                  ; preds = %block_43a69b
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -72
  %1430 = add i64 %1425, 3
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RDI.i1219, align 8
  %1434 = add i64 %1425, 2460
  %1435 = add i64 %1425, 8
  %1436 = load i64, i64* %6, align 8
  %1437 = add i64 %1436, -8
  %1438 = inttoptr i64 %1437 to i64*
  store i64 %1435, i64* %1438, align 8
  store i64 %1437, i64* %6, align 8
  store i64 %1434, i64* %3, align 8
  %call2_43a6c7 = tail call %struct.Memory* @sub_43b060.reset_map(%struct.State* nonnull %0, i64 %1434, %struct.Memory* %MEMORY.1)
  %1439 = load i64, i64* %RBP.i, align 8
  %1440 = add i64 %1439, -352
  %1441 = load i64, i64* %3, align 8
  store i64 %1440, i64* %RDI.i1219, align 8
  %1442 = add i64 %1439, -360
  %1443 = add i64 %1441, 17
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i32*
  store i32 0, i32* %1444, align 4
  %1445 = load i64, i64* %3, align 8
  %1446 = add i64 %1445, 2499
  %1447 = add i64 %1445, 5
  %1448 = load i64, i64* %6, align 8
  %1449 = add i64 %1448, -8
  %1450 = inttoptr i64 %1449 to i64*
  store i64 %1447, i64* %1450, align 8
  store i64 %1449, i64* %6, align 8
  store i64 %1446, i64* %3, align 8
  %call2_43a6dd = tail call %struct.Memory* @sub_43b0a0.first_map(%struct.State* nonnull %0, i64 %1446, %struct.Memory* %MEMORY.1)
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_43a6e2

block_.L_43a6e2:                                  ; preds = %block_.L_43aa92, %block_.L_43a6c4
  %1451 = phi i64 [ %.pre113, %block_.L_43a6c4 ], [ %2588, %block_.L_43aa92 ]
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -260
  %1454 = add i64 %1451, 17
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = sext i32 %1456 to i64
  %1458 = mul nsw i64 %1457, 40
  store i64 %1458, i64* %RCX.i1519, align 8
  %1459 = lshr i64 %1458, 63
  %1460 = add i64 %1458, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %1460, i64* %RAX.i1531, align 8
  %1461 = icmp ult i64 %1460, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1462 = icmp ult i64 %1460, %1458
  %1463 = or i1 %1461, %1462
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %14, align 1
  %1465 = trunc i64 %1460 to i32
  %1466 = and i32 %1465, 248
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i64 %1458, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %1472 = xor i64 %1471, %1460
  %1473 = lshr i64 %1472, 4
  %1474 = trunc i64 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %26, align 1
  %1476 = icmp eq i64 %1460, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %29, align 1
  %1478 = lshr i64 %1460, 63
  %1479 = trunc i64 %1478 to i8
  store i8 %1479, i8* %32, align 1
  %1480 = xor i64 %1478, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %1481 = xor i64 %1478, %1459
  %1482 = add nuw nsw i64 %1480, %1481
  %1483 = icmp eq i64 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %38, align 1
  %1485 = inttoptr i64 %1460 to i64*
  %1486 = add i64 %1451, 27
  store i64 %1486, i64* %3, align 8
  %1487 = load i64, i64* %1485, align 8
  store i64 %1487, i64* %RAX.i1531, align 8
  %1488 = add i64 %1452, -360
  %1489 = add i64 %1451, 34
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = sext i32 %1491 to i64
  %1493 = mul nsw i64 %1492, 20
  store i64 %1493, i64* %RCX.i1519, align 8
  %1494 = lshr i64 %1493, 63
  %1495 = add i64 %1493, %1487
  store i64 %1495, i64* %RAX.i1531, align 8
  %1496 = icmp ult i64 %1495, %1487
  %1497 = icmp ult i64 %1495, %1493
  %1498 = or i1 %1496, %1497
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %14, align 1
  %1500 = trunc i64 %1495 to i32
  %1501 = and i32 %1500, 255
  %1502 = tail call i32 @llvm.ctpop.i32(i32 %1501)
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = xor i8 %1504, 1
  store i8 %1505, i8* %21, align 1
  %1506 = xor i64 %1493, %1487
  %1507 = xor i64 %1506, %1495
  %1508 = lshr i64 %1507, 4
  %1509 = trunc i64 %1508 to i8
  %1510 = and i8 %1509, 1
  store i8 %1510, i8* %26, align 1
  %1511 = icmp eq i64 %1495, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %29, align 1
  %1513 = lshr i64 %1495, 63
  %1514 = trunc i64 %1513 to i8
  store i8 %1514, i8* %32, align 1
  %1515 = lshr i64 %1487, 63
  %1516 = xor i64 %1513, %1515
  %1517 = xor i64 %1513, %1494
  %1518 = add nuw nsw i64 %1516, %1517
  %1519 = icmp eq i64 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %38, align 1
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -368
  %1523 = add i64 %1451, 48
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i64*
  store i64 %1495, i64* %1524, align 8
  %1525 = load i64, i64* %RBP.i, align 8
  %1526 = add i64 %1525, -360
  %1527 = load i64, i64* %3, align 8
  %1528 = add i64 %1527, 7
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1526 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = sext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i1531, align 8
  %1532 = shl nsw i64 %1531, 2
  %1533 = add i64 %1525, -352
  %1534 = add i64 %1533, %1532
  %1535 = add i64 %1527, 14
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RDX.i1522, align 8
  %1539 = add i64 %1525, -372
  %1540 = add i64 %1527, 20
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  store i32 %1537, i32* %1541, align 4
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -376
  %1544 = load i64, i64* %3, align 8
  %1545 = add i64 %1544, 10
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1543 to i32*
  store i32 1, i32* %1546, align 4
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -372
  %1549 = load i64, i64* %3, align 8
  %1550 = add i64 %1549, 7
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1548 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sext i32 %1552 to i64
  store i64 %1553, i64* %RAX.i1531, align 8
  %1554 = add nsw i64 %1553, -256
  %1555 = add i64 %1554, %1547
  %1556 = add i64 %1549, 15
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i8*
  %1558 = load i8, i8* %1557, align 1
  %1559 = sext i8 %1558 to i64
  %1560 = and i64 %1559, 4294967295
  store i64 %1560, i64* %RDX.i1522, align 8
  %1561 = add i64 %1547, -368
  %1562 = add i64 %1549, 22
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i64*
  %1564 = load i64, i64* %1563, align 8
  store i64 %1564, i64* %RAX.i1531, align 8
  %1565 = add i64 %1564, 3
  %1566 = add i64 %1549, 26
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i8*
  %1568 = load i8, i8* %1567, align 1
  %1569 = sext i8 %1568 to i64
  %1570 = and i64 %1569, 4294967295
  store i64 %1570, i64* %RSI.i1525, align 8
  %1571 = sext i8 %1558 to i32
  %1572 = sext i8 %1568 to i32
  %1573 = sub nsw i32 %1571, %1572
  %1574 = icmp ult i8 %1558, %1568
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %14, align 1
  %1576 = and i32 %1573, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  %1581 = xor i8 %1568, %1558
  %1582 = zext i8 %1581 to i32
  %1583 = xor i32 %1582, %1573
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  store i8 %1586, i8* %26, align 1
  %1587 = icmp eq i32 %1573, 0
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %29, align 1
  %1589 = lshr i32 %1573, 31
  %1590 = trunc i32 %1589 to i8
  store i8 %1590, i8* %32, align 1
  %1591 = lshr i32 %1571, 31
  %1592 = lshr i32 %1572, 31
  %1593 = xor i32 %1592, %1591
  %1594 = xor i32 %1589, %1591
  %1595 = add nuw nsw i32 %1594, %1593
  %1596 = icmp eq i32 %1595, 2
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %38, align 1
  %.v171 = select i1 %1587, i64 34, i64 101
  %1598 = add i64 %1549, %.v171
  store i64 %1598, i64* %3, align 8
  br i1 %1587, label %block_43a752, label %block_.L_43a795

block_43a752:                                     ; preds = %block_.L_43a6e2
  %1599 = add i64 %1598, 7
  store i64 %1599, i64* %3, align 8
  %1600 = load i32, i32* %1551, align 4
  %1601 = sext i32 %1600 to i64
  store i64 %1601, i64* %RAX.i1531, align 8
  %1602 = add nsw i64 %1601, -192
  %1603 = add i64 %1602, %1547
  %1604 = add i64 %1598, 15
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i8*
  %1606 = load i8, i8* %1605, align 1
  %1607 = sext i8 %1606 to i64
  %1608 = and i64 %1607, 4294967295
  store i64 %1608, i64* %RCX.i1519, align 8
  %1609 = add i64 %1598, 22
  store i64 %1609, i64* %3, align 8
  %1610 = load i64, i64* %1563, align 8
  store i64 %1610, i64* %RAX.i1531, align 8
  %1611 = add i64 %1598, 25
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i8*
  %1613 = load i8, i8* %1612, align 1
  %1614 = sext i8 %1613 to i64
  %1615 = and i64 %1614, 4294967295
  store i64 %1615, i64* %RDX.i1522, align 8
  %1616 = sext i8 %1606 to i32
  %1617 = sext i8 %1613 to i32
  %1618 = sub nsw i32 %1616, %1617
  %1619 = icmp ult i8 %1606, %1613
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %14, align 1
  %1621 = and i32 %1618, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %21, align 1
  %1626 = xor i8 %1613, %1606
  %1627 = zext i8 %1626 to i32
  %1628 = xor i32 %1627, %1618
  %1629 = lshr i32 %1628, 4
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  store i8 %1631, i8* %26, align 1
  %1632 = icmp eq i32 %1618, 0
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %29, align 1
  %1634 = lshr i32 %1618, 31
  %1635 = trunc i32 %1634 to i8
  store i8 %1635, i8* %32, align 1
  %1636 = lshr i32 %1616, 31
  %1637 = lshr i32 %1617, 31
  %1638 = xor i32 %1637, %1636
  %1639 = xor i32 %1634, %1636
  %1640 = add nuw nsw i32 %1639, %1638
  %1641 = icmp eq i32 %1640, 2
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %38, align 1
  %.v215 = select i1 %1632, i64 33, i64 67
  %1643 = add i64 %1598, %.v215
  store i64 %1643, i64* %3, align 8
  br i1 %1632, label %block_43a773, label %block_.L_43a795

block_43a773:                                     ; preds = %block_43a752
  %1644 = add i64 %1643, 7
  store i64 %1644, i64* %3, align 8
  %1645 = load i32, i32* %1551, align 4
  %1646 = sext i32 %1645 to i64
  store i64 %1646, i64* %RAX.i1531, align 8
  %1647 = add nsw i64 %1646, -224
  %1648 = add i64 %1647, %1547
  %1649 = add i64 %1643, 15
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i8*
  %1651 = load i8, i8* %1650, align 1
  %1652 = sext i8 %1651 to i64
  %1653 = and i64 %1652, 4294967295
  store i64 %1653, i64* %RCX.i1519, align 8
  %1654 = add i64 %1643, 22
  store i64 %1654, i64* %3, align 8
  %1655 = load i64, i64* %1563, align 8
  store i64 %1655, i64* %RAX.i1531, align 8
  %1656 = add i64 %1655, 1
  %1657 = add i64 %1643, 26
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i8*
  %1659 = load i8, i8* %1658, align 1
  %1660 = sext i8 %1659 to i64
  %1661 = and i64 %1660, 4294967295
  store i64 %1661, i64* %RDX.i1522, align 8
  %1662 = sext i8 %1651 to i32
  %1663 = sext i8 %1659 to i32
  %1664 = sub nsw i32 %1662, %1663
  %1665 = icmp ult i8 %1651, %1659
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %14, align 1
  %1667 = and i32 %1664, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667)
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %21, align 1
  %1672 = xor i8 %1659, %1651
  %1673 = zext i8 %1672 to i32
  %1674 = xor i32 %1673, %1664
  %1675 = lshr i32 %1674, 4
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  store i8 %1677, i8* %26, align 1
  %1678 = icmp eq i32 %1664, 0
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %29, align 1
  %1680 = lshr i32 %1664, 31
  %1681 = trunc i32 %1680 to i8
  store i8 %1681, i8* %32, align 1
  %1682 = lshr i32 %1662, 31
  %1683 = lshr i32 %1663, 31
  %1684 = xor i32 %1683, %1682
  %1685 = xor i32 %1680, %1682
  %1686 = add nuw nsw i32 %1685, %1684
  %1687 = icmp eq i32 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %38, align 1
  %1689 = icmp ne i8 %1681, 0
  %1690 = xor i1 %1689, %1687
  %.v216 = select i1 %1690, i64 34, i64 44
  %1691 = add i64 %1643, %.v216
  store i64 %1691, i64* %3, align 8
  br i1 %1690, label %block_.L_43a795, label %block_.L_43a79f

block_.L_43a795:                                  ; preds = %block_43a752, %block_.L_43a6e2, %block_43a773
  %1692 = phi i64 [ %1691, %block_43a773 ], [ %1643, %block_43a752 ], [ %1598, %block_.L_43a6e2 ]
  %1693 = add i64 %1547, -376
  %1694 = add i64 %1692, 10
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  store i32 0, i32* %1695, align 4
  %.pre114 = load i64, i64* %RBP.i, align 8
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_43a79f

block_.L_43a79f:                                  ; preds = %block_43a773, %block_.L_43a795
  %1696 = phi i64 [ %1691, %block_43a773 ], [ %.pre115, %block_.L_43a795 ]
  %1697 = phi i64 [ %1547, %block_43a773 ], [ %.pre114, %block_.L_43a795 ]
  %1698 = add i64 %1697, -376
  %1699 = add i64 %1696, 7
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  store i8 0, i8* %14, align 1
  %1702 = and i32 %1701, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1707 = icmp eq i32 %1701, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %29, align 1
  %1709 = lshr i32 %1701, 31
  %1710 = trunc i32 %1709 to i8
  store i8 %1710, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v172 = select i1 %1707, i64 158, i64 13
  %1711 = add i64 %1696, %.v172
  store i64 %1711, i64* %3, align 8
  br i1 %1707, label %block_.L_43a83d, label %block_43a7ac

block_43a7ac:                                     ; preds = %block_.L_43a79f
  %1712 = add i64 %1697, -372
  %1713 = add i64 %1711, 7
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sext i32 %1715 to i64
  store i64 %1716, i64* %RAX.i1531, align 8
  %1717 = shl nsw i64 %1716, 2
  %1718 = add i64 %1697, -160
  %1719 = add i64 %1718, %1717
  %1720 = add i64 %1711, 15
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = sext i32 %1722 to i64
  store i64 %1723, i64* %RAX.i1531, align 8
  %1724 = add nsw i64 %1723, 12099168
  %1725 = add i64 %1711, 23
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i8*
  %1727 = load i8, i8* %1726, align 1
  %1728 = zext i8 %1727 to i64
  store i64 %1728, i64* %RCX.i1519, align 8
  %1729 = zext i8 %1727 to i32
  %1730 = add nsw i32 %1729, -1
  %1731 = icmp eq i8 %1727, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %14, align 1
  %1733 = and i32 %1730, 255
  %1734 = tail call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %21, align 1
  %1738 = xor i32 %1730, %1729
  %1739 = lshr i32 %1738, 4
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  store i8 %1741, i8* %26, align 1
  %1742 = icmp eq i32 %1730, 0
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %29, align 1
  %1744 = lshr i32 %1730, 31
  %1745 = trunc i32 %1744 to i8
  store i8 %1745, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v173 = select i1 %1742, i64 64, i64 32
  %1746 = add i64 %1711, %.v173
  store i64 %1746, i64* %3, align 8
  br i1 %1742, label %block_.L_43a7ec, label %block_43a7cc

block_43a7cc:                                     ; preds = %block_43a7ac
  %1747 = add i64 %1746, 7
  store i64 %1747, i64* %3, align 8
  %1748 = load i32, i32* %1714, align 4
  %1749 = sext i32 %1748 to i64
  store i64 %1749, i64* %RAX.i1531, align 8
  %1750 = shl nsw i64 %1749, 2
  %1751 = add i64 %1718, %1750
  %1752 = add i64 %1746, 15
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = sext i32 %1754 to i64
  store i64 %1755, i64* %RAX.i1531, align 8
  %1756 = add nsw i64 %1755, 12099168
  %1757 = add i64 %1746, 23
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i8*
  %1759 = load i8, i8* %1758, align 1
  %1760 = zext i8 %1759 to i64
  store i64 %1760, i64* %RCX.i1519, align 8
  %1761 = zext i8 %1759 to i32
  %1762 = add nsw i32 %1761, -2
  %1763 = icmp ult i8 %1759, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = and i32 %1762, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  %1770 = xor i32 %1762, %1761
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %26, align 1
  %1774 = icmp eq i32 %1762, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %29, align 1
  %1776 = lshr i32 %1762, 31
  %1777 = trunc i32 %1776 to i8
  store i8 %1777, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v174 = select i1 %1774, i64 32, i64 70
  %1778 = add i64 %1746, %.v174
  store i64 %1778, i64* %3, align 8
  br i1 %1774, label %block_.L_43a7ec, label %block_.L_43a812

block_.L_43a7ec:                                  ; preds = %block_43a7cc, %block_43a7ac
  %1779 = phi i64 [ %1778, %block_43a7cc ], [ %1746, %block_43a7ac ]
  %1780 = add i64 %1697, -368
  %1781 = add i64 %1779, 7
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i64*
  %1783 = load i64, i64* %1782, align 8
  store i64 %1783, i64* %RAX.i1531, align 8
  %1784 = add i64 %1783, 2
  %1785 = add i64 %1779, 11
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i8*
  %1787 = load i8, i8* %1786, align 1
  %1788 = and i8 %1787, 2
  %1789 = zext i8 %1788 to i64
  %1790 = zext i8 %1788 to i32
  store i64 %1789, i64* %RCX.i1519, align 8
  store i8 0, i8* %14, align 1
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit156 = lshr exact i8 %1788, 1
  %1794 = xor i8 %.lobit156, 1
  store i8 %1794, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1795 = icmp eq i8 %1794, 0
  %.v214 = select i1 %1795, i64 33, i64 23
  %1796 = add i64 %1779, %.v214
  store i64 %1796, i64* %3, align 8
  br i1 %1795, label %block_.L_43a80d, label %block_43a803

block_43a803:                                     ; preds = %block_.L_43a7ec
  %1797 = add i64 %1796, 10
  store i64 %1797, i64* %3, align 8
  store i32 0, i32* %1700, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_43a80d

block_.L_43a80d:                                  ; preds = %block_43a803, %block_.L_43a7ec
  %1798 = phi i64 [ %.pre117, %block_43a803 ], [ %1796, %block_.L_43a7ec ]
  %1799 = add i64 %1798, 43
  br label %block_.L_43a838

block_.L_43a812:                                  ; preds = %block_43a7cc
  %1800 = add i64 %1697, -368
  %1801 = add i64 %1778, 7
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RAX.i1531, align 8
  %1804 = add i64 %1803, 2
  %1805 = add i64 %1778, 11
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i8*
  %1807 = load i8, i8* %1806, align 1
  %1808 = and i8 %1807, 1
  %1809 = zext i8 %1808 to i64
  %1810 = zext i8 %1808 to i32
  store i64 %1809, i64* %RCX.i1519, align 8
  store i8 0, i8* %14, align 1
  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810)
  %1812 = trunc i32 %1811 to i8
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1814 = xor i8 %1808, 1
  store i8 %1814, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1815 = icmp eq i8 %1814, 0
  %.v175 = select i1 %1815, i64 33, i64 23
  %1816 = add i64 %1778, %.v175
  store i64 %1816, i64* %3, align 8
  br i1 %1815, label %block_.L_43a833, label %block_43a829

block_43a829:                                     ; preds = %block_.L_43a812
  %1817 = add i64 %1816, 10
  store i64 %1817, i64* %3, align 8
  store i32 0, i32* %1700, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_43a833

block_.L_43a833:                                  ; preds = %block_43a829, %block_.L_43a812
  %1818 = phi i64 [ %.pre116, %block_43a829 ], [ %1816, %block_.L_43a812 ]
  %1819 = add i64 %1818, 5
  store i64 %1819, i64* %3, align 8
  br label %block_.L_43a838

block_.L_43a838:                                  ; preds = %block_.L_43a833, %block_.L_43a80d
  %storemerge64 = phi i64 [ %1799, %block_.L_43a80d ], [ %1819, %block_.L_43a833 ]
  %1820 = add i64 %storemerge64, 5
  store i64 %1820, i64* %3, align 8
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43a83d

block_.L_43a83d:                                  ; preds = %block_.L_43a838, %block_.L_43a79f
  %1821 = phi i64 [ %1820, %block_.L_43a838 ], [ %1711, %block_.L_43a79f ]
  %1822 = phi i64 [ %.pre118, %block_.L_43a838 ], [ %1697, %block_.L_43a79f ]
  %1823 = add i64 %1822, -376
  %1824 = add i64 %1821, 7
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  %1826 = load i32, i32* %1825, align 4
  store i8 0, i8* %14, align 1
  %1827 = and i32 %1826, 255
  %1828 = tail call i32 @llvm.ctpop.i32(i32 %1827)
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  %1831 = xor i8 %1830, 1
  store i8 %1831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1832 = icmp eq i32 %1826, 0
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %29, align 1
  %1834 = lshr i32 %1826, 31
  %1835 = trunc i32 %1834 to i8
  store i8 %1835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v176 = select i1 %1832, i64 482, i64 13
  %1836 = add i64 %1821, %.v176
  store i64 %1836, i64* %3, align 8
  br i1 %1832, label %block_.L_43aa1f, label %block_43a84a

block_43a84a:                                     ; preds = %block_.L_43a83d
  %1837 = add i64 %1822, -380
  %1838 = add i64 %1836, 10
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  store i32 0, i32* %1839, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_43a854

block_.L_43a854:                                  ; preds = %block_.L_43aa01, %block_43a84a
  %1840 = phi i64 [ %2444, %block_.L_43aa01 ], [ %.pre119, %block_43a84a ]
  %1841 = load i64, i64* %RBP.i, align 8
  %1842 = add i64 %1841, -380
  %1843 = add i64 %1840, 6
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RAX.i1531, align 8
  %1847 = add i64 %1841, -368
  %1848 = add i64 %1840, 13
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i64*
  %1850 = load i64, i64* %1849, align 8
  store i64 %1850, i64* %RCX.i1519, align 8
  %1851 = add i64 %1850, 3
  %1852 = add i64 %1840, 17
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i8*
  %1854 = load i8, i8* %1853, align 1
  %1855 = sext i8 %1854 to i64
  %1856 = and i64 %1855, 4294967295
  store i64 %1856, i64* %RDX.i1522, align 8
  %1857 = sext i8 %1854 to i32
  %1858 = sub i32 %1845, %1857
  %1859 = icmp ult i32 %1845, %1857
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %14, align 1
  %1861 = and i32 %1858, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %21, align 1
  %1866 = xor i32 %1857, %1845
  %1867 = xor i32 %1866, %1858
  %1868 = lshr i32 %1867, 4
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  store i8 %1870, i8* %26, align 1
  %1871 = icmp eq i32 %1858, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %29, align 1
  %1873 = lshr i32 %1858, 31
  %1874 = trunc i32 %1873 to i8
  store i8 %1874, i8* %32, align 1
  %1875 = lshr i32 %1845, 31
  %1876 = lshr i32 %1857, 31
  %1877 = xor i32 %1876, %1875
  %1878 = xor i32 %1873, %1875
  %1879 = add nuw nsw i32 %1878, %1877
  %1880 = icmp eq i32 %1879, 2
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %38, align 1
  %1882 = icmp ne i8 %1874, 0
  %1883 = xor i1 %1882, %1880
  %.v177 = select i1 %1883, i64 25, i64 454
  %1884 = add i64 %1840, %.v177
  store i64 %1884, i64* %3, align 8
  br i1 %1883, label %block_43a86d, label %block_.L_43aa1a.loopexit

block_43a86d:                                     ; preds = %block_.L_43a854
  %1885 = add i64 %1884, 7
  store i64 %1885, i64* %3, align 8
  %1886 = load i64, i64* %1849, align 8
  store i64 %1886, i64* %RAX.i1531, align 8
  %1887 = add i64 %1884, 14
  store i64 %1887, i64* %3, align 8
  %1888 = load i32, i32* %1844, align 4
  %1889 = sext i32 %1888 to i64
  store i64 %1889, i64* %RCX.i1519, align 8
  %1890 = shl nsw i64 %1889, 2
  %1891 = add i64 %1886, 4
  %1892 = add i64 %1891, %1890
  %1893 = add i64 %1884, 18
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = zext i32 %1895 to i64
  store i64 %1896, i64* %RDX.i1522, align 8
  %1897 = add i64 %1841, -360
  %1898 = add i64 %1884, 24
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = sub i32 %1895, %1900
  %1902 = icmp ult i32 %1895, %1900
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %14, align 1
  %1904 = and i32 %1901, 255
  %1905 = tail call i32 @llvm.ctpop.i32(i32 %1904)
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = xor i8 %1907, 1
  store i8 %1908, i8* %21, align 1
  %1909 = xor i32 %1900, %1895
  %1910 = xor i32 %1909, %1901
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  store i8 %1913, i8* %26, align 1
  %1914 = icmp eq i32 %1901, 0
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %29, align 1
  %1916 = lshr i32 %1901, 31
  %1917 = trunc i32 %1916 to i8
  store i8 %1917, i8* %32, align 1
  %1918 = lshr i32 %1895, 31
  %1919 = lshr i32 %1900, 31
  %1920 = xor i32 %1919, %1918
  %1921 = xor i32 %1916, %1918
  %1922 = add nuw nsw i32 %1921, %1920
  %1923 = icmp eq i32 %1922, 2
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %38, align 1
  %1925 = icmp ne i8 %1917, 0
  %1926 = xor i1 %1925, %1923
  %.v203 = select i1 %1926, i64 30, i64 404
  %1927 = add i64 %1884, %.v203
  store i64 %1927, i64* %3, align 8
  br i1 %1926, label %block_43a88b, label %block_.L_43aa01

block_43a88b:                                     ; preds = %block_43a86d
  %1928 = add i64 %1927, 7
  store i64 %1928, i64* %3, align 8
  %1929 = load i64, i64* %1849, align 8
  store i64 %1929, i64* %RAX.i1531, align 8
  %1930 = add i64 %1927, 14
  store i64 %1930, i64* %3, align 8
  %1931 = load i32, i32* %1844, align 4
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i1519, align 8
  %1933 = shl nsw i64 %1932, 2
  %1934 = add i64 %1929, 4
  %1935 = add i64 %1934, %1933
  %1936 = add i64 %1927, 19
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  %1938 = load i32, i32* %1937, align 4
  %1939 = sext i32 %1938 to i64
  store i64 %1939, i64* %RAX.i1531, align 8
  %1940 = shl nsw i64 %1939, 2
  %1941 = add i64 %1841, -352
  %1942 = add i64 %1941, %1940
  %1943 = add i64 %1927, 26
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = zext i32 %1945 to i64
  store i64 %1946, i64* %RDX.i1522, align 8
  %1947 = add i64 %1841, -384
  %1948 = add i64 %1927, 32
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  store i32 %1945, i32* %1949, align 4
  %1950 = load i64, i64* %RBP.i, align 8
  %1951 = add i64 %1950, -372
  %1952 = load i64, i64* %3, align 8
  %1953 = add i64 %1952, 7
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1951 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = sext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i1531, align 8
  %1957 = shl nsw i64 %1956, 2
  %1958 = add i64 %1950, -160
  %1959 = add i64 %1958, %1957
  %1960 = add i64 %1952, 14
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RDX.i1522, align 8
  %1964 = add i64 %1950, -384
  %1965 = add i64 %1952, 21
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i32*
  %1967 = load i32, i32* %1966, align 4
  %1968 = sext i32 %1967 to i64
  store i64 %1968, i64* %RAX.i1531, align 8
  %1969 = shl nsw i64 %1968, 2
  %1970 = add i64 %1958, %1969
  %1971 = add i64 %1952, 28
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = add i32 %1973, 20
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RSI.i1525, align 8
  %1976 = lshr i32 %1974, 31
  %1977 = sub i32 %1962, %1974
  %1978 = icmp ult i32 %1962, %1974
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %14, align 1
  %1980 = and i32 %1977, 255
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  store i8 %1984, i8* %21, align 1
  %1985 = xor i32 %1974, %1962
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
  %1994 = lshr i32 %1962, 31
  %1995 = xor i32 %1976, %1994
  %1996 = xor i32 %1992, %1994
  %1997 = add nuw nsw i32 %1996, %1995
  %1998 = icmp eq i32 %1997, 2
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %38, align 1
  %.v204 = select i1 %1990, i64 337, i64 39
  %2000 = add i64 %1952, %.v204
  store i64 %2000, i64* %3, align 8
  br i1 %1990, label %block_.L_43a9fc, label %block_43a8d2

block_43a8d2:                                     ; preds = %block_43a88b
  %2001 = load i64, i64* %RBP.i, align 8
  %2002 = add i64 %2001, -372
  %2003 = add i64 %2000, 7
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = sext i32 %2005 to i64
  store i64 %2006, i64* %RAX.i1531, align 8
  %2007 = shl nsw i64 %2006, 2
  %2008 = add i64 %2001, -160
  %2009 = add i64 %2008, %2007
  %2010 = add i64 %2000, 14
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RCX.i1519, align 8
  %2014 = add i64 %2001, -384
  %2015 = add i64 %2000, 21
  store i64 %2015, i64* %3, align 8
  %2016 = inttoptr i64 %2014 to i32*
  %2017 = load i32, i32* %2016, align 4
  %2018 = sext i32 %2017 to i64
  store i64 %2018, i64* %RAX.i1531, align 8
  %2019 = shl nsw i64 %2018, 2
  %2020 = add i64 %2008, %2019
  %2021 = add i64 %2000, 28
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = add i32 %2023, -1
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RDX.i1522, align 8
  %2026 = lshr i32 %2024, 31
  %2027 = sub i32 %2012, %2024
  %2028 = icmp ult i32 %2012, %2024
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %14, align 1
  %2030 = and i32 %2027, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %21, align 1
  %2035 = xor i32 %2024, %2012
  %2036 = xor i32 %2035, %2027
  %2037 = lshr i32 %2036, 4
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %26, align 1
  %2040 = icmp eq i32 %2027, 0
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %29, align 1
  %2042 = lshr i32 %2027, 31
  %2043 = trunc i32 %2042 to i8
  store i8 %2043, i8* %32, align 1
  %2044 = lshr i32 %2012, 31
  %2045 = xor i32 %2026, %2044
  %2046 = xor i32 %2042, %2044
  %2047 = add nuw nsw i32 %2046, %2045
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %38, align 1
  %.v205 = select i1 %2040, i64 298, i64 39
  %2050 = add i64 %2000, %.v205
  store i64 %2050, i64* %3, align 8
  br i1 %2040, label %block_.L_43a9fc, label %block_43a8f9

block_43a8f9:                                     ; preds = %block_43a8d2
  %2051 = load i64, i64* %RBP.i, align 8
  %2052 = add i64 %2051, -372
  %2053 = add i64 %2050, 7
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = sext i32 %2055 to i64
  store i64 %2056, i64* %RAX.i1531, align 8
  %2057 = shl nsw i64 %2056, 2
  %2058 = add i64 %2051, -160
  %2059 = add i64 %2058, %2057
  %2060 = add i64 %2050, 14
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  %2063 = zext i32 %2062 to i64
  store i64 %2063, i64* %RCX.i1519, align 8
  %2064 = add i64 %2051, -384
  %2065 = add i64 %2050, 21
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = sext i32 %2067 to i64
  store i64 %2068, i64* %RAX.i1531, align 8
  %2069 = shl nsw i64 %2068, 2
  %2070 = add i64 %2058, %2069
  %2071 = add i64 %2050, 28
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = add i32 %2073, -20
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RDX.i1522, align 8
  %2076 = lshr i32 %2074, 31
  %2077 = sub i32 %2062, %2074
  %2078 = icmp ult i32 %2062, %2074
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %14, align 1
  %2080 = and i32 %2077, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i32 %2074, %2062
  %2086 = xor i32 %2085, %2077
  %2087 = lshr i32 %2086, 4
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  store i8 %2089, i8* %26, align 1
  %2090 = icmp eq i32 %2077, 0
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %29, align 1
  %2092 = lshr i32 %2077, 31
  %2093 = trunc i32 %2092 to i8
  store i8 %2093, i8* %32, align 1
  %2094 = lshr i32 %2062, 31
  %2095 = xor i32 %2076, %2094
  %2096 = xor i32 %2092, %2094
  %2097 = add nuw nsw i32 %2096, %2095
  %2098 = icmp eq i32 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %38, align 1
  %.v206 = select i1 %2090, i64 259, i64 39
  %2100 = add i64 %2050, %.v206
  store i64 %2100, i64* %3, align 8
  br i1 %2090, label %block_.L_43a9fc, label %block_43a920

block_43a920:                                     ; preds = %block_43a8f9
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -372
  %2103 = add i64 %2100, 7
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = sext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i1531, align 8
  %2107 = shl nsw i64 %2106, 2
  %2108 = add i64 %2101, -160
  %2109 = add i64 %2108, %2107
  %2110 = add i64 %2100, 14
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i32*
  %2112 = load i32, i32* %2111, align 4
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RCX.i1519, align 8
  %2114 = add i64 %2101, -384
  %2115 = add i64 %2100, 21
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = sext i32 %2117 to i64
  store i64 %2118, i64* %RAX.i1531, align 8
  %2119 = shl nsw i64 %2118, 2
  %2120 = add i64 %2108, %2119
  %2121 = add i64 %2100, 28
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = add i32 %2123, 1
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RDX.i1522, align 8
  %2126 = lshr i32 %2124, 31
  %2127 = sub i32 %2112, %2124
  %2128 = icmp ult i32 %2112, %2124
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %14, align 1
  %2130 = and i32 %2127, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %21, align 1
  %2135 = xor i32 %2124, %2112
  %2136 = xor i32 %2135, %2127
  %2137 = lshr i32 %2136, 4
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  store i8 %2139, i8* %26, align 1
  %2140 = icmp eq i32 %2127, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %29, align 1
  %2142 = lshr i32 %2127, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %32, align 1
  %2144 = lshr i32 %2112, 31
  %2145 = xor i32 %2126, %2144
  %2146 = xor i32 %2142, %2144
  %2147 = add nuw nsw i32 %2146, %2145
  %2148 = icmp eq i32 %2147, 2
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %38, align 1
  %.v207 = select i1 %2140, i64 220, i64 39
  %2150 = add i64 %2100, %.v207
  store i64 %2150, i64* %3, align 8
  br i1 %2140, label %block_.L_43a9fc, label %block_43a947

block_43a947:                                     ; preds = %block_43a920
  %2151 = load i64, i64* %RBP.i, align 8
  %2152 = add i64 %2151, -372
  %2153 = add i64 %2150, 6
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i32*
  %2155 = load i32, i32* %2154, align 4
  %2156 = zext i32 %2155 to i64
  store i64 %2156, i64* %RAX.i1531, align 8
  %2157 = add i64 %2151, -384
  %2158 = add i64 %2150, 12
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i32*
  %2160 = load i32, i32* %2159, align 4
  %2161 = add i32 %2160, -1
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RCX.i1519, align 8
  %2163 = lshr i32 %2161, 31
  %2164 = sub i32 %2155, %2161
  %2165 = icmp ult i32 %2155, %2161
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %14, align 1
  %2167 = and i32 %2164, 255
  %2168 = tail call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  store i8 %2171, i8* %21, align 1
  %2172 = xor i32 %2161, %2155
  %2173 = xor i32 %2172, %2164
  %2174 = lshr i32 %2173, 4
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  store i8 %2176, i8* %26, align 1
  %2177 = icmp eq i32 %2164, 0
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %29, align 1
  %2179 = lshr i32 %2164, 31
  %2180 = trunc i32 %2179 to i8
  store i8 %2180, i8* %32, align 1
  %2181 = lshr i32 %2155, 31
  %2182 = xor i32 %2163, %2181
  %2183 = xor i32 %2179, %2181
  %2184 = add nuw nsw i32 %2183, %2182
  %2185 = icmp eq i32 %2184, 2
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %38, align 1
  %.v208 = select i1 %2177, i64 23, i64 83
  %2187 = add i64 %2150, %.v208
  store i64 %2187, i64* %3, align 8
  br i1 %2177, label %block_43a95e, label %block_.L_43a99a

block_43a95e:                                     ; preds = %block_43a947
  %2188 = add i64 %2187, 7
  store i64 %2188, i64* %3, align 8
  %2189 = load i32, i32* %2154, align 4
  %2190 = sext i32 %2189 to i64
  store i64 %2190, i64* %RAX.i1531, align 8
  %2191 = shl nsw i64 %2190, 2
  %2192 = add i64 %2151, -160
  %2193 = add i64 %2192, %2191
  %2194 = add i64 %2187, 15
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  store i8 0, i8* %14, align 1
  %2197 = and i32 %2196, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2202 = icmp eq i32 %2196, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %29, align 1
  %2204 = lshr i32 %2196, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v212 = select i1 %2202, i64 60, i64 21
  %2206 = add i64 %2187, %.v212
  store i64 %2206, i64* %3, align 8
  br i1 %2202, label %block_.L_43a99a, label %block_43a973

block_43a973:                                     ; preds = %block_43a95e
  %2207 = add i64 %2151, -48
  %2208 = add i64 %2206, 4
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2207 to i64*
  %2210 = load i64, i64* %2209, align 8
  store i64 %2210, i64* %RAX.i1531, align 8
  %2211 = add i64 %2206, 11
  store i64 %2211, i64* %3, align 8
  %2212 = load i32, i32* %2154, align 4
  %2213 = sext i32 %2212 to i64
  store i64 %2213, i64* %RCX.i1519, align 8
  %2214 = shl nsw i64 %2213, 2
  %2215 = add i64 %2192, %2214
  %2216 = add i64 %2206, 19
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i32*
  %2218 = load i32, i32* %2217, align 4
  %2219 = sext i32 %2218 to i64
  %2220 = mul nsw i64 %2219, 48
  store i64 %2220, i64* %RCX.i1519, align 8
  %2221 = lshr i64 %2220, 63
  %2222 = add i64 %2220, %2210
  store i64 %2222, i64* %RAX.i1531, align 8
  %2223 = icmp ult i64 %2222, %2210
  %2224 = icmp ult i64 %2222, %2220
  %2225 = or i1 %2223, %2224
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %14, align 1
  %2227 = trunc i64 %2222 to i32
  %2228 = and i32 %2227, 255
  %2229 = tail call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  store i8 %2232, i8* %21, align 1
  %2233 = xor i64 %2220, %2210
  %2234 = xor i64 %2233, %2222
  %2235 = lshr i64 %2234, 4
  %2236 = trunc i64 %2235 to i8
  %2237 = and i8 %2236, 1
  store i8 %2237, i8* %26, align 1
  %2238 = icmp eq i64 %2222, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %29, align 1
  %2240 = lshr i64 %2222, 63
  %2241 = trunc i64 %2240 to i8
  store i8 %2241, i8* %32, align 1
  %2242 = lshr i64 %2210, 63
  %2243 = xor i64 %2240, %2242
  %2244 = xor i64 %2240, %2221
  %2245 = add nuw nsw i64 %2243, %2244
  %2246 = icmp eq i64 %2245, 2
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %38, align 1
  %2248 = add i64 %2222, 4
  %2249 = add i64 %2206, 30
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i8*
  %2251 = load i8, i8* %2250, align 1
  %2252 = sext i8 %2251 to i64
  %2253 = and i64 %2252, 4294967295
  store i64 %2253, i64* %RDX.i1522, align 8
  %2254 = sext i8 %2251 to i32
  %2255 = add nsw i32 %2254, -2
  %2256 = icmp ult i8 %2251, 2
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %14, align 1
  %2258 = and i32 %2255, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %21, align 1
  %2263 = xor i32 %2255, %2254
  %2264 = lshr i32 %2263, 4
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  store i8 %2266, i8* %26, align 1
  %2267 = icmp eq i32 %2255, 0
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %29, align 1
  %2269 = lshr i32 %2255, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %32, align 1
  %2271 = lshr i32 %2254, 31
  %2272 = xor i32 %2269, %2271
  %2273 = add nuw nsw i32 %2272, %2271
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %38, align 1
  %.v213 = select i1 %2267, i64 137, i64 39
  %2276 = add i64 %2206, %.v213
  store i64 %2276, i64* %3, align 8
  br i1 %2267, label %block_.L_43a9fc, label %block_43a973.block_.L_43a99a_crit_edge

block_43a973.block_.L_43a99a_crit_edge:           ; preds = %block_43a973
  %.pre120 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43a99a

block_.L_43a99a:                                  ; preds = %block_43a947, %block_43a973.block_.L_43a99a_crit_edge, %block_43a95e
  %2277 = phi i64 [ %2276, %block_43a973.block_.L_43a99a_crit_edge ], [ %2206, %block_43a95e ], [ %2187, %block_43a947 ]
  %2278 = phi i64 [ %.pre120, %block_43a973.block_.L_43a99a_crit_edge ], [ %2151, %block_43a95e ], [ %2151, %block_43a947 ]
  %2279 = add i64 %2278, -384
  %2280 = add i64 %2277, 6
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i32*
  %2282 = load i32, i32* %2281, align 4
  %2283 = zext i32 %2282 to i64
  store i64 %2283, i64* %RAX.i1531, align 8
  %2284 = add i64 %2278, -372
  %2285 = add i64 %2277, 12
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = add i32 %2287, -1
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RCX.i1519, align 8
  %2290 = lshr i32 %2288, 31
  %2291 = sub i32 %2282, %2288
  %2292 = icmp ult i32 %2282, %2288
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %14, align 1
  %2294 = and i32 %2291, 255
  %2295 = tail call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  store i8 %2298, i8* %21, align 1
  %2299 = xor i32 %2288, %2282
  %2300 = xor i32 %2299, %2291
  %2301 = lshr i32 %2300, 4
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  store i8 %2303, i8* %26, align 1
  %2304 = icmp eq i32 %2291, 0
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %29, align 1
  %2306 = lshr i32 %2291, 31
  %2307 = trunc i32 %2306 to i8
  store i8 %2307, i8* %32, align 1
  %2308 = lshr i32 %2282, 31
  %2309 = xor i32 %2290, %2308
  %2310 = xor i32 %2306, %2308
  %2311 = add nuw nsw i32 %2310, %2309
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %38, align 1
  %.v209 = select i1 %2304, i64 23, i64 83
  %2314 = add i64 %2277, %.v209
  store i64 %2314, i64* %3, align 8
  br i1 %2304, label %block_43a9b1, label %block_.L_43a9ed.loopexit

block_43a9b1:                                     ; preds = %block_.L_43a99a
  %2315 = add i64 %2314, 7
  store i64 %2315, i64* %3, align 8
  %2316 = load i32, i32* %2281, align 4
  %2317 = sext i32 %2316 to i64
  store i64 %2317, i64* %RAX.i1531, align 8
  %2318 = shl nsw i64 %2317, 2
  %2319 = add i64 %2278, -160
  %2320 = add i64 %2319, %2318
  %2321 = add i64 %2314, 15
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  store i8 0, i8* %14, align 1
  %2324 = and i32 %2323, 255
  %2325 = tail call i32 @llvm.ctpop.i32(i32 %2324)
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = xor i8 %2327, 1
  store i8 %2328, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2329 = icmp eq i32 %2323, 0
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %29, align 1
  %2331 = lshr i32 %2323, 31
  %2332 = trunc i32 %2331 to i8
  store i8 %2332, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v210 = select i1 %2329, i64 60, i64 21
  %2333 = add i64 %2314, %.v210
  store i64 %2333, i64* %3, align 8
  br i1 %2329, label %block_.L_43a9ed.loopexit, label %block_43a9c6

block_43a9c6:                                     ; preds = %block_43a9b1
  %2334 = add i64 %2278, -48
  %2335 = add i64 %2333, 4
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %RAX.i1531, align 8
  %2338 = add i64 %2333, 11
  store i64 %2338, i64* %3, align 8
  %2339 = load i32, i32* %2281, align 4
  %2340 = sext i32 %2339 to i64
  store i64 %2340, i64* %RCX.i1519, align 8
  %2341 = shl nsw i64 %2340, 2
  %2342 = add i64 %2319, %2341
  %2343 = add i64 %2333, 19
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = sext i32 %2345 to i64
  %2347 = mul nsw i64 %2346, 48
  store i64 %2347, i64* %RCX.i1519, align 8
  %2348 = lshr i64 %2347, 63
  %2349 = add i64 %2347, %2337
  store i64 %2349, i64* %RAX.i1531, align 8
  %2350 = icmp ult i64 %2349, %2337
  %2351 = icmp ult i64 %2349, %2347
  %2352 = or i1 %2350, %2351
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %14, align 1
  %2354 = trunc i64 %2349 to i32
  %2355 = and i32 %2354, 255
  %2356 = tail call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  store i8 %2359, i8* %21, align 1
  %2360 = xor i64 %2347, %2337
  %2361 = xor i64 %2360, %2349
  %2362 = lshr i64 %2361, 4
  %2363 = trunc i64 %2362 to i8
  %2364 = and i8 %2363, 1
  store i8 %2364, i8* %26, align 1
  %2365 = icmp eq i64 %2349, 0
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %29, align 1
  %2367 = lshr i64 %2349, 63
  %2368 = trunc i64 %2367 to i8
  store i8 %2368, i8* %32, align 1
  %2369 = lshr i64 %2337, 63
  %2370 = xor i64 %2367, %2369
  %2371 = xor i64 %2367, %2348
  %2372 = add nuw nsw i64 %2370, %2371
  %2373 = icmp eq i64 %2372, 2
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %38, align 1
  %2375 = add i64 %2349, 4
  %2376 = add i64 %2333, 30
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i8*
  %2378 = load i8, i8* %2377, align 1
  %2379 = sext i8 %2378 to i64
  %2380 = and i64 %2379, 4294967295
  store i64 %2380, i64* %RDX.i1522, align 8
  %2381 = sext i8 %2378 to i32
  %2382 = add nsw i32 %2381, -2
  %2383 = icmp ult i8 %2378, 2
  %2384 = zext i1 %2383 to i8
  store i8 %2384, i8* %14, align 1
  %2385 = and i32 %2382, 255
  %2386 = tail call i32 @llvm.ctpop.i32(i32 %2385)
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  %2389 = xor i8 %2388, 1
  store i8 %2389, i8* %21, align 1
  %2390 = xor i32 %2382, %2381
  %2391 = lshr i32 %2390, 4
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  store i8 %2393, i8* %26, align 1
  %2394 = icmp eq i32 %2382, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %29, align 1
  %2396 = lshr i32 %2382, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %32, align 1
  %2398 = lshr i32 %2381, 31
  %2399 = xor i32 %2396, %2398
  %2400 = add nuw nsw i32 %2399, %2398
  %2401 = icmp eq i32 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %38, align 1
  %.v211 = select i1 %2394, i64 54, i64 39
  %2403 = add i64 %2333, %.v211
  store i64 %2403, i64* %3, align 8
  br i1 %2394, label %block_.L_43a9fc, label %block_43a9c6.block_.L_43a9ed_crit_edge

block_43a9c6.block_.L_43a9ed_crit_edge:           ; preds = %block_43a9c6
  %.pre121 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43a9ed

block_.L_43a9ed.loopexit:                         ; preds = %block_43a9b1, %block_.L_43a99a
  %.ph = phi i64 [ %2314, %block_.L_43a99a ], [ %2333, %block_43a9b1 ]
  br label %block_.L_43a9ed

block_.L_43a9ed:                                  ; preds = %block_.L_43a9ed.loopexit, %block_43a9c6.block_.L_43a9ed_crit_edge
  %2404 = phi i64 [ %2403, %block_43a9c6.block_.L_43a9ed_crit_edge ], [ %.ph, %block_.L_43a9ed.loopexit ]
  %2405 = phi i64 [ %.pre121, %block_43a9c6.block_.L_43a9ed_crit_edge ], [ %2278, %block_.L_43a9ed.loopexit ]
  %2406 = add i64 %2405, -376
  %2407 = add i64 %2404, 10
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  store i32 0, i32* %2408, align 4
  %2409 = load i64, i64* %3, align 8
  %2410 = add i64 %2409, 35
  store i64 %2410, i64* %3, align 8
  %.pre123.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43aa1a

block_.L_43a9fc:                                  ; preds = %block_43a9c6, %block_43a973, %block_43a920, %block_43a8f9, %block_43a8d2, %block_43a88b
  %2411 = phi i64 [ %2403, %block_43a9c6 ], [ %2276, %block_43a973 ], [ %2150, %block_43a920 ], [ %2100, %block_43a8f9 ], [ %2050, %block_43a8d2 ], [ %2000, %block_43a88b ]
  %2412 = add i64 %2411, 5
  store i64 %2412, i64* %3, align 8
  %.pre122 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43aa01

block_.L_43aa01:                                  ; preds = %block_43a86d, %block_.L_43a9fc
  %2413 = phi i64 [ %1841, %block_43a86d ], [ %.pre122, %block_.L_43a9fc ]
  %2414 = phi i64 [ %1927, %block_43a86d ], [ %2412, %block_.L_43a9fc ]
  %2415 = add i64 %2413, -380
  %2416 = add i64 %2414, 11
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = add i32 %2418, 1
  %2420 = zext i32 %2419 to i64
  store i64 %2420, i64* %RAX.i1531, align 8
  %2421 = icmp eq i32 %2418, -1
  %2422 = icmp eq i32 %2419, 0
  %2423 = or i1 %2421, %2422
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %14, align 1
  %2425 = and i32 %2419, 255
  %2426 = tail call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  store i8 %2429, i8* %21, align 1
  %2430 = xor i32 %2419, %2418
  %2431 = lshr i32 %2430, 4
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  store i8 %2433, i8* %26, align 1
  %2434 = zext i1 %2422 to i8
  store i8 %2434, i8* %29, align 1
  %2435 = lshr i32 %2419, 31
  %2436 = trunc i32 %2435 to i8
  store i8 %2436, i8* %32, align 1
  %2437 = lshr i32 %2418, 31
  %2438 = xor i32 %2435, %2437
  %2439 = add nuw nsw i32 %2438, %2435
  %2440 = icmp eq i32 %2439, 2
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %38, align 1
  %2442 = add i64 %2414, 20
  store i64 %2442, i64* %3, align 8
  store i32 %2419, i32* %2417, align 4
  %2443 = load i64, i64* %3, align 8
  %2444 = add i64 %2443, -449
  store i64 %2444, i64* %3, align 8
  br label %block_.L_43a854

block_.L_43aa1a.loopexit:                         ; preds = %block_.L_43a854
  br label %block_.L_43aa1a

block_.L_43aa1a:                                  ; preds = %block_.L_43aa1a.loopexit, %block_.L_43a9ed
  %.pre123 = phi i64 [ %.pre123.pre, %block_.L_43a9ed ], [ %1841, %block_.L_43aa1a.loopexit ]
  %2445 = phi i64 [ %2410, %block_.L_43a9ed ], [ %1884, %block_.L_43aa1a.loopexit ]
  %2446 = add i64 %2445, 5
  store i64 %2446, i64* %3, align 8
  br label %block_.L_43aa1f

block_.L_43aa1f:                                  ; preds = %block_.L_43aa1a, %block_.L_43a83d
  %2447 = phi i64 [ %2446, %block_.L_43aa1a ], [ %1836, %block_.L_43a83d ]
  %2448 = phi i64 [ %.pre123, %block_.L_43aa1a ], [ %1822, %block_.L_43a83d ]
  %2449 = add i64 %2448, -376
  %2450 = add i64 %2447, 7
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i32*
  %2452 = load i32, i32* %2451, align 4
  store i8 0, i8* %14, align 1
  %2453 = and i32 %2452, 255
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2458 = icmp eq i32 %2452, 0
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %29, align 1
  %2460 = lshr i32 %2452, 31
  %2461 = trunc i32 %2460 to i8
  store i8 %2461, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v178 = select i1 %2458, i64 13, i64 51
  %2462 = add i64 %2447, %.v178
  store i64 %2462, i64* %3, align 8
  %2463 = add i64 %2448, -360
  br i1 %2458, label %block_43aa2c, label %block_.L_43aa52

block_43aa2c:                                     ; preds = %block_.L_43aa1f
  store i64 %2463, i64* %RDI.i1219, align 8
  %2464 = add i64 %2448, -352
  store i64 %2464, i64* %RSI.i1525, align 8
  %2465 = add i64 %2462, 1732
  %2466 = add i64 %2462, 19
  %2467 = load i64, i64* %6, align 8
  %2468 = add i64 %2467, -8
  %2469 = inttoptr i64 %2468 to i64*
  store i64 %2466, i64* %2469, align 8
  store i64 %2468, i64* %6, align 8
  store i64 %2465, i64* %3, align 8
  %call2_43aa3a = tail call %struct.Memory* @sub_43b0f0.next_map(%struct.State* nonnull %0, i64 %2465, %struct.Memory* %MEMORY.1)
  %2470 = load i32, i32* %EAX.i1385, align 4
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
  %.v202 = select i1 %2477, i64 9, i64 14
  %2481 = add i64 %2471, %.v202
  store i64 %2481, i64* %3, align 8
  br i1 %2477, label %block_43aa48, label %block_.L_43aa4d

block_43aa48:                                     ; preds = %block_43aa2c
  %2482 = add i64 %2481, 79
  %.pre124 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43aa97

block_.L_43aa4d:                                  ; preds = %block_43aa2c
  %2483 = add i64 %2481, 69
  store i64 %2483, i64* %3, align 8
  br label %block_.L_43aa92

block_.L_43aa52:                                  ; preds = %block_.L_43aa1f
  %2484 = add i64 %2462, 6
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2463 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = add i32 %2486, 1
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %RAX.i1531, align 8
  %2489 = icmp eq i32 %2486, -1
  %2490 = icmp eq i32 %2487, 0
  %2491 = or i1 %2489, %2490
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %14, align 1
  %2493 = and i32 %2487, 255
  %2494 = tail call i32 @llvm.ctpop.i32(i32 %2493)
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  %2497 = xor i8 %2496, 1
  store i8 %2497, i8* %21, align 1
  %2498 = xor i32 %2487, %2486
  %2499 = lshr i32 %2498, 4
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %26, align 1
  %2502 = zext i1 %2490 to i8
  store i8 %2502, i8* %29, align 1
  %2503 = lshr i32 %2487, 31
  %2504 = trunc i32 %2503 to i8
  store i8 %2504, i8* %32, align 1
  %2505 = lshr i32 %2486, 31
  %2506 = xor i32 %2503, %2505
  %2507 = add nuw nsw i32 %2506, %2503
  %2508 = icmp eq i32 %2507, 2
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %38, align 1
  %2510 = add i64 %2462, 15
  store i64 %2510, i64* %3, align 8
  store i32 %2487, i32* %2485, align 4
  %2511 = load i64, i64* %RBP.i, align 8
  %2512 = add i64 %2511, -360
  %2513 = load i64, i64* %3, align 8
  %2514 = add i64 %2513, 6
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2512 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = zext i32 %2516 to i64
  store i64 %2517, i64* %RAX.i1531, align 8
  %2518 = add i64 %2511, -72
  %2519 = add i64 %2513, 9
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = sub i32 %2516, %2521
  %2523 = icmp ult i32 %2516, %2521
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %14, align 1
  %2525 = and i32 %2522, 255
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %21, align 1
  %2530 = xor i32 %2521, %2516
  %2531 = xor i32 %2530, %2522
  %2532 = lshr i32 %2531, 4
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %26, align 1
  %2535 = icmp eq i32 %2522, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %29, align 1
  %2537 = lshr i32 %2522, 31
  %2538 = trunc i32 %2537 to i8
  store i8 %2538, i8* %32, align 1
  %2539 = lshr i32 %2516, 31
  %2540 = lshr i32 %2521, 31
  %2541 = xor i32 %2540, %2539
  %2542 = xor i32 %2537, %2539
  %2543 = add nuw nsw i32 %2542, %2541
  %2544 = icmp eq i32 %2543, 2
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %38, align 1
  %.v179 = select i1 %2535, i64 15, i64 20
  %2546 = add i64 %2513, %.v179
  store i64 %2546, i64* %3, align 8
  br i1 %2535, label %block_43aa70, label %block_.L_43aa75

block_43aa70:                                     ; preds = %block_.L_43aa52
  %2547 = add i64 %2546, 39
  %2548 = add i64 %2546, 5
  store i64 %2548, i64* %3, align 8
  br label %block_.L_43aa97

block_.L_43aa75:                                  ; preds = %block_.L_43aa52
  %2549 = add i64 %2511, -352
  store i64 %2549, i64* %RAX.i1531, align 8
  %2550 = add i64 %2546, 14
  store i64 %2550, i64* %3, align 8
  %2551 = load i32, i32* %2515, align 4
  %2552 = sext i32 %2551 to i64
  %2553 = shl nsw i64 %2552, 2
  store i64 %2553, i64* %RCX.i1519, align 8
  %2554 = add i64 %2553, %2549
  store i64 %2554, i64* %RAX.i1531, align 8
  %2555 = icmp ult i64 %2554, %2549
  %2556 = icmp ult i64 %2554, %2553
  %2557 = or i1 %2555, %2556
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %14, align 1
  %2559 = trunc i64 %2554 to i32
  %2560 = and i32 %2559, 255
  %2561 = tail call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  store i8 %2564, i8* %21, align 1
  %2565 = xor i64 %2553, %2549
  %2566 = xor i64 %2565, %2554
  %2567 = lshr i64 %2566, 4
  %2568 = trunc i64 %2567 to i8
  %2569 = and i8 %2568, 1
  store i8 %2569, i8* %26, align 1
  %2570 = icmp eq i64 %2554, 0
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %29, align 1
  %2572 = lshr i64 %2554, 63
  %2573 = trunc i64 %2572 to i8
  store i8 %2573, i8* %32, align 1
  %2574 = lshr i64 %2549, 63
  %2575 = lshr i64 %2552, 61
  %2576 = and i64 %2575, 1
  %2577 = xor i64 %2572, %2574
  %2578 = xor i64 %2572, %2576
  %2579 = add nuw nsw i64 %2577, %2578
  %2580 = icmp eq i64 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %38, align 1
  store i64 %2554, i64* %RDI.i1219, align 8
  %2582 = add i64 %2546, 1579
  %2583 = add i64 %2546, 29
  %2584 = load i64, i64* %6, align 8
  %2585 = add i64 %2584, -8
  %2586 = inttoptr i64 %2585 to i64*
  store i64 %2583, i64* %2586, align 8
  store i64 %2585, i64* %6, align 8
  store i64 %2582, i64* %3, align 8
  %call2_43aa8d = tail call %struct.Memory* @sub_43b0a0.first_map(%struct.State* nonnull %0, i64 %2582, %struct.Memory* %MEMORY.1)
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_43aa92

block_.L_43aa92:                                  ; preds = %block_.L_43aa75, %block_.L_43aa4d
  %2587 = phi i64 [ %.pre141, %block_.L_43aa75 ], [ %2483, %block_.L_43aa4d ]
  %2588 = add i64 %2587, -944
  store i64 %2588, i64* %3, align 8
  br label %block_.L_43a6e2

block_.L_43aa97:                                  ; preds = %block_43aa70, %block_43aa48
  %2589 = phi i64 [ %.pre124, %block_43aa48 ], [ %2511, %block_43aa70 ]
  %storemerge65 = phi i64 [ %2482, %block_43aa48 ], [ %2547, %block_43aa70 ]
  %2590 = add i64 %2589, -360
  %2591 = add i64 %storemerge65, 6
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to i32*
  %2593 = load i32, i32* %2592, align 4
  %2594 = zext i32 %2593 to i64
  store i64 %2594, i64* %RAX.i1531, align 8
  %2595 = add i64 %2589, -72
  %2596 = add i64 %storemerge65, 9
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to i32*
  %2598 = load i32, i32* %2597, align 4
  %2599 = sub i32 %2593, %2598
  %2600 = icmp ult i32 %2593, %2598
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %14, align 1
  %2602 = and i32 %2599, 255
  %2603 = tail call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %21, align 1
  %2607 = xor i32 %2598, %2593
  %2608 = xor i32 %2607, %2599
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %26, align 1
  %2612 = icmp eq i32 %2599, 0
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %29, align 1
  %2614 = lshr i32 %2599, 31
  %2615 = trunc i32 %2614 to i8
  store i8 %2615, i8* %32, align 1
  %2616 = lshr i32 %2593, 31
  %2617 = lshr i32 %2598, 31
  %2618 = xor i32 %2617, %2616
  %2619 = xor i32 %2614, %2616
  %2620 = add nuw nsw i32 %2619, %2618
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %38, align 1
  %.v180 = select i1 %2612, i64 15, i64 1353
  %2623 = add i64 %storemerge65, %.v180
  store i64 %2623, i64* %3, align 8
  br i1 %2612, label %block_43aaa6, label %block_.L_43afe0

block_43aaa6:                                     ; preds = %block_.L_43aa97
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %2624 = add i64 %2589, -32
  %2625 = add i64 %2623, 14
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i64*
  %2627 = load i64, i64* %2626, align 8
  store i64 %2627, i64* %RCX.i1519, align 8
  %2628 = add i64 %2589, -260
  %2629 = add i64 %2623, 21
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = sext i32 %2631 to i64
  %2633 = mul nsw i64 %2632, 40
  store i64 %2633, i64* %RDX.i1522, align 8
  %2634 = lshr i64 %2633, 63
  %2635 = add i64 %2633, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %2635, i64* %RAX.i1531, align 8
  %2636 = icmp ult i64 %2635, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %2637 = icmp ult i64 %2635, %2633
  %2638 = or i1 %2636, %2637
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %14, align 1
  %2640 = trunc i64 %2635 to i32
  %2641 = and i32 %2640, 248
  %2642 = tail call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  store i8 %2645, i8* %21, align 1
  %2646 = xor i64 %2633, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %2647 = xor i64 %2646, %2635
  %2648 = lshr i64 %2647, 4
  %2649 = trunc i64 %2648 to i8
  %2650 = and i8 %2649, 1
  store i8 %2650, i8* %26, align 1
  %2651 = icmp eq i64 %2635, 0
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %29, align 1
  %2653 = lshr i64 %2635, 63
  %2654 = trunc i64 %2653 to i8
  store i8 %2654, i8* %32, align 1
  %2655 = xor i64 %2653, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %2656 = xor i64 %2653, %2634
  %2657 = add nuw nsw i64 %2655, %2656
  %2658 = icmp eq i64 %2657, 2
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %38, align 1
  %2660 = add i64 %2633, add (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 32)
  %2661 = add i64 %2623, 31
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i32*
  %2663 = load i32, i32* %2662, align 8
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %RSI.i1525, align 8
  %2665 = inttoptr i64 %2627 to i32*
  %2666 = add i64 %2623, 33
  store i64 %2666, i64* %3, align 8
  store i32 %2663, i32* %2665, align 4
  %2667 = load i64, i64* %RBP.i, align 8
  %2668 = add i64 %2667, -56
  %2669 = load i64, i64* %3, align 8
  %2670 = add i64 %2669, 4
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2668 to i64*
  %2672 = load i64, i64* %2671, align 8
  store i64 %2672, i64* %RAX.i1531, align 8
  %2673 = add i64 %2672, 640
  %2674 = add i64 %2669, 14
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i32*
  store i32 0, i32* %2675, align 4
  %2676 = load i64, i64* %RBP.i, align 8
  %2677 = add i64 %2676, -56
  %2678 = load i64, i64* %3, align 8
  %2679 = add i64 %2678, 4
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2677 to i64*
  %2681 = load i64, i64* %2680, align 8
  store i64 %2681, i64* %RAX.i1531, align 8
  %2682 = add i64 %2681, 644
  %2683 = add i64 %2678, 14
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  store i32 0, i32* %2684, align 4
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -32
  %2687 = load i64, i64* %3, align 8
  %2688 = add i64 %2687, 4
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2686 to i64*
  %2690 = load i64, i64* %2689, align 8
  store i64 %2690, i64* %RDI.i1219, align 8
  %2691 = add i64 %2687, 1725
  %2692 = add i64 %2687, 9
  %2693 = load i64, i64* %6, align 8
  %2694 = add i64 %2693, -8
  %2695 = inttoptr i64 %2694 to i64*
  store i64 %2692, i64* %2695, align 8
  store i64 %2694, i64* %6, align 8
  store i64 %2691, i64* %3, align 8
  %call2_43aae7 = tail call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* nonnull %0, i64 %2691, %struct.Memory* %MEMORY.1)
  %2696 = load i32, i32* %EAX.i1385, align 4
  %2697 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2698 = and i32 %2696, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2703 = icmp eq i32 %2696, 0
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %29, align 1
  %2705 = lshr i32 %2696, 31
  %2706 = trunc i32 %2705 to i8
  store i8 %2706, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2707 = icmp ne i8 %2706, 0
  %2708 = or i1 %2703, %2707
  %.v181 = select i1 %2708, i64 1185, i64 9
  %2709 = add i64 %2697, %.v181
  store i64 %2709, i64* %3, align 8
  br i1 %2708, label %block_.L_43af8d, label %block_43aaf5

block_43aaf5:                                     ; preds = %block_43aaa6
  %2710 = load i64, i64* %RBP.i, align 8
  %2711 = add i64 %2710, -388
  %2712 = add i64 %2709, 10
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i32*
  store i32 0, i32* %2713, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_43aaff

block_.L_43aaff:                                  ; preds = %block_.L_43ae06, %block_43aaf5
  %2714 = phi i64 [ %.pre125, %block_43aaf5 ], [ %3747, %block_.L_43ae06 ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_43aae7, %block_43aaf5 ], [ %MEMORY.40, %block_.L_43ae06 ]
  %2715 = load i64, i64* %RBP.i, align 8
  %2716 = add i64 %2715, -388
  %2717 = add i64 %2714, 6
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i32*
  %2719 = load i32, i32* %2718, align 4
  %2720 = zext i32 %2719 to i64
  store i64 %2720, i64* %RAX.i1531, align 8
  %2721 = add i64 %2715, -72
  %2722 = add i64 %2714, 9
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = sub i32 %2719, %2724
  %2726 = icmp ult i32 %2719, %2724
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %14, align 1
  %2728 = and i32 %2725, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %21, align 1
  %2733 = xor i32 %2724, %2719
  %2734 = xor i32 %2733, %2725
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %26, align 1
  %2738 = icmp eq i32 %2725, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %29, align 1
  %2740 = lshr i32 %2725, 31
  %2741 = trunc i32 %2740 to i8
  store i8 %2741, i8* %32, align 1
  %2742 = lshr i32 %2719, 31
  %2743 = lshr i32 %2724, 31
  %2744 = xor i32 %2743, %2742
  %2745 = xor i32 %2740, %2742
  %2746 = add nuw nsw i32 %2745, %2744
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %38, align 1
  %2749 = icmp ne i8 %2741, 0
  %2750 = xor i1 %2749, %2747
  %.v182 = select i1 %2750, i64 15, i64 800
  %2751 = add i64 %2714, %.v182
  store i64 %2751, i64* %3, align 8
  br i1 %2750, label %block_43ab0e, label %block_.L_43ae1f

block_43ab0e:                                     ; preds = %block_.L_43aaff
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %2752 = add i64 %2715, -260
  %2753 = add i64 %2751, 17
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = sext i32 %2755 to i64
  %2757 = mul nsw i64 %2756, 40
  store i64 %2757, i64* %RCX.i1519, align 8
  %2758 = lshr i64 %2757, 63
  %2759 = add i64 %2757, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %2759, i64* %RAX.i1531, align 8
  %2760 = icmp ult i64 %2759, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %2761 = icmp ult i64 %2759, %2757
  %2762 = or i1 %2760, %2761
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %14, align 1
  %2764 = trunc i64 %2759 to i32
  %2765 = and i32 %2764, 248
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %21, align 1
  %2770 = xor i64 %2757, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %2771 = xor i64 %2770, %2759
  %2772 = lshr i64 %2771, 4
  %2773 = trunc i64 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %26, align 1
  %2775 = icmp eq i64 %2759, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %29, align 1
  %2777 = lshr i64 %2759, 63
  %2778 = trunc i64 %2777 to i8
  store i8 %2778, i8* %32, align 1
  %2779 = xor i64 %2777, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %2780 = xor i64 %2777, %2758
  %2781 = add nuw nsw i64 %2779, %2780
  %2782 = icmp eq i64 %2781, 2
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %38, align 1
  %2784 = inttoptr i64 %2759 to i64*
  %2785 = add i64 %2751, 27
  store i64 %2785, i64* %3, align 8
  %2786 = load i64, i64* %2784, align 8
  store i64 %2786, i64* %RAX.i1531, align 8
  %2787 = add i64 %2751, 34
  store i64 %2787, i64* %3, align 8
  %2788 = load i32, i32* %2718, align 4
  %2789 = sext i32 %2788 to i64
  %2790 = mul nsw i64 %2789, 20
  store i64 %2790, i64* %RCX.i1519, align 8
  %2791 = lshr i64 %2790, 63
  %2792 = add i64 %2790, %2786
  store i64 %2792, i64* %RAX.i1531, align 8
  %2793 = icmp ult i64 %2792, %2786
  %2794 = icmp ult i64 %2792, %2790
  %2795 = or i1 %2793, %2794
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %14, align 1
  %2797 = trunc i64 %2792 to i32
  %2798 = and i32 %2797, 255
  %2799 = tail call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  store i8 %2802, i8* %21, align 1
  %2803 = xor i64 %2790, %2786
  %2804 = xor i64 %2803, %2792
  %2805 = lshr i64 %2804, 4
  %2806 = trunc i64 %2805 to i8
  %2807 = and i8 %2806, 1
  store i8 %2807, i8* %26, align 1
  %2808 = icmp eq i64 %2792, 0
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %29, align 1
  %2810 = lshr i64 %2792, 63
  %2811 = trunc i64 %2810 to i8
  store i8 %2811, i8* %32, align 1
  %2812 = lshr i64 %2786, 63
  %2813 = xor i64 %2810, %2812
  %2814 = xor i64 %2810, %2791
  %2815 = add nuw nsw i64 %2813, %2814
  %2816 = icmp eq i64 %2815, 2
  %2817 = zext i1 %2816 to i8
  store i8 %2817, i8* %38, align 1
  %2818 = load i64, i64* %RBP.i, align 8
  %2819 = add i64 %2818, -400
  %2820 = add i64 %2751, 48
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i64*
  store i64 %2792, i64* %2821, align 8
  %2822 = load i64, i64* %RBP.i, align 8
  %2823 = add i64 %2822, -400
  %2824 = load i64, i64* %3, align 8
  %2825 = add i64 %2824, 7
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2823 to i64*
  %2827 = load i64, i64* %2826, align 8
  store i64 %2827, i64* %RAX.i1531, align 8
  %2828 = add i64 %2827, 2
  %2829 = add i64 %2824, 11
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i8*
  %2831 = load i8, i8* %2830, align 1
  %2832 = and i8 %2831, 8
  %2833 = zext i8 %2832 to i64
  %2834 = zext i8 %2832 to i32
  store i64 %2833, i64* %RDX.i1522, align 8
  store i8 0, i8* %14, align 1
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = xor i8 %2836, 1
  store i8 %2837, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2838 = icmp eq i8 %2832, 0
  %.lobit159 = lshr exact i8 %2832, 3
  %2839 = xor i8 %.lobit159, 1
  store i8 %2839, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v190 = select i1 %2838, i64 352, i64 23
  %2840 = add i64 %2824, %.v190
  store i64 %2840, i64* %3, align 8
  br i1 %2838, label %block_.L_43ac9e, label %block_43ab55

block_43ab55:                                     ; preds = %block_43ab0e
  %2841 = add i64 %2840, 7
  store i64 %2841, i64* %3, align 8
  %2842 = load i64, i64* %2826, align 8
  store i64 %2842, i64* %RAX.i1531, align 8
  %2843 = add i64 %2840, 10
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i8*
  %2845 = load i8, i8* %2844, align 1
  %2846 = sext i8 %2845 to i64
  %2847 = and i64 %2846, 4294967295
  store i64 %2847, i64* %RCX.i1519, align 8
  %2848 = sext i8 %2845 to i32
  store i8 0, i8* %14, align 1
  %2849 = and i32 %2848, 255
  %2850 = tail call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  store i8 %2853, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2854 = icmp eq i8 %2845, 0
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %29, align 1
  %2856 = lshr i32 %2848, 31
  %2857 = trunc i32 %2856 to i8
  store i8 %2857, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v191 = select i1 %2854, i64 271, i64 19
  %2858 = add i64 %2840, %.v191
  store i64 %2858, i64* %3, align 8
  br i1 %2854, label %block_.L_43ac64, label %block_43ab68

block_43ab68:                                     ; preds = %block_43ab55
  %2859 = add i64 %2822, -388
  %2860 = add i64 %2858, 7
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RAX.i1531, align 8
  %2864 = shl nsw i64 %2863, 2
  %2865 = add i64 %2822, -352
  %2866 = add i64 %2865, %2864
  %2867 = add i64 %2858, 15
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  store i8 0, i8* %14, align 1
  %2870 = and i32 %2869, 255
  %2871 = tail call i32 @llvm.ctpop.i32(i32 %2870)
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  %2874 = xor i8 %2873, 1
  store i8 %2874, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2875 = icmp eq i32 %2869, 0
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %29, align 1
  %2877 = lshr i32 %2869, 31
  %2878 = trunc i32 %2877 to i8
  store i8 %2878, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2879 = icmp ne i8 %2878, 0
  %2880 = or i1 %2875, %2879
  %.v192 = select i1 %2880, i64 252, i64 21
  %2881 = add i64 %2858, %.v192
  store i64 %2881, i64* %3, align 8
  br i1 %2880, label %block_.L_43ac64, label %block_43ab7d

block_43ab7d:                                     ; preds = %block_43ab68
  %2882 = add i64 %2881, 7
  store i64 %2882, i64* %3, align 8
  %2883 = load i32, i32* %2861, align 4
  %2884 = sext i32 %2883 to i64
  store i64 %2884, i64* %RAX.i1531, align 8
  %2885 = shl nsw i64 %2884, 2
  %2886 = add i64 %2865, %2885
  %2887 = add i64 %2881, 14
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = add i32 %2889, -1
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RCX.i1519, align 8
  %2892 = icmp eq i32 %2889, 0
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %14, align 1
  %2894 = and i32 %2890, 255
  %2895 = tail call i32 @llvm.ctpop.i32(i32 %2894)
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  %2898 = xor i8 %2897, 1
  store i8 %2898, i8* %21, align 1
  %2899 = xor i32 %2890, %2889
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %26, align 1
  %2903 = icmp eq i32 %2890, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %29, align 1
  %2905 = lshr i32 %2890, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %32, align 1
  %2907 = lshr i32 %2889, 31
  %2908 = xor i32 %2905, %2907
  %2909 = add nuw nsw i32 %2908, %2907
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %38, align 1
  %2912 = sext i32 %2890 to i64
  store i64 %2912, i64* %RAX.i1531, align 8
  %2913 = shl nsw i64 %2912, 2
  %2914 = add nsw i64 %2913, -160
  %2915 = add i64 %2914, %2822
  %2916 = add i64 %2881, 28
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i32*
  %2918 = load i32, i32* %2917, align 4
  store i8 0, i8* %14, align 1
  %2919 = and i32 %2918, 255
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2924 = icmp eq i32 %2918, 0
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %29, align 1
  %2926 = lshr i32 %2918, 31
  %2927 = trunc i32 %2926 to i8
  store i8 %2927, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %2924, i64 231, i64 34
  %2928 = add i64 %2881, %.v193
  store i64 %2928, i64* %3, align 8
  br i1 %2924, label %block_.L_43ac64, label %block_43ab9f

block_43ab9f:                                     ; preds = %block_43ab7d
  %2929 = add i64 %2822, -48
  %2930 = add i64 %2928, 4
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i64*
  %2932 = load i64, i64* %2931, align 8
  store i64 %2932, i64* %RDI.i1219, align 8
  %2933 = add i64 %2928, 11
  store i64 %2933, i64* %3, align 8
  %2934 = load i32, i32* %2861, align 4
  %2935 = sext i32 %2934 to i64
  store i64 %2935, i64* %RAX.i1531, align 8
  %2936 = shl nsw i64 %2935, 2
  %2937 = add i64 %2865, %2936
  %2938 = add i64 %2928, 18
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i32*
  %2940 = load i32, i32* %2939, align 4
  %2941 = add i32 %2940, -1
  %2942 = zext i32 %2941 to i64
  store i64 %2942, i64* %RCX.i1519, align 8
  %2943 = icmp eq i32 %2940, 0
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %14, align 1
  %2945 = and i32 %2941, 255
  %2946 = tail call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  store i8 %2949, i8* %21, align 1
  %2950 = xor i32 %2941, %2940
  %2951 = lshr i32 %2950, 4
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  store i8 %2953, i8* %26, align 1
  %2954 = icmp eq i32 %2941, 0
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %29, align 1
  %2956 = lshr i32 %2941, 31
  %2957 = trunc i32 %2956 to i8
  store i8 %2957, i8* %32, align 1
  %2958 = lshr i32 %2940, 31
  %2959 = xor i32 %2956, %2958
  %2960 = add nuw nsw i32 %2959, %2958
  %2961 = icmp eq i32 %2960, 2
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %38, align 1
  %2963 = sext i32 %2941 to i64
  store i64 %2963, i64* %RAX.i1531, align 8
  %2964 = shl nsw i64 %2963, 2
  %2965 = add nsw i64 %2964, -160
  %2966 = add i64 %2965, %2822
  %2967 = add i64 %2928, 31
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2966 to i32*
  %2969 = load i32, i32* %2968, align 4
  %2970 = zext i32 %2969 to i64
  store i64 %2970, i64* %RSI.i1525, align 8
  %2971 = add i64 %2928, 1169
  %2972 = add i64 %2928, 36
  %2973 = load i64, i64* %6, align 8
  %2974 = add i64 %2973, -8
  %2975 = inttoptr i64 %2974 to i64*
  store i64 %2972, i64* %2975, align 8
  store i64 %2974, i64* %6, align 8
  store i64 %2971, i64* %3, align 8
  %call2_43abbe = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %2971, %struct.Memory* %MEMORY.32)
  %2976 = load i32, i32* %EAX.i1385, align 4
  %2977 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2978 = and i32 %2976, 255
  %2979 = tail call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  store i8 %2982, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2983 = icmp eq i32 %2976, 0
  %2984 = zext i1 %2983 to i8
  store i8 %2984, i8* %29, align 1
  %2985 = lshr i32 %2976, 31
  %2986 = trunc i32 %2985 to i8
  store i8 %2986, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v194 = select i1 %2983, i64 161, i64 9
  %2987 = add i64 %2977, %.v194
  store i64 %2987, i64* %3, align 8
  %.pre133 = load i64, i64* %RBP.i, align 8
  br i1 %2983, label %block_.L_43ac64, label %block_43abcc

block_43abcc:                                     ; preds = %block_43ab9f
  %2988 = add i64 %.pre133, -48
  %2989 = add i64 %2987, 4
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i64*
  %2991 = load i64, i64* %2990, align 8
  store i64 %2991, i64* %RAX.i1531, align 8
  %2992 = add i64 %.pre133, -388
  %2993 = add i64 %2987, 11
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i32*
  %2995 = load i32, i32* %2994, align 4
  %2996 = sext i32 %2995 to i64
  store i64 %2996, i64* %RCX.i1519, align 8
  %2997 = shl nsw i64 %2996, 2
  %2998 = add i64 %.pre133, -352
  %2999 = add i64 %2998, %2997
  %3000 = add i64 %2987, 18
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i32*
  %3002 = load i32, i32* %3001, align 4
  %3003 = add i32 %3002, -1
  %3004 = zext i32 %3003 to i64
  store i64 %3004, i64* %RDX.i1522, align 8
  %3005 = icmp eq i32 %3002, 0
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %14, align 1
  %3007 = and i32 %3003, 255
  %3008 = tail call i32 @llvm.ctpop.i32(i32 %3007)
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = xor i8 %3010, 1
  store i8 %3011, i8* %21, align 1
  %3012 = xor i32 %3003, %3002
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  store i8 %3015, i8* %26, align 1
  %3016 = icmp eq i32 %3003, 0
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %29, align 1
  %3018 = lshr i32 %3003, 31
  %3019 = trunc i32 %3018 to i8
  store i8 %3019, i8* %32, align 1
  %3020 = lshr i32 %3002, 31
  %3021 = xor i32 %3018, %3020
  %3022 = add nuw nsw i32 %3021, %3020
  %3023 = icmp eq i32 %3022, 2
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %38, align 1
  %3025 = sext i32 %3003 to i64
  store i64 %3025, i64* %RCX.i1519, align 8
  %3026 = shl nsw i64 %3025, 2
  %3027 = add nsw i64 %3026, -160
  %3028 = add i64 %3027, %.pre133
  %3029 = add i64 %2987, 32
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = sext i32 %3031 to i64
  %3033 = mul nsw i64 %3032, 48
  store i64 %3033, i64* %RCX.i1519, align 8
  %3034 = lshr i64 %3033, 63
  %3035 = add i64 %3033, %2991
  store i64 %3035, i64* %RAX.i1531, align 8
  %3036 = icmp ult i64 %3035, %2991
  %3037 = icmp ult i64 %3035, %3033
  %3038 = or i1 %3036, %3037
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %14, align 1
  %3040 = trunc i64 %3035 to i32
  %3041 = and i32 %3040, 255
  %3042 = tail call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  store i8 %3045, i8* %21, align 1
  %3046 = xor i64 %3033, %2991
  %3047 = xor i64 %3046, %3035
  %3048 = lshr i64 %3047, 4
  %3049 = trunc i64 %3048 to i8
  %3050 = and i8 %3049, 1
  store i8 %3050, i8* %26, align 1
  %3051 = icmp eq i64 %3035, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %29, align 1
  %3053 = lshr i64 %3035, 63
  %3054 = trunc i64 %3053 to i8
  store i8 %3054, i8* %32, align 1
  %3055 = lshr i64 %2991, 63
  %3056 = xor i64 %3053, %3055
  %3057 = xor i64 %3053, %3034
  %3058 = add nuw nsw i64 %3056, %3057
  %3059 = icmp eq i64 %3058, 2
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %38, align 1
  %3061 = load i64, i64* %RBP.i, align 8
  %3062 = add i64 %3061, -416
  %3063 = add i64 %2987, 46
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i64*
  store i64 %3035, i64* %3064, align 8
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -404
  %3067 = load i64, i64* %3, align 8
  %3068 = add i64 %3067, 10
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3066 to i32*
  store i32 0, i32* %3069, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_43ac04

block_.L_43ac04:                                  ; preds = %block_43ac1a, %block_43abcc
  %3070 = phi i64 [ %3199, %block_43ac1a ], [ %.pre132, %block_43abcc ]
  %3071 = load i64, i64* %RBP.i, align 8
  %3072 = add i64 %3071, -404
  %3073 = add i64 %3070, 6
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i32*
  %3075 = load i32, i32* %3074, align 4
  %3076 = zext i32 %3075 to i64
  store i64 %3076, i64* %RAX.i1531, align 8
  %3077 = add i64 %3071, -416
  %3078 = add i64 %3070, 13
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %RCX.i1519, align 8
  %3081 = add i64 %3080, 8
  %3082 = add i64 %3070, 16
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = sub i32 %3075, %3084
  %3086 = icmp ult i32 %3075, %3084
  %3087 = zext i1 %3086 to i8
  store i8 %3087, i8* %14, align 1
  %3088 = and i32 %3085, 255
  %3089 = tail call i32 @llvm.ctpop.i32(i32 %3088)
  %3090 = trunc i32 %3089 to i8
  %3091 = and i8 %3090, 1
  %3092 = xor i8 %3091, 1
  store i8 %3092, i8* %21, align 1
  %3093 = xor i32 %3084, %3075
  %3094 = xor i32 %3093, %3085
  %3095 = lshr i32 %3094, 4
  %3096 = trunc i32 %3095 to i8
  %3097 = and i8 %3096, 1
  store i8 %3097, i8* %26, align 1
  %3098 = icmp eq i32 %3085, 0
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %29, align 1
  %3100 = lshr i32 %3085, 31
  %3101 = trunc i32 %3100 to i8
  store i8 %3101, i8* %32, align 1
  %3102 = lshr i32 %3075, 31
  %3103 = lshr i32 %3084, 31
  %3104 = xor i32 %3103, %3102
  %3105 = xor i32 %3100, %3102
  %3106 = add nuw nsw i32 %3105, %3104
  %3107 = icmp eq i32 %3106, 2
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %38, align 1
  %3109 = icmp ne i8 %3101, 0
  %3110 = xor i1 %3109, %3107
  %.v195 = select i1 %3110, i64 22, i64 91
  %3111 = add i64 %3070, %.v195
  store i64 %3111, i64* %3, align 8
  br i1 %3110, label %block_43ac1a, label %block_.L_43ac5f

block_43ac1a:                                     ; preds = %block_.L_43ac04
  %3112 = add i64 %3111, 7
  store i64 %3112, i64* %3, align 8
  %3113 = load i64, i64* %3079, align 8
  store i64 %3113, i64* %RAX.i1531, align 8
  %3114 = add i64 %3111, 14
  store i64 %3114, i64* %3, align 8
  %3115 = load i32, i32* %3074, align 4
  %3116 = sext i32 %3115 to i64
  store i64 %3116, i64* %RCX.i1519, align 8
  %3117 = shl nsw i64 %3116, 2
  %3118 = add i64 %3113, 12
  %3119 = add i64 %3118, %3117
  %3120 = add i64 %3111, 18
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3119 to i32*
  %3122 = load i32, i32* %3121, align 4
  %3123 = zext i32 %3122 to i64
  store i64 %3123, i64* %RDX.i1522, align 8
  %3124 = add i64 %3071, -56
  %3125 = add i64 %3111, 22
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i64*
  %3127 = load i64, i64* %3126, align 8
  store i64 %3127, i64* %RAX.i1531, align 8
  %3128 = add i64 %3111, 26
  store i64 %3128, i64* %3, align 8
  %3129 = load i64, i64* %3126, align 8
  store i64 %3129, i64* %RCX.i1519, align 8
  %3130 = add i64 %3129, 640
  %3131 = add i64 %3111, 32
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %RSI.i1525, align 8
  %3135 = add i32 %3133, 1
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RDI.i1219, align 8
  %3137 = icmp eq i32 %3133, -1
  %3138 = icmp eq i32 %3135, 0
  %3139 = or i1 %3137, %3138
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %14, align 1
  %3141 = and i32 %3135, 255
  %3142 = tail call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  store i8 %3145, i8* %21, align 1
  %3146 = xor i32 %3135, %3133
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  store i8 %3149, i8* %26, align 1
  %3150 = zext i1 %3138 to i8
  store i8 %3150, i8* %29, align 1
  %3151 = lshr i32 %3135, 31
  %3152 = trunc i32 %3151 to i8
  store i8 %3152, i8* %32, align 1
  %3153 = lshr i32 %3133, 31
  %3154 = xor i32 %3151, %3153
  %3155 = add nuw nsw i32 %3154, %3151
  %3156 = icmp eq i32 %3155, 2
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %38, align 1
  %3158 = add i64 %3111, 43
  store i64 %3158, i64* %3, align 8
  store i32 %3135, i32* %3132, align 4
  %3159 = load i32, i32* %ESI.i1022, align 4
  %3160 = load i64, i64* %3, align 8
  %3161 = sext i32 %3159 to i64
  store i64 %3161, i64* %RCX.i1519, align 8
  %3162 = load i64, i64* %RAX.i1531, align 8
  %3163 = shl nsw i64 %3161, 2
  %3164 = add i64 %3162, %3163
  %3165 = load i32, i32* %EDX.i1453, align 4
  %3166 = add i64 %3160, 6
  store i64 %3166, i64* %3, align 8
  %3167 = inttoptr i64 %3164 to i32*
  store i32 %3165, i32* %3167, align 4
  %3168 = load i64, i64* %RBP.i, align 8
  %3169 = add i64 %3168, -404
  %3170 = load i64, i64* %3, align 8
  %3171 = add i64 %3170, 6
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3169 to i32*
  %3173 = load i32, i32* %3172, align 4
  %3174 = add i32 %3173, 1
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RAX.i1531, align 8
  %3176 = icmp eq i32 %3173, -1
  %3177 = icmp eq i32 %3174, 0
  %3178 = or i1 %3176, %3177
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %14, align 1
  %3180 = and i32 %3174, 255
  %3181 = tail call i32 @llvm.ctpop.i32(i32 %3180)
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  %3184 = xor i8 %3183, 1
  store i8 %3184, i8* %21, align 1
  %3185 = xor i32 %3174, %3173
  %3186 = lshr i32 %3185, 4
  %3187 = trunc i32 %3186 to i8
  %3188 = and i8 %3187, 1
  store i8 %3188, i8* %26, align 1
  %3189 = zext i1 %3177 to i8
  store i8 %3189, i8* %29, align 1
  %3190 = lshr i32 %3174, 31
  %3191 = trunc i32 %3190 to i8
  store i8 %3191, i8* %32, align 1
  %3192 = lshr i32 %3173, 31
  %3193 = xor i32 %3190, %3192
  %3194 = add nuw nsw i32 %3193, %3190
  %3195 = icmp eq i32 %3194, 2
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %38, align 1
  %3197 = add i64 %3170, 15
  store i64 %3197, i64* %3, align 8
  store i32 %3174, i32* %3172, align 4
  %3198 = load i64, i64* %3, align 8
  %3199 = add i64 %3198, -86
  store i64 %3199, i64* %3, align 8
  br label %block_.L_43ac04

block_.L_43ac5f:                                  ; preds = %block_.L_43ac04
  %3200 = add i64 %3111, 58
  store i64 %3200, i64* %3, align 8
  br label %block_.L_43ac99

block_.L_43ac64:                                  ; preds = %block_43ab9f, %block_43ab7d, %block_43ab68, %block_43ab55
  %3201 = phi i64 [ %2928, %block_43ab7d ], [ %2881, %block_43ab68 ], [ %2858, %block_43ab55 ], [ %2987, %block_43ab9f ]
  %3202 = phi i64 [ %2822, %block_43ab7d ], [ %2822, %block_43ab68 ], [ %2822, %block_43ab55 ], [ %.pre133, %block_43ab9f ]
  %3203 = add i64 %3202, -388
  %3204 = add i64 %3201, 7
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i32*
  %3206 = load i32, i32* %3205, align 4
  %3207 = sext i32 %3206 to i64
  store i64 %3207, i64* %RAX.i1531, align 8
  %3208 = shl nsw i64 %3207, 2
  %3209 = add i64 %3202, -352
  %3210 = add i64 %3209, %3208
  %3211 = add i64 %3201, 15
  store i64 %3211, i64* %3, align 8
  %3212 = inttoptr i64 %3210 to i32*
  %3213 = load i32, i32* %3212, align 4
  %3214 = sext i32 %3213 to i64
  store i64 %3214, i64* %RAX.i1531, align 8
  %3215 = shl nsw i64 %3214, 2
  %3216 = add i64 %3202, -160
  %3217 = add i64 %3216, %3215
  %3218 = add i64 %3201, 22
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i32*
  %3220 = load i32, i32* %3219, align 4
  %3221 = zext i32 %3220 to i64
  store i64 %3221, i64* %RCX.i1519, align 8
  %3222 = add i64 %3202, -56
  %3223 = add i64 %3201, 26
  store i64 %3223, i64* %3, align 8
  %3224 = inttoptr i64 %3222 to i64*
  %3225 = load i64, i64* %3224, align 8
  store i64 %3225, i64* %RAX.i1531, align 8
  %3226 = add i64 %3201, 30
  store i64 %3226, i64* %3, align 8
  %3227 = load i64, i64* %3224, align 8
  store i64 %3227, i64* %RDX.i1522, align 8
  %3228 = add i64 %3227, 640
  %3229 = add i64 %3201, 36
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %RSI.i1525, align 8
  %3233 = add i32 %3231, 1
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RDI.i1219, align 8
  %3235 = icmp eq i32 %3231, -1
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
  %3244 = xor i32 %3233, %3231
  %3245 = lshr i32 %3244, 4
  %3246 = trunc i32 %3245 to i8
  %3247 = and i8 %3246, 1
  store i8 %3247, i8* %26, align 1
  %3248 = zext i1 %3236 to i8
  store i8 %3248, i8* %29, align 1
  %3249 = lshr i32 %3233, 31
  %3250 = trunc i32 %3249 to i8
  store i8 %3250, i8* %32, align 1
  %3251 = lshr i32 %3231, 31
  %3252 = xor i32 %3249, %3251
  %3253 = add nuw nsw i32 %3252, %3249
  %3254 = icmp eq i32 %3253, 2
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %38, align 1
  %3256 = add i64 %3201, 47
  store i64 %3256, i64* %3, align 8
  store i32 %3233, i32* %3230, align 4
  %3257 = load i32, i32* %ESI.i1022, align 4
  %3258 = load i64, i64* %3, align 8
  %3259 = sext i32 %3257 to i64
  store i64 %3259, i64* %RDX.i1522, align 8
  %3260 = load i64, i64* %RAX.i1531, align 8
  %3261 = shl nsw i64 %3259, 2
  %3262 = add i64 %3260, %3261
  %3263 = load i32, i32* %ECX.i1237, align 4
  %3264 = add i64 %3258, 6
  store i64 %3264, i64* %3, align 8
  %3265 = inttoptr i64 %3262 to i32*
  store i32 %3263, i32* %3265, align 4
  %.pre134 = load i64, i64* %3, align 8
  %.pre135.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43ac99

block_.L_43ac99:                                  ; preds = %block_.L_43ac64, %block_.L_43ac5f
  %.pre135 = phi i64 [ %.pre135.pre, %block_.L_43ac64 ], [ %3071, %block_.L_43ac5f ]
  %3266 = phi i64 [ %.pre134, %block_.L_43ac64 ], [ %3200, %block_.L_43ac5f ]
  %3267 = add i64 %3266, 5
  store i64 %3267, i64* %3, align 8
  br label %block_.L_43ac9e

block_.L_43ac9e:                                  ; preds = %block_.L_43ac99, %block_43ab0e
  %3268 = phi i64 [ %3267, %block_.L_43ac99 ], [ %2840, %block_43ab0e ]
  %3269 = phi i64 [ %.pre135, %block_.L_43ac99 ], [ %2822, %block_43ab0e ]
  %3270 = add i64 %3269, -400
  %3271 = add i64 %3268, 7
  store i64 %3271, i64* %3, align 8
  %3272 = inttoptr i64 %3270 to i64*
  %3273 = load i64, i64* %3272, align 8
  store i64 %3273, i64* %RAX.i1531, align 8
  %3274 = add i64 %3273, 2
  %3275 = add i64 %3268, 11
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i8*
  %3277 = load i8, i8* %3276, align 1
  %3278 = and i8 %3277, 4
  %3279 = zext i8 %3278 to i64
  %3280 = zext i8 %3278 to i32
  store i64 %3279, i64* %RCX.i1519, align 8
  store i8 0, i8* %14, align 1
  %3281 = tail call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = xor i8 %3282, 1
  store i8 %3283, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3284 = icmp eq i8 %3278, 0
  %.lobit160 = lshr exact i8 %3278, 2
  %3285 = xor i8 %.lobit160, 1
  store i8 %3285, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v196 = select i1 %3284, i64 360, i64 23
  %3286 = add i64 %3268, %.v196
  store i64 %3286, i64* %3, align 8
  br i1 %3284, label %block_.L_43ae06, label %block_43acb5

block_43acb5:                                     ; preds = %block_.L_43ac9e
  %3287 = add i64 %3286, 7
  store i64 %3287, i64* %3, align 8
  %3288 = load i64, i64* %3272, align 8
  store i64 %3288, i64* %RAX.i1531, align 8
  %3289 = add i64 %3286, 10
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3288 to i8*
  %3291 = load i8, i8* %3290, align 1
  %3292 = sext i8 %3291 to i64
  %3293 = and i64 %3292, 4294967295
  store i64 %3293, i64* %RCX.i1519, align 8
  %3294 = sext i8 %3291 to i32
  store i8 0, i8* %14, align 1
  %3295 = and i32 %3294, 255
  %3296 = tail call i32 @llvm.ctpop.i32(i32 %3295)
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = xor i8 %3298, 1
  store i8 %3299, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3300 = icmp eq i8 %3291, 0
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %29, align 1
  %3302 = lshr i32 %3294, 31
  %3303 = trunc i32 %3302 to i8
  store i8 %3303, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v197 = select i1 %3300, i64 275, i64 19
  %3304 = add i64 %3286, %.v197
  store i64 %3304, i64* %3, align 8
  br i1 %3300, label %block_.L_43adc8, label %block_43acc8

block_43acc8:                                     ; preds = %block_43acb5
  %3305 = add i64 %3269, -388
  %3306 = add i64 %3304, 7
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3305 to i32*
  %3308 = load i32, i32* %3307, align 4
  %3309 = sext i32 %3308 to i64
  store i64 %3309, i64* %RAX.i1531, align 8
  %3310 = shl nsw i64 %3309, 2
  %3311 = add i64 %3269, -352
  %3312 = add i64 %3311, %3310
  %3313 = add i64 %3304, 15
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to i32*
  %3315 = load i32, i32* %3314, align 4
  store i8 0, i8* %14, align 1
  %3316 = and i32 %3315, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3321 = icmp eq i32 %3315, 0
  %3322 = zext i1 %3321 to i8
  store i8 %3322, i8* %29, align 1
  %3323 = lshr i32 %3315, 31
  %3324 = trunc i32 %3323 to i8
  store i8 %3324, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3325 = icmp ne i8 %3324, 0
  %3326 = or i1 %3321, %3325
  %.v198 = select i1 %3326, i64 256, i64 21
  %3327 = add i64 %3304, %.v198
  store i64 %3327, i64* %3, align 8
  br i1 %3326, label %block_.L_43adc8, label %block_43acdd

block_43acdd:                                     ; preds = %block_43acc8
  %3328 = add i64 %3327, 7
  store i64 %3328, i64* %3, align 8
  %3329 = load i32, i32* %3307, align 4
  %3330 = sext i32 %3329 to i64
  store i64 %3330, i64* %RAX.i1531, align 8
  %3331 = shl nsw i64 %3330, 2
  %3332 = add i64 %3311, %3331
  %3333 = add i64 %3327, 14
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3332 to i32*
  %3335 = load i32, i32* %3334, align 4
  %3336 = add i32 %3335, -1
  %3337 = zext i32 %3336 to i64
  store i64 %3337, i64* %RCX.i1519, align 8
  %3338 = icmp eq i32 %3335, 0
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %14, align 1
  %3340 = and i32 %3336, 255
  %3341 = tail call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %21, align 1
  %3345 = xor i32 %3336, %3335
  %3346 = lshr i32 %3345, 4
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  store i8 %3348, i8* %26, align 1
  %3349 = icmp eq i32 %3336, 0
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %29, align 1
  %3351 = lshr i32 %3336, 31
  %3352 = trunc i32 %3351 to i8
  store i8 %3352, i8* %32, align 1
  %3353 = lshr i32 %3335, 31
  %3354 = xor i32 %3351, %3353
  %3355 = add nuw nsw i32 %3354, %3353
  %3356 = icmp eq i32 %3355, 2
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %38, align 1
  %3358 = sext i32 %3336 to i64
  store i64 %3358, i64* %RAX.i1531, align 8
  %3359 = shl nsw i64 %3358, 2
  %3360 = add nsw i64 %3359, -160
  %3361 = add i64 %3360, %3269
  %3362 = add i64 %3327, 28
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i32*
  %3364 = load i32, i32* %3363, align 4
  store i8 0, i8* %14, align 1
  %3365 = and i32 %3364, 255
  %3366 = tail call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  store i8 %3369, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3370 = icmp eq i32 %3364, 0
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %29, align 1
  %3372 = lshr i32 %3364, 31
  %3373 = trunc i32 %3372 to i8
  store i8 %3373, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v199 = select i1 %3370, i64 235, i64 34
  %3374 = add i64 %3327, %.v199
  store i64 %3374, i64* %3, align 8
  br i1 %3370, label %block_.L_43adc8, label %block_43acff

block_43acff:                                     ; preds = %block_43acdd
  %3375 = add i64 %3269, -48
  %3376 = add i64 %3374, 4
  store i64 %3376, i64* %3, align 8
  %3377 = inttoptr i64 %3375 to i64*
  %3378 = load i64, i64* %3377, align 8
  store i64 %3378, i64* %RDI.i1219, align 8
  %3379 = add i64 %3374, 11
  store i64 %3379, i64* %3, align 8
  %3380 = load i32, i32* %3307, align 4
  %3381 = sext i32 %3380 to i64
  store i64 %3381, i64* %RAX.i1531, align 8
  %3382 = shl nsw i64 %3381, 2
  %3383 = add i64 %3311, %3382
  %3384 = add i64 %3374, 18
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i32*
  %3386 = load i32, i32* %3385, align 4
  %3387 = add i32 %3386, -1
  %3388 = zext i32 %3387 to i64
  store i64 %3388, i64* %RCX.i1519, align 8
  %3389 = icmp eq i32 %3386, 0
  %3390 = zext i1 %3389 to i8
  store i8 %3390, i8* %14, align 1
  %3391 = and i32 %3387, 255
  %3392 = tail call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  store i8 %3395, i8* %21, align 1
  %3396 = xor i32 %3387, %3386
  %3397 = lshr i32 %3396, 4
  %3398 = trunc i32 %3397 to i8
  %3399 = and i8 %3398, 1
  store i8 %3399, i8* %26, align 1
  %3400 = icmp eq i32 %3387, 0
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %29, align 1
  %3402 = lshr i32 %3387, 31
  %3403 = trunc i32 %3402 to i8
  store i8 %3403, i8* %32, align 1
  %3404 = lshr i32 %3386, 31
  %3405 = xor i32 %3402, %3404
  %3406 = add nuw nsw i32 %3405, %3404
  %3407 = icmp eq i32 %3406, 2
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %38, align 1
  %3409 = sext i32 %3387 to i64
  store i64 %3409, i64* %RAX.i1531, align 8
  %3410 = shl nsw i64 %3409, 2
  %3411 = add nsw i64 %3410, -160
  %3412 = add i64 %3411, %3269
  %3413 = add i64 %3374, 31
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RSI.i1525, align 8
  %3417 = add i64 %3374, 817
  %3418 = add i64 %3374, 36
  %3419 = load i64, i64* %6, align 8
  %3420 = add i64 %3419, -8
  %3421 = inttoptr i64 %3420 to i64*
  store i64 %3418, i64* %3421, align 8
  store i64 %3420, i64* %6, align 8
  store i64 %3417, i64* %3, align 8
  %call2_43ad1e = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %3417, %struct.Memory* %MEMORY.32)
  %3422 = load i32, i32* %EAX.i1385, align 4
  %3423 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3424 = and i32 %3422, 255
  %3425 = tail call i32 @llvm.ctpop.i32(i32 %3424)
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = xor i8 %3427, 1
  store i8 %3428, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3429 = icmp eq i32 %3422, 0
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %29, align 1
  %3431 = lshr i32 %3422, 31
  %3432 = trunc i32 %3431 to i8
  store i8 %3432, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v200 = select i1 %3429, i64 165, i64 9
  %3433 = add i64 %3423, %.v200
  store i64 %3433, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br i1 %3429, label %block_.L_43adc8, label %block_43ad2c

block_43ad2c:                                     ; preds = %block_43acff
  %3434 = add i64 %.pre137, -48
  %3435 = add i64 %3433, 4
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i64*
  %3437 = load i64, i64* %3436, align 8
  store i64 %3437, i64* %RAX.i1531, align 8
  %3438 = add i64 %.pre137, -388
  %3439 = add i64 %3433, 11
  store i64 %3439, i64* %3, align 8
  %3440 = inttoptr i64 %3438 to i32*
  %3441 = load i32, i32* %3440, align 4
  %3442 = sext i32 %3441 to i64
  store i64 %3442, i64* %RCX.i1519, align 8
  %3443 = shl nsw i64 %3442, 2
  %3444 = add i64 %.pre137, -352
  %3445 = add i64 %3444, %3443
  %3446 = add i64 %3433, 18
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  %3448 = load i32, i32* %3447, align 4
  %3449 = add i32 %3448, -1
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RDX.i1522, align 8
  %3451 = icmp eq i32 %3448, 0
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %14, align 1
  %3453 = and i32 %3449, 255
  %3454 = tail call i32 @llvm.ctpop.i32(i32 %3453)
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = xor i8 %3456, 1
  store i8 %3457, i8* %21, align 1
  %3458 = xor i32 %3449, %3448
  %3459 = lshr i32 %3458, 4
  %3460 = trunc i32 %3459 to i8
  %3461 = and i8 %3460, 1
  store i8 %3461, i8* %26, align 1
  %3462 = icmp eq i32 %3449, 0
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %29, align 1
  %3464 = lshr i32 %3449, 31
  %3465 = trunc i32 %3464 to i8
  store i8 %3465, i8* %32, align 1
  %3466 = lshr i32 %3448, 31
  %3467 = xor i32 %3464, %3466
  %3468 = add nuw nsw i32 %3467, %3466
  %3469 = icmp eq i32 %3468, 2
  %3470 = zext i1 %3469 to i8
  store i8 %3470, i8* %38, align 1
  %3471 = sext i32 %3449 to i64
  store i64 %3471, i64* %RCX.i1519, align 8
  %3472 = shl nsw i64 %3471, 2
  %3473 = add nsw i64 %3472, -160
  %3474 = add i64 %3473, %.pre137
  %3475 = add i64 %3433, 32
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3474 to i32*
  %3477 = load i32, i32* %3476, align 4
  %3478 = sext i32 %3477 to i64
  %3479 = mul nsw i64 %3478, 48
  store i64 %3479, i64* %RCX.i1519, align 8
  %3480 = lshr i64 %3479, 63
  %3481 = add i64 %3479, %3437
  store i64 %3481, i64* %RAX.i1531, align 8
  %3482 = icmp ult i64 %3481, %3437
  %3483 = icmp ult i64 %3481, %3479
  %3484 = or i1 %3482, %3483
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %14, align 1
  %3486 = trunc i64 %3481 to i32
  %3487 = and i32 %3486, 255
  %3488 = tail call i32 @llvm.ctpop.i32(i32 %3487)
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  %3491 = xor i8 %3490, 1
  store i8 %3491, i8* %21, align 1
  %3492 = xor i64 %3479, %3437
  %3493 = xor i64 %3492, %3481
  %3494 = lshr i64 %3493, 4
  %3495 = trunc i64 %3494 to i8
  %3496 = and i8 %3495, 1
  store i8 %3496, i8* %26, align 1
  %3497 = icmp eq i64 %3481, 0
  %3498 = zext i1 %3497 to i8
  store i8 %3498, i8* %29, align 1
  %3499 = lshr i64 %3481, 63
  %3500 = trunc i64 %3499 to i8
  store i8 %3500, i8* %32, align 1
  %3501 = lshr i64 %3437, 63
  %3502 = xor i64 %3499, %3501
  %3503 = xor i64 %3499, %3480
  %3504 = add nuw nsw i64 %3502, %3503
  %3505 = icmp eq i64 %3504, 2
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %38, align 1
  %3507 = load i64, i64* %RBP.i, align 8
  %3508 = add i64 %3507, -432
  %3509 = add i64 %3433, 46
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3508 to i64*
  store i64 %3481, i64* %3510, align 8
  %3511 = load i64, i64* %RBP.i, align 8
  %3512 = add i64 %3511, -420
  %3513 = load i64, i64* %3, align 8
  %3514 = add i64 %3513, 10
  store i64 %3514, i64* %3, align 8
  %3515 = inttoptr i64 %3512 to i32*
  store i32 0, i32* %3515, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_43ad64

block_.L_43ad64:                                  ; preds = %block_43ad7a, %block_43ad2c
  %3516 = phi i64 [ %3646, %block_43ad7a ], [ %.pre136, %block_43ad2c ]
  %3517 = load i64, i64* %RBP.i, align 8
  %3518 = add i64 %3517, -420
  %3519 = add i64 %3516, 6
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RAX.i1531, align 8
  %3523 = add i64 %3517, -432
  %3524 = add i64 %3516, 13
  store i64 %3524, i64* %3, align 8
  %3525 = inttoptr i64 %3523 to i64*
  %3526 = load i64, i64* %3525, align 8
  store i64 %3526, i64* %RCX.i1519, align 8
  %3527 = add i64 %3526, 28
  %3528 = add i64 %3516, 16
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3527 to i32*
  %3530 = load i32, i32* %3529, align 4
  %3531 = sub i32 %3521, %3530
  %3532 = icmp ult i32 %3521, %3530
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %14, align 1
  %3534 = and i32 %3531, 255
  %3535 = tail call i32 @llvm.ctpop.i32(i32 %3534)
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  %3538 = xor i8 %3537, 1
  store i8 %3538, i8* %21, align 1
  %3539 = xor i32 %3530, %3521
  %3540 = xor i32 %3539, %3531
  %3541 = lshr i32 %3540, 4
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  store i8 %3543, i8* %26, align 1
  %3544 = icmp eq i32 %3531, 0
  %3545 = zext i1 %3544 to i8
  store i8 %3545, i8* %29, align 1
  %3546 = lshr i32 %3531, 31
  %3547 = trunc i32 %3546 to i8
  store i8 %3547, i8* %32, align 1
  %3548 = lshr i32 %3521, 31
  %3549 = lshr i32 %3530, 31
  %3550 = xor i32 %3549, %3548
  %3551 = xor i32 %3546, %3548
  %3552 = add nuw nsw i32 %3551, %3550
  %3553 = icmp eq i32 %3552, 2
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %38, align 1
  %3555 = icmp ne i8 %3547, 0
  %3556 = xor i1 %3555, %3553
  %.v201 = select i1 %3556, i64 22, i64 95
  %3557 = add i64 %3516, %.v201
  store i64 %3557, i64* %3, align 8
  br i1 %3556, label %block_43ad7a, label %block_.L_43adc3

block_43ad7a:                                     ; preds = %block_.L_43ad64
  %3558 = add i64 %3557, 7
  store i64 %3558, i64* %3, align 8
  %3559 = load i64, i64* %3525, align 8
  store i64 %3559, i64* %RAX.i1531, align 8
  %3560 = add i64 %3557, 14
  store i64 %3560, i64* %3, align 8
  %3561 = load i32, i32* %3520, align 4
  %3562 = sext i32 %3561 to i64
  store i64 %3562, i64* %RCX.i1519, align 8
  %3563 = shl nsw i64 %3562, 2
  %3564 = add i64 %3559, 32
  %3565 = add i64 %3564, %3563
  %3566 = add i64 %3557, 18
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3565 to i32*
  %3568 = load i32, i32* %3567, align 4
  %3569 = zext i32 %3568 to i64
  store i64 %3569, i64* %RDX.i1522, align 8
  %3570 = add i64 %3517, -56
  %3571 = add i64 %3557, 22
  store i64 %3571, i64* %3, align 8
  %3572 = inttoptr i64 %3570 to i64*
  %3573 = load i64, i64* %3572, align 8
  store i64 %3573, i64* %RAX.i1531, align 8
  %3574 = add i64 %3557, 26
  store i64 %3574, i64* %3, align 8
  %3575 = load i64, i64* %3572, align 8
  store i64 %3575, i64* %RCX.i1519, align 8
  %3576 = add i64 %3575, 644
  %3577 = add i64 %3557, 32
  store i64 %3577, i64* %3, align 8
  %3578 = inttoptr i64 %3576 to i32*
  %3579 = load i32, i32* %3578, align 4
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RSI.i1525, align 8
  %3581 = add i32 %3579, 1
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RDI.i1219, align 8
  %3583 = icmp eq i32 %3579, -1
  %3584 = icmp eq i32 %3581, 0
  %3585 = or i1 %3583, %3584
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %14, align 1
  %3587 = and i32 %3581, 255
  %3588 = tail call i32 @llvm.ctpop.i32(i32 %3587)
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  store i8 %3591, i8* %21, align 1
  %3592 = xor i32 %3581, %3579
  %3593 = lshr i32 %3592, 4
  %3594 = trunc i32 %3593 to i8
  %3595 = and i8 %3594, 1
  store i8 %3595, i8* %26, align 1
  %3596 = zext i1 %3584 to i8
  store i8 %3596, i8* %29, align 1
  %3597 = lshr i32 %3581, 31
  %3598 = trunc i32 %3597 to i8
  store i8 %3598, i8* %32, align 1
  %3599 = lshr i32 %3579, 31
  %3600 = xor i32 %3597, %3599
  %3601 = add nuw nsw i32 %3600, %3597
  %3602 = icmp eq i32 %3601, 2
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %38, align 1
  %3604 = add i64 %3557, 43
  store i64 %3604, i64* %3, align 8
  store i32 %3581, i32* %3578, align 4
  %3605 = load i32, i32* %ESI.i1022, align 4
  %3606 = load i64, i64* %3, align 8
  %3607 = sext i32 %3605 to i64
  store i64 %3607, i64* %RCX.i1519, align 8
  %3608 = load i64, i64* %RAX.i1531, align 8
  %3609 = shl nsw i64 %3607, 2
  %3610 = add nsw i64 %3609, 320
  %3611 = add i64 %3610, %3608
  %3612 = load i32, i32* %EDX.i1453, align 4
  %3613 = add i64 %3606, 10
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3611 to i32*
  store i32 %3612, i32* %3614, align 4
  %3615 = load i64, i64* %RBP.i, align 8
  %3616 = add i64 %3615, -420
  %3617 = load i64, i64* %3, align 8
  %3618 = add i64 %3617, 6
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3616 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = add i32 %3620, 1
  %3622 = zext i32 %3621 to i64
  store i64 %3622, i64* %RAX.i1531, align 8
  %3623 = icmp eq i32 %3620, -1
  %3624 = icmp eq i32 %3621, 0
  %3625 = or i1 %3623, %3624
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %14, align 1
  %3627 = and i32 %3621, 255
  %3628 = tail call i32 @llvm.ctpop.i32(i32 %3627)
  %3629 = trunc i32 %3628 to i8
  %3630 = and i8 %3629, 1
  %3631 = xor i8 %3630, 1
  store i8 %3631, i8* %21, align 1
  %3632 = xor i32 %3621, %3620
  %3633 = lshr i32 %3632, 4
  %3634 = trunc i32 %3633 to i8
  %3635 = and i8 %3634, 1
  store i8 %3635, i8* %26, align 1
  %3636 = zext i1 %3624 to i8
  store i8 %3636, i8* %29, align 1
  %3637 = lshr i32 %3621, 31
  %3638 = trunc i32 %3637 to i8
  store i8 %3638, i8* %32, align 1
  %3639 = lshr i32 %3620, 31
  %3640 = xor i32 %3637, %3639
  %3641 = add nuw nsw i32 %3640, %3637
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %38, align 1
  %3644 = add i64 %3617, 15
  store i64 %3644, i64* %3, align 8
  store i32 %3621, i32* %3619, align 4
  %3645 = load i64, i64* %3, align 8
  %3646 = add i64 %3645, -90
  store i64 %3646, i64* %3, align 8
  br label %block_.L_43ad64

block_.L_43adc3:                                  ; preds = %block_.L_43ad64
  %3647 = add i64 %3557, 62
  store i64 %3647, i64* %3, align 8
  br label %block_.L_43ae01

block_.L_43adc8:                                  ; preds = %block_43acff, %block_43acdd, %block_43acc8, %block_43acb5
  %3648 = phi i64 [ %3304, %block_43acb5 ], [ %3327, %block_43acc8 ], [ %3374, %block_43acdd ], [ %3433, %block_43acff ]
  %3649 = phi i64 [ %3269, %block_43acb5 ], [ %3269, %block_43acc8 ], [ %3269, %block_43acdd ], [ %.pre137, %block_43acff ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.32, %block_43acb5 ], [ %MEMORY.32, %block_43acc8 ], [ %MEMORY.32, %block_43acdd ], [ %call2_43ad1e, %block_43acff ]
  %3650 = add i64 %3649, -388
  %3651 = add i64 %3648, 7
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = sext i32 %3653 to i64
  store i64 %3654, i64* %RAX.i1531, align 8
  %3655 = shl nsw i64 %3654, 2
  %3656 = add i64 %3649, -352
  %3657 = add i64 %3656, %3655
  %3658 = add i64 %3648, 15
  store i64 %3658, i64* %3, align 8
  %3659 = inttoptr i64 %3657 to i32*
  %3660 = load i32, i32* %3659, align 4
  %3661 = sext i32 %3660 to i64
  store i64 %3661, i64* %RAX.i1531, align 8
  %3662 = shl nsw i64 %3661, 2
  %3663 = add i64 %3649, -160
  %3664 = add i64 %3663, %3662
  %3665 = add i64 %3648, 22
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = zext i32 %3667 to i64
  store i64 %3668, i64* %RCX.i1519, align 8
  %3669 = add i64 %3649, -56
  %3670 = add i64 %3648, 26
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i64*
  %3672 = load i64, i64* %3671, align 8
  store i64 %3672, i64* %RAX.i1531, align 8
  %3673 = add i64 %3648, 30
  store i64 %3673, i64* %3, align 8
  %3674 = load i64, i64* %3671, align 8
  store i64 %3674, i64* %RDX.i1522, align 8
  %3675 = add i64 %3674, 644
  %3676 = add i64 %3648, 36
  store i64 %3676, i64* %3, align 8
  %3677 = inttoptr i64 %3675 to i32*
  %3678 = load i32, i32* %3677, align 4
  %3679 = zext i32 %3678 to i64
  store i64 %3679, i64* %RSI.i1525, align 8
  %3680 = add i32 %3678, 1
  %3681 = zext i32 %3680 to i64
  store i64 %3681, i64* %RDI.i1219, align 8
  %3682 = icmp eq i32 %3678, -1
  %3683 = icmp eq i32 %3680, 0
  %3684 = or i1 %3682, %3683
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %14, align 1
  %3686 = and i32 %3680, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %21, align 1
  %3691 = xor i32 %3680, %3678
  %3692 = lshr i32 %3691, 4
  %3693 = trunc i32 %3692 to i8
  %3694 = and i8 %3693, 1
  store i8 %3694, i8* %26, align 1
  %3695 = zext i1 %3683 to i8
  store i8 %3695, i8* %29, align 1
  %3696 = lshr i32 %3680, 31
  %3697 = trunc i32 %3696 to i8
  store i8 %3697, i8* %32, align 1
  %3698 = lshr i32 %3678, 31
  %3699 = xor i32 %3696, %3698
  %3700 = add nuw nsw i32 %3699, %3696
  %3701 = icmp eq i32 %3700, 2
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %38, align 1
  %3703 = add i64 %3648, 47
  store i64 %3703, i64* %3, align 8
  store i32 %3680, i32* %3677, align 4
  %3704 = load i32, i32* %ESI.i1022, align 4
  %3705 = load i64, i64* %3, align 8
  %3706 = sext i32 %3704 to i64
  store i64 %3706, i64* %RDX.i1522, align 8
  %3707 = load i64, i64* %RAX.i1531, align 8
  %3708 = shl nsw i64 %3706, 2
  %3709 = add nsw i64 %3708, 320
  %3710 = add i64 %3709, %3707
  %3711 = load i32, i32* %ECX.i1237, align 4
  %3712 = add i64 %3705, 10
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3710 to i32*
  store i32 %3711, i32* %3713, align 4
  %.pre138 = load i64, i64* %3, align 8
  %.pre139.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43ae01

block_.L_43ae01:                                  ; preds = %block_.L_43adc8, %block_.L_43adc3
  %.pre139 = phi i64 [ %.pre139.pre, %block_.L_43adc8 ], [ %3517, %block_.L_43adc3 ]
  %3714 = phi i64 [ %.pre138, %block_.L_43adc8 ], [ %3647, %block_.L_43adc3 ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.38, %block_.L_43adc8 ], [ %call2_43ad1e, %block_.L_43adc3 ]
  %3715 = add i64 %3714, 5
  store i64 %3715, i64* %3, align 8
  br label %block_.L_43ae06

block_.L_43ae06:                                  ; preds = %block_.L_43ae01, %block_.L_43ac9e
  %3716 = phi i64 [ %3269, %block_.L_43ac9e ], [ %.pre139, %block_.L_43ae01 ]
  %3717 = phi i64 [ %3286, %block_.L_43ac9e ], [ %3715, %block_.L_43ae01 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.32, %block_.L_43ac9e ], [ %MEMORY.39, %block_.L_43ae01 ]
  %3718 = add i64 %3716, -388
  %3719 = add i64 %3717, 11
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3718 to i32*
  %3721 = load i32, i32* %3720, align 4
  %3722 = add i32 %3721, 1
  %3723 = zext i32 %3722 to i64
  store i64 %3723, i64* %RAX.i1531, align 8
  %3724 = icmp eq i32 %3721, -1
  %3725 = icmp eq i32 %3722, 0
  %3726 = or i1 %3724, %3725
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %14, align 1
  %3728 = and i32 %3722, 255
  %3729 = tail call i32 @llvm.ctpop.i32(i32 %3728)
  %3730 = trunc i32 %3729 to i8
  %3731 = and i8 %3730, 1
  %3732 = xor i8 %3731, 1
  store i8 %3732, i8* %21, align 1
  %3733 = xor i32 %3722, %3721
  %3734 = lshr i32 %3733, 4
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  store i8 %3736, i8* %26, align 1
  %3737 = zext i1 %3725 to i8
  store i8 %3737, i8* %29, align 1
  %3738 = lshr i32 %3722, 31
  %3739 = trunc i32 %3738 to i8
  store i8 %3739, i8* %32, align 1
  %3740 = lshr i32 %3721, 31
  %3741 = xor i32 %3738, %3740
  %3742 = add nuw nsw i32 %3741, %3738
  %3743 = icmp eq i32 %3742, 2
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %38, align 1
  %3745 = add i64 %3717, 20
  store i64 %3745, i64* %3, align 8
  store i32 %3722, i32* %3720, align 4
  %3746 = load i64, i64* %3, align 8
  %3747 = add i64 %3746, -795
  store i64 %3747, i64* %3, align 8
  br label %block_.L_43aaff

block_.L_43ae1f:                                  ; preds = %block_.L_43aaff
  %3748 = add i64 %2715, -56
  %3749 = add i64 %2751, 4
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3748 to i64*
  %3751 = load i64, i64* %3750, align 8
  store i64 %3751, i64* %RAX.i1531, align 8
  %3752 = add i64 %3751, 640
  %3753 = add i64 %2751, 11
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i32*
  %3755 = load i32, i32* %3754, align 4
  store i8 0, i8* %14, align 1
  %3756 = and i32 %3755, 255
  %3757 = tail call i32 @llvm.ctpop.i32(i32 %3756)
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = xor i8 %3759, 1
  store i8 %3760, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3761 = icmp eq i32 %3755, 0
  %3762 = zext i1 %3761 to i8
  store i8 %3762, i8* %29, align 1
  %3763 = lshr i32 %3755, 31
  %3764 = trunc i32 %3763 to i8
  store i8 %3764, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3765 = icmp ne i8 %3764, 0
  %3766 = or i1 %3761, %3765
  %.v183 = select i1 %3766, i64 39, i64 17
  %3767 = add i64 %2751, %.v183
  store i64 %3767, i64* %3, align 8
  br i1 %3766, label %block_.L_43ae46, label %block_43ae30

block_43ae30:                                     ; preds = %block_.L_43ae1f
  %3768 = add i64 %3767, 4
  store i64 %3768, i64* %3, align 8
  %3769 = load i64, i64* %3750, align 8
  store i64 %3769, i64* %RAX.i1531, align 8
  %3770 = add i64 %3769, 644
  %3771 = add i64 %3767, 11
  store i64 %3771, i64* %3, align 8
  %3772 = inttoptr i64 %3770 to i32*
  %3773 = load i32, i32* %3772, align 4
  store i8 0, i8* %14, align 1
  %3774 = and i32 %3773, 255
  %3775 = tail call i32 @llvm.ctpop.i32(i32 %3774)
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  %3778 = xor i8 %3777, 1
  store i8 %3778, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3779 = icmp eq i32 %3773, 0
  %3780 = zext i1 %3779 to i8
  store i8 %3780, i8* %29, align 1
  %3781 = lshr i32 %3773, 31
  %3782 = trunc i32 %3781 to i8
  store i8 %3782, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3783 = icmp ne i8 %3782, 0
  %3784 = or i1 %3779, %3783
  %.v184 = select i1 %3784, i64 22, i64 17
  %3785 = add i64 %3767, %.v184
  store i64 %3785, i64* %3, align 8
  br i1 %3784, label %block_.L_43ae46, label %block_43ae41

block_43ae41:                                     ; preds = %block_43ae30
  %3786 = add i64 %3785, 45
  store i64 %3786, i64* %3, align 8
  br label %block_.L_43ae6e

block_.L_43ae46:                                  ; preds = %block_43ae30, %block_.L_43ae1f
  %3787 = phi i64 [ %3785, %block_43ae30 ], [ %3767, %block_.L_43ae1f ]
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i1219, align 8
  store i64 1305, i64* %RSI.i1525, align 8
  store i64 ptrtoint (%G__0x57d90a_type* @G__0x57d90a to i64), i64* %RDX.i1522, align 8
  store i64 4294967295, i64* %RAX.i1531, align 8
  store i64 4294967295, i64* %RCX.i1519, align 8
  store i64 4294967295, i64* %R8.i, align 8
  %3788 = add i64 %3787, 94794
  %3789 = add i64 %3787, 40
  %3790 = load i64, i64* %6, align 8
  %3791 = add i64 %3790, -8
  %3792 = inttoptr i64 %3791 to i64*
  store i64 %3789, i64* %3792, align 8
  store i64 %3791, i64* %6, align 8
  store i64 %3788, i64* %3, align 8
  %call2_43ae69 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3788, %struct.Memory* %MEMORY.32)
  %.pre126 = load i64, i64* %RBP.i, align 8
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_43ae6e

block_.L_43ae6e:                                  ; preds = %block_.L_43ae46, %block_43ae41
  %3793 = phi i64 [ %.pre127, %block_.L_43ae46 ], [ %3786, %block_43ae41 ]
  %3794 = phi i64 [ %.pre126, %block_.L_43ae46 ], [ %2715, %block_43ae41 ]
  %MEMORY.42 = phi %struct.Memory* [ %call2_43ae69, %block_.L_43ae46 ], [ %MEMORY.32, %block_43ae41 ]
  %3795 = add i64 %3794, -56
  %3796 = add i64 %3793, 4
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3795 to i64*
  %3798 = load i64, i64* %3797, align 8
  store i64 %3798, i64* %RAX.i1531, align 8
  %3799 = add i64 %3793, 6
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  %3801 = load i32, i32* %3800, align 4
  %3802 = zext i32 %3801 to i64
  store i64 %3802, i64* %RCX.i1519, align 8
  %3803 = add i64 %3794, -16
  %3804 = add i64 %3793, 10
  store i64 %3804, i64* %3, align 8
  %3805 = inttoptr i64 %3803 to i64*
  %3806 = load i64, i64* %3805, align 8
  store i64 %3806, i64* %RAX.i1531, align 8
  %3807 = add i64 %3793, 12
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i32*
  store i32 %3801, i32* %3808, align 4
  %3809 = load i64, i64* %RBP.i, align 8
  %3810 = add i64 %3809, -56
  %3811 = load i64, i64* %3, align 8
  %3812 = add i64 %3811, 4
  store i64 %3812, i64* %3, align 8
  %3813 = inttoptr i64 %3810 to i64*
  %3814 = load i64, i64* %3813, align 8
  store i64 %3814, i64* %RAX.i1531, align 8
  %3815 = add i64 %3814, 320
  %3816 = add i64 %3811, 10
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RCX.i1519, align 8
  %3820 = add i64 %3809, -24
  %3821 = add i64 %3811, 14
  store i64 %3821, i64* %3, align 8
  %3822 = inttoptr i64 %3820 to i64*
  %3823 = load i64, i64* %3822, align 8
  store i64 %3823, i64* %RAX.i1531, align 8
  %3824 = add i64 %3811, 16
  store i64 %3824, i64* %3, align 8
  %3825 = inttoptr i64 %3823 to i32*
  store i32 %3818, i32* %3825, align 4
  %3826 = load i64, i64* %RBP.i, align 8
  %3827 = add i64 %3826, -388
  %3828 = load i64, i64* %3, align 8
  %3829 = add i64 %3828, 10
  store i64 %3829, i64* %3, align 8
  %3830 = inttoptr i64 %3827 to i32*
  store i32 0, i32* %3830, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_43ae94

block_.L_43ae94:                                  ; preds = %block_.L_43aeea, %block_.L_43ae6e
  %3831 = phi i64 [ %3973, %block_.L_43aeea ], [ %.pre128, %block_.L_43ae6e ]
  %3832 = load i64, i64* %RBP.i, align 8
  %3833 = add i64 %3832, -388
  %3834 = add i64 %3831, 6
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i32*
  %3836 = load i32, i32* %3835, align 4
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %RAX.i1531, align 8
  %3838 = add i64 %3832, -56
  %3839 = add i64 %3831, 10
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i64*
  %3841 = load i64, i64* %3840, align 8
  store i64 %3841, i64* %RCX.i1519, align 8
  %3842 = add i64 %3841, 644
  %3843 = add i64 %3831, 16
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3842 to i32*
  %3845 = load i32, i32* %3844, align 4
  %3846 = sub i32 %3836, %3845
  %3847 = icmp ult i32 %3836, %3845
  %3848 = zext i1 %3847 to i8
  store i8 %3848, i8* %14, align 1
  %3849 = and i32 %3846, 255
  %3850 = tail call i32 @llvm.ctpop.i32(i32 %3849)
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  %3853 = xor i8 %3852, 1
  store i8 %3853, i8* %21, align 1
  %3854 = xor i32 %3845, %3836
  %3855 = xor i32 %3854, %3846
  %3856 = lshr i32 %3855, 4
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  store i8 %3858, i8* %26, align 1
  %3859 = icmp eq i32 %3846, 0
  %3860 = zext i1 %3859 to i8
  store i8 %3860, i8* %29, align 1
  %3861 = lshr i32 %3846, 31
  %3862 = trunc i32 %3861 to i8
  store i8 %3862, i8* %32, align 1
  %3863 = lshr i32 %3836, 31
  %3864 = lshr i32 %3845, 31
  %3865 = xor i32 %3864, %3863
  %3866 = xor i32 %3861, %3863
  %3867 = add nuw nsw i32 %3866, %3865
  %3868 = icmp eq i32 %3867, 2
  %3869 = zext i1 %3868 to i8
  store i8 %3869, i8* %38, align 1
  %3870 = icmp ne i8 %3862, 0
  %3871 = xor i1 %3870, %3868
  %.v185 = select i1 %3871, i64 22, i64 111
  %3872 = add i64 %3831, %.v185
  store i64 %3872, i64* %3, align 8
  br i1 %3871, label %block_43aeaa, label %block_.L_43af03.loopexit

block_43aeaa:                                     ; preds = %block_.L_43ae94
  %3873 = add i64 %3872, 4
  store i64 %3873, i64* %3, align 8
  %3874 = load i64, i64* %3840, align 8
  store i64 %3874, i64* %RAX.i1531, align 8
  %3875 = add i64 %3872, 11
  store i64 %3875, i64* %3, align 8
  %3876 = load i32, i32* %3835, align 4
  %3877 = sext i32 %3876 to i64
  store i64 %3877, i64* %RCX.i1519, align 8
  %3878 = shl nsw i64 %3877, 2
  %3879 = add i64 %3874, 320
  %3880 = add i64 %3879, %3878
  %3881 = add i64 %3872, 18
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = zext i32 %3883 to i64
  store i64 %3884, i64* %RDI.i1219, align 8
  %3885 = add i64 %3832, -68
  %3886 = add i64 %3872, 21
  store i64 %3886, i64* %3, align 8
  %3887 = inttoptr i64 %3885 to i32*
  %3888 = load i32, i32* %3887, align 4
  %3889 = zext i32 %3888 to i64
  store i64 %3889, i64* %RSI.i1525, align 8
  %3890 = add i64 %3872, 200070
  %3891 = add i64 %3872, 26
  %3892 = load i64, i64* %6, align 8
  %3893 = add i64 %3892, -8
  %3894 = inttoptr i64 %3893 to i64*
  store i64 %3891, i64* %3894, align 8
  store i64 %3893, i64* %6, align 8
  store i64 %3890, i64* %3, align 8
  %call2_43aebf = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %3890, %struct.Memory* %MEMORY.42)
  %3895 = load i32, i32* %EAX.i1385, align 4
  %3896 = load i64, i64* %3, align 8
  %3897 = add i32 %3895, -5
  %3898 = icmp ult i32 %3895, 5
  %3899 = zext i1 %3898 to i8
  store i8 %3899, i8* %14, align 1
  %3900 = and i32 %3897, 255
  %3901 = tail call i32 @llvm.ctpop.i32(i32 %3900)
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  %3904 = xor i8 %3903, 1
  store i8 %3904, i8* %21, align 1
  %3905 = xor i32 %3897, %3895
  %3906 = lshr i32 %3905, 4
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  store i8 %3908, i8* %26, align 1
  %3909 = icmp eq i32 %3897, 0
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %29, align 1
  %3911 = lshr i32 %3897, 31
  %3912 = trunc i32 %3911 to i8
  store i8 %3912, i8* %32, align 1
  %3913 = lshr i32 %3895, 31
  %3914 = xor i32 %3911, %3913
  %3915 = add nuw nsw i32 %3914, %3913
  %3916 = icmp eq i32 %3915, 2
  %3917 = zext i1 %3916 to i8
  store i8 %3917, i8* %38, align 1
  %.v189 = select i1 %3909, i64 9, i64 38
  %3918 = add i64 %3896, %.v189
  store i64 %3918, i64* %3, align 8
  %3919 = load i64, i64* %RBP.i, align 8
  br i1 %3909, label %block_43aecd, label %block_.L_43aeea

block_43aecd:                                     ; preds = %block_43aeaa
  %3920 = add i64 %3919, -56
  %3921 = add i64 %3918, 4
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3920 to i64*
  %3923 = load i64, i64* %3922, align 8
  store i64 %3923, i64* %RAX.i1531, align 8
  %3924 = add i64 %3919, -388
  %3925 = add i64 %3918, 11
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = sext i32 %3927 to i64
  store i64 %3928, i64* %RCX.i1519, align 8
  %3929 = shl nsw i64 %3928, 2
  %3930 = add i64 %3923, 320
  %3931 = add i64 %3930, %3929
  %3932 = add i64 %3918, 18
  store i64 %3932, i64* %3, align 8
  %3933 = inttoptr i64 %3931 to i32*
  %3934 = load i32, i32* %3933, align 4
  %3935 = zext i32 %3934 to i64
  store i64 %3935, i64* %RDX.i1522, align 8
  %3936 = add i64 %3919, -24
  %3937 = add i64 %3918, 22
  store i64 %3937, i64* %3, align 8
  %3938 = inttoptr i64 %3936 to i64*
  %3939 = load i64, i64* %3938, align 8
  store i64 %3939, i64* %RAX.i1531, align 8
  %3940 = add i64 %3918, 24
  store i64 %3940, i64* %3, align 8
  %3941 = inttoptr i64 %3939 to i32*
  store i32 %3934, i32* %3941, align 4
  %3942 = load i64, i64* %3, align 8
  %3943 = add i64 %3942, 30
  store i64 %3943, i64* %3, align 8
  br label %block_.L_43af03

block_.L_43aeea:                                  ; preds = %block_43aeaa
  %3944 = add i64 %3919, -388
  %3945 = add i64 %3918, 11
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i32*
  %3947 = load i32, i32* %3946, align 4
  %3948 = add i32 %3947, 1
  %3949 = zext i32 %3948 to i64
  store i64 %3949, i64* %RAX.i1531, align 8
  %3950 = icmp eq i32 %3947, -1
  %3951 = icmp eq i32 %3948, 0
  %3952 = or i1 %3950, %3951
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %14, align 1
  %3954 = and i32 %3948, 255
  %3955 = tail call i32 @llvm.ctpop.i32(i32 %3954)
  %3956 = trunc i32 %3955 to i8
  %3957 = and i8 %3956, 1
  %3958 = xor i8 %3957, 1
  store i8 %3958, i8* %21, align 1
  %3959 = xor i32 %3948, %3947
  %3960 = lshr i32 %3959, 4
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  store i8 %3962, i8* %26, align 1
  %3963 = zext i1 %3951 to i8
  store i8 %3963, i8* %29, align 1
  %3964 = lshr i32 %3948, 31
  %3965 = trunc i32 %3964 to i8
  store i8 %3965, i8* %32, align 1
  %3966 = lshr i32 %3947, 31
  %3967 = xor i32 %3964, %3966
  %3968 = add nuw nsw i32 %3967, %3964
  %3969 = icmp eq i32 %3968, 2
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %38, align 1
  %3971 = add i64 %3918, 20
  store i64 %3971, i64* %3, align 8
  store i32 %3948, i32* %3946, align 4
  %3972 = load i64, i64* %3, align 8
  %3973 = add i64 %3972, -106
  store i64 %3973, i64* %3, align 8
  br label %block_.L_43ae94

block_.L_43af03.loopexit:                         ; preds = %block_.L_43ae94
  br label %block_.L_43af03

block_.L_43af03:                                  ; preds = %block_.L_43af03.loopexit, %block_43aecd
  %3974 = phi i64 [ %3943, %block_43aecd ], [ %3872, %block_.L_43af03.loopexit ]
  %3975 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3976 = and i32 %3975, 2
  %3977 = zext i32 %3976 to i64
  store i64 %3977, i64* %RAX.i1531, align 8
  store i8 0, i8* %14, align 1
  %3978 = tail call i32 @llvm.ctpop.i32(i32 %3976)
  %3979 = trunc i32 %3978 to i8
  %3980 = xor i8 %3979, 1
  store i8 %3980, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit157 = lshr exact i32 %3976, 1
  %3981 = trunc i32 %.lobit157 to i8
  %3982 = xor i8 %3981, 1
  store i8 %3982, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3983 = icmp eq i8 %3982, 0
  %.v186 = select i1 %3983, i64 24, i64 19
  %3984 = add i64 %3974, %.v186
  store i64 %3984, i64* %3, align 8
  br i1 %3983, label %block_.L_43af1b, label %block_43af16

block_43af16:                                     ; preds = %block_.L_43af03
  %3985 = add i64 %3984, 40
  store i64 %3985, i64* %3, align 8
  br label %block_.L_43af3e

block_.L_43af1b:                                  ; preds = %block_.L_43af03
  store i64 ptrtoint (%G__0x57d936_type* @G__0x57d936 to i64), i64* %RDI.i1219, align 8
  %3986 = load i64, i64* %RBP.i, align 8
  %3987 = add i64 %3986, -16
  %3988 = add i64 %3984, 14
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to i64*
  %3990 = load i64, i64* %3989, align 8
  store i64 %3990, i64* %RAX.i1531, align 8
  %3991 = add i64 %3984, 16
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i32*
  %3993 = load i32, i32* %3992, align 4
  %3994 = zext i32 %3993 to i64
  store i64 %3994, i64* %RSI.i1525, align 8
  %3995 = add i64 %3986, -24
  %3996 = add i64 %3984, 20
  store i64 %3996, i64* %3, align 8
  %3997 = inttoptr i64 %3995 to i64*
  %3998 = load i64, i64* %3997, align 8
  store i64 %3998, i64* %RAX.i1531, align 8
  %3999 = add i64 %3984, 22
  store i64 %3999, i64* %3, align 8
  %4000 = inttoptr i64 %3998 to i32*
  %4001 = load i32, i32* %4000, align 4
  %4002 = zext i32 %4001 to i64
  store i64 %4002, i64* %RDX.i1522, align 8
  %AL.i82 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i82, align 1
  %4003 = add i64 %3984, 93845
  %4004 = add i64 %3984, 29
  %4005 = load i64, i64* %6, align 8
  %4006 = add i64 %4005, -8
  %4007 = inttoptr i64 %4006 to i64*
  store i64 %4004, i64* %4007, align 8
  store i64 %4006, i64* %6, align 8
  store i64 %4003, i64* %3, align 8
  %call2_43af33 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4003, %struct.Memory* %MEMORY.42)
  %4008 = load i64, i64* %RBP.i, align 8
  %4009 = add i64 %4008, -436
  %4010 = load i32, i32* %EAX.i1385, align 4
  %4011 = load i64, i64* %3, align 8
  %4012 = add i64 %4011, 6
  store i64 %4012, i64* %3, align 8
  %4013 = inttoptr i64 %4009 to i32*
  store i32 %4010, i32* %4013, align 4
  %.pre129 = load i64, i64* %3, align 8
  %.pre130 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  br label %block_.L_43af3e

block_.L_43af3e:                                  ; preds = %block_.L_43af1b, %block_43af16
  %4014 = phi i32 [ %.pre130, %block_.L_43af1b ], [ %3975, %block_43af16 ]
  %4015 = phi i64 [ %.pre129, %block_.L_43af1b ], [ %3985, %block_43af16 ]
  %MEMORY.45 = phi %struct.Memory* [ %call2_43af33, %block_.L_43af1b ], [ %MEMORY.42, %block_43af16 ]
  %4016 = and i32 %4014, 2
  %4017 = zext i32 %4016 to i64
  store i64 %4017, i64* %RAX.i1531, align 8
  store i8 0, i8* %14, align 1
  %4018 = tail call i32 @llvm.ctpop.i32(i32 %4016)
  %4019 = trunc i32 %4018 to i8
  %4020 = xor i8 %4019, 1
  store i8 %4020, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit158 = lshr exact i32 %4016, 1
  %4021 = trunc i32 %.lobit158 to i8
  %4022 = xor i8 %4021, 1
  store i8 %4022, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4023 = icmp eq i8 %4022, 0
  %.v187 = select i1 %4023, i64 24, i64 19
  %4024 = add i64 %4015, %.v187
  store i64 %4024, i64* %3, align 8
  br i1 %4023, label %block_.L_43af56, label %block_43af51

block_43af51:                                     ; preds = %block_.L_43af3e
  %4025 = add i64 %4024, 55
  store i64 %4025, i64* %3, align 8
  br label %block_.L_43af88

block_.L_43af56:                                  ; preds = %block_.L_43af3e
  store i64 ptrtoint (%G__0x57d962_type* @G__0x57d962 to i64), i64* %RDI.i1219, align 8
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %4026 = load i64, i64* %RBP.i, align 8
  %4027 = add i64 %4026, -260
  %4028 = add i64 %4024, 27
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i32*
  %4030 = load i32, i32* %4029, align 4
  %4031 = sext i32 %4030 to i64
  %4032 = mul nsw i64 %4031, 40
  store i64 %4032, i64* %RCX.i1519, align 8
  %4033 = lshr i64 %4032, 63
  %4034 = add i64 %4032, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %4034, i64* %RAX.i1531, align 8
  %4035 = icmp ult i64 %4034, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %4036 = icmp ult i64 %4034, %4032
  %4037 = or i1 %4035, %4036
  %4038 = zext i1 %4037 to i8
  store i8 %4038, i8* %14, align 1
  %4039 = trunc i64 %4034 to i32
  %4040 = and i32 %4039, 248
  %4041 = tail call i32 @llvm.ctpop.i32(i32 %4040)
  %4042 = trunc i32 %4041 to i8
  %4043 = and i8 %4042, 1
  %4044 = xor i8 %4043, 1
  store i8 %4044, i8* %21, align 1
  %4045 = xor i64 %4032, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %4046 = xor i64 %4045, %4034
  %4047 = lshr i64 %4046, 4
  %4048 = trunc i64 %4047 to i8
  %4049 = and i8 %4048, 1
  store i8 %4049, i8* %26, align 1
  %4050 = icmp eq i64 %4034, 0
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %29, align 1
  %4052 = lshr i64 %4034, 63
  %4053 = trunc i64 %4052 to i8
  store i8 %4053, i8* %32, align 1
  %4054 = xor i64 %4052, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %4055 = xor i64 %4052, %4033
  %4056 = add nuw nsw i64 %4054, %4055
  %4057 = icmp eq i64 %4056, 2
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %38, align 1
  %4059 = add i64 %4032, add (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 8)
  %4060 = add i64 %4024, 37
  store i64 %4060, i64* %3, align 8
  %4061 = inttoptr i64 %4059 to i32*
  %4062 = load i32, i32* %4061, align 8
  %4063 = zext i32 %4062 to i64
  store i64 %4063, i64* %RSI.i1525, align 8
  %AL.i53 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i53, align 1
  %4064 = add i64 %4024, 93786
  %4065 = add i64 %4024, 44
  %4066 = load i64, i64* %6, align 8
  %4067 = add i64 %4066, -8
  %4068 = inttoptr i64 %4067 to i64*
  store i64 %4065, i64* %4068, align 8
  store i64 %4067, i64* %6, align 8
  store i64 %4064, i64* %3, align 8
  %call2_43af7d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4064, %struct.Memory* %MEMORY.45)
  %4069 = load i64, i64* %RBP.i, align 8
  %4070 = add i64 %4069, -440
  %4071 = load i32, i32* %EAX.i1385, align 4
  %4072 = load i64, i64* %3, align 8
  %4073 = add i64 %4072, 6
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4070 to i32*
  store i32 %4071, i32* %4074, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_43af88

block_.L_43af88:                                  ; preds = %block_.L_43af56, %block_43af51
  %4075 = phi i64 [ %.pre131, %block_.L_43af56 ], [ %4025, %block_43af51 ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_43af7d, %block_.L_43af56 ], [ %MEMORY.45, %block_43af51 ]
  %4076 = add i64 %4075, 5
  store i64 %4076, i64* %3, align 8
  br label %block_.L_43af8d

block_.L_43af8d:                                  ; preds = %block_.L_43af88, %block_43aaa6
  %4077 = phi i64 [ %2709, %block_43aaa6 ], [ %4076, %block_.L_43af88 ]
  %MEMORY.47 = phi %struct.Memory* [ %call2_43aae7, %block_43aaa6 ], [ %MEMORY.46, %block_.L_43af88 ]
  %4078 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4079 = and i32 %4078, 255
  %4080 = tail call i32 @llvm.ctpop.i32(i32 %4079)
  %4081 = trunc i32 %4080 to i8
  %4082 = and i8 %4081, 1
  %4083 = xor i8 %4082, 1
  store i8 %4083, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4084 = icmp eq i32 %4078, 0
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %29, align 1
  %4086 = lshr i32 %4078, 31
  %4087 = trunc i32 %4086 to i8
  store i8 %4087, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v188 = select i1 %4084, i64 14, i64 19
  %4088 = add i64 %4077, %.v188
  store i64 %4088, i64* %3, align 8
  br i1 %4084, label %block_43af9b, label %block_.L_43afa0

block_43af9b:                                     ; preds = %block_.L_43af8d
  %4089 = add i64 %4088, 58
  store i64 %4089, i64* %3, align 8
  br label %block_.L_43afd5

block_.L_43afa0:                                  ; preds = %block_.L_43af8d
  store i64 ptrtoint (%G__0x57d97a_type* @G__0x57d97a to i64), i64* %RDI.i1219, align 8
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX.i1531, align 8
  %4090 = load i64, i64* %RBP.i, align 8
  %4091 = add i64 %4090, -8
  %4092 = add i64 %4088, 23
  store i64 %4092, i64* %3, align 8
  %4093 = inttoptr i64 %4091 to i32*
  %4094 = load i32, i32* %4093, align 4
  %4095 = zext i32 %4094 to i64
  store i64 %4095, i64* %RSI.i1525, align 8
  %4096 = add i64 %4090, -260
  %4097 = add i64 %4088, 30
  store i64 %4097, i64* %3, align 8
  %4098 = inttoptr i64 %4096 to i32*
  %4099 = load i32, i32* %4098, align 4
  %4100 = sext i32 %4099 to i64
  %4101 = mul nsw i64 %4100, 40
  store i64 %4101, i64* %RCX.i1519, align 8
  %4102 = lshr i64 %4101, 63
  %4103 = add i64 %4101, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  store i64 %4103, i64* %RAX.i1531, align 8
  %4104 = icmp ult i64 %4103, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %4105 = icmp ult i64 %4103, %4101
  %4106 = or i1 %4104, %4105
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %14, align 1
  %4108 = trunc i64 %4103 to i32
  %4109 = and i32 %4108, 248
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109)
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %21, align 1
  %4114 = xor i64 %4101, ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64)
  %4115 = xor i64 %4114, %4103
  %4116 = lshr i64 %4115, 4
  %4117 = trunc i64 %4116 to i8
  %4118 = and i8 %4117, 1
  store i8 %4118, i8* %26, align 1
  %4119 = icmp eq i64 %4103, 0
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %29, align 1
  %4121 = lshr i64 %4103, 63
  %4122 = trunc i64 %4121 to i8
  store i8 %4122, i8* %32, align 1
  %4123 = xor i64 %4121, lshr (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 63)
  %4124 = xor i64 %4121, %4102
  %4125 = add nuw nsw i64 %4123, %4124
  %4126 = icmp eq i64 %4125, 2
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %38, align 1
  %4128 = add i64 %4101, add (i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64 8)
  %4129 = add i64 %4088, 40
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 8
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %RDX.i1522, align 8
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %4133 = add i64 %4088, 93712
  %4134 = add i64 %4088, 47
  %4135 = load i64, i64* %6, align 8
  %4136 = add i64 %4135, -8
  %4137 = inttoptr i64 %4136 to i64*
  store i64 %4134, i64* %4137, align 8
  store i64 %4136, i64* %6, align 8
  store i64 %4133, i64* %3, align 8
  %call2_43afca = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4133, %struct.Memory* %MEMORY.47)
  %4138 = load i64, i64* %RBP.i, align 8
  %4139 = add i64 %4138, -444
  %4140 = load i32, i32* %EAX.i1385, align 4
  %4141 = load i64, i64* %3, align 8
  %4142 = add i64 %4141, 6
  store i64 %4142, i64* %3, align 8
  %4143 = inttoptr i64 %4139 to i32*
  store i32 %4140, i32* %4143, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_43afd5

block_.L_43afd5:                                  ; preds = %block_.L_43afa0, %block_43af9b
  %4144 = phi i64 [ %.pre140, %block_.L_43afa0 ], [ %4089, %block_43af9b ]
  %MEMORY.48 = phi %struct.Memory* [ %call2_43afca, %block_.L_43afa0 ], [ %MEMORY.47, %block_43af9b ]
  %4145 = load i64, i64* %RBP.i, align 8
  %4146 = add i64 %4145, -68
  %4147 = add i64 %4144, 3
  store i64 %4147, i64* %3, align 8
  %4148 = inttoptr i64 %4146 to i32*
  %4149 = load i32, i32* %4148, align 4
  %4150 = zext i32 %4149 to i64
  store i64 %4150, i64* %RAX.i1531, align 8
  %4151 = add i64 %4145, -4
  %4152 = add i64 %4144, 6
  store i64 %4152, i64* %3, align 8
  %4153 = inttoptr i64 %4151 to i32*
  store i32 %4149, i32* %4153, align 4
  %4154 = load i64, i64* %3, align 8
  %4155 = add i64 %4154, 37
  store i64 %4155, i64* %3, align 8
  br label %block_.L_43b000

block_.L_43afe0:                                  ; preds = %block_.L_43aa97
  %4156 = add i64 %2623, 5
  store i64 %4156, i64* %3, align 8
  br label %block_.L_43afe5

block_.L_43afe5:                                  ; preds = %block_.L_43afe0, %block_.L_43a6bf
  %4157 = phi i64 [ %.pre142, %block_.L_43a6bf ], [ %2589, %block_.L_43afe0 ]
  %storemerge = phi i64 [ %1427, %block_.L_43a6bf ], [ %4156, %block_.L_43afe0 ]
  %4158 = add i64 %4157, -260
  %4159 = add i64 %storemerge, 6
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to i32*
  %4161 = load i32, i32* %4160, align 4
  %4162 = add i32 %4161, 1
  %4163 = zext i32 %4162 to i64
  store i64 %4163, i64* %RAX.i1531, align 8
  %4164 = icmp eq i32 %4161, -1
  %4165 = icmp eq i32 %4162, 0
  %4166 = or i1 %4164, %4165
  %4167 = zext i1 %4166 to i8
  store i8 %4167, i8* %14, align 1
  %4168 = and i32 %4162, 255
  %4169 = tail call i32 @llvm.ctpop.i32(i32 %4168)
  %4170 = trunc i32 %4169 to i8
  %4171 = and i8 %4170, 1
  %4172 = xor i8 %4171, 1
  store i8 %4172, i8* %21, align 1
  %4173 = xor i32 %4162, %4161
  %4174 = lshr i32 %4173, 4
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  store i8 %4176, i8* %26, align 1
  %4177 = zext i1 %4165 to i8
  store i8 %4177, i8* %29, align 1
  %4178 = lshr i32 %4162, 31
  %4179 = trunc i32 %4178 to i8
  store i8 %4179, i8* %32, align 1
  %4180 = lshr i32 %4161, 31
  %4181 = xor i32 %4178, %4180
  %4182 = add nuw nsw i32 %4181, %4178
  %4183 = icmp eq i32 %4182, 2
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %38, align 1
  %4185 = add i64 %storemerge, 15
  store i64 %4185, i64* %3, align 8
  store i32 %4162, i32* %4160, align 4
  %4186 = load i64, i64* %3, align 8
  %4187 = add i64 %4186, -2463
  store i64 %4187, i64* %3, align 8
  br label %block_.L_43a655

block_.L_43aff9:                                  ; preds = %block_.L_43a655
  %4188 = add i64 %1248, -4
  %4189 = add i64 %1294, 7
  store i64 %4189, i64* %3, align 8
  %4190 = inttoptr i64 %4188 to i32*
  store i32 0, i32* %4190, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_43b000

block_.L_43b000:                                  ; preds = %block_.L_43aff9, %block_.L_43afd5, %block_43a460, %block_43a43b
  %4191 = phi i64 [ %.pre143, %block_.L_43aff9 ], [ %4155, %block_.L_43afd5 ], [ %434, %block_43a460 ], [ %361, %block_43a43b ]
  %MEMORY.50 = phi %struct.Memory* [ %MEMORY.1, %block_.L_43aff9 ], [ %MEMORY.48, %block_.L_43afd5 ], [ %MEMORY.1, %block_43a460 ], [ %MEMORY.1, %block_43a43b ]
  %4192 = load i64, i64* %RBP.i, align 8
  %4193 = add i64 %4192, -4
  %4194 = add i64 %4191, 3
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i32*
  %4196 = load i32, i32* %4195, align 4
  %4197 = zext i32 %4196 to i64
  store i64 %4197, i64* %RAX.i1531, align 8
  %4198 = load i64, i64* %6, align 8
  %4199 = add i64 %4198, 448
  store i64 %4199, i64* %6, align 8
  %4200 = icmp ugt i64 %4198, -449
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %14, align 1
  %4202 = trunc i64 %4199 to i32
  %4203 = and i32 %4202, 255
  %4204 = tail call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  store i8 %4207, i8* %21, align 1
  %4208 = xor i64 %4199, %4198
  %4209 = lshr i64 %4208, 4
  %4210 = trunc i64 %4209 to i8
  %4211 = and i8 %4210, 1
  store i8 %4211, i8* %26, align 1
  %4212 = icmp eq i64 %4199, 0
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %29, align 1
  %4214 = lshr i64 %4199, 63
  %4215 = trunc i64 %4214 to i8
  store i8 %4215, i8* %32, align 1
  %4216 = lshr i64 %4198, 63
  %4217 = xor i64 %4214, %4216
  %4218 = add nuw nsw i64 %4217, %4214
  %4219 = icmp eq i64 %4218, 2
  %4220 = zext i1 %4219 to i8
  store i8 %4220, i8* %38, align 1
  %4221 = add i64 %4191, 11
  store i64 %4221, i64* %3, align 8
  %4222 = add i64 %4198, 456
  %4223 = inttoptr i64 %4199 to i64*
  %4224 = load i64, i64* %4223, align 8
  store i64 %4224, i64* %RBP.i, align 8
  store i64 %4222, i64* %6, align 8
  %4225 = add i64 %4191, 12
  store i64 %4225, i64* %3, align 8
  %4226 = inttoptr i64 %4222 to i64*
  %4227 = load i64, i64* %4226, align 8
  store i64 %4227, i64* %3, align 8
  %4228 = add i64 %4198, 464
  store i64 %4228, i64* %6, align 8
  ret %struct.Memory* %MEMORY.50
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
define %struct.Memory* @routine_subq__0x1c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -448
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 448
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_je_.L_43a378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a3a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x453___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1107, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d8ef___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d8ef_type* @G__0x57d8ef to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_43a3b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a3d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x454___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1108, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bdd8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bdd8_type* @G__0x57bdd8 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 36
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43a3fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43a40e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_cmpl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -7
  %8 = icmp ult i32 %4, 7
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
define %struct.Memory* @routine_jle_.L_43a447(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b000(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
define %struct.Memory* @routine_jle_.L_43a46c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_43a64b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43a638(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x164__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -356
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
define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 36
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
define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_43a625(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x164__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -356
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -160
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
define %struct.Memory* @routine_movb_0x1c__rcx____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0xc0__rbp__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %4, -192
  %7 = add i64 %6, %5
  %8 = load i8, i8* %SIL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__MINUS0xc0__rbp__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -192
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = zext i8 %10 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i8 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i8 %10, 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43a516(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x164__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -356
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
define %struct.Memory* @routine_movb_0x1e__rax____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 30
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movb__dl__MINUS0x100__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -256
  %7 = add i64 %6, %5
  %8 = load i8, i8* %DL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__MINUS0xe0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -224
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 0, i8* %9, align 1
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
define %struct.Memory* @routine_je_.L_43a561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_43a576(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0xe0__rbp__rax_1____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -224
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i8 %4, 1
  store i8 %7, i8* %CL, align 1
  %8 = icmp eq i8 %4, -1
  %9 = icmp eq i8 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = zext i8 %7 to i32
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i8 %7, %4
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = zext i1 %9 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i8 %7, 7
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i8 %4, 7
  %28 = xor i8 %25, %27
  %29 = add nuw nsw i8 %28, %25
  %30 = icmp eq i8 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xe0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -224
  %7 = add i64 %6, %5
  %8 = load i8, i8* %CL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_je_.L_43a595(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43a5aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x164__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -356
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
define %struct.Memory* @routine_callq_.is_halfeye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43a61c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x100__rbp__rax_1____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -256
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x100__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -256
  %7 = add i64 %6, %5
  %8 = load i8, i8* %CL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1__MINUS0xc0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -192
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1__MINUS0x100__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -256
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
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
define %struct.Memory* @routine_jmpq_.L_43a62a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43a48a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a63d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a473(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x7cc820___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7cc820_type* @G__0x7cc820 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x104__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_imulq__0x28___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i64 %7, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %7, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43aff9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_jne_.L_43a6bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_je_.L_43a6c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43afe5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_callq_.reset_map(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x160__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.first_map(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x168__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x168__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
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
define %struct.Memory* @routine_movl_MINUS0x160__rbp__rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -352
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
define %struct.Memory* @routine_movl__edx__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x174__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -372
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
define %struct.Memory* @routine_movsbl_MINUS0x100__rbp__rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -256
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x170__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x3__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_43a795(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0xc0__rbp__rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -192
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
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
define %struct.Memory* @routine_movsbl_MINUS0xe0__rbp__rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -224
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43a79f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
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
define %struct.Memory* @routine_je_.L_43a83d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xa0__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_43a7ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43a812(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x2__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
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
define %struct.Memory* @routine_jne_.L_43a80d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
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
define %struct.Memory* @routine_jne_.L_43a833(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43a83d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43aa1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x17c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -380
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x17c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -380
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
define %struct.Memory* @routine_movq_MINUS0x170__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x3__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_43aa1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x17c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -380
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
define %struct.Memory* @routine_movl_0x4__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x168__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -360
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
define %struct.Memory* @routine_jge_.L_43aa01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x4__rax__rcx_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -384
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
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
define %struct.Memory* @routine_movslq_MINUS0x180__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_43a9fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x174__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -372
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
define %struct.Memory* @routine_movl_MINUS0x180__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
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
define %struct.Memory* @routine_jne_.L_43a99a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
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
define %struct.Memory* @routine_je_.L_43a99a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x174__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -372
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
define %struct.Memory* @routine_movslq_MINUS0xa0__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_movsbl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x180__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
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
define %struct.Memory* @routine_movl_MINUS0x174__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -372
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
define %struct.Memory* @routine_jne_.L_43a9ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43a9ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x180__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
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
define %struct.Memory* @routine_jmpq_.L_43aa1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aa01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aa06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a854(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aa1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43aa52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x168__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x160__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.next_map(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43aa4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43aa97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aa92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x168__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
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
define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_jne_.L_43aa75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x160__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43a6e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43afe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x104__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 40
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
define %struct.Memory* @routine_movl__esi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x280__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x284__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 644
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_jle_.L_43af8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -388
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x184__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -388
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
define %struct.Memory* @routine_jge_.L_43ae1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x184__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -388
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
define %struct.Memory* @routine_movq__rax__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x190__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x2__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
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
define %struct.Memory* @routine_je_.L_43ac9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43ac64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x184__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -388
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x160__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -352
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
define %struct.Memory* @routine_jle_.L_43ac64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x160__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -352
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
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x160__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -352
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x194__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x194__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -404
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
define %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jge_.L_43ac5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x194__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -404
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
define %struct.Memory* @routine_movl_0xc__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 12
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x280__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 640
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
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__0x280__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 640
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -404
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ac04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ac99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x160__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -352
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x280__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 640
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
define %struct.Memory* @routine_movl__edi__0x280__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 640
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ac9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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
define %struct.Memory* @routine_je_.L_43ae06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43adc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_43adc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x1b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -420
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -420
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
define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jge_.L_43adc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1a4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -420
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
define %struct.Memory* @routine_movl_0x20__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 32
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
define %struct.Memory* @routine_movl_0x284__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 644
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
define %struct.Memory* @routine_movl__edi__0x284__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 644
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x140__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 320
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ad64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ae01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x284__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 644
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
define %struct.Memory* @routine_movl__edi__0x284__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 644
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x140__rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 320
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
define %struct.Memory* @routine_jmpq_.L_43ae06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ae0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -388
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aaff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x280__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 640
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
define %struct.Memory* @routine_jle_.L_43ae46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x284__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 644
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
define %struct.Memory* @routine_jmpq_.L_43ae6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x519___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1305, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d90a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d90a_type* @G__0x57d90a to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x140__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x284__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 644
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
define %struct.Memory* @routine_jge_.L_43af03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x140__rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 320
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
define %struct.Memory* @routine_jne_.L_43aeea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x140__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 320
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
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43af03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43aeef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ae94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
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
define %struct.Memory* @routine_jne_.L_43af1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43af3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d936___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d936_type* @G__0x57d936 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43af56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43af88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d962___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d962_type* @G__0x57d962 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43af8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43afa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43afd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d97a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d97a_type* @G__0x57d97a to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0x104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43a655(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 448
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -449
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
